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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::Metal::mtl_buffer" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_function" = type opaque
%"struct.Halide::Runtime::Internal::Metal::NSRange" = type { i32, i32 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::Metal::MetalContextHolder" = type { i8*, i8*, %struct.halide_metal_device*, %struct.halide_metal_command_queue*, i32 }
%"struct.Halide::Runtime::Internal::Metal::device_handle" = type { %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_ = comdat any

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
@_ZN6Halide7Runtime8Internal5Metal6deviceE = weak dso_local local_unnamed_addr global %struct.halide_metal_device* null, align 4, !dbg !23
@_ZN6Halide7Runtime8Internal5Metal5queueE = weak dso_local local_unnamed_addr global %struct.halide_metal_command_queue* null, align 4, !dbg !29
@_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4, !dbg !34
@_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak dso_local local_unnamed_addr global i64 0, comdat, align 8
@_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !108
@_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE = weak dso_local local_unnamed_addr global %struct.halide_metal_device* null, align 4, !dbg !110
@.str.40 = private unnamed_addr constant [50 x i8] c"Metal - Allocating: MTLCreateSystemDefaultDevice\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"Metal: cannot allocate system default device.\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Metal - Allocating: new_command_queue\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Metal: cannot allocate command queue.\0A\00", align 1
@.str.44 = private unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:372 Assert failed: (device == nullptr) || (queue != nullptr)\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE = weak dso_local global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" { i32 0, i32 20 }, align 4, !dbg !112
@_NSConcreteGlobalBlock = external dso_local global %struct.ObjectiveCClass, align 1
@_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE = weak dso_local global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal" { i8* bitcast (%struct.ObjectiveCClass* @_NSConcreteGlobalBlock to i8*), i32 805306368, i32 0, void (%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"*)* @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1"* @_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE }, align 4, !dbg !119
@.str.45 = private unnamed_addr constant [43 x i8] c"halide_metal_device_malloc (user_context: \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c", buf: \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.48 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:468 Assert failed: size != 0\0A\00", align 1
@.str.49 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:476 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"    allocating \00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Metal: Failed to allocate buffer of size \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE }, align 4, !dbg !135
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
@_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_sync, i32 (i8*)* @halide_metal_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_metal_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_metal_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_metal_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_metal_wrap_buffer, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_detach_buffer }, align 4, !dbg !919
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
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !997 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1016, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i32 %1, metadata !1017, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %2, metadata !1018, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %3, metadata !1019, metadata !DIExpression()), !dbg !1027
  %5 = icmp sgt i32 %1, -1, !dbg !1028
  br i1 %5, label %6, label %14, !dbg !1029

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1017, metadata !DIExpression()), !dbg !1027
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !1030
  %9 = load i64, i64* %8, align 8, !dbg !1030, !tbaa !1031
  %10 = icmp eq i64 %9, 1, !dbg !1035
  br i1 %10, label %11, label %14, !dbg !1036

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %12, metadata !1017, metadata !DIExpression()), !dbg !1027
  %13 = icmp sgt i32 %7, 0, !dbg !1028
  br i1 %13, label %6, label %25, !dbg !1029, !llvm.loop !1039

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !1042
  br i1 %16, label %25, label %17, !dbg !1043

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !1024, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %2, metadata !1018, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %3, metadata !1019, metadata !DIExpression()), !dbg !1027
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !1045
  %19 = load i64, i64* %18, align 8, !dbg !1045, !tbaa !1031
  %20 = icmp eq i64 %19, 0, !dbg !1047
  br i1 %20, label %51, label %21, !dbg !1048

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !1048

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !1049
  %27 = load i64, i64* %26, align 8, !dbg !1049, !tbaa !1050
  %28 = add i64 %27, %2, !dbg !1052
  %29 = trunc i64 %28 to i32, !dbg !1053
  %30 = inttoptr i32 %29 to i8*, !dbg !1053
  call void @llvm.dbg.value(metadata i8* %30, metadata !1020, metadata !DIExpression()), !dbg !1054
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !1055
  %32 = load i64, i64* %31, align 8, !dbg !1055, !tbaa !1056
  %33 = add i64 %32, %3, !dbg !1057
  %34 = trunc i64 %33 to i32, !dbg !1058
  %35 = inttoptr i32 %34 to i8*, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %35, metadata !1023, metadata !DIExpression()), !dbg !1054
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !1059
  %37 = load i64, i64* %36, align 8, !dbg !1059, !tbaa !1060
  %38 = trunc i64 %37 to i32, !dbg !1061
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #8, !dbg !1062
  br label %51, !dbg !1063

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !1024, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %42, metadata !1018, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %43, metadata !1019, metadata !DIExpression()), !dbg !1027
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #9, !dbg !1064
  %44 = load i64, i64* %23, align 8, !dbg !1066, !tbaa !1031
  %45 = add i64 %44, %42, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %45, metadata !1018, metadata !DIExpression()), !dbg !1027
  %46 = load i64, i64* %24, align 8, !dbg !1068, !tbaa !1031
  %47 = add i64 %46, %43, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %47, metadata !1019, metadata !DIExpression()), !dbg !1027
  %48 = add nuw i64 %41, 1, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %48, metadata !1024, metadata !DIExpression()), !dbg !1044
  %49 = load i64, i64* %18, align 8, !dbg !1045, !tbaa !1031
  %50 = icmp ult i64 %48, %49, !dbg !1047
  br i1 %50, label %40, label %51, !dbg !1048, !llvm.loop !1071

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !1073
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !1074 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !1078 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1082, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %1, metadata !1083, metadata !DIExpression()), !dbg !1084
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !1085
  %4 = load i64, i64* %3, align 8, !dbg !1085, !tbaa !1050
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !1087
  %6 = load i64, i64* %5, align 8, !dbg !1087, !tbaa !1056
  %7 = icmp eq i64 %4, %6, !dbg !1088
  br i1 %7, label %11, label %8, !dbg !1089

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !1090
  %10 = load i64, i64* %9, align 8, !dbg !1090, !tbaa !1092
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !1093
  br label %26, !dbg !1094

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1101
  %12 = tail call i8* @malloc(i32 1024) #8, !dbg !1104
  %13 = icmp eq i8* %12, null, !dbg !1109
  br i1 %13, label %14, label %16, !dbg !1111

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1116
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1116
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !1118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1124
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1126
  br label %25, !dbg !1130

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !1131
  store i8 0, i8* %17, align 1, !dbg !1133, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1116
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1116
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !1118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1138
  %19 = ptrtoint i8* %18 to i32, !dbg !1141
  %20 = ptrtoint i8* %12 to i32, !dbg !1141
  %21 = add i32 %19, 1, !dbg !1141
  %22 = sub i32 %21, %20, !dbg !1142
  %23 = sext i32 %22 to i64, !dbg !1143
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #8, !dbg !1144
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !1145
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !1149
  br label %26

26:                                               ; preds = %25, %8
  ret void, !dbg !1152
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !1153 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1158, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i1 %2, metadata !1159, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1185
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1160, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i1 %4, metadata !1161, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1185
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !1186
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10, !dbg !1186
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !1162, metadata !DIExpression()), !dbg !1187
  br i1 %2, label %8, label %13, !dbg !1188

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !1189
  %10 = load i8*, i8** %9, align 4, !dbg !1189, !tbaa !1190
  %11 = ptrtoint i8* %10 to i32, !dbg !1197
  %12 = zext i32 %11 to i64, !dbg !1197
  br label %16, !dbg !1188

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1198
  %15 = load i64, i64* %14, align 8, !dbg !1198, !tbaa !1199
  br label %16, !dbg !1188

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !1188
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !1200
  store i64 %17, i64* %18, align 8, !dbg !1201, !tbaa !1050
  br i1 %4, label %19, label %24, !dbg !1202

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !1203
  %21 = load i8*, i8** %20, align 4, !dbg !1203, !tbaa !1190
  %22 = ptrtoint i8* %21 to i32, !dbg !1204
  %23 = zext i32 %22 to i64, !dbg !1204
  br label %27, !dbg !1202

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !1205
  %26 = load i64, i64* %25, align 8, !dbg !1205, !tbaa !1199
  br label %27, !dbg !1202

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !1202
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !1206
  store i64 %28, i64* %29, align 8, !dbg !1207, !tbaa !1056
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1212
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !1214
  %31 = load i8, i8* %30, align 1, !dbg !1214, !tbaa !1215
  %32 = zext i8 %31 to i32, !dbg !1214
  %33 = add nuw nsw i32 %32, 7, !dbg !1216
  %34 = lshr i32 %33, 3, !dbg !1217
  %35 = zext i32 %34 to i64, !dbg !1218
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !1219
  store i64 %35, i64* %36, align 8, !dbg !1220, !tbaa !1060
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()), !dbg !1221
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !1222
  store i64 1, i64* %37, align 8, !dbg !1225, !tbaa !1031
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !1226
  store i64 0, i64* %38, align 8, !dbg !1227, !tbaa !1031
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !1228
  store i64 0, i64* %39, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 1, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 1, metadata !1163, metadata !DIExpression()), !dbg !1221
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !1222
  store i64 1, i64* %40, align 8, !dbg !1225, !tbaa !1031
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !1226
  store i64 0, i64* %41, align 8, !dbg !1227, !tbaa !1031
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !1228
  store i64 0, i64* %42, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 2, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 2, metadata !1163, metadata !DIExpression()), !dbg !1221
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !1222
  store i64 1, i64* %43, align 8, !dbg !1225, !tbaa !1031
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !1226
  store i64 0, i64* %44, align 8, !dbg !1227, !tbaa !1031
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !1228
  store i64 0, i64* %45, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 3, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 3, metadata !1163, metadata !DIExpression()), !dbg !1221
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !1222
  store i64 1, i64* %46, align 8, !dbg !1225, !tbaa !1031
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !1226
  store i64 0, i64* %47, align 8, !dbg !1227, !tbaa !1031
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !1228
  store i64 0, i64* %48, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 4, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 4, metadata !1163, metadata !DIExpression()), !dbg !1221
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !1222
  store i64 1, i64* %49, align 8, !dbg !1225, !tbaa !1031
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !1226
  store i64 0, i64* %50, align 8, !dbg !1227, !tbaa !1031
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !1228
  store i64 0, i64* %51, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 5, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 5, metadata !1163, metadata !DIExpression()), !dbg !1221
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !1222
  store i64 1, i64* %52, align 8, !dbg !1225, !tbaa !1031
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !1226
  store i64 0, i64* %53, align 8, !dbg !1227, !tbaa !1031
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !1228
  store i64 0, i64* %54, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 6, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 6, metadata !1163, metadata !DIExpression()), !dbg !1221
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !1222
  store i64 1, i64* %55, align 8, !dbg !1225, !tbaa !1031
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !1226
  store i64 0, i64* %56, align 8, !dbg !1227, !tbaa !1031
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !1228
  store i64 0, i64* %57, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 7, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 7, metadata !1163, metadata !DIExpression()), !dbg !1221
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !1222
  store i64 1, i64* %58, align 8, !dbg !1225, !tbaa !1031
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !1226
  store i64 0, i64* %59, align 8, !dbg !1227, !tbaa !1031
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !1228
  store i64 0, i64* %60, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 8, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 8, metadata !1163, metadata !DIExpression()), !dbg !1221
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !1222
  store i64 1, i64* %61, align 8, !dbg !1225, !tbaa !1031
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !1226
  store i64 0, i64* %62, align 8, !dbg !1227, !tbaa !1031
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !1228
  store i64 0, i64* %63, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 9, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 9, metadata !1163, metadata !DIExpression()), !dbg !1221
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !1222
  store i64 1, i64* %64, align 8, !dbg !1225, !tbaa !1031
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !1226
  store i64 0, i64* %65, align 8, !dbg !1227, !tbaa !1031
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !1228
  store i64 0, i64* %66, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 10, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 10, metadata !1163, metadata !DIExpression()), !dbg !1221
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !1222
  store i64 1, i64* %67, align 8, !dbg !1225, !tbaa !1031
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !1226
  store i64 0, i64* %68, align 8, !dbg !1227, !tbaa !1031
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !1228
  store i64 0, i64* %69, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 11, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 11, metadata !1163, metadata !DIExpression()), !dbg !1221
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !1222
  store i64 1, i64* %70, align 8, !dbg !1225, !tbaa !1031
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !1226
  store i64 0, i64* %71, align 8, !dbg !1227, !tbaa !1031
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !1228
  store i64 0, i64* %72, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 12, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 12, metadata !1163, metadata !DIExpression()), !dbg !1221
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !1222
  store i64 1, i64* %73, align 8, !dbg !1225, !tbaa !1031
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !1226
  store i64 0, i64* %74, align 8, !dbg !1227, !tbaa !1031
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !1228
  store i64 0, i64* %75, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 13, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 13, metadata !1163, metadata !DIExpression()), !dbg !1221
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !1222
  store i64 1, i64* %76, align 8, !dbg !1225, !tbaa !1031
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !1226
  store i64 0, i64* %77, align 8, !dbg !1227, !tbaa !1031
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !1228
  store i64 0, i64* %78, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 14, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 14, metadata !1163, metadata !DIExpression()), !dbg !1221
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !1222
  store i64 1, i64* %79, align 8, !dbg !1225, !tbaa !1031
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !1226
  store i64 0, i64* %80, align 8, !dbg !1227, !tbaa !1031
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !1228
  store i64 0, i64* %81, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 15, metadata !1163, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 15, metadata !1163, metadata !DIExpression()), !dbg !1221
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !1222
  store i64 1, i64* %82, align 8, !dbg !1225, !tbaa !1031
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !1226
  store i64 0, i64* %83, align 8, !dbg !1227, !tbaa !1031
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !1228
  store i64 0, i64* %84, align 8, !dbg !1229, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 16, metadata !1163, metadata !DIExpression()), !dbg !1221
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !1230
  call void @llvm.dbg.value(metadata i32 0, metadata !1165, metadata !DIExpression()), !dbg !1231
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !1232
  %87 = load i32, i32* %86, align 4, !dbg !1232, !tbaa !1234
  %88 = icmp sgt i32 %87, 0, !dbg !1235
  br i1 %88, label %89, label %94, !dbg !1236

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !1237
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !1237
  br label %101, !dbg !1236

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !1238
  %96 = load i64, i64* %36, align 8, !dbg !1239, !tbaa !1060
  %97 = mul i64 %95, %96, !dbg !1238
  store i64 %97, i64* %85, align 8, !dbg !1238, !tbaa !1092
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !1240
  %99 = load i32, i32* %98, align 4, !dbg !1240, !tbaa !1234
  %100 = icmp eq i32 %87, %99, !dbg !1241
  br i1 %100, label %117, label %126, !dbg !1242

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !1231
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !1165, metadata !DIExpression()), !dbg !1231
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !1243
  %105 = load i32, i32* %104, align 4, !dbg !1243, !tbaa !1245
  %106 = sext i32 %105 to i64, !dbg !1247
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !1248
  %108 = load i32, i32* %107, align 4, !dbg !1248, !tbaa !1249
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !1250
  %110 = load i32, i32* %109, align 4, !dbg !1250, !tbaa !1249
  %111 = sub nsw i32 %108, %110, !dbg !1251
  %112 = sext i32 %111 to i64, !dbg !1252
  %113 = mul nsw i64 %112, %106, !dbg !1253
  %114 = add i64 %113, %102, !dbg !1254
  %115 = add nuw nsw i32 %103, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %115, metadata !1165, metadata !DIExpression()), !dbg !1231
  %116 = icmp slt i32 %115, %87, !dbg !1235
  br i1 %116, label %101, label %94, !dbg !1236, !llvm.loop !1256

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1258
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1260
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !1262
  %119 = load i8, i8* %118, align 1, !dbg !1262, !tbaa !1215
  %120 = zext i8 %119 to i32, !dbg !1262
  %121 = add nuw nsw i32 %120, 7, !dbg !1263
  %122 = lshr i32 %121, 3, !dbg !1264
  %123 = icmp ne i32 %34, %122, !dbg !1265
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !1266
  br i1 %125, label %126, label %128, !dbg !1266

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1167, metadata !DIExpression()), !dbg !1267
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1267
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !1267
  br label %245, !dbg !1268

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !1269
  br i1 %129, label %136, label %130, !dbg !1270

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1271
  br i1 %88, label %131, label %243, !dbg !1272

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !1237
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !1237
  br label %144, !dbg !1272

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1170, metadata !DIExpression()), !dbg !1273
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1273
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !1273
  br label %245, !dbg !1274

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !1275, !tbaa !1060
  %140 = load i64, i64* %38, align 8, !dbg !1276, !tbaa !1031
  %141 = icmp eq i64 %139, %140, !dbg !1277
  br i1 %141, label %142, label %243, !dbg !1278

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !1279, !tbaa !1031
  br label %190, !dbg !1278

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !1173, metadata !DIExpression()), !dbg !1271
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !1280
  %147 = load i32, i32* %146, align 4, !dbg !1280, !tbaa !1245
  %148 = sext i32 %147 to i64, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1282
  %149 = mul nsw i64 %148, %35, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %149, metadata !1175, metadata !DIExpression()), !dbg !1285
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !1286
  %151 = load i32, i32* %150, align 4, !dbg !1286, !tbaa !1245
  %152 = sext i32 %151 to i64, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1288
  %153 = mul nsw i64 %152, %35, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %153, metadata !1178, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 0, metadata !1179, metadata !DIExpression()), !dbg !1285
  %154 = icmp eq i32 %145, 0, !dbg !1291
  br i1 %154, label %165, label %155, !dbg !1294

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !1294

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !1179, metadata !DIExpression()), !dbg !1285
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !1295
  %160 = load i64, i64* %159, align 8, !dbg !1295, !tbaa !1031
  %161 = icmp ult i64 %149, %160, !dbg !1298
  br i1 %161, label %165, label %162, !dbg !1299

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %163, metadata !1179, metadata !DIExpression()), !dbg !1285
  %164 = icmp ult i32 %163, %145, !dbg !1291
  br i1 %164, label %157, label %165, !dbg !1294, !llvm.loop !1301

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !1303
  call void @llvm.dbg.value(metadata i32 %145, metadata !1180, metadata !DIExpression()), !dbg !1304
  %167 = icmp ugt i32 %145, %166, !dbg !1305
  br i1 %167, label %177, label %168, !dbg !1307

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !1308
  %170 = load i32, i32* %169, align 4, !dbg !1308, !tbaa !1309
  %171 = sext i32 %170 to i64, !dbg !1310
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !1311
  store i64 %171, i64* %172, align 8, !dbg !1312, !tbaa !1031
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !1313
  store i64 %149, i64* %173, align 8, !dbg !1314, !tbaa !1031
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !1315
  store i64 %153, i64* %174, align 8, !dbg !1316, !tbaa !1031
  %175 = add nuw nsw i32 %145, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %175, metadata !1173, metadata !DIExpression()), !dbg !1271
  %176 = icmp slt i32 %175, %87, !dbg !1318
  br i1 %176, label %144, label %138, !dbg !1272, !llvm.loop !1319

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !1180, metadata !DIExpression()), !dbg !1304
  %179 = add nsw i32 %178, -1, !dbg !1321
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !1323
  %181 = load i64, i64* %180, align 8, !dbg !1323, !tbaa !1031
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !1324
  store i64 %181, i64* %182, align 8, !dbg !1325, !tbaa !1031
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !1326
  %184 = load i64, i64* %183, align 8, !dbg !1326, !tbaa !1031
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !1327
  store i64 %184, i64* %185, align 8, !dbg !1328, !tbaa !1031
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !1329
  %187 = load i64, i64* %186, align 8, !dbg !1329, !tbaa !1031
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !1330
  store i64 %187, i64* %188, align 8, !dbg !1331, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 %179, metadata !1180, metadata !DIExpression()), !dbg !1304
  %189 = icmp sgt i32 %179, %166, !dbg !1305
  br i1 %189, label %177, label %168, !dbg !1307, !llvm.loop !1332

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !1279
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !1334
  br i1 %193, label %194, label %243, !dbg !1335

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !1336, !tbaa !1031
  %196 = mul i64 %195, %191, !dbg !1337
  store i64 %196, i64* %36, align 8, !dbg !1337, !tbaa !1060
  call void @llvm.dbg.value(metadata i32 1, metadata !1182, metadata !DIExpression()), !dbg !1338
  %197 = load i64, i64* %40, align 8, !dbg !1339, !tbaa !1031
  store i64 %197, i64* %37, align 8, !dbg !1342, !tbaa !1031
  %198 = load i64, i64* %41, align 8, !dbg !1343, !tbaa !1031
  store i64 %198, i64* %38, align 8, !dbg !1344, !tbaa !1031
  %199 = load i64, i64* %42, align 8, !dbg !1345, !tbaa !1031
  store i64 %199, i64* %39, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 2, metadata !1182, metadata !DIExpression()), !dbg !1338
  %200 = load i64, i64* %43, align 8, !dbg !1339, !tbaa !1031
  store i64 %200, i64* %40, align 8, !dbg !1342, !tbaa !1031
  %201 = load i64, i64* %44, align 8, !dbg !1343, !tbaa !1031
  store i64 %201, i64* %41, align 8, !dbg !1344, !tbaa !1031
  %202 = load i64, i64* %45, align 8, !dbg !1345, !tbaa !1031
  store i64 %202, i64* %42, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 3, metadata !1182, metadata !DIExpression()), !dbg !1338
  %203 = load i64, i64* %46, align 8, !dbg !1339, !tbaa !1031
  store i64 %203, i64* %43, align 8, !dbg !1342, !tbaa !1031
  %204 = load i64, i64* %47, align 8, !dbg !1343, !tbaa !1031
  store i64 %204, i64* %44, align 8, !dbg !1344, !tbaa !1031
  %205 = load i64, i64* %48, align 8, !dbg !1345, !tbaa !1031
  store i64 %205, i64* %45, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 4, metadata !1182, metadata !DIExpression()), !dbg !1338
  %206 = load i64, i64* %49, align 8, !dbg !1339, !tbaa !1031
  store i64 %206, i64* %46, align 8, !dbg !1342, !tbaa !1031
  %207 = load i64, i64* %50, align 8, !dbg !1343, !tbaa !1031
  store i64 %207, i64* %47, align 8, !dbg !1344, !tbaa !1031
  %208 = load i64, i64* %51, align 8, !dbg !1345, !tbaa !1031
  store i64 %208, i64* %48, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 5, metadata !1182, metadata !DIExpression()), !dbg !1338
  %209 = load i64, i64* %52, align 8, !dbg !1339, !tbaa !1031
  store i64 %209, i64* %49, align 8, !dbg !1342, !tbaa !1031
  %210 = load i64, i64* %53, align 8, !dbg !1343, !tbaa !1031
  store i64 %210, i64* %50, align 8, !dbg !1344, !tbaa !1031
  %211 = load i64, i64* %54, align 8, !dbg !1345, !tbaa !1031
  store i64 %211, i64* %51, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 6, metadata !1182, metadata !DIExpression()), !dbg !1338
  %212 = load i64, i64* %55, align 8, !dbg !1339, !tbaa !1031
  store i64 %212, i64* %52, align 8, !dbg !1342, !tbaa !1031
  %213 = load i64, i64* %56, align 8, !dbg !1343, !tbaa !1031
  store i64 %213, i64* %53, align 8, !dbg !1344, !tbaa !1031
  %214 = load i64, i64* %57, align 8, !dbg !1345, !tbaa !1031
  store i64 %214, i64* %54, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 7, metadata !1182, metadata !DIExpression()), !dbg !1338
  %215 = load i64, i64* %58, align 8, !dbg !1339, !tbaa !1031
  store i64 %215, i64* %55, align 8, !dbg !1342, !tbaa !1031
  %216 = load i64, i64* %59, align 8, !dbg !1343, !tbaa !1031
  store i64 %216, i64* %56, align 8, !dbg !1344, !tbaa !1031
  %217 = load i64, i64* %60, align 8, !dbg !1345, !tbaa !1031
  store i64 %217, i64* %57, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 8, metadata !1182, metadata !DIExpression()), !dbg !1338
  %218 = load i64, i64* %61, align 8, !dbg !1339, !tbaa !1031
  store i64 %218, i64* %58, align 8, !dbg !1342, !tbaa !1031
  %219 = load i64, i64* %62, align 8, !dbg !1343, !tbaa !1031
  store i64 %219, i64* %59, align 8, !dbg !1344, !tbaa !1031
  %220 = load i64, i64* %63, align 8, !dbg !1345, !tbaa !1031
  store i64 %220, i64* %60, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 9, metadata !1182, metadata !DIExpression()), !dbg !1338
  %221 = load i64, i64* %64, align 8, !dbg !1339, !tbaa !1031
  store i64 %221, i64* %61, align 8, !dbg !1342, !tbaa !1031
  %222 = load i64, i64* %65, align 8, !dbg !1343, !tbaa !1031
  store i64 %222, i64* %62, align 8, !dbg !1344, !tbaa !1031
  %223 = load i64, i64* %66, align 8, !dbg !1345, !tbaa !1031
  store i64 %223, i64* %63, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 10, metadata !1182, metadata !DIExpression()), !dbg !1338
  %224 = load i64, i64* %67, align 8, !dbg !1339, !tbaa !1031
  store i64 %224, i64* %64, align 8, !dbg !1342, !tbaa !1031
  %225 = load i64, i64* %68, align 8, !dbg !1343, !tbaa !1031
  store i64 %225, i64* %65, align 8, !dbg !1344, !tbaa !1031
  %226 = load i64, i64* %69, align 8, !dbg !1345, !tbaa !1031
  store i64 %226, i64* %66, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 11, metadata !1182, metadata !DIExpression()), !dbg !1338
  %227 = load i64, i64* %70, align 8, !dbg !1339, !tbaa !1031
  store i64 %227, i64* %67, align 8, !dbg !1342, !tbaa !1031
  %228 = load i64, i64* %71, align 8, !dbg !1343, !tbaa !1031
  store i64 %228, i64* %68, align 8, !dbg !1344, !tbaa !1031
  %229 = load i64, i64* %72, align 8, !dbg !1345, !tbaa !1031
  store i64 %229, i64* %69, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 12, metadata !1182, metadata !DIExpression()), !dbg !1338
  %230 = load i64, i64* %73, align 8, !dbg !1339, !tbaa !1031
  store i64 %230, i64* %70, align 8, !dbg !1342, !tbaa !1031
  %231 = load i64, i64* %74, align 8, !dbg !1343, !tbaa !1031
  store i64 %231, i64* %71, align 8, !dbg !1344, !tbaa !1031
  %232 = load i64, i64* %75, align 8, !dbg !1345, !tbaa !1031
  store i64 %232, i64* %72, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 13, metadata !1182, metadata !DIExpression()), !dbg !1338
  %233 = load i64, i64* %76, align 8, !dbg !1339, !tbaa !1031
  store i64 %233, i64* %73, align 8, !dbg !1342, !tbaa !1031
  %234 = load i64, i64* %77, align 8, !dbg !1343, !tbaa !1031
  store i64 %234, i64* %74, align 8, !dbg !1344, !tbaa !1031
  %235 = load i64, i64* %78, align 8, !dbg !1345, !tbaa !1031
  store i64 %235, i64* %75, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 14, metadata !1182, metadata !DIExpression()), !dbg !1338
  %236 = load i64, i64* %79, align 8, !dbg !1339, !tbaa !1031
  store i64 %236, i64* %76, align 8, !dbg !1342, !tbaa !1031
  %237 = load i64, i64* %80, align 8, !dbg !1343, !tbaa !1031
  store i64 %237, i64* %77, align 8, !dbg !1344, !tbaa !1031
  %238 = load i64, i64* %81, align 8, !dbg !1345, !tbaa !1031
  store i64 %238, i64* %78, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 15, metadata !1182, metadata !DIExpression()), !dbg !1338
  %239 = load i64, i64* %82, align 8, !dbg !1339, !tbaa !1031
  store i64 %239, i64* %79, align 8, !dbg !1342, !tbaa !1031
  %240 = load i64, i64* %83, align 8, !dbg !1343, !tbaa !1031
  store i64 %240, i64* %80, align 8, !dbg !1344, !tbaa !1031
  %241 = load i64, i64* %84, align 8, !dbg !1345, !tbaa !1031
  store i64 %241, i64* %81, align 8, !dbg !1346, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 16, metadata !1182, metadata !DIExpression()), !dbg !1338
  store i64 1, i64* %82, align 8, !dbg !1347, !tbaa !1031
  store i64 0, i64* %83, align 8, !dbg !1348, !tbaa !1031
  store i64 0, i64* %84, align 8, !dbg !1349, !tbaa !1031
  %242 = icmp eq i64 %196, %198, !dbg !1277
  br i1 %242, label %190, label %243, !dbg !1278, !llvm.loop !1350

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1352
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !1352, !tbaa.struct !1353
  br label %245, !dbg !1354

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !1355
  ret void, !dbg !1355
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !1356 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1360, metadata !DIExpression()), !dbg !1361
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9, !dbg !1362
  ret void, !dbg !1363
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !1364 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1366, metadata !DIExpression()), !dbg !1367
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9, !dbg !1368
  ret void, !dbg !1369
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 !dbg !477 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !482, metadata !DIExpression()), !dbg !1370
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !1371
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1372
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #8, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %3, metadata !483, metadata !DIExpression()), !dbg !1370
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1374
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %5, metadata !483, metadata !DIExpression()), !dbg !1370
  ret i8* %5, !dbg !1376
}

declare dso_local void @objc_msgSend() local_unnamed_addr #3

declare !dbg !1377 dso_local i8* @objc_getClass(i8*) local_unnamed_addr #3

declare !dbg !1380 dso_local i8* @sel_getUid(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !493, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !494, metadata !DIExpression()), !dbg !1381
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !1382
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !498, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !499, metadata !DIExpression()), !dbg !1385
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !1386
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1387
  ret void, !dbg !1388
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) #0 !dbg !501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !504, metadata !DIExpression()), !dbg !1389
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1390
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1391
  ret void, !dbg !1392
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !510, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %1, metadata !511, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !512, metadata !DIExpression()), !dbg !1393
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !1394
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1395
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %5, metadata !513, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i32, i32, i8)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i32, i32, i8)*), metadata !514, metadata !DIExpression()), !dbg !1393
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !1397
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i32, i32, i8)*)(i8* %5, i8* %6, i8* %0, i32 %1, i32 4, i8 zeroext 0) #8, !dbg !1398
  ret i8* %7, !dbg !1399
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 !dbg !1400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1404, metadata !DIExpression()), !dbg !1407
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2) #9, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %2, metadata !1405, metadata !DIExpression()), !dbg !1407
  %3 = tail call i32 @strlen(i8* %0) #8, !dbg !1409
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %3) #9, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %4, metadata !1406, metadata !DIExpression()), !dbg !1407
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #8, !dbg !1411
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1412
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9, !dbg !1413
  ret void, !dbg !1414
}

declare !dbg !1415 dso_local i32 @strlen(i8*) local_unnamed_addr #3

declare !dbg !1418 dso_local void @NSLog(i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !1421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1423, metadata !DIExpression()), !dbg !1425
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2) #9, !dbg !1426
  call void @llvm.dbg.value(metadata i8* %2, metadata !1424, metadata !DIExpression()), !dbg !1425
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #8, !dbg !1427
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9, !dbg !1428
  ret void, !dbg !1429
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %0, i32 %1) local_unnamed_addr #0 !dbg !520 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !526, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %1, metadata !527, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i32, i32)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i32, i32)*), metadata !528, metadata !DIExpression()), !dbg !1430
  %3 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1431
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !1432
  %5 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i32, i32)*)(i8* %3, i8* %4, i32 %1, i32 0) #8, !dbg !1433
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %5, !dbg !1434
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %0) local_unnamed_addr #0 !dbg !533 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !537, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*), metadata !538, metadata !DIExpression()), !dbg !1435
  %2 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1436
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !1437
  %4 = tail call %struct.halide_metal_command_queue* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1438
  ret %struct.halide_metal_command_queue* %4, !dbg !1439
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !543 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* %0, metadata !547, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %1, metadata !548, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %2, metadata !549, metadata !DIExpression()), !dbg !1440
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %4, metadata !550, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*), metadata !551, metadata !DIExpression()), !dbg !1440
  %5 = bitcast %struct.halide_metal_command_queue* %0 to i8*, !dbg !1442
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1443
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*)(i8* %5, i8* %6) #8, !dbg !1444
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7, metadata !552, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*), metadata !553, metadata !DIExpression()), !dbg !1440
  %8 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7 to i8*, !dbg !1445
  %9 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1446
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %8, i8* %9, i8* %4) #8, !dbg !1447
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1448
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7, !dbg !1449
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) local_unnamed_addr #0 !dbg !562 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !566, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1, metadata !567, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*), metadata !568, metadata !DIExpression()), !dbg !1450
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1451
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !1452
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) #8, !dbg !1453
  ret void, !dbg !1454
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !573 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !577, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !578, metadata !DIExpression()), !dbg !1455
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1456
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1457
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1458
  ret i8* %4, !dbg !1459
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !580 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !587, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*), metadata !588, metadata !DIExpression()), !dbg !1460
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1461
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !1462
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1463
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %4, !dbg !1464
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !593 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !599, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*), metadata !600, metadata !DIExpression()), !dbg !1465
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1466
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1467
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1468
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %4, !dbg !1469
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1) local_unnamed_addr #0 !dbg !605 {
  %3 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !613, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1, metadata !614, metadata !DIExpression()), !dbg !1470
  %4 = bitcast i8** %3 to i8*, !dbg !1471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10, !dbg !1471
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*), metadata !616, metadata !DIExpression()), !dbg !1470
  %5 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1472
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1473
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1 to i8*, !dbg !1474
  call void @llvm.dbg.value(metadata i8** %3, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !1470
  %8 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*)(i8* %5, i8* %6, i8* %7, i8** nonnull %3) #8, !dbg !1475
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, metadata !617, metadata !DIExpression()), !dbg !1470
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, null, !dbg !1476
  br i1 %9, label %10, label %12, !dbg !1478

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 4, !dbg !1479, !tbaa !1481
  call void @llvm.dbg.value(metadata i8* %11, metadata !615, metadata !DIExpression()), !dbg !1470
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %11) #9, !dbg !1482
  br label %12, !dbg !1483

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10, !dbg !1484
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, !dbg !1485
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0) local_unnamed_addr #0 !dbg !623 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0, metadata !627, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*), metadata !628, metadata !DIExpression()), !dbg !1486
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0 to i8*, !dbg !1487
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1488
  %4 = tail call i32 bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1489
  ret i32 %4, !dbg !1490
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1) local_unnamed_addr #0 !dbg !633 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !637, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1, metadata !638, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*), metadata !639, metadata !DIExpression()), !dbg !1491
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1492
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1493
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1 to i8*, !dbg !1494
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %5) #8, !dbg !1495
  ret void, !dbg !1496
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 !dbg !641 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !645, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !646, metadata !DIExpression()), !dbg !1497
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1498
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1499
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1500
  ret void, !dbg !1501
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::NSRange"* byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %1) local_unnamed_addr #0 !dbg !651 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to %"struct.Halide::Runtime::Internal::Metal::NSRange"*
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !659, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1, metadata !660, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*), metadata !661, metadata !DIExpression()), !dbg !1502
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1504
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1505
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1 to i64*, !dbg !1506
  %8 = load i64, i64* %7, align 4, !dbg !1506
  store i64 %8, i64* %3, align 8, !dbg !1506
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %4) #8, !dbg !1507
  ret void, !dbg !1508
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) local_unnamed_addr #0 !dbg !666 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !670, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !671, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*), metadata !672, metadata !DIExpression()), !dbg !1509
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1510
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !1511
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) #8, !dbg !1512
  ret void, !dbg !1513
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 !dbg !677 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !681, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i1 (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*), metadata !682, metadata !DIExpression()), !dbg !1514
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %2, metadata !683, metadata !DIExpression()), !dbg !1514
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1516
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1517
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8, !dbg !1518
  br i1 %5, label %6, label %9, !dbg !1519

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*), metadata !684, metadata !DIExpression()), !dbg !1520
  %7 = tail call i32 bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*)(i8* %3, i8* %2) #8, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %7, metadata !691, metadata !DIExpression()), !dbg !1520
  %8 = icmp eq i32 %7, 1, !dbg !1522
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i1 [ %8, %6 ], [ false, %1 ], !dbg !1514
  ret i1 %10, !dbg !1523
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEjS6_jj(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i32 %2, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, i32 %4, i32 %5) local_unnamed_addr #0 !dbg !696 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !700, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !701, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %2, metadata !702, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, metadata !703, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %4, metadata !704, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %5, metadata !705, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*, i32, i8*, i32, i32)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i8*, i32, i32)*), metadata !706, metadata !DIExpression()), !dbg !1524
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1525
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1526
  %9 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1 to i8*, !dbg !1527
  %10 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3 to i8*, !dbg !1528
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i8*, i32, i32)*)(i8* %7, i8* %8, i8* %9, i32 %2, i8* %10, i32 %4, i32 %5) #8, !dbg !1529
  ret void, !dbg !1530
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0) local_unnamed_addr #0 !dbg !711 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !715, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !716, metadata !DIExpression()), !dbg !1531
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1532
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1533
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1534
  ret void, !dbg !1535
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 !dbg !718 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !722, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i1 (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*), metadata !723, metadata !DIExpression()), !dbg !1536
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %2, metadata !724, metadata !DIExpression()), !dbg !1536
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1538
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1539
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8, !dbg !1540
  ret i1 %5, !dbg !1541
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_library"* @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcj(%struct.halide_metal_device* %0, i8* %1, i32 %2) #0 !dbg !726 {
  %4 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !730, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %1, metadata !731, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %2, metadata !732, metadata !DIExpression()), !dbg !1542
  %5 = bitcast i8** %4 to i8*, !dbg !1543
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !1543
  %6 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %6, metadata !734, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !735, metadata !DIExpression()), !dbg !1542
  %7 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1545
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1546
  %9 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %7, i8* %8) #8, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %9, metadata !736, metadata !DIExpression()), !dbg !1542
  %10 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1548
  %11 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %9, i8* %10) #8, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %11, metadata !736, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*), metadata !737, metadata !DIExpression()), !dbg !1542
  %12 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1550
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*)(i8* %11, i8* %12, i8 zeroext 0) #8, !dbg !1551
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*), metadata !742, metadata !DIExpression()), !dbg !1542
  %13 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1552
  %14 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !1553
  call void @llvm.dbg.value(metadata i8** %4, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  %15 = call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*)(i8* %13, i8* %14, i8* %6, i8* %11, i8** nonnull %4) #8, !dbg !1554
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, metadata !747, metadata !DIExpression()), !dbg !1542
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %11) #9, !dbg !1555
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %6) #9, !dbg !1556
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, null, !dbg !1557
  br i1 %16, label %17, label %19, !dbg !1559

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 4, !dbg !1560, !tbaa !1481
  call void @llvm.dbg.value(metadata i8* %18, metadata !733, metadata !DIExpression()), !dbg !1542
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %18) #9, !dbg !1562
  br label %19, !dbg !1563

19:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !1564
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, !dbg !1565
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcj(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !749 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, metadata !753, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %1, metadata !754, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %2, metadata !755, metadata !DIExpression()), !dbg !1566
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9, !dbg !1567
  call void @llvm.dbg.value(metadata i8* %4, metadata !756, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*), metadata !757, metadata !DIExpression()), !dbg !1566
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0 to i8*, !dbg !1568
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !1569
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*)(i8* %5, i8* %6, i8* %4) #8, !dbg !1570
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7, metadata !758, metadata !DIExpression()), !dbg !1566
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1571
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7, !dbg !1572
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i32 %3) local_unnamed_addr #0 !dbg !763 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !767, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !768, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %2, metadata !769, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %3, metadata !770, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i32, i32)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i32, i32)*), metadata !771, metadata !DIExpression()), !dbg !1573
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1574
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1575
  %7 = trunc i64 %2 to i32, !dbg !1576
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i32, i32)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i32 %7, i32 %3) #8, !dbg !1577
  ret void, !dbg !1578
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !776 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !780, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i8* %1, metadata !781, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 %2, metadata !782, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 %3, metadata !783, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*, i32, i32)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i32)*), metadata !784, metadata !DIExpression()), !dbg !1579
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1580
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1581
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i32)*)(i8* %5, i8* %6, i8* %1, i32 %2, i32 %3) #8, !dbg !1582
  ret void, !dbg !1583
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2) local_unnamed_addr #0 !dbg !789 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !793, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %1, metadata !794, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %2, metadata !795, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata void (i8*, i8*, i32, i32)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i32, i32)*), metadata !796, metadata !DIExpression()), !dbg !1584
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1585
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !1586
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i32, i32)*)(i8* %4, i8* %5, i32 %1, i32 %2) #8, !dbg !1587
  ret void, !dbg !1588
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !801 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !805, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !806, metadata !DIExpression()), !dbg !1589
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1590
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1591
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1592
  ret void, !dbg !1593
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !808 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !810, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !811, metadata !DIExpression()), !dbg !1594
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1595
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !1596
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1597
  ret void, !dbg !1598
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 !dbg !813 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !817, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !818, metadata !DIExpression()), !dbg !1599
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1600
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #8, !dbg !1601
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1602
  ret i8* %4, !dbg !1603
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !827, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !828, metadata !DIExpression()), !dbg !1604
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !1605
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1606
  ret i8* %3, !dbg !1607
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() local_unnamed_addr #0 !dbg !830 {
  %1 = tail call i8* @MTLCreateSystemDefaultDevice() #8, !dbg !1608
  %2 = bitcast i8* %1 to %struct.halide_metal_device*, !dbg !1609
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %2, metadata !834, metadata !DIExpression()), !dbg !1610
  %3 = icmp eq i8* %1, null, !dbg !1611
  br i1 %3, label %4, label %14, !dbg !1612

4:                                                ; preds = %0
  %5 = tail call i8* @dlsym(i8* nonnull inttoptr (i32 -2 to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %5, metadata !835, metadata !DIExpression()), !dbg !1614
  %6 = icmp eq i8* %5, null, !dbg !1615
  br i1 %6, label %14, label %7, !dbg !1616

7:                                                ; preds = %4
  %8 = bitcast i8* %5 to i8* ()*, !dbg !1617
  call void @llvm.dbg.value(metadata i8* ()* %8, metadata !838, metadata !DIExpression()), !dbg !1618
  %9 = tail call i8* %8() #8, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %9, metadata !841, metadata !DIExpression()), !dbg !1618
  %10 = icmp eq i8* %9, null, !dbg !1620
  br i1 %10, label %14, label %11, !dbg !1622

11:                                               ; preds = %7
  %12 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* nonnull %9) #9, !dbg !1623
  %13 = bitcast i8* %12 to %struct.halide_metal_device*, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %13, metadata !834, metadata !DIExpression()), !dbg !1610
  br label %14, !dbg !1626

14:                                               ; preds = %4, %11, %7, %0
  %15 = phi %struct.halide_metal_device* [ %2, %0 ], [ null, %4 ], [ %13, %11 ], [ null, %7 ], !dbg !1610
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %15, metadata !834, metadata !DIExpression()), !dbg !1610
  ret %struct.halide_metal_device* %15, !dbg !1627
}

declare !dbg !1628 dso_local i8* @MTLCreateSystemDefaultDevice() local_unnamed_addr #3

declare !dbg !1631 dso_local i8* @dlsym(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** %1, %struct.halide_metal_command_queue** %2, i1 zeroext %3) local_unnamed_addr #4 !dbg !1634 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata %struct.halide_metal_device** %1, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue** %2, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i1 %3, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1644
  br label %5, !dbg !1645

5:                                                ; preds = %5, %4
  %6 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE, i8 1 acquire, !dbg !1646
  %7 = icmp eq i8 %6, 0, !dbg !1646
  br i1 %7, label %8, label %5, !dbg !1645, !llvm.loop !1647

8:                                                ; preds = %5
  %9 = tail call i32 @halide_start_clock(i8* %0) #8, !dbg !1649
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1650, !tbaa !1481
  %11 = icmp eq %struct.halide_metal_device* %10, null, !dbg !1652
  %12 = and i1 %11, %3, !dbg !1653
  br i1 %12, label %13, label %79, !dbg !1653

13:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1654
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1654
  %14 = tail call i8* @malloc(i32 1024) #8, !dbg !1657
  %15 = icmp eq i8* %14, null, !dbg !1658
  br i1 %15, label %16, label %18, !dbg !1659

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1660
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !1662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1663
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1665
  br label %27, !dbg !1666

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i32 1023, !dbg !1667
  store i8 0, i8* %19, align 1, !dbg !1668, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1660
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !1662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1669
  %21 = ptrtoint i8* %20 to i32, !dbg !1671
  %22 = ptrtoint i8* %14 to i32, !dbg !1671
  %23 = add i32 %21, 1, !dbg !1671
  %24 = sub i32 %23, %22, !dbg !1672
  %25 = sext i32 %24 to i64, !dbg !1673
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %25) #8, !dbg !1674
  tail call void @halide_print(i8* %0, i8* nonnull %14) #8, !dbg !1675
  br label %27

27:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8, !dbg !1676
  %28 = tail call %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() #9, !dbg !1677
  store %struct.halide_metal_device* %28, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1678, !tbaa !1481
  %29 = icmp eq %struct.halide_metal_device* %28, null, !dbg !1679
  %30 = tail call i8* @malloc(i32 1024) #8, !dbg !1681
  %31 = icmp eq i8* %30, null, !dbg !1681
  br i1 %29, label %32, label %45, !dbg !1682

32:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !1689
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !1689
  br i1 %31, label %33, label %35, !dbg !1692

33:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !1698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !1698
  %34 = tail call i8* @halide_string_to_string(i8* %30, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0)) #8, !dbg !1700
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !1706
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1708
  br label %44, !dbg !1712

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %30, i32 1023, !dbg !1713
  store i8 0, i8* %36, align 1, !dbg !1716, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !1698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !1698
  %37 = tail call i8* @halide_string_to_string(i8* nonnull %30, i8* nonnull %36, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0)) #8, !dbg !1700
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !1706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !1720
  %38 = ptrtoint i8* %37 to i32, !dbg !1723
  %39 = ptrtoint i8* %30 to i32, !dbg !1723
  %40 = add i32 %38, 1, !dbg !1723
  %41 = sub i32 %40, %39, !dbg !1724
  %42 = sext i32 %41 to i64, !dbg !1725
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %30, i64 %42) #8, !dbg !1726
  tail call void @halide_error(i8* %0, i8* nonnull %30) #8, !dbg !1727
  br label %44

44:                                               ; preds = %35, %33
  tail call void @free(i8* %30) #8, !dbg !1730
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1733
  br label %89, !dbg !1734

45:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1735
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1735
  br i1 %31, label %46, label %48, !dbg !1737

46:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1738
  %47 = tail call i8* @halide_string_to_string(i8* %30, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1741
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1743
  br label %57, !dbg !1744

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %30, i32 1023, !dbg !1745
  store i8 0, i8* %49, align 1, !dbg !1746, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1738
  %50 = tail call i8* @halide_string_to_string(i8* nonnull %30, i8* nonnull %49, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1741
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1747
  %51 = ptrtoint i8* %50 to i32, !dbg !1749
  %52 = ptrtoint i8* %30 to i32, !dbg !1749
  %53 = add i32 %51, 1, !dbg !1749
  %54 = sub i32 %53, %52, !dbg !1750
  %55 = sext i32 %54 to i64, !dbg !1751
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %30, i64 %55) #8, !dbg !1752
  tail call void @halide_print(i8* %0, i8* nonnull %30) #8, !dbg !1753
  br label %57

57:                                               ; preds = %48, %46
  tail call void @free(i8* %30) #8, !dbg !1754
  %58 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1755, !tbaa !1481
  %59 = tail call %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %58) #9, !dbg !1756
  store %struct.halide_metal_command_queue* %59, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !dbg !1757, !tbaa !1481
  %60 = icmp eq %struct.halide_metal_command_queue* %59, null, !dbg !1758
  br i1 %60, label %63, label %61, !dbg !1760

61:                                               ; preds = %57
  %62 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1761, !tbaa !1481
  br label %86, !dbg !1761

63:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !1764
  %64 = tail call i8* @malloc(i32 1024) #8, !dbg !1767
  %65 = icmp eq i8* %64, null, !dbg !1771
  br i1 %65, label %66, label %68, !dbg !1772

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !1773
  %67 = tail call i8* @halide_string_to_string(i8* %64, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !1775
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !1776
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1778
  br label %77, !dbg !1779

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, i8* %64, i32 1023, !dbg !1780
  store i8 0, i8* %69, align 1, !dbg !1781, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !1773
  %70 = tail call i8* @halide_string_to_string(i8* nonnull %64, i8* nonnull %69, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !1775
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !1776
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !1782
  %71 = ptrtoint i8* %70 to i32, !dbg !1784
  %72 = ptrtoint i8* %64 to i32, !dbg !1784
  %73 = add i32 %71, 1, !dbg !1784
  %74 = sub i32 %73, %72, !dbg !1785
  %75 = sext i32 %74 to i64, !dbg !1786
  %76 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %64, i64 %75) #8, !dbg !1787
  tail call void @halide_error(i8* %0, i8* nonnull %64) #8, !dbg !1788
  br label %77

77:                                               ; preds = %68, %66
  tail call void @free(i8* %64) #8, !dbg !1789
  %78 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 4, !dbg !1790, !tbaa !1481
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %78) #9, !dbg !1791
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1792, !tbaa !1481
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1793
  br label %89, !dbg !1794

79:                                               ; preds = %8
  %80 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !dbg !1761
  %81 = icmp eq %struct.halide_metal_device* %10, null, !dbg !1761
  %82 = icmp ne %struct.halide_metal_command_queue* %80, null, !dbg !1761
  %83 = or i1 %81, %82, !dbg !1761
  br i1 %83, label %86, label %84, !dbg !1761

84:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !1795
  tail call void @abort() #8, !dbg !1795
  %85 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !1797, !tbaa !1481
  br label %86, !dbg !1795

86:                                               ; preds = %61, %79, %84
  %87 = phi %struct.halide_metal_device* [ %10, %79 ], [ %85, %84 ], [ %62, %61 ], !dbg !1797
  store %struct.halide_metal_device* %87, %struct.halide_metal_device** %1, align 4, !dbg !1798, !tbaa !1481
  %88 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !dbg !1799, !tbaa !1481
  store %struct.halide_metal_command_queue* %88, %struct.halide_metal_command_queue** %2, align 4, !dbg !1800, !tbaa !1481
  br label %89, !dbg !1801

89:                                               ; preds = %86, %77, %44
  %90 = phi i32 [ -1, %44 ], [ -1, %77 ], [ 0, %86 ], !dbg !1644
  ret i32 %90, !dbg !1802
}

declare !dbg !1803 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1806 dso_local void @abort() local_unnamed_addr #3

declare !dbg !1807 extern_weak dso_local i32 @halide_start_clock(i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_metal_release_context(i8* %0) local_unnamed_addr #6 !dbg !1808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1810, metadata !DIExpression()), !dbg !1811
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1812
  ret i32 0, !dbg !1813
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %0, i8* %1, i1 zeroext %2) local_unnamed_addr #0 align 2 !dbg !1814 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, metadata !1816, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %1, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i1 %2, metadata !1819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1820
  %4 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 1, !dbg !1821
  store i8* %1, i8** %4, align 4, !dbg !1822, !tbaa !1823
  %5 = tail call i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() #9, !dbg !1825
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 0, !dbg !1826
  store i8* %5, i8** %6, align 4, !dbg !1827, !tbaa !1828
  %7 = load i8*, i8** %4, align 4, !dbg !1829, !tbaa !1823
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 2, !dbg !1830
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 3, !dbg !1831
  %10 = tail call i32 @halide_metal_acquire_context(i8* %7, %struct.halide_metal_device** nonnull %8, %struct.halide_metal_command_queue** nonnull %9, i1 zeroext %2) #9, !dbg !1832
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 4, !dbg !1833
  store i32 %10, i32* %11, align 4, !dbg !1834, !tbaa !1835
  ret void, !dbg !1836
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %0) local_unnamed_addr #0 align 2 !dbg !1837 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, metadata !1839, metadata !DIExpression()), !dbg !1840
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 1, !dbg !1841
  %3 = load i8*, i8** %2, align 4, !dbg !1841, !tbaa !1823
  %4 = tail call i32 @halide_metal_release_context(i8* %3) #9, !dbg !1842
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 0, !dbg !1843
  %6 = load i8*, i8** %5, align 4, !dbg !1843, !tbaa !1828
  tail call void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %6) #9, !dbg !1844
  ret void, !dbg !1845
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #0 !dbg !1846 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %0, metadata !1848, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1, metadata !1849, metadata !DIExpression()), !dbg !1851
  %3 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #9, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %3, metadata !1850, metadata !DIExpression()), !dbg !1851
  %4 = icmp eq i8* %3, null, !dbg !1853
  br i1 %4, label %6, label %5, !dbg !1855

5:                                                ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* nonnull %3) #9, !dbg !1856
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %3) #9, !dbg !1858
  br label %6, !dbg !1859

6:                                                ; preds = %5, %2
  ret void, !dbg !1860
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1861 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1865, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1866, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1876
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1876
  %4 = tail call i8* @malloc(i32 1024) #8, !dbg !1878
  %5 = icmp eq i8* %4, null, !dbg !1879
  br i1 %5, label %8, label %6, !dbg !1880

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1881
  store i8 0, i8* %7, align 1, !dbg !1882, !tbaa !1134
  br label %8, !dbg !1883

8:                                                ; preds = %2, %6
  %9 = phi i8* [ %7, %6 ], [ null, %2 ], !dbg !1884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1885
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1885
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !1887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !1892
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #10, !dbg !1892
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1894
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1895
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1895
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !1897
  %13 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %13, metadata !1891, metadata !DIExpression()) #10, !dbg !1899
  %14 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %9, i8* %13) #8, !dbg !1901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1902
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1902
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !1904
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1905
  br i1 %5, label %16, label %17, !dbg !1907

16:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !1908
  br label %24, !dbg !1909

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1910
  %18 = ptrtoint i8* %15 to i32, !dbg !1912
  %19 = ptrtoint i8* %4 to i32, !dbg !1912
  %20 = add i32 %18, 1, !dbg !1912
  %21 = sub i32 %20, %19, !dbg !1913
  %22 = sext i32 %21 to i64, !dbg !1914
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %22) #8, !dbg !1915
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1916
  br label %24

24:                                               ; preds = %16, %17
  call void @free(i8* %4) #8, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1918, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1923, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()), !dbg !1931
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !1932
  %26 = load i32, i32* %25, align 4, !dbg !1932, !tbaa !1234
  %27 = icmp sgt i32 %26, 0, !dbg !1934
  br i1 %27, label %31, label %28, !dbg !1935

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1936
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !1938
  %30 = load i8, i8* %29, align 1, !dbg !1938, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1939, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !1947
  br label %69, !dbg !1948

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %33 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !1237
  br label %34, !dbg !1935

34:                                               ; preds = %46, %31
  %35 = phi i32 [ 0, %31 ], [ %48, %46 ]
  %36 = phi i32 [ 0, %31 ], [ %47, %46 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %36, metadata !1926, metadata !DIExpression()), !dbg !1929
  %37 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i32 %35, i32 2, !dbg !1949
  %38 = load i32, i32* %37, align 4, !dbg !1949, !tbaa !1245
  %39 = icmp sgt i32 %38, 0, !dbg !1952
  br i1 %39, label %40, label %46, !dbg !1953

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i32 %35, i32 1, !dbg !1954
  %42 = load i32, i32* %41, align 4, !dbg !1954, !tbaa !1309
  %43 = add nsw i32 %42, -1, !dbg !1956
  %44 = mul nsw i32 %43, %38, !dbg !1957
  %45 = add nsw i32 %44, %36, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %45, metadata !1926, metadata !DIExpression()), !dbg !1929
  br label %46, !dbg !1959

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %45, %40 ], [ %36, %34 ], !dbg !1929
  call void @llvm.dbg.value(metadata i32 %47, metadata !1926, metadata !DIExpression()), !dbg !1929
  %48 = add nuw nsw i32 %35, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %48, metadata !1927, metadata !DIExpression()), !dbg !1931
  %49 = icmp slt i32 %48, %26, !dbg !1934
  br i1 %49, label %34, label %50, !dbg !1935, !llvm.loop !1961

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %47, metadata !1926, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1936
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !1938
  %52 = load i8, i8* %51, align 1, !dbg !1938, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1939, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !1947
  br label %53, !dbg !1948

53:                                               ; preds = %65, %50
  %54 = phi i32 [ 0, %50 ], [ %67, %65 ]
  %55 = phi i32 [ 0, %50 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !1943, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %55, metadata !1942, metadata !DIExpression()), !dbg !1945
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i32 %54, i32 2, !dbg !1963
  %57 = load i32, i32* %56, align 4, !dbg !1963, !tbaa !1245
  %58 = icmp slt i32 %57, 0, !dbg !1967
  br i1 %58, label %59, label %65, !dbg !1968

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i32 %54, i32 1, !dbg !1969
  %61 = load i32, i32* %60, align 4, !dbg !1969, !tbaa !1309
  %62 = add nsw i32 %61, -1, !dbg !1971
  %63 = mul nsw i32 %62, %57, !dbg !1972
  %64 = add nsw i32 %63, %55, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %64, metadata !1942, metadata !DIExpression()), !dbg !1945
  br label %65, !dbg !1974

65:                                               ; preds = %59, %53
  %66 = phi i32 [ %64, %59 ], [ %55, %53 ], !dbg !1945
  call void @llvm.dbg.value(metadata i32 %66, metadata !1942, metadata !DIExpression()), !dbg !1945
  %67 = add nuw nsw i32 %54, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %67, metadata !1943, metadata !DIExpression()), !dbg !1947
  %68 = icmp slt i32 %67, %26, !dbg !1976
  br i1 %68, label %53, label %69, !dbg !1948, !llvm.loop !1977

69:                                               ; preds = %65, %28
  %70 = phi i8 [ %30, %28 ], [ %52, %65 ]
  %71 = phi i32 [ 0, %28 ], [ %47, %65 ]
  %72 = phi i32 [ 0, %28 ], [ %66, %65 ], !dbg !1945
  %73 = zext i8 %70 to i32, !dbg !1938
  %74 = add nuw nsw i32 %73, 7, !dbg !1979
  %75 = lshr i32 %74, 3, !dbg !1980
  %76 = add nsw i32 %71, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %76, metadata !1926, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1982
  %77 = sub i32 %76, %72, !dbg !1984
  %78 = mul i32 %77, %75, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %78, metadata !1867, metadata !DIExpression()), !dbg !1875
  %79 = icmp eq i32 %78, 0, !dbg !1985
  br i1 %79, label %80, label %81, !dbg !1988

80:                                               ; preds = %69
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !1989
  call void @abort() #8, !dbg !1989
  br label %81, !dbg !1989

81:                                               ; preds = %80, %69
  %82 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1991
  %83 = load i64, i64* %82, align 8, !dbg !1991, !tbaa !1199
  %84 = icmp eq i64 %83, 0, !dbg !1993
  br i1 %84, label %85, label %189, !dbg !1994

85:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i32 0, metadata !1868, metadata !DIExpression()), !dbg !1995
  %86 = load i32, i32* %25, align 4, !dbg !1996, !tbaa !1234
  %87 = icmp sgt i32 %86, 0, !dbg !1998
  br i1 %87, label %88, label %90, !dbg !1999

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %113, !dbg !1999

90:                                               ; preds = %122, %85
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2000
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2000
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2000
  %91 = call i8* @malloc(i32 1024) #8, !dbg !2002
  %92 = icmp eq i8* %91, null, !dbg !2003
  br i1 %92, label %95, label %93, !dbg !2004

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, i8* %91, i32 1023, !dbg !2005
  store i8 0, i8* %94, align 1, !dbg !2006, !tbaa !1134
  br label %95, !dbg !2007

95:                                               ; preds = %90, %93
  %96 = phi i8* [ %94, %93 ], [ null, %90 ], !dbg !2008
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2009
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2009
  %97 = call i8* @halide_string_to_string(i8* %91, i8* %96, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0)) #8, !dbg !2011
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2012, metadata !DIExpression()) #10, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2015, metadata !DIExpression()) #10, !dbg !2016
  %98 = call i8* @halide_buffer_to_string(i8* %97, i8* %96, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2019
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2019
  %99 = call i8* @halide_string_to_string(i8* %98, i8* %96, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2022
  br i1 %92, label %100, label %101, !dbg !2024

100:                                              ; preds = %95
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2025
  br label %108, !dbg !2026

101:                                              ; preds = %95
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2027
  %102 = ptrtoint i8* %99 to i32, !dbg !2029
  %103 = ptrtoint i8* %91 to i32, !dbg !2029
  %104 = add i32 %102, 1, !dbg !2029
  %105 = sub i32 %104, %103, !dbg !2030
  %106 = sext i32 %105 to i64, !dbg !2031
  %107 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %91, i64 %106) #8, !dbg !2032
  call void @halide_print(i8* %0, i8* nonnull %91) #8, !dbg !2033
  br label %108

108:                                              ; preds = %101, %100
  call void @free(i8* %91) #8, !dbg !2034
  %109 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2035
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %109) #10, !dbg !2035
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !1870, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2037, metadata !DIExpression()) #10, !dbg !2042
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !2042
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2042
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8, !dbg !2044
  %110 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4, !dbg !2046
  %111 = load i32, i32* %110, align 4, !dbg !2046, !tbaa !1835
  %112 = icmp eq i32 %111, 0, !dbg !2048
  br i1 %112, label %126, label %187, !dbg !2049

113:                                              ; preds = %88, %122
  %114 = phi i32 [ %86, %88 ], [ %123, %122 ]
  %115 = phi i32 [ 0, %88 ], [ %124, %122 ]
  call void @llvm.dbg.value(metadata i32 %115, metadata !1868, metadata !DIExpression()), !dbg !1995
  %116 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %89, align 8, !dbg !2050, !tbaa !1237
  %117 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %116, i32 %115, i32 2, !dbg !2050
  %118 = load i32, i32* %117, align 4, !dbg !2050, !tbaa !1245
  %119 = icmp sgt i32 %118, -1, !dbg !2050
  br i1 %119, label %122, label %120, !dbg !2054

120:                                              ; preds = %113
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.49, i32 0, i32 0)) #8, !dbg !2055
  call void @abort() #8, !dbg !2055
  %121 = load i32, i32* %25, align 4, !dbg !1996, !tbaa !1234
  br label %122, !dbg !2055

122:                                              ; preds = %113, %120
  %123 = phi i32 [ %114, %113 ], [ %121, %120 ], !dbg !1996
  %124 = add nuw nsw i32 %115, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %124, metadata !1868, metadata !DIExpression()), !dbg !1995
  %125 = icmp slt i32 %124, %123, !dbg !1998
  br i1 %125, label %113, label %90, !dbg !1999, !llvm.loop !2058

126:                                              ; preds = %108
  %127 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %127, metadata !1871, metadata !DIExpression()), !dbg !1875
  %128 = call i8* @malloc(i32 16) #8, !dbg !2061
  call void @llvm.dbg.value(metadata i8* %128, metadata !1872, metadata !DIExpression()), !dbg !1875
  %129 = icmp eq i8* %128, null, !dbg !2062
  br i1 %129, label %187, label %130, !dbg !2064

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 2, !dbg !2065
  %132 = load %struct.halide_metal_device*, %struct.halide_metal_device** %131, align 4, !dbg !2065, !tbaa !2066
  %133 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %132, i32 %78) #9, !dbg !2067
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %133, metadata !1873, metadata !DIExpression()), !dbg !1875
  %134 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %133, null, !dbg !2068
  br i1 %134, label %135, label %155, !dbg !2070

135:                                              ; preds = %130
  call void @free(i8* nonnull %128) #8, !dbg !2071
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !2073
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !2073
  %136 = call i8* @malloc(i32 1024) #8, !dbg !2075
  %137 = icmp eq i8* %136, null, !dbg !2076
  br i1 %137, label %140, label %138, !dbg !2077

138:                                              ; preds = %135
  %139 = getelementptr inbounds i8, i8* %136, i32 1023, !dbg !2078
  store i8 0, i8* %139, align 1, !dbg !2079, !tbaa !1134
  br label %140, !dbg !2080

140:                                              ; preds = %135, %138
  %141 = phi i8* [ %139, %138 ], [ null, %135 ], !dbg !2081
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !2082
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !2082
  %142 = call i8* @halide_string_to_string(i8* %136, i8* %141, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !2084
  %143 = zext i32 %78 to i64, !dbg !2085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !2086, metadata !DIExpression()) #10, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %143, metadata !2089, metadata !DIExpression()) #10, !dbg !2090
  %144 = call i8* @halide_int64_to_string(i8* %142, i8* %141, i64 %143, i32 1) #8, !dbg !2092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !2093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !2093
  %145 = call i8* @halide_string_to_string(i8* %144, i8* %141, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #8, !dbg !2095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !2096
  br i1 %137, label %146, label %147, !dbg !2098

146:                                              ; preds = %140
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2099
  br label %154, !dbg !2100

147:                                              ; preds = %140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !2101
  %148 = ptrtoint i8* %145 to i32, !dbg !2103
  %149 = ptrtoint i8* %136 to i32, !dbg !2103
  %150 = add i32 %148, 1, !dbg !2103
  %151 = sub i32 %150, %149, !dbg !2104
  %152 = sext i32 %151 to i64, !dbg !2105
  %153 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %136, i64 %152) #8, !dbg !2106
  call void @halide_error(i8* %0, i8* nonnull %136) #8, !dbg !2107
  br label %154

154:                                              ; preds = %147, %146
  call void @free(i8* %136) #8, !dbg !2108
  br label %187, !dbg !2109

155:                                              ; preds = %130
  %156 = bitcast i8* %128 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !2110
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %133, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %156, align 8, !dbg !2111, !tbaa !2112
  %157 = getelementptr inbounds i8, i8* %128, i32 8, !dbg !2114
  %158 = bitcast i8* %157 to i64*, !dbg !2114
  store i64 0, i64* %158, align 8, !dbg !2115, !tbaa !2116
  %159 = ptrtoint i8* %128 to i32, !dbg !2117
  %160 = zext i32 %159 to i64, !dbg !2117
  store i64 %160, i64* %82, align 8, !dbg !2118, !tbaa !1199
  %161 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2119
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %161, align 8, !dbg !2120, !tbaa !2121
  %162 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i32 0, i32 15), align 4, !dbg !2122, !tbaa !2123
  %163 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %162, i32 0, i32 0, !dbg !2125
  %164 = load void ()*, void ()** %163, align 4, !dbg !2125, !tbaa !2126
  call void %164() #8, !dbg !2128
  %165 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %165, metadata !1874, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2130
  %166 = call i8* @malloc(i32 1024) #8, !dbg !2132
  %167 = icmp eq i8* %166, null, !dbg !2133
  br i1 %167, label %170, label %168, !dbg !2134

168:                                              ; preds = %155
  %169 = getelementptr inbounds i8, i8* %166, i32 1023, !dbg !2135
  store i8 0, i8* %169, align 1, !dbg !2136, !tbaa !1134
  br label %170, !dbg !2137

170:                                              ; preds = %155, %168
  %171 = phi i8* [ %169, %168 ], [ null, %155 ], !dbg !2138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2139
  %172 = call i8* @halide_string_to_string(i8* %166, i8* %171, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !2141
  %173 = sub i64 %165, %127, !dbg !2142
  %174 = uitofp i64 %173 to double, !dbg !2143
  %175 = fdiv double %174, 1.000000e+06, !dbg !2144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !2149
  call void @llvm.dbg.value(metadata double %175, metadata !2148, metadata !DIExpression()) #10, !dbg !2149
  %176 = call i8* @halide_double_to_string(i8* %172, i8* %171, double %175, i32 1) #8, !dbg !2151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2152
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2152
  %177 = call i8* @halide_string_to_string(i8* %176, i8* %171, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !2154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2155
  br i1 %167, label %178, label %179, !dbg !2157

178:                                              ; preds = %170
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2158
  br label %186, !dbg !2159

179:                                              ; preds = %170
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2160
  %180 = ptrtoint i8* %177 to i32, !dbg !2162
  %181 = ptrtoint i8* %166 to i32, !dbg !2162
  %182 = add i32 %180, 1, !dbg !2162
  %183 = sub i32 %182, %181, !dbg !2163
  %184 = sext i32 %183 to i64, !dbg !2164
  %185 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %166, i64 %184) #8, !dbg !2165
  call void @halide_print(i8* %0, i8* nonnull %166) #8, !dbg !2166
  br label %186

186:                                              ; preds = %179, %178
  call void @free(i8* %166) #8, !dbg !2167
  br label %187

187:                                              ; preds = %126, %186, %154, %108
  %188 = phi i32 [ %111, %108 ], [ -11, %126 ], [ -1, %154 ], [ 0, %186 ], !dbg !1875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2168, metadata !DIExpression()) #10, !dbg !2171
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8, !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %109) #10, !dbg !2175
  br label %189

189:                                              ; preds = %81, %187
  %190 = phi i32 [ %188, %187 ], [ 0, %81 ], !dbg !1875
  ret i32 %190, !dbg !2175
}

declare !dbg !2176 extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare !dbg !2179 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !2182 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2187, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2188, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2193
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2193
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !2195
  %4 = icmp eq i8* %3, null, !dbg !2196
  br i1 %4, label %7, label %5, !dbg !2197

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !2198
  store i8 0, i8* %6, align 1, !dbg !2199, !tbaa !1134
  br label %7, !dbg !2200

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !2201
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2202
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2202
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0)) #8, !dbg !2204
  %10 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !2205
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %10, metadata !1891, metadata !DIExpression()) #10, !dbg !2206
  %11 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %10) #8, !dbg !2208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2209
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2209
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !2211
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2212
  %14 = load i64, i64* %13, align 8, !dbg !2212, !tbaa !1199
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2213, metadata !DIExpression()) #10, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %14, metadata !2216, metadata !DIExpression()) #10, !dbg !2217
  %15 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %8, i64 %14, i32 1) #8, !dbg !2219
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2220
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2220
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %8, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2222
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2223
  br i1 %4, label %17, label %18, !dbg !2225

17:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2226
  br label %25, !dbg !2227

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2228
  %19 = ptrtoint i8* %16 to i32, !dbg !2230
  %20 = ptrtoint i8* %3 to i32, !dbg !2230
  %21 = add i32 %19, 1, !dbg !2230
  %22 = sub i32 %21, %20, !dbg !2231
  %23 = sext i32 %22 to i64, !dbg !2232
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #8, !dbg !2233
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !2234
  br label %25

25:                                               ; preds = %17, %18
  call void @free(i8* %3) #8, !dbg !2235
  %26 = load i64, i64* %13, align 8, !dbg !2236, !tbaa !1199
  %27 = icmp eq i64 %26, 0, !dbg !2238
  br i1 %27, label %69, label %28, !dbg !2239

28:                                               ; preds = %25
  %29 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %29, metadata !2189, metadata !DIExpression()), !dbg !2192
  %30 = load i64, i64* %13, align 8, !dbg !2241, !tbaa !1199
  %31 = trunc i64 %30 to i32, !dbg !2242
  %32 = inttoptr i32 %31 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2242
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::device_handle"* %32, metadata !2190, metadata !DIExpression()), !dbg !2192
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %32, i32 0, i32 1, !dbg !2243
  %34 = load i64, i64* %33, align 8, !dbg !2243, !tbaa !2116
  %35 = icmp eq i64 %34, 0, !dbg !2243
  br i1 %35, label %37, label %36, !dbg !2246

36:                                               ; preds = %28
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.58, i32 0, i32 0)) #8, !dbg !2247
  call void @abort() #8, !dbg !2247
  br label %37, !dbg !2247

37:                                               ; preds = %36, %28
  %38 = inttoptr i32 %31 to i8**, !dbg !2249
  %39 = load i8*, i8** %38, align 8, !dbg !2249, !tbaa !2112
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %39) #9, !dbg !2250
  %40 = inttoptr i32 %31 to i8*, !dbg !2251
  call void @free(i8* %40) #8, !dbg !2252
  store i64 0, i64* %13, align 8, !dbg !2253, !tbaa !1199
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2254
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !dbg !2254, !tbaa !2121
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %42, i32 0, i32 15, !dbg !2255
  %44 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 4, !dbg !2255, !tbaa !2123
  %45 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %44, i32 0, i32 1, !dbg !2256
  %46 = load void ()*, void ()** %45, align 4, !dbg !2256, !tbaa !2257
  call void %46() #8, !dbg !2258
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %41, align 8, !dbg !2259, !tbaa !2121
  %47 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %47, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2261
  %48 = call i8* @malloc(i32 1024) #8, !dbg !2263
  %49 = icmp eq i8* %48, null, !dbg !2264
  br i1 %49, label %52, label %50, !dbg !2265

50:                                               ; preds = %37
  %51 = getelementptr inbounds i8, i8* %48, i32 1023, !dbg !2266
  store i8 0, i8* %51, align 1, !dbg !2267, !tbaa !1134
  br label %52, !dbg !2268

52:                                               ; preds = %37, %50
  %53 = phi i8* [ %51, %50 ], [ null, %37 ], !dbg !2269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2270
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2270
  %54 = call i8* @halide_string_to_string(i8* %48, i8* %53, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !2272
  %55 = sub i64 %47, %29, !dbg !2273
  %56 = uitofp i64 %55 to double, !dbg !2274
  %57 = fdiv double %56, 1.000000e+06, !dbg !2275
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !2276
  call void @llvm.dbg.value(metadata double %57, metadata !2148, metadata !DIExpression()) #10, !dbg !2276
  %58 = call i8* @halide_double_to_string(i8* %54, i8* %53, double %57, i32 1) #8, !dbg !2278
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2279
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2279
  %59 = call i8* @halide_string_to_string(i8* %58, i8* %53, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !2281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2282
  br i1 %49, label %60, label %61, !dbg !2284

60:                                               ; preds = %52
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2285
  br label %68, !dbg !2286

61:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2287
  %62 = ptrtoint i8* %59 to i32, !dbg !2289
  %63 = ptrtoint i8* %48 to i32, !dbg !2289
  %64 = add i32 %62, 1, !dbg !2289
  %65 = sub i32 %64, %63, !dbg !2290
  %66 = sext i32 %65 to i64, !dbg !2291
  %67 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %48, i64 %66) #8, !dbg !2292
  call void @halide_print(i8* %0, i8* nonnull %48) #8, !dbg !2293
  br label %68

68:                                               ; preds = %61, %60
  call void @free(i8* %48) #8, !dbg !2294
  br label %69

69:                                               ; preds = %25, %68
  ret i32 0, !dbg !2295
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 !dbg !2296 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8** %1, metadata !2301, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %2, metadata !2302, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %3, metadata !2303, metadata !DIExpression()), !dbg !2308
  %7 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #10, !dbg !2309
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2304, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2037, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2311
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5, i8* %0, i1 zeroext true) #8, !dbg !2313
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 4, !dbg !2314
  %9 = load i32, i32* %8, align 4, !dbg !2314, !tbaa !1835
  %10 = icmp eq i32 %9, 0, !dbg !2316
  br i1 %10, label %11, label %46, !dbg !2317

11:                                               ; preds = %4
  %12 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %12, metadata !2305, metadata !DIExpression()), !dbg !2308
  %13 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6 to i8*, !dbg !2319
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #10, !dbg !2319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, metadata !2306, metadata !DIExpression()), !dbg !2308
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 4, !dbg !2320, !tbaa !1481
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 2, !dbg !2321
  %15 = load %struct.halide_metal_device*, %struct.halide_metal_device** %14, align 4, !dbg !2321, !tbaa !2066
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, metadata !2306, metadata !DIExpression(DW_OP_deref)), !dbg !2308
  %16 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i8** %1, %struct.halide_metal_device* %15, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 4 dereferenceable(4) %6, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcj, %struct.halide_metal_device* %15, i8* %2, i32 %3) #9, !dbg !2323
  br i1 %16, label %17, label %44, !dbg !2324

17:                                               ; preds = %11
  %18 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 4, !dbg !2325, !tbaa !1481
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %18, metadata !2306, metadata !DIExpression()), !dbg !2308
  %19 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %18, null, !dbg !2325
  br i1 %19, label %20, label %21, !dbg !2328

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.59, i32 0, i32 0)) #8, !dbg !2329
  call void @abort() #8, !dbg !2329
  br label %21, !dbg !2329

21:                                               ; preds = %20, %17
  %22 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %22, metadata !2307, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2332
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2332
  %23 = call i8* @malloc(i32 1024) #8, !dbg !2334
  %24 = icmp eq i8* %23, null, !dbg !2335
  br i1 %24, label %27, label %25, !dbg !2336

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, i8* %23, i32 1023, !dbg !2337
  store i8 0, i8* %26, align 1, !dbg !2338, !tbaa !1134
  br label %27, !dbg !2339

27:                                               ; preds = %21, %25
  %28 = phi i8* [ %26, %25 ], [ null, %21 ], !dbg !2340
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2341
  %29 = call i8* @halide_string_to_string(i8* %23, i8* %28, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !2343
  %30 = sub i64 %22, %12, !dbg !2344
  %31 = uitofp i64 %30 to double, !dbg !2345
  %32 = fdiv double %31, 1.000000e+06, !dbg !2346
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !2347
  call void @llvm.dbg.value(metadata double %32, metadata !2148, metadata !DIExpression()) #10, !dbg !2347
  %33 = call i8* @halide_double_to_string(i8* %29, i8* %28, double %32, i32 1) #8, !dbg !2349
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2350
  %34 = call i8* @halide_string_to_string(i8* %33, i8* %28, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2353
  br i1 %24, label %35, label %36, !dbg !2355

35:                                               ; preds = %27
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2356
  br label %43, !dbg !2357

36:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2358
  %37 = ptrtoint i8* %34 to i32, !dbg !2360
  %38 = ptrtoint i8* %23 to i32, !dbg !2360
  %39 = add i32 %37, 1, !dbg !2360
  %40 = sub i32 %39, %38, !dbg !2361
  %41 = sext i32 %40 to i64, !dbg !2362
  %42 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %41) #8, !dbg !2363
  call void @halide_print(i8* %0, i8* nonnull %23) #8, !dbg !2364
  br label %43

43:                                               ; preds = %36, %35
  call void @free(i8* %23) #8, !dbg !2365
  br label %44

44:                                               ; preds = %11, %43
  %45 = phi i32 [ 0, %43 ], [ -1, %11 ], !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #10, !dbg !2366
  br label %46

46:                                               ; preds = %4, %44
  %47 = phi i32 [ %45, %44 ], [ %9, %4 ], !dbg !2308
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2168, metadata !DIExpression()) #10, !dbg !2367
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5) #8, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #10, !dbg !2366
  ret i32 %47, !dbg !2366
}

; Function Attrs: nounwind
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %struct.halide_metal_device* %3, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 4 dereferenceable(4) %4, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i32)* %5, %struct.halide_metal_device* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 !dbg !2370 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", align 4
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !2385, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %1, metadata !2387, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8** %2, metadata !2388, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2389, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, metadata !2390, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i32)* %5, metadata !2391, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %6, metadata !2392, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %7, metadata !2393, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %8, metadata !2394, metadata !DIExpression()), !dbg !2411
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0, !dbg !2412
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2413, metadata !DIExpression()) #10, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %11, metadata !2416, metadata !DIExpression()) #10, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %11, metadata !2395, metadata !DIExpression()), !dbg !2411
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8, !dbg !2420
  %12 = bitcast i8** %2 to i32*, !dbg !2422
  call void @llvm.dbg.value(metadata i32* %12, metadata !2408, metadata !DIExpression()), !dbg !2411
  %13 = load i32, i32* %12, align 4, !dbg !2423, !tbaa !2425
  %14 = icmp eq i32 %13, 0, !dbg !2426
  br i1 %14, label %15, label %19, !dbg !2427

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4, !dbg !2428
  %17 = load i32, i32* %16, align 4, !dbg !2430, !tbaa !2431
  %18 = add i32 %17, 1, !dbg !2430
  store i32 %18, i32* %16, align 4, !dbg !2430, !tbaa !2431
  store i32 %17, i32* %12, align 4, !dbg !2434, !tbaa !2425
  br label %19, !dbg !2435

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ], !dbg !2436
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !2438, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2441, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %20, metadata !2442, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2443, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 1, metadata !2444, metadata !DIExpression()), !dbg !2451
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1, !dbg !2453
  %22 = load i32, i32* %21, align 4, !dbg !2453, !tbaa !2455
  %23 = icmp eq i32 %22, 0, !dbg !2456
  br i1 %23, label %58, label %24, !dbg !2457

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2458, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %20, metadata !2461, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %22, metadata !2462, metadata !DIExpression()), !dbg !2464
  %25 = ptrtoint %struct.halide_metal_device* %3 to i32, !dbg !2466
  %26 = add i32 %20, %25, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %26, metadata !2463, metadata !DIExpression()), !dbg !2464
  %27 = mul i32 %26, -1640531527, !dbg !2468
  %28 = sub i32 32, %22, !dbg !2471
  %29 = lshr i32 %27, %28, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %29, metadata !2445, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()), !dbg !2473
  %30 = shl nuw i32 1, %22, !dbg !2474
  %31 = icmp eq i32 %22, 31, !dbg !2475
  br i1 %31, label %58, label %32, !dbg !2476

32:                                               ; preds = %24
  %33 = add nsw i32 %30, -1
  %34 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %35 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %34, align 4, !tbaa !2477
  br label %38, !dbg !2476

36:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 %51, metadata !2446, metadata !DIExpression()), !dbg !2473
  %37 = icmp slt i32 %51, %30, !dbg !2475
  br i1 %37, label %38, label %58, !dbg !2476, !llvm.loop !2478

38:                                               ; preds = %36, %32
  %39 = phi i32 [ 0, %32 ], [ %51, %36 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !2446, metadata !DIExpression()), !dbg !2473
  %40 = add i32 %39, %29, !dbg !2480
  %41 = and i32 %40, %33, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %41, metadata !2448, metadata !DIExpression()), !dbg !2482
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 2, !dbg !2483
  %43 = load i32, i32* %42, align 4, !dbg !2483, !tbaa !2485
  %44 = icmp eq i32 %43, 0, !dbg !2487
  br i1 %44, label %58, label %45, !dbg !2488

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 0, !dbg !2489
  %47 = load %struct.halide_metal_device*, %struct.halide_metal_device** %46, align 4, !dbg !2489, !tbaa !2491
  %48 = icmp eq %struct.halide_metal_device* %47, %3, !dbg !2492
  %49 = icmp eq i32 %43, %20
  %50 = and i1 %49, %48, !dbg !2493
  %51 = add nuw nsw i32 %39, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %51, metadata !2446, metadata !DIExpression()), !dbg !2473
  br i1 %50, label %52, label %36, !dbg !2493

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 1, !dbg !2495
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 3, !dbg !2497
  %55 = load i32, i32* %54, align 4, !dbg !2500, !tbaa !2501
  %56 = add i32 %55, 1, !dbg !2500
  store i32 %56, i32* %54, align 4, !dbg !2500, !tbaa !2501
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %53, metadata !2409, metadata !DIExpression()), !dbg !2411
  %57 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %53, align 4, !dbg !2502, !tbaa !1481
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %57, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 4, !dbg !2504, !tbaa !1481
  br label %96, !dbg !2505

58:                                               ; preds = %38, %36, %24, %19
  %59 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %5(%struct.halide_metal_device* %6, i8* %7, i32 %8) #8, !dbg !2506
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2507
  %60 = tail call i8* @malloc(i32 1024) #8, !dbg !2509
  %61 = icmp eq i8* %60, null, !dbg !2510
  br i1 %61, label %64, label %62, !dbg !2511

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %60, i32 1023, !dbg !2512
  store i8 0, i8* %63, align 1, !dbg !2513, !tbaa !1134
  br label %64, !dbg !2514

64:                                               ; preds = %58, %62
  %65 = phi i8* [ %63, %62 ], [ null, %58 ], !dbg !2515
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2516
  %66 = tail call i8* @halide_string_to_string(i8* %60, i8* %65, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i32 0, i32 0)) #8, !dbg !2518
  %67 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59 to i8*, !dbg !2519
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %67, metadata !1891, metadata !DIExpression()) #10, !dbg !2520
  %68 = tail call i8* @halide_pointer_to_string(i8* %66, i8* %65, i8* %67) #8, !dbg !2522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2523
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2523
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %65, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0)) #8, !dbg !2525
  %70 = load i32, i32* %12, align 4, !dbg !2526, !tbaa !2425
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2527, metadata !DIExpression()) #10, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %70, metadata !2530, metadata !DIExpression()) #10, !dbg !2531
  %71 = zext i32 %70 to i64, !dbg !2533
  %72 = tail call i8* @halide_uint64_to_string(i8* %69, i8* %65, i64 %71, i32 1) #8, !dbg !2534
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2535
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2535
  %73 = tail call i8* @halide_string_to_string(i8* %72, i8* %65, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0)) #8, !dbg !2537
  %74 = bitcast %struct.halide_metal_device* %3 to i8*, !dbg !2538
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %74, metadata !1891, metadata !DIExpression()) #10, !dbg !2539
  %75 = tail call i8* @halide_pointer_to_string(i8* %73, i8* %65, i8* %74) #8, !dbg !2541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2542
  %76 = tail call i8* @halide_string_to_string(i8* %75, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2544
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2545
  br i1 %61, label %77, label %78, !dbg !2547

77:                                               ; preds = %64
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2548
  br label %85, !dbg !2549

78:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2550
  %79 = ptrtoint i8* %76 to i32, !dbg !2552
  %80 = ptrtoint i8* %60 to i32, !dbg !2552
  %81 = add i32 %79, 1, !dbg !2552
  %82 = sub i32 %81, %80, !dbg !2553
  %83 = sext i32 %82 to i64, !dbg !2554
  %84 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %60, i64 %83) #8, !dbg !2555
  tail call void @halide_print(i8* %1, i8* nonnull %60) #8, !dbg !2556
  br label %85

85:                                               ; preds = %77, %78
  call void @free(i8* %60) #8, !dbg !2557
  %86 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, null, !dbg !2558
  br i1 %86, label %96, label %87, !dbg !2560

87:                                               ; preds = %85
  %88 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10 to i8*, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %88) #10, !dbg !2561
  %89 = load i32, i32* %12, align 4, !dbg !2563, !tbaa !2425
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, metadata !2564, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %89, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()), !dbg !2571
  %90 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 0, !dbg !2573
  store %struct.halide_metal_device* %3, %struct.halide_metal_device** %90, align 4, !dbg !2573, !tbaa !2491
  %91 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 1, !dbg !2574
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %91, align 4, !dbg !2574, !tbaa !2575
  %92 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 2, !dbg !2576
  store i32 %89, i32* %92, align 4, !dbg !2576, !tbaa !2485
  %93 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 3, !dbg !2577
  store i32 1, i32* %93, align 4, !dbg !2577, !tbaa !2501
  %94 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %10) #9, !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %88) #10, !dbg !2579
  br i1 %94, label %95, label %96, !dbg !2580

95:                                               ; preds = %87
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 4, !dbg !2581, !tbaa !1481
  br label %96, !dbg !2582

96:                                               ; preds = %95, %85, %87, %52
  %97 = phi i1 [ true, %52 ], [ true, %95 ], [ false, %85 ], [ false, %87 ], !dbg !2411
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !2586
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8, !dbg !2588
  ret i1 %97, !dbg !2590
}

; Function Attrs: nounwind
define weak dso_local void @halide_metal_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !2591 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2596, metadata !DIExpression()), !dbg !2598
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #10, !dbg !2599
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2037, metadata !DIExpression()) #10, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !2601
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2601
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8, !dbg !2603
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4, !dbg !2604
  %6 = load i32, i32* %5, align 4, !dbg !2604, !tbaa !1835
  %7 = icmp eq i32 %6, 0, !dbg !2606
  br i1 %7, label %8, label %46, !dbg !2607

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 2, !dbg !2608
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** %9, align 4, !dbg !2608, !tbaa !2066
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2610, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !2613, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2614, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2615, metadata !DIExpression()) #10, !dbg !2619
  %11 = ptrtoint i8* %1 to i32, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %11, metadata !2617, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2438, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2441, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 %11, metadata !2442, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2443, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 -1, metadata !2444, metadata !DIExpression()) #10, !dbg !2622
  %12 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !dbg !2624, !tbaa !2455
  %13 = icmp eq i32 %12, 0, !dbg !2625
  br i1 %13, label %45, label %14, !dbg !2626

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2458, metadata !DIExpression()) #10, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %11, metadata !2461, metadata !DIExpression()) #10, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %12, metadata !2462, metadata !DIExpression()) #10, !dbg !2627
  %15 = ptrtoint %struct.halide_metal_device* %10 to i32, !dbg !2629
  %16 = add i32 %15, %11, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %16, metadata !2463, metadata !DIExpression()) #10, !dbg !2627
  %17 = mul i32 %16, -1640531527, !dbg !2631
  %18 = sub i32 32, %12, !dbg !2632
  %19 = lshr i32 %17, %18, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %19, metadata !2445, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()) #10, !dbg !2634
  %20 = shl nuw i32 1, %12, !dbg !2635
  %21 = icmp eq i32 %12, 31, !dbg !2636
  br i1 %21, label %45, label %22, !dbg !2637

22:                                               ; preds = %14
  %23 = add nsw i32 %20, -1
  %24 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !2477
  br label %27, !dbg !2637

25:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %40, metadata !2446, metadata !DIExpression()) #10, !dbg !2634
  %26 = icmp slt i32 %40, %20, !dbg !2636
  br i1 %26, label %27, label %45, !dbg !2637, !llvm.loop !2638

27:                                               ; preds = %25, %22
  %28 = phi i32 [ 0, %22 ], [ %40, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !2446, metadata !DIExpression()) #10, !dbg !2634
  %29 = add i32 %28, %19, !dbg !2640
  %30 = and i32 %29, %23, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %30, metadata !2448, metadata !DIExpression()) #10, !dbg !2642
  %31 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 2, !dbg !2643
  %32 = load i32, i32* %31, align 4, !dbg !2643, !tbaa !2485
  %33 = icmp eq i32 %32, 0, !dbg !2644
  br i1 %33, label %45, label %34, !dbg !2645

34:                                               ; preds = %27
  %35 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 0, !dbg !2646
  %36 = load %struct.halide_metal_device*, %struct.halide_metal_device** %35, align 4, !dbg !2646, !tbaa !2491
  %37 = icmp eq %struct.halide_metal_device* %36, %10, !dbg !2647
  %38 = icmp eq i32 %32, %11
  %39 = and i1 %38, %37, !dbg !2648
  %40 = add nuw nsw i32 %28, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %40, metadata !2446, metadata !DIExpression()) #10, !dbg !2634
  br i1 %39, label %41, label %25, !dbg !2648

41:                                               ; preds = %34
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 3, !dbg !2650
  %43 = load i32, i32* %42, align 4, !dbg !2651, !tbaa !2501
  %44 = add i32 %43, -1, !dbg !2651
  store i32 %44, i32* %42, align 4, !dbg !2651, !tbaa !2501
  call void @llvm.dbg.value(metadata i1 true, metadata !2618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2619
  br label %46, !dbg !2652

45:                                               ; preds = %27, %25, %14, %8
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.131, i32 0, i32 0)) #8, !dbg !2654
  call void @abort() #8, !dbg !2654
  br label %46, !dbg !2654

46:                                               ; preds = %45, %41, %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2168, metadata !DIExpression()) #10, !dbg !2657
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8, !dbg !2659
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #10, !dbg !2660
  ret void, !dbg !2660
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !2661 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* %0, metadata !2666, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2667, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0), metadata !2668, metadata !DIExpression()), !dbg !2676
  %3 = tail call i32 @strlen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !2677
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0), i32 %3) #9, !dbg !2678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4, metadata !2669, metadata !DIExpression()), !dbg !2676
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2679
  br i1 %5, label %16, label %6, !dbg !2680

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2681
  %8 = load i64, i64* %7, align 8, !dbg !2681, !tbaa !1199
  %9 = trunc i64 %8 to i32, !dbg !2682
  %10 = inttoptr i32 %9 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2682
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %10, i32 0, i32 0, !dbg !2683
  %12 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %11, align 8, !dbg !2683, !tbaa !2112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %12, metadata !2670, metadata !DIExpression()), !dbg !2684
  %13 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %12) #9, !dbg !2685
  br i1 %13, label %14, label %16, !dbg !2686

14:                                               ; preds = %6
  %15 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %15, metadata !2673, metadata !DIExpression()), !dbg !2688
  tail call void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %15, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %12) #9, !dbg !2689
  tail call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %15) #9, !dbg !2690
  br label %16, !dbg !2691

16:                                               ; preds = %6, %14, %2
  tail call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2692
  tail call void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2693
  ret void, !dbg !2694
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2695 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2698, metadata !DIExpression()), !dbg !2702
  %4 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %4, metadata !2699, metadata !DIExpression()), !dbg !2702
  %5 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2704
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #10, !dbg !2704
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2700, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2037, metadata !DIExpression()) #10, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !2706
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2706
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8, !dbg !2708
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4, !dbg !2709
  %7 = load i32, i32* %6, align 4, !dbg !2709, !tbaa !1835
  %8 = icmp eq i32 %7, 0, !dbg !2711
  br i1 %8, label %9, label %34, !dbg !2712

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3, !dbg !2713
  %11 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %10, align 4, !dbg !2713, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %11, %struct.halide_buffer_t* %1) #9, !dbg !2715
  %12 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %12, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2717
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2717
  %13 = call i8* @malloc(i32 1024) #8, !dbg !2719
  %14 = icmp eq i8* %13, null, !dbg !2720
  br i1 %14, label %17, label %15, !dbg !2721

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %13, i32 1023, !dbg !2722
  store i8 0, i8* %16, align 1, !dbg !2723, !tbaa !1134
  br label %17, !dbg !2724

17:                                               ; preds = %9, %15
  %18 = phi i8* [ %16, %15 ], [ null, %9 ], !dbg !2725
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2726
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !2728
  %20 = sub i64 %12, %4, !dbg !2729
  %21 = uitofp i64 %20 to double, !dbg !2730
  %22 = fdiv double %21, 1.000000e+06, !dbg !2731
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !2732
  call void @llvm.dbg.value(metadata double %22, metadata !2148, metadata !DIExpression()) #10, !dbg !2732
  %23 = call i8* @halide_double_to_string(i8* %19, i8* %18, double %22, i32 1) #8, !dbg !2734
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2735
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2735
  %24 = call i8* @halide_string_to_string(i8* %23, i8* %18, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !2737
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2738
  br i1 %14, label %25, label %26, !dbg !2740

25:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2741
  br label %33, !dbg !2742

26:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2743
  %27 = ptrtoint i8* %24 to i32, !dbg !2745
  %28 = ptrtoint i8* %13 to i32, !dbg !2745
  %29 = add i32 %27, 1, !dbg !2745
  %30 = sub i32 %29, %28, !dbg !2746
  %31 = sext i32 %30 to i64, !dbg !2747
  %32 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %31) #8, !dbg !2748
  call void @halide_print(i8* %0, i8* nonnull %13) #8, !dbg !2749
  br label %33

33:                                               ; preds = %26, %25
  call void @free(i8* %13) #8, !dbg !2750
  br label %34

34:                                               ; preds = %2, %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2168, metadata !DIExpression()) #10, !dbg !2751
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #10, !dbg !2754
  ret i32 %7, !dbg !2754
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_release(i8* %0) #4 !dbg !2755 {
  %2 = alloca %struct.halide_metal_device*, align 4
  %3 = alloca %struct.halide_metal_command_queue*, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2761
  %4 = bitcast %struct.halide_metal_device** %2 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10, !dbg !2762
  %5 = bitcast %struct.halide_metal_command_queue** %3 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.halide_metal_device** %2, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue** %3, metadata !2760, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  %6 = call i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** nonnull %2, %struct.halide_metal_command_queue** nonnull %3, i1 zeroext false) #9, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %6, metadata !2758, metadata !DIExpression()), !dbg !2761
  %7 = icmp eq i32 %6, 0, !dbg !2765
  br i1 %7, label %8, label %80, !dbg !2767

8:                                                ; preds = %1
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !dbg !2768, !tbaa !1481
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %9, metadata !2759, metadata !DIExpression()), !dbg !2761
  %10 = icmp eq %struct.halide_metal_device* %9, null, !dbg !2768
  br i1 %10, label %78, label %11, !dbg !2770

11:                                               ; preds = %8
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !dbg !2771, !tbaa !1481
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* null) #9, !dbg !2773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2774
  %13 = call i8* @malloc(i32 1024) #8, !dbg !2776
  %14 = icmp eq i8* %13, null, !dbg !2777
  br i1 %14, label %17, label %15, !dbg !2778

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i32 1023, !dbg !2779
  store i8 0, i8* %16, align 1, !dbg !2780, !tbaa !1134
  br label %17, !dbg !2781

17:                                               ; preds = %11, %15
  %18 = phi i8* [ %16, %15 ], [ null, %11 ], !dbg !2782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2783
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2783
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !2785
  %20 = bitcast %struct.halide_metal_device** %2 to i8**, !dbg !2786
  %21 = load i8*, i8** %20, align 4, !dbg !2786, !tbaa !1481
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* undef, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %21, metadata !1891, metadata !DIExpression()) #10, !dbg !2787
  %22 = call i8* @halide_pointer_to_string(i8* %19, i8* %18, i8* %21) #8, !dbg !2789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2790
  %23 = call i8* @halide_string_to_string(i8* %22, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2792
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2793
  br i1 %14, label %24, label %25, !dbg !2795

24:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2796
  br label %32, !dbg !2797

25:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2798
  %26 = ptrtoint i8* %23 to i32, !dbg !2800
  %27 = ptrtoint i8* %13 to i32, !dbg !2800
  %28 = add i32 %26, 1, !dbg !2800
  %29 = sub i32 %28, %27, !dbg !2801
  %30 = sext i32 %29 to i64, !dbg !2802
  %31 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %30) #8, !dbg !2803
  call void @halide_print(i8* %0, i8* nonnull %13) #8, !dbg !2804
  br label %32

32:                                               ; preds = %25, %24
  call void @free(i8* %13) #8, !dbg !2805
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !dbg !2806, !tbaa !1481
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %33, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2807, metadata !DIExpression()) #10, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()) #10, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %33, metadata !2817, metadata !DIExpression()) #10, !dbg !2820
  call void @llvm.dbg.value(metadata void (i8*)* @_ZN6Halide7Runtime8Internal17release_ns_objectEPv, metadata !2818, metadata !DIExpression()) #10, !dbg !2820
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2413, metadata !DIExpression()) #10, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !2416, metadata !DIExpression()) #10, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !2819, metadata !DIExpression()) #10, !dbg !2820
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !2824
  call void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i1 zeroext false, %struct.halide_metal_device* %33, void (i8*)* nonnull @_ZN6Halide7Runtime8Internal17release_ns_objectEPv) #8, !dbg !2825
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !2826
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !2828
  %34 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !dbg !2829, !tbaa !1481
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %34, metadata !2759, metadata !DIExpression()), !dbg !2761
  %35 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !2831, !tbaa !1481
  %36 = icmp eq %struct.halide_metal_device* %34, %35, !dbg !2832
  br i1 %36, label %37, label %78, !dbg !2833

37:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2834
  %38 = call i8* @malloc(i32 1024) #8, !dbg !2837
  %39 = icmp eq i8* %38, null, !dbg !2838
  br i1 %39, label %42, label %40, !dbg !2839

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, i8* %38, i32 1023, !dbg !2840
  store i8 0, i8* %41, align 1, !dbg !2841, !tbaa !1134
  br label %42, !dbg !2842

42:                                               ; preds = %37, %40
  %43 = phi i8* [ %41, %40 ], [ null, %37 ], !dbg !2843
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2844
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2844
  %44 = call i8* @halide_string_to_string(i8* %38, i8* %43, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !2846
  %45 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 4, !dbg !2847, !tbaa !1481
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %45, metadata !1891, metadata !DIExpression()) #10, !dbg !2848
  %46 = call i8* @halide_pointer_to_string(i8* %44, i8* %43, i8* %45) #8, !dbg !2850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2851
  %47 = call i8* @halide_string_to_string(i8* %46, i8* %43, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2853
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2854
  br i1 %39, label %48, label %49, !dbg !2856

48:                                               ; preds = %42
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2857
  br label %56, !dbg !2858

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2859
  %50 = ptrtoint i8* %47 to i32, !dbg !2861
  %51 = ptrtoint i8* %38 to i32, !dbg !2861
  %52 = add i32 %50, 1, !dbg !2861
  %53 = sub i32 %52, %51, !dbg !2862
  %54 = sext i32 %53 to i64, !dbg !2863
  %55 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %38, i64 %54) #8, !dbg !2864
  call void @halide_print(i8* %0, i8* nonnull %38) #8, !dbg !2865
  br label %56

56:                                               ; preds = %49, %48
  call void @free(i8* %38) #8, !dbg !2866
  %57 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 4, !dbg !2867, !tbaa !1481
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %57) #9, !dbg !2868
  store %struct.halide_metal_command_queue* null, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !dbg !2869, !tbaa !1481
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2870
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2870
  %58 = call i8* @malloc(i32 1024) #8, !dbg !2872
  %59 = icmp eq i8* %58, null, !dbg !2873
  br i1 %59, label %62, label %60, !dbg !2874

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %58, i32 1023, !dbg !2875
  store i8 0, i8* %61, align 1, !dbg !2876, !tbaa !1134
  br label %62, !dbg !2877

62:                                               ; preds = %56, %60
  %63 = phi i8* [ %61, %60 ], [ null, %56 ], !dbg !2878
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2879
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2879
  %64 = call i8* @halide_string_to_string(i8* %58, i8* %63, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !2881
  %65 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 4, !dbg !2882, !tbaa !1481
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %65, metadata !1891, metadata !DIExpression()) #10, !dbg !2883
  %66 = call i8* @halide_pointer_to_string(i8* %64, i8* %63, i8* %65) #8, !dbg !2885
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2886
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2886
  %67 = call i8* @halide_string_to_string(i8* %66, i8* %63, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !2888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2889
  br i1 %59, label %68, label %69, !dbg !2891

68:                                               ; preds = %62
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !2892
  br label %76, !dbg !2893

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2894
  %70 = ptrtoint i8* %67 to i32, !dbg !2896
  %71 = ptrtoint i8* %58 to i32, !dbg !2896
  %72 = add i32 %70, 1, !dbg !2896
  %73 = sub i32 %72, %71, !dbg !2897
  %74 = sext i32 %73 to i64, !dbg !2898
  %75 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %58, i64 %74) #8, !dbg !2899
  call void @halide_print(i8* %0, i8* nonnull %58) #8, !dbg !2900
  br label %76

76:                                               ; preds = %69, %68
  call void @free(i8* %58) #8, !dbg !2901
  %77 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 4, !dbg !2902, !tbaa !1481
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %77) #9, !dbg !2903
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !dbg !2904, !tbaa !1481
  br label %78, !dbg !2905

78:                                               ; preds = %32, %76, %8
  %79 = call i32 @halide_metal_release_context(i8* %0) #9, !dbg !2906
  br label %80, !dbg !2907

80:                                               ; preds = %1, %78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10, !dbg !2908
  ret i32 %6, !dbg !2908
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2909 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2911, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2912, metadata !DIExpression()), !dbg !2922
  %7 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %7, metadata !2913, metadata !DIExpression()), !dbg !2922
  %8 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #10, !dbg !2924
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2914, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2037, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2926
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8, !dbg !2928
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4, !dbg !2929
  %10 = load i32, i32* %9, align 4, !dbg !2929, !tbaa !1835
  %11 = icmp eq i32 %10, 0, !dbg !2931
  br i1 %11, label %12, label %165, !dbg !2932

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !2933
  %14 = load i8*, i8** %13, align 4, !dbg !2933, !tbaa !1190
  %15 = icmp eq i8* %14, null, !dbg !2933
  br i1 %15, label %20, label %16, !dbg !2933

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2933
  %18 = load i64, i64* %17, align 8, !dbg !2933, !tbaa !1199
  %19 = icmp eq i64 %18, 0, !dbg !2933
  br i1 %19, label %20, label %21, !dbg !2936

20:                                               ; preds = %16, %12
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.66, i32 0, i32 0)) #8, !dbg !2937
  call void @abort() #8, !dbg !2937
  br label %21, !dbg !2937

21:                                               ; preds = %20, %16
  %22 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %22) #10, !dbg !2939
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !2915, metadata !DIExpression()), !dbg !2940
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9, !dbg !2941
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 1, !dbg !2942
  %24 = load i64, i64* %23, align 8, !dbg !2942, !tbaa !1056
  %25 = trunc i64 %24 to i32, !dbg !2943
  %26 = inttoptr i32 %25 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2943
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %26, i32 0, i32 0, !dbg !2944
  %28 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %27, align 8, !dbg !2944, !tbaa !2112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28, metadata !2916, metadata !DIExpression()), !dbg !2922
  %29 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28) #9, !dbg !2945
  %30 = ptrtoint i8* %29 to i32, !dbg !2946
  %31 = zext i32 %30 to i64, !dbg !2946
  %32 = load i64, i64* %23, align 8, !dbg !2947, !tbaa !1056
  %33 = trunc i64 %32 to i32, !dbg !2948
  %34 = inttoptr i32 %33 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2948
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %34, i32 0, i32 1, !dbg !2949
  %36 = load i64, i64* %35, align 8, !dbg !2949, !tbaa !2116
  %37 = add i64 %36, %31, !dbg !2950
  store i64 %37, i64* %23, align 8, !dbg !2951, !tbaa !1056
  %38 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %38) #10, !dbg !2952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1095, metadata !DIExpression()) #10, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2953
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2953
  %39 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3, !dbg !2955
  store i8* %0, i8** %39, align 4, !dbg !2955, !tbaa !2956
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4, !dbg !2959
  store i8 1, i8* %40, align 4, !dbg !2959, !tbaa !2960
  %41 = call i8* @malloc(i32 1024) #8, !dbg !2961
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0, !dbg !2962
  store i8* %41, i8** %42, align 4, !dbg !2963, !tbaa !2964
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1, !dbg !2965
  %44 = icmp eq i8* %41, null, !dbg !2966
  br i1 %44, label %47, label %45, !dbg !2967

45:                                               ; preds = %21
  %46 = getelementptr inbounds i8, i8* %41, i32 1023, !dbg !2968
  store i8 0, i8* %46, align 1, !dbg !2969, !tbaa !1134
  br label %47, !dbg !2970

47:                                               ; preds = %21, %45
  %48 = phi i8* [ %46, %45 ], [ null, %21 ], !dbg !2971
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2, !dbg !2972
  store i8* %48, i8** %49, align 4, !dbg !2974
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2975
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2975
  %50 = call i8* @halide_string_to_string(i8* %41, i8* %48, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !2977
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2978
  %52 = load i64, i64* %51, align 8, !dbg !2978, !tbaa !1199
  %53 = trunc i64 %52 to i32, !dbg !2979
  %54 = inttoptr i32 %53 to i8*, !dbg !2979
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1888, metadata !DIExpression()) #10, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %54, metadata !1891, metadata !DIExpression()) #10, !dbg !2980
  %55 = call i8* @halide_pointer_to_string(i8* %50, i8* %48, i8* %54) #8, !dbg !2982
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2983
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2983
  %56 = call i8* @halide_string_to_string(i8* %55, i8* %48, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !2985
  store i8* %56, i8** %43, align 4, !dbg !2986, !tbaa !2987
  %57 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28 to i8*, !dbg !2988
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1888, metadata !DIExpression()) #10, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %57, metadata !1891, metadata !DIExpression()) #10, !dbg !2989
  %58 = call i8* @halide_pointer_to_string(i8* %56, i8* %48, i8* %57) #8, !dbg !2991
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2992
  %59 = call i8* @halide_string_to_string(i8* %58, i8* %48, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0)) #8, !dbg !2994
  %60 = load i8*, i8** %13, align 4, !dbg !2995, !tbaa !1190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1888, metadata !DIExpression()) #10, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %60, metadata !1891, metadata !DIExpression()) #10, !dbg !2996
  %61 = call i8* @halide_pointer_to_string(i8* %59, i8* %48, i8* %60) #8, !dbg !2998
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2999
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2999
  %62 = call i8* @halide_string_to_string(i8* %61, i8* %48, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !3001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1121, metadata !DIExpression()) #10, !dbg !3002
  br i1 %44, label %63, label %64, !dbg !3004

63:                                               ; preds = %47
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3005
  br label %73, !dbg !3006

64:                                               ; preds = %47
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3007
  %65 = ptrtoint i8* %62 to i32, !dbg !3009
  %66 = ptrtoint i8* %41 to i32, !dbg !3009
  %67 = add i32 %65, 1, !dbg !3009
  %68 = sub i32 %67, %66, !dbg !3010
  %69 = sext i32 %68 to i64, !dbg !3011
  %70 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %41, i64 %69) #8, !dbg !3012
  %71 = load i8*, i8** %39, align 4, !dbg !3013, !tbaa !2956
  %72 = load i8*, i8** %42, align 4, !dbg !3014, !tbaa !2964
  call void @halide_print(i8* %71, i8* %72) #8, !dbg !3015
  br label %73

73:                                               ; preds = %64, %63
  %74 = load i8, i8* %40, align 4, !dbg !3016, !tbaa !2960, !range !3017
  %75 = icmp eq i8 %74, 0, !dbg !3016
  br i1 %75, label %78, label %76, !dbg !3018

76:                                               ; preds = %73
  %77 = load i8*, i8** %42, align 4, !dbg !3019, !tbaa !2964
  call void @free(i8* %77) #8, !dbg !3020
  br label %78, !dbg !3021

78:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %38) #10, !dbg !2952
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9, !dbg !3022
  %79 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28) #9, !dbg !3023
  br i1 %79, label %80, label %140, !dbg !3024

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1918, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1923, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()), !dbg !3029
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !3030
  %82 = load i32, i32* %81, align 4, !dbg !3030, !tbaa !1234
  %83 = icmp sgt i32 %82, 0, !dbg !3031
  br i1 %83, label %87, label %84, !dbg !3032

84:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3033
  %85 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3035
  %86 = load i8, i8* %85, align 1, !dbg !3035, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1939, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !3038
  br label %125, !dbg !3039

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !1237
  br label %90, !dbg !3032

90:                                               ; preds = %102, %87
  %91 = phi i32 [ 0, %87 ], [ %104, %102 ]
  %92 = phi i32 [ 0, %87 ], [ %103, %102 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1927, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %92, metadata !1926, metadata !DIExpression()), !dbg !3027
  %93 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i32 %91, i32 2, !dbg !3040
  %94 = load i32, i32* %93, align 4, !dbg !3040, !tbaa !1245
  %95 = icmp sgt i32 %94, 0, !dbg !3041
  br i1 %95, label %96, label %102, !dbg !3042

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i32 %91, i32 1, !dbg !3043
  %98 = load i32, i32* %97, align 4, !dbg !3043, !tbaa !1309
  %99 = add nsw i32 %98, -1, !dbg !3044
  %100 = mul nsw i32 %99, %94, !dbg !3045
  %101 = add nsw i32 %100, %92, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %101, metadata !1926, metadata !DIExpression()), !dbg !3027
  br label %102, !dbg !3047

102:                                              ; preds = %96, %90
  %103 = phi i32 [ %101, %96 ], [ %92, %90 ], !dbg !3027
  call void @llvm.dbg.value(metadata i32 %103, metadata !1926, metadata !DIExpression()), !dbg !3027
  %104 = add nuw nsw i32 %91, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %104, metadata !1927, metadata !DIExpression()), !dbg !3029
  %105 = icmp slt i32 %104, %82, !dbg !3031
  br i1 %105, label %90, label %106, !dbg !3032, !llvm.loop !3049

106:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 %103, metadata !1926, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3027
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3033
  %107 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3035
  %108 = load i8, i8* %107, align 1, !dbg !3035, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1939, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !3038
  br label %109, !dbg !3039

109:                                              ; preds = %121, %106
  %110 = phi i32 [ 0, %106 ], [ %123, %121 ]
  %111 = phi i32 [ 0, %106 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i32 %110, metadata !1943, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 %111, metadata !1942, metadata !DIExpression()), !dbg !3036
  %112 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i32 %110, i32 2, !dbg !3051
  %113 = load i32, i32* %112, align 4, !dbg !3051, !tbaa !1245
  %114 = icmp slt i32 %113, 0, !dbg !3052
  br i1 %114, label %115, label %121, !dbg !3053

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i32 %110, i32 1, !dbg !3054
  %117 = load i32, i32* %116, align 4, !dbg !3054, !tbaa !1309
  %118 = add nsw i32 %117, -1, !dbg !3055
  %119 = mul nsw i32 %118, %113, !dbg !3056
  %120 = add nsw i32 %119, %111, !dbg !3057
  call void @llvm.dbg.value(metadata i32 %120, metadata !1942, metadata !DIExpression()), !dbg !3036
  br label %121, !dbg !3058

121:                                              ; preds = %115, %109
  %122 = phi i32 [ %120, %115 ], [ %111, %109 ], !dbg !3036
  call void @llvm.dbg.value(metadata i32 %122, metadata !1942, metadata !DIExpression()), !dbg !3036
  %123 = add nuw nsw i32 %110, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %123, metadata !1943, metadata !DIExpression()), !dbg !3038
  %124 = icmp slt i32 %123, %82, !dbg !3060
  br i1 %124, label %109, label %125, !dbg !3039, !llvm.loop !3061

125:                                              ; preds = %121, %84
  %126 = phi i8 [ %86, %84 ], [ %108, %121 ]
  %127 = phi i32 [ 0, %84 ], [ %103, %121 ]
  %128 = phi i32 [ 0, %84 ], [ %122, %121 ], !dbg !3036
  %129 = zext i8 %126 to i32, !dbg !3035
  %130 = add nuw nsw i32 %129, 7, !dbg !3063
  %131 = lshr i32 %130, 3, !dbg !3064
  %132 = add nsw i32 %127, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %132, metadata !1926, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3066
  %133 = sub i32 %132, %128, !dbg !3068
  %134 = mul i32 %133, %131, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %134, metadata !2917, metadata !DIExpression()), !dbg !3069
  %135 = icmp eq i32 %134, 0, !dbg !3070
  br i1 %135, label %136, label %137, !dbg !3073

136:                                              ; preds = %125
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !3074
  call void @abort() #8, !dbg !3074
  br label %137, !dbg !3074

137:                                              ; preds = %136, %125
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %134, metadata !2920, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3069
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %6, i32 0, i32 0, !dbg !3076
  store i32 0, i32* %138, align 4, !dbg !3076, !tbaa.struct !3077
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %6, i32 0, i32 1, !dbg !3076
  store i32 %134, i32* %139, align 4, !dbg !3076, !tbaa.struct !3078
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %6) #9, !dbg !3079
  br label %140, !dbg !3080

140:                                              ; preds = %137, %78
  %141 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3, !dbg !3081
  %142 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %141, align 4, !dbg !3081, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %142, %struct.halide_buffer_t* %1) #9, !dbg !3082
  %143 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %143, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3084
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3084
  %144 = call i8* @malloc(i32 1024) #8, !dbg !3086
  %145 = icmp eq i8* %144, null, !dbg !3087
  br i1 %145, label %148, label %146, !dbg !3088

146:                                              ; preds = %140
  %147 = getelementptr inbounds i8, i8* %144, i32 1023, !dbg !3089
  store i8 0, i8* %147, align 1, !dbg !3090, !tbaa !1134
  br label %148, !dbg !3091

148:                                              ; preds = %140, %146
  %149 = phi i8* [ %147, %146 ], [ null, %140 ], !dbg !3092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3093
  %150 = call i8* @halide_string_to_string(i8* %144, i8* %149, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !3095
  %151 = sub i64 %143, %7, !dbg !3096
  %152 = uitofp i64 %151 to double, !dbg !3097
  %153 = fdiv double %152, 1.000000e+06, !dbg !3098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata double %153, metadata !2148, metadata !DIExpression()) #10, !dbg !3099
  %154 = call i8* @halide_double_to_string(i8* %150, i8* %149, double %153, i32 1) #8, !dbg !3101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3102
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3102
  %155 = call i8* @halide_string_to_string(i8* %154, i8* %149, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !3104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3105
  br i1 %145, label %156, label %157, !dbg !3107

156:                                              ; preds = %148
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3108
  br label %164, !dbg !3109

157:                                              ; preds = %148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3110
  %158 = ptrtoint i8* %155 to i32, !dbg !3112
  %159 = ptrtoint i8* %144 to i32, !dbg !3112
  %160 = add i32 %158, 1, !dbg !3112
  %161 = sub i32 %160, %159, !dbg !3113
  %162 = sext i32 %161 to i64, !dbg !3114
  %163 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %144, i64 %162) #8, !dbg !3115
  call void @halide_print(i8* %0, i8* nonnull %144) #8, !dbg !3116
  br label %164

164:                                              ; preds = %157, %156
  call void @free(i8* %144) #8, !dbg !3117
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %22) #10, !dbg !3118
  br label %165

165:                                              ; preds = %2, %164
  %166 = phi i32 [ 0, %164 ], [ %10, %2 ], !dbg !2922
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2168, metadata !DIExpression()) #10, !dbg !3119
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8, !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #10, !dbg !3118
  ret i32 %166, !dbg !3118
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3122 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3124, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3125, metadata !DIExpression()), !dbg !3130
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %5, metadata !3126, metadata !DIExpression()), !dbg !3130
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #10, !dbg !3132
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !3127, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2037, metadata !DIExpression()) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3134
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8, !dbg !3136
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4, !dbg !3137
  %8 = load i32, i32* %7, align 4, !dbg !3137, !tbaa !1835
  %9 = icmp eq i32 %8, 0, !dbg !3139
  br i1 %9, label %10, label %67, !dbg !3140

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3, !dbg !3141
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %11, align 4, !dbg !3141, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* %1) #9, !dbg !3142
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !3143
  %14 = load i8*, i8** %13, align 4, !dbg !3143, !tbaa !1190
  %15 = icmp eq i8* %14, null, !dbg !3143
  br i1 %15, label %20, label %16, !dbg !3143

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3143
  %18 = load i64, i64* %17, align 8, !dbg !3143, !tbaa !1199
  %19 = icmp eq i64 %18, 0, !dbg !3143
  br i1 %19, label %20, label %21, !dbg !3146

20:                                               ; preds = %16, %10
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.72, i32 0, i32 0)) #8, !dbg !3147
  call void @abort() #8, !dbg !3147
  br label %21, !dbg !3147

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !3149
  %23 = load i32, i32* %22, align 4, !dbg !3149, !tbaa !1234
  %24 = icmp slt i32 %23, 17, !dbg !3149
  br i1 %24, label %28, label %25, !dbg !3152

25:                                               ; preds = %21
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !3153
  call void @abort() #8, !dbg !3153
  %26 = load i32, i32* %22, align 4, !dbg !3155, !tbaa !1234
  %27 = icmp sgt i32 %26, 16, !dbg !3157
  br i1 %27, label %67, label %28, !dbg !3158

28:                                               ; preds = %21, %25
  %29 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %29) #10, !dbg !3159
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !3128, metadata !DIExpression()), !dbg !3160
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9, !dbg !3161
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 0, !dbg !3162
  %31 = load i64, i64* %30, align 8, !dbg !3162, !tbaa !1050
  %32 = trunc i64 %31 to i32, !dbg !3163
  %33 = inttoptr i32 %32 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3163
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %33, i32 0, i32 0, !dbg !3164
  %35 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %34, align 8, !dbg !3164, !tbaa !2112
  %36 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %35) #9, !dbg !3165
  %37 = ptrtoint i8* %36 to i32, !dbg !3166
  %38 = zext i32 %37 to i64, !dbg !3166
  %39 = load i64, i64* %30, align 8, !dbg !3167, !tbaa !1050
  %40 = trunc i64 %39 to i32, !dbg !3168
  %41 = inttoptr i32 %40 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3168
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %41, i32 0, i32 1, !dbg !3169
  %43 = load i64, i64* %42, align 8, !dbg !3169, !tbaa !2116
  %44 = add i64 %43, %38, !dbg !3170
  store i64 %44, i64* %30, align 8, !dbg !3171, !tbaa !1050
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9, !dbg !3172
  %45 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %45, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3174
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3174
  %46 = call i8* @malloc(i32 1024) #8, !dbg !3176
  %47 = icmp eq i8* %46, null, !dbg !3177
  br i1 %47, label %50, label %48, !dbg !3178

48:                                               ; preds = %28
  %49 = getelementptr inbounds i8, i8* %46, i32 1023, !dbg !3179
  store i8 0, i8* %49, align 1, !dbg !3180, !tbaa !1134
  br label %50, !dbg !3181

50:                                               ; preds = %28, %48
  %51 = phi i8* [ %49, %48 ], [ null, %28 ], !dbg !3182
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3183
  %52 = call i8* @halide_string_to_string(i8* %46, i8* %51, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0)) #8, !dbg !3185
  %53 = sub i64 %45, %5, !dbg !3186
  %54 = uitofp i64 %53 to double, !dbg !3187
  %55 = fdiv double %54, 1.000000e+06, !dbg !3188
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !3189
  call void @llvm.dbg.value(metadata double %55, metadata !2148, metadata !DIExpression()) #10, !dbg !3189
  %56 = call i8* @halide_double_to_string(i8* %52, i8* %51, double %55, i32 1) #8, !dbg !3191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3192
  %57 = call i8* @halide_string_to_string(i8* %56, i8* %51, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !3194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3195
  br i1 %47, label %58, label %59, !dbg !3197

58:                                               ; preds = %50
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3198
  br label %66, !dbg !3199

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3200
  %60 = ptrtoint i8* %57 to i32, !dbg !3202
  %61 = ptrtoint i8* %46 to i32, !dbg !3202
  %62 = add i32 %60, 1, !dbg !3202
  %63 = sub i32 %62, %61, !dbg !3203
  %64 = sext i32 %63 to i64, !dbg !3204
  %65 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %46, i64 %64) #8, !dbg !3205
  call void @halide_print(i8* %0, i8* nonnull %46) #8, !dbg !3206
  br label %66

66:                                               ; preds = %59, %58
  call void @free(i8* %46) #8, !dbg !3207
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %29) #10, !dbg !3208
  br label %67

67:                                               ; preds = %25, %2, %66
  %68 = phi i32 [ 0, %66 ], [ %8, %2 ], [ -1, %25 ], !dbg !3130
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2168, metadata !DIExpression()) #10, !dbg !3209
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8, !dbg !3211
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #10, !dbg !3208
  ret i32 %68, !dbg !3208
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 !dbg !332 {
  %18 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %19 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 4
  %20 = alloca [4096 x i8], align 1
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %22 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !927, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !928, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !929, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %3, metadata !930, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %4, metadata !931, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %5, metadata !932, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %6, metadata !933, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %7, metadata !934, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %8, metadata !935, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %9, metadata !936, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32* %10, metadata !937, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8** %11, metadata !938, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %12, metadata !939, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %13, metadata !940, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata float* %14, metadata !941, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %15, metadata !942, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %16, metadata !943, metadata !DIExpression()), !dbg !3212
  %23 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %23, metadata !944, metadata !DIExpression()), !dbg !3212
  %24 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18 to i8*, !dbg !3214
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %24) #10, !dbg !3214
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !945, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !2037, metadata !DIExpression()) #10, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !3216
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3216
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %18, i8* %0, i1 zeroext true) #8, !dbg !3218
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 4, !dbg !3219
  %26 = load i32, i32* %25, align 4, !dbg !3219, !tbaa !1835
  %27 = icmp eq i32 %26, 0, !dbg !3221
  br i1 %27, label %28, label %508, !dbg !3222

28:                                               ; preds = %17
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 3, !dbg !3223
  %30 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %29, align 4, !dbg !3223, !tbaa !2714
  %31 = call i32 @strlen(i8* %2) #8, !dbg !3224
  %32 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %30, i8* %2, i32 %31) #9, !dbg !3225
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %32, metadata !962, metadata !DIExpression()), !dbg !3212
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %32, null, !dbg !3226
  br i1 %33, label %34, label %49, !dbg !3228

34:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3229
  %35 = call i8* @malloc(i32 1024) #8, !dbg !3232
  %36 = icmp eq i8* %35, null, !dbg !3233
  br i1 %36, label %37, label %39, !dbg !3234

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3235
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3235
  %38 = call i8* @halide_string_to_string(i8* %35, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !3237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3238
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3240
  br label %48, !dbg !3241

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, i8* %35, i32 1023, !dbg !3242
  store i8 0, i8* %40, align 1, !dbg !3243, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3235
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3235
  %41 = call i8* @halide_string_to_string(i8* nonnull %35, i8* nonnull %40, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !3237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3244
  %42 = ptrtoint i8* %41 to i32, !dbg !3246
  %43 = ptrtoint i8* %35 to i32, !dbg !3246
  %44 = add i32 %42, 1, !dbg !3246
  %45 = sub i32 %44, %43, !dbg !3247
  %46 = sext i32 %45 to i64, !dbg !3248
  %47 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %46) #8, !dbg !3249
  call void @halide_error(i8* %0, i8* nonnull %35) #8, !dbg !3250
  br label %48

48:                                               ; preds = %39, %37
  call void @free(i8* %35) #8, !dbg !3251
  br label %508, !dbg !3252

49:                                               ; preds = %28
  %50 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32) #9, !dbg !3253
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %50, metadata !963, metadata !DIExpression()), !dbg !3212
  %51 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %50, null, !dbg !3254
  br i1 %51, label %52, label %67, !dbg !3256

52:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3257
  %53 = call i8* @malloc(i32 1024) #8, !dbg !3260
  %54 = icmp eq i8* %53, null, !dbg !3261
  br i1 %54, label %55, label %57, !dbg !3262

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3263
  %56 = call i8* @halide_string_to_string(i8* %53, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !3265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3266
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3268
  br label %66, !dbg !3269

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, i8* %53, i32 1023, !dbg !3270
  store i8 0, i8* %58, align 1, !dbg !3271, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3263
  %59 = call i8* @halide_string_to_string(i8* nonnull %53, i8* nonnull %58, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !3265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3272
  %60 = ptrtoint i8* %59 to i32, !dbg !3274
  %61 = ptrtoint i8* %53 to i32, !dbg !3274
  %62 = add i32 %60, 1, !dbg !3274
  %63 = sub i32 %62, %61, !dbg !3275
  %64 = sext i32 %63 to i64, !dbg !3276
  %65 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %53, i64 %64) #8, !dbg !3277
  call void @halide_error(i8* %0, i8* nonnull %53) #8, !dbg !3278
  br label %66

66:                                               ; preds = %57, %55
  call void @free(i8* %53) #8, !dbg !3279
  br label %508, !dbg !3280

67:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, metadata !964, metadata !DIExpression()), !dbg !3212
  %68 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 2, !dbg !3281
  %69 = load %struct.halide_metal_device*, %struct.halide_metal_device** %68, align 4, !dbg !3281, !tbaa !2066
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !3282, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %69, metadata !3285, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** undef, metadata !3287, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2413, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !2416, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !3288, metadata !DIExpression()) #10, !dbg !3291
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !3295
  %70 = ptrtoint i8* %1 to i32, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %70, metadata !3289, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2438, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %69, metadata !2441, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %70, metadata !2442, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2443, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #10, !dbg !3297
  %71 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !dbg !3300, !tbaa !2455
  %72 = icmp eq i32 %71, 0, !dbg !3301
  br i1 %72, label %100, label %73, !dbg !3302

73:                                               ; preds = %67
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %69, metadata !2458, metadata !DIExpression()) #10, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %70, metadata !2461, metadata !DIExpression()) #10, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %71, metadata !2462, metadata !DIExpression()) #10, !dbg !3303
  %74 = ptrtoint %struct.halide_metal_device* %69 to i32, !dbg !3305
  %75 = add i32 %74, %70, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %75, metadata !2463, metadata !DIExpression()) #10, !dbg !3303
  %76 = mul i32 %75, -1640531527, !dbg !3307
  %77 = sub i32 32, %71, !dbg !3308
  %78 = lshr i32 %76, %77, !dbg !3309
  call void @llvm.dbg.value(metadata i32 %78, metadata !2445, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()) #10, !dbg !3310
  %79 = shl nuw i32 1, %71, !dbg !3311
  %80 = icmp eq i32 %71, 31, !dbg !3312
  br i1 %80, label %100, label %81, !dbg !3313

81:                                               ; preds = %73
  %82 = add nsw i32 %79, -1
  %83 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !2477
  br label %86, !dbg !3313

84:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32 %99, metadata !2446, metadata !DIExpression()) #10, !dbg !3310
  %85 = icmp slt i32 %99, %79, !dbg !3312
  br i1 %85, label %86, label %100, !dbg !3313, !llvm.loop !3314

86:                                               ; preds = %84, %81
  %87 = phi i32 [ 0, %81 ], [ %99, %84 ]
  call void @llvm.dbg.value(metadata i32 %87, metadata !2446, metadata !DIExpression()) #10, !dbg !3310
  %88 = add i32 %87, %78, !dbg !3316
  %89 = and i32 %88, %82, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %89, metadata !2448, metadata !DIExpression()) #10, !dbg !3318
  %90 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %83, i32 %89, i32 2, !dbg !3319
  %91 = load i32, i32* %90, align 4, !dbg !3319, !tbaa !2485
  %92 = icmp eq i32 %91, 0, !dbg !3320
  br i1 %92, label %100, label %93, !dbg !3321

93:                                               ; preds = %86
  %94 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %83, i32 %89, i32 0, !dbg !3322
  %95 = load %struct.halide_metal_device*, %struct.halide_metal_device** %94, align 4, !dbg !3322, !tbaa !2491
  %96 = icmp eq %struct.halide_metal_device* %95, %69, !dbg !3323
  %97 = icmp eq i32 %91, %70
  %98 = and i1 %97, %96, !dbg !3324
  %99 = add nuw nsw i32 %87, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %99, metadata !2446, metadata !DIExpression()) #10, !dbg !3310
  br i1 %98, label %101, label %84, !dbg !3324

100:                                              ; preds = %84, %86, %67, %73
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !3326
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !3328
  call void @llvm.dbg.value(metadata i1 true, metadata !965, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3212
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %103, metadata !964, metadata !DIExpression()), !dbg !3212
  br label %105, !dbg !3329

101:                                              ; preds = %93
  %102 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %83, i32 %89, i32 1, !dbg !3332
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %102, metadata !3290, metadata !DIExpression()) #10, !dbg !3291
  %103 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %102, align 4, !dbg !3333, !tbaa !1481
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !3326
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !3328
  call void @llvm.dbg.value(metadata i1 true, metadata !965, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3212
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %103, metadata !964, metadata !DIExpression()), !dbg !3212
  %104 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %103, null, !dbg !3329
  br i1 %104, label %105, label %106, !dbg !3329

105:                                              ; preds = %100, %101
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.77, i32 0, i32 0)) #8, !dbg !3335
  call void @abort() #8, !dbg !3335
  br label %106, !dbg !3335

106:                                              ; preds = %101, %105
  %107 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_library"* [ %103, %101 ], [ null, %105 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %103, metadata !964, metadata !DIExpression()), !dbg !3212
  %108 = call i32 @strlen(i8* %2) #8, !dbg !3337
  %109 = call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcj(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %107, i8* %2, i32 %108) #9, !dbg !3338
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %109, metadata !966, metadata !DIExpression()), !dbg !3212
  %110 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %109, null, !dbg !3339
  br i1 %110, label %111, label %136, !dbg !3341

111:                                              ; preds = %106
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3342
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3342
  %112 = call i8* @malloc(i32 1024) #8, !dbg !3345
  %113 = icmp eq i8* %112, null, !dbg !3346
  br i1 %113, label %116, label %114, !dbg !3347

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %112, i32 1023, !dbg !3348
  store i8 0, i8* %115, align 1, !dbg !3349, !tbaa !1134
  br label %116, !dbg !3350

116:                                              ; preds = %111, %114
  %117 = phi i8* [ %115, %114 ], [ null, %111 ], !dbg !3351
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3352
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3352
  %118 = call i8* @halide_string_to_string(i8* %112, i8* %117, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !3354
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %2, metadata !1697, metadata !DIExpression()) #10, !dbg !3355
  %119 = icmp eq i8* %2, null, !dbg !3357
  br i1 %119, label %120, label %122, !dbg !3358

120:                                              ; preds = %116
  %121 = call i8* @halide_string_to_string(i8* %118, i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0)) #8, !dbg !3359
  br label %124, !dbg !3361

122:                                              ; preds = %116
  %123 = call i8* @halide_string_to_string(i8* %118, i8* %117, i8* nonnull %2) #8, !dbg !3362
  br label %124

124:                                              ; preds = %120, %122
  %125 = phi i8* [ %123, %122 ], [ %121, %120 ], !dbg !3363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3364
  %126 = call i8* @halide_string_to_string(i8* %125, i8* %117, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !3366
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3367
  br i1 %113, label %127, label %128, !dbg !3369

127:                                              ; preds = %124
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3370
  br label %135, !dbg !3371

128:                                              ; preds = %124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3372
  %129 = ptrtoint i8* %126 to i32, !dbg !3374
  %130 = ptrtoint i8* %112 to i32, !dbg !3374
  %131 = add i32 %129, 1, !dbg !3374
  %132 = sub i32 %131, %130, !dbg !3375
  %133 = sext i32 %132 to i64, !dbg !3376
  %134 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %112, i64 %133) #8, !dbg !3377
  call void @halide_error(i8* %0, i8* nonnull %112) #8, !dbg !3378
  br label %135

135:                                              ; preds = %128, %127
  call void @free(i8* %112) #8, !dbg !3379
  br label %508, !dbg !3380

136:                                              ; preds = %106
  %137 = load %struct.halide_metal_device*, %struct.halide_metal_device** %68, align 4, !dbg !3381, !tbaa !2066
  %138 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %137, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* nonnull %109) #9, !dbg !3382
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %138, metadata !967, metadata !DIExpression()), !dbg !3212
  %139 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %138, null, !dbg !3383
  br i1 %139, label %140, label %155, !dbg !3385

140:                                              ; preds = %136
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3386
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3386
  %141 = call i8* @malloc(i32 1024) #8, !dbg !3389
  %142 = icmp eq i8* %141, null, !dbg !3390
  br i1 %142, label %143, label %145, !dbg !3391

143:                                              ; preds = %140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3392
  %144 = call i8* @halide_string_to_string(i8* %141, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !3394
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3395
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3397
  br label %154, !dbg !3398

145:                                              ; preds = %140
  %146 = getelementptr inbounds i8, i8* %141, i32 1023, !dbg !3399
  store i8 0, i8* %146, align 1, !dbg !3400, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3392
  %147 = call i8* @halide_string_to_string(i8* nonnull %141, i8* nonnull %146, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !3394
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3395
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3401
  %148 = ptrtoint i8* %147 to i32, !dbg !3403
  %149 = ptrtoint i8* %141 to i32, !dbg !3403
  %150 = add i32 %148, 1, !dbg !3403
  %151 = sub i32 %150, %149, !dbg !3404
  %152 = sext i32 %151 to i64, !dbg !3405
  %153 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %141, i64 %152) #8, !dbg !3406
  call void @halide_error(i8* %0, i8* nonnull %141) #8, !dbg !3407
  br label %154

154:                                              ; preds = %145, %143
  call void @free(i8* %141) #8, !dbg !3408
  br label %508, !dbg !3409

155:                                              ; preds = %136
  %156 = call i32 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %138) #9, !dbg !3410
  %157 = zext i32 %156 to i64, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %157, metadata !968, metadata !DIExpression()), !dbg !3212
  %158 = mul nsw i32 %7, %6, !dbg !3411
  %159 = mul nsw i32 %158, %8, !dbg !3413
  %160 = sext i32 %159 to i64, !dbg !3414
  %161 = icmp slt i64 %157, %160, !dbg !3415
  br i1 %161, label %162, label %206, !dbg !3416

162:                                              ; preds = %155
  %163 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %163) #10, !dbg !3417
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1683, metadata !DIExpression()) #10, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3419
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3419
  %164 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i32 0, i32 3, !dbg !3421
  store i8* %0, i8** %164, align 4, !dbg !3421, !tbaa !3422
  %165 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i32 0, i32 4, !dbg !3424
  store i8 1, i8* %165, align 4, !dbg !3424, !tbaa !3425
  %166 = call i8* @malloc(i32 1024) #8, !dbg !3426
  %167 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i32 0, i32 0, !dbg !3427
  store i8* %166, i8** %167, align 4, !dbg !3428, !tbaa !3429
  %168 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i32 0, i32 1, !dbg !3430
  %169 = icmp eq i8* %166, null, !dbg !3431
  br i1 %169, label %172, label %170, !dbg !3432

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8, i8* %166, i32 1023, !dbg !3433
  store i8 0, i8* %171, align 1, !dbg !3434, !tbaa !1134
  br label %172, !dbg !3435

172:                                              ; preds = %162, %170
  %173 = phi i8* [ %171, %170 ], [ null, %162 ], !dbg !3436
  %174 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i32 0, i32 2, !dbg !3437
  store i8* %173, i8** %174, align 4, !dbg !3439
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3440
  %175 = call i8* @halide_string_to_string(i8* %166, i8* %173, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0)) #8, !dbg !3442
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3443, metadata !DIExpression()) #10, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %6, metadata !3446, metadata !DIExpression()) #10, !dbg !3447
  %176 = sext i32 %6 to i64, !dbg !3449
  %177 = call i8* @halide_int64_to_string(i8* %175, i8* %173, i64 %176, i32 1) #8, !dbg !3450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3451
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3451
  %178 = call i8* @halide_string_to_string(i8* %177, i8* %173, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !3453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3443, metadata !DIExpression()) #10, !dbg !3454
  call void @llvm.dbg.value(metadata i32 %7, metadata !3446, metadata !DIExpression()) #10, !dbg !3454
  %179 = sext i32 %7 to i64, !dbg !3456
  %180 = call i8* @halide_int64_to_string(i8* %178, i8* %173, i64 %179, i32 1) #8, !dbg !3457
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3458
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3458
  %181 = call i8* @halide_string_to_string(i8* %180, i8* %173, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !3460
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3443, metadata !DIExpression()) #10, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %8, metadata !3446, metadata !DIExpression()) #10, !dbg !3461
  %182 = sext i32 %8 to i64, !dbg !3463
  %183 = call i8* @halide_int64_to_string(i8* %181, i8* %173, i64 %182, i32 1) #8, !dbg !3464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3465
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3465
  %184 = call i8* @halide_string_to_string(i8* %183, i8* %173, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !3467
  store i8* %184, i8** %168, align 4, !dbg !3468, !tbaa !3469
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3443, metadata !DIExpression()) #10, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %159, metadata !3446, metadata !DIExpression()) #10, !dbg !3470
  %185 = call i8* @halide_int64_to_string(i8* %184, i8* %173, i64 %160, i32 1) #8, !dbg !3472
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3473
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3473
  %186 = call i8* @halide_string_to_string(i8* %185, i8* %173, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !3475
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !2086, metadata !DIExpression()) #10, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %157, metadata !2089, metadata !DIExpression()) #10, !dbg !3476
  %187 = call i8* @halide_int64_to_string(i8* %186, i8* %173, i64 %157, i32 1) #8, !dbg !3478
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1694, metadata !DIExpression()) #10, !dbg !3479
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3479
  %188 = call i8* @halide_string_to_string(i8* %187, i8* %173, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !3481
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1703, metadata !DIExpression()) #10, !dbg !3482
  br i1 %169, label %189, label %190, !dbg !3484

189:                                              ; preds = %172
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3485
  br label %199, !dbg !3486

190:                                              ; preds = %172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3487
  %191 = ptrtoint i8* %188 to i32, !dbg !3489
  %192 = ptrtoint i8* %166 to i32, !dbg !3489
  %193 = add i32 %191, 1, !dbg !3489
  %194 = sub i32 %193, %192, !dbg !3490
  %195 = sext i32 %194 to i64, !dbg !3491
  %196 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %166, i64 %195) #8, !dbg !3492
  %197 = load i8*, i8** %164, align 4, !dbg !3493, !tbaa !3422
  %198 = load i8*, i8** %167, align 4, !dbg !3494, !tbaa !3429
  call void @halide_error(i8* %197, i8* %198) #8, !dbg !3495
  br label %199

199:                                              ; preds = %190, %189
  %200 = load i8, i8* %165, align 4, !dbg !3496, !tbaa !3425, !range !3017
  %201 = icmp eq i8 %200, 0, !dbg !3496
  br i1 %201, label %204, label %202, !dbg !3497

202:                                              ; preds = %199
  %203 = load i8*, i8** %167, align 4, !dbg !3498, !tbaa !3429
  call void @free(i8* %203) #8, !dbg !3499
  br label %204, !dbg !3500

204:                                              ; preds = %199, %202
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %163) #10, !dbg !3417
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50) #9, !dbg !3501
  %205 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %138 to i8*, !dbg !3502
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %205) #9, !dbg !3503
  br label %508, !dbg !3504

206:                                              ; preds = %155
  call void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %138) #9, !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !969, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 0, metadata !970, metadata !DIExpression()), !dbg !3506
  %207 = load i32, i32* %10, align 4, !dbg !3507, !tbaa !2425
  %208 = icmp eq i32 %207, 0, !dbg !3509
  br i1 %208, label %379, label %211, !dbg !3510

209:                                              ; preds = %231
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !3212
  %210 = icmp eq i32 %232, 0, !dbg !3511
  br i1 %210, label %375, label %237, !dbg !3512

211:                                              ; preds = %206, %231
  %212 = phi i32 [ %235, %231 ], [ %207, %206 ]
  %213 = phi i32* [ %234, %231 ], [ %10, %206 ]
  %214 = phi i32 [ %233, %231 ], [ 0, %206 ]
  %215 = phi i32 [ %232, %231 ], [ 0, %206 ]
  call void @llvm.dbg.value(metadata i32 %214, metadata !970, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %215, metadata !969, metadata !DIExpression()), !dbg !3212
  %216 = getelementptr inbounds i8, i8* %12, i32 %214, !dbg !3513
  %217 = load i8, i8* %216, align 1, !dbg !3513, !tbaa !1134
  %218 = icmp eq i8 %217, 0, !dbg !3513
  br i1 %218, label %219, label %231, !dbg !3516

219:                                              ; preds = %211
  %220 = call i32 @llvm.ctpop.i32(i32 %212), !dbg !3517, !range !3521
  %221 = icmp ult i32 %220, 2, !dbg !3517
  br i1 %221, label %224, label %222, !dbg !3522

222:                                              ; preds = %219
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !3523
  call void @abort() #8, !dbg !3523
  %223 = load i32, i32* %213, align 4, !dbg !3525, !tbaa !2425
  br label %224, !dbg !3523

224:                                              ; preds = %222, %219
  %225 = phi i32 [ %223, %222 ], [ %212, %219 ], !dbg !3525
  %226 = add i32 %215, -1, !dbg !3526
  %227 = add i32 %226, %225, !dbg !3527
  %228 = sub i32 0, %225, !dbg !3528
  %229 = and i32 %227, %228, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %229, metadata !969, metadata !DIExpression()), !dbg !3212
  %230 = add i32 %229, %225, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %230, metadata !969, metadata !DIExpression()), !dbg !3212
  br label %231, !dbg !3531

231:                                              ; preds = %211, %224
  %232 = phi i32 [ %215, %211 ], [ %230, %224 ], !dbg !3212
  call void @llvm.dbg.value(metadata i32 %232, metadata !969, metadata !DIExpression()), !dbg !3212
  %233 = add i32 %214, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %233, metadata !970, metadata !DIExpression()), !dbg !3506
  %234 = getelementptr inbounds i32, i32* %10, i32 %233, !dbg !3507
  %235 = load i32, i32* %234, align 4, !dbg !3507, !tbaa !2425
  %236 = icmp eq i32 %235, 0, !dbg !3509
  br i1 %236, label %209, label %211, !dbg !3510, !llvm.loop !3533

237:                                              ; preds = %209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* null, metadata !973, metadata !DIExpression()), !dbg !3535
  %238 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !3536
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %238) #10, !dbg !3536
  call void @llvm.dbg.declare(metadata [4096 x i8]* %20, metadata !976, metadata !DIExpression()), !dbg !3537
  %239 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 4, !dbg !3538, !tbaa !1481
  %240 = load %struct.halide_metal_device*, %struct.halide_metal_device** %68, align 4, !dbg !3540, !tbaa !2066
  %241 = icmp eq %struct.halide_metal_device* %239, %240, !dbg !3541
  br i1 %241, label %261, label %242, !dbg !3542

242:                                              ; preds = %237
  %243 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50) #9, !dbg !3543
  %244 = zext i1 %243 to i8, !dbg !3545
  store i8 %244, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1, !dbg !3545, !tbaa !3546
  %245 = load %struct.halide_metal_device*, %struct.halide_metal_device** %68, align 4, !dbg !3547, !tbaa !2066
  store %struct.halide_metal_device* %245, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 4, !dbg !3548, !tbaa !1481
  br i1 %243, label %246, label %261, !dbg !3549

246:                                              ; preds = %242
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3550
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3550
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3550
  %247 = call i8* @malloc(i32 1024) #8, !dbg !3554
  %248 = icmp eq i8* %247, null, !dbg !3555
  br i1 %248, label %249, label %251, !dbg !3556

249:                                              ; preds = %246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3557
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3557
  %250 = call i8* @halide_string_to_string(i8* %247, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !3559
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3560
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3562
  br label %260, !dbg !3563

251:                                              ; preds = %246
  %252 = getelementptr inbounds i8, i8* %247, i32 1023, !dbg !3564
  store i8 0, i8* %252, align 1, !dbg !3565, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3557
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3557
  %253 = call i8* @halide_string_to_string(i8* nonnull %247, i8* nonnull %252, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !3559
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3560
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3566
  %254 = ptrtoint i8* %253 to i32, !dbg !3568
  %255 = ptrtoint i8* %247 to i32, !dbg !3568
  %256 = add i32 %254, 1, !dbg !3568
  %257 = sub i32 %256, %255, !dbg !3569
  %258 = sext i32 %257 to i64, !dbg !3570
  %259 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %247, i64 %258) #8, !dbg !3571
  call void @halide_print(i8* %0, i8* nonnull %247) #8, !dbg !3572
  br label %260

260:                                              ; preds = %251, %249
  call void @free(i8* %247) #8, !dbg !3573
  br label %261, !dbg !3574

261:                                              ; preds = %242, %260, %237
  %262 = add i32 %232, 3, !dbg !3575
  %263 = and i32 %262, -4, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %263, metadata !981, metadata !DIExpression()), !dbg !3535
  %264 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*, !dbg !3577
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %264) #10, !dbg !3577
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1095, metadata !DIExpression()) #10, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3578
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3578
  %265 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 3, !dbg !3580
  store i8* %0, i8** %265, align 4, !dbg !3580, !tbaa !2956
  %266 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 4, !dbg !3581
  store i8 1, i8* %266, align 4, !dbg !3581, !tbaa !2960
  %267 = call i8* @malloc(i32 1024) #8, !dbg !3582
  %268 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 0, !dbg !3583
  store i8* %267, i8** %268, align 4, !dbg !3584, !tbaa !2964
  %269 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 1, !dbg !3585
  %270 = icmp eq i8* %267, null, !dbg !3586
  br i1 %270, label %273, label %271, !dbg !3587

271:                                              ; preds = %261
  %272 = getelementptr inbounds i8, i8* %267, i32 1023, !dbg !3588
  store i8 0, i8* %272, align 1, !dbg !3589, !tbaa !1134
  br label %273, !dbg !3590

273:                                              ; preds = %261, %271
  %274 = phi i8* [ %272, %271 ], [ null, %261 ], !dbg !3591
  %275 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 2, !dbg !3592
  store i8* %274, i8** %275, align 4, !dbg !3593
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3594
  %276 = call i8* @halide_string_to_string(i8* %267, i8* %274, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0)) #8, !dbg !3596
  store i8* %276, i8** %269, align 4, !dbg !3597, !tbaa !2987
  %277 = zext i32 %232 to i64, !dbg !3598
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !2213, metadata !DIExpression()) #10, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %277, metadata !2216, metadata !DIExpression()) #10, !dbg !3599
  %278 = call i8* @halide_uint64_to_string(i8* %276, i8* %274, i64 %277, i32 1) #8, !dbg !3601
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3602
  %279 = call i8* @halide_string_to_string(i8* %278, i8* %274, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3604
  %280 = zext i32 %263 to i64, !dbg !3605
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !2213, metadata !DIExpression()) #10, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %280, metadata !2216, metadata !DIExpression()) #10, !dbg !3606
  %281 = load i8*, i8** %275, align 4, !dbg !3608, !tbaa !3609
  %282 = call i8* @halide_uint64_to_string(i8* %279, i8* %281, i64 %280, i32 1) #8, !dbg !3610
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3611
  %283 = call i8* @halide_string_to_string(i8* %282, i8* %281, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !3613
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1121, metadata !DIExpression()) #10, !dbg !3614
  %284 = load i8*, i8** %268, align 4, !dbg !3616, !tbaa !2964
  %285 = icmp eq i8* %284, null, !dbg !3616
  %286 = load i8*, i8** %265, align 4, !dbg !3617, !tbaa !2956
  br i1 %285, label %287, label %288, !dbg !3618

287:                                              ; preds = %273
  call void @halide_error(i8* %286, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3619
  br label %297, !dbg !3620

288:                                              ; preds = %273
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3621
  %289 = ptrtoint i8* %283 to i32, !dbg !3623
  %290 = ptrtoint i8* %284 to i32, !dbg !3623
  %291 = add i32 %289, 1, !dbg !3623
  %292 = sub i32 %291, %290, !dbg !3624
  %293 = sext i32 %292 to i64, !dbg !3625
  %294 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %286, i8* nonnull %284, i64 %293) #8, !dbg !3626
  %295 = load i8*, i8** %265, align 4, !dbg !3627, !tbaa !2956
  %296 = load i8*, i8** %268, align 4, !dbg !3628, !tbaa !2964
  call void @halide_print(i8* %295, i8* %296) #8, !dbg !3629
  br label %297

297:                                              ; preds = %288, %287
  %298 = load i8, i8* %266, align 4, !dbg !3630, !tbaa !2960, !range !3017
  %299 = icmp eq i8 %298, 0, !dbg !3630
  br i1 %299, label %302, label %300, !dbg !3631

300:                                              ; preds = %297
  %301 = load i8*, i8** %268, align 4, !dbg !3632, !tbaa !2964
  call void @free(i8* %301) #8, !dbg !3633
  br label %302, !dbg !3634

302:                                              ; preds = %297, %300
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %264) #10, !dbg !3577
  %303 = icmp ult i32 %263, %232, !dbg !3635
  br i1 %303, label %304, label %305, !dbg !3638

304:                                              ; preds = %302
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !3639
  call void @abort() #8, !dbg !3639
  br label %305, !dbg !3639

305:                                              ; preds = %304, %302
  %306 = icmp ugt i32 %263, 4095, !dbg !3641
  %307 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %308 = icmp eq i8 %307, 0
  %309 = or i1 %306, %308, !dbg !3643
  br i1 %309, label %310, label %330, !dbg !3643

310:                                              ; preds = %305
  %311 = load %struct.halide_metal_device*, %struct.halide_metal_device** %68, align 4, !dbg !3644, !tbaa !2066
  %312 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %311, i32 %263) #9, !dbg !3646
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %312, metadata !973, metadata !DIExpression()), !dbg !3535
  %313 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %312, null, !dbg !3647
  br i1 %313, label %314, label %328, !dbg !3649

314:                                              ; preds = %310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !3650
  %315 = call i8* @malloc(i32 1024) #8, !dbg !3653
  %316 = icmp eq i8* %315, null, !dbg !3654
  br i1 %316, label %317, label %319, !dbg !3655

317:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3656
  %318 = call i8* @halide_string_to_string(i8* %315, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3659
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3661
  br label %373, !dbg !3662

319:                                              ; preds = %314
  %320 = getelementptr inbounds i8, i8* %315, i32 1023, !dbg !3663
  store i8 0, i8* %320, align 1, !dbg !3664, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !3656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !3656
  %321 = call i8* @halide_string_to_string(i8* nonnull %315, i8* nonnull %320, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !3659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !3665
  %322 = ptrtoint i8* %321 to i32, !dbg !3667
  %323 = ptrtoint i8* %315 to i32, !dbg !3667
  %324 = add i32 %322, 1, !dbg !3667
  %325 = sub i32 %324, %323, !dbg !3668
  %326 = sext i32 %325 to i64, !dbg !3669
  %327 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %315, i64 %326) #8, !dbg !3670
  call void @halide_error(i8* %0, i8* nonnull %315) #8, !dbg !3671
  br label %373

328:                                              ; preds = %310
  %329 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* nonnull %312) #9, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %329, metadata !980, metadata !DIExpression()), !dbg !3535
  br label %330

330:                                              ; preds = %305, %328
  %331 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* [ %312, %328 ], [ null, %305 ], !dbg !3535
  %332 = phi i8* [ %329, %328 ], [ %238, %305 ], !dbg !3673
  call void @llvm.dbg.value(metadata i8* %332, metadata !980, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %331, metadata !973, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !3674
  %333 = load i32, i32* %10, align 4, !dbg !3675, !tbaa !2425
  %334 = icmp eq i32 %333, 0, !dbg !3677
  br i1 %334, label %335, label %338, !dbg !3678

335:                                              ; preds = %357, %330
  %336 = phi i32 [ 0, %330 ], [ %358, %357 ], !dbg !3679
  %337 = icmp eq i32 %336, %232, !dbg !3680
  br i1 %337, label %364, label %363, !dbg !3683

338:                                              ; preds = %330, %357
  %339 = phi i32 [ %361, %357 ], [ %333, %330 ]
  %340 = phi i32* [ %360, %357 ], [ %10, %330 ]
  %341 = phi i32 [ %359, %357 ], [ 0, %330 ]
  %342 = phi i32 [ %358, %357 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i32 %341, metadata !983, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %342, metadata !982, metadata !DIExpression()), !dbg !3535
  %343 = getelementptr inbounds i8, i8* %12, i32 %341, !dbg !3684
  %344 = load i8, i8* %343, align 1, !dbg !3684, !tbaa !1134
  %345 = icmp eq i8 %344, 0, !dbg !3684
  br i1 %345, label %346, label %357, !dbg !3687

346:                                              ; preds = %338
  %347 = getelementptr inbounds i8, i8* %332, i32 %342, !dbg !3688
  %348 = getelementptr inbounds i8*, i8** %11, i32 %341, !dbg !3690
  %349 = load i8*, i8** %348, align 4, !dbg !3690, !tbaa !1481
  %350 = call i8* @memcpy(i8* %347, i8* %349, i32 %339) #8, !dbg !3691
  %351 = load i32, i32* %340, align 4, !dbg !3692, !tbaa !2425
  %352 = add i32 %342, -1, !dbg !3693
  %353 = add i32 %352, %351, !dbg !3694
  %354 = sub i32 0, %351, !dbg !3695
  %355 = and i32 %353, %354, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %355, metadata !982, metadata !DIExpression()), !dbg !3535
  %356 = add i32 %355, %351, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %356, metadata !982, metadata !DIExpression()), !dbg !3535
  br label %357, !dbg !3698

357:                                              ; preds = %338, %346
  %358 = phi i32 [ %342, %338 ], [ %356, %346 ], !dbg !3535
  call void @llvm.dbg.value(metadata i32 %358, metadata !982, metadata !DIExpression()), !dbg !3535
  %359 = add i32 %341, 1, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %359, metadata !983, metadata !DIExpression()), !dbg !3674
  %360 = getelementptr inbounds i32, i32* %10, i32 %359, !dbg !3675
  %361 = load i32, i32* %360, align 4, !dbg !3675, !tbaa !2425
  %362 = icmp eq i32 %361, 0, !dbg !3677
  br i1 %362, label %335, label %338, !dbg !3678, !llvm.loop !3700

363:                                              ; preds = %335
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !3702
  call void @abort() #8, !dbg !3702
  br label %364, !dbg !3702

364:                                              ; preds = %363, %335
  %365 = icmp ugt i32 %232, 4095, !dbg !3704
  %366 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %367 = icmp eq i8 %366, 0
  %368 = or i1 %365, %367, !dbg !3706
  br i1 %368, label %370, label %369, !dbg !3706

369:                                              ; preds = %364
  call void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, i8* nonnull %238, i32 %263, i32 0) #9, !dbg !3707
  br label %372, !dbg !3709

370:                                              ; preds = %364
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %331, i64 0, i32 0) #9, !dbg !3710
  %371 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %331 to i8*, !dbg !3712
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %371) #9, !dbg !3713
  br label %372

372:                                              ; preds = %370, %369
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %238) #10, !dbg !3714
  br label %375

373:                                              ; preds = %319, %317
  call void @free(i8* %315) #8, !dbg !3715
  %374 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %138 to i8*, !dbg !3716
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %374) #9, !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %238) #10, !dbg !3714
  br label %508

375:                                              ; preds = %372, %209
  %376 = phi i32 [ 1, %372 ], [ 0, %209 ]
  %377 = load i32, i32* %10, align 4, !dbg !3718, !tbaa !2425
  call void @llvm.dbg.value(metadata i32 %376, metadata !972, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 0, metadata !985, metadata !DIExpression()), !dbg !3719
  %378 = icmp eq i32 %377, 0, !dbg !3720
  br i1 %378, label %379, label %479, !dbg !3721

379:                                              ; preds = %502, %206, %375
  %380 = add nsw i32 %9, 15, !dbg !3722
  %381 = and i32 %380, -16, !dbg !3723
  call void @llvm.dbg.value(metadata i32 %381, metadata !936, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3724
  %382 = call i8* @malloc(i32 1024) #8, !dbg !3726
  %383 = icmp eq i8* %382, null, !dbg !3727
  br i1 %383, label %386, label %384, !dbg !3728

384:                                              ; preds = %379
  %385 = getelementptr inbounds i8, i8* %382, i32 1023, !dbg !3729
  store i8 0, i8* %385, align 1, !dbg !3730, !tbaa !1134
  br label %386, !dbg !3731

386:                                              ; preds = %379, %384
  %387 = phi i8* [ %385, %384 ], [ null, %379 ], !dbg !3732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3733
  %388 = call i8* @halide_string_to_string(i8* %382, i8* %387, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i32 0, i32 0)) #8, !dbg !3735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !3736, metadata !DIExpression()) #10, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %381, metadata !3739, metadata !DIExpression()) #10, !dbg !3740
  %389 = sext i32 %381 to i64, !dbg !3742
  %390 = call i8* @halide_int64_to_string(i8* %388, i8* %387, i64 %389, i32 1) #8, !dbg !3743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3744
  %391 = call i8* @halide_string_to_string(i8* %390, i8* %387, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !3746
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3747
  br i1 %383, label %392, label %393, !dbg !3749

392:                                              ; preds = %386
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3750
  br label %400, !dbg !3751

393:                                              ; preds = %386
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3752
  %394 = ptrtoint i8* %391 to i32, !dbg !3754
  %395 = ptrtoint i8* %382 to i32, !dbg !3754
  %396 = add i32 %394, 1, !dbg !3754
  %397 = sub i32 %396, %395, !dbg !3755
  %398 = sext i32 %397 to i64, !dbg !3756
  %399 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %382, i64 %398) #8, !dbg !3757
  call void @halide_print(i8* %0, i8* nonnull %382) #8, !dbg !3758
  br label %400

400:                                              ; preds = %393, %392
  call void @free(i8* %382) #8, !dbg !3759
  call void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, i32 %381, i32 0) #9, !dbg !3760
  %401 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22 to i8*, !dbg !3761
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %401) #10, !dbg !3761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1095, metadata !DIExpression()) #10, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3762
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3762
  %402 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 3, !dbg !3764
  store i8* %0, i8** %402, align 4, !dbg !3764, !tbaa !2956
  %403 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 4, !dbg !3765
  store i8 1, i8* %403, align 4, !dbg !3765, !tbaa !2960
  %404 = call i8* @malloc(i32 1024) #8, !dbg !3766
  %405 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 0, !dbg !3767
  store i8* %404, i8** %405, align 4, !dbg !3768, !tbaa !2964
  %406 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 1, !dbg !3769
  store i8* %404, i8** %406, align 4, !dbg !3770, !tbaa !2987
  %407 = icmp eq i8* %404, null, !dbg !3771
  br i1 %407, label %410, label %408, !dbg !3772

408:                                              ; preds = %400
  %409 = getelementptr inbounds i8, i8* %404, i32 1023, !dbg !3773
  store i8 0, i8* %409, align 1, !dbg !3774, !tbaa !1134
  br label %410, !dbg !3775

410:                                              ; preds = %400, %408
  %411 = phi i8* [ %409, %408 ], [ null, %400 ], !dbg !3776
  %412 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 2, !dbg !3777
  store i8* %411, i8** %412, align 4, !dbg !3778
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3779
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3779
  %413 = call i8* @halide_string_to_string(i8* %404, i8* %411, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0)) #8, !dbg !3781
  store i8* %413, i8** %406, align 4, !dbg !3782, !tbaa !2987
  %414 = load i32, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !dbg !3783, !tbaa !2425
  %415 = add nsw i32 %414, 1, !dbg !3783
  store i32 %415, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !dbg !3783, !tbaa !2425
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %414, metadata !3739, metadata !DIExpression()) #10, !dbg !3784
  %416 = sext i32 %414 to i64, !dbg !3786
  %417 = call i8* @halide_int64_to_string(i8* %413, i8* %411, i64 %416, i32 1) #8, !dbg !3787
  store i8* %417, i8** %406, align 4, !dbg !3788, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3789
  %418 = call i8* @halide_string_to_string(i8* %417, i8* %411, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0)) #8, !dbg !3791
  store i8* %418, i8** %406, align 4, !dbg !3792, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3793
  call void @llvm.dbg.value(metadata i32 %3, metadata !3739, metadata !DIExpression()) #10, !dbg !3793
  %419 = sext i32 %3 to i64, !dbg !3795
  %420 = call i8* @halide_int64_to_string(i8* %418, i8* %411, i64 %419, i32 1) #8, !dbg !3796
  store i8* %420, i8** %406, align 4, !dbg !3797, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3798
  %421 = call i8* @halide_string_to_string(i8* %420, i8* %411, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3800
  store i8* %421, i8** %406, align 4, !dbg !3801, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3802
  call void @llvm.dbg.value(metadata i32 %4, metadata !3739, metadata !DIExpression()) #10, !dbg !3802
  %422 = sext i32 %4 to i64, !dbg !3804
  %423 = call i8* @halide_int64_to_string(i8* %421, i8* %411, i64 %422, i32 1) #8, !dbg !3805
  store i8* %423, i8** %406, align 4, !dbg !3806, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3807
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3807
  %424 = call i8* @halide_string_to_string(i8* %423, i8* %411, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3809
  store i8* %424, i8** %406, align 4, !dbg !3810, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %5, metadata !3739, metadata !DIExpression()) #10, !dbg !3811
  %425 = sext i32 %5 to i64, !dbg !3813
  %426 = call i8* @halide_int64_to_string(i8* %424, i8* %411, i64 %425, i32 1) #8, !dbg !3814
  store i8* %426, i8** %406, align 4, !dbg !3815, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3816
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3816
  %427 = call i8* @halide_string_to_string(i8* %426, i8* %411, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0)) #8, !dbg !3818
  store i8* %427, i8** %406, align 4, !dbg !3819, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i32 %6, metadata !3739, metadata !DIExpression()) #10, !dbg !3820
  %428 = sext i32 %6 to i64, !dbg !3822
  %429 = call i8* @halide_int64_to_string(i8* %427, i8* %411, i64 %428, i32 1) #8, !dbg !3823
  store i8* %429, i8** %406, align 4, !dbg !3824, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3825
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3825
  %430 = call i8* @halide_string_to_string(i8* %429, i8* %411, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3827
  store i8* %430, i8** %406, align 4, !dbg !3828, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %7, metadata !3739, metadata !DIExpression()) #10, !dbg !3829
  %431 = sext i32 %7 to i64, !dbg !3831
  %432 = call i8* @halide_int64_to_string(i8* %430, i8* %411, i64 %431, i32 1) #8, !dbg !3832
  store i8* %432, i8** %406, align 4, !dbg !3833, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3834
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3834
  %433 = call i8* @halide_string_to_string(i8* %432, i8* %411, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3836
  store i8* %433, i8** %406, align 4, !dbg !3837, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3736, metadata !DIExpression()) #10, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %8, metadata !3739, metadata !DIExpression()) #10, !dbg !3838
  %434 = sext i32 %8 to i64, !dbg !3840
  %435 = call i8* @halide_int64_to_string(i8* %433, i8* %411, i64 %434, i32 1) #8, !dbg !3841
  store i8* %435, i8** %406, align 4, !dbg !3842, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3843
  %436 = call i8* @halide_string_to_string(i8* %435, i8* %411, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !3845
  store i8* %436, i8** %406, align 4, !dbg !3846, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1121, metadata !DIExpression()) #10, !dbg !3847
  br i1 %407, label %437, label %438, !dbg !3849

437:                                              ; preds = %410
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3850
  br label %447, !dbg !3851

438:                                              ; preds = %410
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3852
  %439 = ptrtoint i8* %436 to i32, !dbg !3854
  %440 = ptrtoint i8* %404 to i32, !dbg !3854
  %441 = add i32 %439, 1, !dbg !3854
  %442 = sub i32 %441, %440, !dbg !3855
  %443 = sext i32 %442 to i64, !dbg !3856
  %444 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %404, i64 %443) #8, !dbg !3857
  %445 = load i8*, i8** %402, align 4, !dbg !3858, !tbaa !2956
  %446 = load i8*, i8** %405, align 4, !dbg !3859, !tbaa !2964
  call void @halide_print(i8* %445, i8* %446) #8, !dbg !3860
  br label %447

447:                                              ; preds = %438, %437
  %448 = load i8, i8* %403, align 4, !dbg !3861, !tbaa !2960, !range !3017
  %449 = icmp eq i8 %448, 0, !dbg !3861
  br i1 %449, label %455, label %450, !dbg !3862

450:                                              ; preds = %447
  %451 = load i8*, i8** %405, align 4, !dbg !3863, !tbaa !2964
  %452 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i32 0, i32 5, i32 0, !dbg !3864
  %453 = icmp eq i8* %451, %452, !dbg !3865
  br i1 %453, label %455, label %454, !dbg !3866

454:                                              ; preds = %450
  call void @free(i8* %451) #8, !dbg !3867
  br label %455, !dbg !3868

455:                                              ; preds = %447, %450, %454
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %401) #10, !dbg !3761
  call void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #8, !dbg !3869
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50) #9, !dbg !3870
  call void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* nonnull @_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE) #9, !dbg !3871
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32) #9, !dbg !3872
  %456 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %138 to i8*, !dbg !3873
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %456) #9, !dbg !3874
  %457 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %457, metadata !992, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3876
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3876
  %458 = call i8* @malloc(i32 1024) #8, !dbg !3878
  %459 = icmp eq i8* %458, null, !dbg !3879
  br i1 %459, label %462, label %460, !dbg !3880

460:                                              ; preds = %455
  %461 = getelementptr inbounds i8, i8* %458, i32 1023, !dbg !3881
  store i8 0, i8* %461, align 1, !dbg !3882, !tbaa !1134
  br label %462, !dbg !3883

462:                                              ; preds = %455, %460
  %463 = phi i8* [ %461, %460 ], [ null, %455 ], !dbg !3884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3885
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3885
  %464 = call i8* @halide_string_to_string(i8* %458, i8* %463, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0)) #8, !dbg !3887
  %465 = sub i64 %457, %23, !dbg !3888
  %466 = uitofp i64 %465 to double, !dbg !3889
  %467 = fdiv double %466, 1.000000e+06, !dbg !3890
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !3891
  call void @llvm.dbg.value(metadata double %467, metadata !2148, metadata !DIExpression()) #10, !dbg !3891
  %468 = call i8* @halide_double_to_string(i8* %464, i8* %463, double %467, i32 1) #8, !dbg !3893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3894
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3894
  %469 = call i8* @halide_string_to_string(i8* %468, i8* %463, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !3896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3897
  br i1 %459, label %470, label %471, !dbg !3899

470:                                              ; preds = %462
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3900
  br label %478, !dbg !3901

471:                                              ; preds = %462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3902
  %472 = ptrtoint i8* %469 to i32, !dbg !3904
  %473 = ptrtoint i8* %458 to i32, !dbg !3904
  %474 = add i32 %472, 1, !dbg !3904
  %475 = sub i32 %474, %473, !dbg !3905
  %476 = sext i32 %475 to i64, !dbg !3906
  %477 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %458, i64 %476) #8, !dbg !3907
  call void @halide_print(i8* %0, i8* nonnull %458) #8, !dbg !3908
  br label %478

478:                                              ; preds = %471, %470
  call void @free(i8* %458) #8, !dbg !3909
  br label %508

479:                                              ; preds = %375, %502
  %480 = phi i32 [ %506, %502 ], [ %377, %375 ]
  %481 = phi i32 [ %504, %502 ], [ 0, %375 ]
  %482 = phi i32 [ %503, %502 ], [ %376, %375 ]
  call void @llvm.dbg.value(metadata i32 %481, metadata !985, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %482, metadata !972, metadata !DIExpression()), !dbg !3212
  %483 = getelementptr inbounds i8, i8* %12, i32 %481, !dbg !3910
  %484 = load i8, i8* %483, align 1, !dbg !3910, !tbaa !1134
  %485 = icmp eq i8 %484, 0, !dbg !3910
  br i1 %485, label %502, label %486, !dbg !3911

486:                                              ; preds = %479
  %487 = icmp eq i32 %480, 8, !dbg !3912
  br i1 %487, label %489, label %488, !dbg !3915

488:                                              ; preds = %486
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.94, i32 0, i32 0)) #8, !dbg !3916
  call void @abort() #8, !dbg !3916
  br label %489, !dbg !3916

489:                                              ; preds = %488, %486
  %490 = getelementptr inbounds i8*, i8** %11, i32 %481, !dbg !3918
  %491 = bitcast i8** %490 to %struct.halide_buffer_t**, !dbg !3918
  %492 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %491, align 4, !dbg !3918, !tbaa !1481
  %493 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %492, i32 0, i32 0, !dbg !3919
  %494 = load i64, i64* %493, align 8, !dbg !3919, !tbaa !1199
  %495 = trunc i64 %494 to i32, !dbg !3920
  %496 = inttoptr i32 %495 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3920
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::device_handle"* %496, metadata !987, metadata !DIExpression()), !dbg !3921
  %497 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %496, i32 0, i32 0, !dbg !3922
  %498 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %497, align 8, !dbg !3922, !tbaa !2112
  %499 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %496, i32 0, i32 1, !dbg !3923
  %500 = load i64, i64* %499, align 8, !dbg !3923, !tbaa !2116
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %50, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %498, i64 %500, i32 %482) #9, !dbg !3924
  %501 = add nsw i32 %482, 1, !dbg !3925
  call void @llvm.dbg.value(metadata i32 %501, metadata !972, metadata !DIExpression()), !dbg !3212
  br label %502, !dbg !3926

502:                                              ; preds = %479, %489
  %503 = phi i32 [ %501, %489 ], [ %482, %479 ], !dbg !3212
  call void @llvm.dbg.value(metadata i32 %503, metadata !972, metadata !DIExpression()), !dbg !3212
  %504 = add i32 %481, 1, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %504, metadata !985, metadata !DIExpression()), !dbg !3719
  %505 = getelementptr inbounds i32, i32* %10, i32 %504, !dbg !3718
  %506 = load i32, i32* %505, align 4, !dbg !3718, !tbaa !2425
  %507 = icmp eq i32 %506, 0, !dbg !3720
  br i1 %507, label %379, label %479, !dbg !3721, !llvm.loop !3928

508:                                              ; preds = %135, %204, %478, %154, %373, %48, %66, %17
  %509 = phi i32 [ %26, %17 ], [ -1, %48 ], [ -1, %66 ], [ -1, %135 ], [ -1, %154 ], [ -1, %204 ], [ 0, %478 ], [ -1, %373 ], !dbg !3212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !2168, metadata !DIExpression()) #10, !dbg !3930
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %18) #8, !dbg !3932
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %24) #10, !dbg !3933
  ret i32 %509, !dbg !3933
}

declare !dbg !3934 dso_local void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3940, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3946
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3946
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3948
  %4 = icmp eq i8* %3, null, !dbg !3949
  br i1 %4, label %5, label %7, !dbg !3950

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3951
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3951
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !3953
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3954
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !3956
  br label %16, !dbg !3957

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3958
  store i8 0, i8* %8, align 1, !dbg !3959, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3951
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3951
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !3953
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3954
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3960
  %10 = ptrtoint i8* %9 to i32, !dbg !3962
  %11 = ptrtoint i8* %3 to i32, !dbg !3962
  %12 = add i32 %10, 1, !dbg !3962
  %13 = sub i32 %12, %11, !dbg !3963
  %14 = sext i32 %13 to i64, !dbg !3964
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #8, !dbg !3965
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3966
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #8, !dbg !3967
  %17 = tail call i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #9, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %17, metadata !3941, metadata !DIExpression()), !dbg !3945
  %18 = icmp eq i32 %17, 0, !dbg !3969
  br i1 %18, label %19, label %56, !dbg !3970

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3971
  %21 = load i64, i64* %20, align 8, !dbg !3971, !tbaa !1199
  %22 = trunc i64 %21 to i32, !dbg !3972
  %23 = inttoptr i32 %22 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3972
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %23, i32 0, i32 0, !dbg !3973
  %25 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %24, align 8, !dbg !3973, !tbaa !2112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25, metadata !3942, metadata !DIExpression()), !dbg !3974
  %26 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25) #9, !dbg !3975
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !3976
  store i8* %26, i8** %27, align 4, !dbg !3977, !tbaa !1190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3978
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3978
  %28 = tail call i8* @malloc(i32 1024) #8, !dbg !3980
  %29 = icmp eq i8* %28, null, !dbg !3981
  br i1 %29, label %32, label %30, !dbg !3982

30:                                               ; preds = %19
  %31 = getelementptr inbounds i8, i8* %28, i32 1023, !dbg !3983
  store i8 0, i8* %31, align 1, !dbg !3984, !tbaa !1134
  br label %32, !dbg !3985

32:                                               ; preds = %19, %30
  %33 = phi i8* [ %31, %30 ], [ null, %19 ], !dbg !3986
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3987
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3987
  %34 = tail call i8* @halide_string_to_string(i8* %28, i8* %33, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0)) #8, !dbg !3989
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3990
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0)) #8, !dbg !3992
  %36 = load i64, i64* %20, align 8, !dbg !3993, !tbaa !1199
  %37 = trunc i64 %36 to i32, !dbg !3994
  %38 = inttoptr i32 %37 to i8*, !dbg !3994
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %38, metadata !1891, metadata !DIExpression()) #10, !dbg !3995
  %39 = tail call i8* @halide_pointer_to_string(i8* %35, i8* %33, i8* %38) #8, !dbg !3997
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3998
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %33, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !4000
  %41 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25 to i8*, !dbg !4001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %41, metadata !1891, metadata !DIExpression()) #10, !dbg !4002
  %42 = tail call i8* @halide_pointer_to_string(i8* %40, i8* %33, i8* %41) #8, !dbg !4004
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4005
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4005
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %33, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0)) #8, !dbg !4007
  %44 = load i8*, i8** %27, align 4, !dbg !4008, !tbaa !1190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %44, metadata !1891, metadata !DIExpression()) #10, !dbg !4009
  %45 = tail call i8* @halide_pointer_to_string(i8* %43, i8* %33, i8* %44) #8, !dbg !4011
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4012
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4012
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %33, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !4014
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4015
  br i1 %29, label %47, label %48, !dbg !4017

47:                                               ; preds = %32
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4018
  br label %55, !dbg !4019

48:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4020
  %49 = ptrtoint i8* %46 to i32, !dbg !4022
  %50 = ptrtoint i8* %28 to i32, !dbg !4022
  %51 = add i32 %49, 1, !dbg !4022
  %52 = sub i32 %51, %50, !dbg !4023
  %53 = sext i32 %52 to i64, !dbg !4024
  %54 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %28, i64 %53) #8, !dbg !4025
  tail call void @halide_print(i8* %0, i8* nonnull %28) #8, !dbg !4026
  br label %55

55:                                               ; preds = %47, %48
  call void @free(i8* %28) #8, !dbg !4027
  br label %56, !dbg !4028

56:                                               ; preds = %55, %16
  ret i32 %17, !dbg !4029
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4030 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4033, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4035
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4035
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !4037
  %4 = icmp eq i8* %3, null, !dbg !4038
  br i1 %4, label %5, label %7, !dbg !4039

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4040
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4040
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !4042
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4043
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4045
  br label %16, !dbg !4046

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !4047
  store i8 0, i8* %8, align 1, !dbg !4048, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4040
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4040
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !4042
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4043
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4049
  %10 = ptrtoint i8* %9 to i32, !dbg !4051
  %11 = ptrtoint i8* %3 to i32, !dbg !4051
  %12 = add i32 %10, 1, !dbg !4051
  %13 = sub i32 %12, %11, !dbg !4052
  %14 = sext i32 %13 to i64, !dbg !4053
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #8, !dbg !4054
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !4055
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #8, !dbg !4056
  %17 = tail call i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #9, !dbg !4057
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !4058
  store i8* null, i8** %18, align 4, !dbg !4059, !tbaa !1190
  ret i32 0, !dbg !4060
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 !dbg !4061 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4063, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4064, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !4065, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !4066, metadata !DIExpression()), !dbg !4088
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !4089
  %10 = load i32, i32* %9, align 4, !dbg !4089, !tbaa !1234
  %11 = icmp sgt i32 %10, 16, !dbg !4091
  br i1 %11, label %12, label %27, !dbg !4092

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !4093
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !4093
  %13 = tail call i8* @malloc(i32 1024) #8, !dbg !4096
  %14 = icmp eq i8* %13, null, !dbg !4097
  br i1 %14, label %15, label %17, !dbg !4098

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4099
  %16 = tail call i8* @halide_string_to_string(i8* %13, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4102
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4104
  br label %26, !dbg !4105

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %13, i32 1023, !dbg !4106
  store i8 0, i8* %18, align 1, !dbg !4107, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4099
  %19 = tail call i8* @halide_string_to_string(i8* nonnull %13, i8* nonnull %18, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !4108
  %20 = ptrtoint i8* %19 to i32, !dbg !4110
  %21 = ptrtoint i8* %13 to i32, !dbg !4110
  %22 = add i32 %20, 1, !dbg !4110
  %23 = sub i32 %22, %21, !dbg !4111
  %24 = sext i32 %23 to i64, !dbg !4112
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %24) #8, !dbg !4113
  tail call void @halide_error(i8* %0, i8* nonnull %13) #8, !dbg !4114
  br label %26

26:                                               ; preds = %17, %15
  tail call void @free(i8* %13) #8, !dbg !4115
  br label %288, !dbg !4116

27:                                               ; preds = %4
  %28 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !4117
  %29 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4117
  %30 = or i1 %28, %29, !dbg !4117
  br i1 %30, label %32, label %31, !dbg !4117

31:                                               ; preds = %27
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.106, i32 0, i32 0)) #8, !dbg !4120
  tail call void @abort() #8, !dbg !4120
  br label %32, !dbg !4120

32:                                               ; preds = %27, %31
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4128, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 2, metadata !4131, metadata !DIExpression()), !dbg !4132
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !4134
  %34 = load i64, i64* %33, align 8, !dbg !4134, !tbaa !4135
  %35 = and i64 %34, 2, !dbg !4136
  %36 = icmp eq i64 %35, 0, !dbg !4137
  br i1 %36, label %37, label %41, !dbg !4138

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !4139
  %39 = load i8*, i8** %38, align 4, !dbg !4139, !tbaa !1190
  %40 = icmp eq i8* %39, null, !dbg !4140
  br i1 %40, label %41, label %47, !dbg !4141

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4142
  %43 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %42, align 8, !dbg !4142, !tbaa !2121
  %44 = icmp eq %struct.halide_device_interface_t* %43, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4143
  br i1 %44, label %51, label %45, !dbg !4144

45:                                               ; preds = %41
  br i1 %29, label %288, label %46, !dbg !4145

46:                                               ; preds = %45
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.107, i32 0, i32 0)) #8, !dbg !4148
  tail call void @abort() #8, !dbg !4148
  br label %288, !dbg !4148

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %49 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %48, align 8, !dbg !4151, !tbaa !2121
  %50 = icmp eq %struct.halide_device_interface_t* %49, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4152
  br i1 %50, label %51, label %63, !dbg !4153

51:                                               ; preds = %41, %47
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4154
  %53 = load i64, i64* %52, align 8, !dbg !4154, !tbaa !1199
  %54 = icmp eq i64 %53, 0, !dbg !4155
  br i1 %54, label %63, label %55, !dbg !4156

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4157, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4128, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i32 1, metadata !4131, metadata !DIExpression()), !dbg !4162
  %56 = and i64 %34, 1, !dbg !4164
  %57 = icmp eq i64 %56, 0, !dbg !4165
  br i1 %57, label %62, label %58, !dbg !4166

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !4167
  %60 = load i8*, i8** %59, align 4, !dbg !4167, !tbaa !1190
  %61 = icmp eq i8* %60, null, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %61, metadata !4067, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4088
  call void @llvm.dbg.value(metadata i1 %28, metadata !4068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4088
  br i1 %61, label %62, label %63, !dbg !4169

62:                                               ; preds = %55, %58
  br label %63, !dbg !4172

63:                                               ; preds = %62, %47, %51, %58
  %64 = phi i1 [ true, %58 ], [ false, %62 ], [ true, %51 ], [ true, %47 ]
  br i1 %28, label %70, label %65, !dbg !4173

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !4173
  %67 = load i64, i64* %66, align 8, !dbg !4173, !tbaa !1199
  %68 = icmp eq i64 %67, 0, !dbg !4173
  br i1 %68, label %69, label %70, !dbg !4176

69:                                               ; preds = %65
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.109, i32 0, i32 0)) #8, !dbg !4177
  tail call void @abort() #8, !dbg !4177
  br label %70, !dbg !4177

70:                                               ; preds = %69, %65, %63
  %71 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*, !dbg !4179
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %71) #10, !dbg !4179
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %5, metadata !4069, metadata !DIExpression()), !dbg !4180
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %64, %struct.halide_buffer_t* nonnull %3, i1 zeroext %28) #9, !dbg !4181
  call void @llvm.dbg.value(metadata i32 0, metadata !4070, metadata !DIExpression()), !dbg !4088
  %72 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6 to i8*, !dbg !4182
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %72) #10, !dbg !4182
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !4071, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !2037, metadata !DIExpression()) #10, !dbg !4184
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !4184
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !4184
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %6, i8* %0, i1 zeroext true) #8, !dbg !4186
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 4, !dbg !4187
  %74 = load i32, i32* %73, align 4, !dbg !4187, !tbaa !1835
  %75 = icmp eq i32 %74, 0, !dbg !4189
  br i1 %75, label %76, label %287, !dbg !4190

76:                                               ; preds = %70
  %77 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*, !dbg !4191
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %77) #10, !dbg !4191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1095, metadata !DIExpression()) #10, !dbg !4192
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4192
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4192
  %78 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3, !dbg !4194
  store i8* %0, i8** %78, align 4, !dbg !4194, !tbaa !2956
  %79 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4, !dbg !4195
  store i8 1, i8* %79, align 4, !dbg !4195, !tbaa !2960
  %80 = call i8* @malloc(i32 1024) #8, !dbg !4196
  %81 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0, !dbg !4197
  store i8* %80, i8** %81, align 4, !dbg !4198, !tbaa !2964
  %82 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1, !dbg !4199
  store i8* %80, i8** %82, align 4, !dbg !4200, !tbaa !2987
  %83 = icmp eq i8* %80, null, !dbg !4201
  br i1 %83, label %86, label %84, !dbg !4202

84:                                               ; preds = %76
  %85 = getelementptr inbounds i8, i8* %80, i32 1023, !dbg !4203
  store i8 0, i8* %85, align 1, !dbg !4204, !tbaa !1134
  br label %86, !dbg !4205

86:                                               ; preds = %76, %84
  %87 = phi i8* [ %85, %84 ], [ null, %76 ], !dbg !4206
  %88 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 2, !dbg !4207
  store i8* %87, i8** %88, align 4, !dbg !4208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4209
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4209
  %89 = call i8* @halide_string_to_string(i8* %80, i8* %87, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0)) #8, !dbg !4211
  store i8* %89, i8** %82, align 4, !dbg !4212, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1888, metadata !DIExpression()) #10, !dbg !4213
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #10, !dbg !4213
  %90 = load i8*, i8** %88, align 4, !dbg !4215, !tbaa !3609
  %91 = call i8* @halide_pointer_to_string(i8* %89, i8* %90, i8* %0) #8, !dbg !4216
  store i8* %91, i8** %82, align 4, !dbg !4217, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4218
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4218
  %92 = load i8*, i8** %88, align 4, !dbg !4220, !tbaa !3609
  %93 = call i8* @halide_string_to_string(i8* %91, i8* %92, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0)) #8, !dbg !4221
  store i8* %93, i8** %82, align 4, !dbg !4222, !tbaa !2987
  %94 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !4223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1888, metadata !DIExpression()) #10, !dbg !4224
  call void @llvm.dbg.value(metadata i8* %94, metadata !1891, metadata !DIExpression()) #10, !dbg !4224
  %95 = load i8*, i8** %88, align 4, !dbg !4226, !tbaa !3609
  %96 = call i8* @halide_pointer_to_string(i8* %93, i8* %95, i8* %94) #8, !dbg !4227
  store i8* %96, i8** %82, align 4, !dbg !4228, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4229
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4229
  %97 = load i8*, i8** %88, align 4, !dbg !4231, !tbaa !3609
  %98 = call i8* @halide_string_to_string(i8* %96, i8* %97, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0)) #8, !dbg !4232
  store i8* %98, i8** %82, align 4, !dbg !4233, !tbaa !2987
  %99 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !4234
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1888, metadata !DIExpression()) #10, !dbg !4235
  call void @llvm.dbg.value(metadata i8* %99, metadata !1891, metadata !DIExpression()) #10, !dbg !4235
  %100 = load i8*, i8** %88, align 4, !dbg !4237, !tbaa !3609
  %101 = call i8* @halide_pointer_to_string(i8* %98, i8* %100, i8* %99) #8, !dbg !4238
  store i8* %101, i8** %82, align 4, !dbg !4239, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4240
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4240
  %102 = load i8*, i8** %88, align 4, !dbg !4242, !tbaa !3609
  %103 = call i8* @halide_string_to_string(i8* %101, i8* %102, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !4243
  store i8* %103, i8** %82, align 4, !dbg !4244, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1121, metadata !DIExpression()) #10, !dbg !4245
  %104 = load i8*, i8** %81, align 4, !dbg !4247, !tbaa !2964
  %105 = icmp eq i8* %104, null, !dbg !4247
  %106 = load i8*, i8** %78, align 4, !dbg !4248, !tbaa !2956
  br i1 %105, label %107, label %108, !dbg !4249

107:                                              ; preds = %86
  call void @halide_error(i8* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4250
  br label %117, !dbg !4251

108:                                              ; preds = %86
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4252
  %109 = ptrtoint i8* %103 to i32, !dbg !4254
  %110 = ptrtoint i8* %104 to i32, !dbg !4254
  %111 = add i32 %109, 1, !dbg !4254
  %112 = sub i32 %111, %110, !dbg !4255
  %113 = sext i32 %112 to i64, !dbg !4256
  %114 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %106, i8* nonnull %104, i64 %113) #8, !dbg !4257
  %115 = load i8*, i8** %78, align 4, !dbg !4258, !tbaa !2956
  %116 = load i8*, i8** %81, align 4, !dbg !4259, !tbaa !2964
  call void @halide_print(i8* %115, i8* %116) #8, !dbg !4260
  br label %117

117:                                              ; preds = %108, %107
  %118 = load i8, i8* %79, align 4, !dbg !4261, !tbaa !2960, !range !3017
  %119 = icmp eq i8 %118, 0, !dbg !4261
  br i1 %119, label %125, label %120, !dbg !4262

120:                                              ; preds = %117
  %121 = load i8*, i8** %81, align 4, !dbg !4263, !tbaa !2964
  %122 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 5, i32 0, !dbg !4264
  %123 = icmp eq i8* %121, %122, !dbg !4265
  br i1 %123, label %125, label %124, !dbg !4266

124:                                              ; preds = %120
  call void @free(i8* %121) #8, !dbg !4267
  br label %125, !dbg !4268

125:                                              ; preds = %117, %120, %124
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %77) #10, !dbg !4191
  %126 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4269
  call void @llvm.dbg.value(metadata i64 %126, metadata !4073, metadata !DIExpression()), !dbg !4270
  %127 = or i1 %28, %64, !dbg !4271
  br i1 %127, label %161, label %128, !dbg !4271

128:                                              ; preds = %125
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4272
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4272
  %129 = call i8* @malloc(i32 1024) #8, !dbg !4274
  %130 = icmp eq i8* %129, null, !dbg !4275
  br i1 %130, label %131, label %133, !dbg !4276

131:                                              ; preds = %128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4277
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4277
  %132 = call i8* @halide_string_to_string(i8* %129, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !4279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4280
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4282
  br label %142, !dbg !4283

133:                                              ; preds = %128
  %134 = getelementptr inbounds i8, i8* %129, i32 1023, !dbg !4284
  store i8 0, i8* %134, align 1, !dbg !4285, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4277
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4277
  %135 = call i8* @halide_string_to_string(i8* nonnull %129, i8* nonnull %134, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !4279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4286
  %136 = ptrtoint i8* %135 to i32, !dbg !4288
  %137 = ptrtoint i8* %129 to i32, !dbg !4288
  %138 = add i32 %136, 1, !dbg !4288
  %139 = sub i32 %138, %137, !dbg !4289
  %140 = sext i32 %139 to i64, !dbg !4290
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %129, i64 %140) #8, !dbg !4291
  call void @halide_print(i8* %0, i8* nonnull %129) #8, !dbg !4292
  br label %142

142:                                              ; preds = %133, %131
  call void @free(i8* %129) #8, !dbg !4293
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), metadata !4074, metadata !DIExpression()), !dbg !4294
  %143 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3, !dbg !4295
  %144 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %143, align 4, !dbg !4295, !tbaa !2714
  %145 = call i32 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0)) #8, !dbg !4296
  %146 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 %145) #9, !dbg !4297
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %146, metadata !4077, metadata !DIExpression()), !dbg !4294
  %147 = call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %146) #9, !dbg !4298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %147, metadata !4078, metadata !DIExpression()), !dbg !4294
  %148 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0, !dbg !4299
  %149 = load i64, i64* %148, align 8, !dbg !4299, !tbaa !1050
  %150 = trunc i64 %149 to i32, !dbg !4300
  %151 = inttoptr i32 %150 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4300
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %151, i32 0, i32 1, !dbg !4301
  %153 = load i64, i64* %152, align 8, !dbg !4301, !tbaa !2116
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1, !dbg !4302
  %155 = load i64, i64* %154, align 8, !dbg !4302, !tbaa !1056
  %156 = trunc i64 %155 to i32, !dbg !4303
  %157 = inttoptr i32 %156 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4303
  %158 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %157, i32 0, i32 1, !dbg !4304
  %159 = load i64, i64* %158, align 8, !dbg !4304, !tbaa !2116
  %160 = load i32, i32* %9, align 4, !dbg !4305, !tbaa !1234
  call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %147, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %153, i64 %159, i32 %160) #9, !dbg !4306
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %147) #9, !dbg !4307
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %146) #9, !dbg !4308
  br label %264, !dbg !4309

161:                                              ; preds = %125
  br i1 %64, label %180, label %162, !dbg !4310

162:                                              ; preds = %161
  %163 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3, !dbg !4311
  %164 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %163, align 4, !dbg !4311, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %164, %struct.halide_buffer_t* nonnull %1) #9, !dbg !4314
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0, !dbg !4315
  %166 = load i64, i64* %165, align 8, !dbg !4315, !tbaa !1050
  %167 = trunc i64 %166 to i32, !dbg !4316
  %168 = inttoptr i32 %167 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4316
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %168, i32 0, i32 0, !dbg !4317
  %170 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %169, align 8, !dbg !4317, !tbaa !2112
  %171 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %170) #9, !dbg !4318
  %172 = ptrtoint i8* %171 to i32, !dbg !4319
  %173 = zext i32 %172 to i64, !dbg !4319
  %174 = load i64, i64* %165, align 8, !dbg !4320, !tbaa !1050
  %175 = trunc i64 %174 to i32, !dbg !4321
  %176 = inttoptr i32 %175 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4321
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %176, i32 0, i32 1, !dbg !4322
  %178 = load i64, i64* %177, align 8, !dbg !4322, !tbaa !2116
  %179 = add i64 %178, %173, !dbg !4323
  store i64 %179, i64* %165, align 8, !dbg !4324, !tbaa !1050
  br label %180, !dbg !4325

180:                                              ; preds = %162, %161
  br i1 %28, label %181, label %182, !dbg !4326

181:                                              ; preds = %180
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190, metadata !4079, metadata !DIExpression()), !dbg !4327
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9, !dbg !4328
  br label %264, !dbg !4329

182:                                              ; preds = %180
  %183 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3, !dbg !4330
  %184 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %183, align 4, !dbg !4330, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %184, %struct.halide_buffer_t* nonnull %3) #9, !dbg !4333
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1, !dbg !4334
  %186 = load i64, i64* %185, align 8, !dbg !4334, !tbaa !1056
  %187 = trunc i64 %186 to i32, !dbg !4335
  %188 = inttoptr i32 %187 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4335
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %188, i32 0, i32 0, !dbg !4336
  %190 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %189, align 8, !dbg !4336, !tbaa !2112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190, metadata !4079, metadata !DIExpression()), !dbg !4327
  br i1 %64, label %192, label %191, !dbg !4337

191:                                              ; preds = %182
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.115, i32 0, i32 0)) #8, !dbg !4339
  call void @abort() #8, !dbg !4339
  br label %192, !dbg !4339

192:                                              ; preds = %191, %182
  %193 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190) #9, !dbg !4342
  %194 = ptrtoint i8* %193 to i32, !dbg !4343
  %195 = zext i32 %194 to i64, !dbg !4343
  %196 = load i64, i64* %185, align 8, !dbg !4344, !tbaa !1056
  %197 = trunc i64 %196 to i32, !dbg !4345
  %198 = inttoptr i32 %197 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4345
  %199 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %198, i32 0, i32 1, !dbg !4346
  %200 = load i64, i64* %199, align 8, !dbg !4346, !tbaa !2116
  %201 = add i64 %200, %195, !dbg !4347
  store i64 %201, i64* %185, align 8, !dbg !4348, !tbaa !1056
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190, metadata !4079, metadata !DIExpression()), !dbg !4327
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9, !dbg !4328
  %202 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190) #9, !dbg !4349
  br i1 %202, label %203, label %262, !dbg !4350

203:                                              ; preds = %192
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1918, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1923, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()), !dbg !4355
  %204 = load i32, i32* %9, align 4, !dbg !4356, !tbaa !1234
  %205 = icmp sgt i32 %204, 0, !dbg !4357
  br i1 %205, label %209, label %206, !dbg !4358

206:                                              ; preds = %203
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4359
  %207 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !4361
  %208 = load i8, i8* %207, align 1, !dbg !4361, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1939, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !4364
  br label %247, !dbg !4365

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %211 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %210, align 8, !tbaa !1237
  br label %212, !dbg !4358

212:                                              ; preds = %224, %209
  %213 = phi i32 [ 0, %209 ], [ %226, %224 ]
  %214 = phi i32 [ 0, %209 ], [ %225, %224 ]
  call void @llvm.dbg.value(metadata i32 %213, metadata !1927, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i32 %214, metadata !1926, metadata !DIExpression()), !dbg !4353
  %215 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %211, i32 %213, i32 2, !dbg !4366
  %216 = load i32, i32* %215, align 4, !dbg !4366, !tbaa !1245
  %217 = icmp sgt i32 %216, 0, !dbg !4367
  br i1 %217, label %218, label %224, !dbg !4368

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %211, i32 %213, i32 1, !dbg !4369
  %220 = load i32, i32* %219, align 4, !dbg !4369, !tbaa !1309
  %221 = add nsw i32 %220, -1, !dbg !4370
  %222 = mul nsw i32 %221, %216, !dbg !4371
  %223 = add nsw i32 %222, %214, !dbg !4372
  call void @llvm.dbg.value(metadata i32 %223, metadata !1926, metadata !DIExpression()), !dbg !4353
  br label %224, !dbg !4373

224:                                              ; preds = %218, %212
  %225 = phi i32 [ %223, %218 ], [ %214, %212 ], !dbg !4353
  call void @llvm.dbg.value(metadata i32 %225, metadata !1926, metadata !DIExpression()), !dbg !4353
  %226 = add nuw nsw i32 %213, 1, !dbg !4374
  call void @llvm.dbg.value(metadata i32 %226, metadata !1927, metadata !DIExpression()), !dbg !4355
  %227 = icmp slt i32 %226, %204, !dbg !4357
  br i1 %227, label %212, label %228, !dbg !4358, !llvm.loop !4375

228:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i32 %225, metadata !1926, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4359
  %229 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !4361
  %230 = load i8, i8* %229, align 1, !dbg !4361, !tbaa !1215
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1939, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !4364
  br label %231, !dbg !4365

231:                                              ; preds = %243, %228
  %232 = phi i32 [ 0, %228 ], [ %245, %243 ]
  %233 = phi i32 [ 0, %228 ], [ %244, %243 ]
  call void @llvm.dbg.value(metadata i32 %232, metadata !1943, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %233, metadata !1942, metadata !DIExpression()), !dbg !4362
  %234 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %211, i32 %232, i32 2, !dbg !4377
  %235 = load i32, i32* %234, align 4, !dbg !4377, !tbaa !1245
  %236 = icmp slt i32 %235, 0, !dbg !4378
  br i1 %236, label %237, label %243, !dbg !4379

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %211, i32 %232, i32 1, !dbg !4380
  %239 = load i32, i32* %238, align 4, !dbg !4380, !tbaa !1309
  %240 = add nsw i32 %239, -1, !dbg !4381
  %241 = mul nsw i32 %240, %235, !dbg !4382
  %242 = add nsw i32 %241, %233, !dbg !4383
  call void @llvm.dbg.value(metadata i32 %242, metadata !1942, metadata !DIExpression()), !dbg !4362
  br label %243, !dbg !4384

243:                                              ; preds = %237, %231
  %244 = phi i32 [ %242, %237 ], [ %233, %231 ], !dbg !4362
  call void @llvm.dbg.value(metadata i32 %244, metadata !1942, metadata !DIExpression()), !dbg !4362
  %245 = add nuw nsw i32 %232, 1, !dbg !4385
  call void @llvm.dbg.value(metadata i32 %245, metadata !1943, metadata !DIExpression()), !dbg !4364
  %246 = icmp slt i32 %245, %204, !dbg !4386
  br i1 %246, label %231, label %247, !dbg !4365, !llvm.loop !4387

247:                                              ; preds = %243, %206
  %248 = phi i8 [ %208, %206 ], [ %230, %243 ]
  %249 = phi i32 [ 0, %206 ], [ %225, %243 ]
  %250 = phi i32 [ 0, %206 ], [ %244, %243 ], !dbg !4362
  %251 = zext i8 %248 to i32, !dbg !4361
  %252 = add nuw nsw i32 %251, 7, !dbg !4389
  %253 = lshr i32 %252, 3, !dbg !4390
  %254 = add nsw i32 %249, 1, !dbg !4391
  call void @llvm.dbg.value(metadata i32 %254, metadata !1926, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4392
  %255 = sub i32 %254, %250, !dbg !4394
  %256 = mul i32 %255, %253, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %256, metadata !4081, metadata !DIExpression()), !dbg !4395
  %257 = icmp eq i32 %256, 0, !dbg !4396
  br i1 %257, label %258, label %259, !dbg !4399

258:                                              ; preds = %247
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.116, i32 0, i32 0)) #8, !dbg !4400
  call void @abort() #8, !dbg !4400
  br label %259, !dbg !4400

259:                                              ; preds = %258, %247
  call void @llvm.dbg.value(metadata i32 0, metadata !4086, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4395
  call void @llvm.dbg.value(metadata i32 %256, metadata !4086, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4395
  %260 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %8, i32 0, i32 0, !dbg !4402
  store i32 0, i32* %260, align 4, !dbg !4402, !tbaa.struct !3077
  %261 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %8, i32 0, i32 1, !dbg !4402
  store i32 %256, i32* %261, align 4, !dbg !4402, !tbaa.struct !3078
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %190, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %8) #9, !dbg !4403
  br label %262, !dbg !4404

262:                                              ; preds = %259, %192
  %263 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %183, align 4, !dbg !4405, !tbaa !2714
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %263, %struct.halide_buffer_t* %3) #9, !dbg !4406
  br label %264, !dbg !4407

264:                                              ; preds = %181, %262, %142
  %265 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4408
  call void @llvm.dbg.value(metadata i64 %265, metadata !4087, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4409
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4409
  %266 = call i8* @malloc(i32 1024) #8, !dbg !4411
  %267 = icmp eq i8* %266, null, !dbg !4412
  br i1 %267, label %270, label %268, !dbg !4413

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, i8* %266, i32 1023, !dbg !4414
  store i8 0, i8* %269, align 1, !dbg !4415, !tbaa !1134
  br label %270, !dbg !4416

270:                                              ; preds = %264, %268
  %271 = phi i8* [ %269, %268 ], [ null, %264 ], !dbg !4417
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4418
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4418
  %272 = call i8* @halide_string_to_string(i8* %266, i8* %271, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !4420
  %273 = sub i64 %265, %126, !dbg !4421
  %274 = uitofp i64 %273 to double, !dbg !4422
  %275 = fdiv double %274, 1.000000e+06, !dbg !4423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !4424
  call void @llvm.dbg.value(metadata double %275, metadata !2148, metadata !DIExpression()) #10, !dbg !4424
  %276 = call i8* @halide_double_to_string(i8* %272, i8* %271, double %275, i32 1) #8, !dbg !4426
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4427
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4427
  %277 = call i8* @halide_string_to_string(i8* %276, i8* %271, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !4429
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4430
  br i1 %267, label %278, label %279, !dbg !4432

278:                                              ; preds = %270
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4433
  br label %286, !dbg !4434

279:                                              ; preds = %270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4435
  %280 = ptrtoint i8* %277 to i32, !dbg !4437
  %281 = ptrtoint i8* %266 to i32, !dbg !4437
  %282 = add i32 %280, 1, !dbg !4437
  %283 = sub i32 %282, %281, !dbg !4438
  %284 = sext i32 %283 to i64, !dbg !4439
  %285 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %266, i64 %284) #8, !dbg !4440
  call void @halide_print(i8* %0, i8* nonnull %266) #8, !dbg !4441
  br label %286

286:                                              ; preds = %279, %278
  call void @free(i8* %266) #8, !dbg !4442
  br label %287, !dbg !4443

287:                                              ; preds = %70, %286
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !2168, metadata !DIExpression()) #10, !dbg !4444
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %6) #8, !dbg !4446
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %72) #10, !dbg !4443
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %71) #10, !dbg !4447
  br label %288

288:                                              ; preds = %46, %45, %287, %26
  %289 = phi i32 [ -39, %26 ], [ %74, %287 ], [ -42, %45 ], [ -42, %46 ], !dbg !4088
  ret i32 %289, !dbg !4447
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4) unnamed_addr #0 !dbg !4448 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !4453, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !4454, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !4455, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %2, metadata !4456, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %3, metadata !4457, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 %4, metadata !4458, metadata !DIExpression()), !dbg !4468
  %6 = icmp eq i32 %4, 0, !dbg !4469
  br i1 %6, label %15, label %7, !dbg !4470

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 0, metadata !4463, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 0, metadata !4462, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 0, metadata !4459, metadata !DIExpression()), !dbg !4472
  %8 = add nsw i32 %4, -1, !dbg !4473
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %8, !dbg !4474
  %10 = load i64, i64* %9, align 8, !dbg !4474, !tbaa !1031
  %11 = icmp eq i64 %10, 0, !dbg !4475
  br i1 %11, label %49, label %12, !dbg !4476

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 5, i32 %8
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %8
  br label %36, !dbg !4476

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0, !dbg !4477
  %17 = load i64, i64* %16, align 8, !dbg !4477, !tbaa !1050
  %18 = trunc i64 %17 to i32, !dbg !4479
  %19 = inttoptr i32 %18 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4479
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %19, i32 0, i32 0, !dbg !4480
  %21 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %20, align 8, !dbg !4480, !tbaa !2112
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 2, !dbg !4481
  %23 = load i64, i64* %22, align 8, !dbg !4481, !tbaa !1092
  %24 = add i64 %23, %2, !dbg !4482
  %25 = trunc i64 %24 to i32, !dbg !4483
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 1, !dbg !4484
  %27 = load i64, i64* %26, align 8, !dbg !4484, !tbaa !1056
  %28 = trunc i64 %27 to i32, !dbg !4485
  %29 = inttoptr i32 %28 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4485
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %29, i32 0, i32 0, !dbg !4486
  %31 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %30, align 8, !dbg !4486, !tbaa !2112
  %32 = trunc i64 %3 to i32, !dbg !4487
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6, !dbg !4488
  %34 = load i64, i64* %33, align 8, !dbg !4488, !tbaa !1060
  %35 = trunc i64 %34 to i32, !dbg !4489
  tail call void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEjS6_jj(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %21, i32 %25, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %31, i32 %32, i32 %35) #9, !dbg !4490
  br label %49, !dbg !4491

36:                                               ; preds = %12, %36
  %37 = phi i64 [ 0, %12 ], [ %46, %36 ]
  %38 = phi i64 [ 0, %12 ], [ %43, %36 ]
  %39 = phi i64 [ 0, %12 ], [ %45, %36 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !4463, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %38, metadata !4462, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %39, metadata !4459, metadata !DIExpression()), !dbg !4472
  %40 = add i64 %39, %2, !dbg !4492
  %41 = add i64 %38, %3, !dbg !4493
  tail call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %40, i64 %41, i32 %8) #9, !dbg !4494
  call void @llvm.dbg.value(metadata i32 0, metadata !4465, metadata !DIExpression()), !dbg !4495
  %42 = load i64, i64* %13, align 8, !dbg !4496, !tbaa !1031
  %43 = add i64 %42, %38, !dbg !4497
  call void @llvm.dbg.value(metadata i64 %43, metadata !4462, metadata !DIExpression()), !dbg !4472
  %44 = load i64, i64* %14, align 8, !dbg !4498, !tbaa !1031
  %45 = add i64 %44, %39, !dbg !4499
  call void @llvm.dbg.value(metadata i64 %45, metadata !4459, metadata !DIExpression()), !dbg !4472
  %46 = add nuw i64 %37, 1, !dbg !4500
  call void @llvm.dbg.value(metadata i64 %46, metadata !4463, metadata !DIExpression()), !dbg !4471
  %47 = load i64, i64* %9, align 8, !dbg !4474, !tbaa !1031
  %48 = icmp ult i64 %46, %47, !dbg !4475
  br i1 %48, label %36, label %49, !dbg !4476, !llvm.loop !4501

49:                                               ; preds = %36, %7, %15
  ret void, !dbg !4503
}

; Function Attrs: nounwind
define weak dso_local i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !4504 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4508, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4509, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %2, metadata !4510, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !4511, metadata !DIExpression()), !dbg !4514
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*, !dbg !4515
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #10, !dbg !4515
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !4512, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2037, metadata !DIExpression()) #10, !dbg !4517
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #10, !dbg !4517
  call void @llvm.dbg.value(metadata i1 true, metadata !2041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !4517
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5, i8* %0, i1 zeroext true) #8, !dbg !4519
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 4, !dbg !4520
  %8 = load i32, i32* %7, align 4, !dbg !4520, !tbaa !1835
  %9 = icmp eq i32 %8, 0, !dbg !4522
  br i1 %9, label %10, label %51, !dbg !4523

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4524
  %12 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !dbg !4524, !tbaa !2121
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1, !dbg !4525
  store %struct.halide_device_interface_t* %12, %struct.halide_device_interface_t** %13, align 8, !dbg !4526, !tbaa !2121
  %14 = call i8* @malloc(i32 16) #8, !dbg !4527
  call void @llvm.dbg.value(metadata i8* %14, metadata !4513, metadata !DIExpression()), !dbg !4514
  %15 = icmp eq i8* %14, null, !dbg !4528
  br i1 %15, label %16, label %31, !dbg !4530

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !4531
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !4531
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !4531
  %17 = call i8* @malloc(i32 1024) #8, !dbg !4534
  %18 = icmp eq i8* %17, null, !dbg !4535
  br i1 %18, label %19, label %21, !dbg !4536

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4537
  %20 = call i8* @halide_string_to_string(i8* %17, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0)) #8, !dbg !4539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4540
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4542
  br label %30, !dbg !4543

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %17, i32 1023, !dbg !4544
  store i8 0, i8* %22, align 1, !dbg !4545, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4537
  %23 = call i8* @halide_string_to_string(i8* nonnull %17, i8* nonnull %22, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0)) #8, !dbg !4539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4540
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !4546
  %24 = ptrtoint i8* %23 to i32, !dbg !4548
  %25 = ptrtoint i8* %17 to i32, !dbg !4548
  %26 = add i32 %24, 1, !dbg !4548
  %27 = sub i32 %26, %25, !dbg !4549
  %28 = sext i32 %27 to i64, !dbg !4550
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %17, i64 %28) #8, !dbg !4551
  call void @halide_error(i8* %0, i8* nonnull %17) #8, !dbg !4552
  br label %30

30:                                               ; preds = %21, %19
  call void @free(i8* %17) #8, !dbg !4553
  br label %51, !dbg !4554

31:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %14, metadata !4513, metadata !DIExpression()), !dbg !4514
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4555
  %33 = load i64, i64* %32, align 8, !dbg !4555, !tbaa !1199
  %34 = trunc i64 %33 to i32, !dbg !4556
  %35 = inttoptr i32 %34 to i8**, !dbg !4557
  %36 = load i8*, i8** %35, align 8, !dbg !4557, !tbaa !2112
  call void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %36) #9, !dbg !4558
  %37 = load i64, i64* %32, align 8, !dbg !4559, !tbaa !1199
  %38 = trunc i64 %37 to i32, !dbg !4560
  %39 = inttoptr i32 %38 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4560
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %39, i32 0, i32 0, !dbg !4561
  %41 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %40, align 8, !dbg !4561, !tbaa !2112
  %42 = bitcast i8* %14 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !4562
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %41, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %42, align 8, !dbg !4563, !tbaa !2112
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %39, i32 0, i32 1, !dbg !4564
  %44 = load i64, i64* %43, align 8, !dbg !4564, !tbaa !2116
  %45 = add i64 %44, %2, !dbg !4565
  %46 = getelementptr inbounds i8, i8* %14, i32 8, !dbg !4566
  %47 = bitcast i8* %46 to i64*, !dbg !4566
  store i64 %45, i64* %47, align 8, !dbg !4567, !tbaa !2116
  %48 = ptrtoint i8* %14 to i32, !dbg !4568
  %49 = zext i32 %48 to i64, !dbg !4568
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !4569
  store i64 %49, i64* %50, align 8, !dbg !4570, !tbaa !1199
  br label %51, !dbg !4571

51:                                               ; preds = %30, %31, %4
  %52 = phi i32 [ %8, %4 ], [ -11, %30 ], [ 0, %31 ], !dbg !4514
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2168, metadata !DIExpression()) #10, !dbg !4572
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5) #8, !dbg !4574
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #10, !dbg !4575
  ret i32 %52, !dbg !4575
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 !dbg !4576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4578, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !4580, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4584, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !4589, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 0, metadata !4590, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i32 0, metadata !4591, metadata !DIExpression()), !dbg !4595
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !4596
  %5 = load i32, i32* %4, align 4, !dbg !4596, !tbaa !1234
  %6 = icmp sgt i32 %5, 0, !dbg !4598
  br i1 %6, label %7, label %28, !dbg !4599

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !1237
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !1237
  br label %12, !dbg !4599

12:                                               ; preds = %12, %7
  %13 = phi i32 [ 0, %7 ], [ %26, %12 ]
  %14 = phi i64 [ 0, %7 ], [ %25, %12 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !4591, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %14, metadata !4590, metadata !DIExpression()), !dbg !4593
  %15 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %13, i32 0, !dbg !4600
  %16 = load i32, i32* %15, align 4, !dbg !4600, !tbaa !1249
  %17 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %13, i32 0, !dbg !4602
  %18 = load i32, i32* %17, align 4, !dbg !4602, !tbaa !1249
  %19 = sub nsw i32 %16, %18, !dbg !4603
  %20 = sext i32 %19 to i64, !dbg !4604
  %21 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %13, i32 2, !dbg !4605
  %22 = load i32, i32* %21, align 4, !dbg !4605, !tbaa !1245
  %23 = sext i32 %22 to i64, !dbg !4606
  %24 = mul nsw i64 %20, %23, !dbg !4607
  %25 = add nsw i64 %24, %14, !dbg !4608
  call void @llvm.dbg.value(metadata i64 %25, metadata !4590, metadata !DIExpression()), !dbg !4593
  %26 = add nuw nsw i32 %13, 1, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %26, metadata !4591, metadata !DIExpression()), !dbg !4595
  %27 = icmp slt i32 %26, %5, !dbg !4598
  br i1 %27, label %12, label %28, !dbg !4599, !llvm.loop !4610

28:                                               ; preds = %12, %3
  %29 = phi i64 [ 0, %3 ], [ %25, %12 ], !dbg !4593
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4612
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !4614
  %31 = load i8, i8* %30, align 1, !dbg !4614, !tbaa !1215
  %32 = zext i8 %31 to i32, !dbg !4614
  %33 = add nuw nsw i32 %32, 7, !dbg !4615
  %34 = lshr i32 %33, 3, !dbg !4616
  %35 = zext i32 %34 to i64, !dbg !4617
  %36 = mul nsw i64 %29, %35, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %36, metadata !4590, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %36, metadata !4581, metadata !DIExpression()), !dbg !4583
  %37 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9, !dbg !4619
  ret i32 %37, !dbg !4620
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 !dbg !4621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4623, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4624, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i32 %2, metadata !4625, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i32 %3, metadata !4626, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !4627, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4630, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i32 %2, metadata !4635, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i32 %3, metadata !4636, metadata !DIExpression()), !dbg !4638
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !4640
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !dbg !4640, !tbaa !1237
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 0, !dbg !4641
  %9 = load i32, i32* %8, align 4, !dbg !4641, !tbaa !1249
  %10 = sub nsw i32 %3, %9, !dbg !4642
  %11 = sext i32 %10 to i64, !dbg !4643
  %12 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 2, !dbg !4644
  %13 = load i32, i32* %12, align 4, !dbg !4644, !tbaa !1245
  %14 = sext i32 %13 to i64, !dbg !4645
  %15 = mul nsw i64 %11, %14, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %15, metadata !4637, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4647
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !4649
  %17 = load i8, i8* %16, align 1, !dbg !4649, !tbaa !1215
  %18 = zext i8 %17 to i32, !dbg !4649
  %19 = add nuw nsw i32 %18, 7, !dbg !4650
  %20 = lshr i32 %19, 3, !dbg !4651
  %21 = zext i32 %20 to i64, !dbg !4652
  %22 = mul nsw i64 %15, %21, !dbg !4653
  call void @llvm.dbg.value(metadata i64 %22, metadata !4637, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %22, metadata !4628, metadata !DIExpression()), !dbg !4629
  %23 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9, !dbg !4654
  ret i32 %23, !dbg !4655
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4658, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4659, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4664
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4664
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4664
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !4666
  %4 = icmp eq i8* %3, null, !dbg !4667
  br i1 %4, label %7, label %5, !dbg !4668

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !4669
  store i8 0, i8* %6, align 1, !dbg !4670, !tbaa !1134
  br label %7, !dbg !4671

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !4672
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4673
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4673
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i32 0, i32 0)) #8, !dbg !4675
  %10 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !4676
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1888, metadata !DIExpression()) #10, !dbg !4677
  call void @llvm.dbg.value(metadata i8* %10, metadata !1891, metadata !DIExpression()) #10, !dbg !4677
  %11 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %10) #8, !dbg !4679
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4680
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !4682
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4683
  %14 = load i64, i64* %13, align 8, !dbg !4683, !tbaa !1199
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2213, metadata !DIExpression()) #10, !dbg !4684
  call void @llvm.dbg.value(metadata i64 %14, metadata !2216, metadata !DIExpression()) #10, !dbg !4684
  %15 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %8, i64 %14, i32 1) #8, !dbg !4686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4687
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4687
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %8, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !4689
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4690
  br i1 %4, label %17, label %18, !dbg !4692

17:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4693
  br label %25, !dbg !4694

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4695
  %19 = ptrtoint i8* %16 to i32, !dbg !4697
  %20 = ptrtoint i8* %3 to i32, !dbg !4697
  %21 = add i32 %19, 1, !dbg !4697
  %22 = sub i32 %21, %20, !dbg !4698
  %23 = sext i32 %22 to i64, !dbg !4699
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #8, !dbg !4700
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !4701
  br label %25

25:                                               ; preds = %17, %18
  call void @free(i8* %3) #8, !dbg !4702
  %26 = load i64, i64* %13, align 8, !dbg !4703, !tbaa !1199
  %27 = icmp eq i64 %26, 0, !dbg !4705
  br i1 %27, label %57, label %28, !dbg !4706

28:                                               ; preds = %25
  %29 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4707
  call void @llvm.dbg.value(metadata i64 %29, metadata !4660, metadata !DIExpression()), !dbg !4663
  %30 = load i64, i64* %13, align 8, !dbg !4708, !tbaa !1199
  %31 = trunc i64 %30 to i32, !dbg !4709
  call void @llvm.dbg.value(metadata i32 %31, metadata !4661, metadata !DIExpression()), !dbg !4663
  %32 = inttoptr i32 %31 to i8**, !dbg !4710
  %33 = load i8*, i8** %32, align 8, !dbg !4710, !tbaa !2112
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %33) #9, !dbg !4711
  %34 = inttoptr i32 %31 to i8*, !dbg !4712
  call void @free(i8* %34) #8, !dbg !4713
  %35 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4714
  call void @llvm.dbg.value(metadata i64 %35, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4715
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4715
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4715
  %36 = call i8* @malloc(i32 1024) #8, !dbg !4717
  %37 = icmp eq i8* %36, null, !dbg !4718
  br i1 %37, label %40, label %38, !dbg !4719

38:                                               ; preds = %28
  %39 = getelementptr inbounds i8, i8* %36, i32 1023, !dbg !4720
  store i8 0, i8* %39, align 1, !dbg !4721, !tbaa !1134
  br label %40, !dbg !4722

40:                                               ; preds = %28, %38
  %41 = phi i8* [ %39, %38 ], [ null, %28 ], !dbg !4723
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4724
  %42 = call i8* @halide_string_to_string(i8* %36, i8* %41, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !4726
  %43 = sub i64 %35, %29, !dbg !4727
  %44 = uitofp i64 %43 to double, !dbg !4728
  %45 = fdiv double %44, 1.000000e+06, !dbg !4729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2145, metadata !DIExpression()) #10, !dbg !4730
  call void @llvm.dbg.value(metadata double %45, metadata !2148, metadata !DIExpression()) #10, !dbg !4730
  %46 = call i8* @halide_double_to_string(i8* %42, i8* %41, double %45, i32 1) #8, !dbg !4732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4733
  %47 = call i8* @halide_string_to_string(i8* %46, i8* %41, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !4735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4736
  br i1 %37, label %48, label %49, !dbg !4738

48:                                               ; preds = %40
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4739
  br label %56, !dbg !4740

49:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4741
  %50 = ptrtoint i8* %47 to i32, !dbg !4743
  %51 = ptrtoint i8* %36 to i32, !dbg !4743
  %52 = add i32 %50, 1, !dbg !4743
  %53 = sub i32 %52, %51, !dbg !4744
  %54 = sext i32 %53 to i64, !dbg !4745
  %55 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %54) #8, !dbg !4746
  call void @halide_print(i8* %0, i8* nonnull %36) #8, !dbg !4747
  br label %56

56:                                               ; preds = %49, %48
  call void @free(i8* %36) #8, !dbg !4748
  br label %57

57:                                               ; preds = %25, %56
  ret i32 0, !dbg !4749
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_wrap_buffer(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 !dbg !4750 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4752, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4753, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %2, metadata !4754, metadata !DIExpression()), !dbg !4756
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4757
  %5 = load i64, i64* %4, align 8, !dbg !4757, !tbaa !1199
  %6 = icmp eq i64 %5, 0, !dbg !4757
  br i1 %6, label %10, label %7, !dbg !4760

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.119, i32 0, i32 0)) #8, !dbg !4761
  tail call void @abort() #8, !dbg !4761
  %8 = load i64, i64* %4, align 8, !dbg !4763, !tbaa !1199
  %9 = icmp eq i64 %8, 0, !dbg !4765
  br i1 %9, label %10, label %40, !dbg !4766

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i32 16) #8, !dbg !4767
  call void @llvm.dbg.value(metadata i8* %11, metadata !4755, metadata !DIExpression()), !dbg !4756
  %12 = icmp eq i8* %11, null, !dbg !4768
  br i1 %12, label %13, label %28, !dbg !4770

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1683, metadata !DIExpression()) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()) #10, !dbg !4771
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()) #10, !dbg !4771
  %14 = tail call i8* @malloc(i32 1024) #8, !dbg !4774
  %15 = icmp eq i8* %14, null, !dbg !4775
  br i1 %15, label %16, label %18, !dbg !4776

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4777
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4777
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i32 0, i32 0)) #8, !dbg !4779
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4780
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4782
  br label %27, !dbg !4783

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i32 1023, !dbg !4784
  store i8 0, i8* %19, align 1, !dbg !4785, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1694, metadata !DIExpression()) #10, !dbg !4777
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i32 0, i32 0), metadata !1697, metadata !DIExpression()) #10, !dbg !4777
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i32 0, i32 0)) #8, !dbg !4779
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1703, metadata !DIExpression()) #10, !dbg !4780
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1717, metadata !DIExpression()) #10, !dbg !4786
  %21 = ptrtoint i8* %20 to i32, !dbg !4788
  %22 = ptrtoint i8* %14 to i32, !dbg !4788
  %23 = add i32 %21, 1, !dbg !4788
  %24 = sub i32 %23, %22, !dbg !4789
  %25 = sext i32 %24 to i64, !dbg !4790
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %25) #8, !dbg !4791
  tail call void @halide_error(i8* %0, i8* nonnull %14) #8, !dbg !4792
  br label %27

27:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8, !dbg !4793
  br label %40, !dbg !4794

28:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !4755, metadata !DIExpression()), !dbg !4756
  %29 = trunc i64 %2 to i32, !dbg !4795
  %30 = inttoptr i32 %29 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, !dbg !4795
  %31 = bitcast i8* %11 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !4796
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %30, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %31, align 8, !dbg !4797, !tbaa !2112
  %32 = getelementptr inbounds i8, i8* %11, i32 8, !dbg !4798
  %33 = bitcast i8* %32 to i64*, !dbg !4798
  store i64 0, i64* %33, align 8, !dbg !4799, !tbaa !2116
  %34 = ptrtoint i8* %11 to i32, !dbg !4800
  %35 = zext i32 %34 to i64, !dbg !4800
  store i64 %35, i64* %4, align 8, !dbg !4801, !tbaa !1199
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4802
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %36, align 8, !dbg !4803, !tbaa !2121
  %37 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i32 0, i32 15), align 4, !dbg !4804, !tbaa !2123
  %38 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %37, i32 0, i32 0, !dbg !4805
  %39 = load void ()*, void ()** %38, align 4, !dbg !4805, !tbaa !2126
  tail call void %39() #8, !dbg !4806
  br label %40, !dbg !4807

40:                                               ; preds = %27, %28, %7
  %41 = phi i32 [ -2, %7 ], [ -11, %27 ], [ 0, %28 ], !dbg !4756
  ret i32 %41, !dbg !4808
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_detach_buffer(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4809 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4812, metadata !DIExpression()), !dbg !4813
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4814
  %4 = load i64, i64* %3, align 8, !dbg !4814, !tbaa !1199
  %5 = icmp eq i64 %4, 0, !dbg !4816
  br i1 %5, label %21, label %6, !dbg !4817

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4818
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4818, !tbaa !2121
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4818
  br i1 %9, label %12, label %10, !dbg !4821

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4822
  tail call void @abort() #8, !dbg !4822
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4824, !tbaa !2121
  br label %12, !dbg !4822

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %6 ], [ %11, %10 ], !dbg !4824
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i32 0, i32 15, !dbg !4825
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 4, !dbg !4825, !tbaa !2123
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i32 0, i32 1, !dbg !4826
  %17 = load void ()*, void ()** %16, align 4, !dbg !4826, !tbaa !2257
  tail call void %17() #8, !dbg !4827
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !dbg !4828, !tbaa !2121
  %18 = load i64, i64* %3, align 8, !dbg !4829, !tbaa !1199
  %19 = trunc i64 %18 to i32, !dbg !4830
  %20 = inttoptr i32 %19 to i8*, !dbg !4830
  tail call void @free(i8* %20) #8, !dbg !4831
  store i64 0, i64* %3, align 8, !dbg !4832, !tbaa !1199
  br label %21, !dbg !4833

21:                                               ; preds = %2, %12
  ret i32 0, !dbg !4834
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_get_buffer(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !4835 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4839, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4840, metadata !DIExpression()), !dbg !4841
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4842
  %4 = load i64, i64* %3, align 8, !dbg !4842, !tbaa !1199
  %5 = icmp eq i64 %4, 0, !dbg !4844
  br i1 %5, label %20, label %6, !dbg !4845

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4846
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4846, !tbaa !2121
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4846
  %10 = trunc i64 %4 to i32, !dbg !4849
  br i1 %9, label %14, label %11, !dbg !4849

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4850
  tail call void @abort() #8, !dbg !4850
  %12 = load i64, i64* %3, align 8, !dbg !4852, !tbaa !1199
  %13 = trunc i64 %12 to i32, !dbg !4850
  br label %14, !dbg !4850

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4853
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %16, i32 0, i32 0, !dbg !4854
  %18 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %17, align 8, !dbg !4854, !tbaa !2112
  %19 = ptrtoint %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %18 to i32, !dbg !4855
  br label %20, !dbg !4856

20:                                               ; preds = %2, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %2 ], !dbg !4841
  ret i32 %21, !dbg !4857
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_metal_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !4858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4862, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4863, metadata !DIExpression()), !dbg !4864
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !4865
  %4 = load i64, i64* %3, align 8, !dbg !4865, !tbaa !1199
  %5 = icmp eq i64 %4, 0, !dbg !4867
  br i1 %5, label %19, label %6, !dbg !4868

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !4869
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4869, !tbaa !2121
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4869
  %10 = trunc i64 %4 to i32, !dbg !4872
  br i1 %9, label %14, label %11, !dbg !4872

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.123, i32 0, i32 0)) #8, !dbg !4873
  tail call void @abort() #8, !dbg !4873
  %12 = load i64, i64* %3, align 8, !dbg !4875, !tbaa !1199
  %13 = trunc i64 %12 to i32, !dbg !4873
  br label %14, !dbg !4873

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4876
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %16, i32 0, i32 1, !dbg !4877
  %18 = load i64, i64* %17, align 8, !dbg !4877, !tbaa !2116
  br label %19, !dbg !4878

19:                                               ; preds = %2, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %2 ], !dbg !4864
  ret i64 %20, !dbg !4879
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_metal_device_interface() local_unnamed_addr #6 !dbg !4880 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4883
}

; Function Attrs: nounwind
define weak dso_local void @halide_metal_cleanup() #4 !dbg !4884 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !4885, metadata !DIExpression()) #10, !dbg !4894
  call void @llvm.dbg.value(metadata i8* null, metadata !4891, metadata !DIExpression()) #10, !dbg !4894
  call void @llvm.dbg.value(metadata void (i8*)* @_ZN6Halide7Runtime8Internal17release_ns_objectEPv, metadata !4892, metadata !DIExpression()) #10, !dbg !4894
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2413, metadata !DIExpression()) #10, !dbg !4896
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !2416, metadata !DIExpression()) #10, !dbg !4896
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0), metadata !4893, metadata !DIExpression()) #10, !dbg !4894
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !4898
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* null, i1 zeroext true, %struct.halide_metal_device* null, void (i8*)* nonnull @_ZN6Halide7Runtime8Internal17release_ns_objectEPv) #8, !dbg !4899
  %1 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !dbg !4900, !tbaa !4902
  %2 = icmp eq i32 %1, 0, !dbg !4903
  br i1 %2, label %3, label %5, !dbg !4904

3:                                                ; preds = %0
  %4 = load i8*, i8** bitcast (%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2) to i8**), align 4, !dbg !4905, !tbaa !2477
  tail call void @free(i8* %4) #8, !dbg !4907
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !dbg !4908, !tbaa !2477
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !dbg !4909, !tbaa !2455
  br label %5, !dbg !4910

5:                                                ; preds = %0, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !4911
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8, !dbg !4913
  %6 = tail call i32 @halide_metal_device_release(i8* null) #9, !dbg !4914
  ret void, !dbg !4915
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

declare !dbg !4916 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4917 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4920 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4923 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4926 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !4929 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4932 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare !dbg !4935 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !dbg !4938 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !4940, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, metadata !4941, metadata !DIExpression()), !dbg !4948
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1, !dbg !4949
  %4 = load i32, i32* %3, align 4, !dbg !4949, !tbaa !2455
  %5 = icmp eq i32 %4, 0, !dbg !4951
  br i1 %5, label %6, label %10, !dbg !4952

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #9, !dbg !4953
  br i1 %7, label %8, label %61, !dbg !4956

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !dbg !4957, !tbaa !2455
  br label %10, !dbg !4956

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ], !dbg !4957
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3, !dbg !4959
  %13 = load i32, i32* %12, align 4, !dbg !4959, !tbaa !4902
  %14 = add nsw i32 %13, 1, !dbg !4960
  %15 = sitofp i32 %14 to float, !dbg !4961
  %16 = shl nuw i32 1, %11, !dbg !4962
  %17 = sitofp i32 %16 to float, !dbg !4963
  %18 = fmul float %17, 5.000000e-01, !dbg !4964
  %19 = fcmp olt float %18, %15, !dbg !4965
  br i1 %19, label %20, label %28, !dbg !4966

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1, !dbg !4967
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #9, !dbg !4970
  br i1 %22, label %23, label %61, !dbg !4971

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !dbg !4972, !tbaa !4902
  %25 = load i32, i32* %3, align 4, !dbg !4973, !tbaa !2455
  %26 = add nsw i32 %24, 1, !dbg !4972
  %27 = shl nuw i32 1, %25, !dbg !4974
  br label %28, !dbg !4971

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ], !dbg !4974
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ], !dbg !4972
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ], !dbg !4973
  store i32 %30, i32* %12, align 4, !dbg !4972, !tbaa !4902
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i32 0, i32 0, !dbg !4975
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %32, align 4, !dbg !4975, !tbaa !2491
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i32 0, i32 2, !dbg !4976
  %35 = load i32, i32* %34, align 4, !dbg !4976, !tbaa !2485
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %33, metadata !2458, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 %35, metadata !2461, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 %31, metadata !2462, metadata !DIExpression()), !dbg !4977
  %36 = ptrtoint %struct.halide_metal_device* %33 to i32, !dbg !4979
  %37 = add i32 %35, %36, !dbg !4980
  call void @llvm.dbg.value(metadata i32 %37, metadata !2463, metadata !DIExpression()), !dbg !4977
  %38 = mul i32 %37, -1640531527, !dbg !4981
  %39 = sub i32 32, %31, !dbg !4982
  %40 = lshr i32 %38, %39, !dbg !4983
  call void @llvm.dbg.value(metadata i32 %40, metadata !4942, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i32 0, metadata !4943, metadata !DIExpression()), !dbg !4984
  %41 = icmp eq i32 %31, 31, !dbg !4985
  br i1 %41, label %60, label %42, !dbg !4986

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %44, align 4, !tbaa !2477
  br label %48, !dbg !4986

46:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %55, metadata !4943, metadata !DIExpression()), !dbg !4984
  %47 = icmp slt i32 %55, %29, !dbg !4985
  br i1 %47, label %48, label %60, !dbg !4986, !llvm.loop !4987

48:                                               ; preds = %42, %46
  %49 = phi i32 [ 0, %42 ], [ %55, %46 ]
  call void @llvm.dbg.value(metadata i32 %49, metadata !4943, metadata !DIExpression()), !dbg !4984
  %50 = add i32 %49, %40, !dbg !4989
  %51 = and i32 %50, %43, !dbg !4990
  call void @llvm.dbg.value(metadata i32 %51, metadata !4945, metadata !DIExpression()), !dbg !4991
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %45, i32 %51, i32 2, !dbg !4992
  %53 = load i32, i32* %52, align 4, !dbg !4992, !tbaa !2485
  %54 = icmp ult i32 %53, 2, !dbg !4994
  %55 = add nuw nsw i32 %49, 1, !dbg !4995
  call void @llvm.dbg.value(metadata i32 %55, metadata !4943, metadata !DIExpression()), !dbg !4984
  br i1 %54, label %56, label %46, !dbg !4996

56:                                               ; preds = %48
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %45, i32 %51, !dbg !4997
  %58 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %57 to i8*, !dbg !4998
  %59 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1 to i8*, !dbg !4998
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %58, i8* nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !dbg !4998, !tbaa.struct !5000
  br label %61

60:                                               ; preds = %46, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.129, i32 0, i32 0)) #8, !dbg !5001
  tail call void @abort() #8, !dbg !5001
  br label %61, !dbg !5005

61:                                               ; preds = %56, %60, %20, %6
  %62 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %56 ], [ false, %60 ], !dbg !4948
  ret i1 %62, !dbg !5006
}

declare !dbg !5007 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 !dbg !5010 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !5012, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i32 %1, metadata !5013, metadata !DIExpression()), !dbg !5029
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1, !dbg !5030
  %4 = load i32, i32* %3, align 4, !dbg !5030, !tbaa !2455
  %5 = icmp eq i32 %4, %1, !dbg !5031
  br i1 %5, label %35, label %6, !dbg !5032

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 undef, metadata !5014, metadata !DIExpression()), !dbg !5033
  %7 = shl nuw i32 1, %4, !dbg !5034
  call void @llvm.dbg.value(metadata i32 %7, metadata !5017, metadata !DIExpression()), !dbg !5033
  %8 = shl i32 16, %1, !dbg !5035
  %9 = tail call i8* @malloc(i32 %8) #8, !dbg !5036
  call void @llvm.dbg.value(metadata i8* %9, metadata !5018, metadata !DIExpression()), !dbg !5033
  %10 = icmp eq i8* %9, null, !dbg !5037
  br i1 %10, label %35, label %11, !dbg !5039

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %9, metadata !5018, metadata !DIExpression()), !dbg !5033
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i32 %8) #8, !dbg !5040
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2, !dbg !5041
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %13, align 4, !dbg !5041, !tbaa !2477
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14, metadata !5019, metadata !DIExpression()), !dbg !5033
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %13 to i8**, !dbg !5042
  store i8* %9, i8** %15, align 4, !dbg !5042, !tbaa !2477
  store i32 %1, i32* %3, align 4, !dbg !5043, !tbaa !2455
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3, !dbg !5044
  %17 = load i32, i32* %16, align 4, !dbg !5044, !tbaa !4902
  %18 = icmp sgt i32 %17, 0, !dbg !5045
  %19 = icmp ne i32 %4, 31
  %20 = and i1 %18, %19, !dbg !5046
  call void @llvm.dbg.value(metadata i32 0, metadata !5020, metadata !DIExpression()), !dbg !5047
  br i1 %20, label %21, label %33, !dbg !5046

21:                                               ; preds = %11, %30
  %22 = phi i32 [ %31, %30 ], [ 0, %11 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !5020, metadata !DIExpression()), !dbg !5047
  %23 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14, i32 %22, i32 2, !dbg !5048
  %24 = load i32, i32* %23, align 4, !dbg !5048, !tbaa !2485
  %25 = icmp ult i32 %24, 2, !dbg !5049
  br i1 %25, label %30, label %26, !dbg !5049

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14, i32 %22, !dbg !5050
  %28 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %27) #9, !dbg !5051
  call void @llvm.dbg.value(metadata i1 %28, metadata !5024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5052
  br i1 %28, label %30, label %29, !dbg !5053

29:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.130, i32 0, i32 0)) #8, !dbg !5055
  tail call void @abort() #8, !dbg !5055
  br label %30, !dbg !5055

30:                                               ; preds = %21, %26, %29
  %31 = add nuw nsw i32 %22, 1, !dbg !5058
  call void @llvm.dbg.value(metadata i32 %31, metadata !5020, metadata !DIExpression()), !dbg !5047
  %32 = icmp slt i32 %31, %7, !dbg !5059
  br i1 %32, label %21, label %33, !dbg !5060, !llvm.loop !5061

33:                                               ; preds = %30, %11
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14 to i8*, !dbg !5063
  tail call void @free(i8* %34) #8, !dbg !5064
  br label %35

35:                                               ; preds = %2, %33, %6
  %36 = phi i1 [ false, %6 ], [ true, %33 ], [ true, %2 ], !dbg !5029
  ret i1 %36, !dbg !5065
}

declare !dbg !5066 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #3

declare !dbg !5069 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i1 zeroext %2, %struct.halide_metal_device* %3, void (i8*)* nonnull %4) local_unnamed_addr #4 comdat align 2 !dbg !5070 {
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !5075, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i8* %1, metadata !5076, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %2, metadata !5077, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !5078, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !5079, metadata !DIExpression()), !dbg !5082
  %7 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3, !dbg !5083
  %8 = load i32, i32* %7, align 4, !dbg !5083, !tbaa !4902
  %9 = icmp eq i32 %8, 0, !dbg !5085
  br i1 %9, label %110, label %10, !dbg !5086

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !5080, metadata !DIExpression()), !dbg !5087
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1, !dbg !5088
  %12 = load i32, i32* %11, align 4, !dbg !5088, !tbaa !2455
  %13 = icmp eq i32 %12, 31, !dbg !5090
  br i1 %13, label %110, label %14, !dbg !5091

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %16 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 2
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 5, i32 0
  %23 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5092, !tbaa !2477
  br label %24, !dbg !5091

24:                                               ; preds = %14, %104
  %25 = phi i32 [ %12, %14 ], [ %105, %104 ]
  %26 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %23, %14 ], [ %106, %104 ], !dbg !5092
  %27 = phi i32 [ 0, %14 ], [ %107, %104 ]
  call void @llvm.dbg.value(metadata i32 %27, metadata !5080, metadata !DIExpression()), !dbg !5087
  %28 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i32 %27, i32 2, !dbg !5095
  %29 = load i32, i32* %28, align 4, !dbg !5095, !tbaa !2485
  %30 = icmp eq i32 %29, 0, !dbg !5096
  br i1 %30, label %104, label %31, !dbg !5097

31:                                               ; preds = %24
  br i1 %2, label %36, label %32, !dbg !5098

32:                                               ; preds = %31
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i32 %27, i32 0, !dbg !5099
  %34 = load %struct.halide_metal_device*, %struct.halide_metal_device** %33, align 4, !dbg !5099, !tbaa !2491
  %35 = icmp eq %struct.halide_metal_device* %34, %3, !dbg !5100
  br i1 %35, label %36, label %104, !dbg !5101

36:                                               ; preds = %32, %31
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i32 %27, i32 3, !dbg !5102
  %38 = load i32, i32* %37, align 4, !dbg !5102, !tbaa !2501
  %39 = icmp eq i32 %38, 0, !dbg !5103
  br i1 %39, label %40, label %104, !dbg !5104

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #10, !dbg !5105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1095, metadata !DIExpression()) #10, !dbg !5107
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !5107
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !5107
  store i8* %1, i8** %17, align 4, !dbg !5109, !tbaa !2956
  store i8 1, i8* %18, align 4, !dbg !5110, !tbaa !2960
  %41 = call i8* @malloc(i32 1024) #8, !dbg !5111
  store i8* %41, i8** %19, align 4, !dbg !5112, !tbaa !2964
  store i8* %41, i8** %20, align 4, !dbg !5113, !tbaa !2987
  %42 = icmp eq i8* %41, null, !dbg !5114
  br i1 %42, label %45, label %43, !dbg !5115

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, i8* %41, i32 1023, !dbg !5116
  store i8* %44, i8** %21, align 4, !dbg !5117, !tbaa !3609
  store i8 0, i8* %44, align 1, !dbg !5118, !tbaa !1134
  br label %46, !dbg !5119

45:                                               ; preds = %40
  store i8* null, i8** %21, align 4, !dbg !5120, !tbaa !3609
  br label %46

46:                                               ; preds = %43, %45
  %47 = phi i8* [ %44, %43 ], [ null, %45 ], !dbg !5121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5123
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.132, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5123
  %48 = call i8* @halide_string_to_string(i8* %41, i8* %47, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.132, i32 0, i32 0)) #8, !dbg !5124
  store i8* %48, i8** %20, align 4, !dbg !5125, !tbaa !2987
  %49 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5126, !tbaa !2477
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %49, i32 %27, i32 1, !dbg !5127
  %51 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %50 to i8**, !dbg !5127
  %52 = load i8*, i8** %51, align 4, !dbg !5127, !tbaa !2575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1888, metadata !DIExpression()) #10, !dbg !5128
  call void @llvm.dbg.value(metadata i8* %52, metadata !1891, metadata !DIExpression()) #10, !dbg !5128
  %53 = load i8*, i8** %21, align 4, !dbg !5130, !tbaa !3609
  %54 = call i8* @halide_pointer_to_string(i8* %48, i8* %53, i8* %52) #8, !dbg !5131
  store i8* %54, i8** %20, align 4, !dbg !5132, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5133
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5133
  %55 = load i8*, i8** %21, align 4, !dbg !5135, !tbaa !3609
  %56 = call i8* @halide_string_to_string(i8* %54, i8* %55, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0)) #8, !dbg !5136
  store i8* %56, i8** %20, align 4, !dbg !5137, !tbaa !2987
  %57 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5138, !tbaa !2477
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %57, i32 %27, i32 2, !dbg !5139
  %59 = load i32, i32* %58, align 4, !dbg !5139, !tbaa !2485
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2527, metadata !DIExpression()) #10, !dbg !5140
  call void @llvm.dbg.value(metadata i32 %59, metadata !2530, metadata !DIExpression()) #10, !dbg !5140
  %60 = load i8*, i8** %21, align 4, !dbg !5142, !tbaa !3609
  %61 = zext i32 %59 to i64, !dbg !5143
  %62 = call i8* @halide_uint64_to_string(i8* %56, i8* %60, i64 %61, i32 1) #8, !dbg !5144
  store i8* %62, i8** %20, align 4, !dbg !5145, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5146
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5146
  %63 = load i8*, i8** %21, align 4, !dbg !5148, !tbaa !3609
  %64 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0)) #8, !dbg !5149
  store i8* %64, i8** %20, align 4, !dbg !5150, !tbaa !2987
  %65 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5151, !tbaa !2477
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %65, i32 %27, i32 0, !dbg !5152
  %67 = bitcast %struct.halide_metal_device** %66 to i8**, !dbg !5152
  %68 = load i8*, i8** %67, align 4, !dbg !5152, !tbaa !2491
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1888, metadata !DIExpression()) #10, !dbg !5153
  call void @llvm.dbg.value(metadata i8* %68, metadata !1891, metadata !DIExpression()) #10, !dbg !5153
  %69 = load i8*, i8** %21, align 4, !dbg !5155, !tbaa !3609
  %70 = call i8* @halide_pointer_to_string(i8* %64, i8* %69, i8* %68) #8, !dbg !5156
  store i8* %70, i8** %20, align 4, !dbg !5157, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5158
  %71 = load i8*, i8** %21, align 4, !dbg !5160, !tbaa !3609
  %72 = call i8* @halide_string_to_string(i8* %70, i8* %71, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !5161
  store i8* %72, i8** %20, align 4, !dbg !5162, !tbaa !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1121, metadata !DIExpression()) #10, !dbg !5163
  %73 = load i8*, i8** %19, align 4, !dbg !5165, !tbaa !2964
  %74 = icmp eq i8* %73, null, !dbg !5165
  %75 = load i8*, i8** %17, align 4, !dbg !5166, !tbaa !2956
  br i1 %74, label %76, label %77, !dbg !5167

76:                                               ; preds = %46
  call void @halide_error(i8* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !5168
  br label %86, !dbg !5169

77:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !5170
  %78 = ptrtoint i8* %72 to i32, !dbg !5172
  %79 = ptrtoint i8* %73 to i32, !dbg !5172
  %80 = add i32 %78, 1, !dbg !5172
  %81 = sub i32 %80, %79, !dbg !5173
  %82 = sext i32 %81 to i64, !dbg !5174
  %83 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %75, i8* nonnull %73, i64 %82) #8, !dbg !5175
  %84 = load i8*, i8** %17, align 4, !dbg !5176, !tbaa !2956
  %85 = load i8*, i8** %19, align 4, !dbg !5177, !tbaa !2964
  call void @halide_print(i8* %84, i8* %85) #8, !dbg !5178
  br label %86

86:                                               ; preds = %77, %76
  %87 = load i8, i8* %18, align 4, !dbg !5179, !tbaa !2960, !range !3017
  %88 = icmp eq i8 %87, 0, !dbg !5179
  %89 = load i8*, i8** %19, align 4
  %90 = icmp eq i8* %89, %22
  %91 = or i1 %88, %90, !dbg !5180
  br i1 %91, label %93, label %92, !dbg !5180

92:                                               ; preds = %86
  call void @free(i8* %89) #8, !dbg !5181
  br label %93, !dbg !5182

93:                                               ; preds = %86, %92
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #10, !dbg !5105
  %94 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5183, !tbaa !2477
  %95 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %94, i32 %27, i32 1, !dbg !5184
  %96 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %95 to i8**, !dbg !5184
  %97 = load i8*, i8** %96, align 4, !dbg !5184, !tbaa !2575
  call void %4(i8* %97) #8, !dbg !5185
  %98 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 4, !dbg !5186, !tbaa !2477
  %99 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %98, i32 %27, i32 1, !dbg !5187
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %99, align 4, !dbg !5188, !tbaa !2575
  %100 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %98, i32 %27, i32 2, !dbg !5189
  store i32 1, i32* %100, align 4, !dbg !5190, !tbaa !2485
  %101 = load i32, i32* %7, align 4, !dbg !5191, !tbaa !4902
  %102 = add nsw i32 %101, -1, !dbg !5191
  store i32 %102, i32* %7, align 4, !dbg !5191, !tbaa !4902
  %103 = load i32, i32* %11, align 4, !dbg !5088, !tbaa !2455
  br label %104, !dbg !5192

104:                                              ; preds = %24, %32, %36, %93
  %105 = phi i32 [ %25, %24 ], [ %25, %32 ], [ %25, %36 ], [ %103, %93 ], !dbg !5088
  %106 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %26, %24 ], [ %26, %32 ], [ %26, %36 ], [ %98, %93 ]
  %107 = add nuw nsw i32 %27, 1, !dbg !5193
  call void @llvm.dbg.value(metadata i32 %107, metadata !5080, metadata !DIExpression()), !dbg !5087
  %108 = shl nuw i32 1, %105, !dbg !5194
  %109 = icmp slt i32 %107, %108, !dbg !5090
  br i1 %109, label %24, label %110, !dbg !5091, !llvm.loop !5195

110:                                              ; preds = %104, %10, %5
  ret void, !dbg !5197
}

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_metal.cpp() #7 !dbg !5198 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE to i8*), align 8, !dbg !5200
  %2 = icmp eq i8 %1, 0, !dbg !5200
  br i1 %2, label %3, label %4, !dbg !5200

3:                                                ; preds = %0
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !5203, metadata !DIExpression()), !dbg !5209
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !dbg !5211, !tbaa !2455
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !dbg !5212, !tbaa !2477
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !dbg !5213, !tbaa !4902
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 4), align 4, !dbg !5214, !tbaa !2431
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE, align 8, !dbg !5200
  br label %4, !dbg !5200

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

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
!llvm.module.flags = !{!993, !994, !995}
!llvm.ident = !{!996}

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
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedSpinLock", scope: !3, file: !9, line: 9, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal14ScopedSpinLockE")
!11 = !{!12, !15, !19}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !10, file: !9, line: 13, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!15 = !DISubprogram(name: "ScopedSpinLock", scope: !10, file: !9, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !14}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!19 = !DISubprogram(name: "~ScopedSpinLock", scope: !10, file: !9, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !18}
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "device", linkageName: "_ZN6Halide7Runtime8Internal5Metal6deviceE", scope: !2, file: !6, line: 284, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_device", scope: !2, file: !6, line: 24, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_metal_device", file: !28, line: 73, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS19halide_metal_device")
!28 = !DIFile(filename: "src/runtime/HalideRuntimeMetal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "queue", linkageName: "_ZN6Halide7Runtime8Internal5Metal5queueE", scope: !2, file: !6, line: 285, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_command_queue", scope: !2, file: !6, line: 25, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_metal_command_queue", file: !28, line: 74, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26halide_metal_command_queue")
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "compilation_cache", linkageName: "_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE", scope: !2, file: !6, line: 292, type: !36, isLocal: false, isDefinition: true)
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>", scope: !38, file: !37, line: 8, size: 160, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !39, templateParams: !105, identifier: "_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE")
!37 = !DIFile(filename: "src/runtime/gpu_context_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!38 = !DINamespace(name: "Internal", scope: !5)
!39 = !{!40, !52, !55, !58, !59, !74, !75, !77, !78, !79, !82, !89, !94, !99, !102}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !36, file: !37, line: 22, baseType: !41, size: 32)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !42, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !43, identifier: "_ZTS12halide_mutex")
!42 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !41, file: !42, line: 121, baseType: !45, size: 32)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !50)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !47, line: 68, baseType: !48)
!47 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 12, baseType: !49)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "kLoadFactor", scope: !36, file: !37, line: 24, baseType: !53, flags: DIFlagStaticMember, extraData: float 5.000000e-01)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "kInitialTableBits", scope: !36, file: !37, line: 25, baseType: !56, flags: DIFlagStaticMember, extraData: i32 7)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "log2_compilations_size", scope: !36, file: !37, line: 26, baseType: !57, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "compilations", scope: !36, file: !37, line: 27, baseType: !60, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CachedCompilation", scope: !36, file: !37, line: 9, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !62, identifier: "_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE")
!62 = !{!63, !65, !68, !69, !70}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !61, file: !37, line: 10, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "module_state", scope: !61, file: !37, line: 11, baseType: !66, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_library", scope: !2, file: !6, line: 31, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal11mtl_libraryE")
!68 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_id", scope: !61, file: !37, line: 12, baseType: !48, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !61, file: !37, line: 13, baseType: !48, size: 32, offset: 96)
!70 = !DISubprogram(name: "CachedCompilation", scope: !61, file: !37, line: 15, type: !71, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !64, !66, !48, !48}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !36, file: !37, line: 28, baseType: !57, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "kInvalidId", scope: !36, file: !37, line: 30, baseType: !76, flags: DIFlagStaticMember, extraData: i32 0)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kDeletedId", scope: !36, file: !37, line: 31, baseType: !76, flags: DIFlagStaticMember, extraData: i32 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !36, file: !37, line: 33, baseType: !48, size: 32, offset: 128)
!79 = !DISubprogram(name: "kernel_hash", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11kernel_hashES3_jj", scope: !36, file: !37, line: 36, type: !80, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!80 = !DISubroutineType(types: !81)
!81 = !{!46, !64, !48, !48}
!82 = !DISubprogram(name: "insert", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE", scope: !36, file: !37, line: 47, type: !83, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !86, !87}
!85 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!89 = !DISubprogram(name: "find_internal", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE13find_internalES3_jRPS8_i", scope: !36, file: !37, line: 73, type: !90, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{!85, !86, !64, !48, !92, !57}
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!94 = !DISubprogram(name: "lookup", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6lookupES3_PvRS8_", scope: !36, file: !37, line: 97, type: !95, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{!85, !86, !64, !97, !98}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 32)
!99 = !DISubprogram(name: "resize_table", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi", scope: !36, file: !37, line: 108, type: !100, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!85, !86, !57}
!102 = !DISubprogram(name: "release_hold", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12release_holdEPvS3_SA_", scope: !36, file: !37, line: 211, type: !103, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !86, !97, !64, !97}
!105 = !{!106, !107}
!106 = !DITemplateTypeParameter(name: "ContextT", type: !64)
!107 = !DITemplateTypeParameter(name: "ModuleStateT", type: !66)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "metal_api_supports_set_bytes", linkageName: "_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE", scope: !2, file: !6, line: 296, type: !85, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "metal_api_checked_device", linkageName: "_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE", scope: !2, file: !6, line: 297, type: !25, isLocal: false, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "command_buffer_completed_handler_descriptor", linkageName: "_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE", scope: !2, file: !6, line: 436, type: !114, isLocal: false, isDefinition: true)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_buffer_completed_handler_block_descriptor_1", scope: !2, file: !6, line: 423, size: 64, flags: DIFlagTypePassByValue, elements: !115, identifier: "_ZTSN6Halide7Runtime8Internal5Metal51command_buffer_completed_handler_block_descriptor_1E")
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !114, file: !6, line: 424, baseType: !117, size: 32)
!117 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !114, file: !6, line: 425, baseType: !117, size: 32, offset: 32)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "command_buffer_completed_handler_block", linkageName: "_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE", scope: !2, file: !6, line: 447, type: !121, isLocal: false, isDefinition: true)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_buffer_completed_handler_block_literal", scope: !2, file: !6, line: 428, size: 160, flags: DIFlagTypePassByValue, elements: !122, identifier: "_ZTSN6Halide7Runtime8Internal5Metal46command_buffer_completed_handler_block_literalE")
!122 = !{!123, !124, !125, !126, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !121, file: !6, line: 429, baseType: !97, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !6, line: 430, baseType: !57, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !121, file: !6, line: 431, baseType: !57, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "invoke", scope: !121, file: !6, line: 432, baseType: !127, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_command_buffer", scope: !2, file: !6, line: 27, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal18mtl_command_bufferE")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !121, file: !6, line: 433, baseType: !134, size: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "metal_device_interface", linkageName: "_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE", scope: !2, file: !6, line: 1164, type: !137, isLocal: false, isDefinition: true)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !42, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !138, identifier: "_ZTS25halide_device_interface_t")
!138 = !{!139, !262, !266, !267, !271, !272, !273, !274, !275, !279, !284, !288, !289, !293, !294, !299}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !137, file: !42, line: 724, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DISubroutineType(types: !142)
!142 = !{!57, !97, !143, !150}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !42, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !145, identifier: "_ZTS15halide_buffer_t")
!145 = !{!146, !149, !152, !156, !157, !197, !199, !222, !223, !233, !237, !240, !241, !244, !245, !249, !252, !253, !254, !258, !261}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !144, file: !42, line: 1425, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 10, baseType: !148)
!148 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !144, file: !42, line: 1428, baseType: !150, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !144, file: !42, line: 1433, baseType: !153, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 16, baseType: !155)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !42, line: 1436, baseType: !147, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !42, line: 1439, baseType: !158, size: 32, offset: 192)
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
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DISubprogram(name: "halide_type_t", scope: !158, file: !42, line: 459, type: !178, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !176}
!180 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !158, file: !42, line: 463, type: !181, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!158, !183, !171}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!185 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !158, file: !42, line: 468, type: !186, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!85, !183, !188}
!188 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !184, size: 32)
!189 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !158, file: !42, line: 472, type: !186, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !158, file: !42, line: 476, type: !186, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !42, line: 481, type: !192, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{!57, !183}
!194 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !158, file: !42, line: 485, type: !195, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!48, !183}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !144, file: !42, line: 1442, baseType: !198, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !47, line: 11, baseType: !57)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !144, file: !42, line: 1446, baseType: !200, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !42, line: 1409, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !42, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !203, identifier: "_ZTS18halide_dimension_t")
!203 = !{!204, !205, !206, !207, !208, !212, !215, !221}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !202, file: !42, line: 1383, baseType: !198, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !202, file: !42, line: 1383, baseType: !198, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !202, file: !42, line: 1383, baseType: !198, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !42, line: 1386, baseType: !48, size: 32, offset: 96)
!208 = !DISubprogram(name: "halide_dimension_t", scope: !202, file: !42, line: 1388, type: !209, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!212 = !DISubprogram(name: "halide_dimension_t", scope: !202, file: !42, line: 1389, type: !213, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !211, !198, !198, !198, !48}
!215 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !202, file: !42, line: 1393, type: !216, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!85, !218, !220}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!220 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !219, size: 32)
!221 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !202, file: !42, line: 1400, type: !216, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !144, file: !42, line: 1449, baseType: !97, size: 32, offset: 288)
!223 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !144, file: !42, line: 1454, type: !224, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!85, !226, !228}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !42, line: 1416, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 1415, baseType: !49, size: 32, elements: !230, identifier: "_ZTS19halide_buffer_flags")
!230 = !{!231, !232}
!231 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!233 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !144, file: !42, line: 1458, type: !234, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236, !228, !85}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !144, file: !42, line: 1466, type: !238, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!85, !226}
!240 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !144, file: !42, line: 1470, type: !238, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !144, file: !42, line: 1474, type: !242, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !236, !85}
!244 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !144, file: !42, line: 1478, type: !242, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !144, file: !42, line: 1485, type: !246, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !226}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 27, baseType: !49)
!249 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !144, file: !42, line: 1495, type: !250, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!153, !226}
!252 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !144, file: !42, line: 1506, type: !250, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !144, file: !42, line: 1518, type: !246, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !144, file: !42, line: 1523, type: !255, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!153, !226, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!258 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !144, file: !42, line: 1534, type: !259, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!57, !236, !97}
!261 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !144, file: !42, line: 1545, type: !238, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !137, file: !42, line: 726, baseType: !263, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DISubroutineType(types: !265)
!265 = !{!57, !97, !143}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !137, file: !42, line: 727, baseType: !263, size: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !137, file: !42, line: 728, baseType: !268, size: 32, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !97, !150}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !137, file: !42, line: 730, baseType: !263, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !137, file: !42, line: 731, baseType: !140, size: 32, offset: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !137, file: !42, line: 733, baseType: !140, size: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !137, file: !42, line: 735, baseType: !263, size: 32, offset: 224)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !137, file: !42, line: 736, baseType: !276, size: 32, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 32)
!277 = !DISubroutineType(types: !278)
!278 = !{!57, !97, !143, !150, !143}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !137, file: !42, line: 738, baseType: !280, size: 32, offset: 288)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DISubroutineType(types: !282)
!282 = !{!57, !97, !283, !143}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !137, file: !42, line: 740, baseType: !285, size: 32, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DISubroutineType(types: !287)
!287 = !{!57, !97, !283, !57, !57, !143}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !137, file: !42, line: 742, baseType: !263, size: 32, offset: 352)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !137, file: !42, line: 743, baseType: !290, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{!57, !97, !143, !147, !150}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !137, file: !42, line: 745, baseType: !263, size: 32, offset: 416)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !137, file: !42, line: 746, baseType: !295, size: 32, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DISubroutineType(types: !297)
!297 = !{!57, !97, !298, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !137, file: !42, line: 747, baseType: !300, size: 32, offset: 480)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !303, line: 10, size: 512, flags: DIFlagTypePassByValue, elements: !304, identifier: "_ZTS30halide_device_interface_impl_t")
!303 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!304 = !{!305, !309, !310, !311, !312, !313, !317, !318, !319, !320, !321, !322, !323, !324, !325, !329}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !302, file: !303, line: 16, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DISubroutineType(types: !308)
!308 = !{null}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !302, file: !303, line: 17, baseType: !306, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !302, file: !303, line: 18, baseType: !263, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !302, file: !303, line: 19, baseType: !263, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !302, file: !303, line: 20, baseType: !263, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !302, file: !303, line: 21, baseType: !314, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!315 = !DISubroutineType(types: !316)
!316 = !{!57, !97}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !302, file: !303, line: 22, baseType: !263, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !302, file: !303, line: 23, baseType: !263, size: 32, offset: 224)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !302, file: !303, line: 24, baseType: !263, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !302, file: !303, line: 25, baseType: !263, size: 32, offset: 288)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !302, file: !303, line: 26, baseType: !276, size: 32, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !302, file: !303, line: 28, baseType: !280, size: 32, offset: 352)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !302, file: !303, line: 31, baseType: !285, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !302, file: !303, line: 35, baseType: !263, size: 32, offset: 416)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !302, file: !303, line: 37, baseType: !326, size: 32, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 32)
!327 = !DISubroutineType(types: !328)
!328 = !{!57, !97, !143, !147}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !302, file: !303, line: 38, baseType: !263, size: 32, offset: 480)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "total_dispatches", scope: !332, file: !6, line: 865, type: !198, isLocal: true, isDefinition: true)
!332 = distinct !DISubprogram(name: "halide_metal_run", scope: !6, file: !6, line: 723, type: !333, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !926)
!333 = !DISubroutineType(types: !334)
!334 = !{!57, !97, !97, !335, !57, !57, !57, !57, !57, !57, !57, !337, !338, !339, !57, !342, !57, !57}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !47, line: 15, baseType: !341)
!341 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!343 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !344, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !345, retainedTypes: !393, globals: !918, imports: !921, splitDebugInlining: false, nameTableKind: None)
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
!393 = !{!97, !394, !147, !475, !488, !495, !500, !505, !515, !519, !532, !31, !542, !131, !554, !561, !572, !579, !583, !592, !596, !604, !622, !632, !640, !650, !665, !676, !687, !695, !710, !717, !725, !738, !743, !748, !762, !248, !775, !788, !800, !807, !812, !822, !25, !829, !480, !843, !910, !418, !400, !915, !153, !523, !46, !916, !917, !60, !48, !36}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !396, file: !395, line: 203, baseType: !397)
!395 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!396 = !DINamespace(scope: !3)
!397 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !396, file: !395, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !398, templateParams: !472)
!398 = !{!399, !401, !402, !403, !404, !405, !407, !411, !415, !420, !423, !426, !429, !433, !436, !441, !445, !448, !454, !457, !460, !465, !466, !469, !470, !471}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !397, file: !395, line: 32, baseType: !400, size: 32, flags: DIFlagPublic)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !397, file: !395, line: 32, baseType: !400, size: 32, offset: 32, flags: DIFlagPublic)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !397, file: !395, line: 32, baseType: !400, size: 32, offset: 64, flags: DIFlagPublic)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !397, file: !395, line: 33, baseType: !97, size: 32, offset: 96, flags: DIFlagPublic)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !397, file: !395, line: 34, baseType: !85, size: 8, offset: 128, flags: DIFlagPublic)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !397, file: !395, line: 35, baseType: !406, size: 8, offset: 136, flags: DIFlagPublic)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !50)
!407 = !DISubprogram(name: "Printer", scope: !397, file: !395, line: 37, type: !408, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410, !97, !400}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !397, file: !395, line: 57, type: !412, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !410, !335}
!414 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 32)
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
!425 = !{!414, !410, !147}
!426 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !397, file: !395, line: 82, type: !427, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!414, !410, !48}
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
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 32)
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
!451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !42, line: 1550, baseType: !144)
!454 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !397, file: !395, line: 119, type: !455, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!335, !410}
!457 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !397, file: !395, line: 131, type: !458, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !410}
!460 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !397, file: !395, line: 139, type: !461, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!147, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!474 = !DITemplateValueParameter(name: "length", type: !148, value: i64 1024)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_method", scope: !477, file: !476, line: 43, baseType: !484)
!476 = !DIFile(filename: "src/runtime/objc_support.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!477 = distinct !DISubprogram(name: "create_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal23create_autorelease_poolEv", scope: !3, file: !476, line: 42, type: !478, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !481)
!478 = !DISubroutineType(types: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_id", file: !476, line: 5, baseType: !97)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "method", scope: !477, file: !476, line: 44, type: !475)
!483 = !DILocalVariable(name: "pool", scope: !477, file: !476, line: 45, type: !480)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 32)
!485 = !DISubroutineType(types: !486)
!486 = !{!480, !480, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_sel", file: !476, line: 6, baseType: !97)
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
!506 = distinct !DISubprogram(name: "wrap_string_as_ns_string", linkageName: "_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj", scope: !3, file: !476, line: 68, type: !507, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!480, !335, !248}
!509 = !{!510, !511, !512, !513, !514}
!510 = !DILocalVariable(name: "string", arg: 1, scope: !506, file: !476, line: 68, type: !335)
!511 = !DILocalVariable(name: "length", arg: 2, scope: !506, file: !476, line: 68, type: !248)
!512 = !DILocalVariable(name: "method1", scope: !506, file: !476, line: 71, type: !505)
!513 = !DILocalVariable(name: "ns_string", scope: !506, file: !476, line: 72, type: !480)
!514 = !DILocalVariable(name: "method", scope: !506, file: !476, line: 73, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "init_with_bytes_no_copy_method", scope: !506, file: !476, line: 69, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 32)
!517 = !DISubroutineType(types: !518)
!518 = !{!480, !480, !487, !335, !248, !248, !154}
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_buffer_method", scope: !520, file: !6, line: 36, baseType: !529)
!520 = distinct !DISubprogram(name: "new_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej", scope: !2, file: !6, line: 35, type: !521, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !525)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !25, !248}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_buffer", scope: !2, file: !6, line: 26, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal10mtl_bufferE")
!525 = !{!526, !527, !528}
!526 = !DILocalVariable(name: "device", arg: 1, scope: !520, file: !6, line: 35, type: !25)
!527 = !DILocalVariable(name: "length", arg: 2, scope: !520, file: !6, line: 35, type: !248)
!528 = !DILocalVariable(name: "method", scope: !520, file: !6, line: 37, type: !519)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 32)
!530 = !DISubroutineType(types: !531)
!531 = !{!523, !480, !487, !248, !248}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_command_queue_method", scope: !533, file: !6, line: 43, baseType: !539)
!533 = distinct !DISubprogram(name: "new_command_queue", linkageName: "_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device", scope: !2, file: !6, line: 42, type: !534, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!31, !25}
!536 = !{!537, !538}
!537 = !DILocalVariable(name: "device", arg: 1, scope: !533, file: !6, line: 42, type: !25)
!538 = !DILocalVariable(name: "method", scope: !533, file: !6, line: 44, type: !532)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 32)
!540 = !DISubroutineType(types: !541)
!541 = !{!31, !480, !487}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_command_buffer_method", scope: !543, file: !6, line: 51, baseType: !558)
!543 = distinct !DISubprogram(name: "new_command_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj", scope: !2, file: !6, line: 48, type: !544, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!131, !31, !335, !248}
!546 = !{!547, !548, !549, !550, !551, !552, !553}
!547 = !DILocalVariable(name: "queue", arg: 1, scope: !543, file: !6, line: 48, type: !31)
!548 = !DILocalVariable(name: "label", arg: 2, scope: !543, file: !6, line: 48, type: !335)
!549 = !DILocalVariable(name: "label_len", arg: 3, scope: !543, file: !6, line: 48, type: !248)
!550 = !DILocalVariable(name: "label_str", scope: !543, file: !6, line: 49, type: !480)
!551 = !DILocalVariable(name: "method", scope: !543, file: !6, line: 52, type: !542)
!552 = !DILocalVariable(name: "command_buffer", scope: !543, file: !6, line: 53, type: !131)
!553 = !DILocalVariable(name: "method1", scope: !543, file: !6, line: 56, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_label_method", scope: !543, file: !6, line: 55, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !480, !487, !480}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 32)
!559 = !DISubroutineType(types: !560)
!560 = !{!131, !480, !487}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "add_completed_handler_method", scope: !562, file: !6, line: 64, baseType: !569)
!562 = distinct !DISubprogram(name: "add_command_buffer_completed_handler", linkageName: "_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE", scope: !2, file: !6, line: 63, type: !563, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !131, !130}
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "command_buffer", arg: 1, scope: !562, file: !6, line: 63, type: !131)
!567 = !DILocalVariable(name: "handler", arg: 2, scope: !562, file: !6, line: 63, type: !130)
!568 = !DILocalVariable(name: "method", scope: !562, file: !6, line: 65, type: !561)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 32)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !480, !487, !130}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_method", scope: !573, file: !6, line: 70, baseType: !484)
!573 = distinct !DISubprogram(name: "command_buffer_error", linkageName: "_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 69, type: !574, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!480, !131}
!576 = !{!577, !578}
!577 = !DILocalVariable(name: "buffer", arg: 1, scope: !573, file: !6, line: 69, type: !131)
!578 = !DILocalVariable(name: "method", scope: !573, file: !6, line: 71, type: !572)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "compute_command_encoder_method", scope: !580, file: !6, line: 76, baseType: !589)
!580 = distinct !DISubprogram(name: "new_compute_command_encoder", linkageName: "_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 75, type: !581, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !586)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !131}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 32)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_command_encoder", scope: !2, file: !585, line: 11, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal27mtl_compute_command_encoderE")
!585 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "buffer", arg: 1, scope: !580, file: !6, line: 75, type: !131)
!588 = !DILocalVariable(name: "method", scope: !580, file: !6, line: 77, type: !579)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 32)
!590 = !DISubroutineType(types: !591)
!591 = !{!583, !480, !487}
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "blit_command_encoder_method", scope: !593, file: !6, line: 82, baseType: !601)
!593 = distinct !DISubprogram(name: "new_blit_command_encoder", linkageName: "_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 81, type: !594, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !598)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !131}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 32)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_blit_command_encoder", scope: !2, file: !6, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal24mtl_blit_command_encoderE")
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "buffer", arg: 1, scope: !593, file: !6, line: 81, type: !131)
!600 = !DILocalVariable(name: "method", scope: !593, file: !6, line: 83, type: !592)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 32)
!602 = !DISubroutineType(types: !603)
!603 = !{!596, !480, !487}
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_compute_pipeline_state_method", scope: !605, file: !6, line: 89, baseType: !618)
!605 = distinct !DISubprogram(name: "new_compute_pipeline_state_with_function", linkageName: "_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE", scope: !2, file: !6, line: 87, type: !606, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !612)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !25, !610}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 32)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_pipeline_state", scope: !2, file: !6, line: 30, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal26mtl_compute_pipeline_stateE")
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 32)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_function", scope: !2, file: !6, line: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal12mtl_functionE")
!612 = !{!613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "device", arg: 1, scope: !605, file: !6, line: 87, type: !25)
!614 = !DILocalVariable(name: "function", arg: 2, scope: !605, file: !6, line: 87, type: !610)
!615 = !DILocalVariable(name: "error_return", scope: !605, file: !6, line: 88, type: !480)
!616 = !DILocalVariable(name: "method", scope: !605, file: !6, line: 91, type: !604)
!617 = !DILocalVariable(name: "result", scope: !605, file: !6, line: 92, type: !608)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 32)
!619 = !DISubroutineType(types: !620)
!620 = !{!608, !480, !487, !480, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_max_total_threads_per_threadgroup_method", scope: !623, file: !6, line: 102, baseType: !629)
!623 = distinct !DISubprogram(name: "get_max_total_threads_per_threadgroup", linkageName: "_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE", scope: !2, file: !6, line: 101, type: !624, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!117, !608}
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "pipeline_state", arg: 1, scope: !623, file: !6, line: 101, type: !608)
!628 = !DILocalVariable(name: "method", scope: !623, file: !6, line: 103, type: !622)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 32)
!630 = !DISubroutineType(types: !631)
!631 = !{!117, !480, !487}
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
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 32)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !480, !487}
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "did_modify_range_method", scope: !651, file: !6, line: 125, baseType: !662)
!651 = distinct !DISubprogram(name: "did_modify_range", linkageName: "_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE", scope: !2, file: !6, line: 124, type: !652, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !658)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !523, !654}
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NSRange", scope: !2, file: !6, line: 119, size: 64, flags: DIFlagTypePassByValue, elements: !655, identifier: "_ZTSN6Halide7Runtime8Internal5Metal7NSRangeE")
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !654, file: !6, line: 120, baseType: !248, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !654, file: !6, line: 121, baseType: !248, size: 32, offset: 32)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "buffer", arg: 1, scope: !651, file: !6, line: 124, type: !523)
!660 = !DILocalVariable(name: "range", arg: 2, scope: !651, file: !6, line: 124, type: !654)
!661 = !DILocalVariable(name: "method", scope: !651, file: !6, line: 126, type: !650)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 32)
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
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !480, !487, !523}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "responds_to_selector_method", scope: !677, file: !6, line: 137, baseType: !692)
!677 = distinct !DISubprogram(name: "is_buffer_managed", linkageName: "_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE", scope: !2, file: !6, line: 136, type: !678, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!85, !523}
!680 = !{!681, !682, !683, !684, !691}
!681 = !DILocalVariable(name: "buffer", arg: 1, scope: !677, file: !6, line: 136, type: !523)
!682 = !DILocalVariable(name: "method1", scope: !677, file: !6, line: 138, type: !676)
!683 = !DILocalVariable(name: "storage_mode_sel", scope: !677, file: !6, line: 139, type: !487)
!684 = !DILocalVariable(name: "method", scope: !685, file: !6, line: 142, type: !687)
!685 = distinct !DILexicalBlock(scope: !686, file: !6, line: 140, column: 82)
!686 = distinct !DILexicalBlock(scope: !677, file: !6, line: 140, column: 9)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_mode_method", scope: !677, file: !6, line: 141, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 32)
!689 = !DISubroutineType(types: !690)
!690 = !{!57, !480, !487}
!691 = !DILocalVariable(name: "storage_mode", scope: !685, file: !6, line: 143, type: !57)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!693 = !DISubroutineType(types: !694)
!694 = !{!85, !480, !487, !487}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "copy_from_buffer_method", scope: !696, file: !6, line: 153, baseType: !707)
!696 = distinct !DISubprogram(name: "buffer_to_buffer_1d_copy", linkageName: "_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEjS6_jj", scope: !2, file: !6, line: 149, type: !697, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !699)
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
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 32)
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
!720 = !{!85, !583}
!721 = !{!722, !723, !724}
!722 = !DILocalVariable(name: "encoder", arg: 1, scope: !718, file: !6, line: 166, type: !583)
!723 = !DILocalVariable(name: "method1", scope: !718, file: !6, line: 168, type: !717)
!724 = !DILocalVariable(name: "set_bytes_sel", scope: !718, file: !6, line: 169, type: !487)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "options_method", scope: !726, file: !6, line: 177, baseType: !484)
!726 = distinct !DISubprogram(name: "new_library_with_source", linkageName: "_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcj", scope: !2, file: !6, line: 173, type: !727, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !729)
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
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 32)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !480, !487, !154}
!742 = !DILocalVariable(name: "method2", scope: !726, file: !6, line: 187, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_library_with_source_method", scope: !726, file: !6, line: 186, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 32)
!745 = !DISubroutineType(types: !746)
!746 = !{!66, !480, !487, !480, !480, !621}
!747 = !DILocalVariable(name: "result", scope: !726, file: !6, line: 188, type: !66)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_function_with_name_method", scope: !749, file: !6, line: 203, baseType: !759)
!749 = distinct !DISubprogram(name: "new_function_with_name", linkageName: "_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcj", scope: !2, file: !6, line: 201, type: !750, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!610, !66, !335, !248}
!752 = !{!753, !754, !755, !756, !757, !758}
!753 = !DILocalVariable(name: "library", arg: 1, scope: !749, file: !6, line: 201, type: !66)
!754 = !DILocalVariable(name: "name", arg: 2, scope: !749, file: !6, line: 201, type: !335)
!755 = !DILocalVariable(name: "name_len", arg: 3, scope: !749, file: !6, line: 201, type: !248)
!756 = !DILocalVariable(name: "name_str", scope: !749, file: !6, line: 202, type: !480)
!757 = !DILocalVariable(name: "method", scope: !749, file: !6, line: 204, type: !748)
!758 = !DILocalVariable(name: "result", scope: !749, file: !6, line: 205, type: !610)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 32)
!760 = !DISubroutineType(types: !761)
!761 = !{!610, !480, !487, !480}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_buffer_method", scope: !763, file: !6, line: 211, baseType: !772)
!763 = distinct !DISubprogram(name: "set_input_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj", scope: !2, file: !6, line: 210, type: !764, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !583, !523, !147, !48}
!766 = !{!767, !768, !769, !770, !771}
!767 = !DILocalVariable(name: "encoder", arg: 1, scope: !763, file: !6, line: 210, type: !583)
!768 = !DILocalVariable(name: "input_buffer", arg: 2, scope: !763, file: !6, line: 210, type: !523)
!769 = !DILocalVariable(name: "offset", arg: 3, scope: !763, file: !6, line: 210, type: !147)
!770 = !DILocalVariable(name: "index", arg: 4, scope: !763, file: !6, line: 210, type: !48)
!771 = !DILocalVariable(name: "method", scope: !763, file: !6, line: 213, type: !762)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 32)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !480, !487, !523, !248, !248}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_bytes_method", scope: !776, file: !6, line: 219, baseType: !785)
!776 = distinct !DISubprogram(name: "set_input_buffer_from_bytes", linkageName: "_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj", scope: !2, file: !6, line: 218, type: !777, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !583, !153, !48, !48}
!779 = !{!780, !781, !782, !783, !784}
!780 = !DILocalVariable(name: "encoder", arg: 1, scope: !776, file: !6, line: 218, type: !583)
!781 = !DILocalVariable(name: "input_buffer", arg: 2, scope: !776, file: !6, line: 218, type: !153)
!782 = !DILocalVariable(name: "length", arg: 3, scope: !776, file: !6, line: 218, type: !48)
!783 = !DILocalVariable(name: "index", arg: 4, scope: !776, file: !6, line: 218, type: !48)
!784 = !DILocalVariable(name: "method", scope: !776, file: !6, line: 221, type: !775)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 32)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !480, !487, !97, !248, !248}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_threadgroup_memory_length_method", scope: !789, file: !6, line: 227, baseType: !797)
!789 = distinct !DISubprogram(name: "set_threadgroup_memory_length", linkageName: "_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj", scope: !2, file: !6, line: 226, type: !790, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !583, !48, !48}
!792 = !{!793, !794, !795, !796}
!793 = !DILocalVariable(name: "encoder", arg: 1, scope: !789, file: !6, line: 226, type: !583)
!794 = !DILocalVariable(name: "length", arg: 2, scope: !789, file: !6, line: 226, type: !48)
!795 = !DILocalVariable(name: "index", arg: 3, scope: !789, file: !6, line: 226, type: !48)
!796 = !DILocalVariable(name: "method", scope: !789, file: !6, line: 229, type: !788)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 32)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !480, !487, !248, !248}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "commit_method", scope: !801, file: !6, line: 235, baseType: !647)
!801 = distinct !DISubprogram(name: "commit_command_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 234, type: !802, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !131}
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "buffer", arg: 1, scope: !801, file: !6, line: 234, type: !131)
!806 = !DILocalVariable(name: "method", scope: !801, file: !6, line: 236, type: !800)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_until_completed_method", scope: !808, file: !6, line: 241, baseType: !647)
!808 = distinct !DISubprogram(name: "wait_until_completed", linkageName: "_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 240, type: !802, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !809)
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "buffer", arg: 1, scope: !808, file: !6, line: 240, type: !131)
!811 = !DILocalVariable(name: "method", scope: !808, file: !6, line: 242, type: !807)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "contents_method", scope: !813, file: !6, line: 247, baseType: !819)
!813 = distinct !DISubprogram(name: "buffer_contents", linkageName: "_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE", scope: !2, file: !6, line: 246, type: !814, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!97, !523}
!816 = !{!817, !818}
!817 = !DILocalVariable(name: "buffer", arg: 1, scope: !813, file: !6, line: 246, type: !523)
!818 = !DILocalVariable(name: "method", scope: !813, file: !6, line: 248, type: !812)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 32)
!820 = !DISubroutineType(types: !821)
!821 = !{!97, !480, !487}
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "nsarray_first_object_method", scope: !823, file: !6, line: 253, baseType: !484)
!823 = distinct !DISubprogram(name: "nsarray_first_object", linkageName: "_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv", scope: !2, file: !6, line: 252, type: !824, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!97, !480}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "arr", arg: 1, scope: !823, file: !6, line: 252, type: !480)
!828 = !DILocalVariable(name: "method", scope: !823, file: !6, line: 254, type: !822)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_copy_all_devices_method", scope: !830, file: !6, line: 270, baseType: !842)
!830 = distinct !DISubprogram(name: "get_default_mtl_device", linkageName: "_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv", scope: !2, file: !6, line: 262, type: !831, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!25}
!833 = !{!834, !835, !838, !841}
!834 = !DILocalVariable(name: "device", scope: !830, file: !6, line: 263, type: !25)
!835 = !DILocalVariable(name: "handle", scope: !836, file: !6, line: 268, type: !97)
!836 = distinct !DILexicalBlock(scope: !837, file: !6, line: 264, column: 28)
!837 = distinct !DILexicalBlock(scope: !830, file: !6, line: 264, column: 9)
!838 = !DILocalVariable(name: "method", scope: !839, file: !6, line: 271, type: !829)
!839 = distinct !DILexicalBlock(scope: !840, file: !6, line: 269, column: 32)
!840 = distinct !DILexicalBlock(scope: !836, file: !6, line: 269, column: 13)
!841 = !DILocalVariable(name: "devices", scope: !839, file: !6, line: 272, type: !480)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !396, file: !395, line: 199, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !396, file: !395, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !845, templateParams: !908)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !856, !860, !863, !866, !869, !872, !875, !878, !881, !884, !887, !890, !893, !896, !901, !902, !905, !906, !907}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !844, file: !395, line: 32, baseType: !400, size: 32, flags: DIFlagPublic)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !844, file: !395, line: 32, baseType: !400, size: 32, offset: 32, flags: DIFlagPublic)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !844, file: !395, line: 32, baseType: !400, size: 32, offset: 64, flags: DIFlagPublic)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !844, file: !395, line: 33, baseType: !97, size: 32, offset: 96, flags: DIFlagPublic)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !844, file: !395, line: 34, baseType: !85, size: 8, offset: 128, flags: DIFlagPublic)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !844, file: !395, line: 35, baseType: !406, size: 8, offset: 136, flags: DIFlagPublic)
!852 = !DISubprogram(name: "Printer", scope: !844, file: !395, line: 37, type: !853, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855, !97, !400}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!856 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !844, file: !395, line: 57, type: !857, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !855, !335}
!859 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !844, size: 32)
!860 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !844, file: !395, line: 67, type: !861, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{!859, !855, !418}
!863 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !844, file: !395, line: 72, type: !864, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!859, !855, !198}
!866 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !844, file: !395, line: 77, type: !867, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubroutineType(types: !868)
!868 = !{!859, !855, !147}
!869 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !844, file: !395, line: 82, type: !870, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubroutineType(types: !871)
!871 = !{!859, !855, !48}
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
!898 = !{!147, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 32)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_handle", scope: !2, file: !6, line: 287, size: 128, flags: DIFlagTypePassByValue, elements: !912, identifier: "_ZTSN6Halide7Runtime8Internal5Metal13device_handleE")
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !911, file: !6, line: 288, baseType: !523, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !911, file: !6, line: 289, baseType: !147, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !47, line: 28, baseType: !57)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!918 = !{!0, !23, !29, !34, !108, !110, !112, !119, !330, !919, !135}
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "metal_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE", scope: !2, file: !6, line: 1146, type: !302, isLocal: false, isDefinition: true)
!921 = !{!922, !923, !924, !925}
!922 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !3, file: !47, line: 225)
!923 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !3, file: !6, line: 327)
!924 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !2, file: !6, line: 328)
!925 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !2, file: !6, line: 458)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !962, !963, !964, !965, !966, !967, !968, !969, !970, !972, !973, !976, !980, !981, !982, !983, !985, !987, !992}
!927 = !DILocalVariable(name: "user_context", arg: 1, scope: !332, file: !6, line: 723, type: !97)
!928 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !332, file: !6, line: 724, type: !97)
!929 = !DILocalVariable(name: "entry_name", arg: 3, scope: !332, file: !6, line: 725, type: !335)
!930 = !DILocalVariable(name: "blocksX", arg: 4, scope: !332, file: !6, line: 726, type: !57)
!931 = !DILocalVariable(name: "blocksY", arg: 5, scope: !332, file: !6, line: 726, type: !57)
!932 = !DILocalVariable(name: "blocksZ", arg: 6, scope: !332, file: !6, line: 726, type: !57)
!933 = !DILocalVariable(name: "threadsX", arg: 7, scope: !332, file: !6, line: 727, type: !57)
!934 = !DILocalVariable(name: "threadsY", arg: 8, scope: !332, file: !6, line: 727, type: !57)
!935 = !DILocalVariable(name: "threadsZ", arg: 9, scope: !332, file: !6, line: 727, type: !57)
!936 = !DILocalVariable(name: "shared_mem_bytes", arg: 10, scope: !332, file: !6, line: 728, type: !57)
!937 = !DILocalVariable(name: "arg_sizes", arg: 11, scope: !332, file: !6, line: 729, type: !337)
!938 = !DILocalVariable(name: "args", arg: 12, scope: !332, file: !6, line: 730, type: !338)
!939 = !DILocalVariable(name: "arg_is_buffer", arg: 13, scope: !332, file: !6, line: 731, type: !339)
!940 = !DILocalVariable(name: "num_attributes", arg: 14, scope: !332, file: !6, line: 732, type: !57)
!941 = !DILocalVariable(name: "vertex_buffer", arg: 15, scope: !332, file: !6, line: 733, type: !342)
!942 = !DILocalVariable(name: "num_coords_dim0", arg: 16, scope: !332, file: !6, line: 734, type: !57)
!943 = !DILocalVariable(name: "num_coords_dim1", arg: 17, scope: !332, file: !6, line: 735, type: !57)
!944 = !DILocalVariable(name: "t_before", scope: !332, file: !6, line: 737, type: !147)
!945 = !DILocalVariable(name: "metal_context", scope: !332, file: !6, line: 740, type: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MetalContextHolder", scope: !2, file: !6, line: 391, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !947, identifier: "_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE")
!947 = !{!948, !949, !950, !951, !952, !953, !957, !960, !961}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !946, file: !6, line: 392, baseType: !480, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !946, file: !6, line: 393, baseType: !97, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !946, file: !6, line: 400, baseType: !25, size: 32, offset: 64, flags: DIFlagPublic)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !946, file: !6, line: 401, baseType: !31, size: 32, offset: 96, flags: DIFlagPublic)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !946, file: !6, line: 402, baseType: !57, size: 32, offset: 128, flags: DIFlagPublic)
!953 = !DISubprogram(name: "save", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb", scope: !946, file: !6, line: 396, type: !954, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !956, !97, !85}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!957 = !DISubprogram(name: "restore", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv", scope: !946, file: !6, line: 397, type: !958, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !956}
!960 = !DISubprogram(name: "MetalContextHolder", scope: !946, file: !6, line: 404, type: !954, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "~MetalContextHolder", scope: !946, file: !6, line: 407, type: !958, scopeLine: 407, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DILocalVariable(name: "command_buffer", scope: !332, file: !6, line: 745, type: !131)
!963 = !DILocalVariable(name: "encoder", scope: !332, file: !6, line: 751, type: !583)
!964 = !DILocalVariable(name: "library", scope: !332, file: !6, line: 757, type: !66)
!965 = !DILocalVariable(name: "found", scope: !332, file: !6, line: 758, type: !85)
!966 = !DILocalVariable(name: "function", scope: !332, file: !6, line: 761, type: !610)
!967 = !DILocalVariable(name: "pipeline_state", scope: !332, file: !6, line: 767, type: !608)
!968 = !DILocalVariable(name: "max_total_threads_per_threadgroup", scope: !332, file: !6, line: 774, type: !418)
!969 = !DILocalVariable(name: "total_args_size", scope: !332, file: !6, line: 785, type: !248)
!970 = !DILocalVariable(name: "i", scope: !971, file: !6, line: 786, type: !248)
!971 = distinct !DILexicalBlock(scope: !332, file: !6, line: 786, column: 5)
!972 = !DILocalVariable(name: "buffer_index", scope: !332, file: !6, line: 801, type: !198)
!973 = !DILocalVariable(name: "args_buffer", scope: !974, file: !6, line: 803, type: !523)
!974 = distinct !DILexicalBlock(scope: !975, file: !6, line: 802, column: 30)
!975 = distinct !DILexicalBlock(scope: !332, file: !6, line: 802, column: 9)
!976 = !DILocalVariable(name: "small_args_buffer", scope: !974, file: !6, line: 804, type: !977)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 32768, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 4096)
!980 = !DILocalVariable(name: "args_ptr", scope: !974, file: !6, line: 805, type: !400)
!981 = !DILocalVariable(name: "padded_args_size", scope: !974, file: !6, line: 817, type: !248)
!982 = !DILocalVariable(name: "offset", scope: !974, file: !6, line: 832, type: !248)
!983 = !DILocalVariable(name: "i", scope: !984, file: !6, line: 833, type: !248)
!984 = distinct !DILexicalBlock(scope: !974, file: !6, line: 833, column: 9)
!985 = !DILocalVariable(name: "i", scope: !986, file: !6, line: 851, type: !248)
!986 = distinct !DILexicalBlock(scope: !332, file: !6, line: 851, column: 5)
!987 = !DILocalVariable(name: "handle", scope: !988, file: !6, line: 854, type: !910)
!988 = distinct !DILexicalBlock(scope: !989, file: !6, line: 852, column: 31)
!989 = distinct !DILexicalBlock(scope: !990, file: !6, line: 852, column: 13)
!990 = distinct !DILexicalBlock(scope: !991, file: !6, line: 851, column: 48)
!991 = distinct !DILexicalBlock(scope: !986, file: !6, line: 851, column: 5)
!992 = !DILocalVariable(name: "t_after", scope: !332, file: !6, line: 884, type: !147)
!993 = !{i32 7, !"Dwarf Version", i32 4}
!994 = !{i32 2, !"Debug Info Version", i32 3}
!995 = !{i32 1, !"wchar_size", i32 4}
!996 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!997 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !998, line: 47, type: !999, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1015)
!998 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !1001, !57, !418, !418}
!1001 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !998, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !1004, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!1004 = !{!1005, !1006, !1007, !1008, !1012, !1013, !1014}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1003, file: !998, line: 35, baseType: !147, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1003, file: !998, line: 35, baseType: !147, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !1003, file: !998, line: 37, baseType: !147, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1003, file: !998, line: 39, baseType: !1009, size: 1024, offset: 192)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 1024, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 16)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !1003, file: !998, line: 41, baseType: !1009, size: 1024, offset: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !1003, file: !998, line: 42, baseType: !1009, size: 1024, offset: 2240)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1003, file: !998, line: 44, baseType: !147, size: 64, offset: 3264)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1023, !1024}
!1016 = !DILocalVariable(name: "copy", arg: 1, scope: !997, file: !998, line: 47, type: !1001)
!1017 = !DILocalVariable(name: "d", arg: 2, scope: !997, file: !998, line: 47, type: !57)
!1018 = !DILocalVariable(name: "src_off", arg: 3, scope: !997, file: !998, line: 47, type: !418)
!1019 = !DILocalVariable(name: "dst_off", arg: 4, scope: !997, file: !998, line: 47, type: !418)
!1020 = !DILocalVariable(name: "from", scope: !1021, file: !998, line: 54, type: !439)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !998, line: 53, column: 18)
!1022 = distinct !DILexicalBlock(scope: !997, file: !998, line: 53, column: 9)
!1023 = !DILocalVariable(name: "to", scope: !1021, file: !998, line: 55, type: !97)
!1024 = !DILocalVariable(name: "i", scope: !1025, file: !998, line: 58, type: !147)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !998, line: 58, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !998, line: 57, column: 12)
!1027 = !DILocation(line: 0, scope: !997)
!1028 = !DILocation(line: 49, column: 14, scope: !997)
!1029 = !DILocation(line: 49, column: 19, scope: !997)
!1030 = !DILocation(line: 49, column: 22, scope: !997)
!1031 = !{!1032, !1032, i64 0}
!1032 = !{!"long long", !1033, i64 0}
!1033 = !{!"omnipotent char", !1034, i64 0}
!1034 = !{!"Simple C++ TBAA"}
!1035 = !DILocation(line: 49, column: 37, scope: !997)
!1036 = !DILocation(line: 49, column: 5, scope: !997)
!1037 = !DILocation(line: 50, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !997, file: !998, line: 49, column: 43)
!1039 = distinct !{!1039, !1036, !1040, !1041}
!1040 = !DILocation(line: 51, column: 5, scope: !997)
!1041 = !{!"llvm.loop.mustprogress"}
!1042 = !DILocation(line: 53, column: 11, scope: !1022)
!1043 = !DILocation(line: 53, column: 9, scope: !997)
!1044 = !DILocation(line: 0, scope: !1025)
!1045 = !DILocation(line: 58, column: 34, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1025, file: !998, line: 58, column: 9)
!1047 = !DILocation(line: 58, column: 32, scope: !1046)
!1048 = !DILocation(line: 58, column: 9, scope: !1025)
!1049 = !DILocation(line: 54, column: 42, scope: !1021)
!1050 = !{!1051, !1032, i64 0}
!1051 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !1032, i64 0, !1032, i64 8, !1032, i64 16, !1033, i64 24, !1033, i64 152, !1033, i64 280, !1032, i64 408}
!1052 = !DILocation(line: 54, column: 46, scope: !1021)
!1053 = !DILocation(line: 54, column: 28, scope: !1021)
!1054 = !DILocation(line: 0, scope: !1021)
!1055 = !DILocation(line: 55, column: 34, scope: !1021)
!1056 = !{!1051, !1032, i64 8}
!1057 = !DILocation(line: 55, column: 38, scope: !1021)
!1058 = !DILocation(line: 55, column: 20, scope: !1021)
!1059 = !DILocation(line: 56, column: 31, scope: !1021)
!1060 = !{!1051, !1032, i64 408}
!1061 = !DILocation(line: 56, column: 26, scope: !1021)
!1062 = !DILocation(line: 56, column: 9, scope: !1021)
!1063 = !DILocation(line: 57, column: 5, scope: !1021)
!1064 = !DILocation(line: 59, column: 13, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1046, file: !998, line: 58, column: 55)
!1066 = !DILocation(line: 60, column: 24, scope: !1065)
!1067 = !DILocation(line: 60, column: 21, scope: !1065)
!1068 = !DILocation(line: 61, column: 24, scope: !1065)
!1069 = !DILocation(line: 61, column: 21, scope: !1065)
!1070 = !DILocation(line: 58, column: 51, scope: !1046)
!1071 = distinct !{!1071, !1048, !1072, !1041}
!1072 = !DILocation(line: 62, column: 9, scope: !1025)
!1073 = !DILocation(line: 64, column: 1, scope: !997)
!1074 = !DISubprogram(name: "memcpy", scope: !47, file: !47, line: 94, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!97, !97, !439, !49}
!1077 = !{}
!1078 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !998, line: 66, type: !1079, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1001, !97}
!1081 = !{!1082, !1083}
!1082 = !DILocalVariable(name: "copy", arg: 1, scope: !1078, file: !998, line: 66, type: !1001)
!1083 = !DILocalVariable(name: "user_context", arg: 2, scope: !1078, file: !998, line: 66, type: !97)
!1084 = !DILocation(line: 0, scope: !1078)
!1085 = !DILocation(line: 68, column: 14, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !998, line: 68, column: 9)
!1087 = !DILocation(line: 68, column: 26, scope: !1086)
!1088 = !DILocation(line: 68, column: 18, scope: !1086)
!1089 = !DILocation(line: 68, column: 9, scope: !1078)
!1090 = !DILocation(line: 69, column: 58, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !998, line: 68, column: 31)
!1092 = !{!1051, !1032, i64 16}
!1093 = !DILocation(line: 69, column: 9, scope: !1091)
!1094 = !DILocation(line: 70, column: 5, scope: !1091)
!1095 = !DILocalVariable(name: "this", arg: 1, scope: !1096, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1096 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !397, file: !395, line: 37, type: !408, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !407, retainedNodes: !1097)
!1097 = !{!1095, !1098, !1099}
!1098 = !DILocalVariable(name: "ctx", arg: 2, scope: !1096, file: !395, line: 37, type: !97)
!1099 = !DILocalVariable(name: "mem", arg: 3, scope: !1096, file: !395, line: 37, type: !400)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 32)
!1101 = !DILocation(line: 0, scope: !1096, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 71, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1086, file: !998, line: 70, column: 12)
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
!1134 = !{!1033, !1033, i64 0}
!1135 = !DILocalVariable(name: "this", arg: 1, scope: !1136, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1136 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !397, file: !395, line: 162, type: !458, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !470, retainedNodes: !1137)
!1137 = !{!1135}
!1138 = !DILocation(line: 0, scope: !1136, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1125)
!1140 = distinct !DILexicalBlock(scope: !1128, file: !395, line: 169, column: 16)
!1141 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1139)
!1142 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1139)
!1143 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !1139)
!1144 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1139)
!1145 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !1125)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !395, line: 173, column: 46)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !395, line: 173, column: 24)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !395, line: 171, column: 17)
!1149 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !1125)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !395, line: 180, column: 40)
!1151 = distinct !DILexicalBlock(scope: !1129, file: !395, line: 180, column: 13)
!1152 = !DILocation(line: 73, column: 1, scope: !1078)
!1153 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !998, line: 76, type: !1154, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1157)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1003, !1156, !85, !1156, !85}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1165, !1167, !1170, !1173, !1175, !1178, !1179, !1180, !1182}
!1158 = !DILocalVariable(name: "src", arg: 1, scope: !1153, file: !998, line: 76, type: !1156)
!1159 = !DILocalVariable(name: "src_host", arg: 2, scope: !1153, file: !998, line: 76, type: !85)
!1160 = !DILocalVariable(name: "dst", arg: 3, scope: !1153, file: !998, line: 77, type: !1156)
!1161 = !DILocalVariable(name: "dst_host", arg: 4, scope: !1153, file: !998, line: 77, type: !85)
!1162 = !DILocalVariable(name: "c", scope: !1153, file: !998, line: 79, type: !1003)
!1163 = !DILocalVariable(name: "i", scope: !1164, file: !998, line: 83, type: !57)
!1164 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 83, column: 5)
!1165 = !DILocalVariable(name: "i", scope: !1166, file: !998, line: 91, type: !57)
!1166 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 91, column: 5)
!1167 = !DILocalVariable(name: "zero", scope: !1168, file: !998, line: 100, type: !1003)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !998, line: 98, column: 42)
!1169 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 96, column: 9)
!1170 = !DILocalVariable(name: "zero", scope: !1171, file: !998, line: 107, type: !1003)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !998, line: 104, column: 28)
!1172 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 104, column: 9)
!1173 = !DILocalVariable(name: "i", scope: !1174, file: !998, line: 115, type: !57)
!1174 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 115, column: 5)
!1175 = !DILocalVariable(name: "dst_stride_bytes", scope: !1176, file: !998, line: 117, type: !147)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !998, line: 115, column: 47)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !998, line: 115, column: 5)
!1178 = !DILocalVariable(name: "src_stride_bytes", scope: !1176, file: !998, line: 118, type: !147)
!1179 = !DILocalVariable(name: "insert", scope: !1176, file: !998, line: 120, type: !57)
!1180 = !DILocalVariable(name: "j", scope: !1181, file: !998, line: 128, type: !57)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !998, line: 128, column: 9)
!1182 = !DILocalVariable(name: "j", scope: !1183, file: !998, line: 151, type: !57)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !998, line: 151, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1153, file: !998, line: 145, column: 51)
!1185 = !DILocation(line: 0, scope: !1153)
!1186 = !DILocation(line: 79, column: 5, scope: !1153)
!1187 = !DILocation(line: 79, column: 17, scope: !1153)
!1188 = !DILocation(line: 80, column: 13, scope: !1153)
!1189 = !DILocation(line: 80, column: 39, scope: !1153)
!1190 = !{!1191, !1192, i64 12}
!1191 = !{!"_ZTS15halide_buffer_t", !1032, i64 0, !1192, i64 8, !1192, i64 12, !1032, i64 16, !1193, i64 24, !1196, i64 28, !1192, i64 32, !1192, i64 36}
!1192 = !{!"any pointer", !1033, i64 0}
!1193 = !{!"_ZTS13halide_type_t", !1194, i64 0, !1033, i64 1, !1195, i64 2}
!1194 = !{!"_ZTS18halide_type_code_t", !1033, i64 0}
!1195 = !{!"short", !1033, i64 0}
!1196 = !{!"int", !1033, i64 0}
!1197 = !DILocation(line: 80, column: 24, scope: !1153)
!1198 = !DILocation(line: 80, column: 51, scope: !1153)
!1199 = !{!1191, !1032, i64 0}
!1200 = !DILocation(line: 80, column: 7, scope: !1153)
!1201 = !DILocation(line: 80, column: 11, scope: !1153)
!1202 = !DILocation(line: 81, column: 13, scope: !1153)
!1203 = !DILocation(line: 81, column: 39, scope: !1153)
!1204 = !DILocation(line: 81, column: 24, scope: !1153)
!1205 = !DILocation(line: 81, column: 51, scope: !1153)
!1206 = !DILocation(line: 81, column: 7, scope: !1153)
!1207 = !DILocation(line: 81, column: 11, scope: !1153)
!1208 = !DILocalVariable(name: "this", arg: 1, scope: !1209, type: !1211, flags: DIFlagArtificial | DIFlagObjectPointer)
!1209 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !42, line: 481, type: !192, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !191, retainedNodes: !1210)
!1210 = !{!1208}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!1212 = !DILocation(line: 0, scope: !1209, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 82, column: 30, scope: !1153)
!1214 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !1213)
!1215 = !{!1193, !1033, i64 1}
!1216 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !1213)
!1217 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !1213)
!1218 = !DILocation(line: 82, column: 20, scope: !1153)
!1219 = !DILocation(line: 82, column: 7, scope: !1153)
!1220 = !DILocation(line: 82, column: 18, scope: !1153)
!1221 = !DILocation(line: 0, scope: !1164)
!1222 = !DILocation(line: 84, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !998, line: 83, column: 45)
!1224 = distinct !DILexicalBlock(scope: !1164, file: !998, line: 83, column: 5)
!1225 = !DILocation(line: 84, column: 21, scope: !1223)
!1226 = !DILocation(line: 85, column: 9, scope: !1223)
!1227 = !DILocation(line: 85, column: 31, scope: !1223)
!1228 = !DILocation(line: 86, column: 9, scope: !1223)
!1229 = !DILocation(line: 86, column: 31, scope: !1223)
!1230 = !DILocation(line: 90, column: 7, scope: !1153)
!1231 = !DILocation(line: 0, scope: !1166)
!1232 = !DILocation(line: 91, column: 30, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1166, file: !998, line: 91, column: 5)
!1234 = !{!1191, !1196, i64 28}
!1235 = !DILocation(line: 91, column: 23, scope: !1233)
!1236 = !DILocation(line: 91, column: 5, scope: !1166)
!1237 = !{!1191, !1192, i64 32}
!1238 = !DILocation(line: 94, column: 17, scope: !1153)
!1239 = !DILocation(line: 94, column: 22, scope: !1153)
!1240 = !DILocation(line: 96, column: 33, scope: !1169)
!1241 = !DILocation(line: 96, column: 25, scope: !1169)
!1242 = !DILocation(line: 96, column: 44, scope: !1169)
!1243 = !DILocation(line: 92, column: 46, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1233, file: !998, line: 91, column: 47)
!1245 = !{!1246, !1196, i64 8}
!1246 = !{!"_ZTS18halide_dimension_t", !1196, i64 0, !1196, i64 4, !1196, i64 8, !1196, i64 12}
!1247 = !DILocation(line: 92, column: 34, scope: !1244)
!1248 = !DILocation(line: 92, column: 68, scope: !1244)
!1249 = !{!1246, !1196, i64 0}
!1250 = !DILocation(line: 92, column: 86, scope: !1244)
!1251 = !DILocation(line: 92, column: 72, scope: !1244)
!1252 = !DILocation(line: 92, column: 55, scope: !1244)
!1253 = !DILocation(line: 92, column: 53, scope: !1244)
!1254 = !DILocation(line: 92, column: 21, scope: !1244)
!1255 = !DILocation(line: 91, column: 43, scope: !1233)
!1256 = distinct !{!1256, !1236, !1257, !1041}
!1257 = !DILocation(line: 93, column: 5, scope: !1166)
!1258 = !DILocation(line: 0, scope: !1209, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 97, column: 19, scope: !1169)
!1260 = !DILocation(line: 0, scope: !1209, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 97, column: 40, scope: !1169)
!1262 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !1261)
!1263 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !1261)
!1264 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !1261)
!1265 = !DILocation(line: 97, column: 27, scope: !1169)
!1266 = !DILocation(line: 97, column: 48, scope: !1169)
!1267 = !DILocation(line: 100, column: 21, scope: !1168)
!1268 = !DILocation(line: 101, column: 9, scope: !1168)
!1269 = !DILocation(line: 104, column: 22, scope: !1172)
!1270 = !DILocation(line: 104, column: 9, scope: !1153)
!1271 = !DILocation(line: 0, scope: !1174)
!1272 = !DILocation(line: 115, column: 5, scope: !1174)
!1273 = !DILocation(line: 107, column: 21, scope: !1171)
!1274 = !DILocation(line: 108, column: 9, scope: !1171)
!1275 = !DILocation(line: 144, column: 14, scope: !1153)
!1276 = !DILocation(line: 144, column: 28, scope: !1153)
!1277 = !DILocation(line: 144, column: 25, scope: !1153)
!1278 = !DILocation(line: 144, column: 50, scope: !1153)
!1279 = !DILocation(line: 145, column: 28, scope: !1153)
!1280 = !DILocation(line: 117, column: 59, scope: !1176)
!1281 = !DILocation(line: 117, column: 47, scope: !1176)
!1282 = !DILocation(line: 0, scope: !1209, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 117, column: 78, scope: !1176)
!1284 = !DILocation(line: 117, column: 66, scope: !1176)
!1285 = !DILocation(line: 0, scope: !1176)
!1286 = !DILocation(line: 118, column: 59, scope: !1176)
!1287 = !DILocation(line: 118, column: 47, scope: !1176)
!1288 = !DILocation(line: 0, scope: !1209, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 118, column: 78, scope: !1176)
!1290 = !DILocation(line: 118, column: 66, scope: !1176)
!1291 = !DILocation(line: 121, column: 33, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !998, line: 121, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1176, file: !998, line: 121, column: 9)
!1294 = !DILocation(line: 121, column: 9, scope: !1293)
!1295 = !DILocation(line: 124, column: 36, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !998, line: 124, column: 17)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !998, line: 121, column: 48)
!1298 = !DILocation(line: 124, column: 34, scope: !1296)
!1299 = !DILocation(line: 124, column: 63, scope: !1296)
!1300 = !DILocation(line: 121, column: 44, scope: !1292)
!1301 = distinct !{!1301, !1294, !1302, !1041}
!1302 = !DILocation(line: 127, column: 9, scope: !1293)
!1303 = !DILocation(line: 0, scope: !1293)
!1304 = !DILocation(line: 0, scope: !1181)
!1305 = !DILocation(line: 128, column: 27, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1181, file: !998, line: 128, column: 9)
!1307 = !DILocation(line: 128, column: 9, scope: !1181)
!1308 = !DILocation(line: 133, column: 40, scope: !1176)
!1309 = !{!1246, !1196, i64 4}
!1310 = !DILocation(line: 133, column: 28, scope: !1176)
!1311 = !DILocation(line: 133, column: 9, scope: !1176)
!1312 = !DILocation(line: 133, column: 26, scope: !1176)
!1313 = !DILocation(line: 135, column: 9, scope: !1176)
!1314 = !DILocation(line: 135, column: 36, scope: !1176)
!1315 = !DILocation(line: 136, column: 9, scope: !1176)
!1316 = !DILocation(line: 136, column: 36, scope: !1176)
!1317 = !DILocation(line: 115, column: 43, scope: !1177)
!1318 = !DILocation(line: 115, column: 23, scope: !1177)
!1319 = distinct !{!1319, !1272, !1320, !1041}
!1320 = !DILocation(line: 137, column: 5, scope: !1174)
!1321 = !DILocation(line: 129, column: 38, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1306, file: !998, line: 128, column: 42)
!1323 = !DILocation(line: 129, column: 27, scope: !1322)
!1324 = !DILocation(line: 129, column: 13, scope: !1322)
!1325 = !DILocation(line: 129, column: 25, scope: !1322)
!1326 = !DILocation(line: 130, column: 37, scope: !1322)
!1327 = !DILocation(line: 130, column: 13, scope: !1322)
!1328 = !DILocation(line: 130, column: 35, scope: !1322)
!1329 = !DILocation(line: 131, column: 37, scope: !1322)
!1330 = !DILocation(line: 131, column: 13, scope: !1322)
!1331 = !DILocation(line: 131, column: 35, scope: !1322)
!1332 = distinct !{!1332, !1307, !1333, !1041}
!1333 = !DILocation(line: 132, column: 9, scope: !1181)
!1334 = !DILocation(line: 145, column: 25, scope: !1153)
!1335 = !DILocation(line: 144, column: 5, scope: !1153)
!1336 = !DILocation(line: 147, column: 25, scope: !1184)
!1337 = !DILocation(line: 147, column: 22, scope: !1184)
!1338 = !DILocation(line: 0, scope: !1183)
!1339 = !DILocation(line: 152, column: 31, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !998, line: 151, column: 49)
!1341 = distinct !DILexicalBlock(scope: !1183, file: !998, line: 151, column: 9)
!1342 = !DILocation(line: 152, column: 29, scope: !1340)
!1343 = !DILocation(line: 153, column: 41, scope: !1340)
!1344 = !DILocation(line: 153, column: 39, scope: !1340)
!1345 = !DILocation(line: 154, column: 41, scope: !1340)
!1346 = !DILocation(line: 154, column: 39, scope: !1340)
!1347 = !DILocation(line: 156, column: 37, scope: !1184)
!1348 = !DILocation(line: 157, column: 47, scope: !1184)
!1349 = !DILocation(line: 158, column: 47, scope: !1184)
!1350 = distinct !{!1350, !1335, !1351, !1041}
!1351 = !DILocation(line: 159, column: 5, scope: !1153)
!1352 = !DILocation(line: 160, column: 12, scope: !1153)
!1353 = !{i64 0, i64 8, !1031, i64 8, i64 8, !1031, i64 16, i64 8, !1031, i64 24, i64 128, !1134, i64 152, i64 128, !1134, i64 280, i64 128, !1134, i64 408, i64 8, !1031}
!1354 = !DILocation(line: 160, column: 5, scope: !1153)
!1355 = !DILocation(line: 161, column: 1, scope: !1153)
!1356 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !998, line: 163, type: !1357, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1003, !1156}
!1359 = !{!1360}
!1360 = !DILocalVariable(name: "buf", arg: 1, scope: !1356, file: !998, line: 163, type: !1156)
!1361 = !DILocation(line: 0, scope: !1356)
!1362 = !DILocation(line: 164, column: 12, scope: !1356)
!1363 = !DILocation(line: 164, column: 5, scope: !1356)
!1364 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !998, line: 167, type: !1357, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1365)
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "buf", arg: 1, scope: !1364, file: !998, line: 167, type: !1156)
!1367 = !DILocation(line: 0, scope: !1364)
!1368 = !DILocation(line: 168, column: 12, scope: !1364)
!1369 = !DILocation(line: 168, column: 5, scope: !1364)
!1370 = !DILocation(line: 0, scope: !477)
!1371 = !DILocation(line: 45, column: 30, scope: !477)
!1372 = !DILocation(line: 45, column: 66, scope: !477)
!1373 = !DILocation(line: 45, column: 20, scope: !477)
!1374 = !DILocation(line: 46, column: 28, scope: !477)
!1375 = !DILocation(line: 46, column: 12, scope: !477)
!1376 = !DILocation(line: 47, column: 5, scope: !477)
!1377 = !DISubprogram(name: "objc_getClass", scope: !476, file: !476, line: 7, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!97, !335}
!1380 = !DISubprogram(name: "sel_getUid", scope: !476, file: !476, line: 8, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1381 = !DILocation(line: 0, scope: !489)
!1382 = !DILocation(line: 53, column: 21, scope: !489)
!1383 = !DILocation(line: 53, column: 5, scope: !489)
!1384 = !DILocation(line: 54, column: 1, scope: !489)
!1385 = !DILocation(line: 0, scope: !496)
!1386 = !DILocation(line: 59, column: 20, scope: !496)
!1387 = !DILocation(line: 59, column: 5, scope: !496)
!1388 = !DILocation(line: 60, column: 1, scope: !496)
!1389 = !DILocation(line: 0, scope: !501)
!1390 = !DILocation(line: 65, column: 20, scope: !501)
!1391 = !DILocation(line: 65, column: 5, scope: !501)
!1392 = !DILocation(line: 66, column: 1, scope: !501)
!1393 = !DILocation(line: 0, scope: !506)
!1394 = !DILocation(line: 72, column: 36, scope: !506)
!1395 = !DILocation(line: 72, column: 63, scope: !506)
!1396 = !DILocation(line: 72, column: 25, scope: !506)
!1397 = !DILocation(line: 74, column: 33, scope: !506)
!1398 = !DILocation(line: 74, column: 12, scope: !506)
!1399 = !DILocation(line: 74, column: 5, scope: !506)
!1400 = distinct !DISubprogram(name: "ns_log_utf8_string", linkageName: "_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc", scope: !3, file: !476, line: 80, type: !1401, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !335}
!1403 = !{!1404, !1405, !1406}
!1404 = !DILocalVariable(name: "string", arg: 1, scope: !1400, file: !476, line: 80, type: !335)
!1405 = !DILocalVariable(name: "format_string", scope: !1400, file: !476, line: 81, type: !480)
!1406 = !DILocalVariable(name: "ns_string", scope: !1400, file: !476, line: 82, type: !480)
!1407 = !DILocation(line: 0, scope: !1400)
!1408 = !DILocation(line: 81, column: 29, scope: !1400)
!1409 = !DILocation(line: 82, column: 58, scope: !1400)
!1410 = !DILocation(line: 82, column: 25, scope: !1400)
!1411 = !DILocation(line: 83, column: 5, scope: !1400)
!1412 = !DILocation(line: 84, column: 5, scope: !1400)
!1413 = !DILocation(line: 85, column: 5, scope: !1400)
!1414 = !DILocation(line: 86, column: 1, scope: !1400)
!1415 = !DISubprogram(name: "strlen", scope: !476, file: !476, line: 78, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!49, !335}
!1418 = !DISubprogram(name: "NSLog", scope: !476, file: !476, line: 35, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !97, null}
!1421 = distinct !DISubprogram(name: "ns_log_object", linkageName: "_ZN6Halide7Runtime8Internal13ns_log_objectEPv", scope: !3, file: !476, line: 88, type: !490, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1422)
!1422 = !{!1423, !1424}
!1423 = !DILocalVariable(name: "obj", arg: 1, scope: !1421, file: !476, line: 88, type: !480)
!1424 = !DILocalVariable(name: "format_string", scope: !1421, file: !476, line: 89, type: !480)
!1425 = !DILocation(line: 0, scope: !1421)
!1426 = !DILocation(line: 89, column: 29, scope: !1421)
!1427 = !DILocation(line: 90, column: 5, scope: !1421)
!1428 = !DILocation(line: 91, column: 5, scope: !1421)
!1429 = !DILocation(line: 92, column: 1, scope: !1421)
!1430 = !DILocation(line: 0, scope: !520)
!1431 = !DILocation(line: 38, column: 22, scope: !520)
!1432 = !DILocation(line: 38, column: 30, scope: !520)
!1433 = !DILocation(line: 38, column: 12, scope: !520)
!1434 = !DILocation(line: 38, column: 5, scope: !520)
!1435 = !DILocation(line: 0, scope: !533)
!1436 = !DILocation(line: 45, column: 43, scope: !533)
!1437 = !DILocation(line: 45, column: 51, scope: !533)
!1438 = !DILocation(line: 45, column: 33, scope: !533)
!1439 = !DILocation(line: 45, column: 5, scope: !533)
!1440 = !DILocation(line: 0, scope: !543)
!1441 = !DILocation(line: 49, column: 25, scope: !543)
!1442 = !DILocation(line: 53, column: 74, scope: !543)
!1443 = !DILocation(line: 53, column: 81, scope: !543)
!1444 = !DILocation(line: 53, column: 64, scope: !543)
!1445 = !DILocation(line: 57, column: 16, scope: !543)
!1446 = !DILocation(line: 57, column: 32, scope: !543)
!1447 = !DILocation(line: 57, column: 5, scope: !543)
!1448 = !DILocation(line: 59, column: 5, scope: !543)
!1449 = !DILocation(line: 60, column: 5, scope: !543)
!1450 = !DILocation(line: 0, scope: !562)
!1451 = !DILocation(line: 66, column: 15, scope: !562)
!1452 = !DILocation(line: 66, column: 31, scope: !562)
!1453 = !DILocation(line: 66, column: 5, scope: !562)
!1454 = !DILocation(line: 67, column: 1, scope: !562)
!1455 = !DILocation(line: 0, scope: !573)
!1456 = !DILocation(line: 72, column: 22, scope: !573)
!1457 = !DILocation(line: 72, column: 30, scope: !573)
!1458 = !DILocation(line: 72, column: 12, scope: !573)
!1459 = !DILocation(line: 72, column: 5, scope: !573)
!1460 = !DILocation(line: 0, scope: !580)
!1461 = !DILocation(line: 78, column: 53, scope: !580)
!1462 = !DILocation(line: 78, column: 61, scope: !580)
!1463 = !DILocation(line: 78, column: 43, scope: !580)
!1464 = !DILocation(line: 78, column: 5, scope: !580)
!1465 = !DILocation(line: 0, scope: !593)
!1466 = !DILocation(line: 84, column: 50, scope: !593)
!1467 = !DILocation(line: 84, column: 58, scope: !593)
!1468 = !DILocation(line: 84, column: 40, scope: !593)
!1469 = !DILocation(line: 84, column: 5, scope: !593)
!1470 = !DILocation(line: 0, scope: !605)
!1471 = !DILocation(line: 88, column: 5, scope: !605)
!1472 = !DILocation(line: 92, column: 52, scope: !605)
!1473 = !DILocation(line: 92, column: 60, scope: !605)
!1474 = !DILocation(line: 93, column: 52, scope: !605)
!1475 = !DILocation(line: 92, column: 42, scope: !605)
!1476 = !DILocation(line: 94, column: 16, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !605, file: !6, line: 94, column: 9)
!1478 = !DILocation(line: 94, column: 9, scope: !605)
!1479 = !DILocation(line: 95, column: 23, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !6, line: 94, column: 28)
!1481 = !{!1192, !1192, i64 0}
!1482 = !DILocation(line: 95, column: 9, scope: !1480)
!1483 = !DILocation(line: 96, column: 5, scope: !1480)
!1484 = !DILocation(line: 99, column: 1, scope: !605)
!1485 = !DILocation(line: 98, column: 5, scope: !605)
!1486 = !DILocation(line: 0, scope: !623)
!1487 = !DILocation(line: 104, column: 22, scope: !623)
!1488 = !DILocation(line: 104, column: 38, scope: !623)
!1489 = !DILocation(line: 104, column: 12, scope: !623)
!1490 = !DILocation(line: 104, column: 5, scope: !623)
!1491 = !DILocation(line: 0, scope: !633)
!1492 = !DILocation(line: 110, column: 15, scope: !633)
!1493 = !DILocation(line: 110, column: 24, scope: !633)
!1494 = !DILocation(line: 110, column: 64, scope: !633)
!1495 = !DILocation(line: 110, column: 5, scope: !633)
!1496 = !DILocation(line: 111, column: 1, scope: !633)
!1497 = !DILocation(line: 0, scope: !641)
!1498 = !DILocation(line: 116, column: 15, scope: !641)
!1499 = !DILocation(line: 116, column: 24, scope: !641)
!1500 = !DILocation(line: 116, column: 5, scope: !641)
!1501 = !DILocation(line: 117, column: 1, scope: !641)
!1502 = !DILocation(line: 0, scope: !651)
!1503 = !DILocation(line: 124, column: 56, scope: !651)
!1504 = !DILocation(line: 127, column: 15, scope: !651)
!1505 = !DILocation(line: 127, column: 23, scope: !651)
!1506 = !DILocation(line: 127, column: 54, scope: !651)
!1507 = !DILocation(line: 127, column: 5, scope: !651)
!1508 = !DILocation(line: 128, column: 1, scope: !651)
!1509 = !DILocation(line: 0, scope: !666)
!1510 = !DILocation(line: 133, column: 15, scope: !666)
!1511 = !DILocation(line: 133, column: 24, scope: !666)
!1512 = !DILocation(line: 133, column: 5, scope: !666)
!1513 = !DILocation(line: 134, column: 1, scope: !666)
!1514 = !DILocation(line: 0, scope: !677)
!1515 = !DILocation(line: 139, column: 33, scope: !677)
!1516 = !DILocation(line: 140, column: 20, scope: !686)
!1517 = !DILocation(line: 140, column: 28, scope: !686)
!1518 = !DILocation(line: 140, column: 9, scope: !686)
!1519 = !DILocation(line: 140, column: 9, scope: !677)
!1520 = !DILocation(line: 0, scope: !685)
!1521 = !DILocation(line: 143, column: 28, scope: !685)
!1522 = !DILocation(line: 144, column: 29, scope: !685)
!1523 = !DILocation(line: 147, column: 1, scope: !677)
!1524 = !DILocation(line: 0, scope: !696)
!1525 = !DILocation(line: 156, column: 15, scope: !696)
!1526 = !DILocation(line: 156, column: 24, scope: !696)
!1527 = !DILocation(line: 157, column: 15, scope: !696)
!1528 = !DILocation(line: 157, column: 34, scope: !696)
!1529 = !DILocation(line: 156, column: 5, scope: !696)
!1530 = !DILocation(line: 158, column: 1, scope: !696)
!1531 = !DILocation(line: 0, scope: !711)
!1532 = !DILocation(line: 163, column: 15, scope: !711)
!1533 = !DILocation(line: 163, column: 24, scope: !711)
!1534 = !DILocation(line: 163, column: 5, scope: !711)
!1535 = !DILocation(line: 164, column: 1, scope: !711)
!1536 = !DILocation(line: 0, scope: !718)
!1537 = !DILocation(line: 169, column: 30, scope: !718)
!1538 = !DILocation(line: 170, column: 23, scope: !718)
!1539 = !DILocation(line: 170, column: 32, scope: !718)
!1540 = !DILocation(line: 170, column: 12, scope: !718)
!1541 = !DILocation(line: 170, column: 5, scope: !718)
!1542 = !DILocation(line: 0, scope: !726)
!1543 = !DILocation(line: 174, column: 5, scope: !726)
!1544 = !DILocation(line: 175, column: 26, scope: !726)
!1545 = !DILocation(line: 180, column: 33, scope: !726)
!1546 = !DILocation(line: 180, column: 69, scope: !726)
!1547 = !DILocation(line: 180, column: 23, scope: !726)
!1548 = !DILocation(line: 181, column: 34, scope: !726)
!1549 = !DILocation(line: 181, column: 15, scope: !726)
!1550 = !DILocation(line: 184, column: 25, scope: !726)
!1551 = !DILocation(line: 184, column: 5, scope: !726)
!1552 = !DILocation(line: 188, column: 38, scope: !726)
!1553 = !DILocation(line: 188, column: 46, scope: !726)
!1554 = !DILocation(line: 188, column: 27, scope: !726)
!1555 = !DILocation(line: 191, column: 5, scope: !726)
!1556 = !DILocation(line: 192, column: 5, scope: !726)
!1557 = !DILocation(line: 194, column: 16, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !726, file: !6, line: 194, column: 9)
!1559 = !DILocation(line: 194, column: 9, scope: !726)
!1560 = !DILocation(line: 195, column: 23, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !6, line: 194, column: 28)
!1562 = !DILocation(line: 195, column: 9, scope: !1561)
!1563 = !DILocation(line: 196, column: 5, scope: !1561)
!1564 = !DILocation(line: 199, column: 1, scope: !726)
!1565 = !DILocation(line: 198, column: 5, scope: !726)
!1566 = !DILocation(line: 0, scope: !749)
!1567 = !DILocation(line: 202, column: 24, scope: !749)
!1568 = !DILocation(line: 205, column: 38, scope: !749)
!1569 = !DILocation(line: 205, column: 47, scope: !749)
!1570 = !DILocation(line: 205, column: 28, scope: !749)
!1571 = !DILocation(line: 206, column: 5, scope: !749)
!1572 = !DILocation(line: 207, column: 5, scope: !749)
!1573 = !DILocation(line: 0, scope: !763)
!1574 = !DILocation(line: 214, column: 15, scope: !763)
!1575 = !DILocation(line: 214, column: 24, scope: !763)
!1576 = !DILocation(line: 215, column: 37, scope: !763)
!1577 = !DILocation(line: 214, column: 5, scope: !763)
!1578 = !DILocation(line: 216, column: 1, scope: !763)
!1579 = !DILocation(line: 0, scope: !776)
!1580 = !DILocation(line: 222, column: 15, scope: !776)
!1581 = !DILocation(line: 222, column: 24, scope: !776)
!1582 = !DILocation(line: 222, column: 5, scope: !776)
!1583 = !DILocation(line: 224, column: 1, scope: !776)
!1584 = !DILocation(line: 0, scope: !789)
!1585 = !DILocation(line: 230, column: 15, scope: !789)
!1586 = !DILocation(line: 230, column: 24, scope: !789)
!1587 = !DILocation(line: 230, column: 5, scope: !789)
!1588 = !DILocation(line: 232, column: 1, scope: !789)
!1589 = !DILocation(line: 0, scope: !801)
!1590 = !DILocation(line: 237, column: 15, scope: !801)
!1591 = !DILocation(line: 237, column: 23, scope: !801)
!1592 = !DILocation(line: 237, column: 5, scope: !801)
!1593 = !DILocation(line: 238, column: 1, scope: !801)
!1594 = !DILocation(line: 0, scope: !808)
!1595 = !DILocation(line: 243, column: 15, scope: !808)
!1596 = !DILocation(line: 243, column: 23, scope: !808)
!1597 = !DILocation(line: 243, column: 5, scope: !808)
!1598 = !DILocation(line: 244, column: 1, scope: !808)
!1599 = !DILocation(line: 0, scope: !813)
!1600 = !DILocation(line: 249, column: 30, scope: !813)
!1601 = !DILocation(line: 249, column: 38, scope: !813)
!1602 = !DILocation(line: 249, column: 20, scope: !813)
!1603 = !DILocation(line: 249, column: 5, scope: !813)
!1604 = !DILocation(line: 0, scope: !823)
!1605 = !DILocation(line: 255, column: 27, scope: !823)
!1606 = !DILocation(line: 255, column: 12, scope: !823)
!1607 = !DILocation(line: 255, column: 5, scope: !823)
!1608 = !DILocation(line: 263, column: 40, scope: !830)
!1609 = !DILocation(line: 263, column: 26, scope: !830)
!1610 = !DILocation(line: 0, scope: !830)
!1611 = !DILocation(line: 264, column: 16, scope: !837)
!1612 = !DILocation(line: 264, column: 9, scope: !830)
!1613 = !DILocation(line: 268, column: 24, scope: !836)
!1614 = !DILocation(line: 0, scope: !836)
!1615 = !DILocation(line: 269, column: 20, scope: !840)
!1616 = !DILocation(line: 269, column: 13, scope: !836)
!1617 = !DILocation(line: 271, column: 50, scope: !839)
!1618 = !DILocation(line: 0, scope: !839)
!1619 = !DILocation(line: 272, column: 40, scope: !839)
!1620 = !DILocation(line: 273, column: 25, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !839, file: !6, line: 273, column: 17)
!1622 = !DILocation(line: 273, column: 17, scope: !839)
!1623 = !DILocation(line: 274, column: 40, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !6, line: 273, column: 37)
!1625 = !DILocation(line: 274, column: 26, scope: !1624)
!1626 = !DILocation(line: 275, column: 13, scope: !1624)
!1627 = !DILocation(line: 278, column: 5, scope: !830)
!1628 = !DISubprogram(name: "MTLCreateSystemDefaultDevice", scope: !6, file: !6, line: 13, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!97}
!1631 = !DISubprogram(name: "dlsym", scope: !6, file: !6, line: 15, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!97, !97, !335}
!1634 = distinct !DISubprogram(name: "halide_metal_acquire_context", scope: !6, file: !6, line: 341, type: !1635, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1639)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!57, !97, !1637, !1638, !85}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!1639 = !{!1640, !1641, !1642, !1643}
!1640 = !DILocalVariable(name: "user_context", arg: 1, scope: !1634, file: !6, line: 341, type: !97)
!1641 = !DILocalVariable(name: "device_ret", arg: 2, scope: !1634, file: !6, line: 341, type: !1637)
!1642 = !DILocalVariable(name: "queue_ret", arg: 3, scope: !1634, file: !6, line: 342, type: !1638)
!1643 = !DILocalVariable(name: "create", arg: 4, scope: !1634, file: !6, line: 342, type: !85)
!1644 = !DILocation(line: 0, scope: !1634)
!1645 = !DILocation(line: 344, column: 5, scope: !1634)
!1646 = !DILocation(line: 344, column: 12, scope: !1634)
!1647 = distinct !{!1647, !1645, !1648, !1041}
!1648 = !DILocation(line: 345, column: 5, scope: !1634)
!1649 = !DILocation(line: 348, column: 5, scope: !1634)
!1650 = !DILocation(line: 351, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1634, file: !6, line: 351, column: 9)
!1652 = !DILocation(line: 351, column: 16, scope: !1651)
!1653 = !DILocation(line: 351, column: 27, scope: !1651)
!1654 = !DILocation(line: 0, scope: !1096, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 352, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !6, line: 351, column: 38)
!1657 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !1655)
!1658 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !1655)
!1659 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1655)
!1660 = !DILocation(line: 0, scope: !1113, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 352, column: 29, scope: !1656)
!1662 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1661)
!1663 = !DILocation(line: 0, scope: !1122, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 352, column: 9, scope: !1656)
!1665 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1664)
!1666 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1664)
!1667 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1655)
!1668 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1655)
!1669 = !DILocation(line: 0, scope: !1136, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1664)
!1671 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1670)
!1672 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1670)
!1673 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !1670)
!1674 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1670)
!1675 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !1664)
!1676 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !1664)
!1677 = !DILocation(line: 353, column: 18, scope: !1656)
!1678 = !DILocation(line: 353, column: 16, scope: !1656)
!1679 = !DILocation(line: 354, column: 20, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1656, file: !6, line: 354, column: 13)
!1681 = !DILocation(line: 0, scope: !1656)
!1682 = !DILocation(line: 354, column: 13, scope: !1656)
!1683 = !DILocalVariable(name: "this", arg: 1, scope: !1684, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!1684 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !844, file: !395, line: 37, type: !853, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !852, retainedNodes: !1685)
!1685 = !{!1683, !1686, !1687}
!1686 = !DILocalVariable(name: "ctx", arg: 2, scope: !1684, file: !395, line: 37, type: !97)
!1687 = !DILocalVariable(name: "mem", arg: 3, scope: !1684, file: !395, line: 37, type: !400)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 32)
!1689 = !DILocation(line: 0, scope: !1684, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 355, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !6, line: 354, column: 32)
!1692 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !1690)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !395, line: 38, column: 54)
!1694 = !DILocalVariable(name: "this", arg: 1, scope: !1695, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!1695 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !844, file: !395, line: 57, type: !857, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !856, retainedNodes: !1696)
!1696 = !{!1694, !1697}
!1697 = !DILocalVariable(name: "arg", arg: 2, scope: !1695, file: !395, line: 57, type: !335)
!1698 = !DILocation(line: 0, scope: !1695, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 355, column: 33, scope: !1691)
!1700 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !1699)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !395, line: 61, column: 16)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !395, line: 59, column: 13)
!1703 = !DILocalVariable(name: "this", arg: 1, scope: !1704, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!1704 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !844, file: !395, line: 166, type: !894, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !907, retainedNodes: !1705)
!1705 = !{!1703}
!1706 = !DILocation(line: 0, scope: !1704, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 355, column: 13, scope: !1691)
!1708 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !1707)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !395, line: 167, column: 19)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !395, line: 167, column: 13)
!1711 = distinct !DILexicalBlock(scope: !1704, file: !395, line: 166, column: 16)
!1712 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !1707)
!1713 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !1690)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !395, line: 48, column: 18)
!1715 = distinct !DILexicalBlock(scope: !1693, file: !395, line: 48, column: 13)
!1716 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !1690)
!1717 = !DILocalVariable(name: "this", arg: 1, scope: !1718, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!1718 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !844, file: !395, line: 162, type: !894, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !906, retainedNodes: !1719)
!1719 = !{!1717}
!1720 = !DILocation(line: 0, scope: !1718, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !1707)
!1722 = distinct !DILexicalBlock(scope: !1710, file: !395, line: 169, column: 16)
!1723 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !1721)
!1724 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !1721)
!1725 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !1721)
!1726 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !1721)
!1727 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !1707)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !395, line: 171, column: 39)
!1729 = distinct !DILexicalBlock(scope: !1722, file: !395, line: 171, column: 17)
!1730 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !1707)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !395, line: 180, column: 40)
!1732 = distinct !DILexicalBlock(scope: !1711, file: !395, line: 180, column: 13)
!1733 = !DILocation(line: 356, column: 13, scope: !1691)
!1734 = !DILocation(line: 357, column: 13, scope: !1691)
!1735 = !DILocation(line: 0, scope: !1096, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 359, column: 9, scope: !1656)
!1737 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1736)
!1738 = !DILocation(line: 0, scope: !1113, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 359, column: 29, scope: !1656)
!1740 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1739)
!1741 = !DILocation(line: 0, scope: !1122, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 359, column: 9, scope: !1656)
!1743 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1742)
!1744 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1742)
!1745 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1736)
!1746 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1736)
!1747 = !DILocation(line: 0, scope: !1136, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1742)
!1749 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1748)
!1750 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1748)
!1751 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !1748)
!1752 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1748)
!1753 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !1742)
!1754 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !1742)
!1755 = !DILocation(line: 360, column: 35, scope: !1656)
!1756 = !DILocation(line: 360, column: 17, scope: !1656)
!1757 = !DILocation(line: 360, column: 15, scope: !1656)
!1758 = !DILocation(line: 361, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1656, file: !6, line: 361, column: 13)
!1760 = !DILocation(line: 361, column: 13, scope: !1656)
!1761 = !DILocation(line: 372, column: 5, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !6, line: 372, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1634, file: !6, line: 372, column: 5)
!1764 = !DILocation(line: 0, scope: !1684, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 362, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !6, line: 361, column: 31)
!1767 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !1765)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !395, line: 43, column: 16)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !395, line: 41, column: 20)
!1770 = distinct !DILexicalBlock(scope: !1693, file: !395, line: 39, column: 13)
!1771 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !1765)
!1772 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !1765)
!1773 = !DILocation(line: 0, scope: !1695, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 362, column: 33, scope: !1766)
!1775 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !1774)
!1776 = !DILocation(line: 0, scope: !1704, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 362, column: 13, scope: !1766)
!1778 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !1777)
!1779 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !1777)
!1780 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !1765)
!1781 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !1765)
!1782 = !DILocation(line: 0, scope: !1718, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !1777)
!1784 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !1783)
!1785 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !1783)
!1786 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !1783)
!1787 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !1783)
!1788 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !1777)
!1789 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !1777)
!1790 = !DILocation(line: 363, column: 31, scope: !1766)
!1791 = !DILocation(line: 363, column: 13, scope: !1766)
!1792 = !DILocation(line: 364, column: 20, scope: !1766)
!1793 = !DILocation(line: 365, column: 13, scope: !1766)
!1794 = !DILocation(line: 366, column: 13, scope: !1766)
!1795 = !DILocation(line: 372, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1762, file: !6, line: 372, column: 5)
!1797 = !DILocation(line: 374, column: 19, scope: !1634)
!1798 = !DILocation(line: 374, column: 17, scope: !1634)
!1799 = !DILocation(line: 375, column: 18, scope: !1634)
!1800 = !DILocation(line: 375, column: 16, scope: !1634)
!1801 = !DILocation(line: 376, column: 5, scope: !1634)
!1802 = !DILocation(line: 377, column: 1, scope: !1634)
!1803 = !DISubprogram(name: "halide_print", scope: !42, file: !42, line: 97, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !97, !335}
!1806 = !DISubprogram(name: "abort", scope: !47, file: !47, line: 108, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1807 = !DISubprogram(name: "halide_start_clock", scope: !47, file: !47, line: 135, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1808 = distinct !DISubprogram(name: "halide_metal_release_context", scope: !6, file: !6, line: 379, type: !315, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1809)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "user_context", arg: 1, scope: !1808, file: !6, line: 379, type: !97)
!1811 = !DILocation(line: 0, scope: !1808)
!1812 = !DILocation(line: 380, column: 5, scope: !1808)
!1813 = !DILocation(line: 381, column: 5, scope: !1808)
!1814 = distinct !DISubprogram(name: "save", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb", scope: !946, file: !6, line: 412, type: !954, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !953, retainedNodes: !1815)
!1815 = !{!1816, !1818, !1819}
!1816 = !DILocalVariable(name: "this", arg: 1, scope: !1814, type: !1817, flags: DIFlagArtificial | DIFlagObjectPointer)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 32)
!1818 = !DILocalVariable(name: "user_context_arg", arg: 2, scope: !1814, file: !6, line: 412, type: !97)
!1819 = !DILocalVariable(name: "create", arg: 3, scope: !1814, file: !6, line: 412, type: !85)
!1820 = !DILocation(line: 0, scope: !1814)
!1821 = !DILocation(line: 413, column: 5, scope: !1814)
!1822 = !DILocation(line: 413, column: 18, scope: !1814)
!1823 = !{!1824, !1192, i64 4}
!1824 = !{!"_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE", !1192, i64 0, !1192, i64 4, !1192, i64 8, !1192, i64 12, !1196, i64 16}
!1825 = !DILocation(line: 414, column: 12, scope: !1814)
!1826 = !DILocation(line: 414, column: 5, scope: !1814)
!1827 = !DILocation(line: 414, column: 10, scope: !1814)
!1828 = !{!1824, !1192, i64 0}
!1829 = !DILocation(line: 415, column: 42, scope: !1814)
!1830 = !DILocation(line: 415, column: 57, scope: !1814)
!1831 = !DILocation(line: 415, column: 66, scope: !1814)
!1832 = !DILocation(line: 415, column: 13, scope: !1814)
!1833 = !DILocation(line: 415, column: 5, scope: !1814)
!1834 = !DILocation(line: 415, column: 11, scope: !1814)
!1835 = !{!1824, !1196, i64 16}
!1836 = !DILocation(line: 416, column: 1, scope: !1814)
!1837 = distinct !DISubprogram(name: "restore", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv", scope: !946, file: !6, line: 418, type: !958, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !957, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "this", arg: 1, scope: !1837, type: !1817, flags: DIFlagArtificial | DIFlagObjectPointer)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 419, column: 34, scope: !1837)
!1842 = !DILocation(line: 419, column: 5, scope: !1837)
!1843 = !DILocation(line: 420, column: 28, scope: !1837)
!1844 = !DILocation(line: 420, column: 5, scope: !1837)
!1845 = !DILocation(line: 421, column: 1, scope: !1837)
!1846 = distinct !DISubprogram(name: "command_buffer_completed_handler_invoke", linkageName: "_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 439, type: !128, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1847)
!1847 = !{!1848, !1849, !1850}
!1848 = !DILocalVariable(name: "block", arg: 1, scope: !1846, file: !6, line: 439, type: !130)
!1849 = !DILocalVariable(name: "buffer", arg: 2, scope: !1846, file: !6, line: 439, type: !131)
!1850 = !DILocalVariable(name: "buffer_error", scope: !1846, file: !6, line: 440, type: !480)
!1851 = !DILocation(line: 0, scope: !1846)
!1852 = !DILocation(line: 440, column: 28, scope: !1846)
!1853 = !DILocation(line: 441, column: 22, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !6, line: 441, column: 9)
!1855 = !DILocation(line: 441, column: 9, scope: !1846)
!1856 = !DILocation(line: 442, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !6, line: 441, column: 34)
!1858 = !DILocation(line: 443, column: 9, scope: !1857)
!1859 = !DILocation(line: 444, column: 5, scope: !1857)
!1860 = !DILocation(line: 445, column: 1, scope: !1846)
!1861 = distinct !DISubprogram(name: "halide_metal_device_malloc", scope: !6, file: !6, line: 462, type: !1862, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!57, !97, !915}
!1864 = !{!1865, !1866, !1867, !1868, !1870, !1871, !1872, !1873, !1874}
!1865 = !DILocalVariable(name: "user_context", arg: 1, scope: !1861, file: !6, line: 462, type: !97)
!1866 = !DILocalVariable(name: "buf", arg: 2, scope: !1861, file: !6, line: 462, type: !915)
!1867 = !DILocalVariable(name: "size", scope: !1861, file: !6, line: 467, type: !248)
!1868 = !DILocalVariable(name: "i", scope: !1869, file: !6, line: 475, type: !57)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 475, column: 5)
!1870 = !DILocalVariable(name: "metal_context", scope: !1861, file: !6, line: 481, type: !946)
!1871 = !DILocalVariable(name: "t_before", scope: !1861, file: !6, line: 487, type: !147)
!1872 = !DILocalVariable(name: "handle", scope: !1861, file: !6, line: 490, type: !910)
!1873 = !DILocalVariable(name: "metal_buf", scope: !1861, file: !6, line: 495, type: !523)
!1874 = !DILocalVariable(name: "t_after", scope: !1861, file: !6, line: 510, type: !147)
!1875 = !DILocation(line: 0, scope: !1861)
!1876 = !DILocation(line: 0, scope: !1096, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 463, column: 5, scope: !1861)
!1878 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !1877)
!1879 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !1877)
!1880 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1877)
!1881 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1877)
!1882 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1877)
!1883 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !1877)
!1884 = !DILocation(line: 0, scope: !1110, inlinedAt: !1877)
!1885 = !DILocation(line: 0, scope: !1113, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 464, column: 9, scope: !1861)
!1887 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1886)
!1888 = !DILocalVariable(name: "this", arg: 1, scope: !1889, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1889 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !397, file: !395, line: 97, type: !437, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !436, retainedNodes: !1890)
!1890 = !{!1888, !1891}
!1891 = !DILocalVariable(name: "arg", arg: 2, scope: !1889, file: !395, line: 97, type: !439)
!1892 = !DILocation(line: 0, scope: !1889, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 464, column: 57, scope: !1861)
!1894 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !1893)
!1895 = !DILocation(line: 0, scope: !1113, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 465, column: 9, scope: !1861)
!1897 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1896)
!1898 = !DILocation(line: 465, column: 25, scope: !1861)
!1899 = !DILocation(line: 0, scope: !1889, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 465, column: 22, scope: !1861)
!1901 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !1900)
!1902 = !DILocation(line: 0, scope: !1113, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 465, column: 29, scope: !1861)
!1904 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1903)
!1905 = !DILocation(line: 0, scope: !1122, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 463, column: 5, scope: !1861)
!1907 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !1906)
!1908 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1906)
!1909 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1906)
!1910 = !DILocation(line: 0, scope: !1136, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1906)
!1912 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1911)
!1913 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1911)
!1914 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !1911)
!1915 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1911)
!1916 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !1906)
!1917 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !1906)
!1918 = !DILocalVariable(name: "this", arg: 1, scope: !1919, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1919 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !144, file: !42, line: 1518, type: !246, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !253, retainedNodes: !1920)
!1920 = !{!1918}
!1921 = !DILocation(line: 0, scope: !1919, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 467, column: 24, scope: !1861)
!1923 = !DILocalVariable(name: "this", arg: 1, scope: !1924, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1924 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !144, file: !42, line: 1506, type: !250, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !252, retainedNodes: !1925)
!1925 = !{!1923, !1926, !1927}
!1926 = !DILocalVariable(name: "index", scope: !1924, file: !42, line: 1507, type: !916)
!1927 = !DILocalVariable(name: "i", scope: !1928, file: !42, line: 1508, type: !57)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !42, line: 1508, column: 9)
!1929 = !DILocation(line: 0, scope: !1924, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 1519, column: 25, scope: !1919, inlinedAt: !1922)
!1931 = !DILocation(line: 0, scope: !1928, inlinedAt: !1930)
!1932 = !DILocation(line: 1508, column: 29, scope: !1933, inlinedAt: !1930)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !42, line: 1508, column: 9)
!1934 = !DILocation(line: 1508, column: 27, scope: !1933, inlinedAt: !1930)
!1935 = !DILocation(line: 1508, column: 9, scope: !1928, inlinedAt: !1930)
!1936 = !DILocation(line: 0, scope: !1209, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1514, column: 36, scope: !1924, inlinedAt: !1930)
!1938 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !1937)
!1939 = !DILocalVariable(name: "this", arg: 1, scope: !1940, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1940 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !144, file: !42, line: 1495, type: !250, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !249, retainedNodes: !1941)
!1941 = !{!1939, !1942, !1943}
!1942 = !DILocalVariable(name: "index", scope: !1940, file: !42, line: 1496, type: !916)
!1943 = !DILocalVariable(name: "i", scope: !1944, file: !42, line: 1497, type: !57)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !42, line: 1497, column: 9)
!1945 = !DILocation(line: 0, scope: !1940, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 1519, column: 33, scope: !1919, inlinedAt: !1922)
!1947 = !DILocation(line: 0, scope: !1944, inlinedAt: !1946)
!1948 = !DILocation(line: 1497, column: 9, scope: !1944, inlinedAt: !1946)
!1949 = !DILocation(line: 1509, column: 24, scope: !1950, inlinedAt: !1930)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !42, line: 1509, column: 17)
!1951 = distinct !DILexicalBlock(scope: !1933, file: !42, line: 1508, column: 46)
!1952 = !DILocation(line: 1509, column: 31, scope: !1950, inlinedAt: !1930)
!1953 = !DILocation(line: 1509, column: 17, scope: !1951, inlinedAt: !1930)
!1954 = !DILocation(line: 1510, column: 61, scope: !1955, inlinedAt: !1930)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !42, line: 1509, column: 36)
!1956 = !DILocation(line: 1510, column: 68, scope: !1955, inlinedAt: !1930)
!1957 = !DILocation(line: 1510, column: 51, scope: !1955, inlinedAt: !1930)
!1958 = !DILocation(line: 1510, column: 23, scope: !1955, inlinedAt: !1930)
!1959 = !DILocation(line: 1511, column: 13, scope: !1955, inlinedAt: !1930)
!1960 = !DILocation(line: 1508, column: 42, scope: !1933, inlinedAt: !1930)
!1961 = distinct !{!1961, !1935, !1962, !1041}
!1962 = !DILocation(line: 1512, column: 9, scope: !1928, inlinedAt: !1930)
!1963 = !DILocation(line: 1498, column: 24, scope: !1964, inlinedAt: !1946)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !42, line: 1498, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !42, line: 1497, column: 46)
!1966 = distinct !DILexicalBlock(scope: !1944, file: !42, line: 1497, column: 9)
!1967 = !DILocation(line: 1498, column: 31, scope: !1964, inlinedAt: !1946)
!1968 = !DILocation(line: 1498, column: 17, scope: !1965, inlinedAt: !1946)
!1969 = !DILocation(line: 1499, column: 61, scope: !1970, inlinedAt: !1946)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !42, line: 1498, column: 36)
!1971 = !DILocation(line: 1499, column: 68, scope: !1970, inlinedAt: !1946)
!1972 = !DILocation(line: 1499, column: 51, scope: !1970, inlinedAt: !1946)
!1973 = !DILocation(line: 1499, column: 23, scope: !1970, inlinedAt: !1946)
!1974 = !DILocation(line: 1500, column: 13, scope: !1970, inlinedAt: !1946)
!1975 = !DILocation(line: 1497, column: 42, scope: !1966, inlinedAt: !1946)
!1976 = !DILocation(line: 1497, column: 27, scope: !1966, inlinedAt: !1946)
!1977 = distinct !{!1977, !1948, !1978, !1041}
!1978 = !DILocation(line: 1501, column: 9, scope: !1944, inlinedAt: !1946)
!1979 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !1937)
!1980 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !1937)
!1981 = !DILocation(line: 1513, column: 15, scope: !1924, inlinedAt: !1930)
!1982 = !DILocation(line: 0, scope: !1209, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 1502, column: 36, scope: !1940, inlinedAt: !1946)
!1984 = !DILocation(line: 1519, column: 31, scope: !1919, inlinedAt: !1922)
!1985 = !DILocation(line: 468, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !6, line: 468, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 468, column: 5)
!1988 = !DILocation(line: 468, column: 5, scope: !1987)
!1989 = !DILocation(line: 468, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !6, line: 468, column: 5)
!1991 = !DILocation(line: 469, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 469, column: 9)
!1993 = !DILocation(line: 469, column: 9, scope: !1992)
!1994 = !DILocation(line: 469, column: 9, scope: !1861)
!1995 = !DILocation(line: 0, scope: !1869)
!1996 = !DILocation(line: 475, column: 30, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1869, file: !6, line: 475, column: 5)
!1998 = !DILocation(line: 475, column: 23, scope: !1997)
!1999 = !DILocation(line: 475, column: 5, scope: !1869)
!2000 = !DILocation(line: 0, scope: !1096, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 479, column: 5, scope: !1861)
!2002 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2001)
!2003 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2001)
!2004 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2001)
!2005 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2001)
!2006 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2001)
!2007 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2001)
!2008 = !DILocation(line: 0, scope: !1110, inlinedAt: !2001)
!2009 = !DILocation(line: 0, scope: !1113, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 479, column: 25, scope: !1861)
!2011 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2010)
!2012 = !DILocalVariable(name: "this", arg: 1, scope: !2013, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2013 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !397, file: !395, line: 113, type: !449, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !448, retainedNodes: !2014)
!2014 = !{!2012, !2015}
!2015 = !DILocalVariable(name: "buf", arg: 2, scope: !2013, file: !395, line: 113, type: !451)
!2016 = !DILocation(line: 0, scope: !2013, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 479, column: 46, scope: !1861)
!2018 = !DILocation(line: 114, column: 15, scope: !2013, inlinedAt: !2017)
!2019 = !DILocation(line: 0, scope: !1113, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 479, column: 54, scope: !1861)
!2021 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2020)
!2022 = !DILocation(line: 0, scope: !1122, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 479, column: 5, scope: !1861)
!2024 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2023)
!2025 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2023)
!2026 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2023)
!2027 = !DILocation(line: 0, scope: !1136, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2023)
!2029 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2028)
!2030 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2028)
!2031 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2028)
!2032 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2028)
!2033 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2023)
!2034 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2023)
!2035 = !DILocation(line: 481, column: 5, scope: !1861)
!2036 = !DILocation(line: 481, column: 24, scope: !1861)
!2037 = !DILocalVariable(name: "this", arg: 1, scope: !2038, type: !1817, flags: DIFlagArtificial | DIFlagObjectPointer)
!2038 = distinct !DISubprogram(name: "MetalContextHolder", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolderC2EPvb", scope: !946, file: !6, line: 404, type: !954, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !960, retainedNodes: !2039)
!2039 = !{!2037, !2040, !2041}
!2040 = !DILocalVariable(name: "user_context", arg: 2, scope: !2038, file: !6, line: 404, type: !97)
!2041 = !DILocalVariable(name: "create", arg: 3, scope: !2038, file: !6, line: 404, type: !85)
!2042 = !DILocation(line: 0, scope: !2038, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 481, column: 24, scope: !1861)
!2044 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !2043)
!2045 = distinct !DILexicalBlock(scope: !2038, file: !6, line: 404, column: 71)
!2046 = !DILocation(line: 482, column: 23, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 482, column: 9)
!2048 = !DILocation(line: 482, column: 29, scope: !2047)
!2049 = !DILocation(line: 482, column: 9, scope: !1861)
!2050 = !DILocation(line: 476, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !6, line: 476, column: 9)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !6, line: 476, column: 9)
!2053 = distinct !DILexicalBlock(scope: !1997, file: !6, line: 475, column: 47)
!2054 = !DILocation(line: 476, column: 9, scope: !2052)
!2055 = !DILocation(line: 476, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !6, line: 476, column: 9)
!2057 = !DILocation(line: 475, column: 43, scope: !1997)
!2058 = distinct !{!2058, !1999, !2059, !1041}
!2059 = !DILocation(line: 477, column: 5, scope: !1869)
!2060 = !DILocation(line: 487, column: 25, scope: !1861)
!2061 = !DILocation(line: 490, column: 46, scope: !1861)
!2062 = !DILocation(line: 491, column: 16, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 491, column: 9)
!2064 = !DILocation(line: 491, column: 9, scope: !1861)
!2065 = !DILocation(line: 495, column: 54, scope: !1861)
!2066 = !{!1824, !1192, i64 8}
!2067 = !DILocation(line: 495, column: 29, scope: !1861)
!2068 = !DILocation(line: 496, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 496, column: 9)
!2070 = !DILocation(line: 496, column: 9, scope: !1861)
!2071 = !DILocation(line: 497, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !6, line: 496, column: 31)
!2073 = !DILocation(line: 0, scope: !1684, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 498, column: 9, scope: !2072)
!2075 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !2074)
!2076 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !2074)
!2077 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !2074)
!2078 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !2074)
!2079 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !2074)
!2080 = !DILocation(line: 51, column: 9, scope: !1714, inlinedAt: !2074)
!2081 = !DILocation(line: 0, scope: !1715, inlinedAt: !2074)
!2082 = !DILocation(line: 0, scope: !1695, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 498, column: 29, scope: !2072)
!2084 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !2083)
!2085 = !DILocation(line: 498, column: 88, scope: !2072)
!2086 = !DILocalVariable(name: "this", arg: 1, scope: !2087, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!2087 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !844, file: !395, line: 67, type: !861, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !860, retainedNodes: !2088)
!2088 = !{!2086, !2089}
!2089 = !DILocalVariable(name: "arg", arg: 2, scope: !2087, file: !395, line: 67, type: !418)
!2090 = !DILocation(line: 0, scope: !2087, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 498, column: 76, scope: !2072)
!2092 = !DILocation(line: 68, column: 15, scope: !2087, inlinedAt: !2091)
!2093 = !DILocation(line: 0, scope: !1695, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 498, column: 93, scope: !2072)
!2095 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !2094)
!2096 = !DILocation(line: 0, scope: !1704, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 498, column: 9, scope: !2072)
!2098 = !DILocation(line: 167, column: 13, scope: !1711, inlinedAt: !2097)
!2099 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !2097)
!2100 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !2097)
!2101 = !DILocation(line: 0, scope: !1718, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !2097)
!2103 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !2102)
!2104 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !2102)
!2105 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !2102)
!2106 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !2102)
!2107 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !2097)
!2108 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !2097)
!2109 = !DILocation(line: 499, column: 9, scope: !2072)
!2110 = !DILocation(line: 502, column: 13, scope: !1861)
!2111 = !DILocation(line: 502, column: 17, scope: !1861)
!2112 = !{!2113, !1192, i64 0}
!2113 = !{!"_ZTSN6Halide7Runtime8Internal5Metal13device_handleE", !1192, i64 0, !1032, i64 8}
!2114 = !DILocation(line: 503, column: 13, scope: !1861)
!2115 = !DILocation(line: 503, column: 20, scope: !1861)
!2116 = !{!2113, !1032, i64 8}
!2117 = !DILocation(line: 505, column: 19, scope: !1861)
!2118 = !DILocation(line: 505, column: 17, scope: !1861)
!2119 = !DILocation(line: 506, column: 10, scope: !1861)
!2120 = !DILocation(line: 506, column: 27, scope: !1861)
!2121 = !{!1191, !1192, i64 8}
!2122 = !DILocation(line: 507, column: 28, scope: !1861)
!2123 = !{!2124, !1192, i64 60}
!2124 = !{!"_ZTS25halide_device_interface_t", !1192, i64 0, !1192, i64 4, !1192, i64 8, !1192, i64 12, !1192, i64 16, !1192, i64 20, !1192, i64 24, !1192, i64 28, !1192, i64 32, !1192, i64 36, !1192, i64 40, !1192, i64 44, !1192, i64 48, !1192, i64 52, !1192, i64 56, !1192, i64 60}
!2125 = !DILocation(line: 507, column: 34, scope: !1861)
!2126 = !{!2127, !1192, i64 0}
!2127 = !{!"_ZTS30halide_device_interface_impl_t", !1192, i64 0, !1192, i64 4, !1192, i64 8, !1192, i64 12, !1192, i64 16, !1192, i64 20, !1192, i64 24, !1192, i64 28, !1192, i64 32, !1192, i64 36, !1192, i64 40, !1192, i64 44, !1192, i64 48, !1192, i64 52, !1192, i64 56, !1192, i64 60}
!2128 = !DILocation(line: 507, column: 5, scope: !1861)
!2129 = !DILocation(line: 510, column: 24, scope: !1861)
!2130 = !DILocation(line: 0, scope: !1096, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 511, column: 5, scope: !1861)
!2132 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2131)
!2133 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2131)
!2134 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2131)
!2135 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2131)
!2136 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2131)
!2137 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2131)
!2138 = !DILocation(line: 0, scope: !1110, inlinedAt: !2131)
!2139 = !DILocation(line: 0, scope: !1113, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 511, column: 25, scope: !1861)
!2141 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2140)
!2142 = !DILocation(line: 511, column: 53, scope: !1861)
!2143 = !DILocation(line: 511, column: 44, scope: !1861)
!2144 = !DILocation(line: 511, column: 65, scope: !1861)
!2145 = !DILocalVariable(name: "this", arg: 1, scope: !2146, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !397, file: !395, line: 87, type: !430, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !429, retainedNodes: !2147)
!2147 = !{!2145, !2148}
!2148 = !DILocalVariable(name: "arg", arg: 2, scope: !2146, file: !395, line: 87, type: !432)
!2149 = !DILocation(line: 0, scope: !2146, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 511, column: 41, scope: !1861)
!2151 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !2150)
!2152 = !DILocation(line: 0, scope: !1113, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 511, column: 73, scope: !1861)
!2154 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2153)
!2155 = !DILocation(line: 0, scope: !1122, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 511, column: 5, scope: !1861)
!2157 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2156)
!2158 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2156)
!2159 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2156)
!2160 = !DILocation(line: 0, scope: !1136, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2156)
!2162 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2161)
!2163 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2161)
!2164 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2161)
!2165 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2161)
!2166 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2156)
!2167 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2156)
!2168 = !DILocalVariable(name: "this", arg: 1, scope: !2169, type: !1817, flags: DIFlagArtificial | DIFlagObjectPointer)
!2169 = distinct !DISubprogram(name: "~MetalContextHolder", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolderD2Ev", scope: !946, file: !6, line: 407, type: !958, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !961, retainedNodes: !2170)
!2170 = !{!2168}
!2171 = !DILocation(line: 0, scope: !2169, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 515, column: 1, scope: !1861)
!2173 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !2172)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !6, line: 407, column: 41)
!2175 = !DILocation(line: 515, column: 1, scope: !1861)
!2176 = !DISubprogram(name: "halide_current_time_ns", scope: !47, file: !47, line: 136, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!419, !97}
!2179 = !DISubprogram(name: "malloc", scope: !47, file: !47, line: 87, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!97, !49}
!2182 = !DISubprogram(name: "free", scope: !47, file: !47, line: 86, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !97}
!2185 = distinct !DISubprogram(name: "halide_metal_device_free", scope: !6, file: !6, line: 517, type: !1862, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191}
!2187 = !DILocalVariable(name: "user_context", arg: 1, scope: !2185, file: !6, line: 517, type: !97)
!2188 = !DILocalVariable(name: "buf", arg: 2, scope: !2185, file: !6, line: 517, type: !915)
!2189 = !DILocalVariable(name: "t_before", scope: !2185, file: !6, line: 525, type: !147)
!2190 = !DILocalVariable(name: "handle", scope: !2185, file: !6, line: 528, type: !910)
!2191 = !DILocalVariable(name: "t_after", scope: !2185, file: !6, line: 538, type: !147)
!2192 = !DILocation(line: 0, scope: !2185)
!2193 = !DILocation(line: 0, scope: !1096, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 518, column: 5, scope: !2185)
!2195 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2194)
!2196 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2194)
!2197 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2194)
!2198 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2194)
!2199 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2194)
!2200 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2194)
!2201 = !DILocation(line: 0, scope: !1110, inlinedAt: !2194)
!2202 = !DILocation(line: 0, scope: !1113, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 518, column: 25, scope: !2185)
!2204 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2203)
!2205 = !DILocation(line: 519, column: 28, scope: !2185)
!2206 = !DILocation(line: 0, scope: !1889, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 519, column: 25, scope: !2185)
!2208 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2207)
!2209 = !DILocation(line: 0, scope: !1113, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 519, column: 32, scope: !2185)
!2211 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2210)
!2212 = !DILocation(line: 519, column: 57, scope: !2185)
!2213 = !DILocalVariable(name: "this", arg: 1, scope: !2214, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2214 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !397, file: !395, line: 77, type: !424, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !423, retainedNodes: !2215)
!2215 = !{!2213, !2216}
!2216 = !DILocalVariable(name: "arg", arg: 2, scope: !2214, file: !395, line: 77, type: !147)
!2217 = !DILocation(line: 0, scope: !2214, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 519, column: 49, scope: !2185)
!2219 = !DILocation(line: 78, column: 15, scope: !2214, inlinedAt: !2218)
!2220 = !DILocation(line: 0, scope: !1113, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 519, column: 64, scope: !2185)
!2222 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2221)
!2223 = !DILocation(line: 0, scope: !1122, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 518, column: 5, scope: !2185)
!2225 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2224)
!2226 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2224)
!2227 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2224)
!2228 = !DILocation(line: 0, scope: !1136, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2224)
!2230 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2229)
!2231 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2229)
!2232 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2229)
!2233 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2229)
!2234 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2224)
!2235 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2224)
!2236 = !DILocation(line: 520, column: 14, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2185, file: !6, line: 520, column: 9)
!2238 = !DILocation(line: 520, column: 21, scope: !2237)
!2239 = !DILocation(line: 520, column: 9, scope: !2185)
!2240 = !DILocation(line: 525, column: 25, scope: !2185)
!2241 = !DILocation(line: 528, column: 51, scope: !2185)
!2242 = !DILocation(line: 528, column: 29, scope: !2185)
!2243 = !DILocation(line: 529, column: 5, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !6, line: 529, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2185, file: !6, line: 529, column: 5)
!2246 = !DILocation(line: 529, column: 5, scope: !2245)
!2247 = !DILocation(line: 529, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !6, line: 529, column: 5)
!2249 = !DILocation(line: 531, column: 31, scope: !2185)
!2250 = !DILocation(line: 531, column: 5, scope: !2185)
!2251 = !DILocation(line: 532, column: 10, scope: !2185)
!2252 = !DILocation(line: 532, column: 5, scope: !2185)
!2253 = !DILocation(line: 533, column: 17, scope: !2185)
!2254 = !DILocation(line: 534, column: 10, scope: !2185)
!2255 = !DILocation(line: 534, column: 28, scope: !2185)
!2256 = !DILocation(line: 534, column: 34, scope: !2185)
!2257 = !{!2127, !1192, i64 4}
!2258 = !DILocation(line: 534, column: 5, scope: !2185)
!2259 = !DILocation(line: 535, column: 27, scope: !2185)
!2260 = !DILocation(line: 538, column: 24, scope: !2185)
!2261 = !DILocation(line: 0, scope: !1096, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 539, column: 5, scope: !2185)
!2263 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2262)
!2264 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2262)
!2265 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2262)
!2266 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2262)
!2267 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2262)
!2268 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2262)
!2269 = !DILocation(line: 0, scope: !1110, inlinedAt: !2262)
!2270 = !DILocation(line: 0, scope: !1113, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 539, column: 25, scope: !2185)
!2272 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2271)
!2273 = !DILocation(line: 539, column: 53, scope: !2185)
!2274 = !DILocation(line: 539, column: 44, scope: !2185)
!2275 = !DILocation(line: 539, column: 65, scope: !2185)
!2276 = !DILocation(line: 0, scope: !2146, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 539, column: 41, scope: !2185)
!2278 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !2277)
!2279 = !DILocation(line: 0, scope: !1113, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 539, column: 73, scope: !2185)
!2281 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2280)
!2282 = !DILocation(line: 0, scope: !1122, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 539, column: 5, scope: !2185)
!2284 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2283)
!2285 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2283)
!2286 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2283)
!2287 = !DILocation(line: 0, scope: !1136, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2283)
!2289 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2288)
!2290 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2288)
!2291 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2288)
!2292 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2288)
!2293 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2283)
!2294 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2283)
!2295 = !DILocation(line: 543, column: 1, scope: !2185)
!2296 = distinct !DISubprogram(name: "halide_metal_initialize_kernels", scope: !6, file: !6, line: 545, type: !2297, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!57, !97, !338, !335, !57}
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2300 = !DILocalVariable(name: "user_context", arg: 1, scope: !2296, file: !6, line: 545, type: !97)
!2301 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !2296, file: !6, line: 545, type: !338)
!2302 = !DILocalVariable(name: "source", arg: 3, scope: !2296, file: !6, line: 545, type: !335)
!2303 = !DILocalVariable(name: "source_size", arg: 4, scope: !2296, file: !6, line: 545, type: !57)
!2304 = !DILocalVariable(name: "metal_context", scope: !2296, file: !6, line: 546, type: !946)
!2305 = !DILocalVariable(name: "t_before", scope: !2296, file: !6, line: 552, type: !147)
!2306 = !DILocalVariable(name: "library", scope: !2296, file: !6, line: 555, type: !66)
!2307 = !DILocalVariable(name: "t_after", scope: !2296, file: !6, line: 564, type: !147)
!2308 = !DILocation(line: 0, scope: !2296)
!2309 = !DILocation(line: 546, column: 5, scope: !2296)
!2310 = !DILocation(line: 546, column: 24, scope: !2296)
!2311 = !DILocation(line: 0, scope: !2038, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 546, column: 24, scope: !2296)
!2313 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !2312)
!2314 = !DILocation(line: 547, column: 23, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2296, file: !6, line: 547, column: 9)
!2316 = !DILocation(line: 547, column: 29, scope: !2315)
!2317 = !DILocation(line: 547, column: 9, scope: !2296)
!2318 = !DILocation(line: 552, column: 25, scope: !2296)
!2319 = !DILocation(line: 555, column: 5, scope: !2296)
!2320 = !DILocation(line: 555, column: 18, scope: !2296)
!2321 = !DILocation(line: 556, column: 86, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2296, file: !6, line: 556, column: 9)
!2323 = !DILocation(line: 556, column: 28, scope: !2322)
!2324 = !DILocation(line: 556, column: 9, scope: !2296)
!2325 = !DILocation(line: 561, column: 5, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !6, line: 561, column: 5)
!2327 = distinct !DILexicalBlock(scope: !2296, file: !6, line: 561, column: 5)
!2328 = !DILocation(line: 561, column: 5, scope: !2327)
!2329 = !DILocation(line: 561, column: 5, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !6, line: 561, column: 5)
!2331 = !DILocation(line: 564, column: 24, scope: !2296)
!2332 = !DILocation(line: 0, scope: !1096, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 565, column: 5, scope: !2296)
!2334 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2333)
!2335 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2333)
!2336 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2333)
!2337 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2333)
!2338 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2333)
!2339 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2333)
!2340 = !DILocation(line: 0, scope: !1110, inlinedAt: !2333)
!2341 = !DILocation(line: 0, scope: !1113, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 565, column: 25, scope: !2296)
!2343 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2342)
!2344 = !DILocation(line: 565, column: 85, scope: !2296)
!2345 = !DILocation(line: 565, column: 76, scope: !2296)
!2346 = !DILocation(line: 565, column: 97, scope: !2296)
!2347 = !DILocation(line: 0, scope: !2146, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 565, column: 73, scope: !2296)
!2349 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !2348)
!2350 = !DILocation(line: 0, scope: !1113, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 565, column: 105, scope: !2296)
!2352 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2351)
!2353 = !DILocation(line: 0, scope: !1122, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 565, column: 5, scope: !2296)
!2355 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2354)
!2356 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2354)
!2357 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2354)
!2358 = !DILocation(line: 0, scope: !1136, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2354)
!2360 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2359)
!2361 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2359)
!2362 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2359)
!2363 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2359)
!2364 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2354)
!2365 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2354)
!2366 = !DILocation(line: 569, column: 1, scope: !2296)
!2367 = !DILocation(line: 0, scope: !2169, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 569, column: 1, scope: !2296)
!2369 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !2368)
!2370 = distinct !DISubprogram(name: "kernel_state_setup<Halide::Runtime::Internal::Metal::mtl_library *(*)(halide_metal_device *, const char *, unsigned int), halide_metal_device *, const char *, int>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_", scope: !36, file: !37, line: 178, type: !2371, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2377, declaration: !2376, retainedNodes: !2384)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!85, !86, !97, !338, !64, !98, !2373, !64, !335, !57}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 32)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!66, !64, !335, !49}
!2376 = !DISubprogram(name: "kernel_state_setup<Halide::Runtime::Internal::Metal::mtl_library *(*)(halide_metal_device *, const char *, unsigned int), halide_metal_device *, const char *, int>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_", scope: !36, file: !37, line: 178, type: !2371, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2377)
!2377 = !{!2378, !2379}
!2378 = !DITemplateTypeParameter(name: "CompileModuleT", type: !2373)
!2379 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !2380)
!2380 = !{!2381, !2382, !2383}
!2381 = !DITemplateTypeParameter(type: !64)
!2382 = !DITemplateTypeParameter(type: !335)
!2383 = !DITemplateTypeParameter(type: !57)
!2384 = !{!2385, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2408, !2409, !2410}
!2385 = !DILocalVariable(name: "this", arg: 1, scope: !2370, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!2387 = !DILocalVariable(name: "user_context", arg: 2, scope: !2370, file: !37, line: 178, type: !97)
!2388 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !2370, file: !37, line: 178, type: !338)
!2389 = !DILocalVariable(name: "context", arg: 4, scope: !2370, file: !37, line: 179, type: !64)
!2390 = !DILocalVariable(name: "result", arg: 5, scope: !2370, file: !37, line: 179, type: !98)
!2391 = !DILocalVariable(name: "f", arg: 6, scope: !2370, file: !37, line: 180, type: !2373)
!2392 = !DILocalVariable(name: "args", arg: 7, scope: !2370, file: !37, line: 181, type: !64)
!2393 = !DILocalVariable(name: "args", arg: 8, scope: !2370, file: !37, line: 181, type: !335)
!2394 = !DILocalVariable(name: "args", arg: 9, scope: !2370, file: !37, line: 181, type: !57)
!2395 = !DILocalVariable(name: "lock_guard", scope: !2370, file: !37, line: 182, type: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !2397, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2398, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!2397 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2398 = !{!2399, !2401, !2405}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2396, file: !2397, line: 12, baseType: !2400, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!2401 = !DISubprogram(name: "ScopedMutexLock", scope: !2396, file: !2397, line: 14, type: !2402, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2404, !2400}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2405 = !DISubprogram(name: "~ScopedMutexLock", scope: !2396, file: !2397, line: 19, type: !2406, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2404}
!2408 = !DILocalVariable(name: "id_ptr", scope: !2370, file: !37, line: 184, type: !917)
!2409 = !DILocalVariable(name: "mod", scope: !2370, file: !37, line: 189, type: !93)
!2410 = !DILocalVariable(name: "compiled_module", scope: !2370, file: !37, line: 196, type: !66)
!2411 = !DILocation(line: 0, scope: !2370)
!2412 = !DILocation(line: 182, column: 37, scope: !2370)
!2413 = !DILocalVariable(name: "this", arg: 1, scope: !2414, type: !2417, flags: DIFlagArtificial | DIFlagObjectPointer)
!2414 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !2396, file: !2397, line: 14, type: !2402, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !2401, retainedNodes: !2415)
!2415 = !{!2413, !2416}
!2416 = !DILocalVariable(name: "mutex", arg: 2, scope: !2414, file: !2397, line: 14, type: !2400)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 32)
!2418 = !DILocation(line: 0, scope: !2414, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 182, column: 25, scope: !2370)
!2420 = !DILocation(line: 16, column: 9, scope: !2421, inlinedAt: !2419)
!2421 = distinct !DILexicalBlock(scope: !2414, file: !2397, line: 15, column: 24)
!2422 = !DILocation(line: 184, column: 28, scope: !2370)
!2423 = !DILocation(line: 185, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2370, file: !37, line: 185, column: 13)
!2425 = !{!1196, !1196, i64 0}
!2426 = !DILocation(line: 185, column: 21, scope: !2424)
!2427 = !DILocation(line: 185, column: 13, scope: !2370)
!2428 = !DILocation(line: 186, column: 23, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !37, line: 185, column: 27)
!2430 = !DILocation(line: 186, column: 32, scope: !2429)
!2431 = !{!2432, !1196, i64 16}
!2432 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE", !2433, i64 0, !1196, i64 4, !1192, i64 8, !1196, i64 12, !1196, i64 16}
!2433 = !{!"_ZTS12halide_mutex", !1033, i64 0}
!2434 = !DILocation(line: 186, column: 21, scope: !2429)
!2435 = !DILocation(line: 187, column: 9, scope: !2429)
!2436 = !DILocation(line: 190, column: 36, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2370, file: !37, line: 190, column: 13)
!2438 = !DILocalVariable(name: "this", arg: 1, scope: !2439, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!2439 = distinct !DISubprogram(name: "find_internal", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE13find_internalES3_jRPS8_i", scope: !36, file: !37, line: 73, type: !90, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !89, retainedNodes: !2440)
!2440 = !{!2438, !2441, !2442, !2443, !2444, !2445, !2446, !2448}
!2441 = !DILocalVariable(name: "context", arg: 2, scope: !2439, file: !37, line: 73, type: !64)
!2442 = !DILocalVariable(name: "id", arg: 3, scope: !2439, file: !37, line: 73, type: !48)
!2443 = !DILocalVariable(name: "module_state", arg: 4, scope: !2439, file: !37, line: 74, type: !92)
!2444 = !DILocalVariable(name: "increment", arg: 5, scope: !2439, file: !37, line: 74, type: !57)
!2445 = !DILocalVariable(name: "index", scope: !2439, file: !37, line: 78, type: !46)
!2446 = !DILocalVariable(name: "i", scope: !2447, file: !37, line: 79, type: !57)
!2447 = distinct !DILexicalBlock(scope: !2439, file: !37, line: 79, column: 9)
!2448 = !DILocalVariable(name: "effective_index", scope: !2449, file: !37, line: 80, type: !46)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !37, line: 79, column: 65)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !37, line: 79, column: 9)
!2451 = !DILocation(line: 0, scope: !2439, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 190, column: 13, scope: !2437)
!2453 = !DILocation(line: 75, column: 13, scope: !2454, inlinedAt: !2452)
!2454 = distinct !DILexicalBlock(scope: !2439, file: !37, line: 75, column: 13)
!2455 = !{!2432, !1196, i64 4}
!2456 = !DILocation(line: 75, column: 36, scope: !2454, inlinedAt: !2452)
!2457 = !DILocation(line: 75, column: 13, scope: !2439, inlinedAt: !2452)
!2458 = !DILocalVariable(name: "context", arg: 1, scope: !2459, file: !37, line: 36, type: !64)
!2459 = distinct !DISubprogram(name: "kernel_hash", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11kernel_hashES3_jj", scope: !36, file: !37, line: 36, type: !80, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !79, retainedNodes: !2460)
!2460 = !{!2458, !2461, !2462, !2463}
!2461 = !DILocalVariable(name: "id", arg: 2, scope: !2459, file: !37, line: 36, type: !48)
!2462 = !DILocalVariable(name: "bits", arg: 3, scope: !2459, file: !37, line: 36, type: !48)
!2463 = !DILocalVariable(name: "addr", scope: !2459, file: !37, line: 37, type: !46)
!2464 = !DILocation(line: 0, scope: !2459, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 78, column: 27, scope: !2439, inlinedAt: !2452)
!2466 = !DILocation(line: 37, column: 26, scope: !2459, inlinedAt: !2465)
!2467 = !DILocation(line: 37, column: 45, scope: !2459, inlinedAt: !2465)
!2468 = !DILocation(line: 43, column: 26, scope: !2469, inlinedAt: !2465)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !37, line: 42, column: 16)
!2470 = distinct !DILexicalBlock(scope: !2459, file: !37, line: 40, column: 13)
!2471 = !DILocation(line: 43, column: 58, scope: !2469, inlinedAt: !2465)
!2472 = !DILocation(line: 43, column: 51, scope: !2469, inlinedAt: !2465)
!2473 = !DILocation(line: 0, scope: !2447, inlinedAt: !2452)
!2474 = !DILocation(line: 79, column: 32, scope: !2450, inlinedAt: !2452)
!2475 = !DILocation(line: 79, column: 27, scope: !2450, inlinedAt: !2452)
!2476 = !DILocation(line: 79, column: 9, scope: !2447, inlinedAt: !2452)
!2477 = !{!2432, !1192, i64 8}
!2478 = distinct !{!2478, !2476, !2479, !1041}
!2479 = !DILocation(line: 93, column: 9, scope: !2447, inlinedAt: !2452)
!2480 = !DILocation(line: 80, column: 48, scope: !2449, inlinedAt: !2452)
!2481 = !DILocation(line: 80, column: 53, scope: !2449, inlinedAt: !2452)
!2482 = !DILocation(line: 0, scope: !2449, inlinedAt: !2452)
!2483 = !DILocation(line: 82, column: 47, scope: !2484, inlinedAt: !2452)
!2484 = distinct !DILexicalBlock(scope: !2449, file: !37, line: 82, column: 17)
!2485 = !{!2486, !1196, i64 8}
!2486 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE", !1192, i64 0, !1192, i64 4, !1196, i64 8, !1196, i64 12}
!2487 = !DILocation(line: 82, column: 57, scope: !2484, inlinedAt: !2452)
!2488 = !DILocation(line: 82, column: 17, scope: !2449, inlinedAt: !2452)
!2489 = !DILocation(line: 85, column: 47, scope: !2490, inlinedAt: !2452)
!2490 = distinct !DILexicalBlock(scope: !2449, file: !37, line: 85, column: 17)
!2491 = !{!2486, !1192, i64 0}
!2492 = !DILocation(line: 85, column: 55, scope: !2490, inlinedAt: !2452)
!2493 = !DILocation(line: 85, column: 66, scope: !2490, inlinedAt: !2452)
!2494 = !DILocation(line: 79, column: 61, scope: !2450, inlinedAt: !2452)
!2495 = !DILocation(line: 87, column: 63, scope: !2496, inlinedAt: !2452)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !37, line: 86, column: 64)
!2497 = !DILocation(line: 89, column: 51, scope: !2498, inlinedAt: !2452)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !37, line: 88, column: 37)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !37, line: 88, column: 21)
!2500 = !DILocation(line: 89, column: 61, scope: !2498, inlinedAt: !2452)
!2501 = !{!2486, !1196, i64 12}
!2502 = !DILocation(line: 191, column: 22, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2437, file: !37, line: 190, column: 54)
!2504 = !DILocation(line: 191, column: 20, scope: !2503)
!2505 = !DILocation(line: 192, column: 13, scope: !2503)
!2506 = !DILocation(line: 196, column: 40, scope: !2370)
!2507 = !DILocation(line: 0, scope: !1096, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 197, column: 9, scope: !2370)
!2509 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2508)
!2510 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2508)
!2511 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2508)
!2512 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2508)
!2513 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2508)
!2514 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2508)
!2515 = !DILocation(line: 0, scope: !1110, inlinedAt: !2508)
!2516 = !DILocation(line: 0, scope: !1113, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 197, column: 29, scope: !2370)
!2518 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2517)
!2519 = !DILocation(line: 197, column: 63, scope: !2370)
!2520 = !DILocation(line: 0, scope: !1889, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 197, column: 60, scope: !2370)
!2522 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2521)
!2523 = !DILocation(line: 0, scope: !1113, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 198, column: 29, scope: !2370)
!2525 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2524)
!2526 = !DILocation(line: 198, column: 42, scope: !2370)
!2527 = !DILocalVariable(name: "this", arg: 1, scope: !2528, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2528 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !397, file: !395, line: 82, type: !427, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !426, retainedNodes: !2529)
!2529 = !{!2527, !2530}
!2530 = !DILocalVariable(name: "arg", arg: 2, scope: !2528, file: !395, line: 82, type: !48)
!2531 = !DILocation(line: 0, scope: !2528, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 198, column: 39, scope: !2370)
!2533 = !DILocation(line: 83, column: 49, scope: !2528, inlinedAt: !2532)
!2534 = !DILocation(line: 83, column: 15, scope: !2528, inlinedAt: !2532)
!2535 = !DILocation(line: 0, scope: !1113, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 198, column: 50, scope: !2370)
!2537 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2536)
!2538 = !DILocation(line: 198, column: 68, scope: !2370)
!2539 = !DILocation(line: 0, scope: !1889, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 198, column: 65, scope: !2370)
!2541 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2540)
!2542 = !DILocation(line: 0, scope: !1113, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 198, column: 76, scope: !2370)
!2544 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2543)
!2545 = !DILocation(line: 0, scope: !1122, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 197, column: 9, scope: !2370)
!2547 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2546)
!2548 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2546)
!2549 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2546)
!2550 = !DILocation(line: 0, scope: !1136, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2546)
!2552 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2551)
!2553 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2551)
!2554 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2551)
!2555 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2551)
!2556 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2546)
!2557 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2546)
!2558 = !DILocation(line: 199, column: 29, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2370, file: !37, line: 199, column: 13)
!2560 = !DILocation(line: 199, column: 13, scope: !2370)
!2561 = !DILocation(line: 203, column: 21, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2370, file: !37, line: 203, column: 13)
!2563 = !DILocation(line: 203, column: 48, scope: !2562)
!2564 = !DILocalVariable(name: "this", arg: 1, scope: !2565, type: !60, flags: DIFlagArtificial | DIFlagObjectPointer)
!2565 = distinct !DISubprogram(name: "CachedCompilation", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationC2ES3_S8_jj", scope: !61, file: !37, line: 15, type: !71, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !70, retainedNodes: !2566)
!2566 = !{!2564, !2567, !2568, !2569, !2570}
!2567 = !DILocalVariable(name: "context", arg: 2, scope: !2565, file: !37, line: 15, type: !64)
!2568 = !DILocalVariable(name: "module_state", arg: 3, scope: !2565, file: !37, line: 15, type: !66)
!2569 = !DILocalVariable(name: "kernel_id", arg: 4, scope: !2565, file: !37, line: 16, type: !48)
!2570 = !DILocalVariable(name: "use_count", arg: 5, scope: !2565, file: !37, line: 16, type: !48)
!2571 = !DILocation(line: 0, scope: !2565, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 203, column: 21, scope: !2562)
!2573 = !DILocation(line: 17, column: 15, scope: !2565, inlinedAt: !2572)
!2574 = !DILocation(line: 17, column: 33, scope: !2565, inlinedAt: !2572)
!2575 = !{!2486, !1192, i64 4}
!2576 = !DILocation(line: 18, column: 15, scope: !2565, inlinedAt: !2572)
!2577 = !DILocation(line: 18, column: 37, scope: !2565, inlinedAt: !2572)
!2578 = !DILocation(line: 203, column: 14, scope: !2562)
!2579 = !DILocation(line: 203, column: 13, scope: !2562)
!2580 = !DILocation(line: 203, column: 13, scope: !2370)
!2581 = !DILocation(line: 206, column: 16, scope: !2370)
!2582 = !DILocation(line: 208, column: 9, scope: !2370)
!2583 = !DILocalVariable(name: "this", arg: 1, scope: !2584, type: !2417, flags: DIFlagArtificial | DIFlagObjectPointer)
!2584 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !2396, file: !2397, line: 19, type: !2406, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !2405, retainedNodes: !2585)
!2585 = !{!2583}
!2586 = !DILocation(line: 0, scope: !2584, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 209, column: 5, scope: !2370)
!2588 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !2587)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !2397, line: 19, column: 38)
!2590 = !DILocation(line: 209, column: 5, scope: !2370)
!2591 = distinct !DISubprogram(name: "halide_metal_finalize_kernels", scope: !6, file: !6, line: 571, type: !2592, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !97, !97}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "user_context", arg: 1, scope: !2591, file: !6, line: 571, type: !97)
!2596 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !2591, file: !6, line: 571, type: !97)
!2597 = !DILocalVariable(name: "metal_context", scope: !2591, file: !6, line: 572, type: !946)
!2598 = !DILocation(line: 0, scope: !2591)
!2599 = !DILocation(line: 572, column: 5, scope: !2591)
!2600 = !DILocation(line: 572, column: 24, scope: !2591)
!2601 = !DILocation(line: 0, scope: !2038, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 572, column: 24, scope: !2591)
!2603 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !2602)
!2604 = !DILocation(line: 573, column: 23, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2591, file: !6, line: 573, column: 9)
!2606 = !DILocation(line: 573, column: 29, scope: !2605)
!2607 = !DILocation(line: 573, column: 9, scope: !2591)
!2608 = !DILocation(line: 574, column: 68, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !6, line: 573, column: 35)
!2610 = !DILocalVariable(name: "this", arg: 1, scope: !2611, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!2611 = distinct !DISubprogram(name: "release_hold", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12release_holdEPvS3_SA_", scope: !36, file: !37, line: 211, type: !103, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !102, retainedNodes: !2612)
!2612 = !{!2610, !2613, !2614, !2615, !2616, !2617, !2618}
!2613 = !DILocalVariable(name: "user_context", arg: 2, scope: !2611, file: !37, line: 211, type: !97)
!2614 = !DILocalVariable(name: "context", arg: 3, scope: !2611, file: !37, line: 211, type: !64)
!2615 = !DILocalVariable(name: "state_ptr", arg: 4, scope: !2611, file: !37, line: 211, type: !97)
!2616 = !DILocalVariable(name: "mod", scope: !2611, file: !37, line: 212, type: !93)
!2617 = !DILocalVariable(name: "id", scope: !2611, file: !37, line: 213, type: !48)
!2618 = !DILocalVariable(name: "result", scope: !2611, file: !37, line: 214, type: !85)
!2619 = !DILocation(line: 0, scope: !2611, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 574, column: 27, scope: !2609)
!2621 = !DILocation(line: 213, column: 33, scope: !2611, inlinedAt: !2620)
!2622 = !DILocation(line: 0, scope: !2439, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 214, column: 23, scope: !2611, inlinedAt: !2620)
!2624 = !DILocation(line: 75, column: 13, scope: !2454, inlinedAt: !2623)
!2625 = !DILocation(line: 75, column: 36, scope: !2454, inlinedAt: !2623)
!2626 = !DILocation(line: 75, column: 13, scope: !2439, inlinedAt: !2623)
!2627 = !DILocation(line: 0, scope: !2459, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 78, column: 27, scope: !2439, inlinedAt: !2623)
!2629 = !DILocation(line: 37, column: 26, scope: !2459, inlinedAt: !2628)
!2630 = !DILocation(line: 37, column: 45, scope: !2459, inlinedAt: !2628)
!2631 = !DILocation(line: 43, column: 26, scope: !2469, inlinedAt: !2628)
!2632 = !DILocation(line: 43, column: 58, scope: !2469, inlinedAt: !2628)
!2633 = !DILocation(line: 43, column: 51, scope: !2469, inlinedAt: !2628)
!2634 = !DILocation(line: 0, scope: !2447, inlinedAt: !2623)
!2635 = !DILocation(line: 79, column: 32, scope: !2450, inlinedAt: !2623)
!2636 = !DILocation(line: 79, column: 27, scope: !2450, inlinedAt: !2623)
!2637 = !DILocation(line: 79, column: 9, scope: !2447, inlinedAt: !2623)
!2638 = distinct !{!2638, !2637, !2639, !1041}
!2639 = !DILocation(line: 93, column: 9, scope: !2447, inlinedAt: !2623)
!2640 = !DILocation(line: 80, column: 48, scope: !2449, inlinedAt: !2623)
!2641 = !DILocation(line: 80, column: 53, scope: !2449, inlinedAt: !2623)
!2642 = !DILocation(line: 0, scope: !2449, inlinedAt: !2623)
!2643 = !DILocation(line: 82, column: 47, scope: !2484, inlinedAt: !2623)
!2644 = !DILocation(line: 82, column: 57, scope: !2484, inlinedAt: !2623)
!2645 = !DILocation(line: 82, column: 17, scope: !2449, inlinedAt: !2623)
!2646 = !DILocation(line: 85, column: 47, scope: !2490, inlinedAt: !2623)
!2647 = !DILocation(line: 85, column: 55, scope: !2490, inlinedAt: !2623)
!2648 = !DILocation(line: 85, column: 66, scope: !2490, inlinedAt: !2623)
!2649 = !DILocation(line: 79, column: 61, scope: !2450, inlinedAt: !2623)
!2650 = !DILocation(line: 89, column: 51, scope: !2498, inlinedAt: !2623)
!2651 = !DILocation(line: 89, column: 61, scope: !2498, inlinedAt: !2623)
!2652 = !DILocation(line: 215, column: 9, scope: !2653, inlinedAt: !2620)
!2653 = distinct !DILexicalBlock(scope: !2611, file: !37, line: 215, column: 9)
!2654 = !DILocation(line: 215, column: 9, scope: !2655, inlinedAt: !2620)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !37, line: 215, column: 9)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !37, line: 215, column: 9)
!2657 = !DILocation(line: 0, scope: !2169, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 576, column: 1, scope: !2591)
!2659 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !2658)
!2660 = !DILocation(line: 576, column: 1, scope: !2591)
!2661 = distinct !DISubprogram(name: "halide_metal_device_sync_internal", scope: !2662, file: !6, line: 580, type: !2663, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2665)
!2662 = !DINamespace(scope: null)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !31, !143}
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2673}
!2666 = !DILocalVariable(name: "queue", arg: 1, scope: !2661, file: !6, line: 580, type: !31)
!2667 = !DILocalVariable(name: "buffer", arg: 2, scope: !2661, file: !6, line: 580, type: !143)
!2668 = !DILocalVariable(name: "buffer_label", scope: !2661, file: !6, line: 581, type: !335)
!2669 = !DILocalVariable(name: "sync_command_buffer", scope: !2661, file: !6, line: 582, type: !131)
!2670 = !DILocalVariable(name: "metal_buffer", scope: !2671, file: !6, line: 584, type: !523)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !6, line: 583, column: 28)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !6, line: 583, column: 9)
!2673 = !DILocalVariable(name: "blit_encoder", scope: !2674, file: !6, line: 586, type: !596)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !6, line: 585, column: 46)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 585, column: 13)
!2676 = !DILocation(line: 0, scope: !2661)
!2677 = !DILocation(line: 582, column: 87, scope: !2661)
!2678 = !DILocation(line: 582, column: 47, scope: !2661)
!2679 = !DILocation(line: 583, column: 16, scope: !2672)
!2680 = !DILocation(line: 583, column: 9, scope: !2661)
!2681 = !DILocation(line: 584, column: 62, scope: !2671)
!2682 = !DILocation(line: 584, column: 37, scope: !2671)
!2683 = !DILocation(line: 584, column: 71, scope: !2671)
!2684 = !DILocation(line: 0, scope: !2671)
!2685 = !DILocation(line: 585, column: 13, scope: !2675)
!2686 = !DILocation(line: 585, column: 13, scope: !2671)
!2687 = !DILocation(line: 586, column: 54, scope: !2674)
!2688 = !DILocation(line: 0, scope: !2674)
!2689 = !DILocation(line: 587, column: 13, scope: !2674)
!2690 = !DILocation(line: 588, column: 13, scope: !2674)
!2691 = !DILocation(line: 589, column: 9, scope: !2674)
!2692 = !DILocation(line: 591, column: 5, scope: !2661)
!2693 = !DILocation(line: 592, column: 5, scope: !2661)
!2694 = !DILocation(line: 593, column: 1, scope: !2661)
!2695 = distinct !DISubprogram(name: "halide_metal_device_sync", scope: !6, file: !6, line: 597, type: !264, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2701}
!2697 = !DILocalVariable(name: "user_context", arg: 1, scope: !2695, file: !6, line: 597, type: !97)
!2698 = !DILocalVariable(name: "buffer", arg: 2, scope: !2695, file: !6, line: 597, type: !143)
!2699 = !DILocalVariable(name: "t_before", scope: !2695, file: !6, line: 599, type: !147)
!2700 = !DILocalVariable(name: "metal_context", scope: !2695, file: !6, line: 602, type: !946)
!2701 = !DILocalVariable(name: "t_after", scope: !2695, file: !6, line: 610, type: !147)
!2702 = !DILocation(line: 0, scope: !2695)
!2703 = !DILocation(line: 599, column: 25, scope: !2695)
!2704 = !DILocation(line: 602, column: 5, scope: !2695)
!2705 = !DILocation(line: 602, column: 24, scope: !2695)
!2706 = !DILocation(line: 0, scope: !2038, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 602, column: 24, scope: !2695)
!2708 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !2707)
!2709 = !DILocation(line: 603, column: 23, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2695, file: !6, line: 603, column: 9)
!2711 = !DILocation(line: 603, column: 29, scope: !2710)
!2712 = !DILocation(line: 603, column: 9, scope: !2695)
!2713 = !DILocation(line: 607, column: 53, scope: !2695)
!2714 = !{!1824, !1192, i64 12}
!2715 = !DILocation(line: 607, column: 5, scope: !2695)
!2716 = !DILocation(line: 610, column: 24, scope: !2695)
!2717 = !DILocation(line: 0, scope: !1096, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 611, column: 5, scope: !2695)
!2719 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2718)
!2720 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2718)
!2721 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2718)
!2722 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2718)
!2723 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2718)
!2724 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2718)
!2725 = !DILocation(line: 0, scope: !1110, inlinedAt: !2718)
!2726 = !DILocation(line: 0, scope: !1113, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 611, column: 25, scope: !2695)
!2728 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2727)
!2729 = !DILocation(line: 611, column: 78, scope: !2695)
!2730 = !DILocation(line: 611, column: 69, scope: !2695)
!2731 = !DILocation(line: 611, column: 90, scope: !2695)
!2732 = !DILocation(line: 0, scope: !2146, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 611, column: 66, scope: !2695)
!2734 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !2733)
!2735 = !DILocation(line: 0, scope: !1113, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 611, column: 98, scope: !2695)
!2737 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2736)
!2738 = !DILocation(line: 0, scope: !1122, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 611, column: 5, scope: !2695)
!2740 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2739)
!2741 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2739)
!2742 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2739)
!2743 = !DILocation(line: 0, scope: !1136, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2739)
!2745 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2744)
!2746 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2744)
!2747 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2744)
!2748 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2744)
!2749 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2739)
!2750 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2739)
!2751 = !DILocation(line: 0, scope: !2169, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 615, column: 1, scope: !2695)
!2753 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !2752)
!2754 = !DILocation(line: 615, column: 1, scope: !2695)
!2755 = distinct !DISubprogram(name: "halide_metal_device_release", scope: !6, file: !6, line: 617, type: !315, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "user_context", arg: 1, scope: !2755, file: !6, line: 617, type: !97)
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
!2787 = !DILocation(line: 0, scope: !1889, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 631, column: 68, scope: !2772)
!2789 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2788)
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
!2802 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2799)
!2803 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2799)
!2804 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2794)
!2805 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2794)
!2806 = !DILocation(line: 632, column: 56, scope: !2772)
!2807 = !DILocalVariable(name: "this", arg: 1, scope: !2808, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!2808 = distinct !DISubprogram(name: "delete_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE14delete_contextIFvPvEEEvSB_S3_RT_", scope: !36, file: !37, line: 158, type: !2809, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2813, declaration: !2812, retainedNodes: !2815)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !86, !97, !64, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2183, size: 32)
!2812 = !DISubprogram(name: "delete_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE14delete_contextIFvPvEEEvSB_S3_RT_", scope: !36, file: !37, line: 158, type: !2809, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2813)
!2813 = !{!2814}
!2814 = !DITemplateTypeParameter(name: "FreeModuleT", type: !2183)
!2815 = !{!2807, !2816, !2817, !2818, !2819}
!2816 = !DILocalVariable(name: "user_context", arg: 2, scope: !2808, file: !37, line: 158, type: !97)
!2817 = !DILocalVariable(name: "context", arg: 3, scope: !2808, file: !37, line: 158, type: !64)
!2818 = !DILocalVariable(name: "f", arg: 4, scope: !2808, file: !37, line: 158, type: !2811)
!2819 = !DILocalVariable(name: "lock_guard", scope: !2808, file: !37, line: 159, type: !2396)
!2820 = !DILocation(line: 0, scope: !2808, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 632, column: 27, scope: !2772)
!2822 = !DILocation(line: 0, scope: !2414, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 159, column: 25, scope: !2808, inlinedAt: !2821)
!2824 = !DILocation(line: 16, column: 9, scope: !2421, inlinedAt: !2823)
!2825 = !DILocation(line: 161, column: 9, scope: !2808, inlinedAt: !2821)
!2826 = !DILocation(line: 0, scope: !2584, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 162, column: 5, scope: !2808, inlinedAt: !2821)
!2828 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !2827)
!2829 = !DILocation(line: 635, column: 13, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2772, file: !6, line: 635, column: 13)
!2831 = !DILocation(line: 635, column: 32, scope: !2830)
!2832 = !DILocation(line: 635, column: 29, scope: !2830)
!2833 = !DILocation(line: 635, column: 13, scope: !2772)
!2834 = !DILocation(line: 0, scope: !1096, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 636, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !6, line: 635, column: 40)
!2837 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2835)
!2838 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2835)
!2839 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2835)
!2840 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2835)
!2841 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2835)
!2842 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2835)
!2843 = !DILocation(line: 0, scope: !1110, inlinedAt: !2835)
!2844 = !DILocation(line: 0, scope: !1113, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 636, column: 33, scope: !2836)
!2846 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2845)
!2847 = !DILocation(line: 636, column: 79, scope: !2836)
!2848 = !DILocation(line: 0, scope: !1889, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 636, column: 76, scope: !2836)
!2850 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2849)
!2851 = !DILocation(line: 0, scope: !1113, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 636, column: 85, scope: !2836)
!2853 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2852)
!2854 = !DILocation(line: 0, scope: !1122, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 636, column: 13, scope: !2836)
!2856 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2855)
!2857 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2855)
!2858 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2855)
!2859 = !DILocation(line: 0, scope: !1136, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2855)
!2861 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2860)
!2862 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2860)
!2863 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2860)
!2864 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2860)
!2865 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2855)
!2866 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2855)
!2867 = !DILocation(line: 637, column: 31, scope: !2836)
!2868 = !DILocation(line: 637, column: 13, scope: !2836)
!2869 = !DILocation(line: 638, column: 19, scope: !2836)
!2870 = !DILocation(line: 0, scope: !1096, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 640, column: 13, scope: !2836)
!2872 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2871)
!2873 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2871)
!2874 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2871)
!2875 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2871)
!2876 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2871)
!2877 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2871)
!2878 = !DILocation(line: 0, scope: !1110, inlinedAt: !2871)
!2879 = !DILocation(line: 0, scope: !1113, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 640, column: 33, scope: !2836)
!2881 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2880)
!2882 = !DILocation(line: 640, column: 90, scope: !2836)
!2883 = !DILocation(line: 0, scope: !1889, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 640, column: 87, scope: !2836)
!2885 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2884)
!2886 = !DILocation(line: 0, scope: !1113, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 640, column: 97, scope: !2836)
!2888 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2887)
!2889 = !DILocation(line: 0, scope: !1122, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 640, column: 13, scope: !2836)
!2891 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2890)
!2892 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2890)
!2893 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2890)
!2894 = !DILocation(line: 0, scope: !1136, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2890)
!2896 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2895)
!2897 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2895)
!2898 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !2895)
!2899 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2895)
!2900 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !2890)
!2901 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !2890)
!2902 = !DILocation(line: 641, column: 31, scope: !2836)
!2903 = !DILocation(line: 641, column: 13, scope: !2836)
!2904 = !DILocation(line: 642, column: 20, scope: !2836)
!2905 = !DILocation(line: 643, column: 9, scope: !2836)
!2906 = !DILocation(line: 646, column: 5, scope: !2755)
!2907 = !DILocation(line: 648, column: 5, scope: !2755)
!2908 = !DILocation(line: 649, column: 1, scope: !2755)
!2909 = distinct !DISubprogram(name: "halide_metal_copy_to_device", scope: !6, file: !6, line: 651, type: !1862, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2910)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2920, !2921}
!2911 = !DILocalVariable(name: "user_context", arg: 1, scope: !2909, file: !6, line: 651, type: !97)
!2912 = !DILocalVariable(name: "buffer", arg: 2, scope: !2909, file: !6, line: 651, type: !915)
!2913 = !DILocalVariable(name: "t_before", scope: !2909, file: !6, line: 653, type: !147)
!2914 = !DILocalVariable(name: "metal_context", scope: !2909, file: !6, line: 656, type: !946)
!2915 = !DILocalVariable(name: "c", scope: !2909, file: !6, line: 663, type: !1003)
!2916 = !DILocalVariable(name: "metal_buffer", scope: !2909, file: !6, line: 664, type: !523)
!2917 = !DILocalVariable(name: "total_size", scope: !2918, file: !6, line: 674, type: !248)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !6, line: 673, column: 42)
!2919 = distinct !DILexicalBlock(scope: !2909, file: !6, line: 673, column: 9)
!2920 = !DILocalVariable(name: "total_extent", scope: !2918, file: !6, line: 676, type: !654)
!2921 = !DILocalVariable(name: "t_after", scope: !2909, file: !6, line: 684, type: !147)
!2922 = !DILocation(line: 0, scope: !2909)
!2923 = !DILocation(line: 653, column: 25, scope: !2909)
!2924 = !DILocation(line: 656, column: 5, scope: !2909)
!2925 = !DILocation(line: 656, column: 24, scope: !2909)
!2926 = !DILocation(line: 0, scope: !2038, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 656, column: 24, scope: !2909)
!2928 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !2927)
!2929 = !DILocation(line: 657, column: 23, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2909, file: !6, line: 657, column: 9)
!2931 = !DILocation(line: 657, column: 29, scope: !2930)
!2932 = !DILocation(line: 657, column: 9, scope: !2909)
!2933 = !DILocation(line: 661, column: 5, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !6, line: 661, column: 5)
!2935 = distinct !DILexicalBlock(scope: !2909, file: !6, line: 661, column: 5)
!2936 = !DILocation(line: 661, column: 5, scope: !2935)
!2937 = !DILocation(line: 661, column: 5, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !6, line: 661, column: 5)
!2939 = !DILocation(line: 663, column: 5, scope: !2909)
!2940 = !DILocation(line: 663, column: 17, scope: !2909)
!2941 = !DILocation(line: 663, column: 21, scope: !2909)
!2942 = !DILocation(line: 664, column: 52, scope: !2909)
!2943 = !DILocation(line: 664, column: 33, scope: !2909)
!2944 = !DILocation(line: 664, column: 58, scope: !2909)
!2945 = !DILocation(line: 665, column: 23, scope: !2909)
!2946 = !DILocation(line: 665, column: 13, scope: !2909)
!2947 = !DILocation(line: 665, column: 75, scope: !2909)
!2948 = !DILocation(line: 665, column: 56, scope: !2909)
!2949 = !DILocation(line: 665, column: 81, scope: !2909)
!2950 = !DILocation(line: 665, column: 53, scope: !2909)
!2951 = !DILocation(line: 665, column: 11, scope: !2909)
!2952 = !DILocation(line: 667, column: 5, scope: !2909)
!2953 = !DILocation(line: 0, scope: !1096, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 667, column: 5, scope: !2909)
!2955 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !2954)
!2956 = !{!2957, !1192, i64 12}
!2957 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !1192, i64 0, !1192, i64 4, !1192, i64 8, !1192, i64 12, !2958, i64 16, !1033, i64 17}
!2958 = !{!"bool", !1033, i64 0}
!2959 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !2954)
!2960 = !{!2957, !2958, i64 16}
!2961 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2954)
!2962 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !2954)
!2963 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !2954)
!2964 = !{!2957, !1192, i64 0}
!2965 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !2954)
!2966 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2954)
!2967 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2954)
!2968 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2954)
!2969 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2954)
!2970 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2954)
!2971 = !DILocation(line: 0, scope: !1110, inlinedAt: !2954)
!2972 = !DILocation(line: 53, column: 13, scope: !2973, inlinedAt: !2954)
!2973 = distinct !DILexicalBlock(scope: !1110, file: !395, line: 51, column: 16)
!2974 = !DILocation(line: 53, column: 17, scope: !2973, inlinedAt: !2954)
!2975 = !DILocation(line: 0, scope: !1113, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 667, column: 25, scope: !2909)
!2977 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2976)
!2978 = !DILocation(line: 667, column: 84, scope: !2909)
!2979 = !DILocation(line: 667, column: 68, scope: !2909)
!2980 = !DILocation(line: 0, scope: !1889, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 667, column: 65, scope: !2909)
!2982 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2981)
!2983 = !DILocation(line: 0, scope: !1113, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 668, column: 25, scope: !2909)
!2985 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2984)
!2986 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !2984)
!2987 = !{!2957, !1192, i64 4}
!2988 = !DILocation(line: 668, column: 50, scope: !2909)
!2989 = !DILocation(line: 0, scope: !1889, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 668, column: 47, scope: !2909)
!2991 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2990)
!2992 = !DILocation(line: 0, scope: !1113, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 669, column: 25, scope: !2909)
!2994 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2993)
!2995 = !DILocation(line: 669, column: 50, scope: !2909)
!2996 = !DILocation(line: 0, scope: !1889, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 669, column: 39, scope: !2909)
!2998 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !2997)
!2999 = !DILocation(line: 0, scope: !1113, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 669, column: 55, scope: !2909)
!3001 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3000)
!3002 = !DILocation(line: 0, scope: !1122, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 667, column: 5, scope: !2909)
!3004 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3003)
!3005 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3003)
!3006 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3003)
!3007 = !DILocation(line: 0, scope: !1136, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3003)
!3009 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3008)
!3010 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3008)
!3011 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3008)
!3012 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3008)
!3013 = !DILocation(line: 174, column: 30, scope: !1146, inlinedAt: !3003)
!3014 = !DILocation(line: 174, column: 44, scope: !1146, inlinedAt: !3003)
!3015 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3003)
!3016 = !DILocation(line: 180, column: 13, scope: !1151, inlinedAt: !3003)
!3017 = !{i8 0, i8 2}
!3018 = !DILocation(line: 180, column: 21, scope: !1151, inlinedAt: !3003)
!3019 = !DILocation(line: 180, column: 24, scope: !1151, inlinedAt: !3003)
!3020 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3003)
!3021 = !DILocation(line: 182, column: 9, scope: !1150, inlinedAt: !3003)
!3022 = !DILocation(line: 671, column: 5, scope: !2909)
!3023 = !DILocation(line: 673, column: 9, scope: !2919)
!3024 = !DILocation(line: 673, column: 9, scope: !2909)
!3025 = !DILocation(line: 0, scope: !1919, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 674, column: 37, scope: !2918)
!3027 = !DILocation(line: 0, scope: !1924, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1519, column: 25, scope: !1919, inlinedAt: !3026)
!3029 = !DILocation(line: 0, scope: !1928, inlinedAt: !3028)
!3030 = !DILocation(line: 1508, column: 29, scope: !1933, inlinedAt: !3028)
!3031 = !DILocation(line: 1508, column: 27, scope: !1933, inlinedAt: !3028)
!3032 = !DILocation(line: 1508, column: 9, scope: !1928, inlinedAt: !3028)
!3033 = !DILocation(line: 0, scope: !1209, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1514, column: 36, scope: !1924, inlinedAt: !3028)
!3035 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !3034)
!3036 = !DILocation(line: 0, scope: !1940, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1519, column: 33, scope: !1919, inlinedAt: !3026)
!3038 = !DILocation(line: 0, scope: !1944, inlinedAt: !3037)
!3039 = !DILocation(line: 1497, column: 9, scope: !1944, inlinedAt: !3037)
!3040 = !DILocation(line: 1509, column: 24, scope: !1950, inlinedAt: !3028)
!3041 = !DILocation(line: 1509, column: 31, scope: !1950, inlinedAt: !3028)
!3042 = !DILocation(line: 1509, column: 17, scope: !1951, inlinedAt: !3028)
!3043 = !DILocation(line: 1510, column: 61, scope: !1955, inlinedAt: !3028)
!3044 = !DILocation(line: 1510, column: 68, scope: !1955, inlinedAt: !3028)
!3045 = !DILocation(line: 1510, column: 51, scope: !1955, inlinedAt: !3028)
!3046 = !DILocation(line: 1510, column: 23, scope: !1955, inlinedAt: !3028)
!3047 = !DILocation(line: 1511, column: 13, scope: !1955, inlinedAt: !3028)
!3048 = !DILocation(line: 1508, column: 42, scope: !1933, inlinedAt: !3028)
!3049 = distinct !{!3049, !3032, !3050, !1041}
!3050 = !DILocation(line: 1512, column: 9, scope: !1928, inlinedAt: !3028)
!3051 = !DILocation(line: 1498, column: 24, scope: !1964, inlinedAt: !3037)
!3052 = !DILocation(line: 1498, column: 31, scope: !1964, inlinedAt: !3037)
!3053 = !DILocation(line: 1498, column: 17, scope: !1965, inlinedAt: !3037)
!3054 = !DILocation(line: 1499, column: 61, scope: !1970, inlinedAt: !3037)
!3055 = !DILocation(line: 1499, column: 68, scope: !1970, inlinedAt: !3037)
!3056 = !DILocation(line: 1499, column: 51, scope: !1970, inlinedAt: !3037)
!3057 = !DILocation(line: 1499, column: 23, scope: !1970, inlinedAt: !3037)
!3058 = !DILocation(line: 1500, column: 13, scope: !1970, inlinedAt: !3037)
!3059 = !DILocation(line: 1497, column: 42, scope: !1966, inlinedAt: !3037)
!3060 = !DILocation(line: 1497, column: 27, scope: !1966, inlinedAt: !3037)
!3061 = distinct !{!3061, !3039, !3062, !1041}
!3062 = !DILocation(line: 1501, column: 9, scope: !1944, inlinedAt: !3037)
!3063 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !3034)
!3064 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !3034)
!3065 = !DILocation(line: 1513, column: 15, scope: !1924, inlinedAt: !3028)
!3066 = !DILocation(line: 0, scope: !1209, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1502, column: 36, scope: !1940, inlinedAt: !3037)
!3068 = !DILocation(line: 1519, column: 31, scope: !1919, inlinedAt: !3026)
!3069 = !DILocation(line: 0, scope: !2918)
!3070 = !DILocation(line: 675, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !6, line: 675, column: 9)
!3072 = distinct !DILexicalBlock(scope: !2918, file: !6, line: 675, column: 9)
!3073 = !DILocation(line: 675, column: 9, scope: !3072)
!3074 = !DILocation(line: 675, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !6, line: 675, column: 9)
!3076 = !DILocation(line: 679, column: 40, scope: !2918)
!3077 = !{i64 0, i64 4, !2425, i64 4, i64 4, !2425}
!3078 = !{i64 0, i64 4, !2425}
!3079 = !DILocation(line: 679, column: 9, scope: !2918)
!3080 = !DILocation(line: 680, column: 5, scope: !2918)
!3081 = !DILocation(line: 681, column: 53, scope: !2909)
!3082 = !DILocation(line: 681, column: 5, scope: !2909)
!3083 = !DILocation(line: 684, column: 24, scope: !2909)
!3084 = !DILocation(line: 0, scope: !1096, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 685, column: 5, scope: !2909)
!3086 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3085)
!3087 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3085)
!3088 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3085)
!3089 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3085)
!3090 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3085)
!3091 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3085)
!3092 = !DILocation(line: 0, scope: !1110, inlinedAt: !3085)
!3093 = !DILocation(line: 0, scope: !1113, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 685, column: 25, scope: !2909)
!3095 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3094)
!3096 = !DILocation(line: 686, column: 37, scope: !2909)
!3097 = !DILocation(line: 686, column: 28, scope: !2909)
!3098 = !DILocation(line: 686, column: 49, scope: !2909)
!3099 = !DILocation(line: 0, scope: !2146, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 686, column: 25, scope: !2909)
!3101 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !1113, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 686, column: 57, scope: !2909)
!3104 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !1122, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 685, column: 5, scope: !2909)
!3107 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3106)
!3108 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3106)
!3109 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3106)
!3110 = !DILocation(line: 0, scope: !1136, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3106)
!3112 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3111)
!3113 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3111)
!3114 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3111)
!3115 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3111)
!3116 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3106)
!3117 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3106)
!3118 = !DILocation(line: 690, column: 1, scope: !2909)
!3119 = !DILocation(line: 0, scope: !2169, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 690, column: 1, scope: !2909)
!3121 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !3120)
!3122 = distinct !DISubprogram(name: "halide_metal_copy_to_host", scope: !6, file: !6, line: 692, type: !1862, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129}
!3124 = !DILocalVariable(name: "user_context", arg: 1, scope: !3122, file: !6, line: 692, type: !97)
!3125 = !DILocalVariable(name: "buffer", arg: 2, scope: !3122, file: !6, line: 692, type: !915)
!3126 = !DILocalVariable(name: "t_before", scope: !3122, file: !6, line: 694, type: !147)
!3127 = !DILocalVariable(name: "metal_context", scope: !3122, file: !6, line: 697, type: !946)
!3128 = !DILocalVariable(name: "c", scope: !3122, file: !6, line: 710, type: !1003)
!3129 = !DILocalVariable(name: "t_after", scope: !3122, file: !6, line: 716, type: !147)
!3130 = !DILocation(line: 0, scope: !3122)
!3131 = !DILocation(line: 694, column: 25, scope: !3122)
!3132 = !DILocation(line: 697, column: 5, scope: !3122)
!3133 = !DILocation(line: 697, column: 24, scope: !3122)
!3134 = !DILocation(line: 0, scope: !2038, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 697, column: 24, scope: !3122)
!3136 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !3135)
!3137 = !DILocation(line: 698, column: 23, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3122, file: !6, line: 698, column: 9)
!3139 = !DILocation(line: 698, column: 29, scope: !3138)
!3140 = !DILocation(line: 698, column: 9, scope: !3122)
!3141 = !DILocation(line: 702, column: 53, scope: !3122)
!3142 = !DILocation(line: 702, column: 5, scope: !3122)
!3143 = !DILocation(line: 704, column: 5, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !6, line: 704, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3122, file: !6, line: 704, column: 5)
!3146 = !DILocation(line: 704, column: 5, scope: !3145)
!3147 = !DILocation(line: 704, column: 5, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !6, line: 704, column: 5)
!3149 = !DILocation(line: 705, column: 5, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !6, line: 705, column: 5)
!3151 = distinct !DILexicalBlock(scope: !3122, file: !6, line: 705, column: 5)
!3152 = !DILocation(line: 705, column: 5, scope: !3151)
!3153 = !DILocation(line: 705, column: 5, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !6, line: 705, column: 5)
!3155 = !DILocation(line: 706, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3122, file: !6, line: 706, column: 9)
!3157 = !DILocation(line: 706, column: 28, scope: !3156)
!3158 = !DILocation(line: 706, column: 9, scope: !3122)
!3159 = !DILocation(line: 710, column: 5, scope: !3122)
!3160 = !DILocation(line: 710, column: 17, scope: !3122)
!3161 = !DILocation(line: 710, column: 21, scope: !3122)
!3162 = !DILocation(line: 711, column: 59, scope: !3122)
!3163 = !DILocation(line: 711, column: 40, scope: !3122)
!3164 = !DILocation(line: 711, column: 65, scope: !3122)
!3165 = !DILocation(line: 711, column: 23, scope: !3122)
!3166 = !DILocation(line: 711, column: 13, scope: !3122)
!3167 = !DILocation(line: 711, column: 92, scope: !3122)
!3168 = !DILocation(line: 711, column: 73, scope: !3122)
!3169 = !DILocation(line: 711, column: 98, scope: !3122)
!3170 = !DILocation(line: 711, column: 70, scope: !3122)
!3171 = !DILocation(line: 711, column: 11, scope: !3122)
!3172 = !DILocation(line: 713, column: 5, scope: !3122)
!3173 = !DILocation(line: 716, column: 24, scope: !3122)
!3174 = !DILocation(line: 0, scope: !1096, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 717, column: 5, scope: !3122)
!3176 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3175)
!3177 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3175)
!3178 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3175)
!3179 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3175)
!3180 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3175)
!3181 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3175)
!3182 = !DILocation(line: 0, scope: !1110, inlinedAt: !3175)
!3183 = !DILocation(line: 0, scope: !1113, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 717, column: 25, scope: !3122)
!3185 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3184)
!3186 = !DILocation(line: 717, column: 79, scope: !3122)
!3187 = !DILocation(line: 717, column: 70, scope: !3122)
!3188 = !DILocation(line: 717, column: 91, scope: !3122)
!3189 = !DILocation(line: 0, scope: !2146, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 717, column: 67, scope: !3122)
!3191 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !3190)
!3192 = !DILocation(line: 0, scope: !1113, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 717, column: 99, scope: !3122)
!3194 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3193)
!3195 = !DILocation(line: 0, scope: !1122, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 717, column: 5, scope: !3122)
!3197 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3196)
!3198 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3196)
!3199 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3196)
!3200 = !DILocation(line: 0, scope: !1136, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3196)
!3202 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3201)
!3203 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3201)
!3204 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3201)
!3205 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3201)
!3206 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3196)
!3207 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3196)
!3208 = !DILocation(line: 721, column: 1, scope: !3122)
!3209 = !DILocation(line: 0, scope: !2169, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 721, column: 1, scope: !3122)
!3211 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !3210)
!3212 = !DILocation(line: 0, scope: !332)
!3213 = !DILocation(line: 737, column: 25, scope: !332)
!3214 = !DILocation(line: 740, column: 5, scope: !332)
!3215 = !DILocation(line: 740, column: 24, scope: !332)
!3216 = !DILocation(line: 0, scope: !2038, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 740, column: 24, scope: !332)
!3218 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !3217)
!3219 = !DILocation(line: 741, column: 23, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !332, file: !6, line: 741, column: 9)
!3221 = !DILocation(line: 741, column: 29, scope: !3220)
!3222 = !DILocation(line: 741, column: 9, scope: !332)
!3223 = !DILocation(line: 745, column: 75, scope: !332)
!3224 = !DILocation(line: 745, column: 94, scope: !332)
!3225 = !DILocation(line: 745, column: 42, scope: !332)
!3226 = !DILocation(line: 746, column: 24, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !332, file: !6, line: 746, column: 9)
!3228 = !DILocation(line: 746, column: 9, scope: !332)
!3229 = !DILocation(line: 0, scope: !1684, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 747, column: 9, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3227, file: !6, line: 746, column: 36)
!3232 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3230)
!3233 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3230)
!3234 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3230)
!3235 = !DILocation(line: 0, scope: !1695, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 747, column: 29, scope: !3231)
!3237 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3236)
!3238 = !DILocation(line: 0, scope: !1704, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 747, column: 9, scope: !3231)
!3240 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3239)
!3241 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3239)
!3242 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3230)
!3243 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3230)
!3244 = !DILocation(line: 0, scope: !1718, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3239)
!3246 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3245)
!3247 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3245)
!3248 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3245)
!3249 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3245)
!3250 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3239)
!3251 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3239)
!3252 = !DILocation(line: 748, column: 9, scope: !3231)
!3253 = !DILocation(line: 751, column: 44, scope: !332)
!3254 = !DILocation(line: 752, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !332, file: !6, line: 752, column: 9)
!3256 = !DILocation(line: 752, column: 9, scope: !332)
!3257 = !DILocation(line: 0, scope: !1684, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 753, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !6, line: 752, column: 29)
!3260 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3258)
!3261 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3258)
!3262 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3258)
!3263 = !DILocation(line: 0, scope: !1695, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 753, column: 29, scope: !3259)
!3265 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3264)
!3266 = !DILocation(line: 0, scope: !1704, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 753, column: 9, scope: !3259)
!3268 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3267)
!3269 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3267)
!3270 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3258)
!3271 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3258)
!3272 = !DILocation(line: 0, scope: !1718, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3267)
!3274 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3273)
!3275 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3273)
!3276 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3273)
!3277 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3273)
!3278 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3267)
!3279 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3267)
!3280 = !DILocation(line: 754, column: 9, scope: !3259)
!3281 = !DILocation(line: 758, column: 57, scope: !332)
!3282 = !DILocalVariable(name: "this", arg: 1, scope: !3283, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!3283 = distinct !DISubprogram(name: "lookup", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6lookupES3_PvRS8_", scope: !36, file: !37, line: 97, type: !95, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !94, retainedNodes: !3284)
!3284 = !{!3282, !3285, !3286, !3287, !3288, !3289, !3290}
!3285 = !DILocalVariable(name: "context", arg: 2, scope: !3283, file: !37, line: 97, type: !64)
!3286 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !3283, file: !37, line: 97, type: !97)
!3287 = !DILocalVariable(name: "module_state", arg: 4, scope: !3283, file: !37, line: 97, type: !98)
!3288 = !DILocalVariable(name: "lock_guard", scope: !3283, file: !37, line: 98, type: !2396)
!3289 = !DILocalVariable(name: "id", scope: !3283, file: !37, line: 99, type: !48)
!3290 = !DILocalVariable(name: "mod_ptr", scope: !3283, file: !37, line: 100, type: !93)
!3291 = !DILocation(line: 0, scope: !3283, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 758, column: 36, scope: !332)
!3293 = !DILocation(line: 0, scope: !2414, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 98, column: 25, scope: !3283, inlinedAt: !3292)
!3295 = !DILocation(line: 16, column: 9, scope: !2421, inlinedAt: !3294)
!3296 = !DILocation(line: 99, column: 33, scope: !3283, inlinedAt: !3292)
!3297 = !DILocation(line: 0, scope: !2439, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 101, column: 13, scope: !3299, inlinedAt: !3292)
!3299 = distinct !DILexicalBlock(scope: !3283, file: !37, line: 101, column: 13)
!3300 = !DILocation(line: 75, column: 13, scope: !2454, inlinedAt: !3298)
!3301 = !DILocation(line: 75, column: 36, scope: !2454, inlinedAt: !3298)
!3302 = !DILocation(line: 75, column: 13, scope: !2439, inlinedAt: !3298)
!3303 = !DILocation(line: 0, scope: !2459, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 78, column: 27, scope: !2439, inlinedAt: !3298)
!3305 = !DILocation(line: 37, column: 26, scope: !2459, inlinedAt: !3304)
!3306 = !DILocation(line: 37, column: 45, scope: !2459, inlinedAt: !3304)
!3307 = !DILocation(line: 43, column: 26, scope: !2469, inlinedAt: !3304)
!3308 = !DILocation(line: 43, column: 58, scope: !2469, inlinedAt: !3304)
!3309 = !DILocation(line: 43, column: 51, scope: !2469, inlinedAt: !3304)
!3310 = !DILocation(line: 0, scope: !2447, inlinedAt: !3298)
!3311 = !DILocation(line: 79, column: 32, scope: !2450, inlinedAt: !3298)
!3312 = !DILocation(line: 79, column: 27, scope: !2450, inlinedAt: !3298)
!3313 = !DILocation(line: 79, column: 9, scope: !2447, inlinedAt: !3298)
!3314 = distinct !{!3314, !3313, !3315, !1041}
!3315 = !DILocation(line: 93, column: 9, scope: !2447, inlinedAt: !3298)
!3316 = !DILocation(line: 80, column: 48, scope: !2449, inlinedAt: !3298)
!3317 = !DILocation(line: 80, column: 53, scope: !2449, inlinedAt: !3298)
!3318 = !DILocation(line: 0, scope: !2449, inlinedAt: !3298)
!3319 = !DILocation(line: 82, column: 47, scope: !2484, inlinedAt: !3298)
!3320 = !DILocation(line: 82, column: 57, scope: !2484, inlinedAt: !3298)
!3321 = !DILocation(line: 82, column: 17, scope: !2449, inlinedAt: !3298)
!3322 = !DILocation(line: 85, column: 47, scope: !2490, inlinedAt: !3298)
!3323 = !DILocation(line: 85, column: 55, scope: !2490, inlinedAt: !3298)
!3324 = !DILocation(line: 85, column: 66, scope: !2490, inlinedAt: !3298)
!3325 = !DILocation(line: 79, column: 61, scope: !2450, inlinedAt: !3298)
!3326 = !DILocation(line: 0, scope: !2584, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 106, column: 5, scope: !3283, inlinedAt: !3292)
!3328 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !3327)
!3329 = !DILocation(line: 759, column: 5, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !6, line: 759, column: 5)
!3331 = distinct !DILexicalBlock(scope: !332, file: !6, line: 759, column: 5)
!3332 = !DILocation(line: 87, column: 63, scope: !2496, inlinedAt: !3298)
!3333 = !DILocation(line: 102, column: 28, scope: !3334, inlinedAt: !3292)
!3334 = distinct !DILexicalBlock(scope: !3299, file: !37, line: 101, column: 53)
!3335 = !DILocation(line: 759, column: 5, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3330, file: !6, line: 759, column: 5)
!3337 = !DILocation(line: 761, column: 74, scope: !332)
!3338 = !DILocation(line: 761, column: 30, scope: !332)
!3339 = !DILocation(line: 762, column: 18, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !332, file: !6, line: 762, column: 9)
!3341 = !DILocation(line: 762, column: 9, scope: !332)
!3342 = !DILocation(line: 0, scope: !1684, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 763, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3340, file: !6, line: 762, column: 30)
!3345 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3343)
!3346 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3343)
!3347 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3343)
!3348 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3343)
!3349 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3343)
!3350 = !DILocation(line: 51, column: 9, scope: !1714, inlinedAt: !3343)
!3351 = !DILocation(line: 0, scope: !1715, inlinedAt: !3343)
!3352 = !DILocation(line: 0, scope: !1695, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 763, column: 29, scope: !3344)
!3354 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3353)
!3355 = !DILocation(line: 0, scope: !1695, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 763, column: 65, scope: !3344)
!3357 = !DILocation(line: 59, column: 17, scope: !1702, inlinedAt: !3356)
!3358 = !DILocation(line: 59, column: 13, scope: !1695, inlinedAt: !3356)
!3359 = !DILocation(line: 60, column: 19, scope: !3360, inlinedAt: !3356)
!3360 = distinct !DILexicalBlock(scope: !1702, file: !395, line: 59, column: 29)
!3361 = !DILocation(line: 61, column: 9, scope: !3360, inlinedAt: !3356)
!3362 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3356)
!3363 = !DILocation(line: 0, scope: !1702, inlinedAt: !3356)
!3364 = !DILocation(line: 0, scope: !1695, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 763, column: 79, scope: !3344)
!3366 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !1704, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 763, column: 9, scope: !3344)
!3369 = !DILocation(line: 167, column: 13, scope: !1711, inlinedAt: !3368)
!3370 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3368)
!3371 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !1718, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3368)
!3374 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3373)
!3375 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3373)
!3376 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3373)
!3377 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3373)
!3378 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3368)
!3379 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3368)
!3380 = !DILocation(line: 764, column: 9, scope: !3344)
!3381 = !DILocation(line: 767, column: 105, scope: !332)
!3382 = !DILocation(line: 767, column: 50, scope: !332)
!3383 = !DILocation(line: 768, column: 24, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !332, file: !6, line: 768, column: 9)
!3385 = !DILocation(line: 768, column: 9, scope: !332)
!3386 = !DILocation(line: 0, scope: !1684, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 769, column: 9, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !6, line: 768, column: 36)
!3389 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3387)
!3390 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3387)
!3391 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3387)
!3392 = !DILocation(line: 0, scope: !1695, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 769, column: 29, scope: !3388)
!3394 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3393)
!3395 = !DILocation(line: 0, scope: !1704, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 769, column: 9, scope: !3388)
!3397 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3396)
!3398 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3396)
!3399 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3387)
!3400 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3387)
!3401 = !DILocation(line: 0, scope: !1718, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3396)
!3403 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3402)
!3404 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3402)
!3405 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3402)
!3406 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3402)
!3407 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3396)
!3408 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3396)
!3409 = !DILocation(line: 770, column: 9, scope: !3388)
!3410 = !DILocation(line: 774, column: 49, scope: !332)
!3411 = !DILocation(line: 775, column: 54, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !332, file: !6, line: 775, column: 9)
!3413 = !DILocation(line: 775, column: 65, scope: !3412)
!3414 = !DILocation(line: 775, column: 45, scope: !3412)
!3415 = !DILocation(line: 775, column: 43, scope: !3412)
!3416 = !DILocation(line: 775, column: 9, scope: !332)
!3417 = !DILocation(line: 776, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3412, file: !6, line: 775, column: 77)
!3419 = !DILocation(line: 0, scope: !1684, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 776, column: 9, scope: !3418)
!3421 = !DILocation(line: 38, column: 11, scope: !1684, inlinedAt: !3420)
!3422 = !{!3423, !1192, i64 12}
!3423 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !1192, i64 0, !1192, i64 4, !1192, i64 8, !1192, i64 12, !2958, i64 16, !1033, i64 17}
!3424 = !DILocation(line: 38, column: 30, scope: !1684, inlinedAt: !3420)
!3425 = !{!3423, !2958, i64 16}
!3426 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3420)
!3427 = !DILocation(line: 44, column: 13, scope: !1768, inlinedAt: !3420)
!3428 = !DILocation(line: 44, column: 17, scope: !1768, inlinedAt: !3420)
!3429 = !{!3423, !1192, i64 0}
!3430 = !DILocation(line: 47, column: 9, scope: !1693, inlinedAt: !3420)
!3431 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3420)
!3432 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3420)
!3433 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3420)
!3434 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3420)
!3435 = !DILocation(line: 51, column: 9, scope: !1714, inlinedAt: !3420)
!3436 = !DILocation(line: 0, scope: !1715, inlinedAt: !3420)
!3437 = !DILocation(line: 53, column: 13, scope: !3438, inlinedAt: !3420)
!3438 = distinct !DILexicalBlock(scope: !1715, file: !395, line: 51, column: 16)
!3439 = !DILocation(line: 53, column: 17, scope: !3438, inlinedAt: !3420)
!3440 = !DILocation(line: 0, scope: !1695, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 776, column: 29, scope: !3418)
!3442 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3441)
!3443 = !DILocalVariable(name: "this", arg: 1, scope: !3444, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!3444 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !844, file: !395, line: 72, type: !864, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !863, retainedNodes: !3445)
!3445 = !{!3443, !3446}
!3446 = !DILocalVariable(name: "arg", arg: 2, scope: !3444, file: !395, line: 72, type: !198)
!3447 = !DILocation(line: 0, scope: !3444, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 776, column: 51, scope: !3418)
!3449 = !DILocation(line: 73, column: 48, scope: !3444, inlinedAt: !3448)
!3450 = !DILocation(line: 73, column: 15, scope: !3444, inlinedAt: !3448)
!3451 = !DILocation(line: 0, scope: !1695, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 776, column: 63, scope: !3418)
!3453 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3452)
!3454 = !DILocation(line: 0, scope: !3444, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 776, column: 82, scope: !3418)
!3456 = !DILocation(line: 73, column: 48, scope: !3444, inlinedAt: !3455)
!3457 = !DILocation(line: 73, column: 15, scope: !3444, inlinedAt: !3455)
!3458 = !DILocation(line: 0, scope: !1695, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 776, column: 94, scope: !3418)
!3460 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3459)
!3461 = !DILocation(line: 0, scope: !3444, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 776, column: 113, scope: !3418)
!3463 = !DILocation(line: 73, column: 48, scope: !3444, inlinedAt: !3462)
!3464 = !DILocation(line: 73, column: 15, scope: !3444, inlinedAt: !3462)
!3465 = !DILocation(line: 0, scope: !1695, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 776, column: 125, scope: !3418)
!3467 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3466)
!3468 = !DILocation(line: 62, column: 17, scope: !1701, inlinedAt: !3466)
!3469 = !{!3423, !1192, i64 4}
!3470 = !DILocation(line: 0, scope: !3444, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 776, column: 134, scope: !3418)
!3472 = !DILocation(line: 73, column: 15, scope: !3444, inlinedAt: !3471)
!3473 = !DILocation(line: 0, scope: !1695, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 776, column: 170, scope: !3418)
!3475 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3474)
!3476 = !DILocation(line: 0, scope: !2087, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 776, column: 189, scope: !3418)
!3478 = !DILocation(line: 68, column: 15, scope: !2087, inlinedAt: !3477)
!3479 = !DILocation(line: 0, scope: !1695, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 776, column: 226, scope: !3418)
!3481 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3480)
!3482 = !DILocation(line: 0, scope: !1704, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 776, column: 9, scope: !3418)
!3484 = !DILocation(line: 167, column: 13, scope: !1711, inlinedAt: !3483)
!3485 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3483)
!3486 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3483)
!3487 = !DILocation(line: 0, scope: !1718, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3483)
!3489 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3488)
!3490 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3488)
!3491 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3488)
!3492 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3488)
!3493 = !DILocation(line: 172, column: 30, scope: !1728, inlinedAt: !3483)
!3494 = !DILocation(line: 172, column: 44, scope: !1728, inlinedAt: !3483)
!3495 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3483)
!3496 = !DILocation(line: 180, column: 13, scope: !1732, inlinedAt: !3483)
!3497 = !DILocation(line: 180, column: 21, scope: !1732, inlinedAt: !3483)
!3498 = !DILocation(line: 180, column: 24, scope: !1732, inlinedAt: !3483)
!3499 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3483)
!3500 = !DILocation(line: 182, column: 9, scope: !1731, inlinedAt: !3483)
!3501 = !DILocation(line: 777, column: 9, scope: !3418)
!3502 = !DILocation(line: 778, column: 27, scope: !3418)
!3503 = !DILocation(line: 778, column: 9, scope: !3418)
!3504 = !DILocation(line: 779, column: 9, scope: !3418)
!3505 = !DILocation(line: 783, column: 5, scope: !332)
!3506 = !DILocation(line: 0, scope: !971)
!3507 = !DILocation(line: 786, column: 24, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !971, file: !6, line: 786, column: 5)
!3509 = !DILocation(line: 786, column: 37, scope: !3508)
!3510 = !DILocation(line: 786, column: 5, scope: !971)
!3511 = !DILocation(line: 802, column: 25, scope: !975)
!3512 = !DILocation(line: 802, column: 9, scope: !332)
!3513 = !DILocation(line: 787, column: 14, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !6, line: 787, column: 13)
!3515 = distinct !DILexicalBlock(scope: !3508, file: !6, line: 786, column: 48)
!3516 = !DILocation(line: 787, column: 13, scope: !3515)
!3517 = !DILocation(line: 795, column: 13, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !6, line: 795, column: 13)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !6, line: 795, column: 13)
!3520 = distinct !DILexicalBlock(scope: !3514, file: !6, line: 787, column: 32)
!3521 = !{i32 0, i32 33}
!3522 = !DILocation(line: 795, column: 13, scope: !3519)
!3523 = !DILocation(line: 795, column: 13, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3518, file: !6, line: 795, column: 13)
!3525 = !DILocation(line: 796, column: 50, scope: !3520)
!3526 = !DILocation(line: 796, column: 48, scope: !3520)
!3527 = !DILocation(line: 796, column: 63, scope: !3520)
!3528 = !DILocation(line: 796, column: 70, scope: !3520)
!3529 = !DILocation(line: 796, column: 68, scope: !3520)
!3530 = !DILocation(line: 797, column: 29, scope: !3520)
!3531 = !DILocation(line: 798, column: 9, scope: !3520)
!3532 = !DILocation(line: 786, column: 44, scope: !3508)
!3533 = distinct !{!3533, !3510, !3534, !1041}
!3534 = !DILocation(line: 799, column: 5, scope: !971)
!3535 = !DILocation(line: 0, scope: !974)
!3536 = !DILocation(line: 804, column: 9, scope: !974)
!3537 = !DILocation(line: 804, column: 17, scope: !974)
!3538 = !DILocation(line: 807, column: 13, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !974, file: !6, line: 807, column: 13)
!3540 = !DILocation(line: 807, column: 55, scope: !3539)
!3541 = !DILocation(line: 807, column: 38, scope: !3539)
!3542 = !DILocation(line: 807, column: 13, scope: !974)
!3543 = !DILocation(line: 808, column: 44, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3539, file: !6, line: 807, column: 63)
!3545 = !DILocation(line: 808, column: 42, scope: !3544)
!3546 = !{!2958, !2958, i64 0}
!3547 = !DILocation(line: 809, column: 54, scope: !3544)
!3548 = !DILocation(line: 809, column: 38, scope: !3544)
!3549 = !DILocation(line: 810, column: 17, scope: !3544)
!3550 = !DILocation(line: 0, scope: !1096, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 811, column: 17, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !6, line: 810, column: 47)
!3553 = distinct !DILexicalBlock(scope: !3544, file: !6, line: 810, column: 17)
!3554 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3551)
!3555 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3551)
!3556 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3551)
!3557 = !DILocation(line: 0, scope: !1113, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 811, column: 37, scope: !3552)
!3559 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3558)
!3560 = !DILocation(line: 0, scope: !1122, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 811, column: 17, scope: !3552)
!3562 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3561)
!3563 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3561)
!3564 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3551)
!3565 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3551)
!3566 = !DILocation(line: 0, scope: !1136, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3561)
!3568 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3567)
!3569 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3567)
!3570 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3567)
!3571 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3567)
!3572 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3561)
!3573 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3561)
!3574 = !DILocation(line: 812, column: 13, scope: !3552)
!3575 = !DILocation(line: 817, column: 56, scope: !974)
!3576 = !DILocation(line: 817, column: 61, scope: !974)
!3577 = !DILocation(line: 818, column: 9, scope: !974)
!3578 = !DILocation(line: 0, scope: !1096, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 818, column: 9, scope: !974)
!3580 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !3579)
!3581 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !3579)
!3582 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3579)
!3583 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !3579)
!3584 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !3579)
!3585 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !3579)
!3586 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3579)
!3587 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3579)
!3588 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3579)
!3589 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3579)
!3590 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3579)
!3591 = !DILocation(line: 0, scope: !1110, inlinedAt: !3579)
!3592 = !DILocation(line: 53, column: 13, scope: !2973, inlinedAt: !3579)
!3593 = !DILocation(line: 53, column: 17, scope: !2973, inlinedAt: !3579)
!3594 = !DILocation(line: 0, scope: !1113, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 818, column: 29, scope: !974)
!3596 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3595)
!3597 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3595)
!3598 = !DILocation(line: 818, column: 67, scope: !974)
!3599 = !DILocation(line: 0, scope: !2214, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 818, column: 54, scope: !974)
!3601 = !DILocation(line: 78, column: 15, scope: !2214, inlinedAt: !3600)
!3602 = !DILocation(line: 0, scope: !1113, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 818, column: 83, scope: !974)
!3604 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3603)
!3605 = !DILocation(line: 818, column: 129, scope: !974)
!3606 = !DILocation(line: 0, scope: !2214, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 818, column: 116, scope: !974)
!3608 = !DILocation(line: 78, column: 44, scope: !2214, inlinedAt: !3607)
!3609 = !{!2957, !1192, i64 8}
!3610 = !DILocation(line: 78, column: 15, scope: !2214, inlinedAt: !3607)
!3611 = !DILocation(line: 0, scope: !1113, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 818, column: 146, scope: !974)
!3613 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3612)
!3614 = !DILocation(line: 0, scope: !1122, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 818, column: 9, scope: !974)
!3616 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !3615)
!3617 = !DILocation(line: 0, scope: !1128, inlinedAt: !3615)
!3618 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3615)
!3619 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3615)
!3620 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3615)
!3621 = !DILocation(line: 0, scope: !1136, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3615)
!3623 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3622)
!3624 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3622)
!3625 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3622)
!3626 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3622)
!3627 = !DILocation(line: 174, column: 30, scope: !1146, inlinedAt: !3615)
!3628 = !DILocation(line: 174, column: 44, scope: !1146, inlinedAt: !3615)
!3629 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3615)
!3630 = !DILocation(line: 180, column: 13, scope: !1151, inlinedAt: !3615)
!3631 = !DILocation(line: 180, column: 21, scope: !1151, inlinedAt: !3615)
!3632 = !DILocation(line: 180, column: 24, scope: !1151, inlinedAt: !3615)
!3633 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3615)
!3634 = !DILocation(line: 182, column: 9, scope: !1150, inlinedAt: !3615)
!3635 = !DILocation(line: 819, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !6, line: 819, column: 9)
!3637 = distinct !DILexicalBlock(scope: !974, file: !6, line: 819, column: 9)
!3638 = !DILocation(line: 819, column: 9, scope: !3637)
!3639 = !DILocation(line: 819, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !6, line: 819, column: 9)
!3641 = !DILocation(line: 821, column: 30, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !974, file: !6, line: 821, column: 13)
!3643 = !DILocation(line: 821, column: 37, scope: !3642)
!3644 = !DILocation(line: 824, column: 52, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3642, file: !6, line: 823, column: 16)
!3646 = !DILocation(line: 824, column: 27, scope: !3645)
!3647 = !DILocation(line: 825, column: 29, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !6, line: 825, column: 17)
!3649 = !DILocation(line: 825, column: 17, scope: !3645)
!3650 = !DILocation(line: 0, scope: !1684, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 826, column: 17, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3648, file: !6, line: 825, column: 41)
!3653 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !3651)
!3654 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !3651)
!3655 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !3651)
!3656 = !DILocation(line: 0, scope: !1695, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 826, column: 37, scope: !3652)
!3658 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !3657)
!3659 = !DILocation(line: 0, scope: !1704, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 826, column: 17, scope: !3652)
!3661 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !3660)
!3662 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !3660)
!3663 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !3651)
!3664 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !3651)
!3665 = !DILocation(line: 0, scope: !1718, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !3660)
!3667 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !3666)
!3668 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !3666)
!3669 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !3666)
!3670 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !3666)
!3671 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !3660)
!3672 = !DILocation(line: 830, column: 32, scope: !3645)
!3673 = !DILocation(line: 0, scope: !3642)
!3674 = !DILocation(line: 0, scope: !984)
!3675 = !DILocation(line: 833, column: 28, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !984, file: !6, line: 833, column: 9)
!3677 = !DILocation(line: 833, column: 41, scope: !3676)
!3678 = !DILocation(line: 833, column: 9, scope: !984)
!3679 = !DILocation(line: 832, column: 16, scope: !974)
!3680 = !DILocation(line: 840, column: 9, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !6, line: 840, column: 9)
!3682 = distinct !DILexicalBlock(scope: !974, file: !6, line: 840, column: 9)
!3683 = !DILocation(line: 840, column: 9, scope: !3682)
!3684 = !DILocation(line: 834, column: 18, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !6, line: 834, column: 17)
!3686 = distinct !DILexicalBlock(scope: !3676, file: !6, line: 833, column: 52)
!3687 = !DILocation(line: 834, column: 17, scope: !3686)
!3688 = !DILocation(line: 835, column: 25, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !6, line: 834, column: 36)
!3690 = !DILocation(line: 835, column: 43, scope: !3689)
!3691 = !DILocation(line: 835, column: 17, scope: !3689)
!3692 = !DILocation(line: 836, column: 36, scope: !3689)
!3693 = !DILocation(line: 836, column: 34, scope: !3689)
!3694 = !DILocation(line: 836, column: 49, scope: !3689)
!3695 = !DILocation(line: 836, column: 56, scope: !3689)
!3696 = !DILocation(line: 836, column: 54, scope: !3689)
!3697 = !DILocation(line: 837, column: 24, scope: !3689)
!3698 = !DILocation(line: 838, column: 13, scope: !3689)
!3699 = !DILocation(line: 833, column: 48, scope: !3676)
!3700 = distinct !{!3700, !3678, !3701, !1041}
!3701 = !DILocation(line: 839, column: 9, scope: !984)
!3702 = !DILocation(line: 840, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3681, file: !6, line: 840, column: 9)
!3704 = !DILocation(line: 841, column: 29, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !974, file: !6, line: 841, column: 13)
!3706 = !DILocation(line: 841, column: 36, scope: !3705)
!3707 = !DILocation(line: 842, column: 13, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !6, line: 841, column: 69)
!3709 = !DILocation(line: 844, column: 9, scope: !3708)
!3710 = !DILocation(line: 845, column: 13, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3705, file: !6, line: 844, column: 16)
!3712 = !DILocation(line: 846, column: 31, scope: !3711)
!3713 = !DILocation(line: 846, column: 13, scope: !3711)
!3714 = !DILocation(line: 849, column: 5, scope: !975)
!3715 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !3660)
!3716 = !DILocation(line: 827, column: 35, scope: !3652)
!3717 = !DILocation(line: 827, column: 17, scope: !3652)
!3718 = !DILocation(line: 851, column: 24, scope: !991)
!3719 = !DILocation(line: 0, scope: !986)
!3720 = !DILocation(line: 851, column: 37, scope: !991)
!3721 = !DILocation(line: 851, column: 5, scope: !986)
!3722 = !DILocation(line: 861, column: 42, scope: !332)
!3723 = !DILocation(line: 861, column: 49, scope: !332)
!3724 = !DILocation(line: 0, scope: !1096, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 862, column: 5, scope: !332)
!3726 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3725)
!3727 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3725)
!3728 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3725)
!3729 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3725)
!3730 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3725)
!3731 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3725)
!3732 = !DILocation(line: 0, scope: !1110, inlinedAt: !3725)
!3733 = !DILocation(line: 0, scope: !1113, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 862, column: 25, scope: !332)
!3735 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3734)
!3736 = !DILocalVariable(name: "this", arg: 1, scope: !3737, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!3737 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !397, file: !395, line: 72, type: !421, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !420, retainedNodes: !3738)
!3738 = !{!3736, !3739}
!3739 = !DILocalVariable(name: "arg", arg: 2, scope: !3737, file: !395, line: 72, type: !198)
!3740 = !DILocation(line: 0, scope: !3737, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 862, column: 63, scope: !332)
!3742 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3741)
!3743 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3741)
!3744 = !DILocation(line: 0, scope: !1113, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 862, column: 83, scope: !332)
!3746 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3745)
!3747 = !DILocation(line: 0, scope: !1122, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 862, column: 5, scope: !332)
!3749 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3748)
!3750 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3748)
!3751 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3748)
!3752 = !DILocation(line: 0, scope: !1136, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3748)
!3754 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3753)
!3755 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3753)
!3756 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3753)
!3757 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3753)
!3758 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3748)
!3759 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3748)
!3760 = !DILocation(line: 863, column: 5, scope: !332)
!3761 = !DILocation(line: 866, column: 5, scope: !332)
!3762 = !DILocation(line: 0, scope: !1096, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 866, column: 5, scope: !332)
!3764 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !3763)
!3765 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !3763)
!3766 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3763)
!3767 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !3763)
!3768 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !3763)
!3769 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !3763)
!3770 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !3763)
!3771 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3763)
!3772 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3763)
!3773 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3763)
!3774 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3763)
!3775 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3763)
!3776 = !DILocation(line: 0, scope: !1110, inlinedAt: !3763)
!3777 = !DILocation(line: 53, column: 13, scope: !2973, inlinedAt: !3763)
!3778 = !DILocation(line: 53, column: 17, scope: !2973, inlinedAt: !3763)
!3779 = !DILocation(line: 0, scope: !1113, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 866, column: 25, scope: !332)
!3781 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3780)
!3782 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3780)
!3783 = !DILocation(line: 866, column: 83, scope: !332)
!3784 = !DILocation(line: 0, scope: !3737, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 866, column: 64, scope: !332)
!3786 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3785)
!3787 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3785)
!3788 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3785)
!3789 = !DILocation(line: 0, scope: !1113, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 866, column: 86, scope: !332)
!3791 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3790)
!3792 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3790)
!3793 = !DILocation(line: 0, scope: !3737, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 866, column: 101, scope: !332)
!3795 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3794)
!3796 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3794)
!3797 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3794)
!3798 = !DILocation(line: 0, scope: !1113, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 866, column: 112, scope: !332)
!3800 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3799)
!3801 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3799)
!3802 = !DILocation(line: 0, scope: !3737, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 866, column: 120, scope: !332)
!3804 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3803)
!3805 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3803)
!3806 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3803)
!3807 = !DILocation(line: 0, scope: !1113, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 866, column: 131, scope: !332)
!3809 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3808)
!3810 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3808)
!3811 = !DILocation(line: 0, scope: !3737, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 866, column: 139, scope: !332)
!3813 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3812)
!3814 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3812)
!3815 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3812)
!3816 = !DILocation(line: 0, scope: !1113, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 866, column: 150, scope: !332)
!3818 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3817)
!3819 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3817)
!3820 = !DILocation(line: 0, scope: !3737, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 866, column: 166, scope: !332)
!3822 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3821)
!3823 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3821)
!3824 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3821)
!3825 = !DILocation(line: 0, scope: !1113, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 866, column: 178, scope: !332)
!3827 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3826)
!3828 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3826)
!3829 = !DILocation(line: 0, scope: !3737, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 866, column: 186, scope: !332)
!3831 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3830)
!3832 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3830)
!3833 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3830)
!3834 = !DILocation(line: 0, scope: !1113, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 866, column: 198, scope: !332)
!3836 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3835)
!3837 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3835)
!3838 = !DILocation(line: 0, scope: !3737, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 866, column: 206, scope: !332)
!3840 = !DILocation(line: 73, column: 48, scope: !3737, inlinedAt: !3839)
!3841 = !DILocation(line: 73, column: 15, scope: !3737, inlinedAt: !3839)
!3842 = !DILocation(line: 73, column: 13, scope: !3737, inlinedAt: !3839)
!3843 = !DILocation(line: 0, scope: !1113, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 866, column: 218, scope: !332)
!3845 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3844)
!3846 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3844)
!3847 = !DILocation(line: 0, scope: !1122, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 866, column: 5, scope: !332)
!3849 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3848)
!3850 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3848)
!3851 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3848)
!3852 = !DILocation(line: 0, scope: !1136, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3848)
!3854 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3853)
!3855 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3853)
!3856 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3853)
!3857 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3853)
!3858 = !DILocation(line: 174, column: 30, scope: !1146, inlinedAt: !3848)
!3859 = !DILocation(line: 174, column: 44, scope: !1146, inlinedAt: !3848)
!3860 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3848)
!3861 = !DILocation(line: 180, column: 13, scope: !1151, inlinedAt: !3848)
!3862 = !DILocation(line: 180, column: 21, scope: !1151, inlinedAt: !3848)
!3863 = !DILocation(line: 180, column: 24, scope: !1151, inlinedAt: !3848)
!3864 = !DILocation(line: 180, column: 31, scope: !1151, inlinedAt: !3848)
!3865 = !DILocation(line: 180, column: 28, scope: !1151, inlinedAt: !3848)
!3866 = !DILocation(line: 180, column: 13, scope: !1129, inlinedAt: !3848)
!3867 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3848)
!3868 = !DILocation(line: 182, column: 9, scope: !1150, inlinedAt: !3848)
!3869 = !DILocation(line: 868, column: 5, scope: !332)
!3870 = !DILocation(line: 871, column: 5, scope: !332)
!3871 = !DILocation(line: 873, column: 5, scope: !332)
!3872 = !DILocation(line: 875, column: 5, scope: !332)
!3873 = !DILocation(line: 881, column: 23, scope: !332)
!3874 = !DILocation(line: 881, column: 5, scope: !332)
!3875 = !DILocation(line: 884, column: 24, scope: !332)
!3876 = !DILocation(line: 0, scope: !1096, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 885, column: 5, scope: !332)
!3878 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3877)
!3879 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3877)
!3880 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3877)
!3881 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3877)
!3882 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3877)
!3883 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3877)
!3884 = !DILocation(line: 0, scope: !1110, inlinedAt: !3877)
!3885 = !DILocation(line: 0, scope: !1113, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 885, column: 25, scope: !332)
!3887 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3886)
!3888 = !DILocation(line: 885, column: 77, scope: !332)
!3889 = !DILocation(line: 885, column: 68, scope: !332)
!3890 = !DILocation(line: 885, column: 89, scope: !332)
!3891 = !DILocation(line: 0, scope: !2146, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 885, column: 65, scope: !332)
!3893 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !3892)
!3894 = !DILocation(line: 0, scope: !1113, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 885, column: 97, scope: !332)
!3896 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3895)
!3897 = !DILocation(line: 0, scope: !1122, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 885, column: 5, scope: !332)
!3899 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3898)
!3900 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3898)
!3901 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3898)
!3902 = !DILocation(line: 0, scope: !1136, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3898)
!3904 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3903)
!3905 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3903)
!3906 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3903)
!3907 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3903)
!3908 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3898)
!3909 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3898)
!3910 = !DILocation(line: 852, column: 13, scope: !989)
!3911 = !DILocation(line: 852, column: 13, scope: !990)
!3912 = !DILocation(line: 853, column: 13, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !6, line: 853, column: 13)
!3914 = distinct !DILexicalBlock(scope: !988, file: !6, line: 853, column: 13)
!3915 = !DILocation(line: 853, column: 13, scope: !3914)
!3916 = !DILocation(line: 853, column: 13, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !6, line: 853, column: 13)
!3918 = !DILocation(line: 854, column: 74, scope: !988)
!3919 = !DILocation(line: 854, column: 84, scope: !988)
!3920 = !DILocation(line: 854, column: 37, scope: !988)
!3921 = !DILocation(line: 0, scope: !988)
!3922 = !DILocation(line: 855, column: 47, scope: !988)
!3923 = !DILocation(line: 855, column: 60, scope: !988)
!3924 = !DILocation(line: 855, column: 13, scope: !988)
!3925 = !DILocation(line: 856, column: 25, scope: !988)
!3926 = !DILocation(line: 857, column: 9, scope: !988)
!3927 = !DILocation(line: 851, column: 44, scope: !991)
!3928 = distinct !{!3928, !3721, !3929, !1041}
!3929 = !DILocation(line: 858, column: 5, scope: !986)
!3930 = !DILocation(line: 0, scope: !2169, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 889, column: 1, scope: !332)
!3932 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !3931)
!3933 = !DILocation(line: 889, column: 1, scope: !332)
!3934 = !DISubprogram(name: "dispatch_threadgroups", linkageName: "_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii", scope: !2, file: !585, line: 13, type: !3935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !583, !57, !57, !57, !57, !57, !57}
!3937 = distinct !DISubprogram(name: "halide_metal_device_and_host_malloc", scope: !6, file: !6, line: 891, type: !264, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !3938)
!3938 = !{!3939, !3940, !3941, !3942}
!3939 = !DILocalVariable(name: "user_context", arg: 1, scope: !3937, file: !6, line: 891, type: !97)
!3940 = !DILocalVariable(name: "buffer", arg: 2, scope: !3937, file: !6, line: 891, type: !143)
!3941 = !DILocalVariable(name: "result", scope: !3937, file: !6, line: 893, type: !57)
!3942 = !DILocalVariable(name: "metal_buffer", scope: !3943, file: !6, line: 895, type: !523)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !6, line: 894, column: 22)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !6, line: 894, column: 9)
!3945 = !DILocation(line: 0, scope: !3937)
!3946 = !DILocation(line: 0, scope: !1096, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 892, column: 5, scope: !3937)
!3948 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3947)
!3949 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3947)
!3950 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3947)
!3951 = !DILocation(line: 0, scope: !1113, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 892, column: 25, scope: !3937)
!3953 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3952)
!3954 = !DILocation(line: 0, scope: !1122, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 892, column: 5, scope: !3937)
!3956 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3955)
!3957 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3955)
!3958 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3947)
!3959 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3947)
!3960 = !DILocation(line: 0, scope: !1136, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3955)
!3962 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3961)
!3963 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3961)
!3964 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !3961)
!3965 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3961)
!3966 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !3955)
!3967 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !3955)
!3968 = !DILocation(line: 893, column: 18, scope: !3937)
!3969 = !DILocation(line: 894, column: 16, scope: !3944)
!3970 = !DILocation(line: 894, column: 9, scope: !3937)
!3971 = !DILocation(line: 895, column: 63, scope: !3943)
!3972 = !DILocation(line: 895, column: 37, scope: !3943)
!3973 = !DILocation(line: 895, column: 73, scope: !3943)
!3974 = !DILocation(line: 0, scope: !3943)
!3975 = !DILocation(line: 896, column: 35, scope: !3943)
!3976 = !DILocation(line: 896, column: 17, scope: !3943)
!3977 = !DILocation(line: 896, column: 22, scope: !3943)
!3978 = !DILocation(line: 0, scope: !1096, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 897, column: 9, scope: !3943)
!3980 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3979)
!3981 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3979)
!3982 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3979)
!3983 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3979)
!3984 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3979)
!3985 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3979)
!3986 = !DILocation(line: 0, scope: !1110, inlinedAt: !3979)
!3987 = !DILocation(line: 0, scope: !1113, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 897, column: 29, scope: !3943)
!3989 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3988)
!3990 = !DILocation(line: 0, scope: !1113, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 898, column: 29, scope: !3943)
!3992 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3991)
!3993 = !DILocation(line: 898, column: 64, scope: !3943)
!3994 = !DILocation(line: 898, column: 48, scope: !3943)
!3995 = !DILocation(line: 0, scope: !1889, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 898, column: 45, scope: !3943)
!3997 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !3996)
!3998 = !DILocation(line: 0, scope: !1113, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 899, column: 29, scope: !3943)
!4000 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3999)
!4001 = !DILocation(line: 899, column: 54, scope: !3943)
!4002 = !DILocation(line: 0, scope: !1889, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 899, column: 51, scope: !3943)
!4004 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4003)
!4005 = !DILocation(line: 0, scope: !1113, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 900, column: 29, scope: !3943)
!4007 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4006)
!4008 = !DILocation(line: 900, column: 54, scope: !3943)
!4009 = !DILocation(line: 0, scope: !1889, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 900, column: 43, scope: !3943)
!4011 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4010)
!4012 = !DILocation(line: 0, scope: !1113, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 900, column: 59, scope: !3943)
!4014 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4013)
!4015 = !DILocation(line: 0, scope: !1122, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 897, column: 9, scope: !3943)
!4017 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4016)
!4018 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4016)
!4019 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4016)
!4020 = !DILocation(line: 0, scope: !1136, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4016)
!4022 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4021)
!4023 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4021)
!4024 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4021)
!4025 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4021)
!4026 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4016)
!4027 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4016)
!4028 = !DILocation(line: 901, column: 5, scope: !3943)
!4029 = !DILocation(line: 902, column: 5, scope: !3937)
!4030 = distinct !DISubprogram(name: "halide_metal_device_and_host_free", scope: !6, file: !6, line: 905, type: !264, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4031)
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "user_context", arg: 1, scope: !4030, file: !6, line: 905, type: !97)
!4033 = !DILocalVariable(name: "buffer", arg: 2, scope: !4030, file: !6, line: 905, type: !143)
!4034 = !DILocation(line: 0, scope: !4030)
!4035 = !DILocation(line: 0, scope: !1096, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 906, column: 5, scope: !4030)
!4037 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4036)
!4038 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4036)
!4039 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4036)
!4040 = !DILocation(line: 0, scope: !1113, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 906, column: 25, scope: !4030)
!4042 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4041)
!4043 = !DILocation(line: 0, scope: !1122, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 906, column: 5, scope: !4030)
!4045 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4044)
!4046 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4044)
!4047 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4036)
!4048 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4036)
!4049 = !DILocation(line: 0, scope: !1136, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4044)
!4051 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4050)
!4052 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4050)
!4053 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4050)
!4054 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4050)
!4055 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4044)
!4056 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4044)
!4057 = !DILocation(line: 907, column: 5, scope: !4030)
!4058 = !DILocation(line: 908, column: 13, scope: !4030)
!4059 = !DILocation(line: 908, column: 18, scope: !4030)
!4060 = !DILocation(line: 909, column: 5, scope: !4030)
!4061 = distinct !DISubprogram(name: "halide_metal_buffer_copy", scope: !6, file: !6, line: 912, type: !277, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4073, !4074, !4077, !4078, !4079, !4081, !4086, !4087}
!4063 = !DILocalVariable(name: "user_context", arg: 1, scope: !4061, file: !6, line: 912, type: !97)
!4064 = !DILocalVariable(name: "src", arg: 2, scope: !4061, file: !6, line: 912, type: !143)
!4065 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !4061, file: !6, line: 913, type: !150)
!4066 = !DILocalVariable(name: "dst", arg: 4, scope: !4061, file: !6, line: 914, type: !143)
!4067 = !DILocalVariable(name: "from_host", scope: !4061, file: !6, line: 931, type: !85)
!4068 = !DILocalVariable(name: "to_host", scope: !4061, file: !6, line: 934, type: !85)
!4069 = !DILocalVariable(name: "c", scope: !4061, file: !6, line: 939, type: !1003)
!4070 = !DILocalVariable(name: "err", scope: !4061, file: !6, line: 941, type: !57)
!4071 = !DILocalVariable(name: "metal_context", scope: !4072, file: !6, line: 943, type: !946)
!4072 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 942, column: 5)
!4073 = !DILocalVariable(name: "t_before", scope: !4072, file: !6, line: 953, type: !147)
!4074 = !DILocalVariable(name: "buffer_label", scope: !4075, file: !6, line: 959, type: !335)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !6, line: 957, column: 37)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !6, line: 957, column: 13)
!4077 = !DILocalVariable(name: "blit_command_buffer", scope: !4075, file: !6, line: 960, type: !131)
!4078 = !DILocalVariable(name: "blit_encoder", scope: !4075, file: !6, line: 961, type: !596)
!4079 = !DILocalVariable(name: "dst_buffer", scope: !4080, file: !6, line: 975, type: !523)
!4080 = distinct !DILexicalBlock(scope: !4076, file: !6, line: 966, column: 16)
!4081 = !DILocalVariable(name: "total_size", scope: !4082, file: !6, line: 990, type: !248)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !6, line: 989, column: 52)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !6, line: 989, column: 21)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !6, line: 988, column: 27)
!4085 = distinct !DILexicalBlock(scope: !4080, file: !6, line: 988, column: 17)
!4086 = !DILocalVariable(name: "total_extent", scope: !4082, file: !6, line: 992, type: !654)
!4087 = !DILocalVariable(name: "t_after", scope: !4072, file: !6, line: 1003, type: !147)
!4088 = !DILocation(line: 0, scope: !4061)
!4089 = !DILocation(line: 915, column: 14, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 915, column: 9)
!4091 = !DILocation(line: 915, column: 25, scope: !4090)
!4092 = !DILocation(line: 915, column: 9, scope: !4061)
!4093 = !DILocation(line: 0, scope: !1684, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 916, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4090, file: !6, line: 915, column: 42)
!4096 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !4094)
!4097 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !4094)
!4098 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !4094)
!4099 = !DILocation(line: 0, scope: !1695, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 916, column: 29, scope: !4095)
!4101 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !4100)
!4102 = !DILocation(line: 0, scope: !1704, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 916, column: 9, scope: !4095)
!4104 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !4103)
!4105 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !4103)
!4106 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !4094)
!4107 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !4094)
!4108 = !DILocation(line: 0, scope: !1718, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !4103)
!4110 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !4109)
!4111 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !4109)
!4112 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !4109)
!4113 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !4109)
!4114 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !4103)
!4115 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !4103)
!4116 = !DILocation(line: 917, column: 9, scope: !4095)
!4117 = !DILocation(line: 921, column: 5, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !6, line: 921, column: 5)
!4119 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 921, column: 5)
!4120 = !DILocation(line: 921, column: 5, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !6, line: 921, column: 5)
!4122 = !DILocalVariable(name: "this", arg: 1, scope: !4123, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4123 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !144, file: !42, line: 1470, type: !238, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !240, retainedNodes: !4124)
!4124 = !{!4122}
!4125 = !DILocation(line: 0, scope: !4123, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 924, column: 15, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 924, column: 9)
!4128 = !DILocalVariable(name: "this", arg: 1, scope: !4129, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4129 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !144, file: !42, line: 1454, type: !224, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !223, retainedNodes: !4130)
!4130 = !{!4128, !4131}
!4131 = !DILocalVariable(name: "flag", arg: 2, scope: !4129, file: !42, line: 1454, type: !228)
!4132 = !DILocation(line: 0, scope: !4129, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 1471, column: 16, scope: !4123, inlinedAt: !4126)
!4134 = !DILocation(line: 1455, column: 17, scope: !4129, inlinedAt: !4133)
!4135 = !{!1191, !1032, i64 16}
!4136 = !DILocation(line: 1455, column: 23, scope: !4129, inlinedAt: !4133)
!4137 = !DILocation(line: 1455, column: 31, scope: !4129, inlinedAt: !4133)
!4138 = !DILocation(line: 924, column: 30, scope: !4127)
!4139 = !DILocation(line: 924, column: 38, scope: !4127)
!4140 = !DILocation(line: 924, column: 43, scope: !4127)
!4141 = !DILocation(line: 924, column: 55, scope: !4127)
!4142 = !DILocation(line: 925, column: 14, scope: !4127)
!4143 = !DILocation(line: 925, column: 31, scope: !4127)
!4144 = !DILocation(line: 924, column: 9, scope: !4061)
!4145 = !DILocation(line: 926, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !6, line: 926, column: 9)
!4147 = distinct !DILexicalBlock(scope: !4127, file: !6, line: 925, column: 59)
!4148 = !DILocation(line: 926, column: 9, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !6, line: 926, column: 9)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !6, line: 926, column: 9)
!4151 = !DILocation(line: 931, column: 28, scope: !4061)
!4152 = !DILocation(line: 931, column: 45, scope: !4061)
!4153 = !DILocation(line: 931, column: 73, scope: !4061)
!4154 = !DILocation(line: 932, column: 28, scope: !4061)
!4155 = !DILocation(line: 932, column: 35, scope: !4061)
!4156 = !DILocation(line: 932, column: 41, scope: !4061)
!4157 = !DILocalVariable(name: "this", arg: 1, scope: !4158, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4158 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !144, file: !42, line: 1466, type: !238, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !237, retainedNodes: !4159)
!4159 = !{!4157}
!4160 = !DILocation(line: 0, scope: !4158, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 933, column: 28, scope: !4061)
!4162 = !DILocation(line: 0, scope: !4129, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 1467, column: 16, scope: !4158, inlinedAt: !4161)
!4164 = !DILocation(line: 1455, column: 23, scope: !4129, inlinedAt: !4163)
!4165 = !DILocation(line: 1455, column: 31, scope: !4129, inlinedAt: !4163)
!4166 = !DILocation(line: 933, column: 41, scope: !4061)
!4167 = !DILocation(line: 933, column: 49, scope: !4061)
!4168 = !DILocation(line: 933, column: 54, scope: !4061)
!4169 = !DILocation(line: 936, column: 5, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !6, line: 936, column: 5)
!4171 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 936, column: 5)
!4172 = !DILocation(line: 936, column: 5, scope: !4171)
!4173 = !DILocation(line: 937, column: 5, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !6, line: 937, column: 5)
!4175 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 937, column: 5)
!4176 = !DILocation(line: 937, column: 5, scope: !4175)
!4177 = !DILocation(line: 937, column: 5, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !6, line: 937, column: 5)
!4179 = !DILocation(line: 939, column: 5, scope: !4061)
!4180 = !DILocation(line: 939, column: 17, scope: !4061)
!4181 = !DILocation(line: 939, column: 21, scope: !4061)
!4182 = !DILocation(line: 943, column: 9, scope: !4072)
!4183 = !DILocation(line: 943, column: 28, scope: !4072)
!4184 = !DILocation(line: 0, scope: !2038, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 943, column: 28, scope: !4072)
!4186 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !4185)
!4187 = !DILocation(line: 944, column: 27, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4072, file: !6, line: 944, column: 13)
!4189 = !DILocation(line: 944, column: 33, scope: !4188)
!4190 = !DILocation(line: 944, column: 13, scope: !4072)
!4191 = !DILocation(line: 948, column: 9, scope: !4072)
!4192 = !DILocation(line: 0, scope: !1096, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 948, column: 9, scope: !4072)
!4194 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !4193)
!4195 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !4193)
!4196 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4193)
!4197 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !4193)
!4198 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !4193)
!4199 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !4193)
!4200 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !4193)
!4201 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4193)
!4202 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4193)
!4203 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4193)
!4204 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4193)
!4205 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4193)
!4206 = !DILocation(line: 0, scope: !1110, inlinedAt: !4193)
!4207 = !DILocation(line: 53, column: 13, scope: !2973, inlinedAt: !4193)
!4208 = !DILocation(line: 53, column: 17, scope: !2973, inlinedAt: !4193)
!4209 = !DILocation(line: 0, scope: !1113, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 949, column: 13, scope: !4072)
!4211 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4210)
!4212 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4210)
!4213 = !DILocation(line: 0, scope: !1889, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 949, column: 59, scope: !4072)
!4215 = !DILocation(line: 98, column: 45, scope: !1889, inlinedAt: !4214)
!4216 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4214)
!4217 = !DILocation(line: 98, column: 13, scope: !1889, inlinedAt: !4214)
!4218 = !DILocation(line: 0, scope: !1113, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 950, column: 13, scope: !4072)
!4220 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4219)
!4221 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4219)
!4222 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4219)
!4223 = !DILocation(line: 950, column: 29, scope: !4072)
!4224 = !DILocation(line: 0, scope: !1889, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 950, column: 26, scope: !4072)
!4226 = !DILocation(line: 98, column: 45, scope: !1889, inlinedAt: !4225)
!4227 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4225)
!4228 = !DILocation(line: 98, column: 13, scope: !1889, inlinedAt: !4225)
!4229 = !DILocation(line: 0, scope: !1113, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 950, column: 33, scope: !4072)
!4231 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4230)
!4232 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4230)
!4233 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4230)
!4234 = !DILocation(line: 950, column: 49, scope: !4072)
!4235 = !DILocation(line: 0, scope: !1889, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 950, column: 46, scope: !4072)
!4237 = !DILocation(line: 98, column: 45, scope: !1889, inlinedAt: !4236)
!4238 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4236)
!4239 = !DILocation(line: 98, column: 13, scope: !1889, inlinedAt: !4236)
!4240 = !DILocation(line: 0, scope: !1113, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 950, column: 53, scope: !4072)
!4242 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4241)
!4243 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4241)
!4244 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4241)
!4245 = !DILocation(line: 0, scope: !1122, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 948, column: 9, scope: !4072)
!4247 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !4246)
!4248 = !DILocation(line: 0, scope: !1128, inlinedAt: !4246)
!4249 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4246)
!4250 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4246)
!4251 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4246)
!4252 = !DILocation(line: 0, scope: !1136, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4246)
!4254 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4253)
!4255 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4253)
!4256 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4253)
!4257 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4253)
!4258 = !DILocation(line: 174, column: 30, scope: !1146, inlinedAt: !4246)
!4259 = !DILocation(line: 174, column: 44, scope: !1146, inlinedAt: !4246)
!4260 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4246)
!4261 = !DILocation(line: 180, column: 13, scope: !1151, inlinedAt: !4246)
!4262 = !DILocation(line: 180, column: 21, scope: !1151, inlinedAt: !4246)
!4263 = !DILocation(line: 180, column: 24, scope: !1151, inlinedAt: !4246)
!4264 = !DILocation(line: 180, column: 31, scope: !1151, inlinedAt: !4246)
!4265 = !DILocation(line: 180, column: 28, scope: !1151, inlinedAt: !4246)
!4266 = !DILocation(line: 180, column: 13, scope: !1129, inlinedAt: !4246)
!4267 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4246)
!4268 = !DILocation(line: 182, column: 9, scope: !1150, inlinedAt: !4246)
!4269 = !DILocation(line: 953, column: 29, scope: !4072)
!4270 = !DILocation(line: 0, scope: !4072)
!4271 = !DILocation(line: 957, column: 24, scope: !4076)
!4272 = !DILocation(line: 0, scope: !1096, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 958, column: 13, scope: !4075)
!4274 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4273)
!4275 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4273)
!4276 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4273)
!4277 = !DILocation(line: 0, scope: !1113, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 958, column: 33, scope: !4075)
!4279 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !1122, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 958, column: 13, scope: !4075)
!4282 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4281)
!4283 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4281)
!4284 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4273)
!4285 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4273)
!4286 = !DILocation(line: 0, scope: !1136, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4281)
!4288 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4287)
!4289 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4287)
!4290 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4287)
!4291 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4287)
!4292 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4281)
!4293 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4281)
!4294 = !DILocation(line: 0, scope: !4075)
!4295 = !DILocation(line: 960, column: 88, scope: !4075)
!4296 = !DILocation(line: 960, column: 109, scope: !4075)
!4297 = !DILocation(line: 960, column: 55, scope: !4075)
!4298 = !DILocation(line: 961, column: 54, scope: !4075)
!4299 = !DILocation(line: 962, column: 89, scope: !4075)
!4300 = !DILocation(line: 962, column: 70, scope: !4075)
!4301 = !DILocation(line: 962, column: 95, scope: !4075)
!4302 = !DILocation(line: 963, column: 58, scope: !4075)
!4303 = !DILocation(line: 963, column: 39, scope: !4075)
!4304 = !DILocation(line: 963, column: 64, scope: !4075)
!4305 = !DILocation(line: 963, column: 77, scope: !4075)
!4306 = !DILocation(line: 962, column: 13, scope: !4075)
!4307 = !DILocation(line: 964, column: 13, scope: !4075)
!4308 = !DILocation(line: 965, column: 13, scope: !4075)
!4309 = !DILocation(line: 966, column: 9, scope: !4075)
!4310 = !DILocation(line: 967, column: 17, scope: !4080)
!4311 = !DILocation(line: 970, column: 65, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !6, line: 967, column: 29)
!4313 = distinct !DILexicalBlock(scope: !4080, file: !6, line: 967, column: 17)
!4314 = !DILocation(line: 970, column: 17, scope: !4312)
!4315 = !DILocation(line: 972, column: 71, scope: !4312)
!4316 = !DILocation(line: 972, column: 52, scope: !4312)
!4317 = !DILocation(line: 972, column: 77, scope: !4312)
!4318 = !DILocation(line: 972, column: 35, scope: !4312)
!4319 = !DILocation(line: 972, column: 25, scope: !4312)
!4320 = !DILocation(line: 972, column: 104, scope: !4312)
!4321 = !DILocation(line: 972, column: 85, scope: !4312)
!4322 = !DILocation(line: 972, column: 110, scope: !4312)
!4323 = !DILocation(line: 972, column: 82, scope: !4312)
!4324 = !DILocation(line: 972, column: 23, scope: !4312)
!4325 = !DILocation(line: 973, column: 13, scope: !4312)
!4326 = !DILocation(line: 976, column: 17, scope: !4080)
!4327 = !DILocation(line: 0, scope: !4080)
!4328 = !DILocation(line: 986, column: 13, scope: !4080)
!4329 = !DILocation(line: 988, column: 17, scope: !4080)
!4330 = !DILocation(line: 979, column: 65, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !6, line: 976, column: 27)
!4332 = distinct !DILexicalBlock(scope: !4080, file: !6, line: 976, column: 17)
!4333 = !DILocation(line: 979, column: 17, scope: !4331)
!4334 = !DILocation(line: 981, column: 50, scope: !4331)
!4335 = !DILocation(line: 981, column: 31, scope: !4331)
!4336 = !DILocation(line: 981, column: 56, scope: !4331)
!4337 = !DILocation(line: 982, column: 17, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4331, file: !6, line: 982, column: 17)
!4339 = !DILocation(line: 982, column: 17, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !6, line: 982, column: 17)
!4341 = distinct !DILexicalBlock(scope: !4338, file: !6, line: 982, column: 17)
!4342 = !DILocation(line: 983, column: 35, scope: !4331)
!4343 = !DILocation(line: 983, column: 25, scope: !4331)
!4344 = !DILocation(line: 983, column: 85, scope: !4331)
!4345 = !DILocation(line: 983, column: 66, scope: !4331)
!4346 = !DILocation(line: 983, column: 91, scope: !4331)
!4347 = !DILocation(line: 983, column: 63, scope: !4331)
!4348 = !DILocation(line: 983, column: 23, scope: !4331)
!4349 = !DILocation(line: 989, column: 21, scope: !4083)
!4350 = !DILocation(line: 989, column: 21, scope: !4084)
!4351 = !DILocation(line: 0, scope: !1919, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 990, column: 46, scope: !4082)
!4353 = !DILocation(line: 0, scope: !1924, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 1519, column: 25, scope: !1919, inlinedAt: !4352)
!4355 = !DILocation(line: 0, scope: !1928, inlinedAt: !4354)
!4356 = !DILocation(line: 1508, column: 29, scope: !1933, inlinedAt: !4354)
!4357 = !DILocation(line: 1508, column: 27, scope: !1933, inlinedAt: !4354)
!4358 = !DILocation(line: 1508, column: 9, scope: !1928, inlinedAt: !4354)
!4359 = !DILocation(line: 0, scope: !1209, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1514, column: 36, scope: !1924, inlinedAt: !4354)
!4361 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !4360)
!4362 = !DILocation(line: 0, scope: !1940, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 1519, column: 33, scope: !1919, inlinedAt: !4352)
!4364 = !DILocation(line: 0, scope: !1944, inlinedAt: !4363)
!4365 = !DILocation(line: 1497, column: 9, scope: !1944, inlinedAt: !4363)
!4366 = !DILocation(line: 1509, column: 24, scope: !1950, inlinedAt: !4354)
!4367 = !DILocation(line: 1509, column: 31, scope: !1950, inlinedAt: !4354)
!4368 = !DILocation(line: 1509, column: 17, scope: !1951, inlinedAt: !4354)
!4369 = !DILocation(line: 1510, column: 61, scope: !1955, inlinedAt: !4354)
!4370 = !DILocation(line: 1510, column: 68, scope: !1955, inlinedAt: !4354)
!4371 = !DILocation(line: 1510, column: 51, scope: !1955, inlinedAt: !4354)
!4372 = !DILocation(line: 1510, column: 23, scope: !1955, inlinedAt: !4354)
!4373 = !DILocation(line: 1511, column: 13, scope: !1955, inlinedAt: !4354)
!4374 = !DILocation(line: 1508, column: 42, scope: !1933, inlinedAt: !4354)
!4375 = distinct !{!4375, !4358, !4376, !1041}
!4376 = !DILocation(line: 1512, column: 9, scope: !1928, inlinedAt: !4354)
!4377 = !DILocation(line: 1498, column: 24, scope: !1964, inlinedAt: !4363)
!4378 = !DILocation(line: 1498, column: 31, scope: !1964, inlinedAt: !4363)
!4379 = !DILocation(line: 1498, column: 17, scope: !1965, inlinedAt: !4363)
!4380 = !DILocation(line: 1499, column: 61, scope: !1970, inlinedAt: !4363)
!4381 = !DILocation(line: 1499, column: 68, scope: !1970, inlinedAt: !4363)
!4382 = !DILocation(line: 1499, column: 51, scope: !1970, inlinedAt: !4363)
!4383 = !DILocation(line: 1499, column: 23, scope: !1970, inlinedAt: !4363)
!4384 = !DILocation(line: 1500, column: 13, scope: !1970, inlinedAt: !4363)
!4385 = !DILocation(line: 1497, column: 42, scope: !1966, inlinedAt: !4363)
!4386 = !DILocation(line: 1497, column: 27, scope: !1966, inlinedAt: !4363)
!4387 = distinct !{!4387, !4365, !4388, !1041}
!4388 = !DILocation(line: 1501, column: 9, scope: !1944, inlinedAt: !4363)
!4389 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !4360)
!4390 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !4360)
!4391 = !DILocation(line: 1513, column: 15, scope: !1924, inlinedAt: !4354)
!4392 = !DILocation(line: 0, scope: !1209, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 1502, column: 36, scope: !1940, inlinedAt: !4363)
!4394 = !DILocation(line: 1519, column: 31, scope: !1919, inlinedAt: !4352)
!4395 = !DILocation(line: 0, scope: !4082)
!4396 = !DILocation(line: 991, column: 21, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !6, line: 991, column: 21)
!4398 = distinct !DILexicalBlock(scope: !4082, file: !6, line: 991, column: 21)
!4399 = !DILocation(line: 991, column: 21, scope: !4398)
!4400 = !DILocation(line: 991, column: 21, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !6, line: 991, column: 21)
!4402 = !DILocation(line: 995, column: 50, scope: !4082)
!4403 = !DILocation(line: 995, column: 21, scope: !4082)
!4404 = !DILocation(line: 996, column: 17, scope: !4082)
!4405 = !DILocation(line: 998, column: 65, scope: !4084)
!4406 = !DILocation(line: 998, column: 17, scope: !4084)
!4407 = !DILocation(line: 999, column: 13, scope: !4084)
!4408 = !DILocation(line: 1003, column: 28, scope: !4072)
!4409 = !DILocation(line: 0, scope: !1096, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 1004, column: 9, scope: !4072)
!4411 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4410)
!4412 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4410)
!4413 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4410)
!4414 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4410)
!4415 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4410)
!4416 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4410)
!4417 = !DILocation(line: 0, scope: !1110, inlinedAt: !4410)
!4418 = !DILocation(line: 0, scope: !1113, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 1004, column: 29, scope: !4072)
!4420 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4419)
!4421 = !DILocation(line: 1004, column: 57, scope: !4072)
!4422 = !DILocation(line: 1004, column: 48, scope: !4072)
!4423 = !DILocation(line: 1004, column: 69, scope: !4072)
!4424 = !DILocation(line: 0, scope: !2146, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 1004, column: 45, scope: !4072)
!4426 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !4425)
!4427 = !DILocation(line: 0, scope: !1113, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 1004, column: 77, scope: !4072)
!4429 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4428)
!4430 = !DILocation(line: 0, scope: !1122, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 1004, column: 9, scope: !4072)
!4432 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4431)
!4433 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4431)
!4434 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4431)
!4435 = !DILocation(line: 0, scope: !1136, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4431)
!4437 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4436)
!4438 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4436)
!4439 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4436)
!4440 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4436)
!4441 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4431)
!4442 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4431)
!4443 = !DILocation(line: 1006, column: 5, scope: !4061)
!4444 = !DILocation(line: 0, scope: !2169, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 1006, column: 5, scope: !4061)
!4446 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !4445)
!4447 = !DILocation(line: 1009, column: 1, scope: !4061)
!4448 = distinct !DISubprogram(name: "do_device_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi", scope: !4449, file: !6, line: 300, type: !4450, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4452)
!4449 = !DINamespace(scope: !2)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!57, !97, !596, !1001, !147, !147, !57}
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4458, !4459, !4462, !4463, !4465}
!4453 = !DILocalVariable(name: "user_context", arg: 1, scope: !4448, file: !6, line: 300, type: !97)
!4454 = !DILocalVariable(name: "encoder", arg: 2, scope: !4448, file: !6, line: 300, type: !596)
!4455 = !DILocalVariable(name: "c", arg: 3, scope: !4448, file: !6, line: 301, type: !1001)
!4456 = !DILocalVariable(name: "src_offset", arg: 4, scope: !4448, file: !6, line: 301, type: !147)
!4457 = !DILocalVariable(name: "dst_offset", arg: 5, scope: !4448, file: !6, line: 301, type: !147)
!4458 = !DILocalVariable(name: "d", arg: 6, scope: !4448, file: !6, line: 301, type: !57)
!4459 = !DILocalVariable(name: "src_off", scope: !4460, file: !6, line: 308, type: !147)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !6, line: 305, column: 12)
!4461 = distinct !DILexicalBlock(scope: !4448, file: !6, line: 302, column: 9)
!4462 = !DILocalVariable(name: "dst_off", scope: !4460, file: !6, line: 308, type: !147)
!4463 = !DILocalVariable(name: "i", scope: !4464, file: !6, line: 309, type: !147)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !6, line: 309, column: 9)
!4465 = !DILocalVariable(name: "err", scope: !4466, file: !6, line: 310, type: !57)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !6, line: 309, column: 56)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !6, line: 309, column: 9)
!4468 = !DILocation(line: 0, scope: !4448)
!4469 = !DILocation(line: 302, column: 11, scope: !4461)
!4470 = !DILocation(line: 302, column: 9, scope: !4448)
!4471 = !DILocation(line: 0, scope: !4464)
!4472 = !DILocation(line: 0, scope: !4460)
!4473 = !DILocation(line: 309, column: 45, scope: !4467)
!4474 = !DILocation(line: 309, column: 34, scope: !4467)
!4475 = !DILocation(line: 309, column: 32, scope: !4467)
!4476 = !DILocation(line: 309, column: 9, scope: !4464)
!4477 = !DILocation(line: 303, column: 63, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4461, file: !6, line: 302, column: 17)
!4479 = !DILocation(line: 303, column: 44, scope: !4478)
!4480 = !DILocation(line: 303, column: 69, scope: !4478)
!4481 = !DILocation(line: 303, column: 76, scope: !4478)
!4482 = !DILocation(line: 303, column: 86, scope: !4478)
!4483 = !DILocation(line: 303, column: 74, scope: !4478)
!4484 = !DILocation(line: 304, column: 54, scope: !4478)
!4485 = !DILocation(line: 304, column: 35, scope: !4478)
!4486 = !DILocation(line: 304, column: 60, scope: !4478)
!4487 = !DILocation(line: 304, column: 65, scope: !4478)
!4488 = !DILocation(line: 304, column: 79, scope: !4478)
!4489 = !DILocation(line: 304, column: 77, scope: !4478)
!4490 = !DILocation(line: 303, column: 9, scope: !4478)
!4491 = !DILocation(line: 305, column: 5, scope: !4478)
!4492 = !DILocation(line: 310, column: 85, scope: !4466)
!4493 = !DILocation(line: 310, column: 107, scope: !4466)
!4494 = !DILocation(line: 310, column: 23, scope: !4466)
!4495 = !DILocation(line: 0, scope: !4466)
!4496 = !DILocation(line: 311, column: 24, scope: !4466)
!4497 = !DILocation(line: 311, column: 21, scope: !4466)
!4498 = !DILocation(line: 312, column: 24, scope: !4466)
!4499 = !DILocation(line: 312, column: 21, scope: !4466)
!4500 = !DILocation(line: 309, column: 52, scope: !4467)
!4501 = distinct !{!4501, !4476, !4502, !1041}
!4502 = !DILocation(line: 316, column: 9, scope: !4464)
!4503 = !DILocation(line: 319, column: 1, scope: !4448)
!4504 = distinct !DISubprogram(name: "metal_device_crop_from_offset", scope: !2662, file: !6, line: 1013, type: !4505, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!57, !97, !283, !418, !143}
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513}
!4508 = !DILocalVariable(name: "user_context", arg: 1, scope: !4504, file: !6, line: 1013, type: !97)
!4509 = !DILocalVariable(name: "src", arg: 2, scope: !4504, file: !6, line: 1014, type: !283)
!4510 = !DILocalVariable(name: "offset", arg: 3, scope: !4504, file: !6, line: 1015, type: !418)
!4511 = !DILocalVariable(name: "dst", arg: 4, scope: !4504, file: !6, line: 1016, type: !143)
!4512 = !DILocalVariable(name: "metal_context", scope: !4504, file: !6, line: 1017, type: !946)
!4513 = !DILocalVariable(name: "new_handle", scope: !4504, file: !6, line: 1023, type: !910)
!4514 = !DILocation(line: 0, scope: !4504)
!4515 = !DILocation(line: 1017, column: 5, scope: !4504)
!4516 = !DILocation(line: 1017, column: 24, scope: !4504)
!4517 = !DILocation(line: 0, scope: !2038, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 1017, column: 24, scope: !4504)
!4519 = !DILocation(line: 405, column: 9, scope: !2045, inlinedAt: !4518)
!4520 = !DILocation(line: 1018, column: 23, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4504, file: !6, line: 1018, column: 9)
!4522 = !DILocation(line: 1018, column: 29, scope: !4521)
!4523 = !DILocation(line: 1018, column: 9, scope: !4504)
!4524 = !DILocation(line: 1022, column: 34, scope: !4504)
!4525 = !DILocation(line: 1022, column: 10, scope: !4504)
!4526 = !DILocation(line: 1022, column: 27, scope: !4504)
!4527 = !DILocation(line: 1023, column: 50, scope: !4504)
!4528 = !DILocation(line: 1024, column: 20, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4504, file: !6, line: 1024, column: 9)
!4530 = !DILocation(line: 1024, column: 9, scope: !4504)
!4531 = !DILocation(line: 0, scope: !1684, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 1025, column: 9, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4529, file: !6, line: 1024, column: 32)
!4534 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !4532)
!4535 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !4532)
!4536 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !4532)
!4537 = !DILocation(line: 0, scope: !1695, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 1025, column: 29, scope: !4533)
!4539 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !4538)
!4540 = !DILocation(line: 0, scope: !1704, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 1025, column: 9, scope: !4533)
!4542 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !4541)
!4543 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !4541)
!4544 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !4532)
!4545 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !4532)
!4546 = !DILocation(line: 0, scope: !1718, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !4541)
!4548 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !4547)
!4549 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !4547)
!4550 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !4547)
!4551 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !4547)
!4552 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !4541)
!4553 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !4541)
!4554 = !DILocation(line: 1026, column: 9, scope: !4533)
!4555 = !DILocation(line: 1029, column: 45, scope: !4504)
!4556 = !DILocation(line: 1029, column: 23, scope: !4504)
!4557 = !DILocation(line: 1029, column: 54, scope: !4504)
!4558 = !DILocation(line: 1029, column: 5, scope: !4504)
!4559 = !DILocation(line: 1030, column: 46, scope: !4504)
!4560 = !DILocation(line: 1030, column: 24, scope: !4504)
!4561 = !DILocation(line: 1030, column: 55, scope: !4504)
!4562 = !DILocation(line: 1030, column: 17, scope: !4504)
!4563 = !DILocation(line: 1030, column: 21, scope: !4504)
!4564 = !DILocation(line: 1031, column: 58, scope: !4504)
!4565 = !DILocation(line: 1031, column: 65, scope: !4504)
!4566 = !DILocation(line: 1031, column: 17, scope: !4504)
!4567 = !DILocation(line: 1031, column: 24, scope: !4504)
!4568 = !DILocation(line: 1032, column: 19, scope: !4504)
!4569 = !DILocation(line: 1032, column: 10, scope: !4504)
!4570 = !DILocation(line: 1032, column: 17, scope: !4504)
!4571 = !DILocation(line: 1033, column: 5, scope: !4504)
!4572 = !DILocation(line: 0, scope: !2169, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 1034, column: 1, scope: !4504)
!4574 = !DILocation(line: 408, column: 9, scope: !2174, inlinedAt: !4573)
!4575 = !DILocation(line: 1034, column: 1, scope: !4504)
!4576 = distinct !DISubprogram(name: "halide_metal_device_crop", scope: !6, file: !6, line: 1038, type: !281, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4577)
!4577 = !{!4578, !4579, !4580, !4581}
!4578 = !DILocalVariable(name: "user_context", arg: 1, scope: !4576, file: !6, line: 1038, type: !97)
!4579 = !DILocalVariable(name: "src", arg: 2, scope: !4576, file: !6, line: 1039, type: !283)
!4580 = !DILocalVariable(name: "dst", arg: 3, scope: !4576, file: !6, line: 1040, type: !143)
!4581 = !DILocalVariable(name: "offset", scope: !4576, file: !6, line: 1041, type: !4582)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4583 = !DILocation(line: 0, scope: !4576)
!4584 = !DILocalVariable(name: "src", arg: 1, scope: !4585, file: !998, line: 172, type: !283)
!4585 = distinct !DISubprogram(name: "calc_device_crop_byte_offset", linkageName: "_ZN6Halide7Runtime8Internal28calc_device_crop_byte_offsetEPK15halide_buffer_tPS2_", scope: !3, file: !998, line: 172, type: !4586, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!418, !283, !143}
!4588 = !{!4584, !4589, !4590, !4591}
!4589 = !DILocalVariable(name: "dst", arg: 2, scope: !4585, file: !998, line: 172, type: !143)
!4590 = !DILocalVariable(name: "offset", scope: !4585, file: !998, line: 173, type: !418)
!4591 = !DILocalVariable(name: "i", scope: !4592, file: !998, line: 174, type: !57)
!4592 = distinct !DILexicalBlock(scope: !4585, file: !998, line: 174, column: 5)
!4593 = !DILocation(line: 0, scope: !4585, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 1041, column: 28, scope: !4576)
!4595 = !DILocation(line: 0, scope: !4592, inlinedAt: !4594)
!4596 = !DILocation(line: 174, column: 30, scope: !4597, inlinedAt: !4594)
!4597 = distinct !DILexicalBlock(scope: !4592, file: !998, line: 174, column: 5)
!4598 = !DILocation(line: 174, column: 23, scope: !4597, inlinedAt: !4594)
!4599 = !DILocation(line: 174, column: 5, scope: !4592, inlinedAt: !4594)
!4600 = !DILocation(line: 175, column: 32, scope: !4601, inlinedAt: !4594)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !998, line: 174, column: 47)
!4602 = !DILocation(line: 175, column: 50, scope: !4601, inlinedAt: !4594)
!4603 = !DILocation(line: 175, column: 36, scope: !4601, inlinedAt: !4594)
!4604 = !DILocation(line: 175, column: 19, scope: !4601, inlinedAt: !4594)
!4605 = !DILocation(line: 175, column: 78, scope: !4601, inlinedAt: !4594)
!4606 = !DILocation(line: 175, column: 66, scope: !4601, inlinedAt: !4594)
!4607 = !DILocation(line: 175, column: 55, scope: !4601, inlinedAt: !4594)
!4608 = !DILocation(line: 175, column: 16, scope: !4601, inlinedAt: !4594)
!4609 = !DILocation(line: 174, column: 43, scope: !4597, inlinedAt: !4594)
!4610 = distinct !{!4610, !4599, !4611, !1041}
!4611 = !DILocation(line: 176, column: 5, scope: !4592, inlinedAt: !4594)
!4612 = !DILocation(line: 0, scope: !1209, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 177, column: 25, scope: !4585, inlinedAt: !4594)
!4614 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !4613)
!4615 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !4613)
!4616 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !4613)
!4617 = !DILocation(line: 177, column: 15, scope: !4585, inlinedAt: !4594)
!4618 = !DILocation(line: 177, column: 12, scope: !4585, inlinedAt: !4594)
!4619 = !DILocation(line: 1042, column: 12, scope: !4576)
!4620 = !DILocation(line: 1042, column: 5, scope: !4576)
!4621 = distinct !DISubprogram(name: "halide_metal_device_slice", scope: !6, file: !6, line: 1045, type: !286, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4622)
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628}
!4623 = !DILocalVariable(name: "user_context", arg: 1, scope: !4621, file: !6, line: 1045, type: !97)
!4624 = !DILocalVariable(name: "src", arg: 2, scope: !4621, file: !6, line: 1046, type: !283)
!4625 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !4621, file: !6, line: 1047, type: !57)
!4626 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !4621, file: !6, line: 1047, type: !57)
!4627 = !DILocalVariable(name: "dst", arg: 5, scope: !4621, file: !6, line: 1048, type: !143)
!4628 = !DILocalVariable(name: "offset", scope: !4621, file: !6, line: 1049, type: !4582)
!4629 = !DILocation(line: 0, scope: !4621)
!4630 = !DILocalVariable(name: "src", arg: 1, scope: !4631, file: !998, line: 183, type: !283)
!4631 = distinct !DISubprogram(name: "calc_device_slice_byte_offset", linkageName: "_ZN6Halide7Runtime8Internal29calc_device_slice_byte_offsetEPK15halide_buffer_tii", scope: !3, file: !998, line: 183, type: !4632, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4634)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!418, !283, !57, !57}
!4634 = !{!4630, !4635, !4636, !4637}
!4635 = !DILocalVariable(name: "slice_dim", arg: 2, scope: !4631, file: !998, line: 183, type: !57)
!4636 = !DILocalVariable(name: "slice_pos", arg: 3, scope: !4631, file: !998, line: 183, type: !57)
!4637 = !DILocalVariable(name: "offset", scope: !4631, file: !998, line: 184, type: !418)
!4638 = !DILocation(line: 0, scope: !4631, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 1049, column: 28, scope: !4621)
!4640 = !DILocation(line: 184, column: 40, scope: !4631, inlinedAt: !4639)
!4641 = !DILocation(line: 184, column: 55, scope: !4631, inlinedAt: !4639)
!4642 = !DILocation(line: 184, column: 33, scope: !4631, inlinedAt: !4639)
!4643 = !DILocation(line: 184, column: 22, scope: !4631, inlinedAt: !4639)
!4644 = !DILocation(line: 184, column: 91, scope: !4631, inlinedAt: !4639)
!4645 = !DILocation(line: 184, column: 71, scope: !4631, inlinedAt: !4639)
!4646 = !DILocation(line: 184, column: 60, scope: !4631, inlinedAt: !4639)
!4647 = !DILocation(line: 0, scope: !1209, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 185, column: 25, scope: !4631, inlinedAt: !4639)
!4649 = !DILocation(line: 482, column: 17, scope: !1209, inlinedAt: !4648)
!4650 = !DILocation(line: 482, column: 22, scope: !1209, inlinedAt: !4648)
!4651 = !DILocation(line: 482, column: 27, scope: !1209, inlinedAt: !4648)
!4652 = !DILocation(line: 185, column: 15, scope: !4631, inlinedAt: !4639)
!4653 = !DILocation(line: 185, column: 12, scope: !4631, inlinedAt: !4639)
!4654 = !DILocation(line: 1050, column: 12, scope: !4621)
!4655 = !DILocation(line: 1050, column: 5, scope: !4621)
!4656 = distinct !DISubprogram(name: "halide_metal_device_release_crop", scope: !6, file: !6, line: 1053, type: !264, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662}
!4658 = !DILocalVariable(name: "user_context", arg: 1, scope: !4656, file: !6, line: 1053, type: !97)
!4659 = !DILocalVariable(name: "buf", arg: 2, scope: !4656, file: !6, line: 1054, type: !143)
!4660 = !DILocalVariable(name: "t_before", scope: !4656, file: !6, line: 1065, type: !147)
!4661 = !DILocalVariable(name: "handle", scope: !4656, file: !6, line: 1068, type: !910)
!4662 = !DILocalVariable(name: "t_after", scope: !4656, file: !6, line: 1074, type: !147)
!4663 = !DILocation(line: 0, scope: !4656)
!4664 = !DILocation(line: 0, scope: !1096, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 1058, column: 5, scope: !4656)
!4666 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4665)
!4667 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4665)
!4668 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4665)
!4669 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4665)
!4670 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4665)
!4671 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4665)
!4672 = !DILocation(line: 0, scope: !1110, inlinedAt: !4665)
!4673 = !DILocation(line: 0, scope: !1113, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 1058, column: 25, scope: !4656)
!4675 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4674)
!4676 = !DILocation(line: 1059, column: 28, scope: !4656)
!4677 = !DILocation(line: 0, scope: !1889, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 1059, column: 25, scope: !4656)
!4679 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !4678)
!4680 = !DILocation(line: 0, scope: !1113, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 1059, column: 32, scope: !4656)
!4682 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4681)
!4683 = !DILocation(line: 1059, column: 57, scope: !4656)
!4684 = !DILocation(line: 0, scope: !2214, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 1059, column: 49, scope: !4656)
!4686 = !DILocation(line: 78, column: 15, scope: !2214, inlinedAt: !4685)
!4687 = !DILocation(line: 0, scope: !1113, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 1059, column: 64, scope: !4656)
!4689 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4688)
!4690 = !DILocation(line: 0, scope: !1122, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 1058, column: 5, scope: !4656)
!4692 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4691)
!4693 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4691)
!4694 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4691)
!4695 = !DILocation(line: 0, scope: !1136, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4691)
!4697 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4696)
!4698 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4696)
!4699 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4696)
!4700 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4696)
!4701 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4691)
!4702 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4691)
!4703 = !DILocation(line: 1060, column: 14, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4656, file: !6, line: 1060, column: 9)
!4705 = !DILocation(line: 1060, column: 21, scope: !4704)
!4706 = !DILocation(line: 1060, column: 9, scope: !4656)
!4707 = !DILocation(line: 1065, column: 25, scope: !4656)
!4708 = !DILocation(line: 1068, column: 51, scope: !4656)
!4709 = !DILocation(line: 1068, column: 29, scope: !4656)
!4710 = !DILocation(line: 1070, column: 31, scope: !4656)
!4711 = !DILocation(line: 1070, column: 5, scope: !4656)
!4712 = !DILocation(line: 1071, column: 10, scope: !4656)
!4713 = !DILocation(line: 1071, column: 5, scope: !4656)
!4714 = !DILocation(line: 1074, column: 24, scope: !4656)
!4715 = !DILocation(line: 0, scope: !1096, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 1075, column: 5, scope: !4656)
!4717 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4716)
!4718 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4716)
!4719 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4716)
!4720 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4716)
!4721 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4716)
!4722 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4716)
!4723 = !DILocation(line: 0, scope: !1110, inlinedAt: !4716)
!4724 = !DILocation(line: 0, scope: !1113, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 1075, column: 25, scope: !4656)
!4726 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4725)
!4727 = !DILocation(line: 1075, column: 53, scope: !4656)
!4728 = !DILocation(line: 1075, column: 44, scope: !4656)
!4729 = !DILocation(line: 1075, column: 65, scope: !4656)
!4730 = !DILocation(line: 0, scope: !2146, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 1075, column: 41, scope: !4656)
!4732 = !DILocation(line: 88, column: 15, scope: !2146, inlinedAt: !4731)
!4733 = !DILocation(line: 0, scope: !1113, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 1075, column: 73, scope: !4656)
!4735 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4734)
!4736 = !DILocation(line: 0, scope: !1122, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 1075, column: 5, scope: !4656)
!4738 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4737)
!4739 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4737)
!4740 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4737)
!4741 = !DILocation(line: 0, scope: !1136, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4737)
!4743 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4742)
!4744 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4742)
!4745 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !4742)
!4746 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4742)
!4747 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !4737)
!4748 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !4737)
!4749 = !DILocation(line: 1079, column: 1, scope: !4656)
!4750 = distinct !DISubprogram(name: "halide_metal_wrap_buffer", scope: !6, file: !6, line: 1081, type: !327, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4751)
!4751 = !{!4752, !4753, !4754, !4755}
!4752 = !DILocalVariable(name: "user_context", arg: 1, scope: !4750, file: !6, line: 1081, type: !97)
!4753 = !DILocalVariable(name: "buf", arg: 2, scope: !4750, file: !6, line: 1081, type: !143)
!4754 = !DILocalVariable(name: "buffer", arg: 3, scope: !4750, file: !6, line: 1081, type: !147)
!4755 = !DILocalVariable(name: "handle", scope: !4750, file: !6, line: 1086, type: !910)
!4756 = !DILocation(line: 0, scope: !4750)
!4757 = !DILocation(line: 1082, column: 5, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !6, line: 1082, column: 5)
!4759 = distinct !DILexicalBlock(scope: !4750, file: !6, line: 1082, column: 5)
!4760 = !DILocation(line: 1082, column: 5, scope: !4759)
!4761 = !DILocation(line: 1082, column: 5, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !6, line: 1082, column: 5)
!4763 = !DILocation(line: 1083, column: 14, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4750, file: !6, line: 1083, column: 9)
!4765 = !DILocation(line: 1083, column: 21, scope: !4764)
!4766 = !DILocation(line: 1083, column: 9, scope: !4750)
!4767 = !DILocation(line: 1086, column: 46, scope: !4750)
!4768 = !DILocation(line: 1087, column: 16, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4750, file: !6, line: 1087, column: 9)
!4770 = !DILocation(line: 1087, column: 9, scope: !4750)
!4771 = !DILocation(line: 0, scope: !1684, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 1088, column: 9, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4769, file: !6, line: 1087, column: 28)
!4774 = !DILocation(line: 44, column: 27, scope: !1768, inlinedAt: !4772)
!4775 = !DILocation(line: 48, column: 13, scope: !1715, inlinedAt: !4772)
!4776 = !DILocation(line: 48, column: 13, scope: !1693, inlinedAt: !4772)
!4777 = !DILocation(line: 0, scope: !1695, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 1088, column: 29, scope: !4773)
!4779 = !DILocation(line: 62, column: 19, scope: !1701, inlinedAt: !4778)
!4780 = !DILocation(line: 0, scope: !1704, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 1088, column: 9, scope: !4773)
!4782 = !DILocation(line: 168, column: 13, scope: !1709, inlinedAt: !4781)
!4783 = !DILocation(line: 169, column: 9, scope: !1709, inlinedAt: !4781)
!4784 = !DILocation(line: 49, column: 23, scope: !1714, inlinedAt: !4772)
!4785 = !DILocation(line: 50, column: 18, scope: !1714, inlinedAt: !4772)
!4786 = !DILocation(line: 0, scope: !1718, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 170, column: 13, scope: !1722, inlinedAt: !4781)
!4788 = !DILocation(line: 163, column: 81, scope: !1718, inlinedAt: !4787)
!4789 = !DILocation(line: 163, column: 87, scope: !1718, inlinedAt: !4787)
!4790 = !DILocation(line: 163, column: 77, scope: !1718, inlinedAt: !4787)
!4791 = !DILocation(line: 163, column: 15, scope: !1718, inlinedAt: !4787)
!4792 = !DILocation(line: 172, column: 17, scope: !1728, inlinedAt: !4781)
!4793 = !DILocation(line: 181, column: 13, scope: !1731, inlinedAt: !4781)
!4794 = !DILocation(line: 1089, column: 9, scope: !4773)
!4795 = !DILocation(line: 1091, column: 19, scope: !4750)
!4796 = !DILocation(line: 1091, column: 13, scope: !4750)
!4797 = !DILocation(line: 1091, column: 17, scope: !4750)
!4798 = !DILocation(line: 1092, column: 13, scope: !4750)
!4799 = !DILocation(line: 1092, column: 20, scope: !4750)
!4800 = !DILocation(line: 1094, column: 19, scope: !4750)
!4801 = !DILocation(line: 1094, column: 17, scope: !4750)
!4802 = !DILocation(line: 1095, column: 10, scope: !4750)
!4803 = !DILocation(line: 1095, column: 27, scope: !4750)
!4804 = !DILocation(line: 1096, column: 28, scope: !4750)
!4805 = !DILocation(line: 1096, column: 34, scope: !4750)
!4806 = !DILocation(line: 1096, column: 5, scope: !4750)
!4807 = !DILocation(line: 1097, column: 5, scope: !4750)
!4808 = !DILocation(line: 1098, column: 1, scope: !4750)
!4809 = distinct !DISubprogram(name: "halide_metal_detach_buffer", scope: !6, file: !6, line: 1100, type: !264, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4810)
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "user_context", arg: 1, scope: !4809, file: !6, line: 1100, type: !97)
!4812 = !DILocalVariable(name: "buf", arg: 2, scope: !4809, file: !6, line: 1100, type: !143)
!4813 = !DILocation(line: 0, scope: !4809)
!4814 = !DILocation(line: 1101, column: 14, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4809, file: !6, line: 1101, column: 9)
!4816 = !DILocation(line: 1101, column: 21, scope: !4815)
!4817 = !DILocation(line: 1101, column: 9, scope: !4809)
!4818 = !DILocation(line: 1104, column: 5, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !6, line: 1104, column: 5)
!4820 = distinct !DILexicalBlock(scope: !4809, file: !6, line: 1104, column: 5)
!4821 = !DILocation(line: 1104, column: 5, scope: !4820)
!4822 = !DILocation(line: 1104, column: 5, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4819, file: !6, line: 1104, column: 5)
!4824 = !DILocation(line: 1105, column: 10, scope: !4809)
!4825 = !DILocation(line: 1105, column: 28, scope: !4809)
!4826 = !DILocation(line: 1105, column: 34, scope: !4809)
!4827 = !DILocation(line: 1105, column: 5, scope: !4809)
!4828 = !DILocation(line: 1106, column: 27, scope: !4809)
!4829 = !DILocation(line: 1107, column: 32, scope: !4809)
!4830 = !DILocation(line: 1107, column: 10, scope: !4809)
!4831 = !DILocation(line: 1107, column: 5, scope: !4809)
!4832 = !DILocation(line: 1108, column: 17, scope: !4809)
!4833 = !DILocation(line: 1109, column: 5, scope: !4809)
!4834 = !DILocation(line: 1110, column: 1, scope: !4809)
!4835 = distinct !DISubprogram(name: "halide_metal_get_buffer", scope: !6, file: !6, line: 1112, type: !4836, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4838)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!46, !97, !143}
!4838 = !{!4839, !4840}
!4839 = !DILocalVariable(name: "user_context", arg: 1, scope: !4835, file: !6, line: 1112, type: !97)
!4840 = !DILocalVariable(name: "buf", arg: 2, scope: !4835, file: !6, line: 1112, type: !143)
!4841 = !DILocation(line: 0, scope: !4835)
!4842 = !DILocation(line: 1113, column: 14, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4835, file: !6, line: 1113, column: 9)
!4844 = !DILocation(line: 1113, column: 21, scope: !4843)
!4845 = !DILocation(line: 1113, column: 9, scope: !4835)
!4846 = !DILocation(line: 1116, column: 5, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !6, line: 1116, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4835, file: !6, line: 1116, column: 5)
!4849 = !DILocation(line: 1116, column: 5, scope: !4848)
!4850 = !DILocation(line: 1116, column: 5, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4847, file: !6, line: 1116, column: 5)
!4852 = !DILocation(line: 1117, column: 47, scope: !4835)
!4853 = !DILocation(line: 1117, column: 25, scope: !4835)
!4854 = !DILocation(line: 1117, column: 56, scope: !4835)
!4855 = !DILocation(line: 1117, column: 12, scope: !4835)
!4856 = !DILocation(line: 1117, column: 5, scope: !4835)
!4857 = !DILocation(line: 1118, column: 1, scope: !4835)
!4858 = distinct !DISubprogram(name: "halide_metal_get_crop_offset", scope: !6, file: !6, line: 1120, type: !4859, scopeLine: 1120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!147, !97, !143}
!4861 = !{!4862, !4863}
!4862 = !DILocalVariable(name: "user_context", arg: 1, scope: !4858, file: !6, line: 1120, type: !97)
!4863 = !DILocalVariable(name: "buf", arg: 2, scope: !4858, file: !6, line: 1120, type: !143)
!4864 = !DILocation(line: 0, scope: !4858)
!4865 = !DILocation(line: 1121, column: 14, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4858, file: !6, line: 1121, column: 9)
!4867 = !DILocation(line: 1121, column: 21, scope: !4866)
!4868 = !DILocation(line: 1121, column: 9, scope: !4858)
!4869 = !DILocation(line: 1124, column: 5, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !6, line: 1124, column: 5)
!4871 = distinct !DILexicalBlock(scope: !4858, file: !6, line: 1124, column: 5)
!4872 = !DILocation(line: 1124, column: 5, scope: !4871)
!4873 = !DILocation(line: 1124, column: 5, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4870, file: !6, line: 1124, column: 5)
!4875 = !DILocation(line: 1125, column: 46, scope: !4858)
!4876 = !DILocation(line: 1125, column: 24, scope: !4858)
!4877 = !DILocation(line: 1125, column: 55, scope: !4858)
!4878 = !DILocation(line: 1125, column: 5, scope: !4858)
!4879 = !DILocation(line: 1126, column: 1, scope: !4858)
!4880 = distinct !DISubprogram(name: "halide_metal_device_interface", scope: !6, file: !6, line: 1128, type: !4881, scopeLine: 1128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!150}
!4883 = !DILocation(line: 1129, column: 5, scope: !4880)
!4884 = distinct !DISubprogram(name: "halide_metal_cleanup", scope: !2662, file: !6, line: 1133, type: !307, scopeLine: 1133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!4885 = !DILocalVariable(name: "this", arg: 1, scope: !4886, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!4886 = distinct !DISubprogram(name: "release_all<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11release_allIFvPvEEEvSB_RT_", scope: !36, file: !37, line: 165, type: !4887, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2813, declaration: !4889, retainedNodes: !4890)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{null, !86, !97, !2811}
!4889 = !DISubprogram(name: "release_all<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11release_allIFvPvEEEvSB_RT_", scope: !36, file: !37, line: 165, type: !4887, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2813)
!4890 = !{!4885, !4891, !4892, !4893}
!4891 = !DILocalVariable(name: "user_context", arg: 2, scope: !4886, file: !37, line: 165, type: !97)
!4892 = !DILocalVariable(name: "f", arg: 3, scope: !4886, file: !37, line: 165, type: !2811)
!4893 = !DILocalVariable(name: "lock_guard", scope: !4886, file: !37, line: 166, type: !2396)
!4894 = !DILocation(line: 0, scope: !4886, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 1134, column: 23, scope: !4884)
!4896 = !DILocation(line: 0, scope: !2414, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 166, column: 25, scope: !4886, inlinedAt: !4895)
!4898 = !DILocation(line: 16, column: 9, scope: !2421, inlinedAt: !4897)
!4899 = !DILocation(line: 168, column: 9, scope: !4886, inlinedAt: !4895)
!4900 = !DILocation(line: 170, column: 13, scope: !4901, inlinedAt: !4895)
!4901 = distinct !DILexicalBlock(scope: !4886, file: !37, line: 170, column: 13)
!4902 = !{!2432, !1196, i64 12}
!4903 = !DILocation(line: 170, column: 19, scope: !4901, inlinedAt: !4895)
!4904 = !DILocation(line: 170, column: 13, scope: !4886, inlinedAt: !4895)
!4905 = !DILocation(line: 171, column: 18, scope: !4906, inlinedAt: !4895)
!4906 = distinct !DILexicalBlock(scope: !4901, file: !37, line: 170, column: 25)
!4907 = !DILocation(line: 171, column: 13, scope: !4906, inlinedAt: !4895)
!4908 = !DILocation(line: 172, column: 26, scope: !4906, inlinedAt: !4895)
!4909 = !DILocation(line: 173, column: 36, scope: !4906, inlinedAt: !4895)
!4910 = !DILocation(line: 174, column: 9, scope: !4906, inlinedAt: !4895)
!4911 = !DILocation(line: 0, scope: !2584, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 175, column: 5, scope: !4886, inlinedAt: !4895)
!4913 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !4912)
!4914 = !DILocation(line: 1135, column: 5, scope: !4884)
!4915 = !DILocation(line: 1136, column: 1, scope: !4884)
!4916 = !DISubprogram(name: "halide_error", scope: !42, file: !42, line: 111, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4917 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !42, file: !42, line: 973, type: !4918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!57, !97, !439, !148}
!4920 = !DISubprogram(name: "halide_string_to_string", scope: !47, file: !47, line: 120, type: !4921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!400, !400, !400, !335}
!4923 = !DISubprogram(name: "halide_pointer_to_string", scope: !47, file: !47, line: 124, type: !4924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!400, !400, !400, !439}
!4926 = !DISubprogram(name: "halide_buffer_to_string", scope: !47, file: !47, line: 125, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!400, !400, !400, !283}
!4929 = !DISubprogram(name: "halide_int64_to_string", scope: !47, file: !47, line: 122, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!400, !400, !400, !419, !57}
!4932 = !DISubprogram(name: "halide_double_to_string", scope: !47, file: !47, line: 121, type: !4933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!400, !400, !400, !432, !57}
!4935 = !DISubprogram(name: "halide_uint64_to_string", scope: !47, file: !47, line: 123, type: !4936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!400, !400, !400, !148, !57}
!4938 = distinct !DISubprogram(name: "insert", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE", scope: !36, file: !37, line: 47, type: !83, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !82, retainedNodes: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4945}
!4940 = !DILocalVariable(name: "this", arg: 1, scope: !4938, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!4941 = !DILocalVariable(name: "entry", arg: 2, scope: !4938, file: !37, line: 47, type: !87)
!4942 = !DILocalVariable(name: "index", scope: !4938, file: !37, line: 59, type: !46)
!4943 = !DILocalVariable(name: "i", scope: !4944, file: !37, line: 60, type: !57)
!4944 = distinct !DILexicalBlock(scope: !4938, file: !37, line: 60, column: 9)
!4945 = !DILocalVariable(name: "effective_index", scope: !4946, file: !37, line: 61, type: !46)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !37, line: 60, column: 65)
!4947 = distinct !DILexicalBlock(scope: !4944, file: !37, line: 60, column: 9)
!4948 = !DILocation(line: 0, scope: !4938)
!4949 = !DILocation(line: 48, column: 13, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4938, file: !37, line: 48, column: 13)
!4951 = !DILocation(line: 48, column: 36, scope: !4950)
!4952 = !DILocation(line: 48, column: 13, scope: !4938)
!4953 = !DILocation(line: 49, column: 18, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !37, line: 49, column: 17)
!4955 = distinct !DILexicalBlock(scope: !4950, file: !37, line: 48, column: 42)
!4956 = !DILocation(line: 49, column: 17, scope: !4955)
!4957 = !DILocation(line: 53, column: 33, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4938, file: !37, line: 53, column: 13)
!4959 = !DILocation(line: 53, column: 14, scope: !4958)
!4960 = !DILocation(line: 53, column: 20, scope: !4958)
!4961 = !DILocation(line: 53, column: 13, scope: !4958)
!4962 = !DILocation(line: 53, column: 30, scope: !4958)
!4963 = !DILocation(line: 53, column: 27, scope: !4958)
!4964 = !DILocation(line: 53, column: 57, scope: !4958)
!4965 = !DILocation(line: 53, column: 25, scope: !4958)
!4966 = !DILocation(line: 53, column: 13, scope: !4938)
!4967 = !DILocation(line: 54, column: 54, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !37, line: 54, column: 17)
!4969 = distinct !DILexicalBlock(scope: !4958, file: !37, line: 53, column: 72)
!4970 = !DILocation(line: 54, column: 18, scope: !4968)
!4971 = !DILocation(line: 54, column: 17, scope: !4969)
!4972 = !DILocation(line: 58, column: 15, scope: !4938)
!4973 = !DILocation(line: 59, column: 71, scope: !4938)
!4974 = !DILocation(line: 60, column: 32, scope: !4947)
!4975 = !DILocation(line: 59, column: 45, scope: !4938)
!4976 = !DILocation(line: 59, column: 60, scope: !4938)
!4977 = !DILocation(line: 0, scope: !2459, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 59, column: 27, scope: !4938)
!4979 = !DILocation(line: 37, column: 26, scope: !2459, inlinedAt: !4978)
!4980 = !DILocation(line: 37, column: 45, scope: !2459, inlinedAt: !4978)
!4981 = !DILocation(line: 43, column: 26, scope: !2469, inlinedAt: !4978)
!4982 = !DILocation(line: 43, column: 58, scope: !2469, inlinedAt: !4978)
!4983 = !DILocation(line: 43, column: 51, scope: !2469, inlinedAt: !4978)
!4984 = !DILocation(line: 0, scope: !4944)
!4985 = !DILocation(line: 60, column: 27, scope: !4947)
!4986 = !DILocation(line: 60, column: 9, scope: !4944)
!4987 = distinct !{!4987, !4986, !4988, !1041}
!4988 = !DILocation(line: 66, column: 9, scope: !4944)
!4989 = !DILocation(line: 61, column: 48, scope: !4946)
!4990 = !DILocation(line: 61, column: 53, scope: !4946)
!4991 = !DILocation(line: 0, scope: !4946)
!4992 = !DILocation(line: 62, column: 47, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4946, file: !37, line: 62, column: 17)
!4994 = !DILocation(line: 62, column: 57, scope: !4993)
!4995 = !DILocation(line: 60, column: 61, scope: !4947)
!4996 = !DILocation(line: 62, column: 17, scope: !4946)
!4997 = !DILocation(line: 62, column: 17, scope: !4993)
!4998 = !DILocation(line: 63, column: 47, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4993, file: !37, line: 62, column: 72)
!5000 = !{i64 0, i64 4, !1481, i64 4, i64 4, !1481, i64 8, i64 4, !2425, i64 12, i64 4, !2425}
!5001 = !DILocation(line: 69, column: 9, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5003, file: !37, line: 69, column: 9)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !37, line: 69, column: 9)
!5004 = distinct !DILexicalBlock(scope: !4938, file: !37, line: 69, column: 9)
!5005 = !DILocation(line: 70, column: 9, scope: !4938)
!5006 = !DILocation(line: 71, column: 5, scope: !4938)
!5007 = !DISubprogram(name: "halide_mutex_lock", scope: !42, file: !42, line: 133, type: !5008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{null, !2400}
!5010 = distinct !DISubprogram(name: "resize_table", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi", scope: !36, file: !37, line: 108, type: !100, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !99, retainedNodes: !5011)
!5011 = !{!5012, !5013, !5014, !5017, !5018, !5019, !5020, !5024}
!5012 = !DILocalVariable(name: "this", arg: 1, scope: !5010, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!5013 = !DILocalVariable(name: "size_bits", arg: 2, scope: !5010, file: !37, line: 108, type: !57)
!5014 = !DILocalVariable(name: "new_size", scope: !5015, file: !37, line: 110, type: !57)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !37, line: 109, column: 50)
!5016 = distinct !DILexicalBlock(scope: !5010, file: !37, line: 109, column: 13)
!5017 = !DILocalVariable(name: "old_size", scope: !5015, file: !37, line: 111, type: !57)
!5018 = !DILocalVariable(name: "new_table", scope: !5015, file: !37, line: 112, type: !60)
!5019 = !DILocalVariable(name: "old_table", scope: !5015, file: !37, line: 118, type: !60)
!5020 = !DILocalVariable(name: "i", scope: !5021, file: !37, line: 123, type: !198)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !37, line: 123, column: 17)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !37, line: 122, column: 28)
!5023 = distinct !DILexicalBlock(scope: !5015, file: !37, line: 122, column: 17)
!5024 = !DILocalVariable(name: "result", scope: !5025, file: !37, line: 126, type: !85)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !37, line: 125, column: 63)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !37, line: 124, column: 25)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !37, line: 123, column: 56)
!5028 = distinct !DILexicalBlock(scope: !5021, file: !37, line: 123, column: 17)
!5029 = !DILocation(line: 0, scope: !5010)
!5030 = !DILocation(line: 109, column: 26, scope: !5016)
!5031 = !DILocation(line: 109, column: 23, scope: !5016)
!5032 = !DILocation(line: 109, column: 13, scope: !5010)
!5033 = !DILocation(line: 0, scope: !5015)
!5034 = !DILocation(line: 111, column: 31, scope: !5015)
!5035 = !DILocation(line: 112, column: 81, scope: !5015)
!5036 = !DILocation(line: 112, column: 65, scope: !5015)
!5037 = !DILocation(line: 113, column: 27, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5015, file: !37, line: 113, column: 17)
!5039 = !DILocation(line: 113, column: 17, scope: !5015)
!5040 = !DILocation(line: 117, column: 13, scope: !5015)
!5041 = !DILocation(line: 118, column: 44, scope: !5015)
!5042 = !DILocation(line: 119, column: 26, scope: !5015)
!5043 = !DILocation(line: 120, column: 36, scope: !5015)
!5044 = !DILocation(line: 122, column: 17, scope: !5023)
!5045 = !DILocation(line: 122, column: 23, scope: !5023)
!5046 = !DILocation(line: 122, column: 17, scope: !5015)
!5047 = !DILocation(line: 0, scope: !5021)
!5048 = !DILocation(line: 124, column: 38, scope: !5026)
!5049 = !DILocation(line: 124, column: 62, scope: !5026)
!5050 = !DILocation(line: 124, column: 25, scope: !5026)
!5051 = !DILocation(line: 126, column: 39, scope: !5025)
!5052 = !DILocation(line: 0, scope: !5025)
!5053 = !DILocation(line: 127, column: 25, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5025, file: !37, line: 127, column: 25)
!5055 = !DILocation(line: 127, column: 25, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !37, line: 127, column: 25)
!5057 = distinct !DILexicalBlock(scope: !5054, file: !37, line: 127, column: 25)
!5058 = !DILocation(line: 123, column: 52, scope: !5028)
!5059 = !DILocation(line: 123, column: 39, scope: !5028)
!5060 = !DILocation(line: 123, column: 17, scope: !5021)
!5061 = distinct !{!5061, !5060, !5062, !1041}
!5062 = !DILocation(line: 129, column: 17, scope: !5021)
!5063 = !DILocation(line: 131, column: 18, scope: !5015)
!5064 = !DILocation(line: 131, column: 13, scope: !5015)
!5065 = !DILocation(line: 134, column: 5, scope: !5010)
!5066 = !DISubprogram(name: "memset", scope: !47, file: !47, line: 96, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!97, !97, !57, !49}
!5069 = !DISubprogram(name: "halide_mutex_unlock", scope: !42, file: !42, line: 134, type: !5008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!5070 = distinct !DISubprogram(name: "release_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_", scope: !36, file: !37, line: 137, type: !5071, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2813, declaration: !5073, retainedNodes: !5074)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{null, !86, !97, !85, !64, !2811}
!5073 = !DISubprogram(name: "release_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_", scope: !36, file: !37, line: 137, type: !5071, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2813)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080}
!5075 = !DILocalVariable(name: "this", arg: 1, scope: !5070, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!5076 = !DILocalVariable(name: "user_context", arg: 2, scope: !5070, file: !37, line: 137, type: !97)
!5077 = !DILocalVariable(name: "all", arg: 3, scope: !5070, file: !37, line: 137, type: !85)
!5078 = !DILocalVariable(name: "context", arg: 4, scope: !5070, file: !37, line: 137, type: !64)
!5079 = !DILocalVariable(name: "f", arg: 5, scope: !5070, file: !37, line: 137, type: !2811)
!5080 = !DILocalVariable(name: "i", scope: !5081, file: !37, line: 142, type: !57)
!5081 = distinct !DILexicalBlock(scope: !5070, file: !37, line: 142, column: 9)
!5082 = !DILocation(line: 0, scope: !5070)
!5083 = !DILocation(line: 138, column: 13, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5070, file: !37, line: 138, column: 13)
!5085 = !DILocation(line: 138, column: 19, scope: !5084)
!5086 = !DILocation(line: 138, column: 13, scope: !5070)
!5087 = !DILocation(line: 0, scope: !5081)
!5088 = !DILocation(line: 142, column: 35, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5081, file: !37, line: 142, column: 9)
!5090 = !DILocation(line: 142, column: 27, scope: !5089)
!5091 = !DILocation(line: 142, column: 9, scope: !5081)
!5092 = !DILocation(line: 143, column: 17, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !37, line: 143, column: 17)
!5094 = distinct !DILexicalBlock(scope: !5089, file: !37, line: 142, column: 65)
!5095 = !DILocation(line: 143, column: 33, scope: !5093)
!5096 = !DILocation(line: 143, column: 43, scope: !5093)
!5097 = !DILocation(line: 143, column: 56, scope: !5093)
!5098 = !DILocation(line: 144, column: 22, scope: !5093)
!5099 = !DILocation(line: 144, column: 42, scope: !5093)
!5100 = !DILocation(line: 144, column: 50, scope: !5093)
!5101 = !DILocation(line: 144, column: 63, scope: !5093)
!5102 = !DILocation(line: 145, column: 33, scope: !5093)
!5103 = !DILocation(line: 145, column: 43, scope: !5093)
!5104 = !DILocation(line: 143, column: 17, scope: !5094)
!5105 = !DILocation(line: 146, column: 17, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5093, file: !37, line: 145, column: 49)
!5107 = !DILocation(line: 0, scope: !1096, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 146, column: 17, scope: !5106)
!5109 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !5108)
!5110 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !5108)
!5111 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !5108)
!5112 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !5108)
!5113 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !5108)
!5114 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !5108)
!5115 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !5108)
!5116 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !5108)
!5117 = !DILocation(line: 49, column: 17, scope: !1132, inlinedAt: !5108)
!5118 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !5108)
!5119 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !5108)
!5120 = !DILocation(line: 53, column: 17, scope: !2973, inlinedAt: !5108)
!5121 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5122)
!5122 = distinct !DILocation(line: 146, column: 37, scope: !5106)
!5123 = !DILocation(line: 0, scope: !1113, inlinedAt: !5122)
!5124 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5122)
!5125 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5122)
!5126 = !DILocation(line: 146, column: 76, scope: !5106)
!5127 = !DILocation(line: 146, column: 92, scope: !5106)
!5128 = !DILocation(line: 0, scope: !1889, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 146, column: 73, scope: !5106)
!5130 = !DILocation(line: 98, column: 45, scope: !1889, inlinedAt: !5129)
!5131 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !5129)
!5132 = !DILocation(line: 98, column: 13, scope: !1889, inlinedAt: !5129)
!5133 = !DILocation(line: 0, scope: !1113, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 147, column: 37, scope: !5106)
!5135 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5134)
!5136 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5134)
!5137 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5134)
!5138 = !DILocation(line: 147, column: 50, scope: !5106)
!5139 = !DILocation(line: 147, column: 66, scope: !5106)
!5140 = !DILocation(line: 0, scope: !2528, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 147, column: 47, scope: !5106)
!5142 = !DILocation(line: 83, column: 44, scope: !2528, inlinedAt: !5141)
!5143 = !DILocation(line: 83, column: 49, scope: !2528, inlinedAt: !5141)
!5144 = !DILocation(line: 83, column: 15, scope: !2528, inlinedAt: !5141)
!5145 = !DILocation(line: 83, column: 13, scope: !2528, inlinedAt: !5141)
!5146 = !DILocation(line: 0, scope: !1113, inlinedAt: !5147)
!5147 = distinct !DILocation(line: 148, column: 37, scope: !5106)
!5148 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5147)
!5149 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5147)
!5150 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5147)
!5151 = !DILocation(line: 148, column: 55, scope: !5106)
!5152 = !DILocation(line: 148, column: 71, scope: !5106)
!5153 = !DILocation(line: 0, scope: !1889, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 148, column: 52, scope: !5106)
!5155 = !DILocation(line: 98, column: 45, scope: !1889, inlinedAt: !5154)
!5156 = !DILocation(line: 98, column: 15, scope: !1889, inlinedAt: !5154)
!5157 = !DILocation(line: 98, column: 13, scope: !1889, inlinedAt: !5154)
!5158 = !DILocation(line: 0, scope: !1113, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 148, column: 79, scope: !5106)
!5160 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5159)
!5161 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5159)
!5162 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5159)
!5163 = !DILocation(line: 0, scope: !1122, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 146, column: 17, scope: !5106)
!5165 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !5164)
!5166 = !DILocation(line: 0, scope: !1128, inlinedAt: !5164)
!5167 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !5164)
!5168 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !5164)
!5169 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !5164)
!5170 = !DILocation(line: 0, scope: !1136, inlinedAt: !5171)
!5171 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !5164)
!5172 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !5171)
!5173 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !5171)
!5174 = !DILocation(line: 163, column: 77, scope: !1136, inlinedAt: !5171)
!5175 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !5171)
!5176 = !DILocation(line: 174, column: 30, scope: !1146, inlinedAt: !5164)
!5177 = !DILocation(line: 174, column: 44, scope: !1146, inlinedAt: !5164)
!5178 = !DILocation(line: 174, column: 17, scope: !1146, inlinedAt: !5164)
!5179 = !DILocation(line: 180, column: 13, scope: !1151, inlinedAt: !5164)
!5180 = !DILocation(line: 180, column: 21, scope: !1151, inlinedAt: !5164)
!5181 = !DILocation(line: 181, column: 13, scope: !1150, inlinedAt: !5164)
!5182 = !DILocation(line: 182, column: 9, scope: !1150, inlinedAt: !5164)
!5183 = !DILocation(line: 149, column: 19, scope: !5106)
!5184 = !DILocation(line: 149, column: 35, scope: !5106)
!5185 = !DILocation(line: 149, column: 17, scope: !5106)
!5186 = !DILocation(line: 150, column: 17, scope: !5106)
!5187 = !DILocation(line: 150, column: 33, scope: !5106)
!5188 = !DILocation(line: 150, column: 46, scope: !5106)
!5189 = !DILocation(line: 151, column: 33, scope: !5106)
!5190 = !DILocation(line: 151, column: 43, scope: !5106)
!5191 = !DILocation(line: 152, column: 22, scope: !5106)
!5192 = !DILocation(line: 153, column: 13, scope: !5106)
!5193 = !DILocation(line: 142, column: 61, scope: !5089)
!5194 = !DILocation(line: 142, column: 32, scope: !5089)
!5195 = distinct !{!5195, !5091, !5196, !1041}
!5196 = !DILocation(line: 154, column: 9, scope: !5081)
!5197 = !DILocation(line: 155, column: 5, scope: !5070)
!5198 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_metal.cpp", scope: !6, file: !6, type: !5199, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!5199 = !DISubroutineType(types: !1077)
!5200 = !DILocation(line: 0, scope: !5201, inlinedAt: !5202)
!5201 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !6, file: !6, type: !307, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!5202 = distinct !DILocation(line: 0, scope: !5198)
!5203 = !DILocalVariable(name: "this", arg: 1, scope: !5204, type: !2386, flags: DIFlagArtificial | DIFlagObjectPointer)
!5204 = distinct !DISubprogram(name: "GPUCompilationCache", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEC2Ev", scope: !36, file: !37, line: 8, type: !5205, scopeLine: 8, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !5207, retainedNodes: !5208)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{null, !86}
!5207 = !DISubprogram(name: "GPUCompilationCache", scope: !36, type: !5205, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5208 = !{!5203}
!5209 = !DILocation(line: 0, scope: !5204, inlinedAt: !5210)
!5210 = distinct !DILocation(line: 292, column: 73, scope: !5201, inlinedAt: !5202)
!5211 = !DILocation(line: 26, column: 9, scope: !5204, inlinedAt: !5210)
!5212 = !DILocation(line: 27, column: 24, scope: !5204, inlinedAt: !5210)
!5213 = !DILocation(line: 28, column: 9, scope: !5204, inlinedAt: !5210)
!5214 = !DILocation(line: 33, column: 14, scope: !5204, inlinedAt: !5210)
