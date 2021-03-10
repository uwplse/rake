; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::Cuda::CUctx_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUmod_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st" = type { i32, i32, i32, i32, i32, i8*, i32, %"struct.Halide::Runtime::Internal::Cuda::CUarray_st"*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %"struct.Halide::Runtime::Internal::Cuda::CUarray_st"*, i8*, i32, i32, i32, i32, i32 }
%"struct.Halide::Runtime::Internal::Cuda::CUarray_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUstream_st" = type opaque
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::Cuda::FreeListItem" = type { i32, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i32, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* }
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, i32, i32 }
%"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation" = type { %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i32, i32 }
%struct.halide_device_allocation_pool = type { i32 (i8*)*, %struct.halide_device_allocation_pool* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::Cuda::Context" = type { i8*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32 }

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi = comdat any

$_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE = comdat any

@_ZN6Halide7Runtime8Internal4Cuda6cuInitE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE = weak local_unnamed_addr global i32 (i32*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE = weak local_unnamed_addr global i32 (i32*, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE = weak local_unnamed_addr global i32 (i32*, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda15cuDeviceGetNameE = weak local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda16cuDeviceTotalMemE = weak local_unnamed_addr global i32 (i32*, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE = weak local_unnamed_addr global i32 ()* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE = weak local_unnamed_addr global i32 (i32*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda16cuModuleLoadDataE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE = weak global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE = weak local_unnamed_addr global i32 (i32*, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE = weak local_unnamed_addr global i32 (i32, i8*, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE = weak local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE = weak local_unnamed_addr global i32 (i32, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda10cuMemcpy3DE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE = weak local_unnamed_addr global i32 ()* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda21cuPointerGetAttributeE = weak local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE = weak local_unnamed_addr global i8* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda13lib_cuda_lockE = weak global i8 0, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"libcuda.so\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"libcuda.dylib\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"/Library/Frameworks/CUDA.framework/CUDA\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:75 Assert failed: cuInit == nullptr\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cuInit\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cuDeviceGetCount\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"cuDeviceGet\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"cuDeviceGetAttribute\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"cuDeviceGetName\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"cuDeviceTotalMem\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"cuCtxCreate_v2\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"cuCtxDestroy_v2\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"cuProfilerStop\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"cuCtxGetApiVersion\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"cuCtxGetDevice\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"cuModuleLoadData\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"cuModuleLoadDataEx\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"cuModuleUnload\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"cuModuleGetFunction\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"cuMemAlloc_v2\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"cuMemFree_v2\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"cuMemcpyHtoD_v2\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"cuMemcpyDtoH_v2\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"cuMemcpyDtoD_v2\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"cuMemcpy3D_v2\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"cuLaunchKernel\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"cuCtxSynchronize\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"cuCtxPushCurrent_v2\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"cuCtxPopCurrent_v2\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"cuPointerGetAttribute\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"cuStreamSynchronize\00", align 1
@_ZN6Halide7Runtime8Internal4Cuda7contextE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda12context_lockE = weak global %struct.halide_mutex zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal4Cuda9free_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, align 4
@_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE = weak global %struct.halide_mutex zeroinitializer, align 4
@.str.36 = private unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:142 Assert failed: ctx != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4
@_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 8
@.str.38 = private unnamed_addr constant [37 x i8] c"Could not find cuda system libraries\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"CUDA: cuInit failed: \00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"CUDA: cuGetDeviceCount failed: \00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"CUDA: No devices available\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"CUDA: Failed to get device\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"CUDA: cuCtxCreate failed: \00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"CUDA: cuCtxPopCurrent failed: \00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"HL_CUDA_JIT_MAX_REGISTERS\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"CUDA: cuModuleLoadData failed: \00", align 1
@.str.62 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:531 Assert failed: loaded_module != nullptr\0A\00", align 1
@cuda_allocation_pool = weak global %struct.halide_device_allocation_pool zeroinitializer, align 4
@.str.66 = private unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:614 Assert failed: validate_device_pointer(user_context, buf)\0A\00", align 1
@.str.68 = private unnamed_addr constant [67 x i8] c"CUDA: In halide_cuda_device_free, halide_cuda_get_stream returned \00", align 1
@.str.70 = private unnamed_addr constant [146 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:688 Assert failed: err == CUDA_SUCCESS || err == CUDA_ERROR_DEINITIALIZED\0A\00", align 1
@.str.72 = private unnamed_addr constant [146 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:707 Assert failed: err == CUDA_SUCCESS || err == CUDA_ERROR_DEINITIALIZED\0A\00", align 1
@.str.74 = private unnamed_addr constant [101 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:732 Assert failed: size != 0\0A\00", align 1
@.str.75 = private unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:735 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", align 1
@.str.76 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:741 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.78 = private unnamed_addr constant [69 x i8] c"CUDA: In halide_cuda_device_malloc, halide_cuda_get_stream returned \00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"CUDA: cuMemAlloc failed: \00", align 1
@.str.81 = private unnamed_addr constant [93 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:830 Assert failed: p\0A\00", align 1
@_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_cuda_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal4Cuda26cuda_device_interface_implE }, align 4
@.str.82 = private unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"cuMemcpyDtoH\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"cuMemcpyHtoD\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"cuMemcpyDtoD\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"CUDA: \00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c" failed: \00", align 1
@.str.97 = private unnamed_addr constant [173 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:898 Assert failed: dst_device_interface == nullptr || dst_device_interface == &cuda_device_interface\0A\00", align 1
@.str.98 = private unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:902 Assert failed: dst_device_interface == &cuda_device_interface\0A\00", align 1
@.str.100 = private unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:913 Assert failed: to_host || dst->device\0A\00", align 1
@.str.110 = private unnamed_addr constant [67 x i8] c"CUDA: In halide_cuda_device_sync, halide_cuda_get_stream returned \00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"CUDA: cuCtxSynchronize failed: \00", align 1
@.str.120 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1075 Assert failed: found && mod != nullptr\0A\00", align 1
@.str.123 = private unnamed_addr constant [35 x i8] c"CUDA: cuModuleGetFunction failed: \00", align 1
@.str.128 = private unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1102 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", align 1
@.str.131 = private unnamed_addr constant [59 x i8] c"CUDA: In halide_cuda_run, halide_cuda_get_stream returned \00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"CUDA: cuLaunchKernel failed: \00", align 1
@.str.133 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1162 Assert failed: buf->device == 0\0A\00", align 1
@.str.134 = private unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1184 Assert failed: buf->device_interface == &cuda_device_interface\0A\00", align 1
@.str.135 = private unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1195 Assert failed: buf->device_interface == &cuda_device_interface\0A\00", align 1
@.str.136 = private unnamed_addr constant [30 x i8] c"CUDA: cuCtxGetDevice failed (\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"CUDA: cuDeviceGetAttribute failed (\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"CUDA_SUCCESS\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_INVALID_VALUE\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_OUT_OF_MEMORY\00", align 1
@.str.142 = private unnamed_addr constant [27 x i8] c"CUDA_ERROR_NOT_INITIALIZED\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_DEINITIALIZED\00", align 1
@.str.144 = private unnamed_addr constant [29 x i8] c"CUDA_ERROR_PROFILER_DISABLED\00", align 1
@.str.145 = private unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_NOT_INITIALIZED\00", align 1
@.str.146 = private unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_ALREADY_STARTED\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_ALREADY_STOPPED\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"CUDA_ERROR_NO_DEVICE\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_DEVICE\00", align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_INVALID_IMAGE\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"CUDA_ERROR_INVALID_CONTEXT\00", align 1
@.str.152 = private unnamed_addr constant [35 x i8] c"CUDA_ERROR_CONTEXT_ALREADY_CURRENT\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"CUDA_ERROR_MAP_FAILED\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"CUDA_ERROR_UNMAP_FAILED\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"CUDA_ERROR_ARRAY_IS_MAPPED\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_ALREADY_MAPPED\00", align 1
@.str.157 = private unnamed_addr constant [29 x i8] c"CUDA_ERROR_NO_BINARY_FOR_GPU\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"CUDA_ERROR_ALREADY_ACQUIRED\00", align 1
@.str.159 = private unnamed_addr constant [22 x i8] c"CUDA_ERROR_NOT_MAPPED\00", align 1
@.str.160 = private unnamed_addr constant [31 x i8] c"CUDA_ERROR_NOT_MAPPED_AS_ARRAY\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"CUDA_ERROR_NOT_MAPPED_AS_POINTER\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"CUDA_ERROR_ECC_UNCORRECTABLE\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"CUDA_ERROR_UNSUPPORTED_LIMIT\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"CUDA_ERROR_CONTEXT_ALREADY_IN_USE\00", align 1
@.str.165 = private unnamed_addr constant [35 x i8] c"CUDA_ERROR_PEER_ACCESS_UNSUPPORTED\00", align 1
@.str.166 = private unnamed_addr constant [23 x i8] c"CUDA_ERROR_INVALID_PTX\00", align 1
@.str.167 = private unnamed_addr constant [36 x i8] c"CUDA_ERROR_INVALID_GRAPHICS_CONTEXT\00", align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"CUDA_ERROR_NVLINK_UNCORRECTABLE\00", align 1
@.str.169 = private unnamed_addr constant [34 x i8] c"CUDA_ERROR_JIT_COMPILER_NOT_FOUND\00", align 1
@.str.170 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_SOURCE\00", align 1
@.str.171 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_FILE_NOT_FOUND\00", align 1
@.str.172 = private unnamed_addr constant [42 x i8] c"CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND\00", align 1
@.str.173 = private unnamed_addr constant [37 x i8] c"CUDA_ERROR_SHARED_OBJECT_INIT_FAILED\00", align 1
@.str.174 = private unnamed_addr constant [28 x i8] c"CUDA_ERROR_OPERATING_SYSTEM\00", align 1
@.str.175 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_HANDLE\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"CUDA_ERROR_NOT_FOUND\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"CUDA_ERROR_NOT_READY\00", align 1
@.str.178 = private unnamed_addr constant [27 x i8] c"CUDA_ERROR_ILLEGAL_ADDRESS\00", align 1
@.str.179 = private unnamed_addr constant [35 x i8] c"CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES\00", align 1
@.str.180 = private unnamed_addr constant [26 x i8] c"CUDA_ERROR_LAUNCH_TIMEOUT\00", align 1
@.str.181 = private unnamed_addr constant [41 x i8] c"CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING\00", align 1
@.str.182 = private unnamed_addr constant [39 x i8] c"CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"CUDA_ERROR_PEER_ACCESS_NOT_ENABLED\00", align 1
@.str.184 = private unnamed_addr constant [34 x i8] c"CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE\00", align 1
@.str.185 = private unnamed_addr constant [32 x i8] c"CUDA_ERROR_CONTEXT_IS_DESTROYED\00", align 1
@.str.186 = private unnamed_addr constant [62 x i8] c"Illegal instruction or Halide assertion failure inside kernel\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"CUDA_ERROR_MISALIGNED_ADDRESS\00", align 1
@.str.188 = private unnamed_addr constant [33 x i8] c"CUDA_ERROR_INVALID_ADDRESS_SPACE\00", align 1
@.str.189 = private unnamed_addr constant [22 x i8] c"CUDA_ERROR_INVALID_PC\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_LAUNCH_FAILED\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_NOT_PERMITTED\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"CUDA_ERROR_NOT_SUPPORTED\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"CUDA_ERROR_UNKNOWN\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"Unknown cuda error \00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"<Unknown error>\00", align 1
@_ZN6Halide7Runtime8Internal4Cuda26cuda_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_sync, i32 (i8*)* @halide_cuda_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_cuda_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_cuda_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_cuda_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_cuda_wrap_device_ptr, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_detach_device_ptr }, align 4
@.str.196 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:232 Assert failed: context != nullptr\0A\00", align 1
@.str.197 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:233 Assert failed: cuInit != nullptr\0A\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"CUDA API not found: \00", align 1
@.str.199 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.204 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", align 1
@.str.205 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", align 1
@.str.206 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", align 1
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @register_cuda_allocation_pool, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_cuda.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_cuda_cleanup, i8* null }]

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
define weak i8* @halide_cuda_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 4, !tbaa !37
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #8
  store i8* %7, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 4, !tbaa !37
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #8
  store i8* %10, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 4, !tbaa !37
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %17, %9, %6
  %13 = phi i8* [ %10, %9 ], [ %7, %6 ], [ %18, %17 ]
  %14 = tail call i8* @halide_get_library_symbol(i8* %13, i8* %1) #8
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi i8* [ %14, %12 ], [ %4, %2 ]
  ret i8* %16

17:                                               ; preds = %9
  %18 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0)) #8
  store i8* %18, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 4, !tbaa !37
  br label %12
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal4Cuda12load_libcudaEPv(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %3 = icmp eq i32 (i32)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i32 1024) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #8
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %26

19:                                               ; preds = %13
  %20 = ptrtoint i8* %17 to i32
  %21 = ptrtoint i8* %9 to i32
  %22 = sub i32 1, %21
  %23 = add i32 %22, %20
  %24 = sext i32 %23 to i64
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %24) #8
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %9) #8
  br label %27

27:                                               ; preds = %5, %26
  store i8* %6, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE to i8**), align 4, !tbaa !37
  %28 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = tail call i8* @malloc(i32 1024) #8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %34, align 1, !tbaa !36
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8* [ %34, %33 ], [ null, %30 ]
  %37 = tail call i8* @halide_string_to_string(i8* %31, i8* %36, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %36, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #8
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %36, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %32, label %40, label %41

40:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %48

41:                                               ; preds = %35
  %42 = ptrtoint i8* %39 to i32
  %43 = ptrtoint i8* %31 to i32
  %44 = sub i32 1, %43
  %45 = add i32 %44, %42
  %46 = sext i32 %45 to i64
  %47 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %46) #8
  tail call void @halide_error(i8* %0, i8* nonnull %31) #8
  br label %48

48:                                               ; preds = %41, %40
  tail call void @free(i8* %31) #8
  br label %49

49:                                               ; preds = %27, %48
  store i8* %28, i8** bitcast (i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE to i8**), align 4, !tbaa !37
  %50 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = tail call i8* @malloc(i32 1024) #8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023
  store i8 0, i8* %56, align 1, !tbaa !36
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i8* [ %56, %55 ], [ null, %52 ]
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %58, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #8
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %54, label %62, label %63

62:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %70

63:                                               ; preds = %57
  %64 = ptrtoint i8* %61 to i32
  %65 = ptrtoint i8* %53 to i32
  %66 = sub i32 1, %65
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %53, i64 %68) #8
  tail call void @halide_error(i8* %0, i8* nonnull %53) #8
  br label %70

70:                                               ; preds = %63, %62
  tail call void @free(i8* %53) #8
  br label %71

71:                                               ; preds = %49, %70
  store i8* %50, i8** bitcast (i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE to i8**), align 4, !tbaa !37
  %72 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = tail call i8* @malloc(i32 1024) #8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %78, align 1, !tbaa !36
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %78, %77 ], [ null, %74 ]
  %81 = tail call i8* @halide_string_to_string(i8* %75, i8* %80, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #8
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %76, label %84, label %85

84:                                               ; preds = %79
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %92

85:                                               ; preds = %79
  %86 = ptrtoint i8* %83 to i32
  %87 = ptrtoint i8* %75 to i32
  %88 = sub i32 1, %87
  %89 = add i32 %88, %86
  %90 = sext i32 %89 to i64
  %91 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %75, i64 %90) #8
  tail call void @halide_error(i8* %0, i8* nonnull %75) #8
  br label %92

92:                                               ; preds = %85, %84
  tail call void @free(i8* %75) #8
  br label %93

93:                                               ; preds = %71, %92
  store i8* %72, i8** bitcast (i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE to i8**), align 4, !tbaa !37
  %94 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = tail call i8* @malloc(i32 1024) #8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds i8, i8* %97, i32 1023
  store i8 0, i8* %100, align 1, !tbaa !36
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i8* [ %100, %99 ], [ null, %96 ]
  %103 = tail call i8* @halide_string_to_string(i8* %97, i8* %102, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %104 = tail call i8* @halide_string_to_string(i8* %103, i8* %102, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #8
  %105 = tail call i8* @halide_string_to_string(i8* %104, i8* %102, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %98, label %106, label %107

106:                                              ; preds = %101
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %114

107:                                              ; preds = %101
  %108 = ptrtoint i8* %105 to i32
  %109 = ptrtoint i8* %97 to i32
  %110 = sub i32 1, %109
  %111 = add i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %97, i64 %112) #8
  tail call void @halide_error(i8* %0, i8* nonnull %97) #8
  br label %114

114:                                              ; preds = %107, %106
  tail call void @free(i8* %97) #8
  br label %115

115:                                              ; preds = %93, %114
  store i8* %94, i8** bitcast (i32 (i8*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda15cuDeviceGetNameE to i8**), align 4, !tbaa !37
  %116 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = tail call i8* @malloc(i32 1024) #8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds i8, i8* %119, i32 1023
  store i8 0, i8* %122, align 1, !tbaa !36
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi i8* [ %122, %121 ], [ null, %118 ]
  %125 = tail call i8* @halide_string_to_string(i8* %119, i8* %124, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %126 = tail call i8* @halide_string_to_string(i8* %125, i8* %124, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #8
  %127 = tail call i8* @halide_string_to_string(i8* %126, i8* %124, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %120, label %128, label %129

128:                                              ; preds = %123
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %136

129:                                              ; preds = %123
  %130 = ptrtoint i8* %127 to i32
  %131 = ptrtoint i8* %119 to i32
  %132 = sub i32 1, %131
  %133 = add i32 %132, %130
  %134 = sext i32 %133 to i64
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %119, i64 %134) #8
  tail call void @halide_error(i8* %0, i8* nonnull %119) #8
  br label %136

136:                                              ; preds = %129, %128
  tail call void @free(i8* %119) #8
  br label %137

137:                                              ; preds = %115, %136
  store i8* %116, i8** bitcast (i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceTotalMemE to i8**), align 4, !tbaa !37
  %138 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = tail call i8* @malloc(i32 1024) #8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, i8* %141, i32 1023
  store i8 0, i8* %144, align 1, !tbaa !36
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i8* [ %144, %143 ], [ null, %140 ]
  %147 = tail call i8* @halide_string_to_string(i8* %141, i8* %146, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %148 = tail call i8* @halide_string_to_string(i8* %147, i8* %146, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8
  %149 = tail call i8* @halide_string_to_string(i8* %148, i8* %146, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %142, label %150, label %151

150:                                              ; preds = %145
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %158

151:                                              ; preds = %145
  %152 = ptrtoint i8* %149 to i32
  %153 = ptrtoint i8* %141 to i32
  %154 = sub i32 1, %153
  %155 = add i32 %154, %152
  %156 = sext i32 %155 to i64
  %157 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %141, i64 %156) #8
  tail call void @halide_error(i8* %0, i8* nonnull %141) #8
  br label %158

158:                                              ; preds = %151, %150
  tail call void @free(i8* %141) #8
  br label %159

159:                                              ; preds = %137, %158
  store i8* %138, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE to i8**), align 4, !tbaa !37
  %160 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = tail call i8* @malloc(i32 1024) #8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds i8, i8* %163, i32 1023
  store i8 0, i8* %166, align 1, !tbaa !36
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i8* [ %166, %165 ], [ null, %162 ]
  %169 = tail call i8* @halide_string_to_string(i8* %163, i8* %168, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %170 = tail call i8* @halide_string_to_string(i8* %169, i8* %168, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #8
  %171 = tail call i8* @halide_string_to_string(i8* %170, i8* %168, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %164, label %172, label %173

172:                                              ; preds = %167
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %180

173:                                              ; preds = %167
  %174 = ptrtoint i8* %171 to i32
  %175 = ptrtoint i8* %163 to i32
  %176 = sub i32 1, %175
  %177 = add i32 %176, %174
  %178 = sext i32 %177 to i64
  %179 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %163, i64 %178) #8
  tail call void @halide_error(i8* %0, i8* nonnull %163) #8
  br label %180

180:                                              ; preds = %173, %172
  tail call void @free(i8* %163) #8
  br label %181

181:                                              ; preds = %159, %180
  store i8* %160, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE to i8**), align 4, !tbaa !37
  %182 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %203

184:                                              ; preds = %181
  %185 = tail call i8* @malloc(i32 1024) #8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, i8* %185, i32 1023
  store i8 0, i8* %188, align 1, !tbaa !36
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i8* [ %188, %187 ], [ null, %184 ]
  %191 = tail call i8* @halide_string_to_string(i8* %185, i8* %190, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %192 = tail call i8* @halide_string_to_string(i8* %191, i8* %190, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #8
  %193 = tail call i8* @halide_string_to_string(i8* %192, i8* %190, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %186, label %194, label %195

194:                                              ; preds = %189
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %202

195:                                              ; preds = %189
  %196 = ptrtoint i8* %193 to i32
  %197 = ptrtoint i8* %185 to i32
  %198 = sub i32 1, %197
  %199 = add i32 %198, %196
  %200 = sext i32 %199 to i64
  %201 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %185, i64 %200) #8
  tail call void @halide_error(i8* %0, i8* nonnull %185) #8
  br label %202

202:                                              ; preds = %195, %194
  tail call void @free(i8* %185) #8
  br label %203

203:                                              ; preds = %181, %202
  store i8* %182, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE to i8**), align 4, !tbaa !37
  %204 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  %207 = tail call i8* @malloc(i32 1024) #8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, i8* %207, i32 1023
  store i8 0, i8* %210, align 1, !tbaa !36
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i8* [ %210, %209 ], [ null, %206 ]
  %213 = tail call i8* @halide_string_to_string(i8* %207, i8* %212, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %214 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #8
  %215 = tail call i8* @halide_string_to_string(i8* %214, i8* %212, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %208, label %216, label %217

216:                                              ; preds = %211
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %224

217:                                              ; preds = %211
  %218 = ptrtoint i8* %215 to i32
  %219 = ptrtoint i8* %207 to i32
  %220 = sub i32 1, %219
  %221 = add i32 %220, %218
  %222 = sext i32 %221 to i64
  %223 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %207, i64 %222) #8
  tail call void @halide_error(i8* %0, i8* nonnull %207) #8
  br label %224

224:                                              ; preds = %217, %216
  tail call void @free(i8* %207) #8
  br label %225

225:                                              ; preds = %203, %224
  store i8* %204, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE to i8**), align 4, !tbaa !37
  %226 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = tail call i8* @malloc(i32 1024) #8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds i8, i8* %229, i32 1023
  store i8 0, i8* %232, align 1, !tbaa !36
  br label %233

233:                                              ; preds = %231, %228
  %234 = phi i8* [ %232, %231 ], [ null, %228 ]
  %235 = tail call i8* @halide_string_to_string(i8* %229, i8* %234, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %236 = tail call i8* @halide_string_to_string(i8* %235, i8* %234, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #8
  %237 = tail call i8* @halide_string_to_string(i8* %236, i8* %234, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %230, label %238, label %239

238:                                              ; preds = %233
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %246

239:                                              ; preds = %233
  %240 = ptrtoint i8* %237 to i32
  %241 = ptrtoint i8* %229 to i32
  %242 = sub i32 1, %241
  %243 = add i32 %242, %240
  %244 = sext i32 %243 to i64
  %245 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %229, i64 %244) #8
  tail call void @halide_error(i8* %0, i8* nonnull %229) #8
  br label %246

246:                                              ; preds = %239, %238
  tail call void @free(i8* %229) #8
  br label %247

247:                                              ; preds = %225, %246
  store i8* %226, i8** bitcast (i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE to i8**), align 4, !tbaa !37
  %248 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #8
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = tail call i8* @malloc(i32 1024) #8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, i8* %251, i32 1023
  store i8 0, i8* %254, align 1, !tbaa !36
  br label %255

255:                                              ; preds = %253, %250
  %256 = phi i8* [ %254, %253 ], [ null, %250 ]
  %257 = tail call i8* @halide_string_to_string(i8* %251, i8* %256, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %258 = tail call i8* @halide_string_to_string(i8* %257, i8* %256, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #8
  %259 = tail call i8* @halide_string_to_string(i8* %258, i8* %256, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %252, label %260, label %261

260:                                              ; preds = %255
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %268

261:                                              ; preds = %255
  %262 = ptrtoint i8* %259 to i32
  %263 = ptrtoint i8* %251 to i32
  %264 = sub i32 1, %263
  %265 = add i32 %264, %262
  %266 = sext i32 %265 to i64
  %267 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %251, i64 %266) #8
  tail call void @halide_error(i8* %0, i8* nonnull %251) #8
  br label %268

268:                                              ; preds = %261, %260
  tail call void @free(i8* %251) #8
  br label %269

269:                                              ; preds = %247, %268
  store i8* %248, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)** @_ZN6Halide7Runtime8Internal4Cuda16cuModuleLoadDataE to i8**), align 4, !tbaa !37
  %270 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = tail call i8* @malloc(i32 1024) #8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, i8* %273, i32 1023
  store i8 0, i8* %276, align 1, !tbaa !36
  br label %277

277:                                              ; preds = %275, %272
  %278 = phi i8* [ %276, %275 ], [ null, %272 ]
  %279 = tail call i8* @halide_string_to_string(i8* %273, i8* %278, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %280 = tail call i8* @halide_string_to_string(i8* %279, i8* %278, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #8
  %281 = tail call i8* @halide_string_to_string(i8* %280, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %274, label %282, label %283

282:                                              ; preds = %277
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %290

283:                                              ; preds = %277
  %284 = ptrtoint i8* %281 to i32
  %285 = ptrtoint i8* %273 to i32
  %286 = sub i32 1, %285
  %287 = add i32 %286, %284
  %288 = sext i32 %287 to i64
  %289 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %273, i64 %288) #8
  tail call void @halide_error(i8* %0, i8* nonnull %273) #8
  br label %290

290:                                              ; preds = %283, %282
  tail call void @free(i8* %273) #8
  br label %291

291:                                              ; preds = %269, %290
  store i8* %270, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE to i8**), align 4, !tbaa !37
  %292 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #8
  %293 = icmp eq i8* %292, null
  br i1 %293, label %294, label %313

294:                                              ; preds = %291
  %295 = tail call i8* @malloc(i32 1024) #8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, i8* %295, i32 1023
  store i8 0, i8* %298, align 1, !tbaa !36
  br label %299

299:                                              ; preds = %297, %294
  %300 = phi i8* [ %298, %297 ], [ null, %294 ]
  %301 = tail call i8* @halide_string_to_string(i8* %295, i8* %300, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %302 = tail call i8* @halide_string_to_string(i8* %301, i8* %300, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #8
  %303 = tail call i8* @halide_string_to_string(i8* %302, i8* %300, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %296, label %304, label %305

304:                                              ; preds = %299
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %312

305:                                              ; preds = %299
  %306 = ptrtoint i8* %303 to i32
  %307 = ptrtoint i8* %295 to i32
  %308 = sub i32 1, %307
  %309 = add i32 %308, %306
  %310 = sext i32 %309 to i64
  %311 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %295, i64 %310) #8
  tail call void @halide_error(i8* %0, i8* nonnull %295) #8
  br label %312

312:                                              ; preds = %305, %304
  tail call void @free(i8* %295) #8
  br label %313

313:                                              ; preds = %291, %312
  store i8* %292, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE to i8**), align 4, !tbaa !37
  %314 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %316, label %335

316:                                              ; preds = %313
  %317 = tail call i8* @malloc(i32 1024) #8
  %318 = icmp eq i8* %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, i8* %317, i32 1023
  store i8 0, i8* %320, align 1, !tbaa !36
  br label %321

321:                                              ; preds = %319, %316
  %322 = phi i8* [ %320, %319 ], [ null, %316 ]
  %323 = tail call i8* @halide_string_to_string(i8* %317, i8* %322, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %324 = tail call i8* @halide_string_to_string(i8* %323, i8* %322, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #8
  %325 = tail call i8* @halide_string_to_string(i8* %324, i8* %322, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %318, label %326, label %327

326:                                              ; preds = %321
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %334

327:                                              ; preds = %321
  %328 = ptrtoint i8* %325 to i32
  %329 = ptrtoint i8* %317 to i32
  %330 = sub i32 1, %329
  %331 = add i32 %330, %328
  %332 = sext i32 %331 to i64
  %333 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %317, i64 %332) #8
  tail call void @halide_error(i8* %0, i8* nonnull %317) #8
  br label %334

334:                                              ; preds = %327, %326
  tail call void @free(i8* %317) #8
  br label %335

335:                                              ; preds = %313, %334
  store i8* %314, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE to i8**), align 4, !tbaa !37
  %336 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  %339 = tail call i8* @malloc(i32 1024) #8
  %340 = icmp eq i8* %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds i8, i8* %339, i32 1023
  store i8 0, i8* %342, align 1, !tbaa !36
  br label %343

343:                                              ; preds = %341, %338
  %344 = phi i8* [ %342, %341 ], [ null, %338 ]
  %345 = tail call i8* @halide_string_to_string(i8* %339, i8* %344, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %346 = tail call i8* @halide_string_to_string(i8* %345, i8* %344, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #8
  %347 = tail call i8* @halide_string_to_string(i8* %346, i8* %344, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %340, label %348, label %349

348:                                              ; preds = %343
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %356

349:                                              ; preds = %343
  %350 = ptrtoint i8* %347 to i32
  %351 = ptrtoint i8* %339 to i32
  %352 = sub i32 1, %351
  %353 = add i32 %352, %350
  %354 = sext i32 %353 to i64
  %355 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %339, i64 %354) #8
  tail call void @halide_error(i8* %0, i8* nonnull %339) #8
  br label %356

356:                                              ; preds = %349, %348
  tail call void @free(i8* %339) #8
  br label %357

357:                                              ; preds = %335, %356
  store i8* %336, i8** bitcast (i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE to i8**), align 4, !tbaa !37
  %358 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #8
  %359 = icmp eq i8* %358, null
  br i1 %359, label %360, label %379

360:                                              ; preds = %357
  %361 = tail call i8* @malloc(i32 1024) #8
  %362 = icmp eq i8* %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, i8* %361, i32 1023
  store i8 0, i8* %364, align 1, !tbaa !36
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i8* [ %364, %363 ], [ null, %360 ]
  %367 = tail call i8* @halide_string_to_string(i8* %361, i8* %366, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %368 = tail call i8* @halide_string_to_string(i8* %367, i8* %366, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #8
  %369 = tail call i8* @halide_string_to_string(i8* %368, i8* %366, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %362, label %370, label %371

370:                                              ; preds = %365
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %378

371:                                              ; preds = %365
  %372 = ptrtoint i8* %369 to i32
  %373 = ptrtoint i8* %361 to i32
  %374 = sub i32 1, %373
  %375 = add i32 %374, %372
  %376 = sext i32 %375 to i64
  %377 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %361, i64 %376) #8
  tail call void @halide_error(i8* %0, i8* nonnull %361) #8
  br label %378

378:                                              ; preds = %371, %370
  tail call void @free(i8* %361) #8
  br label %379

379:                                              ; preds = %357, %378
  store i8* %358, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE to i8**), align 4, !tbaa !37
  %380 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #8
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %401

382:                                              ; preds = %379
  %383 = tail call i8* @malloc(i32 1024) #8
  %384 = icmp eq i8* %383, null
  br i1 %384, label %387, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %383, i32 1023
  store i8 0, i8* %386, align 1, !tbaa !36
  br label %387

387:                                              ; preds = %385, %382
  %388 = phi i8* [ %386, %385 ], [ null, %382 ]
  %389 = tail call i8* @halide_string_to_string(i8* %383, i8* %388, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %390 = tail call i8* @halide_string_to_string(i8* %389, i8* %388, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #8
  %391 = tail call i8* @halide_string_to_string(i8* %390, i8* %388, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %384, label %392, label %393

392:                                              ; preds = %387
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %400

393:                                              ; preds = %387
  %394 = ptrtoint i8* %391 to i32
  %395 = ptrtoint i8* %383 to i32
  %396 = sub i32 1, %395
  %397 = add i32 %396, %394
  %398 = sext i32 %397 to i64
  %399 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %383, i64 %398) #8
  tail call void @halide_error(i8* %0, i8* nonnull %383) #8
  br label %400

400:                                              ; preds = %393, %392
  tail call void @free(i8* %383) #8
  br label %401

401:                                              ; preds = %379, %400
  store i8* %380, i8** bitcast (i32 (i32, i8*, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE to i8**), align 4, !tbaa !37
  %402 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #8
  %403 = icmp eq i8* %402, null
  br i1 %403, label %404, label %423

404:                                              ; preds = %401
  %405 = tail call i8* @malloc(i32 1024) #8
  %406 = icmp eq i8* %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds i8, i8* %405, i32 1023
  store i8 0, i8* %408, align 1, !tbaa !36
  br label %409

409:                                              ; preds = %407, %404
  %410 = phi i8* [ %408, %407 ], [ null, %404 ]
  %411 = tail call i8* @halide_string_to_string(i8* %405, i8* %410, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %412 = tail call i8* @halide_string_to_string(i8* %411, i8* %410, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #8
  %413 = tail call i8* @halide_string_to_string(i8* %412, i8* %410, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %406, label %414, label %415

414:                                              ; preds = %409
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %422

415:                                              ; preds = %409
  %416 = ptrtoint i8* %413 to i32
  %417 = ptrtoint i8* %405 to i32
  %418 = sub i32 1, %417
  %419 = add i32 %418, %416
  %420 = sext i32 %419 to i64
  %421 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %405, i64 %420) #8
  tail call void @halide_error(i8* %0, i8* nonnull %405) #8
  br label %422

422:                                              ; preds = %415, %414
  tail call void @free(i8* %405) #8
  br label %423

423:                                              ; preds = %401, %422
  store i8* %402, i8** bitcast (i32 (i8*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE to i8**), align 4, !tbaa !37
  %424 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #8
  %425 = icmp eq i8* %424, null
  br i1 %425, label %426, label %445

426:                                              ; preds = %423
  %427 = tail call i8* @malloc(i32 1024) #8
  %428 = icmp eq i8* %427, null
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds i8, i8* %427, i32 1023
  store i8 0, i8* %430, align 1, !tbaa !36
  br label %431

431:                                              ; preds = %429, %426
  %432 = phi i8* [ %430, %429 ], [ null, %426 ]
  %433 = tail call i8* @halide_string_to_string(i8* %427, i8* %432, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %434 = tail call i8* @halide_string_to_string(i8* %433, i8* %432, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #8
  %435 = tail call i8* @halide_string_to_string(i8* %434, i8* %432, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %428, label %436, label %437

436:                                              ; preds = %431
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %444

437:                                              ; preds = %431
  %438 = ptrtoint i8* %435 to i32
  %439 = ptrtoint i8* %427 to i32
  %440 = sub i32 1, %439
  %441 = add i32 %440, %438
  %442 = sext i32 %441 to i64
  %443 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %427, i64 %442) #8
  tail call void @halide_error(i8* %0, i8* nonnull %427) #8
  br label %444

444:                                              ; preds = %437, %436
  tail call void @free(i8* %427) #8
  br label %445

445:                                              ; preds = %423, %444
  store i8* %424, i8** bitcast (i32 (i32, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE to i8**), align 4, !tbaa !37
  %446 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #8
  %447 = icmp eq i8* %446, null
  br i1 %447, label %448, label %467

448:                                              ; preds = %445
  %449 = tail call i8* @malloc(i32 1024) #8
  %450 = icmp eq i8* %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds i8, i8* %449, i32 1023
  store i8 0, i8* %452, align 1, !tbaa !36
  br label %453

453:                                              ; preds = %451, %448
  %454 = phi i8* [ %452, %451 ], [ null, %448 ]
  %455 = tail call i8* @halide_string_to_string(i8* %449, i8* %454, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %456 = tail call i8* @halide_string_to_string(i8* %455, i8* %454, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #8
  %457 = tail call i8* @halide_string_to_string(i8* %456, i8* %454, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %450, label %458, label %459

458:                                              ; preds = %453
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %466

459:                                              ; preds = %453
  %460 = ptrtoint i8* %457 to i32
  %461 = ptrtoint i8* %449 to i32
  %462 = sub i32 1, %461
  %463 = add i32 %462, %460
  %464 = sext i32 %463 to i64
  %465 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %449, i64 %464) #8
  tail call void @halide_error(i8* %0, i8* nonnull %449) #8
  br label %466

466:                                              ; preds = %459, %458
  tail call void @free(i8* %449) #8
  br label %467

467:                                              ; preds = %445, %466
  store i8* %446, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemcpy3DE to i8**), align 4, !tbaa !37
  %468 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %489

470:                                              ; preds = %467
  %471 = tail call i8* @malloc(i32 1024) #8
  %472 = icmp eq i8* %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, i8* %471, i32 1023
  store i8 0, i8* %474, align 1, !tbaa !36
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i8* [ %474, %473 ], [ null, %470 ]
  %477 = tail call i8* @halide_string_to_string(i8* %471, i8* %476, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %478 = tail call i8* @halide_string_to_string(i8* %477, i8* %476, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %479 = tail call i8* @halide_string_to_string(i8* %478, i8* %476, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %472, label %480, label %481

480:                                              ; preds = %475
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %488

481:                                              ; preds = %475
  %482 = ptrtoint i8* %479 to i32
  %483 = ptrtoint i8* %471 to i32
  %484 = sub i32 1, %483
  %485 = add i32 %484, %482
  %486 = sext i32 %485 to i64
  %487 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %471, i64 %486) #8
  tail call void @halide_error(i8* %0, i8* nonnull %471) #8
  br label %488

488:                                              ; preds = %481, %480
  tail call void @free(i8* %471) #8
  br label %489

489:                                              ; preds = %467, %488
  store i8* %468, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE to i8**), align 4, !tbaa !37
  %490 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0)) #8
  %491 = icmp eq i8* %490, null
  br i1 %491, label %492, label %511

492:                                              ; preds = %489
  %493 = tail call i8* @malloc(i32 1024) #8
  %494 = icmp eq i8* %493, null
  br i1 %494, label %497, label %495

495:                                              ; preds = %492
  %496 = getelementptr inbounds i8, i8* %493, i32 1023
  store i8 0, i8* %496, align 1, !tbaa !36
  br label %497

497:                                              ; preds = %495, %492
  %498 = phi i8* [ %496, %495 ], [ null, %492 ]
  %499 = tail call i8* @halide_string_to_string(i8* %493, i8* %498, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %500 = tail call i8* @halide_string_to_string(i8* %499, i8* %498, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0)) #8
  %501 = tail call i8* @halide_string_to_string(i8* %500, i8* %498, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %494, label %502, label %503

502:                                              ; preds = %497
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %510

503:                                              ; preds = %497
  %504 = ptrtoint i8* %501 to i32
  %505 = ptrtoint i8* %493 to i32
  %506 = sub i32 1, %505
  %507 = add i32 %506, %504
  %508 = sext i32 %507 to i64
  %509 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %493, i64 %508) #8
  tail call void @halide_error(i8* %0, i8* nonnull %493) #8
  br label %510

510:                                              ; preds = %503, %502
  tail call void @free(i8* %493) #8
  br label %511

511:                                              ; preds = %489, %510
  store i8* %490, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE to i8**), align 4, !tbaa !37
  %512 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #8
  %513 = icmp eq i8* %512, null
  br i1 %513, label %514, label %533

514:                                              ; preds = %511
  %515 = tail call i8* @malloc(i32 1024) #8
  %516 = icmp eq i8* %515, null
  br i1 %516, label %519, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, i8* %515, i32 1023
  store i8 0, i8* %518, align 1, !tbaa !36
  br label %519

519:                                              ; preds = %517, %514
  %520 = phi i8* [ %518, %517 ], [ null, %514 ]
  %521 = tail call i8* @halide_string_to_string(i8* %515, i8* %520, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %522 = tail call i8* @halide_string_to_string(i8* %521, i8* %520, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #8
  %523 = tail call i8* @halide_string_to_string(i8* %522, i8* %520, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %516, label %524, label %525

524:                                              ; preds = %519
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %532

525:                                              ; preds = %519
  %526 = ptrtoint i8* %523 to i32
  %527 = ptrtoint i8* %515 to i32
  %528 = sub i32 1, %527
  %529 = add i32 %528, %526
  %530 = sext i32 %529 to i64
  %531 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %515, i64 %530) #8
  tail call void @halide_error(i8* %0, i8* nonnull %515) #8
  br label %532

532:                                              ; preds = %525, %524
  tail call void @free(i8* %515) #8
  br label %533

533:                                              ; preds = %511, %532
  store i8* %512, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE to i8**), align 4, !tbaa !37
  %534 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0)) #8
  %535 = icmp eq i8* %534, null
  br i1 %535, label %536, label %555

536:                                              ; preds = %533
  %537 = tail call i8* @malloc(i32 1024) #8
  %538 = icmp eq i8* %537, null
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds i8, i8* %537, i32 1023
  store i8 0, i8* %540, align 1, !tbaa !36
  br label %541

541:                                              ; preds = %539, %536
  %542 = phi i8* [ %540, %539 ], [ null, %536 ]
  %543 = tail call i8* @halide_string_to_string(i8* %537, i8* %542, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %544 = tail call i8* @halide_string_to_string(i8* %543, i8* %542, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0)) #8
  %545 = tail call i8* @halide_string_to_string(i8* %544, i8* %542, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %538, label %546, label %547

546:                                              ; preds = %541
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %554

547:                                              ; preds = %541
  %548 = ptrtoint i8* %545 to i32
  %549 = ptrtoint i8* %537 to i32
  %550 = sub i32 1, %549
  %551 = add i32 %550, %548
  %552 = sext i32 %551 to i64
  %553 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %537, i64 %552) #8
  tail call void @halide_error(i8* %0, i8* nonnull %537) #8
  br label %554

554:                                              ; preds = %547, %546
  tail call void @free(i8* %537) #8
  br label %555

555:                                              ; preds = %533, %554
  store i8* %534, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE to i8**), align 4, !tbaa !37
  %556 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0)) #8
  %557 = icmp eq i8* %556, null
  br i1 %557, label %558, label %577

558:                                              ; preds = %555
  %559 = tail call i8* @malloc(i32 1024) #8
  %560 = icmp eq i8* %559, null
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, i8* %559, i32 1023
  store i8 0, i8* %562, align 1, !tbaa !36
  br label %563

563:                                              ; preds = %561, %558
  %564 = phi i8* [ %562, %561 ], [ null, %558 ]
  %565 = tail call i8* @halide_string_to_string(i8* %559, i8* %564, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0)) #8
  %566 = tail call i8* @halide_string_to_string(i8* %565, i8* %564, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0)) #8
  %567 = tail call i8* @halide_string_to_string(i8* %566, i8* %564, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %560, label %568, label %569

568:                                              ; preds = %563
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %576

569:                                              ; preds = %563
  %570 = ptrtoint i8* %567 to i32
  %571 = ptrtoint i8* %559 to i32
  %572 = sub i32 1, %571
  %573 = add i32 %572, %570
  %574 = sext i32 %573 to i64
  %575 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %559, i64 %574) #8
  tail call void @halide_error(i8* %0, i8* nonnull %559) #8
  br label %576

576:                                              ; preds = %569, %568
  tail call void @free(i8* %559) #8
  br label %577

577:                                              ; preds = %555, %576
  store i8* %556, i8** bitcast (i32 (i8*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda21cuPointerGetAttributeE to i8**), align 4, !tbaa !37
  %578 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #8
  store i8* %578, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE to i8**), align 4, !tbaa !37
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal4Cuda13lib_cuda_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @_ZN6Halide7Runtime8Internal4Cuda12load_libcudaEPv(i8* %0) #9
  br label %9

9:                                                ; preds = %8, %5
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal4Cuda13lib_cuda_lockE release, align 1
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i1 zeroext %2) local_unnamed_addr #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %5 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.36, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  %10 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  br i1 %2, label %13, label %12

12:                                               ; preds = %11
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !37
  br label %27

13:                                               ; preds = %11
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @_ZN6Halide7Runtime8Internal4Cuda19create_cuda_contextEPvPPNS2_8CUctx_stE(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !37
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %20, %19 ], [ %14, %13 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %22, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !37
  br label %25

24:                                               ; preds = %16
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  br label %27

25:                                               ; preds = %21, %7
  %26 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %23, %21 ], [ %9, %7 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !37
  br label %27

27:                                               ; preds = %24, %25, %12
  %28 = phi i32 [ 0, %25 ], [ %17, %24 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret i32 %28
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal4Cuda19create_cuda_contextEPvPPNS2_8CUctx_stE(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = alloca i32, align 4
  %10 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  tail call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #9
  %12 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %13 = icmp eq i32 (i32)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = tail call i8* @malloc(i32 1024) #8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %15, i32 1023
  store i8 0, i8* %20, align 1, !tbaa !36
  %21 = tail call i8* @halide_string_to_string(i8* nonnull %15, i8* nonnull %20, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0)) #8
  %22 = ptrtoint i8* %21 to i32
  %23 = ptrtoint i8* %15 to i32
  %24 = add i32 %22, 1
  %25 = sub i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %15, i64 %26) #8
  tail call void @halide_error(i8* %0, i8* nonnull %15) #8
  br label %28

28:                                               ; preds = %19, %17
  tail call void @free(i8* %15) #8
  br label %251

29:                                               ; preds = %2
  %30 = tail call i32 %12(i32 0) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = tail call i8* @malloc(i32 1024) #8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %33, i32 1023
  store i8 0, i8* %36, align 1, !tbaa !36
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i8* [ %36, %35 ], [ null, %32 ]
  %39 = tail call i8* @halide_string_to_string(i8* %33, i8* %38, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0)) #8
  %40 = tail call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %30) #9
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i8* @halide_string_to_string(i8* %39, i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %46

44:                                               ; preds = %37
  %45 = tail call i8* @halide_string_to_string(i8* %39, i8* %38, i8* nonnull %40) #8
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi i8* [ %45, %44 ], [ %43, %42 ]
  br i1 %34, label %48, label %49

48:                                               ; preds = %46
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %56

49:                                               ; preds = %46
  %50 = ptrtoint i8* %47 to i32
  %51 = ptrtoint i8* %33 to i32
  %52 = sub i32 1, %51
  %53 = add i32 %52, %50
  %54 = sext i32 %53 to i64
  %55 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %54) #8
  tail call void @halide_error(i8* %0, i8* nonnull %33) #8
  br label %56

56:                                               ; preds = %48, %49
  call void @free(i8* %33) #8
  br label %251

57:                                               ; preds = %29
  %58 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #10
  store i32 0, i32* %3, align 4, !tbaa !39
  %59 = load i32 (i32*)*, i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE, align 4, !tbaa !37
  %60 = call i32 %59(i32* nonnull %3) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %102, label %62

62:                                               ; preds = %57
  %63 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %63) #10
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3
  store i8* %0, i8** %64, align 4, !tbaa !40
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4
  store i8 1, i8* %65, align 4, !tbaa !43
  %66 = call i8* @malloc(i32 1024) #8
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0
  store i8* %66, i8** %67, align 4, !tbaa !44
  %68 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1
  store i8* %66, i8** %68, align 4, !tbaa !45
  %69 = icmp eq i8* %66, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds i8, i8* %66, i32 1023
  store i8 0, i8* %71, align 1, !tbaa !36
  br label %72

72:                                               ; preds = %62, %70
  %73 = phi i8* [ %71, %70 ], [ null, %62 ]
  %74 = call i8* @halide_string_to_string(i8* %66, i8* %73, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0)) #8
  %75 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %60) #9
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i8* @halide_string_to_string(i8* %74, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %81

79:                                               ; preds = %72
  %80 = call i8* @halide_string_to_string(i8* %74, i8* %73, i8* nonnull %75) #8
  br label %81

81:                                               ; preds = %77, %79
  %82 = phi i8* [ %80, %79 ], [ %78, %77 ]
  %83 = load i8*, i8** %67, align 4, !tbaa !44
  %84 = icmp eq i8* %83, null
  %85 = load i8*, i8** %64, align 4, !tbaa !40
  br i1 %84, label %86, label %87

86:                                               ; preds = %81
  call void @halide_error(i8* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %96

87:                                               ; preds = %81
  %88 = ptrtoint i8* %82 to i32
  %89 = ptrtoint i8* %83 to i32
  %90 = sub i32 1, %89
  %91 = add i32 %90, %88
  %92 = sext i32 %91 to i64
  %93 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %85, i8* nonnull %83, i64 %92) #8
  %94 = load i8*, i8** %64, align 4, !tbaa !40
  %95 = load i8*, i8** %67, align 4, !tbaa !44
  call void @halide_error(i8* %94, i8* %95) #8
  br label %96

96:                                               ; preds = %87, %86
  %97 = load i8, i8* %65, align 4, !tbaa !43, !range !46
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %67, align 4, !tbaa !44
  call void @free(i8* %100) #8
  br label %101

101:                                              ; preds = %96, %99
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %63) #10
  br label %249

102:                                              ; preds = %57
  %103 = load i32, i32* %3, align 4, !tbaa !39
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0)) #8
  br label %249

106:                                              ; preds = %102
  %107 = call i32 @halide_get_gpu_device(i8* %0) #8
  %108 = icmp eq i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = icmp eq i32 %109, 1
  %111 = and i1 %108, %110
  %112 = xor i1 %108, true
  %113 = or i1 %110, %112
  %114 = select i1 %111, i32 0, i32 %107
  br i1 %113, label %144, label %115

115:                                              ; preds = %106
  %116 = icmp sgt i32 %109, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %115
  %118 = bitcast i32* %5 to i8*
  %119 = bitcast i32* %6 to i8*
  br label %120

120:                                              ; preds = %117, %138
  %121 = phi i32 [ 0, %117 ], [ %141, %138 ]
  %122 = phi i32 [ 0, %117 ], [ %140, %138 ]
  %123 = phi i32 [ -1, %117 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %118) #10
  %124 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE, align 4, !tbaa !37
  %125 = call i32 %124(i32* nonnull %5, i32 %121) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %119) #10
  store i32 0, i32* %6, align 4, !tbaa !39
  %128 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 4, !tbaa !37
  %129 = load i32, i32* %5, align 4, !tbaa !39
  %130 = call i32 %128(i32* nonnull %6, i32 16, i32 %129) #8
  %131 = icmp eq i32 %130, 0
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, %122
  %134 = select i1 %133, i32 %123, i32 %121
  %135 = select i1 %133, i32 %122, i32 %132
  %136 = select i1 %131, i32 %134, i32 %123
  %137 = select i1 %131, i32 %135, i32 %122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %119) #10
  br label %138

138:                                              ; preds = %120, %127
  %139 = phi i32 [ %136, %127 ], [ %123, %120 ]
  %140 = phi i32 [ %137, %127 ], [ %122, %120 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %118) #10
  %141 = add nuw nsw i32 %121, 1
  %142 = load i32, i32* %3, align 4, !tbaa !39
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %120, label %144, !llvm.loop !47

144:                                              ; preds = %138, %115, %106
  %145 = phi i32 [ %114, %106 ], [ -1, %115 ], [ %139, %138 ]
  %146 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %146) #10
  %147 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE, align 4, !tbaa !37
  %148 = call i32 %147(i32* nonnull %7, i32 %145) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0)) #8
  br label %247

151:                                              ; preds = %144
  %152 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE, align 4, !tbaa !37
  %153 = load i32, i32* %7, align 4, !tbaa !39
  %154 = call i32 %152(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i32 0, i32 %153) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %197, label %156

156:                                              ; preds = %151
  %157 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %154) #9
  %158 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %158) #10
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %159, align 4, !tbaa !40
  %160 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %160, align 4, !tbaa !43
  %161 = call i8* @malloc(i32 1024) #8
  %162 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %161, i8** %162, align 4, !tbaa !44
  %163 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %161, i8** %163, align 4, !tbaa !45
  %164 = icmp eq i8* %161, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %156
  %166 = getelementptr inbounds i8, i8* %161, i32 1023
  store i8 0, i8* %166, align 1, !tbaa !36
  br label %167

167:                                              ; preds = %156, %165
  %168 = phi i8* [ %166, %165 ], [ null, %156 ]
  %169 = call i8* @halide_string_to_string(i8* %161, i8* %168, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0)) #8
  %170 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %154) #9
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i8* @halide_string_to_string(i8* %169, i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %176

174:                                              ; preds = %167
  %175 = call i8* @halide_string_to_string(i8* %169, i8* %168, i8* nonnull %170) #8
  br label %176

176:                                              ; preds = %172, %174
  %177 = phi i8* [ %175, %174 ], [ %173, %172 ]
  %178 = load i8*, i8** %162, align 4, !tbaa !44
  %179 = icmp eq i8* %178, null
  %180 = load i8*, i8** %159, align 4, !tbaa !40
  br i1 %179, label %181, label %182

181:                                              ; preds = %176
  call void @halide_error(i8* %180, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %191

182:                                              ; preds = %176
  %183 = ptrtoint i8* %177 to i32
  %184 = ptrtoint i8* %178 to i32
  %185 = sub i32 1, %184
  %186 = add i32 %185, %183
  %187 = sext i32 %186 to i64
  %188 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %180, i8* nonnull %178, i64 %187) #8
  %189 = load i8*, i8** %159, align 4, !tbaa !40
  %190 = load i8*, i8** %162, align 4, !tbaa !44
  call void @halide_error(i8* %189, i8* %190) #8
  br label %191

191:                                              ; preds = %182, %181
  %192 = load i8, i8* %160, align 4, !tbaa !43, !range !46
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %162, align 4, !tbaa !44
  call void @free(i8* %195) #8
  br label %196

196:                                              ; preds = %191, %194
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %158) #10
  br label %247

197:                                              ; preds = %151
  %198 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %198) #10
  store i32 0, i32* %9, align 4, !tbaa !39
  %199 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE, align 4, !tbaa !37
  %200 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !37
  %201 = call i32 %199(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %200, i32* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %198) #10
  %202 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %202) #10
  %203 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %204 = call i32 %203(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %246, label %206

206:                                              ; preds = %197
  %207 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %207) #10
  %208 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %208, align 4, !tbaa !40
  %209 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %209, align 4, !tbaa !43
  %210 = call i8* @malloc(i32 1024) #8
  %211 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %210, i8** %211, align 4, !tbaa !44
  %212 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %210, i8** %212, align 4, !tbaa !45
  %213 = icmp eq i8* %210, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds i8, i8* %210, i32 1023
  store i8 0, i8* %215, align 1, !tbaa !36
  br label %216

216:                                              ; preds = %206, %214
  %217 = phi i8* [ %215, %214 ], [ null, %206 ]
  %218 = call i8* @halide_string_to_string(i8* %210, i8* %217, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0)) #8
  %219 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %204) #9
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call i8* @halide_string_to_string(i8* %218, i8* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %225

223:                                              ; preds = %216
  %224 = call i8* @halide_string_to_string(i8* %218, i8* %217, i8* nonnull %219) #8
  br label %225

225:                                              ; preds = %221, %223
  %226 = phi i8* [ %224, %223 ], [ %222, %221 ]
  %227 = load i8*, i8** %211, align 4, !tbaa !44
  %228 = icmp eq i8* %227, null
  %229 = load i8*, i8** %208, align 4, !tbaa !40
  br i1 %228, label %230, label %231

230:                                              ; preds = %225
  call void @halide_error(i8* %229, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %240

231:                                              ; preds = %225
  %232 = ptrtoint i8* %226 to i32
  %233 = ptrtoint i8* %227 to i32
  %234 = sub i32 1, %233
  %235 = add i32 %234, %232
  %236 = sext i32 %235 to i64
  %237 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %229, i8* nonnull %227, i64 %236) #8
  %238 = load i8*, i8** %208, align 4, !tbaa !40
  %239 = load i8*, i8** %211, align 4, !tbaa !44
  call void @halide_error(i8* %238, i8* %239) #8
  br label %240

240:                                              ; preds = %231, %230
  %241 = load i8, i8* %209, align 4, !tbaa !43, !range !46
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** %211, align 4, !tbaa !44
  call void @free(i8* %244) #8
  br label %245

245:                                              ; preds = %240, %243
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %207) #10
  br label %246

246:                                              ; preds = %197, %245
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %202) #10
  br label %247

247:                                              ; preds = %246, %196, %150
  %248 = phi i32 [ %148, %150 ], [ %154, %196 ], [ %204, %246 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %146) #10
  br label %249

249:                                              ; preds = %247, %105, %101
  %250 = phi i32 [ %60, %101 ], [ 100, %105 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #10
  br label %251

251:                                              ; preds = %56, %249, %28
  %252 = phi i32 [ 301, %28 ], [ %30, %56 ], [ %250, %249 ]
  ret i32 %252
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_release_context(i8* %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %1, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2) local_unnamed_addr #5 {
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: nounwind
define weak i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %0) local_unnamed_addr #4 {
  switch i32 %0, label %56 [
    i32 0, label %76
    i32 1, label %2
    i32 2, label %3
    i32 3, label %4
    i32 4, label %5
    i32 5, label %6
    i32 6, label %7
    i32 7, label %8
    i32 8, label %9
    i32 100, label %10
    i32 101, label %11
    i32 200, label %12
    i32 201, label %13
    i32 202, label %14
    i32 205, label %15
    i32 206, label %16
    i32 207, label %17
    i32 208, label %18
    i32 209, label %19
    i32 210, label %20
    i32 211, label %21
    i32 212, label %22
    i32 213, label %23
    i32 214, label %24
    i32 215, label %25
    i32 216, label %26
    i32 217, label %27
    i32 218, label %28
    i32 219, label %29
    i32 220, label %30
    i32 221, label %31
    i32 300, label %32
    i32 301, label %33
    i32 302, label %34
    i32 303, label %35
    i32 304, label %36
    i32 400, label %37
    i32 500, label %38
    i32 600, label %39
    i32 700, label %40
    i32 701, label %41
    i32 702, label %42
    i32 703, label %43
    i32 704, label %44
    i32 705, label %45
    i32 708, label %46
    i32 709, label %47
    i32 715, label %48
    i32 716, label %49
    i32 717, label %50
    i32 718, label %51
    i32 719, label %52
    i32 800, label %53
    i32 801, label %54
    i32 999, label %55
  ]

2:                                                ; preds = %1
  br label %76

3:                                                ; preds = %1
  br label %76

4:                                                ; preds = %1
  br label %76

5:                                                ; preds = %1
  br label %76

6:                                                ; preds = %1
  br label %76

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  br label %76

9:                                                ; preds = %1
  br label %76

10:                                               ; preds = %1
  br label %76

11:                                               ; preds = %1
  br label %76

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  br label %76

16:                                               ; preds = %1
  br label %76

17:                                               ; preds = %1
  br label %76

18:                                               ; preds = %1
  br label %76

19:                                               ; preds = %1
  br label %76

20:                                               ; preds = %1
  br label %76

21:                                               ; preds = %1
  br label %76

22:                                               ; preds = %1
  br label %76

23:                                               ; preds = %1
  br label %76

24:                                               ; preds = %1
  br label %76

25:                                               ; preds = %1
  br label %76

26:                                               ; preds = %1
  br label %76

27:                                               ; preds = %1
  br label %76

28:                                               ; preds = %1
  br label %76

29:                                               ; preds = %1
  br label %76

30:                                               ; preds = %1
  br label %76

31:                                               ; preds = %1
  br label %76

32:                                               ; preds = %1
  br label %76

33:                                               ; preds = %1
  br label %76

34:                                               ; preds = %1
  br label %76

35:                                               ; preds = %1
  br label %76

36:                                               ; preds = %1
  br label %76

37:                                               ; preds = %1
  br label %76

38:                                               ; preds = %1
  br label %76

39:                                               ; preds = %1
  br label %76

40:                                               ; preds = %1
  br label %76

41:                                               ; preds = %1
  br label %76

42:                                               ; preds = %1
  br label %76

43:                                               ; preds = %1
  br label %76

44:                                               ; preds = %1
  br label %76

45:                                               ; preds = %1
  br label %76

46:                                               ; preds = %1
  br label %76

47:                                               ; preds = %1
  br label %76

48:                                               ; preds = %1
  br label %76

49:                                               ; preds = %1
  br label %76

50:                                               ; preds = %1
  br label %76

51:                                               ; preds = %1
  br label %76

52:                                               ; preds = %1
  br label %76

53:                                               ; preds = %1
  br label %76

54:                                               ; preds = %1
  br label %76

55:                                               ; preds = %1
  br label %76

56:                                               ; preds = %1
  %57 = tail call i8* @malloc(i32 1024) #8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %60, align 1, !tbaa !36
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.194, i32 0, i32 0)) #8
  %64 = sext i32 %0 to i64
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #8
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %58, label %67, label %68

67:                                               ; preds = %61
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %75

68:                                               ; preds = %61
  %69 = ptrtoint i8* %66 to i32
  %70 = ptrtoint i8* %57 to i32
  %71 = add i32 %69, 1
  %72 = sub i32 %71, %70
  %73 = sext i32 %72 to i64
  %74 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %57, i64 %73) #8
  tail call void @halide_error(i8* null, i8* nonnull %57) #8
  br label %75

75:                                               ; preds = %68, %67
  tail call void @free(i8* %57) #8
  br label %76

76:                                               ; preds = %1, %75, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %77 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.195, i32 0, i32 0), %75 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i32 0, i32 0), %55 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i32 0, i32 0), %54 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.191, i32 0, i32 0), %53 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0), %52 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.189, i32 0, i32 0), %51 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.188, i32 0, i32 0), %50 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0), %49 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.186, i32 0, i32 0), %48 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.185, i32 0, i32 0), %47 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.184, i32 0, i32 0), %46 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.183, i32 0, i32 0), %45 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.182, i32 0, i32 0), %44 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.181, i32 0, i32 0), %43 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.180, i32 0, i32 0), %42 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.179, i32 0, i32 0), %41 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i32 0, i32 0), %40 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.177, i32 0, i32 0), %39 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i32 0, i32 0), %38 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.175, i32 0, i32 0), %37 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.174, i32 0, i32 0), %36 ], [ getelementptr inbounds ([37 x i8], [37 x i8]* @.str.173, i32 0, i32 0), %35 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.172, i32 0, i32 0), %34 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.171, i32 0, i32 0), %33 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.170, i32 0, i32 0), %32 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.169, i32 0, i32 0), %31 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.168, i32 0, i32 0), %30 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.167, i32 0, i32 0), %29 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.166, i32 0, i32 0), %28 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.165, i32 0, i32 0), %27 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i32 0, i32 0), %26 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i32 0, i32 0), %25 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.162, i32 0, i32 0), %24 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.161, i32 0, i32 0), %23 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.160, i32 0, i32 0), %22 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.159, i32 0, i32 0), %21 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i32 0, i32 0), %20 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.157, i32 0, i32 0), %19 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i32 0, i32 0), %18 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i32 0, i32 0), %17 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), %16 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.153, i32 0, i32 0), %15 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.152, i32 0, i32 0), %14 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i32 0, i32 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.150, i32 0, i32 0), %12 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0), %11 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i32 0, i32 0), %10 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i32 0, i32 0), %9 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.146, i32 0, i32 0), %8 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.145, i32 0, i32 0), %7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.144, i32 0, i32 0), %6 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.143, i32 0, i32 0), %5 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.142, i32 0, i32 0), %4 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.141, i32 0, i32 0), %3 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i32 0, i32 0), %2 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), %1 ]
  ret i8* %77
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* %1, i32 %2) local_unnamed_addr #5 {
  ret i1 true
}

; Function Attrs: nounwind
define weak %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* @_ZN6Halide7Runtime8Internal4Cuda14compile_kernelEPvPKci(i8* %0, i8* %1, i32 %2) #4 {
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i8*], align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = bitcast [1 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0)) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @atoi(i8* nonnull %10) #8
  %14 = inttoptr i32 %13 to i8*
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i8* [ %14, %12 ], [ inttoptr (i32 64 to i8*), %3 ]
  %17 = bitcast [1 x i8*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #10
  %18 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i32 0, i32 0
  store i8* %16, i8** %18, align 4, !tbaa !37
  %19 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE, align 4, !tbaa !37
  %21 = call i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull %6, i8* %1, i32 1, i32* nonnull %9, i8** nonnull %18) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %15
  %24 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %25, align 4, !tbaa !40
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %26, align 4, !tbaa !43
  %27 = call i8* @malloc(i32 1024) #8
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 4, !tbaa !44
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %27, i8** %29, align 4, !tbaa !45
  %30 = icmp eq i8* %27, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, i8* %27, i32 1023
  store i8 0, i8* %32, align 1, !tbaa !36
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi i8* [ %32, %31 ], [ null, %23 ]
  %35 = call i8* @halide_string_to_string(i8* %27, i8* %34, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0)) #8
  %36 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %21) #9
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i8* @halide_string_to_string(i8* %35, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %42

40:                                               ; preds = %33
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %34, i8* nonnull %36) #8
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %28, align 4, !tbaa !44
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %25, align 4, !tbaa !40
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %57

48:                                               ; preds = %42
  %49 = ptrtoint i8* %43 to i32
  %50 = ptrtoint i8* %44 to i32
  %51 = sub i32 1, %50
  %52 = add i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %53) #8
  %55 = load i8*, i8** %25, align 4, !tbaa !40
  %56 = load i8*, i8** %28, align 4, !tbaa !44
  call void @halide_error(i8* %55, i8* %56) #8
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i8, i8* %26, align 4, !tbaa !43, !range !46
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %28, align 4, !tbaa !44
  call void @free(i8* %61) #8
  br label %62

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %24) #10
  br label %65

63:                                               ; preds = %15
  %64 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6, align 4, !tbaa !37
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ null, %62 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %66
}

declare i8* @getenv(i8*) local_unnamed_addr #2

declare i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %6 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %7 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 4
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 0
  store i8* %0, i8** %9, align 4, !tbaa !48
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 2
  store i32 0, i32* %11, align 4, !tbaa !51
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 4, !tbaa !51
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #10
  %29 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %30 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i8* %0, i8** %1, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %29, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 4 dereferenceable(4) %7, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal4Cuda14compile_kernelEPvPKci, i8* %0, i8* %2, i32 %3) #9
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7, align 4, !tbaa !37
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.62, i32 0, i32 0)) #8
  call void @abort() #8
  br label %35

35:                                               ; preds = %27, %34, %31
  %36 = phi i32 [ -1, %27 ], [ 0, %34 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #10
  %37 = load i32, i32* %11, align 4, !tbaa !51
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40) #10
  %41 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %42 = call i32 %41(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40) #10
  br label %43

43:                                               ; preds = %4, %22, %35, %39
  %44 = phi i32 [ %36, %35 ], [ %36, %39 ], [ %25, %22 ], [ %12, %4 ]
  %45 = load i8*, i8** %9, align 4, !tbaa !48
  %46 = call i32 @halide_cuda_release_context(i8* %45) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %8) #10
  ret i32 %44
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 4 dereferenceable(4) %4, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* %5, i8* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", align 4
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !39
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !52
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !52
  store i32 %17, i32* %12, align 4, !tbaa !39
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 4, !tbaa !55
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %19
  %25 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3 to i32
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
  %35 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %34, align 4, !tbaa !56
  br label %38

36:                                               ; preds = %45
  %37 = icmp slt i32 %51, %30
  br i1 %37, label %38, label %58, !llvm.loop !57

38:                                               ; preds = %36, %32
  %39 = phi i32 [ 0, %32 ], [ %51, %36 ]
  %40 = add i32 %39, %29
  %41 = and i32 %40, %33
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %41, i32 2
  %43 = load i32, i32* %42, align 4, !tbaa !58
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %41, i32 0
  %47 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %46, align 4, !tbaa !60
  %48 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %47, %3
  %49 = icmp eq i32 %43, %20
  %50 = and i1 %49, %48
  %51 = add nuw nsw i32 %39, 1
  br i1 %50, label %52, label %36

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %41, i32 1
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %41, i32 3
  %55 = load i32, i32* %54, align 4, !tbaa !61
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 4, !tbaa !61
  %57 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %53, align 4, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %57, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 4, !tbaa !37
  br label %70

58:                                               ; preds = %38, %36, %24, %19
  %59 = tail call %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %5(i8* %6, i8* %7, i32 %8) #8
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #10
  %63 = load i32, i32* %12, align 4, !tbaa !39
  %64 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %64, align 4, !tbaa !60
  %65 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %59, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %65, align 4, !tbaa !62
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 2
  store i32 %63, i32* %66, align 4, !tbaa !58
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 3
  store i32 1, i32* %67, align 4, !tbaa !61
  %68 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #10
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %59, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 4, !tbaa !37
  br label %70

70:                                               ; preds = %69, %58, %61, %52
  %71 = phi i1 [ true, %52 ], [ true, %69 ], [ false, %58 ], [ false, %61 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %71
}

; Function Attrs: nounwind
define weak void @halide_cuda_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #10
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %8, align 4, !tbaa !51
  %9 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %7, i1 zeroext true) #8
  store i32 %9, i32* %8, align 4, !tbaa !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %12 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !50
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %17 = icmp eq i32 (i32)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %21 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !50
  %22 = call i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %21) #8
  store i32 %22, i32* %8, align 4, !tbaa !51
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !50
  %26 = ptrtoint i8* %1 to i32
  %27 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !55
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %25 to i32
  %31 = add i32 %30, %26
  %32 = mul i32 %31, -1640531527
  %33 = sub i32 32, %27
  %34 = lshr i32 %32, %33
  %35 = shl nuw i32 1, %27
  %36 = icmp eq i32 %27, 31
  br i1 %36, label %60, label %37

37:                                               ; preds = %29
  %38 = add nsw i32 %35, -1
  %39 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !56
  br label %42

40:                                               ; preds = %49
  %41 = icmp slt i32 %55, %35
  br i1 %41, label %42, label %60, !llvm.loop !57

42:                                               ; preds = %40, %37
  %43 = phi i32 [ 0, %37 ], [ %55, %40 ]
  %44 = add i32 %43, %34
  %45 = and i32 %44, %38
  %46 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %45, i32 2
  %47 = load i32, i32* %46, align 4, !tbaa !58
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %45, i32 0
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %50, align 4, !tbaa !60
  %52 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %51, %25
  %53 = icmp eq i32 %47, %26
  %54 = and i1 %53, %52
  %55 = add nuw nsw i32 %43, 1
  br i1 %54, label %56, label %40

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %45, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !61
  %59 = add i32 %58, -1
  store i32 %59, i32* %57, align 4, !tbaa !61
  br label %63

60:                                               ; preds = %40, %42, %24, %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.206, i32 0, i32 0)) #8
  call void @abort() #8
  %61 = load i32, i32* %8, align 4, !tbaa !51
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56, %60
  %64 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #10
  %65 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %66 = call i32 %65(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #10
  br label %67

67:                                               ; preds = %2, %19, %60, %63
  %68 = load i8*, i8** %6, align 4, !tbaa !48
  %69 = call i32 @halide_cuda_release_context(i8* %68) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #10
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_release_unused_device_allocations(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %2 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 4, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 4, !tbaa !37
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %11, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i32 0, i32 0
  %7 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 4, !tbaa !37
  %8 = load i32, i32* %6, align 4, !tbaa !63
  %9 = tail call i32 %7(i32 %8) #8
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i32 0, i32 4
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %10, align 4, !tbaa !65
  %12 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5 to i8*
  tail call void @free(i8* nonnull %12) #8
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %11, null
  br i1 %13, label %14, label %4, !llvm.loop !66

14:                                               ; preds = %4, %1
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @register_cuda_allocation_pool() #0 {
  store i32 (i8*)* @halide_cuda_release_unused_device_allocations, i32 (i8*)** getelementptr inbounds (%struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* @cuda_allocation_pool, i32 0, i32 0), align 4, !tbaa !67
  tail call void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* nonnull @cuda_allocation_pool) #8
  ret void
}

declare void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %163, label %8

8:                                                ; preds = %2
  %9 = trunc i64 %6 to i32
  %10 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %10) #10
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %11, align 4, !tbaa !48
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %13, align 4, !tbaa !51
  %14 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %12, i1 zeroext true) #8
  store i32 %14, i32* %13, align 4, !tbaa !51
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %159

16:                                               ; preds = %8
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %17 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !50
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %22 = icmp eq i32 (i32)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %24

24:                                               ; preds = %20, %23
  %25 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !50
  %27 = call i32 %25(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26) #8
  store i32 %27, i32* %13, align 4, !tbaa !51
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %159

29:                                               ; preds = %24
  %30 = call zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #9
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.66, i32 0, i32 0)) #8
  call void @abort() #8
  br label %32

32:                                               ; preds = %31, %29
  %33 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %33, label %34, label %142

34:                                               ; preds = %32
  %35 = call i8* @malloc(i32 20) #8
  %36 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !50
  %37 = getelementptr inbounds i8, i8* %35, i32 4
  %38 = bitcast i8* %37 to %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %36, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %38, align 4, !tbaa !69
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %40 = load i32, i32* %39, align 4, !tbaa !24
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %44 = load i8, i8* %43, align 1, !tbaa !23
  br label %83

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %46, align 8, !tbaa !25
  br label %48

48:                                               ; preds = %60, %45
  %49 = phi i32 [ 0, %45 ], [ %62, %60 ]
  %50 = phi i32 [ 0, %45 ], [ %61, %60 ]
  %51 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %49, i32 2
  %52 = load i32, i32* %51, align 4, !tbaa !26
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %49, i32 1
  %56 = load i32, i32* %55, align 4, !tbaa !31
  %57 = add nsw i32 %56, -1
  %58 = mul nsw i32 %57, %52
  %59 = add nsw i32 %58, %50
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i32 [ %59, %54 ], [ %50, %48 ]
  %62 = add nuw nsw i32 %49, 1
  %63 = icmp slt i32 %62, %40
  br i1 %63, label %48, label %64, !llvm.loop !70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %66 = load i8, i8* %65, align 1, !tbaa !23
  br label %67

67:                                               ; preds = %79, %64
  %68 = phi i32 [ 0, %64 ], [ %81, %79 ]
  %69 = phi i32 [ 0, %64 ], [ %80, %79 ]
  %70 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %68, i32 2
  %71 = load i32, i32* %70, align 4, !tbaa !26
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %68, i32 1
  %75 = load i32, i32* %74, align 4, !tbaa !31
  %76 = add nsw i32 %75, -1
  %77 = mul nsw i32 %76, %71
  %78 = add nsw i32 %77, %69
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i32 [ %78, %73 ], [ %69, %67 ]
  %81 = add nuw nsw i32 %68, 1
  %82 = icmp slt i32 %81, %40
  br i1 %82, label %67, label %83, !llvm.loop !71

83:                                               ; preds = %79, %42
  %84 = phi i8 [ %44, %42 ], [ %66, %79 ]
  %85 = phi i32 [ 0, %42 ], [ %61, %79 ]
  %86 = phi i32 [ 0, %42 ], [ %80, %79 ]
  %87 = zext i8 %84 to i32
  %88 = add nuw nsw i32 %87, 7
  %89 = lshr i32 %88, 3
  %90 = add nsw i32 %85, 1
  %91 = sub i32 %90, %86
  %92 = mul i32 %91, %89
  %93 = zext i32 %92 to i64
  %94 = call i64 @llvm.ctlz.i64(i64 %93, i1 true) #10, !range !72
  %95 = trunc i64 %94 to i32
  %96 = icmp ult i32 %95, 60
  br i1 %96, label %97, label %105

97:                                               ; preds = %83
  %98 = add nsw i64 %93, -1
  %99 = sub nuw nsw i32 60, %95
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %98, %100
  %102 = add nuw i64 %101, 1
  %103 = shl i64 %102, %100
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %83, %97
  %106 = phi i32 [ %104, %97 ], [ %92, %83 ]
  %107 = getelementptr inbounds i8, i8* %35, i32 12
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 4, !tbaa !73
  %109 = bitcast i8* %35 to i32*
  store i32 %9, i32* %109, align 4, !tbaa !63
  %110 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 4, !tbaa !37
  %111 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %110, null
  %112 = getelementptr inbounds i8, i8* %35, i32 8
  %113 = bitcast i8* %112 to %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"**
  br i1 %111, label %137, label %114

114:                                              ; preds = %105
  %115 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %36, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %113) #9
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %114
  %118 = call i8* @malloc(i32 1024) #8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, i8* %118, i32 1023
  store i8 0, i8* %121, align 1, !tbaa !36
  br label %122

122:                                              ; preds = %117, %120
  %123 = phi i8* [ %121, %120 ], [ null, %117 ]
  %124 = call i8* @halide_string_to_string(i8* %118, i8* %123, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.68, i32 0, i32 0)) #8
  %125 = sext i32 %115 to i64
  %126 = call i8* @halide_int64_to_string(i8* %124, i8* %123, i64 %125, i32 1) #8
  %127 = call i8* @halide_string_to_string(i8* %126, i8* %123, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %119, label %128, label %129

128:                                              ; preds = %122
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %136

129:                                              ; preds = %122
  %130 = ptrtoint i8* %127 to i32
  %131 = ptrtoint i8* %118 to i32
  %132 = add i32 %130, 1
  %133 = sub i32 %132, %131
  %134 = sext i32 %133 to i64
  %135 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %118, i64 %134) #8
  call void @halide_error(i8* %0, i8* nonnull %118) #8
  br label %136

136:                                              ; preds = %129, %128
  call void @free(i8* %118) #8
  br label %138

137:                                              ; preds = %105
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %113, align 4, !tbaa !74
  br label %138

138:                                              ; preds = %114, %136, %137
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %139 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 4, !tbaa !37
  %140 = getelementptr inbounds i8, i8* %35, i32 16
  %141 = bitcast i8* %140 to %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"**
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %139, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %141, align 4, !tbaa !65
  store i8* %35, i8** bitcast (%"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE to i8**), align 4, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  br label %145

142:                                              ; preds = %32
  %143 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 4, !tbaa !37
  %144 = call i32 %143(i32 %9) #8
  br label %145

145:                                              ; preds = %138, %142
  %146 = phi i32 [ 0, %138 ], [ %144, %142 ]
  %147 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %148 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %147, align 8, !tbaa !75
  %149 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %148, i32 0, i32 15
  %150 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %149, align 4, !tbaa !76
  %151 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %150, i32 0, i32 1
  %152 = load void ()*, void ()** %151, align 4, !tbaa !78
  call void %152() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %147, align 8, !tbaa !75
  store i64 0, i64* %5, align 8, !tbaa !22
  %153 = load i32, i32* %13, align 4, !tbaa !51
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %156) #10
  %157 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %158 = call i32 %157(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %156) #10
  br label %159

159:                                              ; preds = %8, %24, %145, %155
  %160 = phi i32 [ %146, %145 ], [ %146, %155 ], [ %27, %24 ], [ %14, %8 ]
  %161 = load i8*, i8** %11, align 4, !tbaa !48
  %162 = call i32 @halide_cuda_release_context(i8* %161) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %10) #10
  br label %163

163:                                              ; preds = %2, %159
  %164 = phi i32 [ %160, %159 ], [ 0, %2 ]
  ret i32 %164
}

declare zeroext i1 @halide_can_reuse_device_allocations(i8*) local_unnamed_addr #2

declare i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_release(i8* %0) #4 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %5 = icmp eq i32 (i32)* %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #10
  %8 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %2, i1 zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %6
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !37
  %12 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %10
  %14 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %15 = call i32 %14(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* nonnull %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE, align 4, !tbaa !37
  %19 = call i32 %18() #8
  %20 = and i32 %19, -5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.70, i32 0, i32 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %13, %22, %17
  %24 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 0)) #8
  %26 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !80
  %27 = icmp eq i32 %26, 0
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 1), align 4
  %29 = icmp eq i32 %28, 31
  %30 = or i1 %27, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %23
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !56
  br label %33

33:                                               ; preds = %59, %31
  %34 = phi i32 [ %60, %59 ], [ %28, %31 ]
  %35 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %61, %59 ], [ %32, %31 ]
  %36 = phi i32 [ %62, %59 ], [ 0, %31 ]
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 2
  %38 = load i32, i32* %37, align 4, !tbaa !58
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 0
  %42 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %41, align 4, !tbaa !60
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %42, %25
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 3
  %46 = load i32, i32* %45, align 4, !tbaa !61
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE, align 4, !tbaa !37
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 1
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %50, align 4, !tbaa !62
  %52 = call i32 %49(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %51) #8
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !56
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i32 %36, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %54, align 4, !tbaa !62
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i32 %36, i32 2
  store i32 1, i32* %55, align 4, !tbaa !58
  %56 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !80
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !80
  %58 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !55
  br label %59

59:                                               ; preds = %48, %44, %40, %33
  %60 = phi i32 [ %34, %33 ], [ %34, %40 ], [ %34, %44 ], [ %58, %48 ]
  %61 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %35, %33 ], [ %35, %40 ], [ %35, %44 ], [ %53, %48 ]
  %62 = add nuw nsw i32 %36, 1
  %63 = shl nuw i32 1, %60
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %33, label %65, !llvm.loop !81

65:                                               ; preds = %59, %23
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 0)) #8
  %66 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #10
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %68 = call i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %69 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !37
  %70 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  %71 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE, align 4, !tbaa !37
  %74 = call i32 %73() #8
  %75 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE, align 4, !tbaa !37
  %76 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  %77 = call i32 %75(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %76) #8
  %78 = and i32 %77, -5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.72, i32 0, i32 0)) #8
  call void @abort() #8
  br label %81

81:                                               ; preds = %80, %72
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 4, !tbaa !37
  br label %82

82:                                               ; preds = %81, %65
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #10
  br label %83

83:                                               ; preds = %82, %10
  %84 = call i32 @halide_cuda_release_context(i8* %0) #9
  br label %85

85:                                               ; preds = %6, %83
  %86 = phi i32 [ 0, %83 ], [ %8, %6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #10
  br label %87

87:                                               ; preds = %1, %85
  %88 = phi i32 [ %86, %85 ], [ 0, %1 ]
  ret i32 %88
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %9, align 4, !tbaa !48
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %11, align 4, !tbaa !51
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %300

14:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 4, !tbaa !51
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %300

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %33 = load i8, i8* %32, align 1, !tbaa !23
  br label %72

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !25
  br label %37

37:                                               ; preds = %49, %34
  %38 = phi i32 [ 0, %34 ], [ %51, %49 ]
  %39 = phi i32 [ 0, %34 ], [ %50, %49 ]
  %40 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %38, i32 2
  %41 = load i32, i32* %40, align 4, !tbaa !26
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %38, i32 1
  %45 = load i32, i32* %44, align 4, !tbaa !31
  %46 = add nsw i32 %45, -1
  %47 = mul nsw i32 %46, %41
  %48 = add nsw i32 %47, %39
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %48, %43 ], [ %39, %37 ]
  %51 = add nuw nsw i32 %38, 1
  %52 = icmp slt i32 %51, %29
  br i1 %52, label %37, label %53, !llvm.loop !70

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %55 = load i8, i8* %54, align 1, !tbaa !23
  br label %56

56:                                               ; preds = %68, %53
  %57 = phi i32 [ 0, %53 ], [ %70, %68 ]
  %58 = phi i32 [ 0, %53 ], [ %69, %68 ]
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %57, i32 2
  %60 = load i32, i32* %59, align 4, !tbaa !26
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %57, i32 1
  %64 = load i32, i32* %63, align 4, !tbaa !31
  %65 = add nsw i32 %64, -1
  %66 = mul nsw i32 %65, %60
  %67 = add nsw i32 %66, %58
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i32 [ %67, %62 ], [ %58, %56 ]
  %70 = add nuw nsw i32 %57, 1
  %71 = icmp slt i32 %70, %29
  br i1 %71, label %56, label %72, !llvm.loop !71

72:                                               ; preds = %68, %31
  %73 = phi i8 [ %33, %31 ], [ %55, %68 ]
  %74 = phi i32 [ 0, %31 ], [ %50, %68 ]
  %75 = phi i32 [ 0, %31 ], [ %69, %68 ]
  %76 = zext i8 %73 to i32
  %77 = add nuw nsw i32 %76, 7
  %78 = lshr i32 %77, 3
  %79 = add nsw i32 %74, 1
  %80 = sub i32 %79, %75
  %81 = mul i32 %80, %78
  %82 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = zext i32 %81 to i64
  %85 = call i64 @llvm.ctlz.i64(i64 %84, i1 true) #10, !range !72
  %86 = trunc i64 %85 to i32
  %87 = icmp ult i32 %86, 60
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = add nsw i64 %84, -1
  %90 = sub nuw nsw i32 60, %86
  %91 = zext i32 %90 to i64
  %92 = lshr i64 %89, %91
  %93 = add nuw i64 %92, 1
  %94 = shl i64 %93, %91
  %95 = trunc i64 %94 to i32
  br label %96

96:                                               ; preds = %88, %83, %72
  %97 = phi i32 [ %81, %72 ], [ %95, %88 ], [ %81, %83 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.74, i32 0, i32 0)) #8
  call void @abort() #8
  br label %100

100:                                              ; preds = %99, %96
  %101 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %102 = load i64, i64* %101, align 8, !tbaa !22
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %28, align 4, !tbaa !24
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %115

109:                                              ; preds = %100
  %110 = call zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %97) #9
  br i1 %110, label %292, label %111

111:                                              ; preds = %109
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.75, i32 0, i32 0)) #8
  call void @abort() #8
  br label %292

112:                                              ; preds = %124, %104
  %113 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %113) #10
  store i32 0, i32* %5, align 4, !tbaa !39
  %114 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %114, label %128, label %223

115:                                              ; preds = %107, %124
  %116 = phi i32 [ %105, %107 ], [ %125, %124 ]
  %117 = phi i32 [ 0, %107 ], [ %126, %124 ]
  %118 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %108, align 8, !tbaa !25
  %119 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %118, i32 %117, i32 2
  %120 = load i32, i32* %119, align 4, !tbaa !26
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.76, i32 0, i32 0)) #8
  call void @abort() #8
  %123 = load i32, i32* %28, align 4, !tbaa !24
  br label %124

124:                                              ; preds = %115, %122
  %125 = phi i32 [ %116, %115 ], [ %123, %122 ]
  %126 = add nuw nsw i32 %117, 1
  %127 = icmp slt i32 %126, %125
  br i1 %127, label %115, label %112, !llvm.loop !82

128:                                              ; preds = %112
  %129 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %129) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 4, !tbaa !37
  %130 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 4, !tbaa !37
  %131 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %130, null
  br i1 %131, label %156, label %132

132:                                              ; preds = %128
  %133 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !50
  %134 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %133, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %6) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %132
  %137 = call i8* @malloc(i32 1024) #8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds i8, i8* %137, i32 1023
  store i8 0, i8* %140, align 1, !tbaa !36
  br label %141

141:                                              ; preds = %136, %139
  %142 = phi i8* [ %140, %139 ], [ null, %136 ]
  %143 = call i8* @halide_string_to_string(i8* %137, i8* %142, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @.str.78, i32 0, i32 0)) #8
  %144 = sext i32 %134 to i64
  %145 = call i8* @halide_int64_to_string(i8* %143, i8* %142, i64 %144, i32 1) #8
  %146 = call i8* @halide_string_to_string(i8* %145, i8* %142, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %138, label %147, label %148

147:                                              ; preds = %141
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %155

148:                                              ; preds = %141
  %149 = ptrtoint i8* %146 to i32
  %150 = ptrtoint i8* %137 to i32
  %151 = add i32 %149, 1
  %152 = sub i32 %151, %150
  %153 = sext i32 %152 to i64
  %154 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %137, i64 %153) #8
  call void @halide_error(i8* %0, i8* nonnull %137) #8
  br label %155

155:                                              ; preds = %148, %147
  call void @free(i8* %137) #8
  br label %156

156:                                              ; preds = %132, %155, %128
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %157 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 4, !tbaa !37
  %158 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %157, null
  br i1 %158, label %210, label %159

159:                                              ; preds = %156
  %160 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4
  %161 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 4
  br label %162

162:                                              ; preds = %159, %192
  %163 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %157, %159 ], [ %197, %192 ]
  %164 = phi i32 [ 0, %159 ], [ %196, %192 ]
  %165 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ @_ZN6Halide7Runtime8Internal4Cuda9free_listE, %159 ], [ %195, %192 ]
  %166 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ null, %159 ], [ %194, %192 ]
  %167 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ null, %159 ], [ %193, %192 ]
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %163, i32 0, i32 3
  %169 = load i32, i32* %168, align 4, !tbaa !73
  %170 = icmp ugt i32 %97, %169
  br i1 %170, label %189, label %171

171:                                              ; preds = %162
  %172 = lshr i32 %169, 3
  %173 = mul nuw i32 %172, 7
  %174 = icmp ult i32 %97, %173
  br i1 %174, label %189, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %163, i32 0, i32 1
  %177 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %176, align 4, !tbaa !69
  %178 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %160, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %163, i32 0, i32 2
  %181 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %180, align 4, !tbaa !74
  %182 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %161, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %167, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %167, i32 0, i32 3
  %187 = load i32, i32* %186, align 4, !tbaa !73
  %188 = icmp ugt i32 %187, %169
  br i1 %188, label %192, label %189

189:                                              ; preds = %185, %179, %175, %171, %162
  %190 = icmp ugt i32 %164, 32
  br i1 %190, label %191, label %192

191:                                              ; preds = %189
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %165, align 4, !tbaa !37
  br label %199

192:                                              ; preds = %189, %183, %185
  %193 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %163, %185 ], [ %163, %183 ], [ %167, %189 ]
  %194 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %165, %185 ], [ %165, %183 ], [ %166, %189 ]
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %163, i32 0, i32 4
  %196 = add nuw nsw i32 %164, 1
  %197 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %195, align 4, !tbaa !37
  %198 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %197, null
  br i1 %198, label %199, label %162, !llvm.loop !83

199:                                              ; preds = %192, %191
  %200 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %167, %191 ], [ %193, %192 ]
  %201 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %166, %191 ], [ %194, %192 ]
  %202 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %163, %191 ], [ null, %192 ]
  %203 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200, i32 0, i32 0
  %206 = load i32, i32* %205, align 4, !tbaa !63
  store i32 %206, i32* %5, align 4, !tbaa !39
  %207 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200, i32 0, i32 4
  %208 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %207, align 4, !tbaa !65
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %208, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %201, align 4, !tbaa !37
  %209 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200 to i8*
  call void @free(i8* nonnull %209) #8
  br label %210

210:                                              ; preds = %156, %199, %204
  %211 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %202, %204 ], [ %202, %199 ], [ null, %156 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %129) #10
  %212 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %211, null
  br i1 %212, label %223, label %213

213:                                              ; preds = %210, %213
  %214 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %216, %213 ], [ %211, %210 ]
  %215 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %214, i32 0, i32 4
  %216 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %215, align 4, !tbaa !65
  %217 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 4, !tbaa !37
  %218 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %214, i32 0, i32 0
  %219 = load i32, i32* %218, align 4, !tbaa !63
  %220 = call i32 %217(i32 %219) #8
  %221 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %214 to i8*
  call void @free(i8* nonnull %221) #8
  %222 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %216, null
  br i1 %222, label %223, label %213, !llvm.loop !84

223:                                              ; preds = %213, %112, %210
  %224 = load i32, i32* %5, align 4, !tbaa !39
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %283

226:                                              ; preds = %223
  %227 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE, align 4, !tbaa !37
  %228 = call i32 %227(i32* nonnull %5, i32 %97) #8
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %232 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE, align 4, !tbaa !37
  %233 = call i32 %232(i32* nonnull %5, i32 %97) #8
  br label %234

234:                                              ; preds = %230, %226
  %235 = phi i32 [ %233, %230 ], [ %228, %226 ]
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %278, label %237

237:                                              ; preds = %234
  %238 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %235) #9
  %239 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %239) #10
  %240 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %240, align 4, !tbaa !40
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %241, align 4, !tbaa !43
  %242 = call i8* @malloc(i32 1024) #8
  %243 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %242, i8** %243, align 4, !tbaa !44
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %242, i8** %244, align 4, !tbaa !45
  %245 = icmp eq i8* %242, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds i8, i8* %242, i32 1023
  store i8 0, i8* %247, align 1, !tbaa !36
  br label %248

248:                                              ; preds = %237, %246
  %249 = phi i8* [ %247, %246 ], [ null, %237 ]
  %250 = call i8* @halide_string_to_string(i8* %242, i8* %249, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0)) #8
  %251 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %235) #9
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = call i8* @halide_string_to_string(i8* %250, i8* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %257

255:                                              ; preds = %248
  %256 = call i8* @halide_string_to_string(i8* %250, i8* %249, i8* nonnull %251) #8
  br label %257

257:                                              ; preds = %253, %255
  %258 = phi i8* [ %256, %255 ], [ %254, %253 ]
  %259 = load i8*, i8** %243, align 4, !tbaa !44
  %260 = icmp eq i8* %259, null
  %261 = load i8*, i8** %240, align 4, !tbaa !40
  br i1 %260, label %262, label %263

262:                                              ; preds = %257
  call void @halide_error(i8* %261, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %272

263:                                              ; preds = %257
  %264 = ptrtoint i8* %258 to i32
  %265 = ptrtoint i8* %259 to i32
  %266 = sub i32 1, %265
  %267 = add i32 %266, %264
  %268 = sext i32 %267 to i64
  %269 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %261, i8* nonnull %259, i64 %268) #8
  %270 = load i8*, i8** %240, align 4, !tbaa !40
  %271 = load i8*, i8** %243, align 4, !tbaa !44
  call void @halide_error(i8* %270, i8* %271) #8
  br label %272

272:                                              ; preds = %263, %262
  %273 = load i8, i8* %241, align 4, !tbaa !43, !range !46
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = load i8*, i8** %243, align 4, !tbaa !44
  call void @free(i8* %276) #8
  br label %277

277:                                              ; preds = %275, %272
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %239) #10
  br label %290

278:                                              ; preds = %234
  %279 = load i32, i32* %5, align 4, !tbaa !39
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.81, i32 0, i32 0)) #8
  call void @abort() #8
  %282 = load i32, i32* %5, align 4, !tbaa !39
  br label %283

283:                                              ; preds = %223, %281, %278
  %284 = phi i32 [ %224, %223 ], [ %282, %281 ], [ %279, %278 ]
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %101, align 8, !tbaa !22
  %286 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %struct.halide_device_interface_t** %286, align 8, !tbaa !75
  %287 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, i32 0, i32 15), align 4, !tbaa !76
  %288 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %287, i32 0, i32 0
  %289 = load void ()*, void ()** %288, align 4, !tbaa !85
  call void %289() #8
  br label %290

290:                                              ; preds = %277, %283
  %291 = phi i32 [ 0, %283 ], [ %235, %277 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %113) #10
  br label %292

292:                                              ; preds = %290, %111, %109
  %293 = phi i32 [ 0, %109 ], [ 0, %111 ], [ %291, %290 ]
  %294 = load i32, i32* %11, align 4, !tbaa !51
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %297) #10
  %298 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %299 = call i32 %298(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %297) #10
  br label %300

300:                                              ; preds = %2, %22, %292, %296
  %301 = phi i32 [ %293, %292 ], [ %293, %296 ], [ %25, %22 ], [ %12, %2 ]
  %302 = load i8*, i8** %9, align 4, !tbaa !48
  %303 = call i32 @halide_cuda_release_context(i8* %302) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %8) #10
  ret i32 %301
}

; Function Attrs: nounwind
define weak i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4, i1 zeroext %5, i1 zeroext %6) local_unnamed_addr #4 {
  %8 = icmp sgt i32 %4, 16
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = tail call i8* @malloc(i32 1024) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.82, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i32 1023
  store i8 0, i8* %15, align 1, !tbaa !36
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.82, i32 0, i32 0)) #8
  %17 = ptrtoint i8* %16 to i32
  %18 = ptrtoint i8* %10 to i32
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  %21 = sext i32 %20 to i64
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %21) #8
  tail call void @halide_error(i8* %0, i8* nonnull %10) #8
  br label %23

23:                                               ; preds = %14, %12
  tail call void @free(i8* %10) #8
  br label %121

24:                                               ; preds = %7
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %4, -1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %27
  %29 = load i64, i64* %28, align 8, !tbaa !3
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %26
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %27
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 5, i32 %27
  br label %100

35:                                               ; preds = %24
  %36 = trunc i64 %2 to i32
  %37 = inttoptr i32 %36 to i8*
  %38 = trunc i64 %3 to i32
  %39 = inttoptr i32 %38 to i8*
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6
  %41 = xor i1 %6, true
  %42 = or i1 %41, %5
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE, align 4, !tbaa !37
  %45 = load i64, i64* %40, align 8, !tbaa !12
  %46 = trunc i64 %45 to i32
  %47 = tail call i32 %44(i8* %39, i32 %36, i32 %46) #8
  br label %69

48:                                               ; preds = %35
  %49 = xor i1 %5, true
  %50 = or i1 %49, %6
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE, align 4, !tbaa !37
  %53 = load i64, i64* %40, align 8, !tbaa !12
  %54 = trunc i64 %53 to i32
  %55 = tail call i32 %52(i32 %38, i8* %37, i32 %54) #8
  br label %69

56:                                               ; preds = %48
  %57 = or i1 %5, %6
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE, align 4, !tbaa !37
  %60 = load i64, i64* %40, align 8, !tbaa !12
  %61 = trunc i64 %60 to i32
  %62 = tail call i32 %59(i32 %38, i32 %36, i32 %61) #8
  br label %69

63:                                               ; preds = %56
  %64 = icmp eq i64 %3, %2
  br i1 %64, label %121, label %65

65:                                               ; preds = %63
  %66 = load i64, i64* %40, align 8, !tbaa !12
  %67 = trunc i64 %66 to i32
  %68 = tail call i8* @memcpy(i8* %39, i8* %37, i32 %67) #8
  br label %121

69:                                               ; preds = %51, %58, %43
  %70 = phi i32 [ %62, %58 ], [ %55, %51 ], [ %47, %43 ]
  %71 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), %51 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), %43 ]
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %69
  %74 = tail call i8* @malloc(i32 1024) #8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, i8* %74, i32 1023
  store i8 0, i8* %77, align 1, !tbaa !36
  br label %78

78:                                               ; preds = %73, %76
  %79 = phi i8* [ %77, %76 ], [ null, %73 ]
  %80 = tail call i8* @halide_string_to_string(i8* %74, i8* %79, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)) #8
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %79, i8* nonnull %71) #8
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %79, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0)) #8
  %83 = tail call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %70) #9
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = tail call i8* @halide_string_to_string(i8* %82, i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %89

87:                                               ; preds = %78
  %88 = tail call i8* @halide_string_to_string(i8* %82, i8* %79, i8* nonnull %83) #8
  br label %89

89:                                               ; preds = %85, %87
  %90 = phi i8* [ %88, %87 ], [ %86, %85 ]
  br i1 %75, label %91, label %92

91:                                               ; preds = %89
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %99

92:                                               ; preds = %89
  %93 = ptrtoint i8* %90 to i32
  %94 = ptrtoint i8* %74 to i32
  %95 = sub i32 1, %94
  %96 = add i32 %95, %93
  %97 = sext i32 %96 to i64
  %98 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %74, i64 %97) #8
  tail call void @halide_error(i8* %0, i8* nonnull %74) #8
  br label %99

99:                                               ; preds = %91, %92
  call void @free(i8* %74) #8
  br label %121

100:                                              ; preds = %32, %110
  %101 = phi i32 [ 0, %32 ], [ %117, %110 ]
  %102 = phi i32 [ 0, %32 ], [ %116, %110 ]
  %103 = phi i32 [ 0, %32 ], [ %113, %110 ]
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %2
  %106 = sext i32 %102 to i64
  %107 = add i64 %106, %3
  %108 = tail call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %105, i64 %107, i32 %27, i1 zeroext %5, i1 zeroext %6) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %100
  %111 = load i64, i64* %33, align 8, !tbaa !3
  %112 = trunc i64 %111 to i32
  %113 = add i32 %103, %112
  %114 = load i64, i64* %34, align 8, !tbaa !3
  %115 = trunc i64 %114 to i32
  %116 = add i32 %102, %115
  %117 = add nuw nsw i32 %101, 1
  %118 = load i64, i64* %28, align 8, !tbaa !3
  %119 = trunc i64 %118 to i32
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %100, label %121, !llvm.loop !86

121:                                              ; preds = %110, %100, %26, %63, %65, %69, %99, %23
  %122 = phi i32 [ -1, %23 ], [ %70, %99 ], [ 0, %69 ], [ 0, %65 ], [ 0, %63 ], [ 0, %26 ], [ 0, %110 ], [ %108, %100 ]
  ret i32 %122
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %8 = icmp eq %struct.halide_device_interface_t* %2, null
  %9 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.97, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %14 = load i64, i64* %13, align 8, !tbaa !87
  %15 = and i64 %14, 2
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %19 = load i8*, i8** %18, align 4, !tbaa !15
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !75
  %24 = icmp eq %struct.halide_device_interface_t* %23, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  br i1 %9, label %92, label %26

26:                                               ; preds = %25
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.98, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %92

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !tbaa !75
  %30 = icmp eq %struct.halide_device_interface_t* %29, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %30, label %31, label %43

31:                                               ; preds = %21, %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !22
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = and i64 %14, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %40 = load i8*, i8** %39, align 4, !tbaa !15
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %38
  br label %43

43:                                               ; preds = %42, %27, %31, %38
  %44 = phi i1 [ true, %38 ], [ false, %42 ], [ true, %31 ], [ true, %27 ]
  br i1 %8, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8, !tbaa !22
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.100, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %51) #10
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %6, %struct.halide_buffer_t* nonnull %1, i1 zeroext %44, %struct.halide_buffer_t* %3, i1 zeroext %8) #9
  %52 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %52) #10
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 0
  store i8* %0, i8** %53, align 4, !tbaa !48
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !50
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 2
  store i32 0, i32* %55, align 4, !tbaa !51
  %56 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %54, i1 zeroext true) #8
  store i32 %56, i32* %55, align 4, !tbaa !51
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %59 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !50
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %64 = icmp eq i32 (i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %68 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !50
  %69 = call i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %68) #8
  store i32 %69, i32* %55, align 4, !tbaa !51
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !9
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2
  %75 = load i64, i64* %74, align 8, !tbaa !14
  %76 = add i64 %75, %73
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %80 = load i32, i32* %79, align 4, !tbaa !24
  %81 = call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %6, i64 %76, i64 %78, i32 %80, i1 zeroext %44, i1 zeroext %8) #9
  %82 = load i32, i32* %55, align 4, !tbaa !51
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #10
  %86 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %87 = call i32 %86(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10
  br label %88

88:                                               ; preds = %50, %66, %71, %84
  %89 = phi i32 [ %81, %71 ], [ %81, %84 ], [ %69, %66 ], [ %56, %50 ]
  %90 = load i8*, i8** %53, align 4, !tbaa !48
  %91 = call i32 @halide_cuda_release_context(i8* %90) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %52) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %51) #10
  br label %92

92:                                               ; preds = %26, %25, %88
  %93 = phi i32 [ %89, %88 ], [ -42, %25 ], [ -42, %26 ]
  ret i32 %93
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0
  store i64 %6, i64* %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1
  store %struct.halide_device_interface_t* %9, %struct.halide_device_interface_t** %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !87
  %13 = and i64 %12, 2
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !87
  %16 = and i64 %15, -3
  %17 = or i64 %16, %13
  store i64 %17, i64* %14, align 8, !tbaa !87
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %27, label %12, label %28, !llvm.loop !88

28:                                               ; preds = %12, %3
  %29 = phi i64 [ 0, %3 ], [ %25, %12 ]
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %29, %35
  %37 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9
  ret i32 %37
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #5 {
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
  %23 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9
  ret i32 %23
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #5 {
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %struct.halide_buffer_t* %1) #9
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #9
  ret i32 %3
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %7 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %8, align 4, !tbaa !48
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %10, align 4, !tbaa !51
  %11 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %9, i1 zeroext true) #8
  store i32 %11, i32* %10, align 4, !tbaa !51
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !50
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %19 = icmp eq i32 (i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !50
  %24 = call i32 %22(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %23) #8
  store i32 %24, i32* %10, align 4, !tbaa !51
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %21
  %27 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 4, !tbaa !37
  %28 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #10
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !50
  %32 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %5) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = call i8* @malloc(i32 1024) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i32 1023
  store i8 0, i8* %38, align 1, !tbaa !36
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i32 0, i32 0)) #8
  %42 = sext i32 %32 to i64
  %43 = call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %42, i32 1) #8
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %36, label %45, label %46

45:                                               ; preds = %39
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %53

46:                                               ; preds = %39
  %47 = ptrtoint i8* %44 to i32
  %48 = ptrtoint i8* %35 to i32
  %49 = add i32 %47, 1
  %50 = sub i32 %49, %48
  %51 = sext i32 %50 to i64
  %52 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %51) #8
  call void @halide_error(i8* %0, i8* nonnull %35) #8
  br label %53

53:                                               ; preds = %46, %45
  call void @free(i8* %35) #8
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 4, !tbaa !37
  %56 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5, align 4, !tbaa !37
  %57 = call i32 %55(%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %56) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #10
  br label %61

58:                                               ; preds = %26
  %59 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE, align 4, !tbaa !37
  %60 = call i32 %59() #8
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %57, %54 ], [ %60, %58 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %61
  %65 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %65) #10
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3
  store i8* %0, i8** %66, align 4, !tbaa !40
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4
  store i8 1, i8* %67, align 4, !tbaa !43
  %68 = call i8* @malloc(i32 1024) #8
  %69 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0
  store i8* %68, i8** %69, align 4, !tbaa !44
  %70 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1
  store i8* %68, i8** %70, align 4, !tbaa !45
  %71 = icmp eq i8* %68, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %68, i32 1023
  store i8 0, i8* %73, align 1, !tbaa !36
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi i8* [ %73, %72 ], [ null, %64 ]
  %76 = call i8* @halide_string_to_string(i8* %68, i8* %75, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.111, i32 0, i32 0)) #8
  %77 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %62) #9
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i8* @halide_string_to_string(i8* %76, i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %83

81:                                               ; preds = %74
  %82 = call i8* @halide_string_to_string(i8* %76, i8* %75, i8* nonnull %77) #8
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ]
  %85 = load i8*, i8** %69, align 4, !tbaa !44
  %86 = icmp eq i8* %85, null
  %87 = load i8*, i8** %66, align 4, !tbaa !40
  br i1 %86, label %88, label %89

88:                                               ; preds = %83
  call void @halide_error(i8* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %98

89:                                               ; preds = %83
  %90 = ptrtoint i8* %84 to i32
  %91 = ptrtoint i8* %85 to i32
  %92 = sub i32 1, %91
  %93 = add i32 %92, %90
  %94 = sext i32 %93 to i64
  %95 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %87, i8* nonnull %85, i64 %94) #8
  %96 = load i8*, i8** %66, align 4, !tbaa !40
  %97 = load i8*, i8** %69, align 4, !tbaa !44
  call void @halide_error(i8* %96, i8* %97) #8
  br label %98

98:                                               ; preds = %89, %88
  %99 = load i8, i8* %67, align 4, !tbaa !43, !range !46
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %69, align 4, !tbaa !44
  call void @free(i8* %102) #8
  br label %103

103:                                              ; preds = %98, %101
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %65) #10
  br label %104

104:                                              ; preds = %103, %61
  %105 = load i32, i32* %10, align 4, !tbaa !51
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %108) #10
  %109 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %110 = call i32 %109(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %108) #10
  br label %111

111:                                              ; preds = %2, %21, %104, %107
  %112 = phi i32 [ %62, %104 ], [ %62, %107 ], [ %24, %21 ], [ %11, %2 ]
  %113 = load i8*, i8** %8, align 4, !tbaa !48
  %114 = call i32 @halide_cuda_release_context(i8* %113) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #10
  ret i32 %112
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %19 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %20 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, align 4
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %22 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %23 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %24 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 0
  store i8* %0, i8** %25, align 4, !tbaa !48
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 2
  store i32 0, i32* %27, align 4, !tbaa !51
  %28 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %26, i1 zeroext true) #8
  store i32 %28, i32* %27, align 4, !tbaa !51
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %253

30:                                               ; preds = %17
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !50
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %36 = icmp eq i32 (i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %38

38:                                               ; preds = %34, %37
  %39 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %40 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !50
  %41 = call i32 %39(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %40) #8
  store i32 %41, i32* %27, align 4, !tbaa !51
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %253

43:                                               ; preds = %38
  %44 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !50
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 0)) #8
  %45 = ptrtoint i8* %1 to i32
  %46 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !55
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %43
  %49 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %44 to i32
  %50 = add i32 %49, %45
  %51 = mul i32 %50, -1640531527
  %52 = sub i32 32, %46
  %53 = lshr i32 %51, %52
  %54 = shl nuw i32 1, %46
  %55 = icmp eq i32 %46, 31
  br i1 %55, label %75, label %56

56:                                               ; preds = %48
  %57 = add nsw i32 %54, -1
  %58 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !56
  br label %61

59:                                               ; preds = %68
  %60 = icmp slt i32 %74, %54
  br i1 %60, label %61, label %75, !llvm.loop !57

61:                                               ; preds = %59, %56
  %62 = phi i32 [ 0, %56 ], [ %74, %59 ]
  %63 = add i32 %62, %53
  %64 = and i32 %63, %57
  %65 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %64, i32 2
  %66 = load i32, i32* %65, align 4, !tbaa !58
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %64, i32 0
  %70 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %69, align 4, !tbaa !60
  %71 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %70, %44
  %72 = icmp eq i32 %66, %45
  %73 = and i1 %72, %71
  %74 = add nuw nsw i32 %62, 1
  br i1 %73, label %76, label %59

75:                                               ; preds = %59, %61, %43, %48
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 0)) #8
  br label %80

76:                                               ; preds = %68
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %64, i32 1
  %78 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %77, align 4, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 0)) #8
  %79 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %76
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.120, i32 0, i32 0)) #8
  call void @abort() #8
  br label %81

81:                                               ; preds = %76, %80
  %82 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ %78, %76 ], [ null, %80 ]
  %83 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83) #10
  %84 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE, align 4, !tbaa !37
  %85 = call i32 %84(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** nonnull %20, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %82, i8* %2) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %81
  %88 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %88) #10
  %89 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 3
  store i8* %0, i8** %89, align 4, !tbaa !40
  %90 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 4
  store i8 1, i8* %90, align 4, !tbaa !43
  %91 = call i8* @malloc(i32 1024) #8
  %92 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 0
  store i8* %91, i8** %92, align 4, !tbaa !44
  %93 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 1
  store i8* %91, i8** %93, align 4, !tbaa !45
  %94 = icmp eq i8* %91, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds i8, i8* %91, i32 1023
  store i8 0, i8* %96, align 1, !tbaa !36
  br label %97

97:                                               ; preds = %87, %95
  %98 = phi i8* [ %96, %95 ], [ null, %87 ]
  %99 = call i8* @halide_string_to_string(i8* %91, i8* %98, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.123, i32 0, i32 0)) #8
  %100 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %85) #9
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i8* @halide_string_to_string(i8* %99, i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %106

104:                                              ; preds = %97
  %105 = call i8* @halide_string_to_string(i8* %99, i8* %98, i8* nonnull %100) #8
  br label %106

106:                                              ; preds = %102, %104
  %107 = phi i8* [ %105, %104 ], [ %103, %102 ]
  %108 = load i8*, i8** %92, align 4, !tbaa !44
  %109 = icmp eq i8* %108, null
  %110 = load i8*, i8** %89, align 4, !tbaa !40
  br i1 %109, label %111, label %112

111:                                              ; preds = %106
  call void @halide_error(i8* %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %121

112:                                              ; preds = %106
  %113 = ptrtoint i8* %107 to i32
  %114 = ptrtoint i8* %108 to i32
  %115 = sub i32 1, %114
  %116 = add i32 %115, %113
  %117 = sext i32 %116 to i64
  %118 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %110, i8* nonnull %108, i64 %117) #8
  %119 = load i8*, i8** %89, align 4, !tbaa !40
  %120 = load i8*, i8** %92, align 4, !tbaa !44
  call void @halide_error(i8* %119, i8* %120) #8
  br label %121

121:                                              ; preds = %112, %111
  %122 = load i8, i8* %90, align 4, !tbaa !43, !range !46
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %92, align 4, !tbaa !44
  call void @free(i8* %125) #8
  br label %126

126:                                              ; preds = %121, %124
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %88) #10
  br label %245

127:                                              ; preds = %81, %127
  %128 = phi i32 [ %132, %127 ], [ 0, %81 ]
  %129 = getelementptr inbounds i32, i32* %10, i32 %128
  %130 = load i32, i32* %129, align 4, !tbaa !39
  %131 = icmp eq i32 %130, 0
  %132 = add i32 %128, 1
  br i1 %131, label %133, label %127, !llvm.loop !89

133:                                              ; preds = %127
  %134 = shl i32 %128, 2
  %135 = add i32 %134, 4
  %136 = call i8* @malloc(i32 %135) #8
  %137 = bitcast i8* %136 to i8**
  %138 = shl i32 %128, 3
  %139 = call i8* @malloc(i32 %138) #8
  %140 = bitcast i8* %139 to i64*
  br label %145

141:                                              ; preds = %168
  %142 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 4, !tbaa !37
  %143 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 4, !tbaa !37
  %144 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %143, null
  br i1 %144, label %197, label %171

145:                                              ; preds = %133, %168
  %146 = phi i32 [ 0, %133 ], [ %169, %168 ]
  %147 = getelementptr inbounds i8, i8* %12, i32 %146
  %148 = load i8, i8* %147, align 1, !tbaa !36
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds i32, i32* %10, i32 %146
  %152 = load i32, i32* %151, align 4, !tbaa !39
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.128, i32 0, i32 0)) #8
  call void @abort() #8
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds i8*, i8** %11, i32 %146
  %157 = bitcast i8** %156 to %struct.halide_buffer_t**
  %158 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %157, align 4, !tbaa !37
  %159 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8, !tbaa !22
  %161 = getelementptr inbounds i64, i64* %140, i32 %146
  store i64 %160, i64* %161, align 8, !tbaa !3
  %162 = getelementptr inbounds i8*, i8** %137, i32 %146
  %163 = bitcast i8** %162 to i64**
  store i64* %161, i64** %163, align 4, !tbaa !37
  br label %168

164:                                              ; preds = %145
  %165 = getelementptr inbounds i8*, i8** %11, i32 %146
  %166 = load i8*, i8** %165, align 4, !tbaa !37
  %167 = getelementptr inbounds i8*, i8** %137, i32 %146
  store i8* %166, i8** %167, align 4, !tbaa !37
  br label %168

168:                                              ; preds = %155, %164
  %169 = add i32 %146, 1
  %170 = icmp ugt i32 %169, %128
  br i1 %170, label %141, label %145, !llvm.loop !90

171:                                              ; preds = %141
  %172 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !50
  %173 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %172, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %22) #9
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 4, !tbaa !37
  br label %197

177:                                              ; preds = %171
  %178 = call i8* @malloc(i32 1024) #8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds i8, i8* %178, i32 1023
  store i8 0, i8* %181, align 1, !tbaa !36
  br label %182

182:                                              ; preds = %177, %180
  %183 = phi i8* [ %181, %180 ], [ null, %177 ]
  %184 = call i8* @halide_string_to_string(i8* %178, i8* %183, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.131, i32 0, i32 0)) #8
  %185 = sext i32 %173 to i64
  %186 = call i8* @halide_int64_to_string(i8* %184, i8* %183, i64 %185, i32 1) #8
  %187 = call i8* @halide_string_to_string(i8* %186, i8* %183, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  br i1 %179, label %188, label %189

188:                                              ; preds = %182
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %196

189:                                              ; preds = %182
  %190 = ptrtoint i8* %187 to i32
  %191 = ptrtoint i8* %178 to i32
  %192 = add i32 %190, 1
  %193 = sub i32 %192, %191
  %194 = sext i32 %193 to i64
  %195 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %178, i64 %194) #8
  call void @halide_error(i8* %0, i8* nonnull %178) #8
  br label %196

196:                                              ; preds = %189, %188
  call void @free(i8* %178) #8
  call void @free(i8* %139) #8
  call void @free(i8* nonnull %136) #8
  br label %243

197:                                              ; preds = %175, %141
  %198 = phi %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* [ %176, %175 ], [ null, %141 ]
  %199 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE, align 4, !tbaa !37
  %200 = load %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20, align 4, !tbaa !37
  %201 = call i32 %199(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"* %200, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %198, i8** nonnull %137, i8** null) #8
  call void @free(i8* %139) #8
  call void @free(i8* nonnull %136) #8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %243, label %203

203:                                              ; preds = %197
  %204 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %204) #10
  %205 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 3
  store i8* %0, i8** %205, align 4, !tbaa !40
  %206 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 4
  store i8 1, i8* %206, align 4, !tbaa !43
  %207 = call i8* @malloc(i32 1024) #8
  %208 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 0
  store i8* %207, i8** %208, align 4, !tbaa !44
  %209 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 1
  store i8* %207, i8** %209, align 4, !tbaa !45
  %210 = icmp eq i8* %207, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %203
  %212 = getelementptr inbounds i8, i8* %207, i32 1023
  store i8 0, i8* %212, align 1, !tbaa !36
  br label %213

213:                                              ; preds = %203, %211
  %214 = phi i8* [ %212, %211 ], [ null, %203 ]
  %215 = call i8* @halide_string_to_string(i8* %207, i8* %214, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.132, i32 0, i32 0)) #8
  %216 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %201) #9
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call i8* @halide_string_to_string(i8* %215, i8* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %222

220:                                              ; preds = %213
  %221 = call i8* @halide_string_to_string(i8* %215, i8* %214, i8* nonnull %216) #8
  br label %222

222:                                              ; preds = %218, %220
  %223 = phi i8* [ %221, %220 ], [ %219, %218 ]
  %224 = load i8*, i8** %208, align 4, !tbaa !44
  %225 = icmp eq i8* %224, null
  %226 = load i8*, i8** %205, align 4, !tbaa !40
  br i1 %225, label %227, label %228

227:                                              ; preds = %222
  call void @halide_error(i8* %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %237

228:                                              ; preds = %222
  %229 = ptrtoint i8* %223 to i32
  %230 = ptrtoint i8* %224 to i32
  %231 = sub i32 1, %230
  %232 = add i32 %231, %229
  %233 = sext i32 %232 to i64
  %234 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %226, i8* nonnull %224, i64 %233) #8
  %235 = load i8*, i8** %205, align 4, !tbaa !40
  %236 = load i8*, i8** %208, align 4, !tbaa !44
  call void @halide_error(i8* %235, i8* %236) #8
  br label %237

237:                                              ; preds = %228, %227
  %238 = load i8, i8* %206, align 4, !tbaa !43, !range !46
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = load i8*, i8** %208, align 4, !tbaa !44
  call void @free(i8* %241) #8
  br label %242

242:                                              ; preds = %237, %240
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %204) #10
  br label %243

243:                                              ; preds = %196, %197, %242
  %244 = phi i32 [ %201, %242 ], [ %173, %196 ], [ 0, %197 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #10
  br label %245

245:                                              ; preds = %126, %243
  %246 = phi i32 [ %85, %126 ], [ %244, %243 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %83) #10
  %247 = load i32, i32* %27, align 4, !tbaa !51
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #10
  %251 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %252 = call i32 %251(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %18) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #10
  br label %253

253:                                              ; preds = %17, %38, %245, %249
  %254 = phi i32 [ %246, %245 ], [ %246, %249 ], [ %41, %38 ], [ %28, %17 ]
  %255 = load i8*, i8** %25, align 4, !tbaa !48
  %256 = call i32 @halide_cuda_release_context(i8* %255) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %24) #10
  ret i32 %254
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE) #8
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE) #8
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_wrap_device_ptr(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.133, i32 0, i32 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3, %7
  store i64 %2, i64* %4, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %struct.halide_device_interface_t** %11, align 8, !tbaa !75
  %12 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, i32 0, i32 15), align 4, !tbaa !76
  %13 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %12, i32 0, i32 0
  %14 = load void ()*, void ()** %13, align 4, !tbaa !85
  tail call void %14() #8
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi i32 [ 0, %10 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_detach_device_ptr(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.134, i32 0, i32 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i32 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i32 0, i32 1
  %17 = load void ()*, void ()** %16, align 4, !tbaa !78
  tail call void %17() #8
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_get_device_ptr(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.135, i32 0, i32 0)) #8
  tail call void @abort() #8
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %6, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %6 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_cuda_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = load i8*, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 4, !tbaa !37
  %10 = icmp ne i8* %9, null
  %11 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4
  %12 = icmp ne i32 (i32)* %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4, !tbaa !39
  store i32 0, i32* %1, align 4, !tbaa !39
  ret i32 0

18:                                               ; preds = %14, %3
  %19 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %19) #10
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 0
  store i8* %0, i8** %20, align 4, !tbaa !48
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !50
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 2
  store i32 0, i32* %22, align 4, !tbaa !51
  %23 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %21, i1 zeroext true) #8
  store i32 %23, i32* %22, align 4, !tbaa !51
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %149

25:                                               ; preds = %18
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !50
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i32 0, i32 0)) #8
  call void @abort() #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 4, !tbaa !37
  %31 = icmp eq i32 (i32)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i32 0, i32 0)) #8
  call void @abort() #8
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 4, !tbaa !37
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !50
  %36 = call i32 %34(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35) #8
  store i32 %36, i32* %22, align 4, !tbaa !51
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %149

38:                                               ; preds = %33
  %39 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #10
  %40 = load i32 (i32*)*, i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE, align 4, !tbaa !37
  %41 = call i32 %40(i32* nonnull %6) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %38
  %44 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %44) #10
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %45, align 4, !tbaa !40
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %46, align 4, !tbaa !43
  %47 = call i8* @malloc(i32 1024) #8
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %47, i8** %48, align 4, !tbaa !44
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %47, i8** %49, align 4, !tbaa !45
  %50 = icmp eq i8* %47, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, i8* %47, i32 1023
  store i8 0, i8* %52, align 1, !tbaa !36
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8* [ %52, %51 ], [ null, %43 ]
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 2
  store i8* %54, i8** %55, align 4
  %56 = call i8* @halide_string_to_string(i8* %47, i8* %54, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.136, i32 0, i32 0)) #8
  %57 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %41) #9
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %63

61:                                               ; preds = %53
  %62 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* nonnull %57) #8
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi i8* [ %62, %61 ], [ %60, %59 ]
  %65 = load i8*, i8** %55, align 4, !tbaa !91
  %66 = call i8* @halide_string_to_string(i8* %64, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0)) #8
  %67 = load i8*, i8** %48, align 4, !tbaa !44
  %68 = icmp eq i8* %67, null
  %69 = load i8*, i8** %45, align 4, !tbaa !40
  br i1 %68, label %70, label %71

70:                                               ; preds = %63
  call void @halide_error(i8* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %80

71:                                               ; preds = %63
  %72 = ptrtoint i8* %66 to i32
  %73 = ptrtoint i8* %67 to i32
  %74 = add i32 %72, 1
  %75 = sub i32 %74, %73
  %76 = sext i32 %75 to i64
  %77 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %69, i8* nonnull %67, i64 %76) #8
  %78 = load i8*, i8** %45, align 4, !tbaa !40
  %79 = load i8*, i8** %48, align 4, !tbaa !44
  call void @halide_error(i8* %78, i8* %79) #8
  br label %80

80:                                               ; preds = %71, %70
  %81 = load i8, i8* %46, align 4, !tbaa !43, !range !46
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %48, align 4, !tbaa !44
  call void @free(i8* %84) #8
  br label %85

85:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %44) #10
  br label %140

86:                                               ; preds = %38
  %87 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 4, !tbaa !37
  %88 = load i32, i32* %6, align 4, !tbaa !39
  %89 = call i32 %87(i32* %1, i32 75, i32 %88) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 4, !tbaa !37
  %93 = load i32, i32* %6, align 4, !tbaa !39
  %94 = call i32 %92(i32* %2, i32 76, i32 %93) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %140, label %96

96:                                               ; preds = %86, %91
  %97 = phi i32 [ %94, %91 ], [ %89, %86 ]
  %98 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %98) #10
  %99 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %99, align 4, !tbaa !40
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %100, align 4, !tbaa !43
  %101 = call i8* @malloc(i32 1024) #8
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %101, i8** %102, align 4, !tbaa !44
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %101, i8** %103, align 4, !tbaa !45
  %104 = icmp eq i8* %101, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds i8, i8* %101, i32 1023
  store i8 0, i8* %106, align 1, !tbaa !36
  br label %107

107:                                              ; preds = %96, %105
  %108 = phi i8* [ %106, %105 ], [ null, %96 ]
  %109 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 2
  store i8* %108, i8** %109, align 4
  %110 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i32 0, i32 0)) #8
  %111 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %97) #9
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i8* @halide_string_to_string(i8* %110, i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0)) #8
  br label %117

115:                                              ; preds = %107
  %116 = call i8* @halide_string_to_string(i8* %110, i8* %108, i8* nonnull %111) #8
  br label %117

117:                                              ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %114, %113 ]
  %119 = load i8*, i8** %109, align 4, !tbaa !91
  %120 = call i8* @halide_string_to_string(i8* %118, i8* %119, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0)) #8
  %121 = load i8*, i8** %102, align 4, !tbaa !44
  %122 = icmp eq i8* %121, null
  %123 = load i8*, i8** %99, align 4, !tbaa !40
  br i1 %122, label %124, label %125

124:                                              ; preds = %117
  call void @halide_error(i8* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0)) #8
  br label %134

125:                                              ; preds = %117
  %126 = ptrtoint i8* %120 to i32
  %127 = ptrtoint i8* %121 to i32
  %128 = add i32 %126, 1
  %129 = sub i32 %128, %127
  %130 = sext i32 %129 to i64
  %131 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %123, i8* nonnull %121, i64 %130) #8
  %132 = load i8*, i8** %99, align 4, !tbaa !40
  %133 = load i8*, i8** %102, align 4, !tbaa !44
  call void @halide_error(i8* %132, i8* %133) #8
  br label %134

134:                                              ; preds = %125, %124
  %135 = load i8, i8* %100, align 4, !tbaa !43, !range !46
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %102, align 4, !tbaa !44
  call void @free(i8* %138) #8
  br label %139

139:                                              ; preds = %134, %137
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %98) #10
  br label %140

140:                                              ; preds = %85, %139, %91
  %141 = phi i32 [ %41, %85 ], [ %97, %139 ], [ 0, %91 ]
  %142 = phi i32 [ 1, %85 ], [ 1, %139 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #10
  %143 = load i32, i32* %22, align 4, !tbaa !51
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %146) #10
  %147 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 4, !tbaa !37
  %148 = call i32 %147(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %146) #10
  br label %149

149:                                              ; preds = %18, %33, %140, %145
  %150 = phi i32 [ %142, %140 ], [ %142, %145 ], [ 1, %33 ], [ 1, %18 ]
  %151 = phi i32 [ %141, %140 ], [ %141, %145 ], [ %36, %33 ], [ %23, %18 ]
  %152 = load i8*, i8** %20, align 4, !tbaa !48
  %153 = call i32 @halide_cuda_release_context(i8* %152) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %19) #10
  %154 = icmp eq i32 %150, 0
  %155 = select i1 %154, i32 0, i32 %151
  ret i32 %155
}

; Function Attrs: nounwind mustprogress
define weak void @halide_cuda_cleanup() #0 {
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i8* null, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 4 dereferenceable(4) @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE) #9
  %1 = tail call i32 @halide_cuda_device_release(i8* null) #9
  ret void
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #8
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !80
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !55
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !56
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %39, %38 ], [ %6, %12 ]
  %17 = phi i32 [ %40, %38 ], [ %10, %12 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %41, %38 ], [ %14, %12 ]
  %19 = phi i32 [ %42, %38 ], [ 0, %12 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !58
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !61
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** %2, align 4, !tbaa !37
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 1
  %30 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %29, align 4, !tbaa !62
  %31 = tail call i32 %28(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %30) #8
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !56
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i32 %19, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %33, align 4, !tbaa !62
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i32 %19, i32 2
  store i32 1, i32* %34, align 4, !tbaa !58
  %35 = load i32, i32* %5, align 4, !tbaa !80
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4, !tbaa !80
  %37 = load i32, i32* %9, align 4, !tbaa !55
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i32 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %15, label %45, !llvm.loop !81

45:                                               ; preds = %38
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %3, %45
  %48 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %49 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %48 to i8**
  %50 = load i8*, i8** %49, align 4, !tbaa !56
  tail call void @free(i8* %50) #8
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %48, align 4, !tbaa !56
  %51 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  store i32 0, i32* %51, align 4, !tbaa !55
  br label %52

52:                                               ; preds = %8, %47, %45
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #8
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

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #9
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !80
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #9
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !tbaa !80
  %25 = load i32, i32* %3, align 4, !tbaa !55
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 4, !tbaa !80
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i32 0, i32 0
  %33 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %32, align 4, !tbaa !60
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i32 0, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !58
  %36 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %33 to i32
  %37 = add i32 %35, %36
  %38 = mul i32 %37, -1640531527
  %39 = sub i32 32, %31
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %31, 31
  br i1 %41, label %60, label %42

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %44, align 4, !tbaa !56
  br label %48

46:                                               ; preds = %48
  %47 = icmp slt i32 %55, %29
  br i1 %47, label %48, label %60, !llvm.loop !92

48:                                               ; preds = %42, %46
  %49 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %50 = add i32 %49, %40
  %51 = and i32 %50, %43
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %45, i32 %51, i32 2
  %53 = load i32, i32* %52, align 4, !tbaa !58
  %54 = icmp ult i32 %53, 2
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %56, label %46

56:                                               ; preds = %48
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %45, i32 %51
  %58 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %57 to i8*
  %59 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %58, i8* nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !tbaa.struct !93
  br label %61

60:                                               ; preds = %46, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.204, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %61

61:                                               ; preds = %56, %60, %20, %6
  %62 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %56 ], [ false, %60 ]
  ret i1 %62
}

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !55
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
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !56
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13 to i8**
  store i8* %9, i8** %15, align 4, !tbaa !56
  store i32 %1, i32* %3, align 4, !tbaa !55
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !80
  %18 = icmp sgt i32 %17, 0
  %19 = icmp ne i32 %4, 31
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %11, %30
  %22 = phi i32 [ %31, %30 ], [ 0, %11 ]
  %23 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14, i32 %22, i32 2
  %24 = load i32, i32* %23, align 4, !tbaa !58
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14, i32 %22
  %28 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %27) #9
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.205, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %30

30:                                               ; preds = %21, %26, %29
  %31 = add nuw nsw i32 %22, 1
  %32 = icmp slt i32 %31, %7
  br i1 %32, label %21, label %33, !llvm.loop !94

33:                                               ; preds = %30, %11
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14 to i8*
  tail call void @free(i8* %34) #8
  br label %35

35:                                               ; preds = %2, %33, %6
  %36 = phi i1 [ false, %6 ], [ true, %33 ], [ true, %2 ]
  ret i1 %36
}

declare i8* @memset(i8*, i32, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_cuda.cpp() #7 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE to i8*), align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !55
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !56
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !80
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i32 0, i32 4), align 4, !tbaa !52
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE, align 8
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!39 = !{!21, !21, i64 0}
!40 = !{!41, !17, i64 12}
!41 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !42, i64 16, !5, i64 17}
!42 = !{!"bool", !5, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!41, !17, i64 0}
!45 = !{!41, !17, i64 4}
!46 = !{i8 0, i8 2}
!47 = distinct !{!47, !8}
!48 = !{!49, !17, i64 0}
!49 = !{!"_ZTSN6Halide7Runtime8Internal4Cuda7ContextE", !17, i64 0, !17, i64 4, !21, i64 8}
!50 = !{!49, !17, i64 4}
!51 = !{!49, !21, i64 8}
!52 = !{!53, !21, i64 16}
!53 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEEE", !54, i64 0, !21, i64 4, !17, i64 8, !21, i64 12, !21, i64 16}
!54 = !{!"_ZTS12halide_mutex", !5, i64 0}
!55 = !{!53, !21, i64 4}
!56 = !{!53, !17, i64 8}
!57 = distinct !{!57, !8}
!58 = !{!59, !21, i64 8}
!59 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE17CachedCompilationE", !17, i64 0, !17, i64 4, !21, i64 8, !21, i64 12}
!60 = !{!59, !17, i64 0}
!61 = !{!59, !21, i64 12}
!62 = !{!59, !17, i64 4}
!63 = !{!64, !21, i64 0}
!64 = !{!"_ZTSN6Halide7Runtime8Internal4Cuda12FreeListItemE", !21, i64 0, !17, i64 4, !17, i64 8, !21, i64 12, !17, i64 16}
!65 = !{!64, !17, i64 16}
!66 = distinct !{!66, !8}
!67 = !{!68, !17, i64 0}
!68 = !{!"_ZTS29halide_device_allocation_pool", !17, i64 0, !17, i64 4}
!69 = !{!64, !17, i64 4}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8}
!72 = !{i64 0, i64 65}
!73 = !{!64, !21, i64 12}
!74 = !{!64, !17, i64 8}
!75 = !{!16, !17, i64 8}
!76 = !{!77, !17, i64 60}
!77 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!78 = !{!79, !17, i64 4}
!79 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!80 = !{!53, !21, i64 12}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = !{!79, !17, i64 0}
!86 = distinct !{!86, !8}
!87 = !{!16, !4, i64 16}
!88 = distinct !{!88, !8}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = !{!41, !17, i64 8}
!92 = distinct !{!92, !8}
!93 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !39, i64 12, i64 4, !39}
!94 = distinct !{!94, !8}
