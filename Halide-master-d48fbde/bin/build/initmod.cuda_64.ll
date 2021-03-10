; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::Cuda::CUctx_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUmod_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st" = type { i64, i64, i64, i64, i32, i8*, i64, %"struct.Halide::Runtime::Internal::Cuda::CUarray_st"*, i8*, i64, i64, i64, i64, i64, i64, i32, i8*, i64, %"struct.Halide::Runtime::Internal::Cuda::CUarray_st"*, i8*, i64, i64, i64, i64, i64 }
%"struct.Halide::Runtime::Internal::Cuda::CUarray_st" = type opaque
%"struct.Halide::Runtime::Internal::Cuda::CUstream_st" = type opaque
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::Cuda::FreeListItem" = type { i64, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i64, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* }
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, i32, i32 }
%"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation" = type { %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i32, i32 }
%struct.halide_device_allocation_pool = type { i32 (i8*)*, %struct.halide_device_allocation_pool* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::Cuda::Context" = type <{ i8*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32, [4 x i8] }>

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi = comdat any

$_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE = comdat any

@_ZN6Halide7Runtime8Internal4Cuda6cuInitE = weak local_unnamed_addr global i32 (i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE = weak local_unnamed_addr global i32 (i32*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE = weak local_unnamed_addr global i32 (i32*, i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE = weak local_unnamed_addr global i32 (i32*, i32, i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda15cuDeviceGetNameE = weak local_unnamed_addr global i32 (i8*, i32, i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda16cuDeviceTotalMemE = weak local_unnamed_addr global i32 (i64*, i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE = weak local_unnamed_addr global i32 ()* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE = weak local_unnamed_addr global i32 (i32*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda16cuModuleLoadDataE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE = weak global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE = weak local_unnamed_addr global i32 (i64*, i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE = weak local_unnamed_addr global i32 (i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE = weak local_unnamed_addr global i32 (i64, i8*, i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE = weak local_unnamed_addr global i32 (i8*, i64, i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE = weak local_unnamed_addr global i32 (i64, i64, i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda10cuMemcpy3DE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE = weak local_unnamed_addr global i32 ()* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda21cuPointerGetAttributeE = weak local_unnamed_addr global i32 (i8*, i32, i64)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE = weak local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE = weak local_unnamed_addr global i8* null, align 8
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
@_ZN6Halide7Runtime8Internal4Cuda7contextE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda12context_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal4Cuda9free_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, align 8
@_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:142 Assert failed: ctx != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
@_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 4
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
@cuda_allocation_pool = weak global %struct.halide_device_allocation_pool zeroinitializer, align 8
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
@_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_cuda_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal4Cuda26cuda_device_interface_implE }, align 8
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
@_ZN6Halide7Runtime8Internal4Cuda26cuda_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_sync, i32 (i8*)* @halide_cuda_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_cuda_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_cuda_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_cuda_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_cuda_wrap_device_ptr, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_detach_device_ptr }, align 8
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
define weak i8* @halide_cuda_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 8, !tbaa !37
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #8
  store i8* %7, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 8, !tbaa !37
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #8
  store i8* %10, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 8, !tbaa !37
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
  %18 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %18, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 8, !tbaa !37
  br label %12
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal4Cuda12load_libcudaEPv(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %3 = icmp eq i32 (i32)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i64 1024) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #8
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %25

19:                                               ; preds = %13
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %9 to i64
  %22 = sub i64 1, %21
  %23 = add i64 %22, %20
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %23) #8
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %9) #8
  br label %26

26:                                               ; preds = %5, %25
  store i8* %6, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE to i8**), align 8, !tbaa !37
  %27 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = tail call i8* @malloc(i64 1024) #8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !36
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i8* [ %33, %32 ], [ null, %29 ]
  %36 = tail call i8* @halide_string_to_string(i8* %30, i8* %35, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #8
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %35, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %31, label %39, label %40

39:                                               ; preds = %34
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %46

40:                                               ; preds = %34
  %41 = ptrtoint i8* %38 to i64
  %42 = ptrtoint i8* %30 to i64
  %43 = sub i64 1, %42
  %44 = add i64 %43, %41
  %45 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %30, i64 %44) #8
  tail call void @halide_error(i8* %0, i8* nonnull %30) #8
  br label %46

46:                                               ; preds = %40, %39
  tail call void @free(i8* %30) #8
  br label %47

47:                                               ; preds = %26, %46
  store i8* %27, i8** bitcast (i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE to i8**), align 8, !tbaa !37
  %48 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = tail call i8* @malloc(i64 1024) #8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %51, i64 1023
  store i8 0, i8* %54, align 1, !tbaa !36
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %54, %53 ], [ null, %50 ]
  %57 = tail call i8* @halide_string_to_string(i8* %51, i8* %56, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %56, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #8
  %59 = tail call i8* @halide_string_to_string(i8* %58, i8* %56, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %52, label %60, label %61

60:                                               ; preds = %55
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %67

61:                                               ; preds = %55
  %62 = ptrtoint i8* %59 to i64
  %63 = ptrtoint i8* %51 to i64
  %64 = sub i64 1, %63
  %65 = add i64 %64, %62
  %66 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %51, i64 %65) #8
  tail call void @halide_error(i8* %0, i8* nonnull %51) #8
  br label %67

67:                                               ; preds = %61, %60
  tail call void @free(i8* %51) #8
  br label %68

68:                                               ; preds = %47, %67
  store i8* %48, i8** bitcast (i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE to i8**), align 8, !tbaa !37
  %69 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0)) #8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = tail call i8* @malloc(i64 1024) #8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %75, align 1, !tbaa !36
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i8* [ %75, %74 ], [ null, %71 ]
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0)) #8
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %77, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %73, label %81, label %82

81:                                               ; preds = %76
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %88

82:                                               ; preds = %76
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %72 to i64
  %85 = sub i64 1, %84
  %86 = add i64 %85, %83
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %86) #8
  tail call void @halide_error(i8* %0, i8* nonnull %72) #8
  br label %88

88:                                               ; preds = %82, %81
  tail call void @free(i8* %72) #8
  br label %89

89:                                               ; preds = %68, %88
  store i8* %69, i8** bitcast (i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE to i8**), align 8, !tbaa !37
  %90 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = tail call i8* @malloc(i64 1024) #8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, i8* %93, i64 1023
  store i8 0, i8* %96, align 1, !tbaa !36
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i8* [ %96, %95 ], [ null, %92 ]
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %100 = tail call i8* @halide_string_to_string(i8* %99, i8* %98, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #8
  %101 = tail call i8* @halide_string_to_string(i8* %100, i8* %98, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %94, label %102, label %103

102:                                              ; preds = %97
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %109

103:                                              ; preds = %97
  %104 = ptrtoint i8* %101 to i64
  %105 = ptrtoint i8* %93 to i64
  %106 = sub i64 1, %105
  %107 = add i64 %106, %104
  %108 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %93, i64 %107) #8
  tail call void @halide_error(i8* %0, i8* nonnull %93) #8
  br label %109

109:                                              ; preds = %103, %102
  tail call void @free(i8* %93) #8
  br label %110

110:                                              ; preds = %89, %109
  store i8* %90, i8** bitcast (i32 (i8*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda15cuDeviceGetNameE to i8**), align 8, !tbaa !37
  %111 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = tail call i8* @malloc(i64 1024) #8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %114, i64 1023
  store i8 0, i8* %117, align 1, !tbaa !36
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i8* [ %117, %116 ], [ null, %113 ]
  %120 = tail call i8* @halide_string_to_string(i8* %114, i8* %119, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %121 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #8
  %122 = tail call i8* @halide_string_to_string(i8* %121, i8* %119, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %115, label %123, label %124

123:                                              ; preds = %118
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %130

124:                                              ; preds = %118
  %125 = ptrtoint i8* %122 to i64
  %126 = ptrtoint i8* %114 to i64
  %127 = sub i64 1, %126
  %128 = add i64 %127, %125
  %129 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %114, i64 %128) #8
  tail call void @halide_error(i8* %0, i8* nonnull %114) #8
  br label %130

130:                                              ; preds = %124, %123
  tail call void @free(i8* %114) #8
  br label %131

131:                                              ; preds = %110, %130
  store i8* %111, i8** bitcast (i32 (i64*, i32)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceTotalMemE to i8**), align 8, !tbaa !37
  %132 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = tail call i8* @malloc(i64 1024) #8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, i8* %135, i64 1023
  store i8 0, i8* %138, align 1, !tbaa !36
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi i8* [ %138, %137 ], [ null, %134 ]
  %141 = tail call i8* @halide_string_to_string(i8* %135, i8* %140, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %142 = tail call i8* @halide_string_to_string(i8* %141, i8* %140, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8
  %143 = tail call i8* @halide_string_to_string(i8* %142, i8* %140, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %136, label %144, label %145

144:                                              ; preds = %139
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %151

145:                                              ; preds = %139
  %146 = ptrtoint i8* %143 to i64
  %147 = ptrtoint i8* %135 to i64
  %148 = sub i64 1, %147
  %149 = add i64 %148, %146
  %150 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %135, i64 %149) #8
  tail call void @halide_error(i8* %0, i8* nonnull %135) #8
  br label %151

151:                                              ; preds = %145, %144
  tail call void @free(i8* %135) #8
  br label %152

152:                                              ; preds = %131, %151
  store i8* %132, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE to i8**), align 8, !tbaa !37
  %153 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = tail call i8* @malloc(i64 1024) #8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, i8* %156, i64 1023
  store i8 0, i8* %159, align 1, !tbaa !36
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i8* [ %159, %158 ], [ null, %155 ]
  %162 = tail call i8* @halide_string_to_string(i8* %156, i8* %161, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %163 = tail call i8* @halide_string_to_string(i8* %162, i8* %161, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #8
  %164 = tail call i8* @halide_string_to_string(i8* %163, i8* %161, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %157, label %165, label %166

165:                                              ; preds = %160
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %172

166:                                              ; preds = %160
  %167 = ptrtoint i8* %164 to i64
  %168 = ptrtoint i8* %156 to i64
  %169 = sub i64 1, %168
  %170 = add i64 %169, %167
  %171 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %156, i64 %170) #8
  tail call void @halide_error(i8* %0, i8* nonnull %156) #8
  br label %172

172:                                              ; preds = %166, %165
  tail call void @free(i8* %156) #8
  br label %173

173:                                              ; preds = %152, %172
  store i8* %153, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE to i8**), align 8, !tbaa !37
  %174 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  %177 = tail call i8* @malloc(i64 1024) #8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i64 1023
  store i8 0, i8* %180, align 1, !tbaa !36
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i8* [ %180, %179 ], [ null, %176 ]
  %183 = tail call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %184 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #8
  %185 = tail call i8* @halide_string_to_string(i8* %184, i8* %182, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %178, label %186, label %187

186:                                              ; preds = %181
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %193

187:                                              ; preds = %181
  %188 = ptrtoint i8* %185 to i64
  %189 = ptrtoint i8* %177 to i64
  %190 = sub i64 1, %189
  %191 = add i64 %190, %188
  %192 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %191) #8
  tail call void @halide_error(i8* %0, i8* nonnull %177) #8
  br label %193

193:                                              ; preds = %187, %186
  tail call void @free(i8* %177) #8
  br label %194

194:                                              ; preds = %173, %193
  store i8* %174, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE to i8**), align 8, !tbaa !37
  %195 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = tail call i8* @malloc(i64 1024) #8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, i8* %198, i64 1023
  store i8 0, i8* %201, align 1, !tbaa !36
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i8* [ %201, %200 ], [ null, %197 ]
  %204 = tail call i8* @halide_string_to_string(i8* %198, i8* %203, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %205 = tail call i8* @halide_string_to_string(i8* %204, i8* %203, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #8
  %206 = tail call i8* @halide_string_to_string(i8* %205, i8* %203, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %199, label %207, label %208

207:                                              ; preds = %202
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %214

208:                                              ; preds = %202
  %209 = ptrtoint i8* %206 to i64
  %210 = ptrtoint i8* %198 to i64
  %211 = sub i64 1, %210
  %212 = add i64 %211, %209
  %213 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %198, i64 %212) #8
  tail call void @halide_error(i8* %0, i8* nonnull %198) #8
  br label %214

214:                                              ; preds = %208, %207
  tail call void @free(i8* %198) #8
  br label %215

215:                                              ; preds = %194, %214
  store i8* %195, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE to i8**), align 8, !tbaa !37
  %216 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = tail call i8* @malloc(i64 1024) #8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, i8* %219, i64 1023
  store i8 0, i8* %222, align 1, !tbaa !36
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi i8* [ %222, %221 ], [ null, %218 ]
  %225 = tail call i8* @halide_string_to_string(i8* %219, i8* %224, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %226 = tail call i8* @halide_string_to_string(i8* %225, i8* %224, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #8
  %227 = tail call i8* @halide_string_to_string(i8* %226, i8* %224, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %220, label %228, label %229

228:                                              ; preds = %223
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %235

229:                                              ; preds = %223
  %230 = ptrtoint i8* %227 to i64
  %231 = ptrtoint i8* %219 to i64
  %232 = sub i64 1, %231
  %233 = add i64 %232, %230
  %234 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %219, i64 %233) #8
  tail call void @halide_error(i8* %0, i8* nonnull %219) #8
  br label %235

235:                                              ; preds = %229, %228
  tail call void @free(i8* %219) #8
  br label %236

236:                                              ; preds = %215, %235
  store i8* %216, i8** bitcast (i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE to i8**), align 8, !tbaa !37
  %237 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0)) #8
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %257

239:                                              ; preds = %236
  %240 = tail call i8* @malloc(i64 1024) #8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %240, i64 1023
  store i8 0, i8* %243, align 1, !tbaa !36
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi i8* [ %243, %242 ], [ null, %239 ]
  %246 = tail call i8* @halide_string_to_string(i8* %240, i8* %245, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %247 = tail call i8* @halide_string_to_string(i8* %246, i8* %245, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0)) #8
  %248 = tail call i8* @halide_string_to_string(i8* %247, i8* %245, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %241, label %249, label %250

249:                                              ; preds = %244
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %256

250:                                              ; preds = %244
  %251 = ptrtoint i8* %248 to i64
  %252 = ptrtoint i8* %240 to i64
  %253 = sub i64 1, %252
  %254 = add i64 %253, %251
  %255 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %240, i64 %254) #8
  tail call void @halide_error(i8* %0, i8* nonnull %240) #8
  br label %256

256:                                              ; preds = %250, %249
  tail call void @free(i8* %240) #8
  br label %257

257:                                              ; preds = %236, %256
  store i8* %237, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)** @_ZN6Halide7Runtime8Internal4Cuda16cuModuleLoadDataE to i8**), align 8, !tbaa !37
  %258 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #8
  %259 = icmp eq i8* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %257
  %261 = tail call i8* @malloc(i64 1024) #8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds i8, i8* %261, i64 1023
  store i8 0, i8* %264, align 1, !tbaa !36
  br label %265

265:                                              ; preds = %263, %260
  %266 = phi i8* [ %264, %263 ], [ null, %260 ]
  %267 = tail call i8* @halide_string_to_string(i8* %261, i8* %266, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %268 = tail call i8* @halide_string_to_string(i8* %267, i8* %266, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #8
  %269 = tail call i8* @halide_string_to_string(i8* %268, i8* %266, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %262, label %270, label %271

270:                                              ; preds = %265
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %277

271:                                              ; preds = %265
  %272 = ptrtoint i8* %269 to i64
  %273 = ptrtoint i8* %261 to i64
  %274 = sub i64 1, %273
  %275 = add i64 %274, %272
  %276 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %261, i64 %275) #8
  tail call void @halide_error(i8* %0, i8* nonnull %261) #8
  br label %277

277:                                              ; preds = %271, %270
  tail call void @free(i8* %261) #8
  br label %278

278:                                              ; preds = %257, %277
  store i8* %258, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE to i8**), align 8, !tbaa !37
  %279 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %299

281:                                              ; preds = %278
  %282 = tail call i8* @malloc(i64 1024) #8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds i8, i8* %282, i64 1023
  store i8 0, i8* %285, align 1, !tbaa !36
  br label %286

286:                                              ; preds = %284, %281
  %287 = phi i8* [ %285, %284 ], [ null, %281 ]
  %288 = tail call i8* @halide_string_to_string(i8* %282, i8* %287, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %289 = tail call i8* @halide_string_to_string(i8* %288, i8* %287, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #8
  %290 = tail call i8* @halide_string_to_string(i8* %289, i8* %287, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %283, label %291, label %292

291:                                              ; preds = %286
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %298

292:                                              ; preds = %286
  %293 = ptrtoint i8* %290 to i64
  %294 = ptrtoint i8* %282 to i64
  %295 = sub i64 1, %294
  %296 = add i64 %295, %293
  %297 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %282, i64 %296) #8
  tail call void @halide_error(i8* %0, i8* nonnull %282) #8
  br label %298

298:                                              ; preds = %292, %291
  tail call void @free(i8* %282) #8
  br label %299

299:                                              ; preds = %278, %298
  store i8* %279, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE to i8**), align 8, !tbaa !37
  %300 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0)) #8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %320

302:                                              ; preds = %299
  %303 = tail call i8* @malloc(i64 1024) #8
  %304 = icmp eq i8* %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds i8, i8* %303, i64 1023
  store i8 0, i8* %306, align 1, !tbaa !36
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i8* [ %306, %305 ], [ null, %302 ]
  %309 = tail call i8* @halide_string_to_string(i8* %303, i8* %308, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %310 = tail call i8* @halide_string_to_string(i8* %309, i8* %308, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0)) #8
  %311 = tail call i8* @halide_string_to_string(i8* %310, i8* %308, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %304, label %312, label %313

312:                                              ; preds = %307
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %319

313:                                              ; preds = %307
  %314 = ptrtoint i8* %311 to i64
  %315 = ptrtoint i8* %303 to i64
  %316 = sub i64 1, %315
  %317 = add i64 %316, %314
  %318 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %303, i64 %317) #8
  tail call void @halide_error(i8* %0, i8* nonnull %303) #8
  br label %319

319:                                              ; preds = %313, %312
  tail call void @free(i8* %303) #8
  br label %320

320:                                              ; preds = %299, %319
  store i8* %300, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE to i8**), align 8, !tbaa !37
  %321 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %341

323:                                              ; preds = %320
  %324 = tail call i8* @malloc(i64 1024) #8
  %325 = icmp eq i8* %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds i8, i8* %324, i64 1023
  store i8 0, i8* %327, align 1, !tbaa !36
  br label %328

328:                                              ; preds = %326, %323
  %329 = phi i8* [ %327, %326 ], [ null, %323 ]
  %330 = tail call i8* @halide_string_to_string(i8* %324, i8* %329, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %331 = tail call i8* @halide_string_to_string(i8* %330, i8* %329, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #8
  %332 = tail call i8* @halide_string_to_string(i8* %331, i8* %329, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %325, label %333, label %334

333:                                              ; preds = %328
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %340

334:                                              ; preds = %328
  %335 = ptrtoint i8* %332 to i64
  %336 = ptrtoint i8* %324 to i64
  %337 = sub i64 1, %336
  %338 = add i64 %337, %335
  %339 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %324, i64 %338) #8
  tail call void @halide_error(i8* %0, i8* nonnull %324) #8
  br label %340

340:                                              ; preds = %334, %333
  tail call void @free(i8* %324) #8
  br label %341

341:                                              ; preds = %320, %340
  store i8* %321, i8** bitcast (i32 (i64*, i64)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE to i8**), align 8, !tbaa !37
  %342 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #8
  %343 = icmp eq i8* %342, null
  br i1 %343, label %344, label %362

344:                                              ; preds = %341
  %345 = tail call i8* @malloc(i64 1024) #8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds i8, i8* %345, i64 1023
  store i8 0, i8* %348, align 1, !tbaa !36
  br label %349

349:                                              ; preds = %347, %344
  %350 = phi i8* [ %348, %347 ], [ null, %344 ]
  %351 = tail call i8* @halide_string_to_string(i8* %345, i8* %350, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %352 = tail call i8* @halide_string_to_string(i8* %351, i8* %350, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #8
  %353 = tail call i8* @halide_string_to_string(i8* %352, i8* %350, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %346, label %354, label %355

354:                                              ; preds = %349
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %361

355:                                              ; preds = %349
  %356 = ptrtoint i8* %353 to i64
  %357 = ptrtoint i8* %345 to i64
  %358 = sub i64 1, %357
  %359 = add i64 %358, %356
  %360 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %345, i64 %359) #8
  tail call void @halide_error(i8* %0, i8* nonnull %345) #8
  br label %361

361:                                              ; preds = %355, %354
  tail call void @free(i8* %345) #8
  br label %362

362:                                              ; preds = %341, %361
  store i8* %342, i8** bitcast (i32 (i64)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE to i8**), align 8, !tbaa !37
  %363 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0)) #8
  %364 = icmp eq i8* %363, null
  br i1 %364, label %365, label %383

365:                                              ; preds = %362
  %366 = tail call i8* @malloc(i64 1024) #8
  %367 = icmp eq i8* %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, i8* %366, i64 1023
  store i8 0, i8* %369, align 1, !tbaa !36
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i8* [ %369, %368 ], [ null, %365 ]
  %372 = tail call i8* @halide_string_to_string(i8* %366, i8* %371, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %373 = tail call i8* @halide_string_to_string(i8* %372, i8* %371, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0)) #8
  %374 = tail call i8* @halide_string_to_string(i8* %373, i8* %371, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %367, label %375, label %376

375:                                              ; preds = %370
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %382

376:                                              ; preds = %370
  %377 = ptrtoint i8* %374 to i64
  %378 = ptrtoint i8* %366 to i64
  %379 = sub i64 1, %378
  %380 = add i64 %379, %377
  %381 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %366, i64 %380) #8
  tail call void @halide_error(i8* %0, i8* nonnull %366) #8
  br label %382

382:                                              ; preds = %376, %375
  tail call void @free(i8* %366) #8
  br label %383

383:                                              ; preds = %362, %382
  store i8* %363, i8** bitcast (i32 (i64, i8*, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE to i8**), align 8, !tbaa !37
  %384 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #8
  %385 = icmp eq i8* %384, null
  br i1 %385, label %386, label %404

386:                                              ; preds = %383
  %387 = tail call i8* @malloc(i64 1024) #8
  %388 = icmp eq i8* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8, i8* %387, i64 1023
  store i8 0, i8* %390, align 1, !tbaa !36
  br label %391

391:                                              ; preds = %389, %386
  %392 = phi i8* [ %390, %389 ], [ null, %386 ]
  %393 = tail call i8* @halide_string_to_string(i8* %387, i8* %392, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %394 = tail call i8* @halide_string_to_string(i8* %393, i8* %392, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #8
  %395 = tail call i8* @halide_string_to_string(i8* %394, i8* %392, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %388, label %396, label %397

396:                                              ; preds = %391
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %403

397:                                              ; preds = %391
  %398 = ptrtoint i8* %395 to i64
  %399 = ptrtoint i8* %387 to i64
  %400 = sub i64 1, %399
  %401 = add i64 %400, %398
  %402 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %387, i64 %401) #8
  tail call void @halide_error(i8* %0, i8* nonnull %387) #8
  br label %403

403:                                              ; preds = %397, %396
  tail call void @free(i8* %387) #8
  br label %404

404:                                              ; preds = %383, %403
  store i8* %384, i8** bitcast (i32 (i8*, i64, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE to i8**), align 8, !tbaa !37
  %405 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #8
  %406 = icmp eq i8* %405, null
  br i1 %406, label %407, label %425

407:                                              ; preds = %404
  %408 = tail call i8* @malloc(i64 1024) #8
  %409 = icmp eq i8* %408, null
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  %411 = getelementptr inbounds i8, i8* %408, i64 1023
  store i8 0, i8* %411, align 1, !tbaa !36
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi i8* [ %411, %410 ], [ null, %407 ]
  %414 = tail call i8* @halide_string_to_string(i8* %408, i8* %413, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %415 = tail call i8* @halide_string_to_string(i8* %414, i8* %413, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #8
  %416 = tail call i8* @halide_string_to_string(i8* %415, i8* %413, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %409, label %417, label %418

417:                                              ; preds = %412
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %424

418:                                              ; preds = %412
  %419 = ptrtoint i8* %416 to i64
  %420 = ptrtoint i8* %408 to i64
  %421 = sub i64 1, %420
  %422 = add i64 %421, %419
  %423 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %408, i64 %422) #8
  tail call void @halide_error(i8* %0, i8* nonnull %408) #8
  br label %424

424:                                              ; preds = %418, %417
  tail call void @free(i8* %408) #8
  br label %425

425:                                              ; preds = %404, %424
  store i8* %405, i8** bitcast (i32 (i64, i64, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE to i8**), align 8, !tbaa !37
  %426 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0)) #8
  %427 = icmp eq i8* %426, null
  br i1 %427, label %428, label %446

428:                                              ; preds = %425
  %429 = tail call i8* @malloc(i64 1024) #8
  %430 = icmp eq i8* %429, null
  br i1 %430, label %433, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds i8, i8* %429, i64 1023
  store i8 0, i8* %432, align 1, !tbaa !36
  br label %433

433:                                              ; preds = %431, %428
  %434 = phi i8* [ %432, %431 ], [ null, %428 ]
  %435 = tail call i8* @halide_string_to_string(i8* %429, i8* %434, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %436 = tail call i8* @halide_string_to_string(i8* %435, i8* %434, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0)) #8
  %437 = tail call i8* @halide_string_to_string(i8* %436, i8* %434, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %430, label %438, label %439

438:                                              ; preds = %433
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %445

439:                                              ; preds = %433
  %440 = ptrtoint i8* %437 to i64
  %441 = ptrtoint i8* %429 to i64
  %442 = sub i64 1, %441
  %443 = add i64 %442, %440
  %444 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %429, i64 %443) #8
  tail call void @halide_error(i8* %0, i8* nonnull %429) #8
  br label %445

445:                                              ; preds = %439, %438
  tail call void @free(i8* %429) #8
  br label %446

446:                                              ; preds = %425, %445
  store i8* %426, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemcpy3DE to i8**), align 8, !tbaa !37
  %447 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #8
  %448 = icmp eq i8* %447, null
  br i1 %448, label %449, label %467

449:                                              ; preds = %446
  %450 = tail call i8* @malloc(i64 1024) #8
  %451 = icmp eq i8* %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds i8, i8* %450, i64 1023
  store i8 0, i8* %453, align 1, !tbaa !36
  br label %454

454:                                              ; preds = %452, %449
  %455 = phi i8* [ %453, %452 ], [ null, %449 ]
  %456 = tail call i8* @halide_string_to_string(i8* %450, i8* %455, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %457 = tail call i8* @halide_string_to_string(i8* %456, i8* %455, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #8
  %458 = tail call i8* @halide_string_to_string(i8* %457, i8* %455, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %451, label %459, label %460

459:                                              ; preds = %454
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %466

460:                                              ; preds = %454
  %461 = ptrtoint i8* %458 to i64
  %462 = ptrtoint i8* %450 to i64
  %463 = sub i64 1, %462
  %464 = add i64 %463, %461
  %465 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %450, i64 %464) #8
  tail call void @halide_error(i8* %0, i8* nonnull %450) #8
  br label %466

466:                                              ; preds = %460, %459
  tail call void @free(i8* %450) #8
  br label %467

467:                                              ; preds = %446, %466
  store i8* %447, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE to i8**), align 8, !tbaa !37
  %468 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0)) #8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %488

470:                                              ; preds = %467
  %471 = tail call i8* @malloc(i64 1024) #8
  %472 = icmp eq i8* %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, i8* %471, i64 1023
  store i8 0, i8* %474, align 1, !tbaa !36
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i8* [ %474, %473 ], [ null, %470 ]
  %477 = tail call i8* @halide_string_to_string(i8* %471, i8* %476, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %478 = tail call i8* @halide_string_to_string(i8* %477, i8* %476, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0)) #8
  %479 = tail call i8* @halide_string_to_string(i8* %478, i8* %476, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %472, label %480, label %481

480:                                              ; preds = %475
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %487

481:                                              ; preds = %475
  %482 = ptrtoint i8* %479 to i64
  %483 = ptrtoint i8* %471 to i64
  %484 = sub i64 1, %483
  %485 = add i64 %484, %482
  %486 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %471, i64 %485) #8
  tail call void @halide_error(i8* %0, i8* nonnull %471) #8
  br label %487

487:                                              ; preds = %481, %480
  tail call void @free(i8* %471) #8
  br label %488

488:                                              ; preds = %467, %487
  store i8* %468, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE to i8**), align 8, !tbaa !37
  %489 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)) #8
  %490 = icmp eq i8* %489, null
  br i1 %490, label %491, label %509

491:                                              ; preds = %488
  %492 = tail call i8* @malloc(i64 1024) #8
  %493 = icmp eq i8* %492, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %491
  %495 = getelementptr inbounds i8, i8* %492, i64 1023
  store i8 0, i8* %495, align 1, !tbaa !36
  br label %496

496:                                              ; preds = %494, %491
  %497 = phi i8* [ %495, %494 ], [ null, %491 ]
  %498 = tail call i8* @halide_string_to_string(i8* %492, i8* %497, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %499 = tail call i8* @halide_string_to_string(i8* %498, i8* %497, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)) #8
  %500 = tail call i8* @halide_string_to_string(i8* %499, i8* %497, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %493, label %501, label %502

501:                                              ; preds = %496
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %508

502:                                              ; preds = %496
  %503 = ptrtoint i8* %500 to i64
  %504 = ptrtoint i8* %492 to i64
  %505 = sub i64 1, %504
  %506 = add i64 %505, %503
  %507 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %492, i64 %506) #8
  tail call void @halide_error(i8* %0, i8* nonnull %492) #8
  br label %508

508:                                              ; preds = %502, %501
  tail call void @free(i8* %492) #8
  br label %509

509:                                              ; preds = %488, %508
  store i8* %489, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE to i8**), align 8, !tbaa !37
  %510 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0)) #8
  %511 = icmp eq i8* %510, null
  br i1 %511, label %512, label %530

512:                                              ; preds = %509
  %513 = tail call i8* @malloc(i64 1024) #8
  %514 = icmp eq i8* %513, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %512
  %516 = getelementptr inbounds i8, i8* %513, i64 1023
  store i8 0, i8* %516, align 1, !tbaa !36
  br label %517

517:                                              ; preds = %515, %512
  %518 = phi i8* [ %516, %515 ], [ null, %512 ]
  %519 = tail call i8* @halide_string_to_string(i8* %513, i8* %518, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %520 = tail call i8* @halide_string_to_string(i8* %519, i8* %518, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0)) #8
  %521 = tail call i8* @halide_string_to_string(i8* %520, i8* %518, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %514, label %522, label %523

522:                                              ; preds = %517
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %529

523:                                              ; preds = %517
  %524 = ptrtoint i8* %521 to i64
  %525 = ptrtoint i8* %513 to i64
  %526 = sub i64 1, %525
  %527 = add i64 %526, %524
  %528 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %513, i64 %527) #8
  tail call void @halide_error(i8* %0, i8* nonnull %513) #8
  br label %529

529:                                              ; preds = %523, %522
  tail call void @free(i8* %513) #8
  br label %530

530:                                              ; preds = %509, %529
  store i8* %510, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE to i8**), align 8, !tbaa !37
  %531 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #8
  %532 = icmp eq i8* %531, null
  br i1 %532, label %533, label %551

533:                                              ; preds = %530
  %534 = tail call i8* @malloc(i64 1024) #8
  %535 = icmp eq i8* %534, null
  br i1 %535, label %538, label %536

536:                                              ; preds = %533
  %537 = getelementptr inbounds i8, i8* %534, i64 1023
  store i8 0, i8* %537, align 1, !tbaa !36
  br label %538

538:                                              ; preds = %536, %533
  %539 = phi i8* [ %537, %536 ], [ null, %533 ]
  %540 = tail call i8* @halide_string_to_string(i8* %534, i8* %539, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i64 0, i64 0)) #8
  %541 = tail call i8* @halide_string_to_string(i8* %540, i8* %539, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #8
  %542 = tail call i8* @halide_string_to_string(i8* %541, i8* %539, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %535, label %543, label %544

543:                                              ; preds = %538
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %550

544:                                              ; preds = %538
  %545 = ptrtoint i8* %542 to i64
  %546 = ptrtoint i8* %534 to i64
  %547 = sub i64 1, %546
  %548 = add i64 %547, %545
  %549 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %534, i64 %548) #8
  tail call void @halide_error(i8* %0, i8* nonnull %534) #8
  br label %550

550:                                              ; preds = %544, %543
  tail call void @free(i8* %534) #8
  br label %551

551:                                              ; preds = %530, %550
  store i8* %531, i8** bitcast (i32 (i8*, i32, i64)** @_ZN6Halide7Runtime8Internal4Cuda21cuPointerGetAttributeE to i8**), align 8, !tbaa !37
  %552 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0)) #8
  store i8* %552, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE to i8**), align 8, !tbaa !37
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
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
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
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %5 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.36, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  %10 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  br i1 %2, label %13, label %12

12:                                               ; preds = %11
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !37
  br label %27

13:                                               ; preds = %11
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @_ZN6Halide7Runtime8Internal4Cuda19create_cuda_contextEPvPPNS2_8CUctx_stE(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !37
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %20, %19 ], [ %14, %13 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %22, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !37
  br label %25

24:                                               ; preds = %16
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  br label %27

25:                                               ; preds = %21, %7
  %26 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %23, %21 ], [ %9, %7 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !37
  br label %27

27:                                               ; preds = %24, %25, %12
  %28 = phi i32 [ 0, %25 ], [ %17, %24 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  ret i32 %28
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal4Cuda19create_cuda_contextEPvPPNS2_8CUctx_stE(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = alloca i32, align 4
  %10 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  tail call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #9
  %12 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %13 = icmp eq i32 (i32)* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = tail call i8* @malloc(i64 1024) #8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %15, i64 1023
  store i8 0, i8* %20, align 1, !tbaa !36
  %21 = tail call i8* @halide_string_to_string(i8* nonnull %15, i8* nonnull %20, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0)) #8
  %22 = ptrtoint i8* %21 to i64
  %23 = ptrtoint i8* %15 to i64
  %24 = add i64 %22, 1
  %25 = sub i64 %24, %23
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %15, i64 %25) #8
  tail call void @halide_error(i8* %0, i8* nonnull %15) #8
  br label %27

27:                                               ; preds = %19, %17
  tail call void @free(i8* %15) #8
  br label %243

28:                                               ; preds = %2
  %29 = tail call i32 %12(i32 0) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  %32 = tail call i8* @malloc(i64 1024) #8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %35, align 1, !tbaa !36
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i8* [ %35, %34 ], [ null, %31 ]
  %38 = tail call i8* @halide_string_to_string(i8* %32, i8* %37, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0)) #8
  %39 = tail call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %29) #9
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %45

43:                                               ; preds = %36
  %44 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* nonnull %39) #8
  br label %45

45:                                               ; preds = %41, %43
  %46 = phi i8* [ %44, %43 ], [ %42, %41 ]
  br i1 %33, label %47, label %48

47:                                               ; preds = %45
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %54

48:                                               ; preds = %45
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %32 to i64
  %51 = sub i64 1, %50
  %52 = add i64 %51, %49
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %52) #8
  tail call void @halide_error(i8* %0, i8* nonnull %32) #8
  br label %54

54:                                               ; preds = %47, %48
  call void @free(i8* %32) #8
  br label %243

55:                                               ; preds = %28
  %56 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #10
  store i32 0, i32* %3, align 4, !tbaa !39
  %57 = load i32 (i32*)*, i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda16cuDeviceGetCountE, align 8, !tbaa !37
  %58 = call i32 %57(i32* nonnull %3) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %98, label %60

60:                                               ; preds = %55
  %61 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %61) #10
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %62, align 8, !tbaa !40
  %63 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %63, align 8, !tbaa !43
  %64 = call i8* @malloc(i64 1024) #8
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %64, i8** %65, align 8, !tbaa !44
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %64, i8** %66, align 8, !tbaa !45
  %67 = icmp eq i8* %64, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds i8, i8* %64, i64 1023
  store i8 0, i8* %69, align 1, !tbaa !36
  br label %70

70:                                               ; preds = %60, %68
  %71 = phi i8* [ %69, %68 ], [ null, %60 ]
  %72 = call i8* @halide_string_to_string(i8* %64, i8* %71, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0)) #8
  %73 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %58) #9
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i8* @halide_string_to_string(i8* %72, i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %79

77:                                               ; preds = %70
  %78 = call i8* @halide_string_to_string(i8* %72, i8* %71, i8* nonnull %73) #8
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i8* [ %78, %77 ], [ %76, %75 ]
  %81 = load i8*, i8** %65, align 8, !tbaa !44
  %82 = icmp eq i8* %81, null
  %83 = load i8*, i8** %62, align 8, !tbaa !40
  br i1 %82, label %91, label %84

84:                                               ; preds = %79
  %85 = ptrtoint i8* %80 to i64
  %86 = ptrtoint i8* %81 to i64
  %87 = sub i64 1, %86
  %88 = add i64 %87, %85
  %89 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %83, i8* nonnull %81, i64 %88) #8
  %90 = load i8*, i8** %65, align 8, !tbaa !44
  br label %91

91:                                               ; preds = %79, %84
  %92 = phi i8* [ %90, %84 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %79 ]
  call void @halide_error(i8* %83, i8* %92) #8
  %93 = load i8, i8* %63, align 8, !tbaa !43, !range !46
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %65, align 8, !tbaa !44
  call void @free(i8* %96) #8
  br label %97

97:                                               ; preds = %91, %95
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %61) #10
  br label %241

98:                                               ; preds = %55
  %99 = load i32, i32* %3, align 4, !tbaa !39
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0)) #8
  br label %241

102:                                              ; preds = %98
  %103 = call i32 @halide_get_gpu_device(i8* %0) #8
  %104 = icmp eq i32 %103, -1
  %105 = load i32, i32* %3, align 4
  %106 = icmp eq i32 %105, 1
  %107 = and i1 %104, %106
  %108 = xor i1 %104, true
  %109 = or i1 %106, %108
  %110 = select i1 %107, i32 0, i32 %103
  br i1 %109, label %140, label %111

111:                                              ; preds = %102
  %112 = icmp sgt i32 %105, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %111
  %114 = bitcast i32* %5 to i8*
  %115 = bitcast i32* %6 to i8*
  br label %116

116:                                              ; preds = %113, %134
  %117 = phi i32 [ 0, %113 ], [ %137, %134 ]
  %118 = phi i32 [ 0, %113 ], [ %136, %134 ]
  %119 = phi i32 [ -1, %113 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #10
  %120 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE, align 8, !tbaa !37
  %121 = call i32 %120(i32* nonnull %5, i32 %117) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #10
  store i32 0, i32* %6, align 4, !tbaa !39
  %124 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 8, !tbaa !37
  %125 = load i32, i32* %5, align 4, !tbaa !39
  %126 = call i32 %124(i32* nonnull %6, i32 16, i32 %125) #8
  %127 = icmp eq i32 %126, 0
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, %118
  %130 = select i1 %129, i32 %119, i32 %117
  %131 = select i1 %129, i32 %118, i32 %128
  %132 = select i1 %127, i32 %130, i32 %119
  %133 = select i1 %127, i32 %131, i32 %118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #10
  br label %134

134:                                              ; preds = %116, %123
  %135 = phi i32 [ %132, %123 ], [ %119, %116 ]
  %136 = phi i32 [ %133, %123 ], [ %118, %116 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #10
  %137 = add nuw nsw i32 %117, 1
  %138 = load i32, i32* %3, align 4, !tbaa !39
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %116, label %140, !llvm.loop !47

140:                                              ; preds = %134, %111, %102
  %141 = phi i32 [ %110, %102 ], [ -1, %111 ], [ %135, %134 ]
  %142 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #10
  %143 = load i32 (i32*, i32)*, i32 (i32*, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuDeviceGetE, align 8, !tbaa !37
  %144 = call i32 %143(i32* nonnull %7, i32 %141) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0)) #8
  br label %239

147:                                              ; preds = %140
  %148 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda11cuCtxCreateE, align 8, !tbaa !37
  %149 = load i32, i32* %7, align 4, !tbaa !39
  %150 = call i32 %148(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i32 0, i32 %149) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %191, label %152

152:                                              ; preds = %147
  %153 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %150) #9
  %154 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %154) #10
  %155 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %155, align 8, !tbaa !40
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %156, align 8, !tbaa !43
  %157 = call i8* @malloc(i64 1024) #8
  %158 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %157, i8** %158, align 8, !tbaa !44
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %157, i8** %159, align 8, !tbaa !45
  %160 = icmp eq i8* %157, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds i8, i8* %157, i64 1023
  store i8 0, i8* %162, align 1, !tbaa !36
  br label %163

163:                                              ; preds = %152, %161
  %164 = phi i8* [ %162, %161 ], [ null, %152 ]
  %165 = call i8* @halide_string_to_string(i8* %157, i8* %164, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0)) #8
  %166 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %150) #9
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i8* @halide_string_to_string(i8* %165, i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %172

170:                                              ; preds = %163
  %171 = call i8* @halide_string_to_string(i8* %165, i8* %164, i8* nonnull %166) #8
  br label %172

172:                                              ; preds = %168, %170
  %173 = phi i8* [ %171, %170 ], [ %169, %168 ]
  %174 = load i8*, i8** %158, align 8, !tbaa !44
  %175 = icmp eq i8* %174, null
  %176 = load i8*, i8** %155, align 8, !tbaa !40
  br i1 %175, label %184, label %177

177:                                              ; preds = %172
  %178 = ptrtoint i8* %173 to i64
  %179 = ptrtoint i8* %174 to i64
  %180 = sub i64 1, %179
  %181 = add i64 %180, %178
  %182 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %176, i8* nonnull %174, i64 %181) #8
  %183 = load i8*, i8** %158, align 8, !tbaa !44
  br label %184

184:                                              ; preds = %172, %177
  %185 = phi i8* [ %183, %177 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %172 ]
  call void @halide_error(i8* %176, i8* %185) #8
  %186 = load i8, i8* %156, align 8, !tbaa !43, !range !46
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %158, align 8, !tbaa !44
  call void @free(i8* %189) #8
  br label %190

190:                                              ; preds = %184, %188
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %154) #10
  br label %239

191:                                              ; preds = %147
  %192 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %192) #10
  store i32 0, i32* %9, align 4, !tbaa !39
  %193 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @_ZN6Halide7Runtime8Internal4Cuda18cuCtxGetApiVersionE, align 8, !tbaa !37
  %194 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !37
  %195 = call i32 %193(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %194, i32* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %192) #10
  %196 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %196) #10
  %197 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %198 = call i32 %197(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %238, label %200

200:                                              ; preds = %191
  %201 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %201) #10
  %202 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %202, align 8, !tbaa !40
  %203 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %203, align 8, !tbaa !43
  %204 = call i8* @malloc(i64 1024) #8
  %205 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %204, i8** %205, align 8, !tbaa !44
  %206 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %204, i8** %206, align 8, !tbaa !45
  %207 = icmp eq i8* %204, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds i8, i8* %204, i64 1023
  store i8 0, i8* %209, align 1, !tbaa !36
  br label %210

210:                                              ; preds = %200, %208
  %211 = phi i8* [ %209, %208 ], [ null, %200 ]
  %212 = call i8* @halide_string_to_string(i8* %204, i8* %211, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0)) #8
  %213 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %198) #9
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i8* @halide_string_to_string(i8* %212, i8* %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %219

217:                                              ; preds = %210
  %218 = call i8* @halide_string_to_string(i8* %212, i8* %211, i8* nonnull %213) #8
  br label %219

219:                                              ; preds = %215, %217
  %220 = phi i8* [ %218, %217 ], [ %216, %215 ]
  %221 = load i8*, i8** %205, align 8, !tbaa !44
  %222 = icmp eq i8* %221, null
  %223 = load i8*, i8** %202, align 8, !tbaa !40
  br i1 %222, label %231, label %224

224:                                              ; preds = %219
  %225 = ptrtoint i8* %220 to i64
  %226 = ptrtoint i8* %221 to i64
  %227 = sub i64 1, %226
  %228 = add i64 %227, %225
  %229 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %223, i8* nonnull %221, i64 %228) #8
  %230 = load i8*, i8** %205, align 8, !tbaa !44
  br label %231

231:                                              ; preds = %219, %224
  %232 = phi i8* [ %230, %224 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %219 ]
  call void @halide_error(i8* %223, i8* %232) #8
  %233 = load i8, i8* %203, align 8, !tbaa !43, !range !46
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = load i8*, i8** %205, align 8, !tbaa !44
  call void @free(i8* %236) #8
  br label %237

237:                                              ; preds = %231, %235
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %201) #10
  br label %238

238:                                              ; preds = %191, %237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %196) #10
  br label %239

239:                                              ; preds = %238, %190, %146
  %240 = phi i32 [ %144, %146 ], [ %150, %190 ], [ %198, %238 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #10
  br label %241

241:                                              ; preds = %239, %101, %97
  %242 = phi i32 [ %58, %97 ], [ 100, %101 ], [ %240, %239 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #10
  br label %243

243:                                              ; preds = %54, %241, %27
  %244 = phi i32 [ 301, %27 ], [ %29, %54 ], [ %242, %241 ]
  ret i32 %244
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_release_context(i8* %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %1, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2) local_unnamed_addr #5 {
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2, align 8, !tbaa !37
  ret i32 0
}

; Function Attrs: nounwind
define weak i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %0) local_unnamed_addr #4 {
  switch i32 %0, label %56 [
    i32 0, label %75
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
  br label %75

3:                                                ; preds = %1
  br label %75

4:                                                ; preds = %1
  br label %75

5:                                                ; preds = %1
  br label %75

6:                                                ; preds = %1
  br label %75

7:                                                ; preds = %1
  br label %75

8:                                                ; preds = %1
  br label %75

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  br label %75

11:                                               ; preds = %1
  br label %75

12:                                               ; preds = %1
  br label %75

13:                                               ; preds = %1
  br label %75

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  br label %75

16:                                               ; preds = %1
  br label %75

17:                                               ; preds = %1
  br label %75

18:                                               ; preds = %1
  br label %75

19:                                               ; preds = %1
  br label %75

20:                                               ; preds = %1
  br label %75

21:                                               ; preds = %1
  br label %75

22:                                               ; preds = %1
  br label %75

23:                                               ; preds = %1
  br label %75

24:                                               ; preds = %1
  br label %75

25:                                               ; preds = %1
  br label %75

26:                                               ; preds = %1
  br label %75

27:                                               ; preds = %1
  br label %75

28:                                               ; preds = %1
  br label %75

29:                                               ; preds = %1
  br label %75

30:                                               ; preds = %1
  br label %75

31:                                               ; preds = %1
  br label %75

32:                                               ; preds = %1
  br label %75

33:                                               ; preds = %1
  br label %75

34:                                               ; preds = %1
  br label %75

35:                                               ; preds = %1
  br label %75

36:                                               ; preds = %1
  br label %75

37:                                               ; preds = %1
  br label %75

38:                                               ; preds = %1
  br label %75

39:                                               ; preds = %1
  br label %75

40:                                               ; preds = %1
  br label %75

41:                                               ; preds = %1
  br label %75

42:                                               ; preds = %1
  br label %75

43:                                               ; preds = %1
  br label %75

44:                                               ; preds = %1
  br label %75

45:                                               ; preds = %1
  br label %75

46:                                               ; preds = %1
  br label %75

47:                                               ; preds = %1
  br label %75

48:                                               ; preds = %1
  br label %75

49:                                               ; preds = %1
  br label %75

50:                                               ; preds = %1
  br label %75

51:                                               ; preds = %1
  br label %75

52:                                               ; preds = %1
  br label %75

53:                                               ; preds = %1
  br label %75

54:                                               ; preds = %1
  br label %75

55:                                               ; preds = %1
  br label %75

56:                                               ; preds = %1
  %57 = tail call i8* @malloc(i64 1024) #8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %57, i64 1023
  store i8 0, i8* %60, align 1, !tbaa !36
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.194, i64 0, i64 0)) #8
  %64 = sext i32 %0 to i64
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #8
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %58, label %67, label %68

67:                                               ; preds = %61
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %74

68:                                               ; preds = %61
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %57 to i64
  %71 = add i64 %69, 1
  %72 = sub i64 %71, %70
  %73 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %57, i64 %72) #8
  tail call void @halide_error(i8* null, i8* nonnull %57) #8
  br label %74

74:                                               ; preds = %68, %67
  tail call void @free(i8* %57) #8
  br label %75

75:                                               ; preds = %1, %74, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %76 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.195, i64 0, i64 0), %74 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i64 0, i64 0), %55 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i64 0, i64 0), %54 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.191, i64 0, i64 0), %53 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i64 0, i64 0), %52 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.189, i64 0, i64 0), %51 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.188, i64 0, i64 0), %50 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i64 0, i64 0), %49 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.186, i64 0, i64 0), %48 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.185, i64 0, i64 0), %47 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.184, i64 0, i64 0), %46 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.183, i64 0, i64 0), %45 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.182, i64 0, i64 0), %44 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.181, i64 0, i64 0), %43 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.180, i64 0, i64 0), %42 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.179, i64 0, i64 0), %41 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i64 0, i64 0), %40 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.177, i64 0, i64 0), %39 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i64 0, i64 0), %38 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.175, i64 0, i64 0), %37 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.174, i64 0, i64 0), %36 ], [ getelementptr inbounds ([37 x i8], [37 x i8]* @.str.173, i64 0, i64 0), %35 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.172, i64 0, i64 0), %34 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.171, i64 0, i64 0), %33 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.170, i64 0, i64 0), %32 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.169, i64 0, i64 0), %31 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.168, i64 0, i64 0), %30 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.167, i64 0, i64 0), %29 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.166, i64 0, i64 0), %28 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.165, i64 0, i64 0), %27 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i64 0, i64 0), %26 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i64 0, i64 0), %25 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.162, i64 0, i64 0), %24 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.161, i64 0, i64 0), %23 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.160, i64 0, i64 0), %22 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.159, i64 0, i64 0), %21 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i64 0, i64 0), %20 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.157, i64 0, i64 0), %19 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i64 0, i64 0), %18 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i64 0, i64 0), %17 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i64 0, i64 0), %16 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.153, i64 0, i64 0), %15 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.152, i64 0, i64 0), %14 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i64 0, i64 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.150, i64 0, i64 0), %12 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i64 0, i64 0), %11 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i64 0, i64 0), %10 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0), %9 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.146, i64 0, i64 0), %8 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.145, i64 0, i64 0), %7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.144, i64 0, i64 0), %6 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.143, i64 0, i64 0), %5 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.142, i64 0, i64 0), %4 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.141, i64 0, i64 0), %3 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i64 0, i64 0), %2 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i64 0, i64 0), %1 ]
  ret i8* %76
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #5 {
  ret i1 true
}

; Function Attrs: nounwind
define weak %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* @_ZN6Halide7Runtime8Internal4Cuda14compile_kernelEPvPKci(i8* %0, i8* %1, i32 %2) #4 {
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i8*], align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = bitcast [1 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %9, align 4
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0)) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @atoi(i8* nonnull %10) #8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i8* [ %15, %12 ], [ inttoptr (i64 64 to i8*), %3 ]
  %18 = bitcast [1 x i8*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  store i8* %17, i8** %19, align 8, !tbaa !37
  %20 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #10
  %21 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @_ZN6Halide7Runtime8Internal4Cuda18cuModuleLoadDataExE, align 8, !tbaa !37
  %22 = call i32 %21(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull %6, i8* %1, i32 1, i32* nonnull %9, i8** nonnull %19) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %16
  %25 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #10
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %26, align 8, !tbaa !40
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %27, align 8, !tbaa !43
  %28 = call i8* @malloc(i64 1024) #8
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %28, i8** %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %28, i8** %30, align 8, !tbaa !45
  %31 = icmp eq i8* %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %28, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !36
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i8* [ %33, %32 ], [ null, %24 ]
  %36 = call i8* @halide_string_to_string(i8* %28, i8* %35, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0)) #8
  %37 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %22) #9
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i8* @halide_string_to_string(i8* %36, i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %43

41:                                               ; preds = %34
  %42 = call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull %37) #8
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i8* [ %42, %41 ], [ %40, %39 ]
  %45 = load i8*, i8** %29, align 8, !tbaa !44
  %46 = icmp eq i8* %45, null
  %47 = load i8*, i8** %26, align 8, !tbaa !40
  br i1 %46, label %55, label %48

48:                                               ; preds = %43
  %49 = ptrtoint i8* %44 to i64
  %50 = ptrtoint i8* %45 to i64
  %51 = sub i64 1, %50
  %52 = add i64 %51, %49
  %53 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %47, i8* nonnull %45, i64 %52) #8
  %54 = load i8*, i8** %29, align 8, !tbaa !44
  br label %55

55:                                               ; preds = %43, %48
  %56 = phi i8* [ %54, %48 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %43 ]
  call void @halide_error(i8* %47, i8* %56) #8
  %57 = load i8, i8* %27, align 8, !tbaa !43, !range !46
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %29, align 8, !tbaa !44
  call void @free(i8* %60) #8
  br label %61

61:                                               ; preds = %55, %59
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #10
  br label %64

62:                                               ; preds = %16
  %63 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6, align 8, !tbaa !37
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ null, %61 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %65
}

declare i8* @getenv(i8*) local_unnamed_addr #2

declare i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %7 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 8
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 0
  store i8* %0, i8** %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !51
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 8, !tbaa !51
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  %29 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %30 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i8* %0, i8** %1, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %29, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 8 dereferenceable(8) %7, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal4Cuda14compile_kernelEPvPKci, i8* %0, i8* %2, i32 %3) #9
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7, align 8, !tbaa !37
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.62, i64 0, i64 0)) #8
  call void @abort() #8
  br label %35

35:                                               ; preds = %27, %34, %31
  %36 = phi i32 [ -1, %27 ], [ 0, %34 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  %37 = load i32, i32* %11, align 8, !tbaa !51
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #10
  %41 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %42 = call i32 %41(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10
  br label %43

43:                                               ; preds = %4, %22, %35, %39
  %44 = phi i32 [ %36, %35 ], [ %36, %39 ], [ %25, %22 ], [ %12, %4 ]
  %45 = load i8*, i8** %9, align 8, !tbaa !48
  %46 = call i32 @halide_cuda_release_context(i8* %45) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret i32 %44
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE18kernel_state_setupIPFS8_PvPKciEJSB_SD_iEEEbSB_PSB_S6_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 8 dereferenceable(8) %4, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* %5, i8* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", align 8
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !39
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !52
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !52
  store i32 %17, i32* %12, align 4, !tbaa !39
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8, !tbaa !55
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %19
  %25 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3 to i64
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
  %38 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %37, align 8, !tbaa !56
  %39 = sext i32 %32 to i64
  %40 = icmp sgt i32 %32, 1
  %41 = select i1 %40, i32 %32, i32 1
  %42 = zext i32 %41 to i64
  br label %46

43:                                               ; preds = %54
  %44 = icmp slt i64 %60, %39
  %45 = icmp eq i64 %60, %42
  br i1 %45, label %68, label %46, !llvm.loop !57

46:                                               ; preds = %43, %34
  %47 = phi i64 [ 0, %34 ], [ %60, %43 ]
  %48 = phi i1 [ true, %34 ], [ %44, %43 ]
  %49 = add i64 %47, %31
  %50 = and i64 %49, %36
  %51 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 2
  %52 = load i32, i32* %51, align 8, !tbaa !58
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 0
  %56 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %55, align 8, !tbaa !60
  %57 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %56, %3
  %58 = icmp eq i32 %52, %20
  %59 = and i1 %58, %57
  %60 = add nuw nsw i64 %47, 1
  br i1 %59, label %61, label %43

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 3
  %63 = load i32, i32* %62, align 4, !tbaa !61
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4, !tbaa !61
  br i1 %48, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 1
  %67 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %66, align 8, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %67, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 8, !tbaa !37
  br label %80

68:                                               ; preds = %46, %43, %24, %19, %61
  %69 = tail call %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %5(i8* %6, i8* %7, i32 %8) #8
  %70 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %72) #10
  %73 = load i32, i32* %12, align 4, !tbaa !39
  %74 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %74, align 8, !tbaa !60
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %75, align 8, !tbaa !62
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 2
  store i32 %73, i32* %76, align 8, !tbaa !58
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 3
  store i32 1, i32* %77, align 4, !tbaa !61
  %78 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %72) #10
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 8, !tbaa !37
  br label %80

80:                                               ; preds = %79, %68, %71, %65
  %81 = phi i1 [ true, %65 ], [ true, %79 ], [ false, %68 ], [ false, %71 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %81
}

; Function Attrs: nounwind
define weak void @halide_cuda_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #10
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %8, align 8, !tbaa !51
  %9 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %7, i1 zeroext true) #8
  store i32 %9, i32* %8, align 8, !tbaa !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %77

11:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %12 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !50
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %17 = icmp eq i32 (i32)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %21 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !50
  %22 = call i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %21) #8
  store i32 %22, i32* %8, align 8, !tbaa !51
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !50
  %26 = ptrtoint i8* %1 to i64
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !55
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %24
  %31 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %25 to i64
  %32 = and i64 %26, 4294967295
  %33 = add i64 %32, %31
  %34 = mul i64 %33, -7046029254386353131
  %35 = sub i32 64, %28
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %34, %36
  %38 = shl nuw i32 1, %28
  %39 = icmp eq i32 %28, 31
  br i1 %39, label %70, label %40

40:                                               ; preds = %30
  %41 = add nsw i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !56
  %44 = sext i32 %38 to i64
  %45 = icmp sgt i32 %38, 1
  %46 = select i1 %45, i32 %38, i32 1
  %47 = zext i32 %46 to i64
  br label %51

48:                                               ; preds = %59
  %49 = icmp slt i64 %65, %44
  %50 = icmp eq i64 %65, %47
  br i1 %50, label %70, label %51, !llvm.loop !57

51:                                               ; preds = %48, %40
  %52 = phi i64 [ 0, %40 ], [ %65, %48 ]
  %53 = phi i1 [ true, %40 ], [ %49, %48 ]
  %54 = add i64 %52, %37
  %55 = and i64 %54, %42
  %56 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 2
  %57 = load i32, i32* %56, align 8, !tbaa !58
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 0
  %61 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %60, align 8, !tbaa !60
  %62 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %61, %25
  %63 = icmp eq i32 %57, %27
  %64 = and i1 %63, %62
  %65 = add nuw nsw i64 %52, 1
  br i1 %64, label %66, label %48

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 3
  %68 = load i32, i32* %67, align 4, !tbaa !61
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 4, !tbaa !61
  br i1 %53, label %73, label %70

70:                                               ; preds = %48, %51, %24, %30, %66
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.206, i64 0, i64 0)) #8
  call void @abort() #8
  %71 = load i32, i32* %8, align 8, !tbaa !51
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66, %70
  %74 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #10
  %75 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %76 = call i32 %75(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #10
  br label %77

77:                                               ; preds = %2, %19, %70, %73
  %78 = load i8*, i8** %6, align 8, !tbaa !48
  %79 = call i32 @halide_cuda_release_context(i8* %78) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #10
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_release_unused_device_allocations(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %2 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 8, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 8, !tbaa !37
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %11, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i64 0, i32 0
  %7 = load i32 (i64)*, i32 (i64)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 8, !tbaa !37
  %8 = load i64, i64* %6, align 8, !tbaa !63
  %9 = tail call i32 %7(i64 %8) #8
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i64 0, i32 4
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %10, align 8, !tbaa !66
  %12 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5 to i8*
  tail call void @free(i8* nonnull %12) #8
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %11, null
  br i1 %13, label %14, label %4, !llvm.loop !67

14:                                               ; preds = %4, %1
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @register_cuda_allocation_pool() #0 {
  store i32 (i8*)* @halide_cuda_release_unused_device_allocations, i32 (i8*)** getelementptr inbounds (%struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* @cuda_allocation_pool, i64 0, i32 0), align 8, !tbaa !68
  tail call void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* nonnull @cuda_allocation_pool) #8
  ret void
}

declare void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %2
  %9 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #10
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %12, align 8, !tbaa !51
  %13 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %11, i1 zeroext true) #8
  store i32 %13, i32* %12, align 8, !tbaa !51
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %160

15:                                               ; preds = %8
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %16 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !50
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %21 = icmp eq i32 (i32)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %19, %22
  %24 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !50
  %26 = call i32 %24(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %25) #8
  store i32 %26, i32* %12, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %160

28:                                               ; preds = %23
  %29 = call zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #9
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.66, i64 0, i64 0)) #8
  call void @abort() #8
  br label %31

31:                                               ; preds = %30, %28
  %32 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %32, label %33, label %143

33:                                               ; preds = %31
  %34 = call i8* @malloc(i64 40) #8
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !50
  %36 = getelementptr inbounds i8, i8* %34, i64 8
  %37 = bitcast i8* %36 to %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %37, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %39 = load i32, i32* %38, align 4, !tbaa !24
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %43 = load i8, i8* %42, align 1, !tbaa !23
  br label %87

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %45, align 8, !tbaa !25
  %47 = zext i32 %39 to i64
  br label %48

48:                                               ; preds = %62, %44
  %49 = phi i64 [ 0, %44 ], [ %64, %62 ]
  %50 = phi i64 [ 0, %44 ], [ %63, %62 ]
  %51 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %49, i32 2
  %52 = load i32, i32* %51, align 4, !tbaa !26
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %49, i32 1
  %57 = load i32, i32* %56, align 4, !tbaa !31
  %58 = add nsw i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %55
  %61 = add nsw i64 %60, %50
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i64 [ %61, %54 ], [ %50, %48 ]
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, %47
  br i1 %65, label %66, label %48, !llvm.loop !71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %68 = load i8, i8* %67, align 1, !tbaa !23
  br label %69

69:                                               ; preds = %83, %66
  %70 = phi i64 [ 0, %66 ], [ %85, %83 ]
  %71 = phi i64 [ 0, %66 ], [ %84, %83 ]
  %72 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %70, i32 2
  %73 = load i32, i32* %72, align 4, !tbaa !26
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %70, i32 1
  %78 = load i32, i32* %77, align 4, !tbaa !31
  %79 = add nsw i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %76
  %82 = add nsw i64 %81, %71
  br label %83

83:                                               ; preds = %75, %69
  %84 = phi i64 [ %82, %75 ], [ %71, %69 ]
  %85 = add nuw nsw i64 %70, 1
  %86 = icmp eq i64 %85, %47
  br i1 %86, label %87, label %69, !llvm.loop !72

87:                                               ; preds = %83, %41
  %88 = phi i8 [ %43, %41 ], [ %68, %83 ]
  %89 = phi i64 [ 0, %41 ], [ %63, %83 ]
  %90 = phi i64 [ 0, %41 ], [ %84, %83 ]
  %91 = zext i8 %88 to i64
  %92 = add nuw nsw i64 %91, 7
  %93 = lshr i64 %92, 3
  %94 = add nsw i64 %89, 1
  %95 = sub i64 %94, %90
  %96 = mul i64 %95, %93
  %97 = call i64 @llvm.ctlz.i64(i64 %96, i1 true) #10, !range !73
  %98 = trunc i64 %97 to i32
  %99 = icmp ult i32 %98, 60
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = add i64 %96, -1
  %102 = sub nsw i64 60, %97
  %103 = and i64 %102, 4294967295
  %104 = lshr i64 %101, %103
  %105 = add i64 %104, 1
  %106 = shl i64 %105, %103
  br label %107

107:                                              ; preds = %87, %100
  %108 = phi i64 [ %106, %100 ], [ %96, %87 ]
  %109 = getelementptr inbounds i8, i8* %34, i64 24
  %110 = bitcast i8* %109 to i64*
  store i64 %108, i64* %110, align 8, !tbaa !74
  %111 = bitcast i8* %34 to i64*
  store i64 %6, i64* %111, align 8, !tbaa !63
  %112 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 8, !tbaa !37
  %113 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %112, null
  %114 = getelementptr inbounds i8, i8* %34, i64 16
  %115 = bitcast i8* %114 to %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"**
  br i1 %113, label %138, label %116

116:                                              ; preds = %107
  %117 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %115) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = call i8* @malloc(i64 1024) #8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, i8* %120, i64 1023
  store i8 0, i8* %123, align 1, !tbaa !36
  br label %124

124:                                              ; preds = %119, %122
  %125 = phi i8* [ %123, %122 ], [ null, %119 ]
  %126 = call i8* @halide_string_to_string(i8* %120, i8* %125, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.68, i64 0, i64 0)) #8
  %127 = sext i32 %117 to i64
  %128 = call i8* @halide_int64_to_string(i8* %126, i8* %125, i64 %127, i32 1) #8
  %129 = call i8* @halide_string_to_string(i8* %128, i8* %125, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %121, label %130, label %131

130:                                              ; preds = %124
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %137

131:                                              ; preds = %124
  %132 = ptrtoint i8* %129 to i64
  %133 = ptrtoint i8* %120 to i64
  %134 = add i64 %132, 1
  %135 = sub i64 %134, %133
  %136 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %120, i64 %135) #8
  call void @halide_error(i8* %0, i8* nonnull %120) #8
  br label %137

137:                                              ; preds = %131, %130
  call void @free(i8* %120) #8
  br label %139

138:                                              ; preds = %107
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %115, align 8, !tbaa !75
  br label %139

139:                                              ; preds = %116, %137, %138
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %140 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 8, !tbaa !37
  %141 = getelementptr inbounds i8, i8* %34, i64 32
  %142 = bitcast i8* %141 to %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"**
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %140, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %142, align 8, !tbaa !66
  store i8* %34, i8** bitcast (%"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE to i8**), align 8, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  br label %146

143:                                              ; preds = %31
  %144 = load i32 (i64)*, i32 (i64)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 8, !tbaa !37
  %145 = call i32 %144(i64 %6) #8
  br label %146

146:                                              ; preds = %139, %143
  %147 = phi i32 [ 0, %139 ], [ %145, %143 ]
  %148 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %149 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %148, align 8, !tbaa !76
  %150 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %149, i64 0, i32 15
  %151 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %150, align 8, !tbaa !77
  %152 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %151, i64 0, i32 1
  %153 = load void ()*, void ()** %152, align 8, !tbaa !79
  call void %153() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %148, align 8, !tbaa !76
  store i64 0, i64* %5, align 8, !tbaa !22
  %154 = load i32, i32* %12, align 8, !tbaa !51
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %157) #10
  %158 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %159 = call i32 %158(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %157) #10
  br label %160

160:                                              ; preds = %8, %23, %146, %156
  %161 = phi i32 [ %147, %146 ], [ %147, %156 ], [ %26, %23 ], [ %13, %8 ]
  %162 = load i8*, i8** %10, align 8, !tbaa !48
  %163 = call i32 @halide_cuda_release_context(i8* %162) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #10
  br label %164

164:                                              ; preds = %2, %160
  %165 = phi i32 [ %161, %160 ], [ 0, %2 ]
  ret i32 %165
}

declare zeroext i1 @halide_can_reuse_device_allocations(i8*) local_unnamed_addr #2

declare i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_release(i8* %0) #4 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %5 = icmp eq i32 (i32)* %4, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %2, i1 zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !37
  %12 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %10
  %14 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %15 = call i32 %14(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* nonnull %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE, align 8, !tbaa !37
  %19 = call i32 %18() #8
  %20 = and i32 %19, -5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.70, i64 0, i64 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %13, %22, %17
  %24 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 0)) #8
  %26 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !81
  %27 = icmp eq i32 %26, 0
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 1), align 8
  %29 = icmp eq i32 %28, 31
  %30 = or i1 %27, %29
  br i1 %30, label %66, label %31

31:                                               ; preds = %23
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !56
  br label %33

33:                                               ; preds = %59, %31
  %34 = phi i32 [ %28, %31 ], [ %60, %59 ]
  %35 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %31 ], [ %61, %59 ]
  %36 = phi i64 [ 0, %31 ], [ %62, %59 ]
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 2
  %38 = load i32, i32* %37, align 8, !tbaa !58
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 0
  %42 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %41, align 8, !tbaa !60
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %42, %25
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 3
  %46 = load i32, i32* %45, align 4, !tbaa !61
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE, align 8, !tbaa !37
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 1
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %50, align 8, !tbaa !62
  %52 = call i32 %49(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %51) #8
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !56
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i64 %36, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %54, align 8, !tbaa !62
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i64 %36, i32 2
  store i32 1, i32* %55, align 8, !tbaa !58
  %56 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !81
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !81
  %58 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !55
  br label %59

59:                                               ; preds = %48, %44, %40, %33
  %60 = phi i32 [ %34, %33 ], [ %34, %40 ], [ %34, %44 ], [ %58, %48 ]
  %61 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %35, %33 ], [ %35, %40 ], [ %35, %44 ], [ %53, %48 ]
  %62 = add nuw nsw i64 %36, 1
  %63 = shl nuw i32 1, %60
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %33, label %66, !llvm.loop !82

66:                                               ; preds = %59, %23
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 0)) #8
  %67 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #10
  %68 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %69 = call i32 %68(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  %70 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !37
  %71 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda14cuProfilerStopE, align 8, !tbaa !37
  %75 = call i32 %74() #8
  %76 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda12cuCtxDestroyE, align 8, !tbaa !37
  %77 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  %78 = call i32 %76(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %77) #8
  %79 = and i32 %78, -5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.72, i64 0, i64 0)) #8
  call void @abort() #8
  br label %82

82:                                               ; preds = %81, %73
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @_ZN6Halide7Runtime8Internal4Cuda7contextE, align 8, !tbaa !37
  br label %83

83:                                               ; preds = %82, %66
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda12context_lockE) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #10
  br label %84

84:                                               ; preds = %83, %10
  %85 = call i32 @halide_cuda_release_context(i8* %0) #9
  br label %86

86:                                               ; preds = %6, %84
  %87 = phi i32 [ 0, %84 ], [ %8, %6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  br label %88

88:                                               ; preds = %1, %86
  %89 = phi i32 [ %87, %86 ], [ 0, %1 ]
  ret i32 %89
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !51
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %300

14:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 8, !tbaa !51
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %300

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %33 = load i8, i8* %32, align 1, !tbaa !23
  br label %77

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !25
  %37 = zext i32 %29 to i64
  br label %38

38:                                               ; preds = %52, %34
  %39 = phi i64 [ 0, %34 ], [ %54, %52 ]
  %40 = phi i64 [ 0, %34 ], [ %53, %52 ]
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %39, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %39, i32 1
  %47 = load i32, i32* %46, align 4, !tbaa !31
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %45
  %51 = add nsw i64 %50, %40
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i64 [ %51, %44 ], [ %40, %38 ]
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %38, !llvm.loop !71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %58 = load i8, i8* %57, align 1, !tbaa !23
  br label %59

59:                                               ; preds = %73, %56
  %60 = phi i64 [ 0, %56 ], [ %75, %73 ]
  %61 = phi i64 [ 0, %56 ], [ %74, %73 ]
  %62 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %60, i32 2
  %63 = load i32, i32* %62, align 4, !tbaa !26
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %60, i32 1
  %68 = load i32, i32* %67, align 4, !tbaa !31
  %69 = add nsw i32 %68, -1
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %66
  %72 = add nsw i64 %71, %61
  br label %73

73:                                               ; preds = %65, %59
  %74 = phi i64 [ %72, %65 ], [ %61, %59 ]
  %75 = add nuw nsw i64 %60, 1
  %76 = icmp eq i64 %75, %37
  br i1 %76, label %77, label %59, !llvm.loop !72

77:                                               ; preds = %73, %31
  %78 = phi i8 [ %33, %31 ], [ %58, %73 ]
  %79 = phi i64 [ 0, %31 ], [ %53, %73 ]
  %80 = phi i64 [ 0, %31 ], [ %74, %73 ]
  %81 = zext i8 %78 to i64
  %82 = add nuw nsw i64 %81, 7
  %83 = lshr i64 %82, 3
  %84 = add nsw i64 %79, 1
  %85 = sub i64 %84, %80
  %86 = mul i64 %85, %83
  %87 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = call i64 @llvm.ctlz.i64(i64 %86, i1 true) #10, !range !73
  %90 = trunc i64 %89 to i32
  %91 = icmp ult i32 %90, 60
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = add i64 %86, -1
  %94 = sub nsw i64 60, %89
  %95 = and i64 %94, 4294967295
  %96 = lshr i64 %93, %95
  %97 = add i64 %96, 1
  %98 = shl i64 %97, %95
  br label %99

99:                                               ; preds = %92, %88, %77
  %100 = phi i64 [ %86, %77 ], [ %98, %92 ], [ %86, %88 ]
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.74, i64 0, i64 0)) #8
  call void @abort() #8
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %105 = load i64, i64* %104, align 8, !tbaa !22
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %28, align 4, !tbaa !24
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %118

112:                                              ; preds = %103
  %113 = call zeroext i1 @_ZN6Halide7Runtime8Internal4Cuda23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #9
  br i1 %113, label %292, label %114

114:                                              ; preds = %112
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.75, i64 0, i64 0)) #8
  call void @abort() #8
  br label %292

115:                                              ; preds = %127, %107
  %116 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #10
  store i64 0, i64* %5, align 8, !tbaa !3
  %117 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %117, label %132, label %226

118:                                              ; preds = %110, %127
  %119 = phi i32 [ %108, %110 ], [ %128, %127 ]
  %120 = phi i64 [ 0, %110 ], [ %129, %127 ]
  %121 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %111, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %121, i64 %120, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !26
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.76, i64 0, i64 0)) #8
  call void @abort() #8
  %126 = load i32, i32* %28, align 4, !tbaa !24
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi i32 [ %119, %118 ], [ %126, %125 ]
  %129 = add nuw nsw i64 %120, 1
  %130 = sext i32 %128 to i64
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %118, label %115, !llvm.loop !83

132:                                              ; preds = %115
  %133 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 8, !tbaa !37
  %134 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 8, !tbaa !37
  %135 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %134, null
  br i1 %135, label %159, label %136

136:                                              ; preds = %132
  %137 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !50
  %138 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %137, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %6) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %136
  %141 = call i8* @malloc(i64 1024) #8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, i8* %141, i64 1023
  store i8 0, i8* %144, align 1, !tbaa !36
  br label %145

145:                                              ; preds = %140, %143
  %146 = phi i8* [ %144, %143 ], [ null, %140 ]
  %147 = call i8* @halide_string_to_string(i8* %141, i8* %146, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @.str.78, i64 0, i64 0)) #8
  %148 = sext i32 %138 to i64
  %149 = call i8* @halide_int64_to_string(i8* %147, i8* %146, i64 %148, i32 1) #8
  %150 = call i8* @halide_string_to_string(i8* %149, i8* %146, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %142, label %151, label %152

151:                                              ; preds = %145
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %158

152:                                              ; preds = %145
  %153 = ptrtoint i8* %150 to i64
  %154 = ptrtoint i8* %141 to i64
  %155 = add i64 %153, 1
  %156 = sub i64 %155, %154
  %157 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %141, i64 %156) #8
  call void @halide_error(i8* %0, i8* nonnull %141) #8
  br label %158

158:                                              ; preds = %152, %151
  call void @free(i8* %141) #8
  br label %159

159:                                              ; preds = %136, %158, %132
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  %160 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @_ZN6Halide7Runtime8Internal4Cuda9free_listE, align 8, !tbaa !37
  %161 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %160, null
  br i1 %161, label %213, label %162

162:                                              ; preds = %159
  %163 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8
  %164 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 8
  br label %165

165:                                              ; preds = %162, %195
  %166 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %160, %162 ], [ %200, %195 ]
  %167 = phi i32 [ 0, %162 ], [ %199, %195 ]
  %168 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ @_ZN6Halide7Runtime8Internal4Cuda9free_listE, %162 ], [ %198, %195 ]
  %169 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ null, %162 ], [ %197, %195 ]
  %170 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ null, %162 ], [ %196, %195 ]
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 3
  %172 = load i64, i64* %171, align 8, !tbaa !74
  %173 = icmp ugt i64 %100, %172
  br i1 %173, label %192, label %174

174:                                              ; preds = %165
  %175 = lshr i64 %172, 3
  %176 = mul nuw i64 %175, 7
  %177 = icmp ult i64 %100, %176
  br i1 %177, label %192, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 1
  %180 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %179, align 8, !tbaa !70
  %181 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %163, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 2
  %184 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %183, align 8, !tbaa !75
  %185 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %164, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %170, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %170, i64 0, i32 3
  %190 = load i64, i64* %189, align 8, !tbaa !74
  %191 = icmp ugt i64 %190, %172
  br i1 %191, label %195, label %192

192:                                              ; preds = %188, %182, %178, %174, %165
  %193 = icmp ugt i32 %167, 32
  br i1 %193, label %194, label %195

194:                                              ; preds = %192
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %168, align 8, !tbaa !37
  br label %202

195:                                              ; preds = %192, %186, %188
  %196 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %166, %188 ], [ %166, %186 ], [ %170, %192 ]
  %197 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %168, %188 ], [ %168, %186 ], [ %169, %192 ]
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 4
  %199 = add nuw nsw i32 %167, 1
  %200 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %198, align 8, !tbaa !37
  %201 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200, null
  br i1 %201, label %202, label %165, !llvm.loop !84

202:                                              ; preds = %195, %194
  %203 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %170, %194 ], [ %196, %195 ]
  %204 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %169, %194 ], [ %197, %195 ]
  %205 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %166, %194 ], [ null, %195 ]
  %206 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, i64 0, i32 0
  %209 = load i64, i64* %208, align 8, !tbaa !63
  store i64 %209, i64* %5, align 8, !tbaa !3
  %210 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, i64 0, i32 4
  %211 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %210, align 8, !tbaa !66
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %211, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %204, align 8, !tbaa !37
  %212 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203 to i8*
  call void @free(i8* nonnull %212) #8
  br label %213

213:                                              ; preds = %159, %202, %207
  %214 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %205, %207 ], [ %205, %202 ], [ null, %159 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal4Cuda14free_list_lockE) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #10
  %215 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %214, null
  br i1 %215, label %226, label %216

216:                                              ; preds = %213, %216
  %217 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %219, %216 ], [ %214, %213 ]
  %218 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217, i64 0, i32 4
  %219 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %218, align 8, !tbaa !66
  %220 = load i32 (i64)*, i32 (i64)** @_ZN6Halide7Runtime8Internal4Cuda9cuMemFreeE, align 8, !tbaa !37
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217, i64 0, i32 0
  %222 = load i64, i64* %221, align 8, !tbaa !63
  %223 = call i32 %220(i64 %222) #8
  %224 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217 to i8*
  call void @free(i8* nonnull %224) #8
  %225 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %219, null
  br i1 %225, label %226, label %216, !llvm.loop !85

226:                                              ; preds = %216, %115, %213
  %227 = load i64, i64* %5, align 8, !tbaa !3
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %284

229:                                              ; preds = %226
  %230 = load i32 (i64*, i64)*, i32 (i64*, i64)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE, align 8, !tbaa !37
  %231 = call i32 %230(i64* nonnull %5, i64 %100) #8
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %235 = load i32 (i64*, i64)*, i32 (i64*, i64)** @_ZN6Halide7Runtime8Internal4Cuda10cuMemAllocE, align 8, !tbaa !37
  %236 = call i32 %235(i64* nonnull %5, i64 %100) #8
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i32 [ %236, %233 ], [ %231, %229 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %279, label %240

240:                                              ; preds = %237
  %241 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %238) #9
  %242 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %242) #10
  %243 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %243, align 8, !tbaa !40
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %244, align 8, !tbaa !43
  %245 = call i8* @malloc(i64 1024) #8
  %246 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %245, i8** %246, align 8, !tbaa !44
  %247 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %245, i8** %247, align 8, !tbaa !45
  %248 = icmp eq i8* %245, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %240
  %250 = getelementptr inbounds i8, i8* %245, i64 1023
  store i8 0, i8* %250, align 1, !tbaa !36
  br label %251

251:                                              ; preds = %240, %249
  %252 = phi i8* [ %250, %249 ], [ null, %240 ]
  %253 = call i8* @halide_string_to_string(i8* %245, i8* %252, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0)) #8
  %254 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %238) #9
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = call i8* @halide_string_to_string(i8* %253, i8* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %260

258:                                              ; preds = %251
  %259 = call i8* @halide_string_to_string(i8* %253, i8* %252, i8* nonnull %254) #8
  br label %260

260:                                              ; preds = %256, %258
  %261 = phi i8* [ %259, %258 ], [ %257, %256 ]
  %262 = load i8*, i8** %246, align 8, !tbaa !44
  %263 = icmp eq i8* %262, null
  %264 = load i8*, i8** %243, align 8, !tbaa !40
  br i1 %263, label %272, label %265

265:                                              ; preds = %260
  %266 = ptrtoint i8* %261 to i64
  %267 = ptrtoint i8* %262 to i64
  %268 = sub i64 1, %267
  %269 = add i64 %268, %266
  %270 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %264, i8* nonnull %262, i64 %269) #8
  %271 = load i8*, i8** %246, align 8, !tbaa !44
  br label %272

272:                                              ; preds = %260, %265
  %273 = phi i8* [ %271, %265 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %260 ]
  call void @halide_error(i8* %264, i8* %273) #8
  %274 = load i8, i8* %244, align 8, !tbaa !43, !range !46
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %272
  %277 = load i8*, i8** %246, align 8, !tbaa !44
  call void @free(i8* %277) #8
  br label %278

278:                                              ; preds = %276, %272
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %242) #10
  br label %290

279:                                              ; preds = %237
  %280 = load i64, i64* %5, align 8, !tbaa !3
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.81, i64 0, i64 0)) #8
  call void @abort() #8
  %283 = load i64, i64* %5, align 8, !tbaa !3
  br label %284

284:                                              ; preds = %226, %282, %279
  %285 = phi i64 [ %227, %226 ], [ %283, %282 ], [ %280, %279 ]
  store i64 %285, i64* %104, align 8, !tbaa !22
  %286 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %struct.halide_device_interface_t** %286, align 8, !tbaa !76
  %287 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, i64 0, i32 15), align 8, !tbaa !77
  %288 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %287, i64 0, i32 0
  %289 = load void ()*, void ()** %288, align 8, !tbaa !86
  call void %289() #8
  br label %290

290:                                              ; preds = %278, %284
  %291 = phi i32 [ 0, %284 ], [ %238, %278 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #10
  br label %292

292:                                              ; preds = %290, %114, %112
  %293 = phi i32 [ 0, %112 ], [ 0, %114 ], [ %291, %290 ]
  %294 = load i32, i32* %11, align 8, !tbaa !51
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %297) #10
  %298 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %299 = call i32 %298(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %297) #10
  br label %300

300:                                              ; preds = %2, %22, %292, %296
  %301 = phi i32 [ %293, %292 ], [ %293, %296 ], [ %25, %22 ], [ %12, %2 ]
  %302 = load i8*, i8** %9, align 8, !tbaa !48
  %303 = call i32 @halide_cuda_release_context(i8* %302) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret i32 %301
}

; Function Attrs: nounwind
define weak i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4, i1 zeroext %5, i1 zeroext %6) local_unnamed_addr #4 {
  %8 = icmp sgt i32 %4, 16
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = tail call i8* @malloc(i64 1024) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.82, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i64 1023
  store i8 0, i8* %15, align 1, !tbaa !36
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.82, i64 0, i64 0)) #8
  %17 = ptrtoint i8* %16 to i64
  %18 = ptrtoint i8* %10 to i64
  %19 = add i64 %17, 1
  %20 = sub i64 %19, %18
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %20) #8
  tail call void @halide_error(i8* %0, i8* nonnull %10) #8
  br label %22

22:                                               ; preds = %14, %12
  tail call void @free(i8* %10) #8
  br label %110

23:                                               ; preds = %7
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %4, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !3
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %25
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %27
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 5, i64 %27
  br label %93

35:                                               ; preds = %23
  %36 = inttoptr i64 %2 to i8*
  %37 = inttoptr i64 %3 to i8*
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6
  %39 = xor i1 %6, true
  %40 = or i1 %39, %5
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoHE, align 8, !tbaa !37
  %43 = load i64, i64* %38, align 8, !tbaa !12
  %44 = tail call i32 %42(i8* %37, i64 %2, i64 %43) #8
  br label %63

45:                                               ; preds = %35
  %46 = xor i1 %5, true
  %47 = or i1 %46, %6
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32 (i64, i8*, i64)*, i32 (i64, i8*, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyHtoDE, align 8, !tbaa !37
  %50 = load i64, i64* %38, align 8, !tbaa !12
  %51 = tail call i32 %49(i64 %3, i8* %36, i64 %50) #8
  br label %63

52:                                               ; preds = %45
  %53 = or i1 %5, %6
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = load i32 (i64, i64, i64)*, i32 (i64, i64, i64)** @_ZN6Halide7Runtime8Internal4Cuda12cuMemcpyDtoDE, align 8, !tbaa !37
  %56 = load i64, i64* %38, align 8, !tbaa !12
  %57 = tail call i32 %55(i64 %3, i64 %2, i64 %56) #8
  br label %63

58:                                               ; preds = %52
  %59 = icmp eq i64 %3, %2
  br i1 %59, label %110, label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %38, align 8, !tbaa !12
  %62 = tail call i8* @memcpy(i8* %37, i8* %36, i64 %61) #8
  br label %110

63:                                               ; preds = %48, %54, %41
  %64 = phi i32 [ %57, %54 ], [ %51, %48 ], [ %44, %41 ]
  %65 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i64 0, i64 0), %54 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), %48 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), %41 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  %68 = tail call i8* @malloc(i64 1024) #8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, i8* %68, i64 1023
  store i8 0, i8* %71, align 1, !tbaa !36
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi i8* [ %71, %70 ], [ null, %67 ]
  %74 = tail call i8* @halide_string_to_string(i8* %68, i8* %73, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %75 = tail call i8* @halide_string_to_string(i8* %74, i8* %73, i8* nonnull %65) #8
  %76 = tail call i8* @halide_string_to_string(i8* %75, i8* %73, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i64 0, i64 0)) #8
  %77 = tail call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %64) #9
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = tail call i8* @halide_string_to_string(i8* %76, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %83

81:                                               ; preds = %72
  %82 = tail call i8* @halide_string_to_string(i8* %76, i8* %73, i8* nonnull %77) #8
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ]
  br i1 %69, label %85, label %86

85:                                               ; preds = %83
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %92

86:                                               ; preds = %83
  %87 = ptrtoint i8* %84 to i64
  %88 = ptrtoint i8* %68 to i64
  %89 = sub i64 1, %88
  %90 = add i64 %89, %87
  %91 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %68, i64 %90) #8
  tail call void @halide_error(i8* %0, i8* nonnull %68) #8
  br label %92

92:                                               ; preds = %85, %86
  call void @free(i8* %68) #8
  br label %110

93:                                               ; preds = %32, %101
  %94 = phi i32 [ 0, %32 ], [ %106, %101 ]
  %95 = phi i64 [ 0, %32 ], [ %105, %101 ]
  %96 = phi i64 [ 0, %32 ], [ %103, %101 ]
  %97 = add i64 %96, %2
  %98 = add i64 %95, %3
  %99 = tail call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %97, i64 %98, i32 %26, i1 zeroext %5, i1 zeroext %6) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load i64, i64* %33, align 8, !tbaa !3
  %103 = add i64 %102, %96
  %104 = load i64, i64* %34, align 8, !tbaa !3
  %105 = add i64 %104, %95
  %106 = add nuw nsw i32 %94, 1
  %107 = load i64, i64* %28, align 8, !tbaa !3
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %93, label %110, !llvm.loop !87

110:                                              ; preds = %101, %93, %25, %58, %60, %63, %92, %22
  %111 = phi i32 [ -1, %22 ], [ %64, %92 ], [ 0, %63 ], [ 0, %60 ], [ 0, %58 ], [ 0, %25 ], [ 0, %101 ], [ %99, %93 ]
  ret i32 %111
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %8 = icmp eq %struct.halide_device_interface_t* %2, null
  %9 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.97, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %14 = load i64, i64* %13, align 8, !tbaa !88
  %15 = and i64 %14, 2
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8, !tbaa !15
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !76
  %24 = icmp eq %struct.halide_device_interface_t* %23, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  br i1 %9, label %92, label %26

26:                                               ; preds = %25
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.98, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %92

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !tbaa !76
  %30 = icmp eq %struct.halide_device_interface_t* %29, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %30, label %31, label %43

31:                                               ; preds = %21, %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !22
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = and i64 %14, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8, !tbaa !15
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %38
  br label %43

43:                                               ; preds = %42, %27, %31, %38
  %44 = phi i1 [ true, %38 ], [ false, %42 ], [ true, %31 ], [ true, %27 ]
  br i1 %8, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %47 = load i64, i64* %46, align 8, !tbaa !22
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.100, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %51) #10
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %6, %struct.halide_buffer_t* nonnull %1, i1 zeroext %44, %struct.halide_buffer_t* %3, i1 zeroext %8) #9
  %52 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52) #10
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 0
  store i8* %0, i8** %53, align 8, !tbaa !48
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 2
  store i32 0, i32* %55, align 8, !tbaa !51
  %56 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %54, i1 zeroext true) #8
  store i32 %56, i32* %55, align 8, !tbaa !51
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %59 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !50
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %64 = icmp eq i32 (i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %68 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !50
  %69 = call i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %68) #8
  store i32 %69, i32* %55, align 8, !tbaa !51
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !9
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %75 = load i64, i64* %74, align 8, !tbaa !14
  %76 = add i64 %75, %73
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %80 = load i32, i32* %79, align 4, !tbaa !24
  %81 = call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %6, i64 %76, i64 %78, i32 %80, i1 zeroext %44, i1 zeroext %8) #9
  %82 = load i32, i32* %55, align 8, !tbaa !51
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #10
  %86 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %87 = call i32 %86(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10
  br label %88

88:                                               ; preds = %50, %66, %71, %84
  %89 = phi i32 [ %81, %71 ], [ %81, %84 ], [ %69, %66 ], [ %56, %50 ]
  %90 = load i8*, i8** %53, align 8, !tbaa !48
  %91 = call i32 @halide_cuda_release_context(i8* %90) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %51) #10
  br label %92

92:                                               ; preds = %26, %25, %88
  %93 = phi i32 [ %89, %88 ], [ -42, %25 ], [ -42, %26 ]
  ret i32 %93
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  store i64 %6, i64* %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  store %struct.halide_device_interface_t* %9, %struct.halide_device_interface_t** %10, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !88
  %13 = and i64 %12, 2
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !88
  %16 = and i64 %15, -3
  %17 = or i64 %16, %13
  store i64 %17, i64* %14, align 8, !tbaa !88
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %28, label %29, label %13, !llvm.loop !89

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9
  ret i32 %37
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_cuda_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #5 {
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
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %7 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %10, align 8, !tbaa !51
  %11 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %9, i1 zeroext true) #8
  store i32 %11, i32* %10, align 8, !tbaa !51
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %108

13:                                               ; preds = %2
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !50
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %19 = icmp eq i32 (i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !50
  %24 = call i32 %22(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %23) #8
  store i32 %24, i32* %10, align 8, !tbaa !51
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %108

26:                                               ; preds = %21
  %27 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 8, !tbaa !37
  %28 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %26
  %30 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #10
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !50
  %32 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %5) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = call i8* @malloc(i64 1024) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i64 1023
  store i8 0, i8* %38, align 1, !tbaa !36
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i64 0, i64 0)) #8
  %42 = sext i32 %32 to i64
  %43 = call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %42, i32 1) #8
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %36, label %45, label %46

45:                                               ; preds = %39
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %52

46:                                               ; preds = %39
  %47 = ptrtoint i8* %44 to i64
  %48 = ptrtoint i8* %35 to i64
  %49 = add i64 %47, 1
  %50 = sub i64 %49, %48
  %51 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %50) #8
  call void @halide_error(i8* %0, i8* nonnull %35) #8
  br label %52

52:                                               ; preds = %46, %45
  call void @free(i8* %35) #8
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 8, !tbaa !37
  %55 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5, align 8, !tbaa !37
  %56 = call i32 %54(%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %55) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  br label %60

57:                                               ; preds = %26
  %58 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxSynchronizeE, align 8, !tbaa !37
  %59 = call i32 %58() #8
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %101, label %63

63:                                               ; preds = %60
  %64 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %64) #10
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3
  store i8* %0, i8** %65, align 8, !tbaa !40
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4
  store i8 1, i8* %66, align 8, !tbaa !43
  %67 = call i8* @malloc(i64 1024) #8
  %68 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0
  store i8* %67, i8** %68, align 8, !tbaa !44
  %69 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1
  store i8* %67, i8** %69, align 8, !tbaa !45
  %70 = icmp eq i8* %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds i8, i8* %67, i64 1023
  store i8 0, i8* %72, align 1, !tbaa !36
  br label %73

73:                                               ; preds = %63, %71
  %74 = phi i8* [ %72, %71 ], [ null, %63 ]
  %75 = call i8* @halide_string_to_string(i8* %67, i8* %74, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.111, i64 0, i64 0)) #8
  %76 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %61) #9
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i8* @halide_string_to_string(i8* %75, i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %82

80:                                               ; preds = %73
  %81 = call i8* @halide_string_to_string(i8* %75, i8* %74, i8* nonnull %76) #8
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi i8* [ %81, %80 ], [ %79, %78 ]
  %84 = load i8*, i8** %68, align 8, !tbaa !44
  %85 = icmp eq i8* %84, null
  %86 = load i8*, i8** %65, align 8, !tbaa !40
  br i1 %85, label %94, label %87

87:                                               ; preds = %82
  %88 = ptrtoint i8* %83 to i64
  %89 = ptrtoint i8* %84 to i64
  %90 = sub i64 1, %89
  %91 = add i64 %90, %88
  %92 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %86, i8* nonnull %84, i64 %91) #8
  %93 = load i8*, i8** %68, align 8, !tbaa !44
  br label %94

94:                                               ; preds = %82, %87
  %95 = phi i8* [ %93, %87 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %82 ]
  call void @halide_error(i8* %86, i8* %95) #8
  %96 = load i8, i8* %66, align 8, !tbaa !43, !range !46
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %68, align 8, !tbaa !44
  call void @free(i8* %99) #8
  br label %100

100:                                              ; preds = %94, %98
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %64) #10
  br label %101

101:                                              ; preds = %100, %60
  %102 = load i32, i32* %10, align 8, !tbaa !51
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %105) #10
  %106 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %107 = call i32 %106(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #10
  br label %108

108:                                              ; preds = %2, %21, %101, %104
  %109 = phi i32 [ %61, %101 ], [ %61, %104 ], [ %24, %21 ], [ %11, %2 ]
  %110 = load i8*, i8** %8, align 8, !tbaa !48
  %111 = call i32 @halide_cuda_release_context(i8* %110) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret i32 %109
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %19 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %20 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, align 8
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %22 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %23 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %24 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 0
  store i8* %0, i8** %25, align 8, !tbaa !48
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !50
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 2
  store i32 0, i32* %27, align 8, !tbaa !51
  %28 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %26, i1 zeroext true) #8
  store i32 %28, i32* %27, align 8, !tbaa !51
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %258

30:                                               ; preds = %17
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !50
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %36 = icmp eq i32 (i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %38

38:                                               ; preds = %34, %37
  %39 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %40 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !50
  %41 = call i32 %39(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %40) #8
  store i32 %41, i32* %27, align 8, !tbaa !51
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %258

43:                                               ; preds = %38
  %44 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !50
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 0)) #8
  %45 = ptrtoint i8* %1 to i64
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !55
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %43
  %50 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %44 to i64
  %51 = and i64 %45, 4294967295
  %52 = add i64 %51, %50
  %53 = mul i64 %52, -7046029254386353131
  %54 = sub i32 64, %47
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %53, %55
  %57 = shl nuw i32 1, %47
  %58 = icmp eq i32 %47, 31
  br i1 %58, label %86, label %59

59:                                               ; preds = %49
  %60 = add nsw i32 %57, -1
  %61 = sext i32 %60 to i64
  %62 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !56
  %63 = sext i32 %57 to i64
  %64 = icmp sgt i32 %57, 1
  %65 = select i1 %64, i32 %57, i32 1
  %66 = zext i32 %65 to i64
  br label %70

67:                                               ; preds = %78
  %68 = icmp slt i64 %84, %63
  %69 = icmp eq i64 %84, %66
  br i1 %69, label %86, label %70, !llvm.loop !57

70:                                               ; preds = %67, %59
  %71 = phi i64 [ 0, %59 ], [ %84, %67 ]
  %72 = phi i1 [ true, %59 ], [ %68, %67 ]
  %73 = add i64 %71, %56
  %74 = and i64 %73, %61
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 2
  %76 = load i32, i32* %75, align 8, !tbaa !58
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 0
  %80 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %79, align 8, !tbaa !60
  %81 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %80, %44
  %82 = icmp eq i32 %76, %46
  %83 = and i1 %82, %81
  %84 = add nuw nsw i64 %71, 1
  br i1 %83, label %85, label %67

85:                                               ; preds = %78
  br i1 %72, label %87, label %86

86:                                               ; preds = %67, %70, %85, %43, %49
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 0)) #8
  br label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 1
  %89 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %88, align 8, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 0)) #8
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %87
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.120, i64 0, i64 0)) #8
  call void @abort() #8
  br label %92

92:                                               ; preds = %87, %91
  %93 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ %89, %87 ], [ null, %91 ]
  %94 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #10
  %95 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @_ZN6Halide7Runtime8Internal4Cuda19cuModuleGetFunctionE, align 8, !tbaa !37
  %96 = call i32 %95(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** nonnull %20, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %93, i8* %2) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %136, label %98

98:                                               ; preds = %92
  %99 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %99) #10
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 3
  store i8* %0, i8** %100, align 8, !tbaa !40
  %101 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 4
  store i8 1, i8* %101, align 8, !tbaa !43
  %102 = call i8* @malloc(i64 1024) #8
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 0
  store i8* %102, i8** %103, align 8, !tbaa !44
  %104 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 1
  store i8* %102, i8** %104, align 8, !tbaa !45
  %105 = icmp eq i8* %102, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds i8, i8* %102, i64 1023
  store i8 0, i8* %107, align 1, !tbaa !36
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi i8* [ %107, %106 ], [ null, %98 ]
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.123, i64 0, i64 0)) #8
  %111 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %96) #9
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %117

115:                                              ; preds = %108
  %116 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* nonnull %111) #8
  br label %117

117:                                              ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %114, %113 ]
  %119 = load i8*, i8** %103, align 8, !tbaa !44
  %120 = icmp eq i8* %119, null
  %121 = load i8*, i8** %100, align 8, !tbaa !40
  br i1 %120, label %129, label %122

122:                                              ; preds = %117
  %123 = ptrtoint i8* %118 to i64
  %124 = ptrtoint i8* %119 to i64
  %125 = sub i64 1, %124
  %126 = add i64 %125, %123
  %127 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %121, i8* nonnull %119, i64 %126) #8
  %128 = load i8*, i8** %103, align 8, !tbaa !44
  br label %129

129:                                              ; preds = %117, %122
  %130 = phi i8* [ %128, %122 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %117 ]
  call void @halide_error(i8* %121, i8* %130) #8
  %131 = load i8, i8* %101, align 8, !tbaa !43, !range !46
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %103, align 8, !tbaa !44
  call void @free(i8* %134) #8
  br label %135

135:                                              ; preds = %129, %133
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %99) #10
  br label %250

136:                                              ; preds = %92, %136
  %137 = phi i64 [ %141, %136 ], [ 0, %92 ]
  %138 = getelementptr inbounds i64, i64* %10, i64 %137
  %139 = load i64, i64* %138, align 8, !tbaa !90
  %140 = icmp eq i64 %139, 0
  %141 = add i64 %137, 1
  br i1 %140, label %142, label %136, !llvm.loop !91

142:                                              ; preds = %136
  %143 = shl i64 %137, 3
  %144 = add i64 %143, 8
  %145 = call i8* @malloc(i64 %144) #8
  %146 = bitcast i8* %145 to i8**
  %147 = call i8* @malloc(i64 %143) #8
  %148 = bitcast i8* %147 to i64*
  br label %153

149:                                              ; preds = %176
  %150 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %150) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 8, !tbaa !37
  %151 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @_ZN6Halide7Runtime8Internal4Cuda19cuStreamSynchronizeE, align 8, !tbaa !37
  %152 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %151, null
  br i1 %152, label %204, label %179

153:                                              ; preds = %142, %176
  %154 = phi i64 [ 0, %142 ], [ %177, %176 ]
  %155 = getelementptr inbounds i8, i8* %12, i64 %154
  %156 = load i8, i8* %155, align 1, !tbaa !36
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds i64, i64* %10, i64 %154
  %160 = load i64, i64* %159, align 8, !tbaa !90
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.128, i64 0, i64 0)) #8
  call void @abort() #8
  br label %163

163:                                              ; preds = %162, %158
  %164 = getelementptr inbounds i8*, i8** %11, i64 %154
  %165 = bitcast i8** %164 to %struct.halide_buffer_t**
  %166 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %165, align 8, !tbaa !37
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %166, i64 0, i32 0
  %168 = load i64, i64* %167, align 8, !tbaa !22
  %169 = getelementptr inbounds i64, i64* %148, i64 %154
  store i64 %168, i64* %169, align 8, !tbaa !3
  %170 = getelementptr inbounds i8*, i8** %146, i64 %154
  %171 = bitcast i8** %170 to i64**
  store i64* %169, i64** %171, align 8, !tbaa !37
  br label %176

172:                                              ; preds = %153
  %173 = getelementptr inbounds i8*, i8** %11, i64 %154
  %174 = load i8*, i8** %173, align 8, !tbaa !37
  %175 = getelementptr inbounds i8*, i8** %146, i64 %154
  store i8* %174, i8** %175, align 8, !tbaa !37
  br label %176

176:                                              ; preds = %163, %172
  %177 = add i64 %154, 1
  %178 = icmp ugt i64 %177, %137
  br i1 %178, label %149, label %153, !llvm.loop !92

179:                                              ; preds = %149
  %180 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !50
  %181 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %180, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %22) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 8, !tbaa !37
  br label %204

185:                                              ; preds = %179
  %186 = call i8* @malloc(i64 1024) #8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, i8* %186, i64 1023
  store i8 0, i8* %189, align 1, !tbaa !36
  br label %190

190:                                              ; preds = %185, %188
  %191 = phi i8* [ %189, %188 ], [ null, %185 ]
  %192 = call i8* @halide_string_to_string(i8* %186, i8* %191, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.131, i64 0, i64 0)) #8
  %193 = sext i32 %181 to i64
  %194 = call i8* @halide_int64_to_string(i8* %192, i8* %191, i64 %193, i32 1) #8
  %195 = call i8* @halide_string_to_string(i8* %194, i8* %191, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8
  br i1 %187, label %196, label %197

196:                                              ; preds = %190
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0)) #8
  br label %203

197:                                              ; preds = %190
  %198 = ptrtoint i8* %195 to i64
  %199 = ptrtoint i8* %186 to i64
  %200 = add i64 %198, 1
  %201 = sub i64 %200, %199
  %202 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %186, i64 %201) #8
  call void @halide_error(i8* %0, i8* nonnull %186) #8
  br label %203

203:                                              ; preds = %197, %196
  call void @free(i8* %186) #8
  call void @free(i8* %147) #8
  call void @free(i8* nonnull %145) #8
  br label %248

204:                                              ; preds = %183, %149
  %205 = phi %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* [ %184, %183 ], [ null, %149 ]
  %206 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @_ZN6Halide7Runtime8Internal4Cuda14cuLaunchKernelE, align 8, !tbaa !37
  %207 = load %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20, align 8, !tbaa !37
  %208 = call i32 %206(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"* %207, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %205, i8** nonnull %146, i8** null) #8
  call void @free(i8* %147) #8
  call void @free(i8* nonnull %145) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %248, label %210

210:                                              ; preds = %204
  %211 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %211) #10
  %212 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 3
  store i8* %0, i8** %212, align 8, !tbaa !40
  %213 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 4
  store i8 1, i8* %213, align 8, !tbaa !43
  %214 = call i8* @malloc(i64 1024) #8
  %215 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 0
  store i8* %214, i8** %215, align 8, !tbaa !44
  %216 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 1
  store i8* %214, i8** %216, align 8, !tbaa !45
  %217 = icmp eq i8* %214, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds i8, i8* %214, i64 1023
  store i8 0, i8* %219, align 1, !tbaa !36
  br label %220

220:                                              ; preds = %210, %218
  %221 = phi i8* [ %219, %218 ], [ null, %210 ]
  %222 = call i8* @halide_string_to_string(i8* %214, i8* %221, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.132, i64 0, i64 0)) #8
  %223 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %208) #9
  %224 = icmp eq i8* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = call i8* @halide_string_to_string(i8* %222, i8* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %229

227:                                              ; preds = %220
  %228 = call i8* @halide_string_to_string(i8* %222, i8* %221, i8* nonnull %223) #8
  br label %229

229:                                              ; preds = %225, %227
  %230 = phi i8* [ %228, %227 ], [ %226, %225 ]
  %231 = load i8*, i8** %215, align 8, !tbaa !44
  %232 = icmp eq i8* %231, null
  %233 = load i8*, i8** %212, align 8, !tbaa !40
  br i1 %232, label %241, label %234

234:                                              ; preds = %229
  %235 = ptrtoint i8* %230 to i64
  %236 = ptrtoint i8* %231 to i64
  %237 = sub i64 1, %236
  %238 = add i64 %237, %235
  %239 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %233, i8* nonnull %231, i64 %238) #8
  %240 = load i8*, i8** %215, align 8, !tbaa !44
  br label %241

241:                                              ; preds = %229, %234
  %242 = phi i8* [ %240, %234 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %229 ]
  call void @halide_error(i8* %233, i8* %242) #8
  %243 = load i8, i8* %213, align 8, !tbaa !43, !range !46
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = load i8*, i8** %215, align 8, !tbaa !44
  call void @free(i8* %246) #8
  br label %247

247:                                              ; preds = %241, %245
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %211) #10
  br label %248

248:                                              ; preds = %203, %204, %247
  %249 = phi i32 [ %208, %247 ], [ %181, %203 ], [ 0, %204 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %150) #10
  br label %250

250:                                              ; preds = %135, %248
  %251 = phi i32 [ %96, %135 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #10
  %252 = load i32, i32* %27, align 8, !tbaa !51
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %255) #10
  %256 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %257 = call i32 %256(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %18) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %255) #10
  br label %258

258:                                              ; preds = %17, %38, %250, %254
  %259 = phi i32 [ %251, %250 ], [ %251, %254 ], [ %41, %38 ], [ %28, %17 ]
  %260 = load i8*, i8** %25, align 8, !tbaa !48
  %261 = call i32 @halide_cuda_release_context(i8* %260) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #10
  ret i32 %259
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
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.133, i64 0, i64 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3, %7
  store i64 %2, i64* %4, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %struct.halide_device_interface_t** %11, align 8, !tbaa !76
  %12 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, i64 0, i32 15), align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %12, i64 0, i32 0
  %14 = load void ()*, void ()** %13, align 8, !tbaa !86
  tail call void %14() #8
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi i32 [ 0, %10 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_cuda_detach_device_ptr(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !76
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.134, i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !76
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i64 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i64 0, i32 1
  %17 = load void ()*, void ()** %16, align 8, !tbaa !79
  tail call void %17() #8
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !76
  br label %18

18:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_cuda_get_device_ptr(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !76
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.135, i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load i64, i64* %3, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i64 [ 0, %2 ], [ %4, %6 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_cuda_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal4Cuda21cuda_device_interfaceE
}

; Function Attrs: nounwind
define weak i32 @halide_cuda_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %5 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = load i8*, i8** @_ZN6Halide7Runtime8Internal4Cuda8lib_cudaE, align 8, !tbaa !37
  %10 = icmp ne i8* %9, null
  %11 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8
  %12 = icmp ne i32 (i32)* %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #9
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4, !tbaa !39
  store i32 0, i32* %1, align 4, !tbaa !39
  ret i32 0

18:                                               ; preds = %14, %3
  %19 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #10
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 0
  store i8* %0, i8** %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 2
  store i32 0, i32* %22, align 8, !tbaa !51
  %23 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %21, i1 zeroext true) #8
  store i32 %23, i32* %22, align 8, !tbaa !51
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %18
  call void @_ZN6Halide7Runtime8Internal4Cuda19ensure_libcuda_initEPv(i8* %0) #8
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !50
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.196, i64 0, i64 0)) #8
  call void @abort() #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal4Cuda6cuInitE, align 8, !tbaa !37
  %31 = icmp eq i32 (i32)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.197, i64 0, i64 0)) #8
  call void @abort() #8
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @_ZN6Halide7Runtime8Internal4Cuda16cuCtxPushCurrentE, align 8, !tbaa !37
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !50
  %36 = call i32 %34(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35) #8
  store i32 %36, i32* %22, align 8, !tbaa !51
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %145

38:                                               ; preds = %33
  %39 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #10
  %40 = load i32 (i32*)*, i32 (i32*)** @_ZN6Halide7Runtime8Internal4Cuda14cuCtxGetDeviceE, align 8, !tbaa !37
  %41 = call i32 %40(i32* nonnull %6) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %84, label %43

43:                                               ; preds = %38
  %44 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %44) #10
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %45, align 8, !tbaa !40
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %46, align 8, !tbaa !43
  %47 = call i8* @malloc(i64 1024) #8
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %47, i8** %48, align 8, !tbaa !44
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %47, i8** %49, align 8, !tbaa !45
  %50 = icmp eq i8* %47, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, i8* %47, i64 1023
  store i8 0, i8* %52, align 1, !tbaa !36
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8* [ %52, %51 ], [ null, %43 ]
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2
  store i8* %54, i8** %55, align 8
  %56 = call i8* @halide_string_to_string(i8* %47, i8* %54, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.136, i64 0, i64 0)) #8
  %57 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %41) #9
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %63

61:                                               ; preds = %53
  %62 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* nonnull %57) #8
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi i8* [ %62, %61 ], [ %60, %59 ]
  %65 = load i8*, i8** %55, align 8, !tbaa !93
  %66 = call i8* @halide_string_to_string(i8* %64, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i64 0, i64 0)) #8
  %67 = load i8*, i8** %48, align 8, !tbaa !44
  %68 = icmp eq i8* %67, null
  %69 = load i8*, i8** %45, align 8, !tbaa !40
  br i1 %68, label %77, label %70

70:                                               ; preds = %63
  %71 = ptrtoint i8* %66 to i64
  %72 = ptrtoint i8* %67 to i64
  %73 = add i64 %71, 1
  %74 = sub i64 %73, %72
  %75 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %69, i8* nonnull %67, i64 %74) #8
  %76 = load i8*, i8** %48, align 8, !tbaa !44
  br label %77

77:                                               ; preds = %63, %70
  %78 = phi i8* [ %76, %70 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %63 ]
  call void @halide_error(i8* %69, i8* %78) #8
  %79 = load i8, i8* %46, align 8, !tbaa !43, !range !46
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %48, align 8, !tbaa !44
  call void @free(i8* %82) #8
  br label %83

83:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %44) #10
  br label %136

84:                                               ; preds = %38
  %85 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 8, !tbaa !37
  %86 = load i32, i32* %6, align 4, !tbaa !39
  %87 = call i32 %85(i32* %1, i32 75, i32 %86) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @_ZN6Halide7Runtime8Internal4Cuda20cuDeviceGetAttributeE, align 8, !tbaa !37
  %91 = load i32, i32* %6, align 4, !tbaa !39
  %92 = call i32 %90(i32* %2, i32 76, i32 %91) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %84, %89
  %95 = phi i32 [ %92, %89 ], [ %87, %84 ]
  %96 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %96) #10
  %97 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %97, align 8, !tbaa !40
  %98 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %98, align 8, !tbaa !43
  %99 = call i8* @malloc(i64 1024) #8
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %99, i8** %100, align 8, !tbaa !44
  %101 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %99, i8** %101, align 8, !tbaa !45
  %102 = icmp eq i8* %99, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds i8, i8* %99, i64 1023
  store i8 0, i8* %104, align 1, !tbaa !36
  br label %105

105:                                              ; preds = %94, %103
  %106 = phi i8* [ %104, %103 ], [ null, %94 ]
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = call i8* @halide_string_to_string(i8* %99, i8* %106, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i64 0, i64 0)) #8
  %109 = call i8* @_ZN6Halide7Runtime8Internal4Cuda14get_error_nameENS2_8CUresultE(i32 %95) #9
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i8* @halide_string_to_string(i8* %108, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i64 0, i64 0)) #8
  br label %115

113:                                              ; preds = %105
  %114 = call i8* @halide_string_to_string(i8* %108, i8* %106, i8* nonnull %109) #8
  br label %115

115:                                              ; preds = %111, %113
  %116 = phi i8* [ %114, %113 ], [ %112, %111 ]
  %117 = load i8*, i8** %107, align 8, !tbaa !93
  %118 = call i8* @halide_string_to_string(i8* %116, i8* %117, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i64 0, i64 0)) #8
  %119 = load i8*, i8** %100, align 8, !tbaa !44
  %120 = icmp eq i8* %119, null
  %121 = load i8*, i8** %97, align 8, !tbaa !40
  br i1 %120, label %129, label %122

122:                                              ; preds = %115
  %123 = ptrtoint i8* %118 to i64
  %124 = ptrtoint i8* %119 to i64
  %125 = add i64 %123, 1
  %126 = sub i64 %125, %124
  %127 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %121, i8* nonnull %119, i64 %126) #8
  %128 = load i8*, i8** %100, align 8, !tbaa !44
  br label %129

129:                                              ; preds = %115, %122
  %130 = phi i8* [ %128, %122 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i64 0, i64 0), %115 ]
  call void @halide_error(i8* %121, i8* %130) #8
  %131 = load i8, i8* %98, align 8, !tbaa !43, !range !46
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %100, align 8, !tbaa !44
  call void @free(i8* %134) #8
  br label %135

135:                                              ; preds = %129, %133
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %96) #10
  br label %136

136:                                              ; preds = %83, %135, %89
  %137 = phi i32 [ %41, %83 ], [ %95, %135 ], [ 0, %89 ]
  %138 = phi i32 [ 1, %83 ], [ 1, %135 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #10
  %139 = load i32, i32* %22, align 8, !tbaa !51
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %142) #10
  %143 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @_ZN6Halide7Runtime8Internal4Cuda15cuCtxPopCurrentE, align 8, !tbaa !37
  %144 = call i32 %143(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %142) #10
  br label %145

145:                                              ; preds = %18, %33, %136, %141
  %146 = phi i32 [ %138, %136 ], [ %138, %141 ], [ 1, %33 ], [ 1, %18 ]
  %147 = phi i32 [ %137, %136 ], [ %137, %141 ], [ %36, %33 ], [ %23, %18 ]
  %148 = load i8*, i8** %20, align 8, !tbaa !48
  %149 = call i32 @halide_cuda_release_context(i8* %148) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #10
  %150 = icmp eq i32 %146, 0
  %151 = select i1 %150, i32 0, i32 %147
  ret i32 %151
}

; Function Attrs: nounwind mustprogress
define weak void @halide_cuda_cleanup() #0 {
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i8* null, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 8 dereferenceable(8) @_ZN6Halide7Runtime8Internal4Cuda14cuModuleUnloadE) #9
  %1 = tail call i32 @halide_cuda_device_release(i8* null) #9
  ret void
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE11release_allIPFNS4_8CUresultES8_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #8
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !81
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !55
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 8, !tbaa !56
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %6, %12 ], [ %39, %38 ]
  %17 = phi i32 [ %10, %12 ], [ %40, %38 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %14, %12 ], [ %41, %38 ]
  %19 = phi i64 [ 0, %12 ], [ %42, %38 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !58
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !61
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** %2, align 8, !tbaa !37
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 1
  %30 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %29, align 8, !tbaa !62
  %31 = tail call i32 %28(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %30) #8
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 8, !tbaa !56
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i64 %19, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %33, align 8, !tbaa !62
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i64 %19, i32 2
  store i32 1, i32* %34, align 8, !tbaa !58
  %35 = load i32, i32* %5, align 8, !tbaa !81
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 8, !tbaa !81
  %37 = load i32, i32* %9, align 8, !tbaa !55
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i64 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %15, label %46, !llvm.loop !82

46:                                               ; preds = %38
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3, %46
  %49 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %50 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !56
  tail call void @free(i8* %51) #8
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %49, align 8, !tbaa !56
  %52 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  store i32 0, i32* %52, align 8, !tbaa !55
  br label %53

53:                                               ; preds = %8, %48, %46
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
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #9
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !81
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #9
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !81
  %25 = load i32, i32* %3, align 8, !tbaa !55
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !81
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i64 0, i32 0
  %33 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !58
  %36 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %33 to i64
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
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %47, align 8, !tbaa !56
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !94

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !58
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !95
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.204, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !55
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
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %15, align 8, !tbaa !56
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !56
  store i32 %1, i32* %3, align 8, !tbaa !55
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !81
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
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %16, i64 %28, i32 2
  %30 = load i32, i32* %29, align 8, !tbaa !58
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %16, i64 %28
  %34 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #9
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.205, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !96

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #8
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

declare i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_cuda.cpp() #7 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE to i8*), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !55
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !56
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !81
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal4Cuda17compilation_cacheE, i64 0, i32 4), align 4, !tbaa !52
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal4Cuda17compilation_cacheE, align 4
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
!38 = distinct !{!38, !8}
!39 = !{!21, !21, i64 0}
!40 = !{!41, !17, i64 24}
!41 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !42, i64 32, !5, i64 33}
!42 = !{!"bool", !5, i64 0}
!43 = !{!41, !42, i64 32}
!44 = !{!41, !17, i64 0}
!45 = !{!41, !17, i64 8}
!46 = !{i8 0, i8 2}
!47 = distinct !{!47, !8}
!48 = !{!49, !17, i64 0}
!49 = !{!"_ZTSN6Halide7Runtime8Internal4Cuda7ContextE", !17, i64 0, !17, i64 8, !21, i64 16}
!50 = !{!49, !17, i64 8}
!51 = !{!49, !21, i64 16}
!52 = !{!53, !21, i64 28}
!53 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEEE", !54, i64 0, !21, i64 8, !17, i64 16, !21, i64 24, !21, i64 28}
!54 = !{!"_ZTS12halide_mutex", !5, i64 0}
!55 = !{!53, !21, i64 8}
!56 = !{!53, !17, i64 16}
!57 = distinct !{!57, !8}
!58 = !{!59, !21, i64 16}
!59 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIPNS_7Runtime8Internal4Cuda8CUctx_stEPNS4_8CUmod_stEE17CachedCompilationE", !17, i64 0, !17, i64 8, !21, i64 16, !21, i64 20}
!60 = !{!59, !17, i64 0}
!61 = !{!59, !21, i64 20}
!62 = !{!59, !17, i64 8}
!63 = !{!64, !4, i64 0}
!64 = !{!"_ZTSN6Halide7Runtime8Internal4Cuda12FreeListItemE", !4, i64 0, !17, i64 8, !17, i64 16, !65, i64 24, !17, i64 32}
!65 = !{!"long", !5, i64 0}
!66 = !{!64, !17, i64 32}
!67 = distinct !{!67, !8}
!68 = !{!69, !17, i64 0}
!69 = !{!"_ZTS29halide_device_allocation_pool", !17, i64 0, !17, i64 8}
!70 = !{!64, !17, i64 8}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !8}
!73 = !{i64 0, i64 65}
!74 = !{!64, !65, i64 24}
!75 = !{!64, !17, i64 16}
!76 = !{!16, !17, i64 8}
!77 = !{!78, !17, i64 120}
!78 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!79 = !{!80, !17, i64 8}
!80 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!81 = !{!53, !21, i64 24}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = !{!80, !17, i64 0}
!87 = distinct !{!87, !8}
!88 = !{!16, !4, i64 24}
!89 = distinct !{!89, !8}
!90 = !{!65, !65, i64 0}
!91 = distinct !{!91, !8}
!92 = distinct !{!92, !8}
!93 = !{!41, !17, i64 16}
!94 = distinct !{!94, !8}
!95 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 4, !39, i64 20, i64 4, !39}
!96 = distinct !{!96, !8}
