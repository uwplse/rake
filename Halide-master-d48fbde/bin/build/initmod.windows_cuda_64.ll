; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_cuda.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_cuda.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }
%"class.Halide::Runtime::Internal::Cuda::Context" = type { i8*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32, [4 x i8] }

$"??$kernel_state_setup@P6APEAUCUmod_st@Cuda@Internal@Runtime@Halide@@PEAXPEBDH@ZPEAXPEBDH@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUCUctx_st@Cuda@1Runtime@2@AEAPEAUCUmod_st@4152@P6APEAU64152@0PEBDH@Z04H@Z" = comdat any

$"??$release_all@P6A?AW4CUresult@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Z@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAAXPEAXAEAP6A?AW4CUresult@Cuda@1Runtime@2@PEAUCUmod_st@4152@@Z@Z" = comdat any

$"?insert@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z" = comdat any

$"?resize_table@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NH@Z" = comdat any

$"??_C@_0L@BCLCHHLA@nvcuda?4dll?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0GM@BOJKOMLJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_06BGNBMNO@cuInit?$AA@" = comdat any

$"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@" = comdat any

$"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@" = comdat any

$"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@" = comdat any

$"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@" = comdat any

$"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@" = comdat any

$"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@" = comdat any

$"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@" = comdat any

$"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@" = comdat any

$"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@" = comdat any

$"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@" = comdat any

$"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@" = comdat any

$"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@" = comdat any

$"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@" = comdat any

$"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@" = comdat any

$"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@" = comdat any

$"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@" = comdat any

$"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@" = comdat any

$"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@" = comdat any

$"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@" = comdat any

$"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@" = comdat any

$"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@" = comdat any

$"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@" = comdat any

$"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@" = comdat any

$"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@" = comdat any

$"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@" = comdat any

$"??_C@_0BE@OKHEPNII@cuStreamSynchronize?$AA@" = comdat any

$"??_C@_0GK@PKPCLCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@" = comdat any

$"??_C@_0BG@LJMBJJGG@CUDA?3?5cuInit?5failed?3?5?$AA@" = comdat any

$"??_C@_0CA@HDKFNAIB@CUDA?3?5cuGetDeviceCount?5failed?3?5?$AA@" = comdat any

$"??_C@_0BL@MNIIBKJA@CUDA?3?5No?5devices?5available?$AA@" = comdat any

$"??_C@_0BM@CLPLMAAO@CUDA?3?5Failed?5to?5get?5device?6?$AA@" = comdat any

$"??_C@_0BL@LEJDCCBF@CUDA?3?5cuCtxCreate?5failed?3?5?$AA@" = comdat any

$"??_C@_0BP@EKFOANMP@CUDA?3?5cuCtxPopCurrent?5failed?3?5?$AA@" = comdat any

$"??_C@_0BK@DMLOHDHC@HL_CUDA_JIT_MAX_REGISTERS?$AA@" = comdat any

$"??_C@_0CA@BDCIDAKL@CUDA?3?5cuModuleLoadData?5failed?3?5?$AA@" = comdat any

$"??_C@_0HE@BOIHBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IG@IHNFJCBJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ED@GIMBMKIF@CUDA?3?5In?5halide_cuda_device_free@" = comdat any

$"??_C@_0JC@MMDJCNJL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JC@BOIMJOEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GF@IMIIMJK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IM@EKGDAOKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HD@KCEJMHHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0EF@NHLNPEBK@CUDA?3?5In?5halide_cuda_device_mall@" = comdat any

$"??_C@_0BK@IFMPONBJ@CUDA?3?5cuMemAlloc?5failed?3?5?$AA@" = comdat any

$"??_C@_0FN@MGKEONMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@" = comdat any

$"??_C@_0N@NEEBKPAO@cuMemcpyDtoH?$AA@" = comdat any

$"??_C@_0N@LNAEANAD@cuMemcpyHtoD?$AA@" = comdat any

$"??_C@_0N@HIPEOAAC@cuMemcpyDtoD?$AA@" = comdat any

$"??_C@_06HJJAFDBE@CUDA?3?5?$AA@" = comdat any

$"??_C@_09FIOGNGMI@?5failed?3?5?$AA@" = comdat any

$"??_C@_0KN@JNCHLBNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@NMJPPNNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HC@OPNBCGF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ED@EBCFNJMM@CUDA?3?5In?5halide_cuda_device_sync@" = comdat any

$"??_C@_0CA@MMGFAAGI@CUDA?3?5cuCtxSynchronize?5failed?3?5?$AA@" = comdat any

$"??_C@_0HE@JLBLKPLK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CD@CKBMCDCA@CUDA?3?5cuModuleGetFunction?5failed@" = comdat any

$"??_C@_0HN@LGMAJGMN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DL@OALCCANJ@CUDA?3?5In?5halide_cuda_run?0?5halide@" = comdat any

$"??_C@_0BO@MFKABAO@CUDA?3?5cuLaunchKernel?5failed?3?5?$AA@" = comdat any

$"??_C@_0GN@HOBIEDCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IM@GABEKHCB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IM@KELMOOGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BO@HDIJPFPI@CUDA?3?5cuCtxGetDevice?5failed?5?$CI?$AA@" = comdat any

$"??_C@_01PKGAHCOL@?$CJ?$AA@" = comdat any

$"??_C@_0CE@BBPCNOHG@CUDA?3?5cuDeviceGetAttribute?5faile@" = comdat any

$"??_C@_0N@IBGLLPEP@CUDA_SUCCESS?$AA@" = comdat any

$"??_C@_0BJ@MCNIHGMK@CUDA_ERROR_INVALID_VALUE?$AA@" = comdat any

$"??_C@_0BJ@CNEOPIBN@CUDA_ERROR_OUT_OF_MEMORY?$AA@" = comdat any

$"??_C@_0BL@EPHIMIFG@CUDA_ERROR_NOT_INITIALIZED?$AA@" = comdat any

$"??_C@_0BJ@IKKPFDBH@CUDA_ERROR_DEINITIALIZED?$AA@" = comdat any

$"??_C@_0BN@FPJIJONF@CUDA_ERROR_PROFILER_DISABLED?$AA@" = comdat any

$"??_C@_0CE@HBMLIEHI@CUDA_ERROR_PROFILER_NOT_INITIALI@" = comdat any

$"??_C@_0CE@EKHCGPMK@CUDA_ERROR_PROFILER_ALREADY_STAR@" = comdat any

$"??_C@_0CE@IFNKMKIN@CUDA_ERROR_PROFILER_ALREADY_STOP@" = comdat any

$"??_C@_0BF@OLCOGLNC@CUDA_ERROR_NO_DEVICE?$AA@" = comdat any

$"??_C@_0BK@KJLPJMNP@CUDA_ERROR_INVALID_DEVICE?$AA@" = comdat any

$"??_C@_0BJ@BIGAIEEG@CUDA_ERROR_INVALID_IMAGE?$AA@" = comdat any

$"??_C@_0BL@CAMHACOE@CUDA_ERROR_INVALID_CONTEXT?$AA@" = comdat any

$"??_C@_0CD@JICHIBFF@CUDA_ERROR_CONTEXT_ALREADY_CURRE@" = comdat any

$"??_C@_0BG@PCDIJLGE@CUDA_ERROR_MAP_FAILED?$AA@" = comdat any

$"??_C@_0BI@LIOELPBH@CUDA_ERROR_UNMAP_FAILED?$AA@" = comdat any

$"??_C@_0BL@LHLGMFM@CUDA_ERROR_ARRAY_IS_MAPPED?$AA@" = comdat any

$"??_C@_0BK@JGMMABAO@CUDA_ERROR_ALREADY_MAPPED?$AA@" = comdat any

$"??_C@_0BN@LLCKJBJD@CUDA_ERROR_NO_BINARY_FOR_GPU?$AA@" = comdat any

$"??_C@_0BM@OJOJMFNC@CUDA_ERROR_ALREADY_ACQUIRED?$AA@" = comdat any

$"??_C@_0BG@FNMHNFPE@CUDA_ERROR_NOT_MAPPED?$AA@" = comdat any

$"??_C@_0BP@EOHNHEJJ@CUDA_ERROR_NOT_MAPPED_AS_ARRAY?$AA@" = comdat any

$"??_C@_0CB@KGAEMLBJ@CUDA_ERROR_NOT_MAPPED_AS_POINTER@" = comdat any

$"??_C@_0BN@MOLLDDBF@CUDA_ERROR_ECC_UNCORRECTABLE?$AA@" = comdat any

$"??_C@_0BN@KCELBMJM@CUDA_ERROR_UNSUPPORTED_LIMIT?$AA@" = comdat any

$"??_C@_0CC@MKNOCLLI@CUDA_ERROR_CONTEXT_ALREADY_IN_US@" = comdat any

$"??_C@_0CD@BKCKCDHK@CUDA_ERROR_PEER_ACCESS_UNSUPPORT@" = comdat any

$"??_C@_0BH@IDLNMEGF@CUDA_ERROR_INVALID_PTX?$AA@" = comdat any

$"??_C@_0CE@KPBOEKLA@CUDA_ERROR_INVALID_GRAPHICS_CONT@" = comdat any

$"??_C@_0CA@DEDHGBPA@CUDA_ERROR_NVLINK_UNCORRECTABLE?$AA@" = comdat any

$"??_C@_0CC@KDCOPDAG@CUDA_ERROR_JIT_COMPILER_NOT_FOUN@" = comdat any

$"??_C@_0BK@GKOFLHLH@CUDA_ERROR_INVALID_SOURCE?$AA@" = comdat any

$"??_C@_0BK@JKOCDAGF@CUDA_ERROR_FILE_NOT_FOUND?$AA@" = comdat any

$"??_C@_0CK@KMEKIDID@CUDA_ERROR_SHARED_OBJECT_SYMBOL_@" = comdat any

$"??_C@_0CF@JKMNCLJG@CUDA_ERROR_SHARED_OBJECT_INIT_FA@" = comdat any

$"??_C@_0BM@DJPMPCAA@CUDA_ERROR_OPERATING_SYSTEM?$AA@" = comdat any

$"??_C@_0BK@FMCIPHBO@CUDA_ERROR_INVALID_HANDLE?$AA@" = comdat any

$"??_C@_0BF@DDPFHCNI@CUDA_ERROR_NOT_FOUND?$AA@" = comdat any

$"??_C@_0BF@MMICADPG@CUDA_ERROR_NOT_READY?$AA@" = comdat any

$"??_C@_0BL@JBGMGMM@CUDA_ERROR_ILLEGAL_ADDRESS?$AA@" = comdat any

$"??_C@_0CD@IAMOGGLH@CUDA_ERROR_LAUNCH_OUT_OF_RESOURC@" = comdat any

$"??_C@_0BK@MIOKJHOO@CUDA_ERROR_LAUNCH_TIMEOUT?$AA@" = comdat any

$"??_C@_0CJ@IHGKNJOE@CUDA_ERROR_LAUNCH_INCOMPATIBLE_T@" = comdat any

$"??_C@_0CH@LOBLNEGP@CUDA_ERROR_PEER_ACCESS_ALREADY_E@" = comdat any

$"??_C@_0CD@BNCBHFPB@CUDA_ERROR_PEER_ACCESS_NOT_ENABL@" = comdat any

$"??_C@_0CC@ILPMDNJB@CUDA_ERROR_PRIMARY_CONTEXT_ACTIV@" = comdat any

$"??_C@_0CA@IGBMDCNL@CUDA_ERROR_CONTEXT_IS_DESTROYED?$AA@" = comdat any

$"??_C@_0DO@LEIEFPOK@Illegal?5instruction?5or?5Halide?5as@" = comdat any

$"??_C@_0BO@NOHCDJNG@CUDA_ERROR_MISALIGNED_ADDRESS?$AA@" = comdat any

$"??_C@_0CB@BDJJMPAO@CUDA_ERROR_INVALID_ADDRESS_SPACE@" = comdat any

$"??_C@_0BG@OHCPPEH@CUDA_ERROR_INVALID_PC?$AA@" = comdat any

$"??_C@_0BJ@JLBELLNJ@CUDA_ERROR_LAUNCH_FAILED?$AA@" = comdat any

$"??_C@_0BJ@DBBLBGBJ@CUDA_ERROR_NOT_PERMITTED?$AA@" = comdat any

$"??_C@_0BJ@GLNJADKF@CUDA_ERROR_NOT_SUPPORTED?$AA@" = comdat any

$"??_C@_0BD@KJNCAEGL@CUDA_ERROR_UNKNOWN?$AA@" = comdat any

$"??_C@_0BE@GFJJBJ@Unknown?5cuda?5error?5?$AA@" = comdat any

$"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@" = comdat any

$"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@" = comdat any

$"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = comdat any

$"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = comdat any

$"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

@"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA" = weak dso_local local_unnamed_addr global i32 (i32)* null, align 8
@"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA" = weak dso_local local_unnamed_addr global i32 (i32*)* null, align 8
@"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHH@ZEA" = weak dso_local local_unnamed_addr global i32 (i32*, i32)* null, align 8
@"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHW4CUdevice_attribute@1234@H@ZEA" = weak dso_local local_unnamed_addr global i32 (i32*, i32, i32)* null, align 8
@"?cuDeviceGetName@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEADHH@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, i32)* null, align 8
@"?cuDeviceTotalMem@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAKH@ZEA" = weak dso_local local_unnamed_addr global i32 (i64*, i32)* null, align 8
@"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@IH@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)* null, align 8
@"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 8
@"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA" = weak dso_local local_unnamed_addr global i32 ()* null, align 8
@"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@PEAI@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)* null, align 8
@"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA" = weak dso_local local_unnamed_addr global i32 (i32*)* null, align 8
@"?cuModuleLoadData@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUmod_st@1234@PEBX@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)* null, align 8
@"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUmod_st@1234@PEBXIPEAW4CUjit_option_enum@1234@PEAPEAX@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)* null, align 8
@"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUmod_st@1234@@ZEA" = weak dso_local global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)* null, align 8
@"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUfunc_st@1234@PEAUCUmod_st@1234@PEBD@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)* null, align 8
@"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEA_KK@ZEA" = weak dso_local local_unnamed_addr global i32 (i64*, i64)* null, align 8
@"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K@ZEA" = weak dso_local local_unnamed_addr global i32 (i64)* null, align 8
@"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_KPEBXK@ZEA" = weak dso_local local_unnamed_addr global i32 (i64, i8*, i64)* null, align 8
@"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAX_KK@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i64, i64)* null, align 8
@"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K0K@ZEA" = weak dso_local local_unnamed_addr global i32 (i64, i64, i64)* null, align 8
@"?cuMemcpy3D@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEBUCUDA_MEMCPY3D_st@1234@@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)* null, align 8
@"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUfunc_st@1234@IIIIIIIPEAUCUstream_st@1234@PEAPEAX2@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)* null, align 8
@"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA" = weak dso_local local_unnamed_addr global i32 ()* null, align 8
@"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 8
@"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)* null, align 8
@"?cuPointerGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAXH_K@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, i64)* null, align 8
@"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* null, align 8
@"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PEAXEA" = weak dso_local local_unnamed_addr global i8* null, align 8
@"?lib_cuda_lock@Cuda@Internal@Runtime@Halide@@3DC" = weak dso_local global i8 0, align 1
@"??_C@_0L@BCLCHHLA@nvcuda?4dll?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"nvcuda.dll\00", comdat, align 1
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 1
@"??_C@_0GM@BOJKOMLJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:75 Assert failed: cuInit == nullptr\0A\00", comdat, align 1
@"??_C@_06BGNBMNO@cuInit?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"cuInit\00", comdat, align 1
@"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"cuDeviceGetCount\00", comdat, align 1
@"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"cuDeviceGet\00", comdat, align 1
@"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"cuDeviceGetAttribute\00", comdat, align 1
@"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"cuDeviceGetName\00", comdat, align 1
@"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"cuDeviceTotalMem\00", comdat, align 1
@"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"cuCtxCreate_v2\00", comdat, align 1
@"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"cuCtxDestroy_v2\00", comdat, align 1
@"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"cuProfilerStop\00", comdat, align 1
@"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"cuCtxGetApiVersion\00", comdat, align 1
@"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"cuCtxGetDevice\00", comdat, align 1
@"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"cuModuleLoadData\00", comdat, align 1
@"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"cuModuleLoadDataEx\00", comdat, align 1
@"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"cuModuleUnload\00", comdat, align 1
@"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"cuModuleGetFunction\00", comdat, align 1
@"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"cuMemAlloc_v2\00", comdat, align 1
@"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"cuMemFree_v2\00", comdat, align 1
@"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"cuMemcpyHtoD_v2\00", comdat, align 1
@"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"cuMemcpyDtoH_v2\00", comdat, align 1
@"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"cuMemcpyDtoD_v2\00", comdat, align 1
@"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"cuMemcpy3D_v2\00", comdat, align 1
@"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"cuLaunchKernel\00", comdat, align 1
@"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"cuCtxSynchronize\00", comdat, align 1
@"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"cuCtxPushCurrent_v2\00", comdat, align 1
@"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"cuCtxPopCurrent_v2\00", comdat, align 1
@"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"cuPointerGetAttribute\00", comdat, align 1
@"??_C@_0BE@OKHEPNII@cuStreamSynchronize?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"cuStreamSynchronize\00", comdat, align 1
@"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA" = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, align 8
@"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A" = weak dso_local global %struct.halide_mutex zeroinitializer, align 8
@"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA" = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, align 8
@"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A" = weak dso_local global %struct.halide_mutex zeroinitializer, align 8
@"??_C@_0GK@PKPCLCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:142 Assert failed: ctx != nullptr\0A\00", comdat, align 1
@"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A" = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
@"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@" = linkonce_odr dso_local unnamed_addr constant [37 x i8] c"Could not find cuda system libraries\00", comdat, align 1
@"??_C@_0BG@LJMBJJGG@CUDA?3?5cuInit?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CUDA: cuInit failed: \00", comdat, align 1
@"??_C@_0CA@HDKFNAIB@CUDA?3?5cuGetDeviceCount?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CUDA: cuGetDeviceCount failed: \00", comdat, align 1
@"??_C@_0BL@MNIIBKJA@CUDA?3?5No?5devices?5available?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA: No devices available\00", comdat, align 1
@"??_C@_0BM@CLPLMAAO@CUDA?3?5Failed?5to?5get?5device?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CUDA: Failed to get device\0A\00", comdat, align 1
@"??_C@_0BL@LEJDCCBF@CUDA?3?5cuCtxCreate?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA: cuCtxCreate failed: \00", comdat, align 1
@"??_C@_0BP@EKFOANMP@CUDA?3?5cuCtxPopCurrent?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"CUDA: cuCtxPopCurrent failed: \00", comdat, align 1
@"??_C@_0BK@DMLOHDHC@HL_CUDA_JIT_MAX_REGISTERS?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"HL_CUDA_JIT_MAX_REGISTERS\00", comdat, align 1
@"??_C@_0CA@BDCIDAKL@CUDA?3?5cuModuleLoadData?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CUDA: cuModuleLoadData failed: \00", comdat, align 1
@"??_C@_0HE@BOIHBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:531 Assert failed: loaded_module != nullptr\0A\00", comdat, align 1
@cuda_allocation_pool = weak dso_local global %struct.halide_device_allocation_pool zeroinitializer, align 8
@"??_C@_0IG@IHNFJCBJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:614 Assert failed: validate_device_pointer(user_context, buf)\0A\00", comdat, align 1
@"??_C@_0ED@GIMBMKIF@CUDA?3?5In?5halide_cuda_device_free@" = linkonce_odr dso_local unnamed_addr constant [67 x i8] c"CUDA: In halide_cuda_device_free, halide_cuda_get_stream returned \00", comdat, align 1
@"??_C@_0JC@MMDJCNJL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [146 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:688 Assert failed: err == CUDA_SUCCESS || err == CUDA_ERROR_DEINITIALIZED\0A\00", comdat, align 1
@"??_C@_0JC@BOIMJOEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [146 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:707 Assert failed: err == CUDA_SUCCESS || err == CUDA_ERROR_DEINITIALIZED\0A\00", comdat, align 1
@"??_C@_0GF@IMIIMJK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [101 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:732 Assert failed: size != 0\0A\00", comdat, align 1
@"??_C@_0IM@EKGDAOKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:735 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", comdat, align 1
@"??_C@_0HD@KCEJMHHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:741 Assert failed: buf->dim[i].stride >= 0\0A\00", comdat, align 1
@"??_C@_0EF@NHLNPEBK@CUDA?3?5In?5halide_cuda_device_mall@" = linkonce_odr dso_local unnamed_addr constant [69 x i8] c"CUDA: In halide_cuda_device_malloc, halide_cuda_get_stream returned \00", comdat, align 1
@"??_C@_0BK@IFMPONBJ@CUDA?3?5cuMemAlloc?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA: cuMemAlloc failed: \00", comdat, align 1
@"??_C@_0FN@MGKEONMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [93 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:830 Assert failed: p\0A\00", comdat, align 1
@"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_cuda_compute_capability, %struct.halide_device_interface_impl_t* @"?cuda_device_interface_impl@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 8
@"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@" = linkonce_odr dso_local unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", comdat, align 1
@"??_C@_0N@NEEBKPAO@cuMemcpyDtoH?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"cuMemcpyDtoH\00", comdat, align 1
@"??_C@_0N@LNAEANAD@cuMemcpyHtoD?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"cuMemcpyHtoD\00", comdat, align 1
@"??_C@_0N@HIPEOAAC@cuMemcpyDtoD?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"cuMemcpyDtoD\00", comdat, align 1
@"??_C@_06HJJAFDBE@CUDA?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"CUDA: \00", comdat, align 1
@"??_C@_09FIOGNGMI@?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c" failed: \00", comdat, align 1
@"??_C@_0KN@JNCHLBNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [173 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:898 Assert failed: dst_device_interface == nullptr || dst_device_interface == &cuda_device_interface\0A\00", comdat, align 1
@"??_C@_0IK@NMJPPNNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:902 Assert failed: dst_device_interface == &cuda_device_interface\0A\00", comdat, align 1
@"??_C@_0HC@OPNBCGF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:913 Assert failed: to_host || dst->device\0A\00", comdat, align 1
@"??_C@_0ED@EBCFNJMM@CUDA?3?5In?5halide_cuda_device_sync@" = linkonce_odr dso_local unnamed_addr constant [67 x i8] c"CUDA: In halide_cuda_device_sync, halide_cuda_get_stream returned \00", comdat, align 1
@"??_C@_0CA@MMGFAAGI@CUDA?3?5cuCtxSynchronize?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CUDA: cuCtxSynchronize failed: \00", comdat, align 1
@"??_C@_0HE@JLBLKPLK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1075 Assert failed: found && mod != nullptr\0A\00", comdat, align 1
@"??_C@_0CD@CKBMCDCA@CUDA?3?5cuModuleGetFunction?5failed@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CUDA: cuModuleGetFunction failed: \00", comdat, align 1
@"??_C@_0HN@LGMAJGMN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1102 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", comdat, align 1
@"??_C@_0DL@OALCCANJ@CUDA?3?5In?5halide_cuda_run?0?5halide@" = linkonce_odr dso_local unnamed_addr constant [59 x i8] c"CUDA: In halide_cuda_run, halide_cuda_get_stream returned \00", comdat, align 1
@"??_C@_0BO@MFKABAO@CUDA?3?5cuLaunchKernel?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CUDA: cuLaunchKernel failed: \00", comdat, align 1
@"??_C@_0GN@HOBIEDCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1162 Assert failed: buf->device == 0\0A\00", comdat, align 1
@"??_C@_0IM@GABEKHCB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1184 Assert failed: buf->device_interface == &cuda_device_interface\0A\00", comdat, align 1
@"??_C@_0IM@KELMOOGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:1195 Assert failed: buf->device_interface == &cuda_device_interface\0A\00", comdat, align 1
@"??_C@_0BO@HDIJPFPI@CUDA?3?5cuCtxGetDevice?5failed?5?$CI?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CUDA: cuCtxGetDevice failed (\00", comdat, align 1
@"??_C@_01PKGAHCOL@?$CJ?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c")\00", comdat, align 1
@"??_C@_0CE@BBPCNOHG@CUDA?3?5cuDeviceGetAttribute?5faile@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CUDA: cuDeviceGetAttribute failed (\00", comdat, align 1
@"??_C@_0N@IBGLLPEP@CUDA_SUCCESS?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"CUDA_SUCCESS\00", comdat, align 1
@"??_C@_0BJ@MCNIHGMK@CUDA_ERROR_INVALID_VALUE?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_INVALID_VALUE\00", comdat, align 1
@"??_C@_0BJ@CNEOPIBN@CUDA_ERROR_OUT_OF_MEMORY?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_OUT_OF_MEMORY\00", comdat, align 1
@"??_C@_0BL@EPHIMIFG@CUDA_ERROR_NOT_INITIALIZED?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA_ERROR_NOT_INITIALIZED\00", comdat, align 1
@"??_C@_0BJ@IKKPFDBH@CUDA_ERROR_DEINITIALIZED?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_DEINITIALIZED\00", comdat, align 1
@"??_C@_0BN@FPJIJONF@CUDA_ERROR_PROFILER_DISABLED?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CUDA_ERROR_PROFILER_DISABLED\00", comdat, align 1
@"??_C@_0CE@HBMLIEHI@CUDA_ERROR_PROFILER_NOT_INITIALI@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_NOT_INITIALIZED\00", comdat, align 1
@"??_C@_0CE@EKHCGPMK@CUDA_ERROR_PROFILER_ALREADY_STAR@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_ALREADY_STARTED\00", comdat, align 1
@"??_C@_0CE@IFNKMKIN@CUDA_ERROR_PROFILER_ALREADY_STOP@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CUDA_ERROR_PROFILER_ALREADY_STOPPED\00", comdat, align 1
@"??_C@_0BF@OLCOGLNC@CUDA_ERROR_NO_DEVICE?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CUDA_ERROR_NO_DEVICE\00", comdat, align 1
@"??_C@_0BK@KJLPJMNP@CUDA_ERROR_INVALID_DEVICE?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_DEVICE\00", comdat, align 1
@"??_C@_0BJ@BIGAIEEG@CUDA_ERROR_INVALID_IMAGE?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_INVALID_IMAGE\00", comdat, align 1
@"??_C@_0BL@CAMHACOE@CUDA_ERROR_INVALID_CONTEXT?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA_ERROR_INVALID_CONTEXT\00", comdat, align 1
@"??_C@_0CD@JICHIBFF@CUDA_ERROR_CONTEXT_ALREADY_CURRE@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CUDA_ERROR_CONTEXT_ALREADY_CURRENT\00", comdat, align 1
@"??_C@_0BG@PCDIJLGE@CUDA_ERROR_MAP_FAILED?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CUDA_ERROR_MAP_FAILED\00", comdat, align 1
@"??_C@_0BI@LIOELPBH@CUDA_ERROR_UNMAP_FAILED?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"CUDA_ERROR_UNMAP_FAILED\00", comdat, align 1
@"??_C@_0BL@LHLGMFM@CUDA_ERROR_ARRAY_IS_MAPPED?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA_ERROR_ARRAY_IS_MAPPED\00", comdat, align 1
@"??_C@_0BK@JGMMABAO@CUDA_ERROR_ALREADY_MAPPED?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_ALREADY_MAPPED\00", comdat, align 1
@"??_C@_0BN@LLCKJBJD@CUDA_ERROR_NO_BINARY_FOR_GPU?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CUDA_ERROR_NO_BINARY_FOR_GPU\00", comdat, align 1
@"??_C@_0BM@OJOJMFNC@CUDA_ERROR_ALREADY_ACQUIRED?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CUDA_ERROR_ALREADY_ACQUIRED\00", comdat, align 1
@"??_C@_0BG@FNMHNFPE@CUDA_ERROR_NOT_MAPPED?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CUDA_ERROR_NOT_MAPPED\00", comdat, align 1
@"??_C@_0BP@EOHNHEJJ@CUDA_ERROR_NOT_MAPPED_AS_ARRAY?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"CUDA_ERROR_NOT_MAPPED_AS_ARRAY\00", comdat, align 1
@"??_C@_0CB@KGAEMLBJ@CUDA_ERROR_NOT_MAPPED_AS_POINTER@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"CUDA_ERROR_NOT_MAPPED_AS_POINTER\00", comdat, align 1
@"??_C@_0BN@MOLLDDBF@CUDA_ERROR_ECC_UNCORRECTABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CUDA_ERROR_ECC_UNCORRECTABLE\00", comdat, align 1
@"??_C@_0BN@KCELBMJM@CUDA_ERROR_UNSUPPORTED_LIMIT?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CUDA_ERROR_UNSUPPORTED_LIMIT\00", comdat, align 1
@"??_C@_0CC@MKNOCLLI@CUDA_ERROR_CONTEXT_ALREADY_IN_US@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"CUDA_ERROR_CONTEXT_ALREADY_IN_USE\00", comdat, align 1
@"??_C@_0CD@BKCKCDHK@CUDA_ERROR_PEER_ACCESS_UNSUPPORT@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CUDA_ERROR_PEER_ACCESS_UNSUPPORTED\00", comdat, align 1
@"??_C@_0BH@IDLNMEGF@CUDA_ERROR_INVALID_PTX?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"CUDA_ERROR_INVALID_PTX\00", comdat, align 1
@"??_C@_0CE@KPBOEKLA@CUDA_ERROR_INVALID_GRAPHICS_CONT@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CUDA_ERROR_INVALID_GRAPHICS_CONTEXT\00", comdat, align 1
@"??_C@_0CA@DEDHGBPA@CUDA_ERROR_NVLINK_UNCORRECTABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CUDA_ERROR_NVLINK_UNCORRECTABLE\00", comdat, align 1
@"??_C@_0CC@KDCOPDAG@CUDA_ERROR_JIT_COMPILER_NOT_FOUN@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"CUDA_ERROR_JIT_COMPILER_NOT_FOUND\00", comdat, align 1
@"??_C@_0BK@GKOFLHLH@CUDA_ERROR_INVALID_SOURCE?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_SOURCE\00", comdat, align 1
@"??_C@_0BK@JKOCDAGF@CUDA_ERROR_FILE_NOT_FOUND?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_FILE_NOT_FOUND\00", comdat, align 1
@"??_C@_0CK@KMEKIDID@CUDA_ERROR_SHARED_OBJECT_SYMBOL_@" = linkonce_odr dso_local unnamed_addr constant [42 x i8] c"CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND\00", comdat, align 1
@"??_C@_0CF@JKMNCLJG@CUDA_ERROR_SHARED_OBJECT_INIT_FA@" = linkonce_odr dso_local unnamed_addr constant [37 x i8] c"CUDA_ERROR_SHARED_OBJECT_INIT_FAILED\00", comdat, align 1
@"??_C@_0BM@DJPMPCAA@CUDA_ERROR_OPERATING_SYSTEM?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CUDA_ERROR_OPERATING_SYSTEM\00", comdat, align 1
@"??_C@_0BK@FMCIPHBO@CUDA_ERROR_INVALID_HANDLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_INVALID_HANDLE\00", comdat, align 1
@"??_C@_0BF@DDPFHCNI@CUDA_ERROR_NOT_FOUND?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CUDA_ERROR_NOT_FOUND\00", comdat, align 1
@"??_C@_0BF@MMICADPG@CUDA_ERROR_NOT_READY?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CUDA_ERROR_NOT_READY\00", comdat, align 1
@"??_C@_0BL@JBGMGMM@CUDA_ERROR_ILLEGAL_ADDRESS?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CUDA_ERROR_ILLEGAL_ADDRESS\00", comdat, align 1
@"??_C@_0CD@IAMOGGLH@CUDA_ERROR_LAUNCH_OUT_OF_RESOURC@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES\00", comdat, align 1
@"??_C@_0BK@MIOKJHOO@CUDA_ERROR_LAUNCH_TIMEOUT?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CUDA_ERROR_LAUNCH_TIMEOUT\00", comdat, align 1
@"??_C@_0CJ@IHGKNJOE@CUDA_ERROR_LAUNCH_INCOMPATIBLE_T@" = linkonce_odr dso_local unnamed_addr constant [41 x i8] c"CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING\00", comdat, align 1
@"??_C@_0CH@LOBLNEGP@CUDA_ERROR_PEER_ACCESS_ALREADY_E@" = linkonce_odr dso_local unnamed_addr constant [39 x i8] c"CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED\00", comdat, align 1
@"??_C@_0CD@BNCBHFPB@CUDA_ERROR_PEER_ACCESS_NOT_ENABL@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CUDA_ERROR_PEER_ACCESS_NOT_ENABLED\00", comdat, align 1
@"??_C@_0CC@ILPMDNJB@CUDA_ERROR_PRIMARY_CONTEXT_ACTIV@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE\00", comdat, align 1
@"??_C@_0CA@IGBMDCNL@CUDA_ERROR_CONTEXT_IS_DESTROYED?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CUDA_ERROR_CONTEXT_IS_DESTROYED\00", comdat, align 1
@"??_C@_0DO@LEIEFPOK@Illegal?5instruction?5or?5Halide?5as@" = linkonce_odr dso_local unnamed_addr constant [62 x i8] c"Illegal instruction or Halide assertion failure inside kernel\00", comdat, align 1
@"??_C@_0BO@NOHCDJNG@CUDA_ERROR_MISALIGNED_ADDRESS?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CUDA_ERROR_MISALIGNED_ADDRESS\00", comdat, align 1
@"??_C@_0CB@BDJJMPAO@CUDA_ERROR_INVALID_ADDRESS_SPACE@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"CUDA_ERROR_INVALID_ADDRESS_SPACE\00", comdat, align 1
@"??_C@_0BG@OHCPPEH@CUDA_ERROR_INVALID_PC?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CUDA_ERROR_INVALID_PC\00", comdat, align 1
@"??_C@_0BJ@JLBELLNJ@CUDA_ERROR_LAUNCH_FAILED?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_LAUNCH_FAILED\00", comdat, align 1
@"??_C@_0BJ@DBBLBGBJ@CUDA_ERROR_NOT_PERMITTED?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_NOT_PERMITTED\00", comdat, align 1
@"??_C@_0BJ@GLNJADKF@CUDA_ERROR_NOT_SUPPORTED?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CUDA_ERROR_NOT_SUPPORTED\00", comdat, align 1
@"??_C@_0BD@KJNCAEGL@CUDA_ERROR_UNKNOWN?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"CUDA_ERROR_UNKNOWN\00", comdat, align 1
@"??_C@_0BE@GFJJBJ@Unknown?5cuda?5error?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"Unknown cuda error \00", comdat, align 1
@"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"<Unknown error>\00", comdat, align 1
@"?cuda_device_interface_impl@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_sync, i32 (i8*)* @halide_cuda_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_cuda_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_cuda_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_cuda_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_cuda_wrap_device_ptr, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_detach_device_ptr }, align 8
@"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:232 Assert failed: context != nullptr\0A\00", comdat, align 1
@"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:233 Assert failed: cuInit != nullptr\0A\00", comdat, align 1
@"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CUDA API not found: \00", comdat, align 1
@"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", comdat, align 1
@"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"<nullptr>\00", comdat, align 1
@"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", comdat, align 1
@"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", comdat, align 1
@"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", comdat, align 1
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @register_cuda_allocation_pool, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_windows_cuda.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_cuda_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !2
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %27, !llvm.loop !6

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !2
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !8
  %30 = add i64 %29, %2
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !10
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !11
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #8
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %3, %23 ], [ %46, %39 ]
  %42 = phi i64 [ %2, %23 ], [ %44, %39 ]
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %42, i64 %41) #9
  %43 = load i64, i64* %25, align 8, !tbaa !2
  %44 = add i64 %43, %42
  %45 = load i64, i64* %26, align 8, !tbaa !2
  %46 = add i64 %45, %41
  %47 = add nuw i64 %40, 1
  %48 = load i64, i64* %20, align 8, !tbaa !2
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !12

50:                                               ; preds = %39, %18, %27
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !10
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !13
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10
  br i1 %2, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !14
  %11 = ptrtoint i8* %10 to i64
  br label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !21
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !8
  br i1 %4, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !14
  %21 = ptrtoint i8* %20 to i64
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  store i64 %26, i64* %27, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %29 = load i8, i8* %28, align 1, !tbaa !22
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 7
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6
  store i64 %33, i64* %34, align 8, !tbaa !11
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0
  store i64 1, i64* %35, align 8, !tbaa !2
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0
  store i64 0, i64* %36, align 8, !tbaa !2
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0
  store i64 0, i64* %37, align 8, !tbaa !2
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1
  store i64 1, i64* %38, align 8, !tbaa !2
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1
  store i64 0, i64* %39, align 8, !tbaa !2
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1
  store i64 0, i64* %40, align 8, !tbaa !2
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2
  store i64 1, i64* %41, align 8, !tbaa !2
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2
  store i64 0, i64* %42, align 8, !tbaa !2
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2
  store i64 0, i64* %43, align 8, !tbaa !2
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3
  store i64 1, i64* %44, align 8, !tbaa !2
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3
  store i64 0, i64* %45, align 8, !tbaa !2
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3
  store i64 0, i64* %46, align 8, !tbaa !2
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4
  store i64 1, i64* %47, align 8, !tbaa !2
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4
  store i64 0, i64* %48, align 8, !tbaa !2
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4
  store i64 0, i64* %49, align 8, !tbaa !2
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5
  store i64 1, i64* %50, align 8, !tbaa !2
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5
  store i64 0, i64* %51, align 8, !tbaa !2
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5
  store i64 0, i64* %52, align 8, !tbaa !2
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6
  store i64 1, i64* %53, align 8, !tbaa !2
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6
  store i64 0, i64* %54, align 8, !tbaa !2
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6
  store i64 0, i64* %55, align 8, !tbaa !2
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7
  store i64 1, i64* %56, align 8, !tbaa !2
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7
  store i64 0, i64* %57, align 8, !tbaa !2
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7
  store i64 0, i64* %58, align 8, !tbaa !2
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8
  store i64 1, i64* %59, align 8, !tbaa !2
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8
  store i64 0, i64* %60, align 8, !tbaa !2
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8
  store i64 0, i64* %61, align 8, !tbaa !2
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9
  store i64 1, i64* %62, align 8, !tbaa !2
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9
  store i64 0, i64* %63, align 8, !tbaa !2
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9
  store i64 0, i64* %64, align 8, !tbaa !2
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10
  store i64 1, i64* %65, align 8, !tbaa !2
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10
  store i64 0, i64* %66, align 8, !tbaa !2
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10
  store i64 0, i64* %67, align 8, !tbaa !2
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11
  store i64 1, i64* %68, align 8, !tbaa !2
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11
  store i64 0, i64* %69, align 8, !tbaa !2
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11
  store i64 0, i64* %70, align 8, !tbaa !2
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12
  store i64 1, i64* %71, align 8, !tbaa !2
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12
  store i64 0, i64* %72, align 8, !tbaa !2
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12
  store i64 0, i64* %73, align 8, !tbaa !2
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13
  store i64 1, i64* %74, align 8, !tbaa !2
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13
  store i64 0, i64* %75, align 8, !tbaa !2
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13
  store i64 0, i64* %76, align 8, !tbaa !2
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14
  store i64 1, i64* %77, align 8, !tbaa !2
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14
  store i64 0, i64* %78, align 8, !tbaa !2
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14
  store i64 0, i64* %79, align 8, !tbaa !2
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15
  store i64 1, i64* %80, align 8, !tbaa !2
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15
  store i64 0, i64* %81, align 8, !tbaa !2
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15
  store i64 0, i64* %82, align 8, !tbaa !2
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %85 = load i32, i32* %84, align 4, !tbaa !23
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !24
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !24
  %92 = zext i32 %85 to i64
  br label %100

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ]
  %95 = load i64, i64* %34, align 8, !tbaa !11
  %96 = mul i64 %94, %95
  store i64 %96, i64* %83, align 8, !tbaa !13
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %98 = load i32, i32* %97, align 4, !tbaa !23
  %99 = icmp eq i32 %85, %98
  br i1 %99, label %116, label %125

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ]
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !25
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0
  %107 = load i32, i32* %106, align 4, !tbaa !27
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0
  %109 = load i32, i32* %108, align 4, !tbaa !27
  %110 = sub nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %105
  %113 = add i64 %112, %102
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp eq i64 %114, %92
  br i1 %115, label %93, label %100, !llvm.loop !28

116:                                              ; preds = %93
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %118 = load i8, i8* %117, align 1, !tbaa !22
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
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !24
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !24
  %135 = zext i32 %85 to i64
  br label %144

136:                                              ; preds = %127
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false)
  br label %253

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !tbaa !11
  %140 = load i64, i64* %36, align 8, !tbaa !2
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %251

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !tbaa !2
  br label %198

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2
  %147 = load i32, i32* %146, align 4, !tbaa !25
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %33
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !25
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
  %162 = load i64, i64* %161, align 8, !tbaa !2
  %163 = icmp ult i64 %149, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1
  %166 = icmp eq i64 %165, %145
  br i1 %166, label %167, label %159, !llvm.loop !29

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
  %178 = load i32, i32* %177, align 4, !tbaa !30
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172
  store i64 %179, i64* %180, align 8, !tbaa !2
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172
  store i64 %149, i64* %181, align 8, !tbaa !2
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172
  store i64 %153, i64* %182, align 8, !tbaa !2
  %183 = add nuw nsw i64 %145, 1
  %184 = icmp eq i64 %183, %135
  br i1 %184, label %138, label %144, !llvm.loop !31

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187
  %189 = load i64, i64* %188, align 8, !tbaa !2
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186
  store i64 %189, i64* %190, align 8, !tbaa !2
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187
  %192 = load i64, i64* %191, align 8, !tbaa !2
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186
  store i64 %192, i64* %193, align 8, !tbaa !2
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187
  %195 = load i64, i64* %194, align 8, !tbaa !2
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186
  store i64 %195, i64* %196, align 8, !tbaa !2
  %197 = icmp sgt i64 %187, %175
  br i1 %197, label %185, label %176, !llvm.loop !32

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ]
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199
  br i1 %201, label %202, label %251

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !tbaa !2
  %204 = mul i64 %203, %199
  store i64 %204, i64* %34, align 8, !tbaa !11
  %205 = load i64, i64* %38, align 8, !tbaa !2
  store i64 %205, i64* %35, align 8, !tbaa !2
  %206 = load i64, i64* %39, align 8, !tbaa !2
  store i64 %206, i64* %36, align 8, !tbaa !2
  %207 = load i64, i64* %40, align 8, !tbaa !2
  store i64 %207, i64* %37, align 8, !tbaa !2
  %208 = load i64, i64* %41, align 8, !tbaa !2
  store i64 %208, i64* %38, align 8, !tbaa !2
  %209 = load i64, i64* %42, align 8, !tbaa !2
  store i64 %209, i64* %39, align 8, !tbaa !2
  %210 = load i64, i64* %43, align 8, !tbaa !2
  store i64 %210, i64* %40, align 8, !tbaa !2
  %211 = load i64, i64* %44, align 8, !tbaa !2
  store i64 %211, i64* %41, align 8, !tbaa !2
  %212 = load i64, i64* %45, align 8, !tbaa !2
  store i64 %212, i64* %42, align 8, !tbaa !2
  %213 = load i64, i64* %46, align 8, !tbaa !2
  store i64 %213, i64* %43, align 8, !tbaa !2
  %214 = load i64, i64* %47, align 8, !tbaa !2
  store i64 %214, i64* %44, align 8, !tbaa !2
  %215 = load i64, i64* %48, align 8, !tbaa !2
  store i64 %215, i64* %45, align 8, !tbaa !2
  %216 = load i64, i64* %49, align 8, !tbaa !2
  store i64 %216, i64* %46, align 8, !tbaa !2
  %217 = load i64, i64* %50, align 8, !tbaa !2
  store i64 %217, i64* %47, align 8, !tbaa !2
  %218 = load i64, i64* %51, align 8, !tbaa !2
  store i64 %218, i64* %48, align 8, !tbaa !2
  %219 = load i64, i64* %52, align 8, !tbaa !2
  store i64 %219, i64* %49, align 8, !tbaa !2
  %220 = load i64, i64* %53, align 8, !tbaa !2
  store i64 %220, i64* %50, align 8, !tbaa !2
  %221 = load i64, i64* %54, align 8, !tbaa !2
  store i64 %221, i64* %51, align 8, !tbaa !2
  %222 = load i64, i64* %55, align 8, !tbaa !2
  store i64 %222, i64* %52, align 8, !tbaa !2
  %223 = load i64, i64* %56, align 8, !tbaa !2
  store i64 %223, i64* %53, align 8, !tbaa !2
  %224 = load i64, i64* %57, align 8, !tbaa !2
  store i64 %224, i64* %54, align 8, !tbaa !2
  %225 = load i64, i64* %58, align 8, !tbaa !2
  store i64 %225, i64* %55, align 8, !tbaa !2
  %226 = load i64, i64* %59, align 8, !tbaa !2
  store i64 %226, i64* %56, align 8, !tbaa !2
  %227 = load i64, i64* %60, align 8, !tbaa !2
  store i64 %227, i64* %57, align 8, !tbaa !2
  %228 = load i64, i64* %61, align 8, !tbaa !2
  store i64 %228, i64* %58, align 8, !tbaa !2
  %229 = load i64, i64* %62, align 8, !tbaa !2
  store i64 %229, i64* %59, align 8, !tbaa !2
  %230 = load i64, i64* %63, align 8, !tbaa !2
  store i64 %230, i64* %60, align 8, !tbaa !2
  %231 = load i64, i64* %64, align 8, !tbaa !2
  store i64 %231, i64* %61, align 8, !tbaa !2
  %232 = load i64, i64* %65, align 8, !tbaa !2
  store i64 %232, i64* %62, align 8, !tbaa !2
  %233 = load i64, i64* %66, align 8, !tbaa !2
  store i64 %233, i64* %63, align 8, !tbaa !2
  %234 = load i64, i64* %67, align 8, !tbaa !2
  store i64 %234, i64* %64, align 8, !tbaa !2
  %235 = load i64, i64* %68, align 8, !tbaa !2
  store i64 %235, i64* %65, align 8, !tbaa !2
  %236 = load i64, i64* %69, align 8, !tbaa !2
  store i64 %236, i64* %66, align 8, !tbaa !2
  %237 = load i64, i64* %70, align 8, !tbaa !2
  store i64 %237, i64* %67, align 8, !tbaa !2
  %238 = load i64, i64* %71, align 8, !tbaa !2
  store i64 %238, i64* %68, align 8, !tbaa !2
  %239 = load i64, i64* %72, align 8, !tbaa !2
  store i64 %239, i64* %69, align 8, !tbaa !2
  %240 = load i64, i64* %73, align 8, !tbaa !2
  store i64 %240, i64* %70, align 8, !tbaa !2
  %241 = load i64, i64* %74, align 8, !tbaa !2
  store i64 %241, i64* %71, align 8, !tbaa !2
  %242 = load i64, i64* %75, align 8, !tbaa !2
  store i64 %242, i64* %72, align 8, !tbaa !2
  %243 = load i64, i64* %76, align 8, !tbaa !2
  store i64 %243, i64* %73, align 8, !tbaa !2
  %244 = load i64, i64* %77, align 8, !tbaa !2
  store i64 %244, i64* %74, align 8, !tbaa !2
  %245 = load i64, i64* %78, align 8, !tbaa !2
  store i64 %245, i64* %75, align 8, !tbaa !2
  %246 = load i64, i64* %79, align 8, !tbaa !2
  store i64 %246, i64* %76, align 8, !tbaa !2
  %247 = load i64, i64* %80, align 8, !tbaa !2
  store i64 %247, i64* %77, align 8, !tbaa !2
  %248 = load i64, i64* %81, align 8, !tbaa !2
  store i64 %248, i64* %78, align 8, !tbaa !2
  %249 = load i64, i64* %82, align 8, !tbaa !2
  store i64 %249, i64* %79, align 8, !tbaa !2
  store i64 1, i64* %80, align 8, !tbaa !2
  store i64 0, i64* %81, align 8, !tbaa !2
  store i64 0, i64* %82, align 8, !tbaa !2
  %250 = icmp eq i64 %204, %206
  br i1 %250, label %198, label %251, !llvm.loop !33

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !tbaa.struct !34
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
define weak dso_local void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_cuda_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@BCLCHHLA@nvcuda?4dll?$AA@", i64 0, i64 0)) #8
  store i8* %7, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %8 = tail call i8* @halide_get_library_symbol(i8* %7, i8* %1) #8
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8* [ %8, %6 ], [ %4, %2 ]
  ret i8* %10
}

declare extern_weak dso_local i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?load_libcuda@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %3 = icmp eq i32 (i32)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@BOJKOMLJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i64 0, i64 0)) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i64 1024) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !35
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i64 0, i64 0)) #8
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %6, i8** bitcast (i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA" to i8**), align 8, !tbaa !36
  %27 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@", i64 0, i64 0)) #8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = tail call i8* @malloc(i64 1024) #8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !35
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i8* [ %33, %32 ], [ null, %29 ]
  %36 = tail call i8* @halide_string_to_string(i8* %30, i8* %35, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@", i64 0, i64 0)) #8
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %35, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %31, label %39, label %40

39:                                               ; preds = %34
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %27, i8** bitcast (i32 (i32*)** @"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA" to i8**), align 8, !tbaa !36
  %48 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@", i64 0, i64 0)) #8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = tail call i8* @malloc(i64 1024) #8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %51, i64 1023
  store i8 0, i8* %54, align 1, !tbaa !35
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %54, %53 ], [ null, %50 ]
  %57 = tail call i8* @halide_string_to_string(i8* %51, i8* %56, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %56, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@", i64 0, i64 0)) #8
  %59 = tail call i8* @halide_string_to_string(i8* %58, i8* %56, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %52, label %60, label %61

60:                                               ; preds = %55
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %48, i8** bitcast (i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHH@ZEA" to i8**), align 8, !tbaa !36
  %69 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@", i64 0, i64 0)) #8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = tail call i8* @malloc(i64 1024) #8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %75, align 1, !tbaa !35
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i8* [ %75, %74 ], [ null, %71 ]
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@", i64 0, i64 0)) #8
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %77, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %73, label %81, label %82

81:                                               ; preds = %76
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %69, i8** bitcast (i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHW4CUdevice_attribute@1234@H@ZEA" to i8**), align 8, !tbaa !36
  %90 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@", i64 0, i64 0)) #8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = tail call i8* @malloc(i64 1024) #8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, i8* %93, i64 1023
  store i8 0, i8* %96, align 1, !tbaa !35
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i8* [ %96, %95 ], [ null, %92 ]
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %100 = tail call i8* @halide_string_to_string(i8* %99, i8* %98, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@", i64 0, i64 0)) #8
  %101 = tail call i8* @halide_string_to_string(i8* %100, i8* %98, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %94, label %102, label %103

102:                                              ; preds = %97
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %90, i8** bitcast (i32 (i8*, i32, i32)** @"?cuDeviceGetName@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEADHH@ZEA" to i8**), align 8, !tbaa !36
  %111 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@", i64 0, i64 0)) #8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = tail call i8* @malloc(i64 1024) #8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %114, i64 1023
  store i8 0, i8* %117, align 1, !tbaa !35
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i8* [ %117, %116 ], [ null, %113 ]
  %120 = tail call i8* @halide_string_to_string(i8* %114, i8* %119, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %121 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@", i64 0, i64 0)) #8
  %122 = tail call i8* @halide_string_to_string(i8* %121, i8* %119, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %115, label %123, label %124

123:                                              ; preds = %118
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %111, i8** bitcast (i32 (i64*, i32)** @"?cuDeviceTotalMem@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAKH@ZEA" to i8**), align 8, !tbaa !36
  %132 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@", i64 0, i64 0)) #8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = tail call i8* @malloc(i64 1024) #8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, i8* %135, i64 1023
  store i8 0, i8* %138, align 1, !tbaa !35
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi i8* [ %138, %137 ], [ null, %134 ]
  %141 = tail call i8* @halide_string_to_string(i8* %135, i8* %140, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %142 = tail call i8* @halide_string_to_string(i8* %141, i8* %140, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@", i64 0, i64 0)) #8
  %143 = tail call i8* @halide_string_to_string(i8* %142, i8* %140, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %136, label %144, label %145

144:                                              ; preds = %139
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %132, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@IH@ZEA" to i8**), align 8, !tbaa !36
  %153 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@", i64 0, i64 0)) #8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = tail call i8* @malloc(i64 1024) #8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, i8* %156, i64 1023
  store i8 0, i8* %159, align 1, !tbaa !35
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i8* [ %159, %158 ], [ null, %155 ]
  %162 = tail call i8* @halide_string_to_string(i8* %156, i8* %161, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %163 = tail call i8* @halide_string_to_string(i8* %162, i8* %161, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@", i64 0, i64 0)) #8
  %164 = tail call i8* @halide_string_to_string(i8* %163, i8* %161, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %157, label %165, label %166

165:                                              ; preds = %160
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %153, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  %174 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@", i64 0, i64 0)) #8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  %177 = tail call i8* @malloc(i64 1024) #8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i64 1023
  store i8 0, i8* %180, align 1, !tbaa !35
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i8* [ %180, %179 ], [ null, %176 ]
  %183 = tail call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %184 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@", i64 0, i64 0)) #8
  %185 = tail call i8* @halide_string_to_string(i8* %184, i8* %182, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %178, label %186, label %187

186:                                              ; preds = %181
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %174, i8** bitcast (i32 ()** @"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA" to i8**), align 8, !tbaa !36
  %195 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@", i64 0, i64 0)) #8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = tail call i8* @malloc(i64 1024) #8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, i8* %198, i64 1023
  store i8 0, i8* %201, align 1, !tbaa !35
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i8* [ %201, %200 ], [ null, %197 ]
  %204 = tail call i8* @halide_string_to_string(i8* %198, i8* %203, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %205 = tail call i8* @halide_string_to_string(i8* %204, i8* %203, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@", i64 0, i64 0)) #8
  %206 = tail call i8* @halide_string_to_string(i8* %205, i8* %203, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %199, label %207, label %208

207:                                              ; preds = %202
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %195, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@PEAI@ZEA" to i8**), align 8, !tbaa !36
  %216 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@", i64 0, i64 0)) #8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = tail call i8* @malloc(i64 1024) #8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, i8* %219, i64 1023
  store i8 0, i8* %222, align 1, !tbaa !35
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi i8* [ %222, %221 ], [ null, %218 ]
  %225 = tail call i8* @halide_string_to_string(i8* %219, i8* %224, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %226 = tail call i8* @halide_string_to_string(i8* %225, i8* %224, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@", i64 0, i64 0)) #8
  %227 = tail call i8* @halide_string_to_string(i8* %226, i8* %224, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %220, label %228, label %229

228:                                              ; preds = %223
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %216, i8** bitcast (i32 (i32*)** @"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA" to i8**), align 8, !tbaa !36
  %237 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@", i64 0, i64 0)) #8
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %257

239:                                              ; preds = %236
  %240 = tail call i8* @malloc(i64 1024) #8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %240, i64 1023
  store i8 0, i8* %243, align 1, !tbaa !35
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi i8* [ %243, %242 ], [ null, %239 ]
  %246 = tail call i8* @halide_string_to_string(i8* %240, i8* %245, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %247 = tail call i8* @halide_string_to_string(i8* %246, i8* %245, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@", i64 0, i64 0)) #8
  %248 = tail call i8* @halide_string_to_string(i8* %247, i8* %245, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %241, label %249, label %250

249:                                              ; preds = %244
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %237, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)** @"?cuModuleLoadData@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUmod_st@1234@PEBX@ZEA" to i8**), align 8, !tbaa !36
  %258 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@", i64 0, i64 0)) #8
  %259 = icmp eq i8* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %257
  %261 = tail call i8* @malloc(i64 1024) #8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds i8, i8* %261, i64 1023
  store i8 0, i8* %264, align 1, !tbaa !35
  br label %265

265:                                              ; preds = %263, %260
  %266 = phi i8* [ %264, %263 ], [ null, %260 ]
  %267 = tail call i8* @halide_string_to_string(i8* %261, i8* %266, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %268 = tail call i8* @halide_string_to_string(i8* %267, i8* %266, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@", i64 0, i64 0)) #8
  %269 = tail call i8* @halide_string_to_string(i8* %268, i8* %266, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %262, label %270, label %271

270:                                              ; preds = %265
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %258, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUmod_st@1234@PEBXIPEAW4CUjit_option_enum@1234@PEAPEAX@ZEA" to i8**), align 8, !tbaa !36
  %279 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@", i64 0, i64 0)) #8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %299

281:                                              ; preds = %278
  %282 = tail call i8* @malloc(i64 1024) #8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds i8, i8* %282, i64 1023
  store i8 0, i8* %285, align 1, !tbaa !35
  br label %286

286:                                              ; preds = %284, %281
  %287 = phi i8* [ %285, %284 ], [ null, %281 ]
  %288 = tail call i8* @halide_string_to_string(i8* %282, i8* %287, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %289 = tail call i8* @halide_string_to_string(i8* %288, i8* %287, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@", i64 0, i64 0)) #8
  %290 = tail call i8* @halide_string_to_string(i8* %289, i8* %287, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %283, label %291, label %292

291:                                              ; preds = %286
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %279, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUmod_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  %300 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@", i64 0, i64 0)) #8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %320

302:                                              ; preds = %299
  %303 = tail call i8* @malloc(i64 1024) #8
  %304 = icmp eq i8* %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds i8, i8* %303, i64 1023
  store i8 0, i8* %306, align 1, !tbaa !35
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i8* [ %306, %305 ], [ null, %302 ]
  %309 = tail call i8* @halide_string_to_string(i8* %303, i8* %308, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %310 = tail call i8* @halide_string_to_string(i8* %309, i8* %308, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@", i64 0, i64 0)) #8
  %311 = tail call i8* @halide_string_to_string(i8* %310, i8* %308, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %304, label %312, label %313

312:                                              ; preds = %307
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %300, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUfunc_st@1234@PEAUCUmod_st@1234@PEBD@ZEA" to i8**), align 8, !tbaa !36
  %321 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@", i64 0, i64 0)) #8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %341

323:                                              ; preds = %320
  %324 = tail call i8* @malloc(i64 1024) #8
  %325 = icmp eq i8* %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds i8, i8* %324, i64 1023
  store i8 0, i8* %327, align 1, !tbaa !35
  br label %328

328:                                              ; preds = %326, %323
  %329 = phi i8* [ %327, %326 ], [ null, %323 ]
  %330 = tail call i8* @halide_string_to_string(i8* %324, i8* %329, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %331 = tail call i8* @halide_string_to_string(i8* %330, i8* %329, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@", i64 0, i64 0)) #8
  %332 = tail call i8* @halide_string_to_string(i8* %331, i8* %329, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %325, label %333, label %334

333:                                              ; preds = %328
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %321, i8** bitcast (i32 (i64*, i64)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEA_KK@ZEA" to i8**), align 8, !tbaa !36
  %342 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@", i64 0, i64 0)) #8
  %343 = icmp eq i8* %342, null
  br i1 %343, label %344, label %362

344:                                              ; preds = %341
  %345 = tail call i8* @malloc(i64 1024) #8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds i8, i8* %345, i64 1023
  store i8 0, i8* %348, align 1, !tbaa !35
  br label %349

349:                                              ; preds = %347, %344
  %350 = phi i8* [ %348, %347 ], [ null, %344 ]
  %351 = tail call i8* @halide_string_to_string(i8* %345, i8* %350, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %352 = tail call i8* @halide_string_to_string(i8* %351, i8* %350, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@", i64 0, i64 0)) #8
  %353 = tail call i8* @halide_string_to_string(i8* %352, i8* %350, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %346, label %354, label %355

354:                                              ; preds = %349
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %342, i8** bitcast (i32 (i64)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K@ZEA" to i8**), align 8, !tbaa !36
  %363 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@", i64 0, i64 0)) #8
  %364 = icmp eq i8* %363, null
  br i1 %364, label %365, label %383

365:                                              ; preds = %362
  %366 = tail call i8* @malloc(i64 1024) #8
  %367 = icmp eq i8* %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, i8* %366, i64 1023
  store i8 0, i8* %369, align 1, !tbaa !35
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i8* [ %369, %368 ], [ null, %365 ]
  %372 = tail call i8* @halide_string_to_string(i8* %366, i8* %371, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %373 = tail call i8* @halide_string_to_string(i8* %372, i8* %371, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@", i64 0, i64 0)) #8
  %374 = tail call i8* @halide_string_to_string(i8* %373, i8* %371, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %367, label %375, label %376

375:                                              ; preds = %370
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %363, i8** bitcast (i32 (i64, i8*, i64)** @"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_KPEBXK@ZEA" to i8**), align 8, !tbaa !36
  %384 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@", i64 0, i64 0)) #8
  %385 = icmp eq i8* %384, null
  br i1 %385, label %386, label %404

386:                                              ; preds = %383
  %387 = tail call i8* @malloc(i64 1024) #8
  %388 = icmp eq i8* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8, i8* %387, i64 1023
  store i8 0, i8* %390, align 1, !tbaa !35
  br label %391

391:                                              ; preds = %389, %386
  %392 = phi i8* [ %390, %389 ], [ null, %386 ]
  %393 = tail call i8* @halide_string_to_string(i8* %387, i8* %392, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %394 = tail call i8* @halide_string_to_string(i8* %393, i8* %392, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@", i64 0, i64 0)) #8
  %395 = tail call i8* @halide_string_to_string(i8* %394, i8* %392, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %388, label %396, label %397

396:                                              ; preds = %391
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %384, i8** bitcast (i32 (i8*, i64, i64)** @"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAX_KK@ZEA" to i8**), align 8, !tbaa !36
  %405 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@", i64 0, i64 0)) #8
  %406 = icmp eq i8* %405, null
  br i1 %406, label %407, label %425

407:                                              ; preds = %404
  %408 = tail call i8* @malloc(i64 1024) #8
  %409 = icmp eq i8* %408, null
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  %411 = getelementptr inbounds i8, i8* %408, i64 1023
  store i8 0, i8* %411, align 1, !tbaa !35
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi i8* [ %411, %410 ], [ null, %407 ]
  %414 = tail call i8* @halide_string_to_string(i8* %408, i8* %413, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %415 = tail call i8* @halide_string_to_string(i8* %414, i8* %413, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@", i64 0, i64 0)) #8
  %416 = tail call i8* @halide_string_to_string(i8* %415, i8* %413, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %409, label %417, label %418

417:                                              ; preds = %412
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %405, i8** bitcast (i32 (i64, i64, i64)** @"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K0K@ZEA" to i8**), align 8, !tbaa !36
  %426 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@", i64 0, i64 0)) #8
  %427 = icmp eq i8* %426, null
  br i1 %427, label %428, label %446

428:                                              ; preds = %425
  %429 = tail call i8* @malloc(i64 1024) #8
  %430 = icmp eq i8* %429, null
  br i1 %430, label %433, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds i8, i8* %429, i64 1023
  store i8 0, i8* %432, align 1, !tbaa !35
  br label %433

433:                                              ; preds = %431, %428
  %434 = phi i8* [ %432, %431 ], [ null, %428 ]
  %435 = tail call i8* @halide_string_to_string(i8* %429, i8* %434, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %436 = tail call i8* @halide_string_to_string(i8* %435, i8* %434, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@", i64 0, i64 0)) #8
  %437 = tail call i8* @halide_string_to_string(i8* %436, i8* %434, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %430, label %438, label %439

438:                                              ; preds = %433
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %426, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)** @"?cuMemcpy3D@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEBUCUDA_MEMCPY3D_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  %447 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@", i64 0, i64 0)) #8
  %448 = icmp eq i8* %447, null
  br i1 %448, label %449, label %467

449:                                              ; preds = %446
  %450 = tail call i8* @malloc(i64 1024) #8
  %451 = icmp eq i8* %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds i8, i8* %450, i64 1023
  store i8 0, i8* %453, align 1, !tbaa !35
  br label %454

454:                                              ; preds = %452, %449
  %455 = phi i8* [ %453, %452 ], [ null, %449 ]
  %456 = tail call i8* @halide_string_to_string(i8* %450, i8* %455, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %457 = tail call i8* @halide_string_to_string(i8* %456, i8* %455, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@", i64 0, i64 0)) #8
  %458 = tail call i8* @halide_string_to_string(i8* %457, i8* %455, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %451, label %459, label %460

459:                                              ; preds = %454
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %447, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUfunc_st@1234@IIIIIIIPEAUCUstream_st@1234@PEAPEAX2@ZEA" to i8**), align 8, !tbaa !36
  %468 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@", i64 0, i64 0)) #8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %488

470:                                              ; preds = %467
  %471 = tail call i8* @malloc(i64 1024) #8
  %472 = icmp eq i8* %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, i8* %471, i64 1023
  store i8 0, i8* %474, align 1, !tbaa !35
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i8* [ %474, %473 ], [ null, %470 ]
  %477 = tail call i8* @halide_string_to_string(i8* %471, i8* %476, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %478 = tail call i8* @halide_string_to_string(i8* %477, i8* %476, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@", i64 0, i64 0)) #8
  %479 = tail call i8* @halide_string_to_string(i8* %478, i8* %476, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %472, label %480, label %481

480:                                              ; preds = %475
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %468, i8** bitcast (i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA" to i8**), align 8, !tbaa !36
  %489 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@", i64 0, i64 0)) #8
  %490 = icmp eq i8* %489, null
  br i1 %490, label %491, label %509

491:                                              ; preds = %488
  %492 = tail call i8* @malloc(i64 1024) #8
  %493 = icmp eq i8* %492, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %491
  %495 = getelementptr inbounds i8, i8* %492, i64 1023
  store i8 0, i8* %495, align 1, !tbaa !35
  br label %496

496:                                              ; preds = %494, %491
  %497 = phi i8* [ %495, %494 ], [ null, %491 ]
  %498 = tail call i8* @halide_string_to_string(i8* %492, i8* %497, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %499 = tail call i8* @halide_string_to_string(i8* %498, i8* %497, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@", i64 0, i64 0)) #8
  %500 = tail call i8* @halide_string_to_string(i8* %499, i8* %497, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %493, label %501, label %502

501:                                              ; preds = %496
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %489, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  %510 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@", i64 0, i64 0)) #8
  %511 = icmp eq i8* %510, null
  br i1 %511, label %512, label %530

512:                                              ; preds = %509
  %513 = tail call i8* @malloc(i64 1024) #8
  %514 = icmp eq i8* %513, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %512
  %516 = getelementptr inbounds i8, i8* %513, i64 1023
  store i8 0, i8* %516, align 1, !tbaa !35
  br label %517

517:                                              ; preds = %515, %512
  %518 = phi i8* [ %516, %515 ], [ null, %512 ]
  %519 = tail call i8* @halide_string_to_string(i8* %513, i8* %518, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %520 = tail call i8* @halide_string_to_string(i8* %519, i8* %518, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@", i64 0, i64 0)) #8
  %521 = tail call i8* @halide_string_to_string(i8* %520, i8* %518, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %514, label %522, label %523

522:                                              ; preds = %517
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %510, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  %531 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@", i64 0, i64 0)) #8
  %532 = icmp eq i8* %531, null
  br i1 %532, label %533, label %551

533:                                              ; preds = %530
  %534 = tail call i8* @malloc(i64 1024) #8
  %535 = icmp eq i8* %534, null
  br i1 %535, label %538, label %536

536:                                              ; preds = %533
  %537 = getelementptr inbounds i8, i8* %534, i64 1023
  store i8 0, i8* %537, align 1, !tbaa !35
  br label %538

538:                                              ; preds = %536, %533
  %539 = phi i8* [ %537, %536 ], [ null, %533 ]
  %540 = tail call i8* @halide_string_to_string(i8* %534, i8* %539, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #8
  %541 = tail call i8* @halide_string_to_string(i8* %540, i8* %539, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@", i64 0, i64 0)) #8
  %542 = tail call i8* @halide_string_to_string(i8* %541, i8* %539, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %535, label %543, label %544

543:                                              ; preds = %538
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store i8* %531, i8** bitcast (i32 (i8*, i32, i64)** @"?cuPointerGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAXH_K@ZEA" to i8**), align 8, !tbaa !36
  %552 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@OKHEPNII@cuStreamSynchronize?$AA@", i64 0, i64 0)) #8
  store i8* %552, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA" to i8**), align 8, !tbaa !36
  ret void
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?lib_cuda_lock@Cuda@Internal@Runtime@Halide@@3DC", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @"?load_libcuda@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #9
  br label %9

9:                                                ; preds = %8, %5
  store atomic volatile i8 0, i8* @"?lib_cuda_lock@Cuda@Internal@Runtime@Halide@@3DC" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i1 zeroext %2) local_unnamed_addr #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %5 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@PKPCLCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  %10 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  br i1 %2, label %13, label %12

12:                                               ; preds = %11
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !36
  br label %27

13:                                               ; preds = %11
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !36
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @"?create_cuda_context@Cuda@Internal@Runtime@Halide@@YA?AW4CUresult@1234@PEAXPEAPEAUCUctx_st@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !36
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %20, %19 ], [ %14, %13 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %22, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 8, !tbaa !36
  br label %25

24:                                               ; preds = %16
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  br label %27

25:                                               ; preds = %21, %7
  %26 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %23, %21 ], [ %9, %7 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !36
  br label %27

27:                                               ; preds = %24, %25, %12
  %28 = phi i32 [ 0, %25 ], [ %17, %24 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  ret i32 %28
}

; Function Attrs: nounwind
define weak dso_local i32 @"?create_cuda_context@Cuda@Internal@Runtime@Halide@@YA?AW4CUresult@1234@PEAXPEAPEAUCUctx_st@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = alloca i32, align 4
  %10 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  tail call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #9
  %12 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %13 = icmp eq i32 (i32)* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = tail call i8* @malloc(i64 1024) #8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@", i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %15, i64 1023
  store i8 0, i8* %20, align 1, !tbaa !35
  %21 = tail call i8* @halide_string_to_string(i8* nonnull %15, i8* nonnull %20, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@", i64 0, i64 0)) #8
  %22 = ptrtoint i8* %21 to i64
  %23 = ptrtoint i8* %15 to i64
  %24 = add i64 %22, 1
  %25 = sub i64 %24, %23
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %15, i64 %25) #8
  tail call void @halide_error(i8* %0, i8* nonnull %15) #8
  br label %27

27:                                               ; preds = %19, %17
  tail call void @free(i8* %15) #8
  br label %246

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
  store i8 0, i8* %35, align 1, !tbaa !35
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i8* [ %35, %34 ], [ null, %31 ]
  %38 = tail call i8* @halide_string_to_string(i8* %32, i8* %37, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@LJMBJJGG@CUDA?3?5cuInit?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %39 = tail call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %29) #9
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %45

43:                                               ; preds = %36
  %44 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* nonnull %39) #8
  br label %45

45:                                               ; preds = %41, %43
  %46 = phi i8* [ %44, %43 ], [ %42, %41 ]
  br i1 %33, label %47, label %48

47:                                               ; preds = %45
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  br label %246

55:                                               ; preds = %28
  %56 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #10
  store i32 0, i32* %3, align 4, !tbaa !38
  %57 = load i32 (i32*)*, i32 (i32*)** @"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA", align 8, !tbaa !36
  %58 = call i32 %57(i32* nonnull %3) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %55
  %61 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %61) #10
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %62, align 8, !tbaa !39
  %63 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %63, align 8, !tbaa !42
  %64 = call i8* @malloc(i64 1024) #8
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %64, i8** %65, align 8, !tbaa !43
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %64, i8** %66, align 8, !tbaa !44
  %67 = icmp eq i8* %64, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds i8, i8* %64, i64 1023
  store i8 0, i8* %69, align 1, !tbaa !35
  br label %70

70:                                               ; preds = %60, %68
  %71 = phi i8* [ %69, %68 ], [ null, %60 ]
  %72 = call i8* @halide_string_to_string(i8* %64, i8* %71, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HDKFNAIB@CUDA?3?5cuGetDeviceCount?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %73 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %58) #9
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i8* @halide_string_to_string(i8* %72, i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %79

77:                                               ; preds = %70
  %78 = call i8* @halide_string_to_string(i8* %72, i8* %71, i8* nonnull %73) #8
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i8* [ %78, %77 ], [ %76, %75 ]
  %81 = load i8*, i8** %65, align 8, !tbaa !43
  %82 = icmp eq i8* %81, null
  %83 = load i8*, i8** %62, align 8, !tbaa !39
  br i1 %82, label %84, label %85

84:                                               ; preds = %79
  call void @halide_error(i8* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %93

85:                                               ; preds = %79
  %86 = ptrtoint i8* %80 to i64
  %87 = ptrtoint i8* %81 to i64
  %88 = sub i64 1, %87
  %89 = add i64 %88, %86
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %83, i8* nonnull %81, i64 %89) #8
  %91 = load i8*, i8** %65, align 8, !tbaa !43
  %92 = load i8*, i8** %62, align 8, !tbaa !39
  call void @halide_error(i8* %92, i8* %91) #8
  br label %93

93:                                               ; preds = %85, %84
  %94 = load i8, i8* %63, align 8, !tbaa !42, !range !45
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %65, align 8, !tbaa !43
  call void @free(i8* %97) #8
  br label %98

98:                                               ; preds = %93, %96
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %61) #10
  br label %244

99:                                               ; preds = %55
  %100 = load i32, i32* %3, align 4, !tbaa !38
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@MNIIBKJA@CUDA?3?5No?5devices?5available?$AA@", i64 0, i64 0)) #8
  br label %244

103:                                              ; preds = %99
  %104 = call i32 @halide_get_gpu_device(i8* %0) #8
  %105 = icmp eq i32 %104, -1
  %106 = load i32, i32* %3, align 4
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %105, %107
  %109 = xor i1 %105, true
  %110 = or i1 %107, %109
  %111 = select i1 %108, i32 0, i32 %104
  br i1 %110, label %141, label %112

112:                                              ; preds = %103
  %113 = icmp sgt i32 %106, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %112
  %115 = bitcast i32* %5 to i8*
  %116 = bitcast i32* %6 to i8*
  br label %117

117:                                              ; preds = %114, %135
  %118 = phi i32 [ 0, %114 ], [ %138, %135 ]
  %119 = phi i32 [ 0, %114 ], [ %137, %135 ]
  %120 = phi i32 [ -1, %114 ], [ %136, %135 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #10
  %121 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHH@ZEA", align 8, !tbaa !36
  %122 = call i32 %121(i32* nonnull %5, i32 %118) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %116) #10
  store i32 0, i32* %6, align 4, !tbaa !38
  %125 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHW4CUdevice_attribute@1234@H@ZEA", align 8, !tbaa !36
  %126 = load i32, i32* %5, align 4, !tbaa !38
  %127 = call i32 %125(i32* nonnull %6, i32 16, i32 %126) #8
  %128 = icmp eq i32 %127, 0
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, %119
  %131 = select i1 %130, i32 %120, i32 %118
  %132 = select i1 %130, i32 %119, i32 %129
  %133 = select i1 %128, i32 %131, i32 %120
  %134 = select i1 %128, i32 %132, i32 %119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %116) #10
  br label %135

135:                                              ; preds = %117, %124
  %136 = phi i32 [ %133, %124 ], [ %120, %117 ]
  %137 = phi i32 [ %134, %124 ], [ %119, %117 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #10
  %138 = add nuw nsw i32 %118, 1
  %139 = load i32, i32* %3, align 4, !tbaa !38
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %117, label %141, !llvm.loop !46

141:                                              ; preds = %135, %112, %103
  %142 = phi i32 [ %111, %103 ], [ -1, %112 ], [ %136, %135 ]
  %143 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %143) #10
  %144 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHH@ZEA", align 8, !tbaa !36
  %145 = call i32 %144(i32* nonnull %7, i32 %142) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@CLPLMAAO@CUDA?3?5Failed?5to?5get?5device?6?$AA@", i64 0, i64 0)) #8
  br label %242

148:                                              ; preds = %141
  %149 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@IH@ZEA", align 8, !tbaa !36
  %150 = load i32, i32* %7, align 4, !tbaa !38
  %151 = call i32 %149(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i32 0, i32 %150) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %193, label %153

153:                                              ; preds = %148
  %154 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %151) #9
  %155 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %155) #10
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %156, align 8, !tbaa !39
  %157 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %157, align 8, !tbaa !42
  %158 = call i8* @malloc(i64 1024) #8
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %158, i8** %159, align 8, !tbaa !43
  %160 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %158, i8** %160, align 8, !tbaa !44
  %161 = icmp eq i8* %158, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = getelementptr inbounds i8, i8* %158, i64 1023
  store i8 0, i8* %163, align 1, !tbaa !35
  br label %164

164:                                              ; preds = %153, %162
  %165 = phi i8* [ %163, %162 ], [ null, %153 ]
  %166 = call i8* @halide_string_to_string(i8* %158, i8* %165, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@LEJDCCBF@CUDA?3?5cuCtxCreate?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %167 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %151) #9
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i8* @halide_string_to_string(i8* %166, i8* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %173

171:                                              ; preds = %164
  %172 = call i8* @halide_string_to_string(i8* %166, i8* %165, i8* nonnull %167) #8
  br label %173

173:                                              ; preds = %169, %171
  %174 = phi i8* [ %172, %171 ], [ %170, %169 ]
  %175 = load i8*, i8** %159, align 8, !tbaa !43
  %176 = icmp eq i8* %175, null
  %177 = load i8*, i8** %156, align 8, !tbaa !39
  br i1 %176, label %178, label %179

178:                                              ; preds = %173
  call void @halide_error(i8* %177, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %187

179:                                              ; preds = %173
  %180 = ptrtoint i8* %174 to i64
  %181 = ptrtoint i8* %175 to i64
  %182 = sub i64 1, %181
  %183 = add i64 %182, %180
  %184 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %177, i8* nonnull %175, i64 %183) #8
  %185 = load i8*, i8** %159, align 8, !tbaa !43
  %186 = load i8*, i8** %156, align 8, !tbaa !39
  call void @halide_error(i8* %186, i8* %185) #8
  br label %187

187:                                              ; preds = %179, %178
  %188 = load i8, i8* %157, align 8, !tbaa !42, !range !45
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load i8*, i8** %159, align 8, !tbaa !43
  call void @free(i8* %191) #8
  br label %192

192:                                              ; preds = %187, %190
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %155) #10
  br label %242

193:                                              ; preds = %148
  %194 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %194) #10
  store i32 0, i32* %9, align 4, !tbaa !38
  %195 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@PEAI@ZEA", align 8, !tbaa !36
  %196 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 8, !tbaa !36
  %197 = call i32 %195(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %196, i32* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %194) #10
  %198 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %198) #10
  %199 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %200 = call i32 %199(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10) #8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %241, label %202

202:                                              ; preds = %193
  %203 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %203) #10
  %204 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %204, align 8, !tbaa !39
  %205 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %205, align 8, !tbaa !42
  %206 = call i8* @malloc(i64 1024) #8
  %207 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %206, i8** %207, align 8, !tbaa !43
  %208 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %206, i8** %208, align 8, !tbaa !44
  %209 = icmp eq i8* %206, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds i8, i8* %206, i64 1023
  store i8 0, i8* %211, align 1, !tbaa !35
  br label %212

212:                                              ; preds = %202, %210
  %213 = phi i8* [ %211, %210 ], [ null, %202 ]
  %214 = call i8* @halide_string_to_string(i8* %206, i8* %213, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@EKFOANMP@CUDA?3?5cuCtxPopCurrent?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %215 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %200) #9
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i8* @halide_string_to_string(i8* %214, i8* %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %221

219:                                              ; preds = %212
  %220 = call i8* @halide_string_to_string(i8* %214, i8* %213, i8* nonnull %215) #8
  br label %221

221:                                              ; preds = %217, %219
  %222 = phi i8* [ %220, %219 ], [ %218, %217 ]
  %223 = load i8*, i8** %207, align 8, !tbaa !43
  %224 = icmp eq i8* %223, null
  %225 = load i8*, i8** %204, align 8, !tbaa !39
  br i1 %224, label %226, label %227

226:                                              ; preds = %221
  call void @halide_error(i8* %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %235

227:                                              ; preds = %221
  %228 = ptrtoint i8* %222 to i64
  %229 = ptrtoint i8* %223 to i64
  %230 = sub i64 1, %229
  %231 = add i64 %230, %228
  %232 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %225, i8* nonnull %223, i64 %231) #8
  %233 = load i8*, i8** %207, align 8, !tbaa !43
  %234 = load i8*, i8** %204, align 8, !tbaa !39
  call void @halide_error(i8* %234, i8* %233) #8
  br label %235

235:                                              ; preds = %227, %226
  %236 = load i8, i8* %205, align 8, !tbaa !42, !range !45
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = load i8*, i8** %207, align 8, !tbaa !43
  call void @free(i8* %239) #8
  br label %240

240:                                              ; preds = %235, %238
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %203) #10
  br label %241

241:                                              ; preds = %193, %240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %198) #10
  br label %242

242:                                              ; preds = %241, %192, %147
  %243 = phi i32 [ %145, %147 ], [ %151, %192 ], [ %200, %241 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %143) #10
  br label %244

244:                                              ; preds = %242, %102, %98
  %245 = phi i32 [ %58, %98 ], [ 100, %102 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #10
  br label %246

246:                                              ; preds = %54, %244, %27
  %247 = phi i32 [ 301, %27 ], [ %29, %54 ], [ %245, %244 ]
  ret i32 %247
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_release_context(i8* %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %1, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2) local_unnamed_addr #5 {
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %0) local_unnamed_addr #4 {
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
  store i8 0, i8* %60, align 1, !tbaa !35
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GFJJBJ@Unknown?5cuda?5error?5?$AA@", i64 0, i64 0)) #8
  %64 = sext i32 %0 to i64
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #8
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %58, label %67, label %68

67:                                               ; preds = %61
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  %76 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i64 0, i64 0), %74 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KJNCAEGL@CUDA_ERROR_UNKNOWN?$AA@", i64 0, i64 0), %55 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@GLNJADKF@CUDA_ERROR_NOT_SUPPORTED?$AA@", i64 0, i64 0), %54 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@DBBLBGBJ@CUDA_ERROR_NOT_PERMITTED?$AA@", i64 0, i64 0), %53 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@JLBELLNJ@CUDA_ERROR_LAUNCH_FAILED?$AA@", i64 0, i64 0), %52 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@OHCPPEH@CUDA_ERROR_INVALID_PC?$AA@", i64 0, i64 0), %51 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BDJJMPAO@CUDA_ERROR_INVALID_ADDRESS_SPACE@", i64 0, i64 0), %50 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@NOHCDJNG@CUDA_ERROR_MISALIGNED_ADDRESS?$AA@", i64 0, i64 0), %49 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @"??_C@_0DO@LEIEFPOK@Illegal?5instruction?5or?5Halide?5as@", i64 0, i64 0), %48 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@IGBMDCNL@CUDA_ERROR_CONTEXT_IS_DESTROYED?$AA@", i64 0, i64 0), %47 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@ILPMDNJB@CUDA_ERROR_PRIMARY_CONTEXT_ACTIV@", i64 0, i64 0), %46 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@BNCBHFPB@CUDA_ERROR_PEER_ACCESS_NOT_ENABL@", i64 0, i64 0), %45 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @"??_C@_0CH@LOBLNEGP@CUDA_ERROR_PEER_ACCESS_ALREADY_E@", i64 0, i64 0), %44 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @"??_C@_0CJ@IHGKNJOE@CUDA_ERROR_LAUNCH_INCOMPATIBLE_T@", i64 0, i64 0), %43 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@MIOKJHOO@CUDA_ERROR_LAUNCH_TIMEOUT?$AA@", i64 0, i64 0), %42 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IAMOGGLH@CUDA_ERROR_LAUNCH_OUT_OF_RESOURC@", i64 0, i64 0), %41 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@JBGMGMM@CUDA_ERROR_ILLEGAL_ADDRESS?$AA@", i64 0, i64 0), %40 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@MMICADPG@CUDA_ERROR_NOT_READY?$AA@", i64 0, i64 0), %39 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@DDPFHCNI@CUDA_ERROR_NOT_FOUND?$AA@", i64 0, i64 0), %38 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@FMCIPHBO@CUDA_ERROR_INVALID_HANDLE?$AA@", i64 0, i64 0), %37 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@DJPMPCAA@CUDA_ERROR_OPERATING_SYSTEM?$AA@", i64 0, i64 0), %36 ], [ getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@JKMNCLJG@CUDA_ERROR_SHARED_OBJECT_INIT_FA@", i64 0, i64 0), %35 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @"??_C@_0CK@KMEKIDID@CUDA_ERROR_SHARED_OBJECT_SYMBOL_@", i64 0, i64 0), %34 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@JKOCDAGF@CUDA_ERROR_FILE_NOT_FOUND?$AA@", i64 0, i64 0), %33 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@GKOFLHLH@CUDA_ERROR_INVALID_SOURCE?$AA@", i64 0, i64 0), %32 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@KDCOPDAG@CUDA_ERROR_JIT_COMPILER_NOT_FOUN@", i64 0, i64 0), %31 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@DEDHGBPA@CUDA_ERROR_NVLINK_UNCORRECTABLE?$AA@", i64 0, i64 0), %30 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@KPBOEKLA@CUDA_ERROR_INVALID_GRAPHICS_CONT@", i64 0, i64 0), %29 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IDLNMEGF@CUDA_ERROR_INVALID_PTX?$AA@", i64 0, i64 0), %28 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@BKCKCDHK@CUDA_ERROR_PEER_ACCESS_UNSUPPORT@", i64 0, i64 0), %27 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@MKNOCLLI@CUDA_ERROR_CONTEXT_ALREADY_IN_US@", i64 0, i64 0), %26 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KCELBMJM@CUDA_ERROR_UNSUPPORTED_LIMIT?$AA@", i64 0, i64 0), %25 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@MOLLDDBF@CUDA_ERROR_ECC_UNCORRECTABLE?$AA@", i64 0, i64 0), %24 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@KGAEMLBJ@CUDA_ERROR_NOT_MAPPED_AS_POINTER@", i64 0, i64 0), %23 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@EOHNHEJJ@CUDA_ERROR_NOT_MAPPED_AS_ARRAY?$AA@", i64 0, i64 0), %22 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@FNMHNFPE@CUDA_ERROR_NOT_MAPPED?$AA@", i64 0, i64 0), %21 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@OJOJMFNC@CUDA_ERROR_ALREADY_ACQUIRED?$AA@", i64 0, i64 0), %20 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@LLCKJBJD@CUDA_ERROR_NO_BINARY_FOR_GPU?$AA@", i64 0, i64 0), %19 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@JGMMABAO@CUDA_ERROR_ALREADY_MAPPED?$AA@", i64 0, i64 0), %18 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@LHLGMFM@CUDA_ERROR_ARRAY_IS_MAPPED?$AA@", i64 0, i64 0), %17 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@LIOELPBH@CUDA_ERROR_UNMAP_FAILED?$AA@", i64 0, i64 0), %16 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@PCDIJLGE@CUDA_ERROR_MAP_FAILED?$AA@", i64 0, i64 0), %15 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@JICHIBFF@CUDA_ERROR_CONTEXT_ALREADY_CURRE@", i64 0, i64 0), %14 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@CAMHACOE@CUDA_ERROR_INVALID_CONTEXT?$AA@", i64 0, i64 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@BIGAIEEG@CUDA_ERROR_INVALID_IMAGE?$AA@", i64 0, i64 0), %12 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@KJLPJMNP@CUDA_ERROR_INVALID_DEVICE?$AA@", i64 0, i64 0), %11 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@OLCOGLNC@CUDA_ERROR_NO_DEVICE?$AA@", i64 0, i64 0), %10 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@IFNKMKIN@CUDA_ERROR_PROFILER_ALREADY_STOP@", i64 0, i64 0), %9 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@EKHCGPMK@CUDA_ERROR_PROFILER_ALREADY_STAR@", i64 0, i64 0), %8 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@HBMLIEHI@CUDA_ERROR_PROFILER_NOT_INITIALI@", i64 0, i64 0), %7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@FPJIJONF@CUDA_ERROR_PROFILER_DISABLED?$AA@", i64 0, i64 0), %6 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@IKKPFDBH@CUDA_ERROR_DEINITIALIZED?$AA@", i64 0, i64 0), %5 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@EPHIMIFG@CUDA_ERROR_NOT_INITIALIZED?$AA@", i64 0, i64 0), %4 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@CNEOPIBN@CUDA_ERROR_OUT_OF_MEMORY?$AA@", i64 0, i64 0), %3 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@MCNIHGMK@CUDA_ERROR_INVALID_VALUE?$AA@", i64 0, i64 0), %2 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IBGLLPEP@CUDA_SUCCESS?$AA@", i64 0, i64 0), %1 ]
  ret i8* %76
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #5 {
  ret i1 true
}

; Function Attrs: nounwind
define weak dso_local %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* @"?compile_kernel@Cuda@Internal@Runtime@Halide@@YAPEAUCUmod_st@1234@PEAXPEBDH@Z"(i8* %0, i8* %1, i32 %2) #4 {
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i8*], align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = bitcast [1 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %9, align 4
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DMLOHDHC@HL_CUDA_JIT_MAX_REGISTERS?$AA@", i64 0, i64 0)) #8
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
  store i8* %17, i8** %19, align 8, !tbaa !36
  %20 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #10
  %21 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUmod_st@1234@PEBXIPEAW4CUjit_option_enum@1234@PEAPEAX@ZEA", align 8, !tbaa !36
  %22 = call i32 %21(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull %6, i8* %1, i32 1, i32* nonnull %9, i8** nonnull %19) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %16
  %25 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #10
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %26, align 8, !tbaa !39
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %27, align 8, !tbaa !42
  %28 = call i8* @malloc(i64 1024) #8
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %28, i8** %29, align 8, !tbaa !43
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %28, i8** %30, align 8, !tbaa !44
  %31 = icmp eq i8* %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %28, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !35
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i8* [ %33, %32 ], [ null, %24 ]
  %36 = call i8* @halide_string_to_string(i8* %28, i8* %35, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@BDCIDAKL@CUDA?3?5cuModuleLoadData?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %37 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %22) #9
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i8* @halide_string_to_string(i8* %36, i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %43

41:                                               ; preds = %34
  %42 = call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull %37) #8
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i8* [ %42, %41 ], [ %40, %39 ]
  %45 = load i8*, i8** %29, align 8, !tbaa !43
  %46 = icmp eq i8* %45, null
  %47 = load i8*, i8** %26, align 8, !tbaa !39
  br i1 %46, label %48, label %49

48:                                               ; preds = %43
  call void @halide_error(i8* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %57

49:                                               ; preds = %43
  %50 = ptrtoint i8* %44 to i64
  %51 = ptrtoint i8* %45 to i64
  %52 = sub i64 1, %51
  %53 = add i64 %52, %50
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %47, i8* nonnull %45, i64 %53) #8
  %55 = load i8*, i8** %29, align 8, !tbaa !43
  %56 = load i8*, i8** %26, align 8, !tbaa !39
  call void @halide_error(i8* %56, i8* %55) #8
  br label %57

57:                                               ; preds = %49, %48
  %58 = load i8, i8* %27, align 8, !tbaa !42, !range !45
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %29, align 8, !tbaa !43
  call void @free(i8* %61) #8
  br label %62

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #10
  br label %65

63:                                               ; preds = %16
  %64 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6, align 8, !tbaa !36
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ null, %62 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %66
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare dso_local i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %7 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 8
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 0
  store i8* %0, i8** %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !50
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 8, !tbaa !50
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 8, !tbaa !50
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  %29 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %30 = call zeroext i1 @"??$kernel_state_setup@P6APEAUCUmod_st@Cuda@Internal@Runtime@Halide@@PEAXPEBDH@ZPEAXPEBDH@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUCUctx_st@Cuda@1Runtime@2@AEAPEAUCUmod_st@4152@P6APEAU64152@0PEBDH@Z04H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i8* %0, i8** %1, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %29, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 8 dereferenceable(8) %7, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* nonnull @"?compile_kernel@Cuda@Internal@Runtime@Halide@@YAPEAUCUmod_st@1234@PEAXPEBDH@Z", i8* %0, i8* %2, i32 %3) #9
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7, align 8, !tbaa !36
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@BOIHBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %35

35:                                               ; preds = %27, %34, %31
  %36 = phi i32 [ -1, %27 ], [ 0, %34 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  %37 = load i32, i32* %11, align 8, !tbaa !50
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #10
  %41 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %42 = call i32 %41(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10
  br label %43

43:                                               ; preds = %4, %22, %35, %39
  %44 = phi i32 [ %36, %35 ], [ %36, %39 ], [ %25, %22 ], [ %12, %4 ]
  %45 = load i8*, i8** %9, align 8, !tbaa !47
  %46 = call i32 @halide_cuda_release_context(i8* %45) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret i32 %44
}

; Function Attrs: nounwind
define linkonce_odr dso_local zeroext i1 @"??$kernel_state_setup@P6APEAUCUmod_st@Cuda@Internal@Runtime@Halide@@PEAXPEBDH@ZPEAXPEBDH@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUCUctx_st@Cuda@1Runtime@2@AEAPEAUCUmod_st@4152@P6APEAU64152@0PEBDH@Z04H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 8 dereferenceable(8) %4, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* %5, i8* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", align 8
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !38
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !51
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !51
  store i32 %17, i32* %12, align 4, !tbaa !38
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8, !tbaa !54
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
  %38 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %37, align 8, !tbaa !55
  %39 = sext i32 %32 to i64
  %40 = icmp sgt i32 %32, 1
  %41 = select i1 %40, i32 %32, i32 1
  %42 = zext i32 %41 to i64
  br label %46

43:                                               ; preds = %54
  %44 = icmp slt i64 %60, %39
  %45 = icmp eq i64 %60, %42
  br i1 %45, label %68, label %46, !llvm.loop !56

46:                                               ; preds = %43, %34
  %47 = phi i64 [ 0, %34 ], [ %60, %43 ]
  %48 = phi i1 [ true, %34 ], [ %44, %43 ]
  %49 = add i64 %47, %31
  %50 = and i64 %49, %36
  %51 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 2
  %52 = load i32, i32* %51, align 8, !tbaa !57
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 0
  %56 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %55, align 8, !tbaa !59
  %57 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %56, %3
  %58 = icmp eq i32 %52, %20
  %59 = and i1 %58, %57
  %60 = add nuw nsw i64 %47, 1
  br i1 %59, label %61, label %43

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 3
  %63 = load i32, i32* %62, align 4, !tbaa !60
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4, !tbaa !60
  br i1 %48, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %38, i64 %50, i32 1
  %67 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %66, align 8, !tbaa !36
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %67, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 8, !tbaa !36
  br label %80

68:                                               ; preds = %46, %43, %24, %19, %61
  %69 = tail call %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %5(i8* %6, i8* %7, i32 %8) #8
  %70 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %72) #10
  %73 = load i32, i32* %12, align 4, !tbaa !38
  %74 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %74, align 8, !tbaa !59
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %75, align 8, !tbaa !61
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 2
  store i32 %73, i32* %76, align 8, !tbaa !57
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i64 0, i32 3
  store i32 1, i32* %77, align 4, !tbaa !60
  %78 = call zeroext i1 @"?insert@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %72) #10
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %69, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 8, !tbaa !36
  br label %80

80:                                               ; preds = %79, %68, %71, %65
  %81 = phi i1 [ true, %65 ], [ true, %79 ], [ false, %68 ], [ false, %71 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %81
}

; Function Attrs: nounwind
define weak dso_local void @halide_cuda_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #10
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %8, align 8, !tbaa !50
  %9 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %7, i1 zeroext true) #8
  store i32 %9, i32* %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %77

11:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %12 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !49
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %17 = icmp eq i32 (i32)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %21 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !49
  %22 = call i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %21) #8
  store i32 %22, i32* %8, align 8, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 8, !tbaa !49
  %26 = ptrtoint i8* %1 to i64
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 1), align 8, !tbaa !54
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
  %43 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 2), align 8, !tbaa !55
  %44 = sext i32 %38 to i64
  %45 = icmp sgt i32 %38, 1
  %46 = select i1 %45, i32 %38, i32 1
  %47 = zext i32 %46 to i64
  br label %51

48:                                               ; preds = %59
  %49 = icmp slt i64 %65, %44
  %50 = icmp eq i64 %65, %47
  br i1 %50, label %70, label %51, !llvm.loop !56

51:                                               ; preds = %48, %40
  %52 = phi i64 [ 0, %40 ], [ %65, %48 ]
  %53 = phi i1 [ true, %40 ], [ %49, %48 ]
  %54 = add i64 %52, %37
  %55 = and i64 %54, %42
  %56 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 2
  %57 = load i32, i32* %56, align 8, !tbaa !57
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 0
  %61 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %60, align 8, !tbaa !59
  %62 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %61, %25
  %63 = icmp eq i32 %57, %27
  %64 = and i1 %63, %62
  %65 = add nuw nsw i64 %52, 1
  br i1 %64, label %66, label %48

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %43, i64 %55, i32 3
  %68 = load i32, i32* %67, align 4, !tbaa !60
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 4, !tbaa !60
  br i1 %53, label %73, label %70

70:                                               ; preds = %48, %51, %24, %30, %66
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  %71 = load i32, i32* %8, align 8, !tbaa !50
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66, %70
  %74 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #10
  %75 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %76 = call i32 %75(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #10
  br label %77

77:                                               ; preds = %2, %19, %70, %73
  %78 = load i8*, i8** %6, align 8, !tbaa !47
  %79 = call i32 @halide_cuda_release_context(i8* %78) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #10
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_release_unused_device_allocations(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %2 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA", align 8, !tbaa !36
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA", align 8, !tbaa !36
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %11, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i64 0, i32 0
  %7 = load i32 (i64)*, i32 (i64)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K@ZEA", align 8, !tbaa !36
  %8 = load i64, i64* %6, align 8, !tbaa !62
  %9 = tail call i32 %7(i64 %8) #8
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i64 0, i32 4
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %10, align 8, !tbaa !65
  %12 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5 to i8*
  tail call void @free(i8* nonnull %12) #8
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %11, null
  br i1 %13, label %14, label %4, !llvm.loop !66

14:                                               ; preds = %4, %1
  ret i32 0
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @register_cuda_allocation_pool() #0 {
  store i32 (i8*)* @halide_cuda_release_unused_device_allocations, i32 (i8*)** getelementptr inbounds (%struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* @cuda_allocation_pool, i64 0, i32 0), align 8, !tbaa !67
  tail call void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* nonnull @cuda_allocation_pool) #8
  ret void
}

declare dso_local void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !21
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %2
  %9 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #10
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %12, align 8, !tbaa !50
  %13 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %11, i1 zeroext true) #8
  store i32 %13, i32* %12, align 8, !tbaa !50
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %160

15:                                               ; preds = %8
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %16 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !49
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %21 = icmp eq i32 (i32)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %19, %22
  %24 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !49
  %26 = call i32 %24(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %25) #8
  store i32 %26, i32* %12, align 8, !tbaa !50
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %160

28:                                               ; preds = %23
  %29 = call zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #9
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@IHNFJCBJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %31

31:                                               ; preds = %30, %28
  %32 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %32, label %33, label %143

33:                                               ; preds = %31
  %34 = call i8* @malloc(i64 40) #8
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %11, align 8, !tbaa !49
  %36 = getelementptr inbounds i8, i8* %34, i64 8
  %37 = bitcast i8* %36 to %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %39 = load i32, i32* %38, align 4, !tbaa !23
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %43 = load i8, i8* %42, align 1, !tbaa !22
  br label %87

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %45, align 8, !tbaa !24
  %47 = zext i32 %39 to i64
  br label %48

48:                                               ; preds = %62, %44
  %49 = phi i64 [ 0, %44 ], [ %64, %62 ]
  %50 = phi i64 [ 0, %44 ], [ %63, %62 ]
  %51 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %49, i32 2
  %52 = load i32, i32* %51, align 4, !tbaa !25
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %49, i32 1
  %57 = load i32, i32* %56, align 4, !tbaa !30
  %58 = add nsw i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %55
  %61 = add nsw i64 %60, %50
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i64 [ %61, %54 ], [ %50, %48 ]
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, %47
  br i1 %65, label %66, label %48, !llvm.loop !70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %68 = load i8, i8* %67, align 1, !tbaa !22
  br label %69

69:                                               ; preds = %83, %66
  %70 = phi i64 [ 0, %66 ], [ %85, %83 ]
  %71 = phi i64 [ 0, %66 ], [ %84, %83 ]
  %72 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %70, i32 2
  %73 = load i32, i32* %72, align 4, !tbaa !25
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %70, i32 1
  %78 = load i32, i32* %77, align 4, !tbaa !30
  %79 = add nsw i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %76
  %82 = add nsw i64 %81, %71
  br label %83

83:                                               ; preds = %75, %69
  %84 = phi i64 [ %82, %75 ], [ %71, %69 ]
  %85 = add nuw nsw i64 %70, 1
  %86 = icmp eq i64 %85, %47
  br i1 %86, label %87, label %69, !llvm.loop !71

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
  %97 = call i64 @llvm.ctlz.i64(i64 %96, i1 true) #10, !range !72
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
  store i64 %108, i64* %110, align 8, !tbaa !73
  %111 = bitcast i8* %34 to i64*
  store i64 %6, i64* %111, align 8, !tbaa !62
  %112 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA", align 8, !tbaa !36
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
  store i8 0, i8* %123, align 1, !tbaa !35
  br label %124

124:                                              ; preds = %119, %122
  %125 = phi i8* [ %123, %122 ], [ null, %119 ]
  %126 = call i8* @halide_string_to_string(i8* %120, i8* %125, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@GIMBMKIF@CUDA?3?5In?5halide_cuda_device_free@", i64 0, i64 0)) #8
  %127 = sext i32 %117 to i64
  %128 = call i8* @halide_int64_to_string(i8* %126, i8* %125, i64 %127, i32 1) #8
  %129 = call i8* @halide_string_to_string(i8* %128, i8* %125, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %121, label %130, label %131

130:                                              ; preds = %124
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %115, align 8, !tbaa !74
  br label %139

139:                                              ; preds = %116, %137, %138
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %140 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA", align 8, !tbaa !36
  %141 = getelementptr inbounds i8, i8* %34, i64 32
  %142 = bitcast i8* %141 to %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"**
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %140, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %142, align 8, !tbaa !65
  store i8* %34, i8** bitcast (%"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA" to i8**), align 8, !tbaa !36
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  br label %146

143:                                              ; preds = %31
  %144 = load i32 (i64)*, i32 (i64)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K@ZEA", align 8, !tbaa !36
  %145 = call i32 %144(i64 %6) #8
  br label %146

146:                                              ; preds = %139, %143
  %147 = phi i32 [ 0, %139 ], [ %145, %143 ]
  %148 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %149 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %148, align 8, !tbaa !75
  %150 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %149, i64 0, i32 15
  %151 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %150, align 8, !tbaa !76
  %152 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %151, i64 0, i32 1
  %153 = load void ()*, void ()** %152, align 8, !tbaa !78
  call void %153() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %148, align 8, !tbaa !75
  store i64 0, i64* %5, align 8, !tbaa !21
  %154 = load i32, i32* %12, align 8, !tbaa !50
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %157) #10
  %158 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %159 = call i32 %158(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %157) #10
  br label %160

160:                                              ; preds = %8, %23, %146, %156
  %161 = phi i32 [ %147, %146 ], [ %147, %156 ], [ %26, %23 ], [ %13, %8 ]
  %162 = load i8*, i8** %10, align 8, !tbaa !47
  %163 = call i32 @halide_cuda_release_context(i8* %162) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #10
  br label %164

164:                                              ; preds = %2, %160
  %165 = phi i32 [ %161, %160 ], [ 0, %2 ]
  ret i32 %165
}

declare dso_local zeroext i1 @halide_can_reuse_device_allocations(i8*) local_unnamed_addr #2

declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_device_release(i8* %0) #4 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %5 = icmp eq i32 (i32)* %4, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %2, i1 zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !36
  %12 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %10
  %14 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %15 = call i32 %14(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* nonnull %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32 ()*, i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA", align 8, !tbaa !36
  %19 = call i32 %18() #8
  %20 = and i32 %19, -5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @"??_C@_0JC@MMDJCNJL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %13, %22, %17
  %24 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !36
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 0)) #8
  %26 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 3), align 8, !tbaa !80
  %27 = icmp eq i32 %26, 0
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 1), align 8
  %29 = icmp eq i32 %28, 31
  %30 = or i1 %27, %29
  br i1 %30, label %66, label %31

31:                                               ; preds = %23
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 2), align 8, !tbaa !55
  br label %33

33:                                               ; preds = %59, %31
  %34 = phi i32 [ %28, %31 ], [ %60, %59 ]
  %35 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %31 ], [ %61, %59 ]
  %36 = phi i64 [ 0, %31 ], [ %62, %59 ]
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 2
  %38 = load i32, i32* %37, align 8, !tbaa !57
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 0
  %42 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %41, align 8, !tbaa !59
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %42, %25
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 3
  %46 = load i32, i32* %45, align 4, !tbaa !60
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUmod_st@1234@@ZEA", align 8, !tbaa !36
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i64 %36, i32 1
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %50, align 8, !tbaa !61
  %52 = call i32 %49(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %51) #8
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 2), align 8, !tbaa !55
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i64 %36, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %54, align 8, !tbaa !61
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i64 %36, i32 2
  store i32 1, i32* %55, align 8, !tbaa !57
  %56 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 3), align 8, !tbaa !80
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 3), align 8, !tbaa !80
  %58 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 1), align 8, !tbaa !54
  br label %59

59:                                               ; preds = %48, %44, %40, %33
  %60 = phi i32 [ %34, %33 ], [ %34, %40 ], [ %34, %44 ], [ %58, %48 ]
  %61 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %35, %33 ], [ %35, %40 ], [ %35, %44 ], [ %53, %48 ]
  %62 = add nuw nsw i64 %36, 1
  %63 = shl nuw i32 1, %60
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %33, label %66, !llvm.loop !81

66:                                               ; preds = %59, %23
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 0)) #8
  %67 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #10
  %68 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %69 = call i32 %68(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %70 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 8, !tbaa !36
  %71 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32 ()*, i32 ()** @"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA", align 8, !tbaa !36
  %75 = call i32 %74() #8
  %76 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %77 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  %78 = call i32 %76(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %77) #8
  %79 = and i32 %78, -5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @"??_C@_0JC@BOIMJOEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %82

82:                                               ; preds = %81, %73
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PEAUCUctx_st@1234@EA", align 8, !tbaa !36
  br label %83

83:                                               ; preds = %82, %66
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
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
define weak dso_local i32 @halide_cuda_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !50
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 8, !tbaa !50
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %301

14:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %25 = call i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 8, !tbaa !50
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %301

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !23
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %33 = load i8, i8* %32, align 1, !tbaa !22
  br label %77

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !24
  %37 = zext i32 %29 to i64
  br label %38

38:                                               ; preds = %52, %34
  %39 = phi i64 [ 0, %34 ], [ %54, %52 ]
  %40 = phi i64 [ 0, %34 ], [ %53, %52 ]
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %39, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !25
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %39, i32 1
  %47 = load i32, i32* %46, align 4, !tbaa !30
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %45
  %51 = add nsw i64 %50, %40
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i64 [ %51, %44 ], [ %40, %38 ]
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %38, !llvm.loop !70

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %58 = load i8, i8* %57, align 1, !tbaa !22
  br label %59

59:                                               ; preds = %73, %56
  %60 = phi i64 [ 0, %56 ], [ %75, %73 ]
  %61 = phi i64 [ 0, %56 ], [ %74, %73 ]
  %62 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %60, i32 2
  %63 = load i32, i32* %62, align 4, !tbaa !25
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %60, i32 1
  %68 = load i32, i32* %67, align 4, !tbaa !30
  %69 = add nsw i32 %68, -1
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %66
  %72 = add nsw i64 %71, %61
  br label %73

73:                                               ; preds = %65, %59
  %74 = phi i64 [ %72, %65 ], [ %61, %59 ]
  %75 = add nuw nsw i64 %60, 1
  %76 = icmp eq i64 %75, %37
  br i1 %76, label %77, label %59, !llvm.loop !71

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
  %89 = call i64 @llvm.ctlz.i64(i64 %86, i1 true) #10, !range !72
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
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @"??_C@_0GF@IMIIMJK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %105 = load i64, i64* %104, align 8, !tbaa !21
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %28, align 4, !tbaa !23
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %118

112:                                              ; preds = %103
  %113 = call zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #9
  br i1 %113, label %293, label %114

114:                                              ; preds = %112
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@EKGDAOKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %293

115:                                              ; preds = %127, %107
  %116 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #10
  store i64 0, i64* %5, align 8, !tbaa !2
  %117 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %117, label %132, label %226

118:                                              ; preds = %110, %127
  %119 = phi i32 [ %108, %110 ], [ %128, %127 ]
  %120 = phi i64 [ 0, %110 ], [ %129, %127 ]
  %121 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %111, align 8, !tbaa !24
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %121, i64 %120, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !25
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @"??_C@_0HD@KCEJMHHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  %126 = load i32, i32* %28, align 4, !tbaa !23
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi i32 [ %119, %118 ], [ %126, %125 ]
  %129 = add nuw nsw i64 %120, 1
  %130 = sext i32 %128 to i64
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %118, label %115, !llvm.loop !82

132:                                              ; preds = %115
  %133 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 8, !tbaa !36
  %134 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA", align 8, !tbaa !36
  %135 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %134, null
  br i1 %135, label %159, label %136

136:                                              ; preds = %132
  %137 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8, !tbaa !49
  %138 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %137, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %6) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %136
  %141 = call i8* @malloc(i64 1024) #8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, i8* %141, i64 1023
  store i8 0, i8* %144, align 1, !tbaa !35
  br label %145

145:                                              ; preds = %140, %143
  %146 = phi i8* [ %144, %143 ], [ null, %140 ]
  %147 = call i8* @halide_string_to_string(i8* %141, i8* %146, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @"??_C@_0EF@NHLNPEBK@CUDA?3?5In?5halide_cuda_device_mall@", i64 0, i64 0)) #8
  %148 = sext i32 %138 to i64
  %149 = call i8* @halide_int64_to_string(i8* %147, i8* %146, i64 %148, i32 1) #8
  %150 = call i8* @halide_string_to_string(i8* %149, i8* %146, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %142, label %151, label %152

151:                                              ; preds = %145
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %160 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA", align 8, !tbaa !36
  %161 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %160, null
  br i1 %161, label %213, label %162

162:                                              ; preds = %159
  %163 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 8
  %164 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 8
  br label %165

165:                                              ; preds = %162, %195
  %166 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %160, %162 ], [ %200, %195 ]
  %167 = phi i32 [ 0, %162 ], [ %199, %195 ]
  %168 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ @"?free_list@Cuda@Internal@Runtime@Halide@@3PEAUFreeListItem@1234@EA", %162 ], [ %198, %195 ]
  %169 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ null, %162 ], [ %197, %195 ]
  %170 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ null, %162 ], [ %196, %195 ]
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 3
  %172 = load i64, i64* %171, align 8, !tbaa !73
  %173 = icmp ugt i64 %100, %172
  br i1 %173, label %192, label %174

174:                                              ; preds = %165
  %175 = lshr i64 %172, 3
  %176 = mul nuw i64 %175, 7
  %177 = icmp ult i64 %100, %176
  br i1 %177, label %192, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 1
  %180 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %179, align 8, !tbaa !69
  %181 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %163, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 2
  %184 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %183, align 8, !tbaa !74
  %185 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %164, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %170, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %170, i64 0, i32 3
  %190 = load i64, i64* %189, align 8, !tbaa !73
  %191 = icmp ugt i64 %190, %172
  br i1 %191, label %195, label %192

192:                                              ; preds = %188, %182, %178, %174, %165
  %193 = icmp ugt i32 %167, 32
  br i1 %193, label %194, label %195

194:                                              ; preds = %192
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %168, align 8, !tbaa !36
  br label %202

195:                                              ; preds = %192, %186, %188
  %196 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %166, %188 ], [ %166, %186 ], [ %170, %192 ]
  %197 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %168, %188 ], [ %168, %186 ], [ %169, %192 ]
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %166, i64 0, i32 4
  %199 = add nuw nsw i32 %167, 1
  %200 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %198, align 8, !tbaa !36
  %201 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %200, null
  br i1 %201, label %202, label %165, !llvm.loop !83

202:                                              ; preds = %195, %194
  %203 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %170, %194 ], [ %196, %195 ]
  %204 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %169, %194 ], [ %197, %195 ]
  %205 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %166, %194 ], [ null, %195 ]
  %206 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, i64 0, i32 0
  %209 = load i64, i64* %208, align 8, !tbaa !62
  store i64 %209, i64* %5, align 8, !tbaa !2
  %210 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203, i64 0, i32 4
  %211 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %210, align 8, !tbaa !65
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %211, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %204, align 8, !tbaa !36
  %212 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %203 to i8*
  call void @free(i8* nonnull %212) #8
  br label %213

213:                                              ; preds = %159, %202, %207
  %214 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %205, %207 ], [ %205, %202 ], [ null, %159 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #10
  %215 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %214, null
  br i1 %215, label %226, label %216

216:                                              ; preds = %213, %216
  %217 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %219, %216 ], [ %214, %213 ]
  %218 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217, i64 0, i32 4
  %219 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %218, align 8, !tbaa !65
  %220 = load i32 (i64)*, i32 (i64)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K@ZEA", align 8, !tbaa !36
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217, i64 0, i32 0
  %222 = load i64, i64* %221, align 8, !tbaa !62
  %223 = call i32 %220(i64 %222) #8
  %224 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %217 to i8*
  call void @free(i8* nonnull %224) #8
  %225 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %219, null
  br i1 %225, label %226, label %216, !llvm.loop !84

226:                                              ; preds = %216, %115, %213
  %227 = load i64, i64* %5, align 8, !tbaa !2
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %285

229:                                              ; preds = %226
  %230 = load i32 (i64*, i64)*, i32 (i64*, i64)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEA_KK@ZEA", align 8, !tbaa !36
  %231 = call i32 %230(i64* nonnull %5, i64 %100) #8
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %235 = load i32 (i64*, i64)*, i32 (i64*, i64)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEA_KK@ZEA", align 8, !tbaa !36
  %236 = call i32 %235(i64* nonnull %5, i64 %100) #8
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i32 [ %236, %233 ], [ %231, %229 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %280, label %240

240:                                              ; preds = %237
  %241 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %238) #9
  %242 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %242) #10
  %243 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %243, align 8, !tbaa !39
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %244, align 8, !tbaa !42
  %245 = call i8* @malloc(i64 1024) #8
  %246 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %245, i8** %246, align 8, !tbaa !43
  %247 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %245, i8** %247, align 8, !tbaa !44
  %248 = icmp eq i8* %245, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %240
  %250 = getelementptr inbounds i8, i8* %245, i64 1023
  store i8 0, i8* %250, align 1, !tbaa !35
  br label %251

251:                                              ; preds = %240, %249
  %252 = phi i8* [ %250, %249 ], [ null, %240 ]
  %253 = call i8* @halide_string_to_string(i8* %245, i8* %252, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@IFMPONBJ@CUDA?3?5cuMemAlloc?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %254 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %238) #9
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = call i8* @halide_string_to_string(i8* %253, i8* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %260

258:                                              ; preds = %251
  %259 = call i8* @halide_string_to_string(i8* %253, i8* %252, i8* nonnull %254) #8
  br label %260

260:                                              ; preds = %256, %258
  %261 = phi i8* [ %259, %258 ], [ %257, %256 ]
  %262 = load i8*, i8** %246, align 8, !tbaa !43
  %263 = icmp eq i8* %262, null
  %264 = load i8*, i8** %243, align 8, !tbaa !39
  br i1 %263, label %265, label %266

265:                                              ; preds = %260
  call void @halide_error(i8* %264, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %274

266:                                              ; preds = %260
  %267 = ptrtoint i8* %261 to i64
  %268 = ptrtoint i8* %262 to i64
  %269 = sub i64 1, %268
  %270 = add i64 %269, %267
  %271 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %264, i8* nonnull %262, i64 %270) #8
  %272 = load i8*, i8** %246, align 8, !tbaa !43
  %273 = load i8*, i8** %243, align 8, !tbaa !39
  call void @halide_error(i8* %273, i8* %272) #8
  br label %274

274:                                              ; preds = %266, %265
  %275 = load i8, i8* %244, align 8, !tbaa !42, !range !45
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load i8*, i8** %246, align 8, !tbaa !43
  call void @free(i8* %278) #8
  br label %279

279:                                              ; preds = %277, %274
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %242) #10
  br label %291

280:                                              ; preds = %237
  %281 = load i64, i64* %5, align 8, !tbaa !2
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @"??_C@_0FN@MGKEONMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  %284 = load i64, i64* %5, align 8, !tbaa !2
  br label %285

285:                                              ; preds = %226, %283, %280
  %286 = phi i64 [ %227, %226 ], [ %284, %283 ], [ %281, %280 ]
  store i64 %286, i64* %104, align 8, !tbaa !21
  %287 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %287, align 8, !tbaa !75
  %288 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !76
  %289 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %288, i64 0, i32 0
  %290 = load void ()*, void ()** %289, align 8, !tbaa !85
  call void %290() #8
  br label %291

291:                                              ; preds = %279, %285
  %292 = phi i32 [ 0, %285 ], [ %238, %279 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #10
  br label %293

293:                                              ; preds = %291, %114, %112
  %294 = phi i32 [ 0, %112 ], [ 0, %114 ], [ %292, %291 ]
  %295 = load i32, i32* %11, align 8, !tbaa !50
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %298) #10
  %299 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %300 = call i32 %299(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %298) #10
  br label %301

301:                                              ; preds = %2, %22, %293, %297
  %302 = phi i32 [ %294, %293 ], [ %294, %297 ], [ %25, %22 ], [ %12, %2 ]
  %303 = load i8*, i8** %9, align 8, !tbaa !47
  %304 = call i32 @halide_cuda_release_context(i8* %303) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #10
  ret i32 %302
}

; Function Attrs: nounwind
define weak dso_local i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4, i1 zeroext %5, i1 zeroext %6) local_unnamed_addr #4 {
  %8 = icmp sgt i32 %4, 16
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = tail call i8* @malloc(i64 1024) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i64 1023
  store i8 0, i8* %15, align 1, !tbaa !35
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #8
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
  %29 = load i64, i64* %28, align 8, !tbaa !2
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
  %42 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** @"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAX_KK@ZEA", align 8, !tbaa !36
  %43 = load i64, i64* %38, align 8, !tbaa !11
  %44 = tail call i32 %42(i8* %37, i64 %2, i64 %43) #8
  br label %63

45:                                               ; preds = %35
  %46 = xor i1 %5, true
  %47 = or i1 %46, %6
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32 (i64, i8*, i64)*, i32 (i64, i8*, i64)** @"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_KPEBXK@ZEA", align 8, !tbaa !36
  %50 = load i64, i64* %38, align 8, !tbaa !11
  %51 = tail call i32 %49(i64 %3, i8* %36, i64 %50) #8
  br label %63

52:                                               ; preds = %45
  %53 = or i1 %5, %6
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = load i32 (i64, i64, i64)*, i32 (i64, i64, i64)** @"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@_K0K@ZEA", align 8, !tbaa !36
  %56 = load i64, i64* %38, align 8, !tbaa !11
  %57 = tail call i32 %55(i64 %3, i64 %2, i64 %56) #8
  br label %63

58:                                               ; preds = %52
  %59 = icmp eq i64 %3, %2
  br i1 %59, label %110, label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %38, align 8, !tbaa !11
  %62 = tail call i8* @memcpy(i8* %37, i8* %36, i64 %61) #8
  br label %110

63:                                               ; preds = %48, %54, %41
  %64 = phi i32 [ %57, %54 ], [ %51, %48 ], [ %44, %41 ]
  %65 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@HIPEOAAC@cuMemcpyDtoD?$AA@", i64 0, i64 0), %54 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@LNAEANAD@cuMemcpyHtoD?$AA@", i64 0, i64 0), %48 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@NEEBKPAO@cuMemcpyDtoH?$AA@", i64 0, i64 0), %41 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  %68 = tail call i8* @malloc(i64 1024) #8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, i8* %68, i64 1023
  store i8 0, i8* %71, align 1, !tbaa !35
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi i8* [ %71, %70 ], [ null, %67 ]
  %74 = tail call i8* @halide_string_to_string(i8* %68, i8* %73, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06HJJAFDBE@CUDA?3?5?$AA@", i64 0, i64 0)) #8
  %75 = tail call i8* @halide_string_to_string(i8* %74, i8* %73, i8* nonnull %65) #8
  %76 = tail call i8* @halide_string_to_string(i8* %75, i8* %73, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FIOGNGMI@?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %77 = tail call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %64) #9
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = tail call i8* @halide_string_to_string(i8* %76, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %83

81:                                               ; preds = %72
  %82 = tail call i8* @halide_string_to_string(i8* %76, i8* %73, i8* nonnull %77) #8
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ]
  br i1 %69, label %85, label %86

85:                                               ; preds = %83
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  %97 = add i64 %95, %3
  %98 = add i64 %96, %2
  %99 = tail call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %98, i64 %97, i32 %26, i1 zeroext %5, i1 zeroext %6) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load i64, i64* %33, align 8, !tbaa !2
  %103 = add i64 %102, %96
  %104 = load i64, i64* %34, align 8, !tbaa !2
  %105 = add i64 %104, %95
  %106 = add nuw nsw i32 %94, 1
  %107 = load i64, i64* %28, align 8, !tbaa !2
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %93, label %110, !llvm.loop !86

110:                                              ; preds = %101, %93, %25, %58, %60, %63, %92, %22
  %111 = phi i32 [ -1, %22 ], [ %64, %92 ], [ 0, %63 ], [ 0, %60 ], [ 0, %58 ], [ 0, %25 ], [ 0, %101 ], [ %99, %93 ]
  ret i32 %111
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %8 = icmp eq %struct.halide_device_interface_t* %2, null
  %9 = icmp eq %struct.halide_device_interface_t* %2, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @"??_C@_0KN@JNCHLBNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %14 = load i64, i64* %13, align 8, !tbaa !87
  %15 = and i64 %14, 2
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8, !tbaa !14
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !75
  %24 = icmp eq %struct.halide_device_interface_t* %23, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  br i1 %9, label %92, label %26

26:                                               ; preds = %25
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@NMJPPNNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %92

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !tbaa !75
  %30 = icmp eq %struct.halide_device_interface_t* %29, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %30, label %31, label %43

31:                                               ; preds = %21, %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !21
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = and i64 %14, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8, !tbaa !14
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %38
  br label %43

43:                                               ; preds = %42, %27, %31, %38
  %44 = phi i1 [ true, %38 ], [ false, %42 ], [ true, %31 ], [ true, %27 ]
  br i1 %8, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %47 = load i64, i64* %46, align 8, !tbaa !21
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@OPNBCGF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %51) #10
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %6, %struct.halide_buffer_t* nonnull %1, i1 zeroext %44, %struct.halide_buffer_t* %3, i1 zeroext %8) #9
  %52 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52) #10
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 0
  store i8* %0, i8** %53, align 8, !tbaa !47
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !49
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i64 0, i32 2
  store i32 0, i32* %55, align 8, !tbaa !50
  %56 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %54, i1 zeroext true) #8
  store i32 %56, i32* %55, align 8, !tbaa !50
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %59 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !49
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %64 = icmp eq i32 (i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %68 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 8, !tbaa !49
  %69 = call i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %68) #8
  store i32 %69, i32* %55, align 8, !tbaa !50
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %73 = load i32, i32* %72, align 4, !tbaa !23
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  %75 = load i64, i64* %74, align 8, !tbaa !10
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !8
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %79 = load i64, i64* %78, align 8, !tbaa !13
  %80 = add i64 %79, %77
  %81 = call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %6, i64 %80, i64 %75, i32 %73, i1 zeroext %44, i1 zeroext %8) #9
  %82 = load i32, i32* %55, align 8, !tbaa !50
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #10
  %86 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %87 = call i32 %86(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10
  br label %88

88:                                               ; preds = %50, %66, %71, %84
  %89 = phi i32 [ %81, %71 ], [ %81, %84 ], [ %69, %66 ], [ %56, %50 ]
  %90 = load i8*, i8** %53, align 8, !tbaa !47
  %91 = call i32 @halide_cuda_release_context(i8* %90) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %51) #10
  br label %92

92:                                               ; preds = %26, %25, %88
  %93 = phi i32 [ %89, %88 ], [ -42, %25 ], [ -42, %26 ]
  ret i32 %93
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !21
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  store i64 %6, i64* %7, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  store %struct.halide_device_interface_t* %9, %struct.halide_device_interface_t** %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !87
  %13 = and i64 %12, 2
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !87
  %16 = and i64 %15, -3
  %17 = or i64 %16, %13
  store i64 %17, i64* %14, align 8, !tbaa !87
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !23
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !24
  %12 = zext i32 %5 to i64
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %27, %13 ]
  %15 = phi i64 [ 0, %7 ], [ %26, %13 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %14, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !27
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !27
  %20 = sub nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !25
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %21, %24
  %26 = add nsw i64 %25, %15
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !88

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !22
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9
  ret i32 %37
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #5 {
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !tbaa !24
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !27
  %11 = sub nsw i32 %3, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !25
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %18 = load i8, i8* %17, align 1, !tbaa !22
  %19 = zext i8 %18 to i64
  %20 = add nuw nsw i64 %19, 7
  %21 = lshr i64 %20, 3
  %22 = mul nsw i64 %16, %21
  %23 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9
  ret i32 %23
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #5 {
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_buffer_t* %1) #9
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #9
  ret i32 %3
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %7 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 0
  store i8* %0, i8** %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i64 0, i32 2
  store i32 0, i32* %10, align 8, !tbaa !50
  %11 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %9, i1 zeroext true) #8
  store i32 %11, i32* %10, align 8, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %109

13:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !49
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %19 = icmp eq i32 (i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !49
  %24 = call i32 %22(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %23) #8
  store i32 %24, i32* %10, align 8, !tbaa !50
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %21
  %27 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA", align 8, !tbaa !36
  %28 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %26
  %30 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #10
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 8, !tbaa !49
  %32 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %5) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = call i8* @malloc(i64 1024) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i64 1023
  store i8 0, i8* %38, align 1, !tbaa !35
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@EBCFNJMM@CUDA?3?5In?5halide_cuda_device_sync@", i64 0, i64 0)) #8
  %42 = sext i32 %32 to i64
  %43 = call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %42, i32 1) #8
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %36, label %45, label %46

45:                                               ; preds = %39
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
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
  %54 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA", align 8, !tbaa !36
  %55 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5, align 8, !tbaa !36
  %56 = call i32 %54(%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %55) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  br label %60

57:                                               ; preds = %26
  %58 = load i32 ()*, i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@XZEA", align 8, !tbaa !36
  %59 = call i32 %58() #8
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %102, label %63

63:                                               ; preds = %60
  %64 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %64) #10
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3
  store i8* %0, i8** %65, align 8, !tbaa !39
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4
  store i8 1, i8* %66, align 8, !tbaa !42
  %67 = call i8* @malloc(i64 1024) #8
  %68 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0
  store i8* %67, i8** %68, align 8, !tbaa !43
  %69 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1
  store i8* %67, i8** %69, align 8, !tbaa !44
  %70 = icmp eq i8* %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds i8, i8* %67, i64 1023
  store i8 0, i8* %72, align 1, !tbaa !35
  br label %73

73:                                               ; preds = %63, %71
  %74 = phi i8* [ %72, %71 ], [ null, %63 ]
  %75 = call i8* @halide_string_to_string(i8* %67, i8* %74, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@MMGFAAGI@CUDA?3?5cuCtxSynchronize?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %76 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %61) #9
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i8* @halide_string_to_string(i8* %75, i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %82

80:                                               ; preds = %73
  %81 = call i8* @halide_string_to_string(i8* %75, i8* %74, i8* nonnull %76) #8
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi i8* [ %81, %80 ], [ %79, %78 ]
  %84 = load i8*, i8** %68, align 8, !tbaa !43
  %85 = icmp eq i8* %84, null
  %86 = load i8*, i8** %65, align 8, !tbaa !39
  br i1 %85, label %87, label %88

87:                                               ; preds = %82
  call void @halide_error(i8* %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %96

88:                                               ; preds = %82
  %89 = ptrtoint i8* %83 to i64
  %90 = ptrtoint i8* %84 to i64
  %91 = sub i64 1, %90
  %92 = add i64 %91, %89
  %93 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %86, i8* nonnull %84, i64 %92) #8
  %94 = load i8*, i8** %68, align 8, !tbaa !43
  %95 = load i8*, i8** %65, align 8, !tbaa !39
  call void @halide_error(i8* %95, i8* %94) #8
  br label %96

96:                                               ; preds = %88, %87
  %97 = load i8, i8* %66, align 8, !tbaa !42, !range !45
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %68, align 8, !tbaa !43
  call void @free(i8* %100) #8
  br label %101

101:                                              ; preds = %96, %99
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %64) #10
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32, i32* %10, align 8, !tbaa !50
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %106) #10
  %107 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %108 = call i32 %107(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #10
  br label %109

109:                                              ; preds = %2, %21, %102, %105
  %110 = phi i32 [ %61, %102 ], [ %61, %105 ], [ %24, %21 ], [ %11, %2 ]
  %111 = load i8*, i8** %8, align 8, !tbaa !47
  %112 = call i32 @halide_cuda_release_context(i8* %111) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret i32 %110
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %19 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %20 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, align 8
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %22 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 8
  %23 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %24 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 0
  store i8* %0, i8** %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i64 0, i32 2
  store i32 0, i32* %27, align 8, !tbaa !50
  %28 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %26, i1 zeroext true) #8
  store i32 %28, i32* %27, align 8, !tbaa !50
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %260

30:                                               ; preds = %17
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !49
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %36 = icmp eq i32 (i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %38

38:                                               ; preds = %34, %37
  %39 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %40 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !49
  %41 = call i32 %39(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %40) #8
  store i32 %41, i32* %27, align 8, !tbaa !50
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %260

43:                                               ; preds = %38
  %44 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !49
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 0)) #8
  %45 = ptrtoint i8* %1 to i64
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 1), align 8, !tbaa !54
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
  %62 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 2), align 8, !tbaa !55
  %63 = sext i32 %57 to i64
  %64 = icmp sgt i32 %57, 1
  %65 = select i1 %64, i32 %57, i32 1
  %66 = zext i32 %65 to i64
  br label %70

67:                                               ; preds = %78
  %68 = icmp slt i64 %84, %63
  %69 = icmp eq i64 %84, %66
  br i1 %69, label %86, label %70, !llvm.loop !56

70:                                               ; preds = %67, %59
  %71 = phi i64 [ 0, %59 ], [ %84, %67 ]
  %72 = phi i1 [ true, %59 ], [ %68, %67 ]
  %73 = add i64 %71, %56
  %74 = and i64 %73, %61
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 2
  %76 = load i32, i32* %75, align 8, !tbaa !57
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 0
  %80 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %79, align 8, !tbaa !59
  %81 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %80, %44
  %82 = icmp eq i32 %76, %46
  %83 = and i1 %82, %81
  %84 = add nuw nsw i64 %71, 1
  br i1 %83, label %85, label %67

85:                                               ; preds = %78
  br i1 %72, label %87, label %86

86:                                               ; preds = %67, %70, %85, %43, %49
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 0)) #8
  br label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %62, i64 %74, i32 1
  %89 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %88, align 8, !tbaa !36
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 0)) #8
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %87
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@JLBLKPLK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %92

92:                                               ; preds = %87, %91
  %93 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ %89, %87 ], [ null, %91 ]
  %94 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #10
  %95 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUfunc_st@1234@PEAUCUmod_st@1234@PEBD@ZEA", align 8, !tbaa !36
  %96 = call i32 %95(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** nonnull %20, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %93, i8* %2) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %92
  %99 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %99) #10
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 3
  store i8* %0, i8** %100, align 8, !tbaa !39
  %101 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 4
  store i8 1, i8* %101, align 8, !tbaa !42
  %102 = call i8* @malloc(i64 1024) #8
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 0
  store i8* %102, i8** %103, align 8, !tbaa !43
  %104 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 1
  store i8* %102, i8** %104, align 8, !tbaa !44
  %105 = icmp eq i8* %102, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds i8, i8* %102, i64 1023
  store i8 0, i8* %107, align 1, !tbaa !35
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi i8* [ %107, %106 ], [ null, %98 ]
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@CKBMCDCA@CUDA?3?5cuModuleGetFunction?5failed@", i64 0, i64 0)) #8
  %111 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %96) #9
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %117

115:                                              ; preds = %108
  %116 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* nonnull %111) #8
  br label %117

117:                                              ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %114, %113 ]
  %119 = load i8*, i8** %103, align 8, !tbaa !43
  %120 = icmp eq i8* %119, null
  %121 = load i8*, i8** %100, align 8, !tbaa !39
  br i1 %120, label %122, label %123

122:                                              ; preds = %117
  call void @halide_error(i8* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %131

123:                                              ; preds = %117
  %124 = ptrtoint i8* %118 to i64
  %125 = ptrtoint i8* %119 to i64
  %126 = sub i64 1, %125
  %127 = add i64 %126, %124
  %128 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %121, i8* nonnull %119, i64 %127) #8
  %129 = load i8*, i8** %103, align 8, !tbaa !43
  %130 = load i8*, i8** %100, align 8, !tbaa !39
  call void @halide_error(i8* %130, i8* %129) #8
  br label %131

131:                                              ; preds = %123, %122
  %132 = load i8, i8* %101, align 8, !tbaa !42, !range !45
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %103, align 8, !tbaa !43
  call void @free(i8* %135) #8
  br label %136

136:                                              ; preds = %131, %134
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %99) #10
  br label %252

137:                                              ; preds = %92, %137
  %138 = phi i64 [ %142, %137 ], [ 0, %92 ]
  %139 = getelementptr inbounds i64, i64* %10, i64 %138
  %140 = load i64, i64* %139, align 8, !tbaa !89
  %141 = icmp eq i64 %140, 0
  %142 = add i64 %138, 1
  br i1 %141, label %143, label %137, !llvm.loop !90

143:                                              ; preds = %137
  %144 = shl i64 %138, 3
  %145 = add i64 %144, 8
  %146 = call i8* @malloc(i64 %145) #8
  %147 = bitcast i8* %146 to i8**
  %148 = call i8* @malloc(i64 %144) #8
  %149 = bitcast i8* %148 to i64*
  br label %154

150:                                              ; preds = %177
  %151 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %151) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 8, !tbaa !36
  %152 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUstream_st@1234@@ZEA", align 8, !tbaa !36
  %153 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %152, null
  br i1 %153, label %205, label %180

154:                                              ; preds = %143, %177
  %155 = phi i64 [ 0, %143 ], [ %178, %177 ]
  %156 = getelementptr inbounds i8, i8* %12, i64 %155
  %157 = load i8, i8* %156, align 1, !tbaa !35
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds i64, i64* %10, i64 %155
  %161 = load i64, i64* %160, align 8, !tbaa !89
  %162 = icmp eq i64 %161, 8
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @"??_C@_0HN@LGMAJGMN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %164

164:                                              ; preds = %163, %159
  %165 = getelementptr inbounds i8*, i8** %11, i64 %155
  %166 = bitcast i8** %165 to %struct.halide_buffer_t**
  %167 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %166, align 8, !tbaa !36
  %168 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %167, i64 0, i32 0
  %169 = load i64, i64* %168, align 8, !tbaa !21
  %170 = getelementptr inbounds i64, i64* %149, i64 %155
  store i64 %169, i64* %170, align 8, !tbaa !2
  %171 = getelementptr inbounds i8*, i8** %147, i64 %155
  %172 = bitcast i8** %171 to i64**
  store i64* %170, i64** %172, align 8, !tbaa !36
  br label %177

173:                                              ; preds = %154
  %174 = getelementptr inbounds i8*, i8** %11, i64 %155
  %175 = load i8*, i8** %174, align 8, !tbaa !36
  %176 = getelementptr inbounds i8*, i8** %147, i64 %155
  store i8* %175, i8** %176, align 8, !tbaa !36
  br label %177

177:                                              ; preds = %164, %173
  %178 = add i64 %155, 1
  %179 = icmp ugt i64 %178, %138
  br i1 %179, label %150, label %154, !llvm.loop !91

180:                                              ; preds = %150
  %181 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 8, !tbaa !49
  %182 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %181, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %22) #9
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 8, !tbaa !36
  br label %205

186:                                              ; preds = %180
  %187 = call i8* @malloc(i64 1024) #8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, i8* %187, i64 1023
  store i8 0, i8* %190, align 1, !tbaa !35
  br label %191

191:                                              ; preds = %186, %189
  %192 = phi i8* [ %190, %189 ], [ null, %186 ]
  %193 = call i8* @halide_string_to_string(i8* %187, i8* %192, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @"??_C@_0DL@OALCCANJ@CUDA?3?5In?5halide_cuda_run?0?5halide@", i64 0, i64 0)) #8
  %194 = sext i32 %182 to i64
  %195 = call i8* @halide_int64_to_string(i8* %193, i8* %192, i64 %194, i32 1) #8
  %196 = call i8* @halide_string_to_string(i8* %195, i8* %192, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #8
  br i1 %188, label %197, label %198

197:                                              ; preds = %191
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %204

198:                                              ; preds = %191
  %199 = ptrtoint i8* %196 to i64
  %200 = ptrtoint i8* %187 to i64
  %201 = add i64 %199, 1
  %202 = sub i64 %201, %200
  %203 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %187, i64 %202) #8
  call void @halide_error(i8* %0, i8* nonnull %187) #8
  br label %204

204:                                              ; preds = %198, %197
  call void @free(i8* %187) #8
  call void @free(i8* %148) #8
  call void @free(i8* nonnull %146) #8
  br label %250

205:                                              ; preds = %184, %150
  %206 = phi %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* [ %185, %184 ], [ null, %150 ]
  %207 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUfunc_st@1234@IIIIIIIPEAUCUstream_st@1234@PEAPEAX2@ZEA", align 8, !tbaa !36
  %208 = load %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20, align 8, !tbaa !36
  %209 = call i32 %207(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"* %208, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %206, i8** nonnull %147, i8** null) #8
  call void @free(i8* %148) #8
  call void @free(i8* nonnull %146) #8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %250, label %211

211:                                              ; preds = %205
  %212 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %212) #10
  %213 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 3
  store i8* %0, i8** %213, align 8, !tbaa !39
  %214 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 4
  store i8 1, i8* %214, align 8, !tbaa !42
  %215 = call i8* @malloc(i64 1024) #8
  %216 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 0
  store i8* %215, i8** %216, align 8, !tbaa !43
  %217 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i64 0, i32 1
  store i8* %215, i8** %217, align 8, !tbaa !44
  %218 = icmp eq i8* %215, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %211
  %220 = getelementptr inbounds i8, i8* %215, i64 1023
  store i8 0, i8* %220, align 1, !tbaa !35
  br label %221

221:                                              ; preds = %211, %219
  %222 = phi i8* [ %220, %219 ], [ null, %211 ]
  %223 = call i8* @halide_string_to_string(i8* %215, i8* %222, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@MFKABAO@CUDA?3?5cuLaunchKernel?5failed?3?5?$AA@", i64 0, i64 0)) #8
  %224 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %209) #9
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i8* @halide_string_to_string(i8* %223, i8* %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %230

228:                                              ; preds = %221
  %229 = call i8* @halide_string_to_string(i8* %223, i8* %222, i8* nonnull %224) #8
  br label %230

230:                                              ; preds = %226, %228
  %231 = phi i8* [ %229, %228 ], [ %227, %226 ]
  %232 = load i8*, i8** %216, align 8, !tbaa !43
  %233 = icmp eq i8* %232, null
  %234 = load i8*, i8** %213, align 8, !tbaa !39
  br i1 %233, label %235, label %236

235:                                              ; preds = %230
  call void @halide_error(i8* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %244

236:                                              ; preds = %230
  %237 = ptrtoint i8* %231 to i64
  %238 = ptrtoint i8* %232 to i64
  %239 = sub i64 1, %238
  %240 = add i64 %239, %237
  %241 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %234, i8* nonnull %232, i64 %240) #8
  %242 = load i8*, i8** %216, align 8, !tbaa !43
  %243 = load i8*, i8** %213, align 8, !tbaa !39
  call void @halide_error(i8* %243, i8* %242) #8
  br label %244

244:                                              ; preds = %236, %235
  %245 = load i8, i8* %214, align 8, !tbaa !42, !range !45
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = load i8*, i8** %216, align 8, !tbaa !43
  call void @free(i8* %248) #8
  br label %249

249:                                              ; preds = %244, %247
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %212) #10
  br label %250

250:                                              ; preds = %204, %205, %249
  %251 = phi i32 [ %209, %249 ], [ %182, %204 ], [ 0, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %151) #10
  br label %252

252:                                              ; preds = %136, %250
  %253 = phi i32 [ %96, %136 ], [ %251, %250 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #10
  %254 = load i32, i32* %27, align 8, !tbaa !50
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %257) #10
  %258 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %259 = call i32 %258(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %18) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %257) #10
  br label %260

260:                                              ; preds = %17, %38, %252, %256
  %261 = phi i32 [ %253, %252 ], [ %253, %256 ], [ %41, %38 ], [ %28, %17 ]
  %262 = load i8*, i8** %25, align 8, !tbaa !47
  %263 = call i32 @halide_cuda_release_context(i8* %262) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #10
  ret i32 %261
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #8
  ret i32 %3
}

declare extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #8
  ret i32 %3
}

declare extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_wrap_device_ptr(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !21
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HOBIEDCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !21
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3, %7
  store i64 %2, i64* %4, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %11, align 8, !tbaa !75
  %12 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %12, i64 0, i32 0
  %14 = load void ()*, void ()** %13, align 8, !tbaa !85
  tail call void %14() #8
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi i32 [ 0, %10 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_detach_device_ptr(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@GABEKHCB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i64 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i64 0, i32 1
  %17 = load void ()*, void ()** %16, align 8, !tbaa !78
  tail call void %17() #8
  store i64 0, i64* %3, align 8, !tbaa !21
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_cuda_get_device_ptr(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !75
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@KELMOOGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load i64, i64* %3, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i64 [ 0, %2 ], [ %4, %6 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_cuda_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 8
  %5 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = load i8*, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %10 = icmp ne i8* %9, null
  %11 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8
  %12 = icmp ne i32 (i32)* %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i64 0, i64 0)) #9
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4, !tbaa !38
  store i32 0, i32* %1, align 4, !tbaa !38
  ret i32 0

18:                                               ; preds = %14, %3
  %19 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #10
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 0
  store i8* %0, i8** %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i64 0, i32 2
  store i32 0, i32* %22, align 8, !tbaa !50
  %23 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %21, i1 zeroext true) #8
  store i32 %23, i32* %22, align 8, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %147

25:                                               ; preds = %18
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !49
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@I@ZEA", align 8, !tbaa !36
  %31 = icmp eq i32 (i32)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  call void @abort() #8
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 8, !tbaa !49
  %36 = call i32 %34(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35) #8
  store i32 %36, i32* %22, align 8, !tbaa !50
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %147

38:                                               ; preds = %33
  %39 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #10
  %40 = load i32 (i32*)*, i32 (i32*)** @"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAH@ZEA", align 8, !tbaa !36
  %41 = call i32 %40(i32* nonnull %6) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %38
  %44 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %44) #10
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %45, align 8, !tbaa !39
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %46, align 8, !tbaa !42
  %47 = call i8* @malloc(i64 1024) #8
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %47, i8** %48, align 8, !tbaa !43
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %47, i8** %49, align 8, !tbaa !44
  %50 = icmp eq i8* %47, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, i8* %47, i64 1023
  store i8 0, i8* %52, align 1, !tbaa !35
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8* [ %52, %51 ], [ null, %43 ]
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2
  store i8* %54, i8** %55, align 8
  %56 = call i8* @halide_string_to_string(i8* %47, i8* %54, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@HDIJPFPI@CUDA?3?5cuCtxGetDevice?5failed?5?$CI?$AA@", i64 0, i64 0)) #8
  %57 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %41) #9
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %63

61:                                               ; preds = %53
  %62 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* nonnull %57) #8
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi i8* [ %62, %61 ], [ %60, %59 ]
  %65 = load i8*, i8** %55, align 8, !tbaa !92
  %66 = call i8* @halide_string_to_string(i8* %64, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #8
  %67 = load i8*, i8** %48, align 8, !tbaa !43
  %68 = icmp eq i8* %67, null
  %69 = load i8*, i8** %45, align 8, !tbaa !39
  br i1 %68, label %70, label %71

70:                                               ; preds = %63
  call void @halide_error(i8* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %79

71:                                               ; preds = %63
  %72 = ptrtoint i8* %66 to i64
  %73 = ptrtoint i8* %67 to i64
  %74 = add i64 %72, 1
  %75 = sub i64 %74, %73
  %76 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %69, i8* nonnull %67, i64 %75) #8
  %77 = load i8*, i8** %48, align 8, !tbaa !43
  %78 = load i8*, i8** %45, align 8, !tbaa !39
  call void @halide_error(i8* %78, i8* %77) #8
  br label %79

79:                                               ; preds = %71, %70
  %80 = load i8, i8* %46, align 8, !tbaa !42, !range !45
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %48, align 8, !tbaa !43
  call void @free(i8* %83) #8
  br label %84

84:                                               ; preds = %79, %82
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %44) #10
  br label %138

85:                                               ; preds = %38
  %86 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHW4CUdevice_attribute@1234@H@ZEA", align 8, !tbaa !36
  %87 = load i32, i32* %6, align 4, !tbaa !38
  %88 = call i32 %86(i32* %1, i32 75, i32 %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAHW4CUdevice_attribute@1234@H@ZEA", align 8, !tbaa !36
  %92 = load i32, i32* %6, align 4, !tbaa !38
  %93 = call i32 %91(i32* %2, i32 76, i32 %92) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %138, label %95

95:                                               ; preds = %85, %90
  %96 = phi i32 [ %93, %90 ], [ %88, %85 ]
  %97 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %97) #10
  %98 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %98, align 8, !tbaa !39
  %99 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %99, align 8, !tbaa !42
  %100 = call i8* @malloc(i64 1024) #8
  %101 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %100, i8** %101, align 8, !tbaa !43
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %100, i8** %102, align 8, !tbaa !44
  %103 = icmp eq i8* %100, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = getelementptr inbounds i8, i8* %100, i64 1023
  store i8 0, i8* %105, align 1, !tbaa !35
  br label %106

106:                                              ; preds = %95, %104
  %107 = phi i8* [ %105, %104 ], [ null, %95 ]
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 2
  store i8* %107, i8** %108, align 8
  %109 = call i8* @halide_string_to_string(i8* %100, i8* %107, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@BBPCNOHG@CUDA?3?5cuDeviceGetAttribute?5faile@", i64 0, i64 0)) #8
  %110 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPEBDW4CUresult@1234@@Z"(i32 %96) #9
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i8* @halide_string_to_string(i8* %109, i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #8
  br label %116

114:                                              ; preds = %106
  %115 = call i8* @halide_string_to_string(i8* %109, i8* %107, i8* nonnull %110) #8
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi i8* [ %115, %114 ], [ %113, %112 ]
  %118 = load i8*, i8** %108, align 8, !tbaa !92
  %119 = call i8* @halide_string_to_string(i8* %117, i8* %118, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #8
  %120 = load i8*, i8** %101, align 8, !tbaa !43
  %121 = icmp eq i8* %120, null
  %122 = load i8*, i8** %98, align 8, !tbaa !39
  br i1 %121, label %123, label %124

123:                                              ; preds = %116
  call void @halide_error(i8* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #8
  br label %132

124:                                              ; preds = %116
  %125 = ptrtoint i8* %119 to i64
  %126 = ptrtoint i8* %120 to i64
  %127 = add i64 %125, 1
  %128 = sub i64 %127, %126
  %129 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %122, i8* nonnull %120, i64 %128) #8
  %130 = load i8*, i8** %101, align 8, !tbaa !43
  %131 = load i8*, i8** %98, align 8, !tbaa !39
  call void @halide_error(i8* %131, i8* %130) #8
  br label %132

132:                                              ; preds = %124, %123
  %133 = load i8, i8* %99, align 8, !tbaa !42, !range !45
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = load i8*, i8** %101, align 8, !tbaa !43
  call void @free(i8* %136) #8
  br label %137

137:                                              ; preds = %132, %135
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %97) #10
  br label %138

138:                                              ; preds = %84, %137, %90
  %139 = phi i32 [ %41, %84 ], [ %96, %137 ], [ 0, %90 ]
  %140 = phi i32 [ 1, %84 ], [ 1, %137 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #10
  %141 = load i32, i32* %22, align 8, !tbaa !50
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %144) #10
  %145 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAPEAUCUctx_st@1234@@ZEA", align 8, !tbaa !36
  %146 = call i32 %145(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #10
  br label %147

147:                                              ; preds = %18, %33, %138, %143
  %148 = phi i32 [ %140, %138 ], [ %140, %143 ], [ 1, %33 ], [ 1, %18 ]
  %149 = phi i32 [ %139, %138 ], [ %139, %143 ], [ %36, %33 ], [ %23, %18 ]
  %150 = load i8*, i8** %20, align 8, !tbaa !47
  %151 = call i32 @halide_cuda_release_context(i8* %150) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #10
  %152 = icmp eq i32 %148, 0
  %153 = select i1 %152, i32 0, i32 %149
  ret i32 %153
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_cuda_cleanup() #0 {
  tail call void @"??$release_all@P6A?AW4CUresult@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Z@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAAXPEAXAEAP6A?AW4CUresult@Cuda@1Runtime@2@PEAUCUmod_st@4152@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i8* null, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 8 dereferenceable(8) @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6A?AW4CUresult@1234@PEAUCUmod_st@1234@@ZEA") #9
  %1 = tail call i32 @halide_cuda_device_release(i8* null) #9
  ret void
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @"??$release_all@P6A?AW4CUresult@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Z@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAAXPEAXAEAP6A?AW4CUresult@Cuda@1Runtime@2@PEAUCUmod_st@4152@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #8
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !80
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !54
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %6, %12 ], [ %39, %38 ]
  %17 = phi i32 [ %10, %12 ], [ %40, %38 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %14, %12 ], [ %41, %38 ]
  %19 = phi i64 [ 0, %12 ], [ %42, %38 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !57
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !60
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** %2, align 8, !tbaa !36
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i64 %19, i32 1
  %30 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %29, align 8, !tbaa !61
  %31 = tail call i32 %28(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %30) #8
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 8, !tbaa !55
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i64 %19, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %33, align 8, !tbaa !61
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i64 %19, i32 2
  store i32 1, i32* %34, align 8, !tbaa !57
  %35 = load i32, i32* %5, align 8, !tbaa !80
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 8, !tbaa !80
  %37 = load i32, i32* %9, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i64 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %15, label %46, !llvm.loop !81

46:                                               ; preds = %38
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3, %46
  %49 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %50 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !55
  tail call void @free(i8* %51) #8
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %49, align 8, !tbaa !55
  %52 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  store i32 0, i32* %52, align 8, !tbaa !54
  br label %53

53:                                               ; preds = %8, %48, %46
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #8
  ret void
}

declare extern_weak dso_local void @halide_use_jit_module() #2

declare extern_weak dso_local void @halide_release_jit_module() #2

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #2

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak dso_local i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak dso_local i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_release_crop(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_wrap_native(i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_device_detach_native(i8*, %struct.halide_buffer_t*) #2

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @"?insert@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #9
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !80
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #9
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !80
  %25 = load i32, i32* %3, align 8, !tbaa !54
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !80
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i64 0, i32 2
  %33 = load i32, i32* %32, align 8, !tbaa !57
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i64 0, i32 0
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %34, align 8, !tbaa !59
  %36 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35 to i64
  %37 = zext i32 %33 to i64
  %38 = add i64 %36, %37
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
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %47, align 8, !tbaa !55
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !93

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !57
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !94
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !54
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
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %15, align 8, !tbaa !55
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !55
  store i32 %1, i32* %3, align 8, !tbaa !54
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !80
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
  %30 = load i32, i32* %29, align 8, !tbaa !57
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %16, i64 %28
  %34 = tail call zeroext i1 @"?insert@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #9
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !95

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #8
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn writeonly
define internal void @_GLOBAL__sub_I_windows_cuda.cpp() #7 {
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 1), align 8, !tbaa !54
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 2), align 8, !tbaa !55
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 3), align 8, !tbaa !80
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@24@A", i64 0, i32 4), align 4, !tbaa !51
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nounwind willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9, !3, i64 0}
!9 = !{!"?AUdevice_copy@Internal@Runtime@Halide@@", !3, i64 0, !3, i64 8, !3, i64 16, !4, i64 24, !4, i64 152, !4, i64 280, !3, i64 408}
!10 = !{!9, !3, i64 8}
!11 = !{!9, !3, i64 408}
!12 = distinct !{!12, !7}
!13 = !{!9, !3, i64 16}
!14 = !{!15, !16, i64 16}
!15 = !{!"?AUhalide_buffer_t@@", !3, i64 0, !16, i64 8, !16, i64 16, !3, i64 24, !17, i64 32, !20, i64 36, !16, i64 40, !16, i64 48}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"?AUhalide_type_t@@", !18, i64 0, !4, i64 1, !19, i64 2}
!18 = !{!"?AW4halide_type_code_t@@", !4, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!"int", !4, i64 0}
!21 = !{!15, !3, i64 0}
!22 = !{!17, !4, i64 1}
!23 = !{!15, !20, i64 36}
!24 = !{!15, !16, i64 40}
!25 = !{!26, !20, i64 8}
!26 = !{!"?AUhalide_dimension_t@@", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12}
!27 = !{!26, !20, i64 0}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = !{!26, !20, i64 4}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = !{i64 0, i64 8, !2, i64 8, i64 8, !2, i64 16, i64 8, !2, i64 24, i64 128, !35, i64 152, i64 128, !35, i64 280, i64 128, !35, i64 408, i64 8, !2}
!35 = !{!4, !4, i64 0}
!36 = !{!16, !16, i64 0}
!37 = distinct !{!37, !7}
!38 = !{!20, !20, i64 0}
!39 = !{!40, !16, i64 24}
!40 = !{!"?AV?$Printer@$00$0EAA@@?A0x6F7B8F51@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !41, i64 32, !4, i64 33}
!41 = !{!"bool", !4, i64 0}
!42 = !{!40, !41, i64 32}
!43 = !{!40, !16, i64 0}
!44 = !{!40, !16, i64 8}
!45 = !{i8 0, i8 2}
!46 = distinct !{!46, !7}
!47 = !{!48, !16, i64 0}
!48 = !{!"?AVContext@Cuda@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !20, i64 16}
!49 = !{!48, !16, i64 8}
!50 = !{!48, !20, i64 16}
!51 = !{!52, !20, i64 28}
!52 = !{!"?AV?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@", !53, i64 0, !20, i64 8, !16, i64 16, !20, i64 24, !20, i64 28}
!53 = !{!"?AUhalide_mutex@@", !4, i64 0}
!54 = !{!52, !20, i64 8}
!55 = !{!52, !16, i64 16}
!56 = distinct !{!56, !7}
!57 = !{!58, !20, i64 16}
!58 = !{!"?AUCachedCompilation@?$GPUCompilationCache@PEAUCUctx_st@Cuda@Internal@Runtime@Halide@@PEAUCUmod_st@2345@@Internal@Halide@@", !16, i64 0, !16, i64 8, !20, i64 16, !20, i64 20}
!59 = !{!58, !16, i64 0}
!60 = !{!58, !20, i64 20}
!61 = !{!58, !16, i64 8}
!62 = !{!63, !3, i64 0}
!63 = !{!"?AUFreeListItem@Cuda@Internal@Runtime@Halide@@", !3, i64 0, !16, i64 8, !16, i64 16, !64, i64 24, !16, i64 32}
!64 = !{!"long", !4, i64 0}
!65 = !{!63, !16, i64 32}
!66 = distinct !{!66, !7}
!67 = !{!68, !16, i64 0}
!68 = !{!"?AUhalide_device_allocation_pool@@", !16, i64 0, !16, i64 8}
!69 = !{!63, !16, i64 8}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = !{i64 0, i64 65}
!73 = !{!63, !64, i64 24}
!74 = !{!63, !16, i64 16}
!75 = !{!15, !16, i64 8}
!76 = !{!77, !16, i64 120}
!77 = !{!"?AUhalide_device_interface_t@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!78 = !{!79, !16, i64 8}
!79 = !{!"?AUhalide_device_interface_impl_t@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!80 = !{!52, !20, i64 24}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = distinct !{!83, !7}
!84 = distinct !{!84, !7}
!85 = !{!79, !16, i64 0}
!86 = distinct !{!86, !7}
!87 = !{!15, !3, i64 24}
!88 = distinct !{!88, !7}
!89 = !{!64, !64, i64 0}
!90 = distinct !{!90, !7}
!91 = distinct !{!91, !7}
!92 = !{!40, !16, i64 16}
!93 = distinct !{!93, !7}
!94 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 4, !38, i64 20, i64 4, !38}
!95 = distinct !{!95, !7}
