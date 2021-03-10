; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_cuda.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_cuda.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }
%"class.Halide::Runtime::Internal::Cuda::Context" = type { i8*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32 }

$"??$kernel_state_setup@P6APAUCUmod_st@Cuda@Internal@Runtime@Halide@@PAXPBDH@ZPAXPBDH@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NPAXPAPAXPAUCUctx_st@Cuda@1Runtime@2@AAPAUCUmod_st@4152@P6APAU64152@0PBDH@Z04H@Z" = comdat any

$"??$release_all@P6G?AW4CUresult@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Z@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAEXPAXAAP6G?AW4CUresult@Cuda@1Runtime@2@PAUCUmod_st@4152@@Z@Z" = comdat any

$"?insert@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z" = comdat any

$"?resize_table@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NH@Z" = comdat any

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

@"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA" = weak dso_local local_unnamed_addr global i32 (i32)* null, align 4
@"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA" = weak dso_local local_unnamed_addr global i32 (i32*)* null, align 4
@"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHH@ZA" = weak dso_local local_unnamed_addr global i32 (i32*, i32)* null, align 4
@"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHW4CUdevice_attribute@1234@H@ZA" = weak dso_local local_unnamed_addr global i32 (i32*, i32, i32)* null, align 4
@"?cuDeviceGetName@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PADHH@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@"?cuDeviceTotalMem@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAIH@ZA" = weak dso_local local_unnamed_addr global i32 (i32*, i32)* null, align 4
@"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@IH@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)* null, align 4
@"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 4
@"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA" = weak dso_local local_unnamed_addr global i32 ()* null, align 4
@"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@PAI@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)* null, align 4
@"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA" = weak dso_local local_unnamed_addr global i32 (i32*)* null, align 4
@"?cuModuleLoadData@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUmod_st@1234@PBX@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)* null, align 4
@"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUmod_st@1234@PBXIPAW4CUjit_option_enum@1234@PAPAX@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)* null, align 4
@"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUmod_st@1234@@ZA" = weak dso_local global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)* null, align 4
@"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUfunc_st@1234@PAUCUmod_st@1234@PBD@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)* null, align 4
@"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAII@ZA" = weak dso_local local_unnamed_addr global i32 (i32*, i32)* null, align 4
@"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA" = weak dso_local local_unnamed_addr global i32 (i32)* null, align 4
@"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@IPBXI@ZA" = weak dso_local local_unnamed_addr global i32 (i32, i8*, i32)* null, align 4
@"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAXII@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@III@ZA" = weak dso_local local_unnamed_addr global i32 (i32, i32, i32)* null, align 4
@"?cuMemcpy3D@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PBUCUDA_MEMCPY3D_st@1234@@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)* null, align 4
@"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUfunc_st@1234@IIIIIIIPAUCUstream_st@1234@PAPAX2@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)* null, align 4
@"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA" = weak dso_local local_unnamed_addr global i32 ()* null, align 4
@"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)* null, align 4
@"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)* null, align 4
@"?cuPointerGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAXHI@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, i32)* null, align 4
@"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA" = weak dso_local local_unnamed_addr global i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* null, align 4
@"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PAXA" = weak dso_local local_unnamed_addr global i8* null, align 4
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
@"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A" = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, align 4
@"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A" = weak dso_local global %struct.halide_mutex zeroinitializer, align 4
@"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A" = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, align 4
@"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A" = weak dso_local global %struct.halide_mutex zeroinitializer, align 4
@"??_C@_0GK@PKPCLCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cuda.cpp:142 Assert failed: ctx != nullptr\0A\00", comdat, align 1
@"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A" = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4
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
@cuda_allocation_pool = weak dso_local global %struct.halide_device_allocation_pool zeroinitializer, align 4
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
@"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_cuda_compute_capability, %struct.halide_device_interface_impl_t* @"?cuda_device_interface_impl@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 4
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
@"?cuda_device_interface_impl@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_sync, i32 (i8*)* @halide_cuda_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_cuda_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_cuda_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_cuda_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_cuda_wrap_device_ptr, i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_detach_device_ptr }, align 4
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
define weak dso_local void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXABUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
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
  %42 = phi i64 [ %3, %21 ], [ %47, %40 ]
  %43 = phi i64 [ %2, %21 ], [ %45, %40 ]
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXABUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %43, i64 %42) #9
  %44 = load i64, i64* %23, align 8, !tbaa !3
  %45 = add i64 %44, %43
  %46 = load i64, i64* %24, align 8, !tbaa !3
  %47 = add i64 %46, %42
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %18, align 8, !tbaa !3
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !13

51:                                               ; preds = %40, %17, %25
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?copy_memory@Internal@Runtime@Halide@@YAXABUdevice_copy@123@PAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !14
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXABUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
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
  br i1 %88, label %89, label %115

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !25
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !25
  %94 = and i32 %87, 1
  %95 = icmp eq i32 %87, 1
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  %97 = and i32 %87, -2
  br label %122

98:                                               ; preds = %122, %89
  %99 = phi i64 [ undef, %89 ], [ %148, %122 ]
  %100 = phi i64 [ 0, %89 ], [ %148, %122 ]
  %101 = phi i32 [ 0, %89 ], [ %149, %122 ]
  %102 = icmp eq i32 %94, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %101, i32 0
  %105 = load i32, i32* %104, align 4, !tbaa !26
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %101, i32 0
  %107 = load i32, i32* %106, align 4, !tbaa !26
  %108 = sub nsw i32 %105, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %101, i32 2
  %111 = load i32, i32* %110, align 4, !tbaa !28
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %109, %112
  %114 = add i64 %113, %100
  br label %115

115:                                              ; preds = %103, %98, %27
  %116 = phi i64 [ 0, %27 ], [ %99, %98 ], [ %114, %103 ]
  %117 = load i64, i64* %36, align 8, !tbaa !12
  %118 = mul i64 %116, %117
  store i64 %118, i64* %85, align 8, !tbaa !14
  %119 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %120 = load i32, i32* %119, align 4, !tbaa !24
  %121 = icmp eq i32 %87, %120
  br i1 %121, label %152, label %161

122:                                              ; preds = %122, %96
  %123 = phi i64 [ 0, %96 ], [ %148, %122 ]
  %124 = phi i32 [ 0, %96 ], [ %149, %122 ]
  %125 = phi i32 [ %97, %96 ], [ %150, %122 ]
  %126 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %124, i32 2
  %127 = load i32, i32* %126, align 4, !tbaa !28
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %124, i32 0
  %130 = load i32, i32* %129, align 4, !tbaa !26
  %131 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %124, i32 0
  %132 = load i32, i32* %131, align 4, !tbaa !26
  %133 = sub nsw i32 %130, %132
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, %128
  %136 = add i64 %135, %123
  %137 = or i32 %124, 1
  %138 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %137, i32 2
  %139 = load i32, i32* %138, align 4, !tbaa !28
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %137, i32 0
  %142 = load i32, i32* %141, align 4, !tbaa !26
  %143 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %137, i32 0
  %144 = load i32, i32* %143, align 4, !tbaa !26
  %145 = sub nsw i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %140
  %148 = add i64 %147, %136
  %149 = add nuw nsw i32 %124, 2
  %150 = add i32 %125, -2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %98, label %122, !llvm.loop !29

152:                                              ; preds = %115
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %154 = load i8, i8* %153, align 1, !tbaa !23
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %155, 7
  %157 = lshr i32 %156, 3
  %158 = icmp ne i32 %34, %157
  %159 = icmp sgt i32 %87, 16
  %160 = or i1 %159, %158
  br i1 %160, label %161, label %163

161:                                              ; preds = %152, %115
  %162 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %162, i8 0, i32 416, i1 false)
  br label %416

163:                                              ; preds = %152
  %164 = icmp eq i64 %117, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %163
  br i1 %88, label %166, label %414

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %168 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %167, align 8, !tbaa !25
  %169 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %170 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %169, align 8, !tbaa !25
  br label %261

171:                                              ; preds = %163
  %172 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %172, i8 0, i32 416, i1 false)
  br label %416

173:                                              ; preds = %304
  %174 = load i64, i64* %36, align 8, !tbaa !12
  %175 = load i64, i64* %38, align 8, !tbaa !3
  %176 = load i64, i64* %39, align 8
  %177 = icmp eq i64 %174, %175
  %178 = icmp eq i64 %174, %176
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %414

180:                                              ; preds = %173
  %181 = load i64, i64* %59, align 8, !tbaa !3
  %182 = load i64, i64* %60, align 8, !tbaa !3
  %183 = load i64, i64* %61, align 8, !tbaa !3
  %184 = load i64, i64* %62, align 8, !tbaa !3
  %185 = load i64, i64* %63, align 8, !tbaa !3
  %186 = load i64, i64* %64, align 8, !tbaa !3
  %187 = load i64, i64* %65, align 8, !tbaa !3
  %188 = load i64, i64* %66, align 8, !tbaa !3
  %189 = load i64, i64* %67, align 8, !tbaa !3
  %190 = load i64, i64* %68, align 8, !tbaa !3
  %191 = load i64, i64* %69, align 8, !tbaa !3
  %192 = load i64, i64* %70, align 8, !tbaa !3
  %193 = load i64, i64* %71, align 8, !tbaa !3
  %194 = load i64, i64* %72, align 8, !tbaa !3
  %195 = load i64, i64* %73, align 8, !tbaa !3
  %196 = load i64, i64* %74, align 8, !tbaa !3
  %197 = load i64, i64* %75, align 8, !tbaa !3
  %198 = load i64, i64* %76, align 8, !tbaa !3
  %199 = load i64, i64* %77, align 8, !tbaa !3
  %200 = load i64, i64* %78, align 8, !tbaa !3
  %201 = load i64, i64* %79, align 8, !tbaa !3
  %202 = load i64, i64* %80, align 8, !tbaa !3
  %203 = load i64, i64* %81, align 8, !tbaa !3
  %204 = load i64, i64* %82, align 8, !tbaa !3
  %205 = load i64, i64* %83, align 8, !tbaa !3
  %206 = load i64, i64* %84, align 8, !tbaa !3
  %207 = load i64, i64* %37, align 8, !tbaa !3
  %208 = load i64, i64* %40, align 8, !tbaa !3
  %209 = load i64, i64* %41, align 8, !tbaa !3
  %210 = load i64, i64* %42, align 8
  %211 = load i64, i64* %43, align 8, !tbaa !3
  %212 = load i64, i64* %44, align 8, !tbaa !3
  %213 = load i64, i64* %45, align 8, !tbaa !3
  %214 = load i64, i64* %46, align 8, !tbaa !3
  %215 = load i64, i64* %47, align 8, !tbaa !3
  %216 = load i64, i64* %48, align 8, !tbaa !3
  %217 = load i64, i64* %49, align 8, !tbaa !3
  %218 = load i64, i64* %50, align 8, !tbaa !3
  %219 = load i64, i64* %51, align 8, !tbaa !3
  %220 = load i64, i64* %52, align 8, !tbaa !3
  %221 = load i64, i64* %53, align 8, !tbaa !3
  %222 = load i64, i64* %54, align 8, !tbaa !3
  %223 = load i64, i64* %55, align 8, !tbaa !3
  %224 = load i64, i64* %56, align 8, !tbaa !3
  %225 = load i64, i64* %57, align 8, !tbaa !3
  %226 = load i64, i64* %58, align 8, !tbaa !3
  store i64 1, i64* %82, align 8, !tbaa !3
  store i64 0, i64* %83, align 8, !tbaa !3
  store i64 0, i64* %84, align 8, !tbaa !3
  %227 = mul i64 %207, %176
  %228 = icmp eq i64 %227, %209
  %229 = icmp eq i64 %227, %210
  %230 = and i1 %228, %229
  br i1 %230, label %231, label %367

231:                                              ; preds = %180
  %232 = mul i64 %208, %210
  %233 = icmp eq i64 %232, %212
  %234 = icmp eq i64 %232, %213
  %235 = and i1 %233, %234
  br i1 %235, label %236, label %367

236:                                              ; preds = %231
  %237 = mul i64 %211, %213
  %238 = icmp eq i64 %237, %215
  %239 = icmp eq i64 %237, %216
  %240 = and i1 %238, %239
  br i1 %240, label %241, label %367

241:                                              ; preds = %236
  %242 = mul i64 %214, %216
  %243 = icmp eq i64 %242, %218
  %244 = icmp eq i64 %242, %219
  %245 = and i1 %243, %244
  br i1 %245, label %246, label %367

246:                                              ; preds = %241
  %247 = mul i64 %217, %219
  %248 = icmp eq i64 %247, %221
  %249 = icmp eq i64 %247, %222
  %250 = and i1 %248, %249
  br i1 %250, label %251, label %367

251:                                              ; preds = %246
  %252 = mul i64 %220, %222
  %253 = icmp eq i64 %252, %224
  %254 = icmp eq i64 %252, %225
  %255 = and i1 %253, %254
  br i1 %255, label %256, label %367

256:                                              ; preds = %251
  %257 = mul i64 %223, %225
  %258 = icmp eq i64 %257, %181
  %259 = icmp eq i64 %257, %182
  %260 = and i1 %258, %259
  br i1 %260, label %336, label %367

261:                                              ; preds = %166, %304
  %262 = phi i32 [ 0, %166 ], [ %311, %304 ]
  %263 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 %262, i32 2
  %264 = load i32, i32* %263, align 4, !tbaa !28
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, %35
  %267 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %170, i32 %262, i32 2
  %268 = load i32, i32* %267, align 4, !tbaa !28
  %269 = sext i32 %268 to i64
  %270 = mul nsw i64 %269, %35
  %271 = icmp eq i32 %262, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %261
  %273 = icmp eq i64 %266, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %272, %279
  %275 = phi i32 [ %280, %279 ], [ 0, %272 ]
  %276 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %275
  %277 = load i64, i64* %276, align 8, !tbaa !3
  %278 = icmp ult i64 %266, %277
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = add nuw nsw i32 %275, 1
  %281 = icmp eq i32 %280, %262
  br i1 %281, label %282, label %274, !llvm.loop !30

282:                                              ; preds = %279, %274, %272, %261
  %283 = phi i32 [ 0, %261 ], [ %262, %272 ], [ %275, %274 ], [ %262, %279 ]
  %284 = icmp ugt i32 %262, %283
  br i1 %284, label %285, label %304

285:                                              ; preds = %282
  %286 = sub i32 %262, %283
  %287 = add i32 %283, 1
  %288 = and i32 %286, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %301, label %290

290:                                              ; preds = %285
  %291 = add nsw i32 %262, -1
  %292 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %291
  %293 = load i64, i64* %292, align 8, !tbaa !3
  %294 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %262
  store i64 %293, i64* %294, align 8, !tbaa !3
  %295 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %291
  %296 = load i64, i64* %295, align 8, !tbaa !3
  %297 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %262
  store i64 %296, i64* %297, align 8, !tbaa !3
  %298 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %291
  %299 = load i64, i64* %298, align 8, !tbaa !3
  %300 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %262
  store i64 %299, i64* %300, align 8, !tbaa !3
  br label %301

301:                                              ; preds = %290, %285
  %302 = phi i32 [ %291, %290 ], [ %262, %285 ]
  %303 = icmp eq i32 %262, %287
  br i1 %303, label %304, label %313

304:                                              ; preds = %301, %313, %282
  %305 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 %262, i32 1
  %306 = load i32, i32* %305, align 4, !tbaa !31
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %283
  store i64 %307, i64* %308, align 8, !tbaa !3
  %309 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %283
  store i64 %266, i64* %309, align 8, !tbaa !3
  %310 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %283
  store i64 %270, i64* %310, align 8, !tbaa !3
  %311 = add nuw nsw i32 %262, 1
  %312 = icmp eq i32 %311, %87
  br i1 %312, label %173, label %261, !llvm.loop !32

313:                                              ; preds = %301, %313
  %314 = phi i32 [ %325, %313 ], [ %302, %301 ]
  %315 = add nsw i32 %314, -1
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %315
  %317 = load i64, i64* %316, align 8, !tbaa !3
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %314
  store i64 %317, i64* %318, align 8, !tbaa !3
  %319 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %315
  %320 = load i64, i64* %319, align 8, !tbaa !3
  %321 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %314
  store i64 %320, i64* %321, align 8, !tbaa !3
  %322 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %315
  %323 = load i64, i64* %322, align 8, !tbaa !3
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %314
  store i64 %323, i64* %324, align 8, !tbaa !3
  %325 = add nsw i32 %314, -2
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %325
  %327 = load i64, i64* %326, align 8, !tbaa !3
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %315
  store i64 %327, i64* %328, align 8, !tbaa !3
  %329 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %325
  %330 = load i64, i64* %329, align 8, !tbaa !3
  %331 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %315
  store i64 %330, i64* %331, align 8, !tbaa !3
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %325
  %333 = load i64, i64* %332, align 8, !tbaa !3
  %334 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %315
  store i64 %333, i64* %334, align 8, !tbaa !3
  %335 = icmp sgt i32 %325, %283
  br i1 %335, label %313, label %304, !llvm.loop !33

336:                                              ; preds = %256, %336
  %337 = phi i64 [ %359, %336 ], [ %201, %256 ]
  %338 = phi i64 [ %360, %336 ], [ %200, %256 ]
  %339 = phi i64 [ %361, %336 ], [ %199, %256 ]
  %340 = phi i64 [ %337, %336 ], [ %198, %256 ]
  %341 = phi i64 [ %338, %336 ], [ %197, %256 ]
  %342 = phi i64 [ %339, %336 ], [ %196, %256 ]
  %343 = phi i64 [ %340, %336 ], [ %195, %256 ]
  %344 = phi i64 [ %341, %336 ], [ %194, %256 ]
  %345 = phi i64 [ %342, %336 ], [ %193, %256 ]
  %346 = phi i64 [ %343, %336 ], [ %192, %256 ]
  %347 = phi i64 [ %344, %336 ], [ %191, %256 ]
  %348 = phi i64 [ %345, %336 ], [ %190, %256 ]
  %349 = phi i64 [ %346, %336 ], [ %189, %256 ]
  %350 = phi i64 [ %347, %336 ], [ %188, %256 ]
  %351 = phi i64 [ %348, %336 ], [ %187, %256 ]
  %352 = phi i64 [ %349, %336 ], [ %186, %256 ]
  %353 = phi i64 [ %350, %336 ], [ %185, %256 ]
  %354 = phi i64 [ %351, %336 ], [ %184, %256 ]
  %355 = phi i64 [ %352, %336 ], [ %183, %256 ]
  %356 = phi i64 [ %355, %336 ], [ %226, %256 ]
  %357 = phi i64 [ 0, %336 ], [ %206, %256 ]
  %358 = phi i64 [ 0, %336 ], [ %205, %256 ]
  %359 = phi i64 [ 1, %336 ], [ %204, %256 ]
  %360 = phi i64 [ %357, %336 ], [ %203, %256 ]
  %361 = phi i64 [ %358, %336 ], [ %202, %256 ]
  %362 = phi i64 [ %353, %336 ], [ %182, %256 ]
  %363 = mul i64 %356, %362
  %364 = icmp eq i64 %363, %354
  %365 = icmp eq i64 %363, %353
  %366 = and i1 %364, %365
  br i1 %366, label %336, label %367, !llvm.loop !34

367:                                              ; preds = %336, %256, %251, %246, %241, %236, %231, %180
  %368 = phi i64 [ %226, %180 ], [ %183, %231 ], [ %186, %236 ], [ %189, %241 ], [ %192, %246 ], [ %195, %251 ], [ %198, %256 ], [ %337, %336 ]
  %369 = phi i64 [ %225, %180 ], [ %182, %231 ], [ %185, %236 ], [ %188, %241 ], [ %191, %246 ], [ %194, %251 ], [ %197, %256 ], [ %338, %336 ]
  %370 = phi i64 [ %224, %180 ], [ %181, %231 ], [ %184, %236 ], [ %187, %241 ], [ %190, %246 ], [ %193, %251 ], [ %196, %256 ], [ %339, %336 ]
  %371 = phi i64 [ %223, %180 ], [ %226, %231 ], [ %183, %236 ], [ %186, %241 ], [ %189, %246 ], [ %192, %251 ], [ %195, %256 ], [ %340, %336 ]
  %372 = phi i64 [ %222, %180 ], [ %225, %231 ], [ %182, %236 ], [ %185, %241 ], [ %188, %246 ], [ %191, %251 ], [ %194, %256 ], [ %341, %336 ]
  %373 = phi i64 [ %221, %180 ], [ %224, %231 ], [ %181, %236 ], [ %184, %241 ], [ %187, %246 ], [ %190, %251 ], [ %193, %256 ], [ %342, %336 ]
  %374 = phi i64 [ %220, %180 ], [ %223, %231 ], [ %226, %236 ], [ %183, %241 ], [ %186, %246 ], [ %189, %251 ], [ %192, %256 ], [ %343, %336 ]
  %375 = phi i64 [ %219, %180 ], [ %222, %231 ], [ %225, %236 ], [ %182, %241 ], [ %185, %246 ], [ %188, %251 ], [ %191, %256 ], [ %344, %336 ]
  %376 = phi i64 [ %218, %180 ], [ %221, %231 ], [ %224, %236 ], [ %181, %241 ], [ %184, %246 ], [ %187, %251 ], [ %190, %256 ], [ %345, %336 ]
  %377 = phi i64 [ %217, %180 ], [ %220, %231 ], [ %223, %236 ], [ %226, %241 ], [ %183, %246 ], [ %186, %251 ], [ %189, %256 ], [ %346, %336 ]
  %378 = phi i64 [ %216, %180 ], [ %219, %231 ], [ %222, %236 ], [ %225, %241 ], [ %182, %246 ], [ %185, %251 ], [ %188, %256 ], [ %347, %336 ]
  %379 = phi i64 [ %215, %180 ], [ %218, %231 ], [ %221, %236 ], [ %224, %241 ], [ %181, %246 ], [ %184, %251 ], [ %187, %256 ], [ %348, %336 ]
  %380 = phi i64 [ %214, %180 ], [ %217, %231 ], [ %220, %236 ], [ %223, %241 ], [ %226, %246 ], [ %183, %251 ], [ %186, %256 ], [ %349, %336 ]
  %381 = phi i64 [ %213, %180 ], [ %216, %231 ], [ %219, %236 ], [ %222, %241 ], [ %225, %246 ], [ %182, %251 ], [ %185, %256 ], [ %350, %336 ]
  %382 = phi i64 [ %212, %180 ], [ %215, %231 ], [ %218, %236 ], [ %221, %241 ], [ %224, %246 ], [ %181, %251 ], [ %184, %256 ], [ %351, %336 ]
  %383 = phi i64 [ %211, %180 ], [ %214, %231 ], [ %217, %236 ], [ %220, %241 ], [ %223, %246 ], [ %226, %251 ], [ %183, %256 ], [ %352, %336 ]
  %384 = phi i64 [ %210, %180 ], [ %213, %231 ], [ %216, %236 ], [ %219, %241 ], [ %222, %246 ], [ %225, %251 ], [ %182, %256 ], [ %353, %336 ]
  %385 = phi i64 [ %209, %180 ], [ %212, %231 ], [ %215, %236 ], [ %218, %241 ], [ %221, %246 ], [ %224, %251 ], [ %181, %256 ], [ %354, %336 ]
  %386 = phi i64 [ %208, %180 ], [ %211, %231 ], [ %214, %236 ], [ %217, %241 ], [ %220, %246 ], [ %223, %251 ], [ %226, %256 ], [ %355, %336 ]
  %387 = phi i64 [ %206, %180 ], [ 0, %231 ], [ 0, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %388 = phi i64 [ %205, %180 ], [ 0, %231 ], [ 0, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %389 = phi i64 [ %204, %180 ], [ 1, %231 ], [ 1, %236 ], [ 1, %241 ], [ 1, %246 ], [ 1, %251 ], [ 1, %256 ], [ 1, %336 ]
  %390 = phi i64 [ %203, %180 ], [ %206, %231 ], [ 0, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %391 = phi i64 [ %202, %180 ], [ %205, %231 ], [ 0, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %392 = phi i64 [ %201, %180 ], [ %204, %231 ], [ 1, %236 ], [ 1, %241 ], [ 1, %246 ], [ 1, %251 ], [ 1, %256 ], [ 1, %336 ]
  %393 = phi i64 [ %200, %180 ], [ %203, %231 ], [ %206, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %394 = phi i64 [ %199, %180 ], [ %202, %231 ], [ %205, %236 ], [ 0, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %395 = phi i64 [ %198, %180 ], [ %201, %231 ], [ %204, %236 ], [ 1, %241 ], [ 1, %246 ], [ 1, %251 ], [ 1, %256 ], [ 1, %336 ]
  %396 = phi i64 [ %197, %180 ], [ %200, %231 ], [ %203, %236 ], [ %206, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %397 = phi i64 [ %196, %180 ], [ %199, %231 ], [ %202, %236 ], [ %205, %241 ], [ 0, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %398 = phi i64 [ %195, %180 ], [ %198, %231 ], [ %201, %236 ], [ %204, %241 ], [ 1, %246 ], [ 1, %251 ], [ 1, %256 ], [ 1, %336 ]
  %399 = phi i64 [ %194, %180 ], [ %197, %231 ], [ %200, %236 ], [ %203, %241 ], [ %206, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %400 = phi i64 [ %193, %180 ], [ %196, %231 ], [ %199, %236 ], [ %202, %241 ], [ %205, %246 ], [ 0, %251 ], [ 0, %256 ], [ 0, %336 ]
  %401 = phi i64 [ %192, %180 ], [ %195, %231 ], [ %198, %236 ], [ %201, %241 ], [ %204, %246 ], [ 1, %251 ], [ 1, %256 ], [ 1, %336 ]
  %402 = phi i64 [ %191, %180 ], [ %194, %231 ], [ %197, %236 ], [ %200, %241 ], [ %203, %246 ], [ %206, %251 ], [ 0, %256 ], [ 0, %336 ]
  %403 = phi i64 [ %190, %180 ], [ %193, %231 ], [ %196, %236 ], [ %199, %241 ], [ %202, %246 ], [ %205, %251 ], [ 0, %256 ], [ 0, %336 ]
  %404 = phi i64 [ %189, %180 ], [ %192, %231 ], [ %195, %236 ], [ %198, %241 ], [ %201, %246 ], [ %204, %251 ], [ 1, %256 ], [ 1, %336 ]
  %405 = phi i64 [ %188, %180 ], [ %191, %231 ], [ %194, %236 ], [ %197, %241 ], [ %200, %246 ], [ %203, %251 ], [ %206, %256 ], [ 0, %336 ]
  %406 = phi i64 [ %187, %180 ], [ %190, %231 ], [ %193, %236 ], [ %196, %241 ], [ %199, %246 ], [ %202, %251 ], [ %205, %256 ], [ 0, %336 ]
  %407 = phi i64 [ %186, %180 ], [ %189, %231 ], [ %192, %236 ], [ %195, %241 ], [ %198, %246 ], [ %201, %251 ], [ %204, %256 ], [ 1, %336 ]
  %408 = phi i64 [ %185, %180 ], [ %188, %231 ], [ %191, %236 ], [ %194, %241 ], [ %197, %246 ], [ %200, %251 ], [ %203, %256 ], [ %357, %336 ]
  %409 = phi i64 [ %184, %180 ], [ %187, %231 ], [ %190, %236 ], [ %193, %241 ], [ %196, %246 ], [ %199, %251 ], [ %202, %256 ], [ %358, %336 ]
  %410 = phi i64 [ %183, %180 ], [ %186, %231 ], [ %189, %236 ], [ %192, %241 ], [ %195, %246 ], [ %198, %251 ], [ %201, %256 ], [ %359, %336 ]
  %411 = phi i64 [ %182, %180 ], [ %185, %231 ], [ %188, %236 ], [ %191, %241 ], [ %194, %246 ], [ %197, %251 ], [ %200, %256 ], [ %360, %336 ]
  %412 = phi i64 [ %181, %180 ], [ %184, %231 ], [ %187, %236 ], [ %190, %241 ], [ %193, %246 ], [ %196, %251 ], [ %199, %256 ], [ %361, %336 ]
  %413 = phi i64 [ %227, %180 ], [ %232, %231 ], [ %237, %236 ], [ %242, %241 ], [ %247, %246 ], [ %252, %251 ], [ %257, %256 ], [ %363, %336 ]
  store i64 %413, i64* %36, align 8, !tbaa !12
  store i64 %386, i64* %37, align 8, !tbaa !3
  store i64 %385, i64* %38, align 8, !tbaa !3
  store i64 %384, i64* %39, align 8, !tbaa !3
  store i64 %383, i64* %40, align 8, !tbaa !3
  store i64 %382, i64* %41, align 8, !tbaa !3
  store i64 %381, i64* %42, align 8, !tbaa !3
  store i64 %380, i64* %43, align 8, !tbaa !3
  store i64 %379, i64* %44, align 8, !tbaa !3
  store i64 %378, i64* %45, align 8, !tbaa !3
  store i64 %377, i64* %46, align 8, !tbaa !3
  store i64 %376, i64* %47, align 8, !tbaa !3
  store i64 %375, i64* %48, align 8, !tbaa !3
  store i64 %374, i64* %49, align 8, !tbaa !3
  store i64 %373, i64* %50, align 8, !tbaa !3
  store i64 %372, i64* %51, align 8, !tbaa !3
  store i64 %371, i64* %52, align 8, !tbaa !3
  store i64 %370, i64* %53, align 8, !tbaa !3
  store i64 %369, i64* %54, align 8, !tbaa !3
  store i64 %368, i64* %55, align 8, !tbaa !3
  store i64 %412, i64* %56, align 8, !tbaa !3
  store i64 %411, i64* %57, align 8, !tbaa !3
  store i64 %410, i64* %58, align 8, !tbaa !3
  store i64 %409, i64* %59, align 8, !tbaa !3
  store i64 %408, i64* %60, align 8, !tbaa !3
  store i64 %407, i64* %61, align 8, !tbaa !3
  store i64 %406, i64* %62, align 8, !tbaa !3
  store i64 %405, i64* %63, align 8, !tbaa !3
  store i64 %404, i64* %64, align 8, !tbaa !3
  store i64 %403, i64* %65, align 8, !tbaa !3
  store i64 %402, i64* %66, align 8, !tbaa !3
  store i64 %401, i64* %67, align 8, !tbaa !3
  store i64 %400, i64* %68, align 8, !tbaa !3
  store i64 %399, i64* %69, align 8, !tbaa !3
  store i64 %398, i64* %70, align 8, !tbaa !3
  store i64 %397, i64* %71, align 8, !tbaa !3
  store i64 %396, i64* %72, align 8, !tbaa !3
  store i64 %395, i64* %73, align 8, !tbaa !3
  store i64 %394, i64* %74, align 8, !tbaa !3
  store i64 %393, i64* %75, align 8, !tbaa !3
  store i64 %392, i64* %76, align 8, !tbaa !3
  store i64 %391, i64* %77, align 8, !tbaa !3
  store i64 %390, i64* %78, align 8, !tbaa !3
  store i64 %389, i64* %79, align 8, !tbaa !3
  store i64 %388, i64* %80, align 8, !tbaa !3
  store i64 %387, i64* %81, align 8, !tbaa !3
  br label %414

414:                                              ; preds = %367, %165, %173
  %415 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %415, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !tbaa.struct !36
  br label %416

416:                                              ; preds = %414, %171, %161
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_cuda_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@BCLCHHLA@nvcuda?4dll?$AA@", i32 0, i32 0)) #8
  store i8* %7, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %8 = tail call i8* @halide_get_library_symbol(i8* %7, i8* %1) #8
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8* [ %8, %6 ], [ %4, %2 ]
  ret i8* %10
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?load_libcuda@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %3 = icmp eq i32 (i32)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@BOJKOMLJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i32 0, i32 0)) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i32 1024) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !37
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i32 0, i32 0)) #8
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %6, i8** bitcast (i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA" to i8**), align 4, !tbaa !38
  %28 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@", i32 0, i32 0)) #8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = tail call i8* @malloc(i32 1024) #8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %34, align 1, !tbaa !37
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8* [ %34, %33 ], [ null, %30 ]
  %37 = tail call i8* @halide_string_to_string(i8* %31, i8* %36, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %36, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@FHDBPPFB@cuDeviceGetCount?$AA@", i32 0, i32 0)) #8
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %36, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %32, label %40, label %41

40:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %28, i8** bitcast (i32 (i32*)** @"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA" to i8**), align 4, !tbaa !38
  %50 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@", i32 0, i32 0)) #8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = tail call i8* @malloc(i32 1024) #8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023
  store i8 0, i8* %56, align 1, !tbaa !37
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i8* [ %56, %55 ], [ null, %52 ]
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %58, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HNBJNLLN@cuDeviceGet?$AA@", i32 0, i32 0)) #8
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %54, label %62, label %63

62:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %50, i8** bitcast (i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHH@ZA" to i8**), align 4, !tbaa !38
  %72 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@", i32 0, i32 0)) #8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = tail call i8* @malloc(i32 1024) #8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %78, align 1, !tbaa !37
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %78, %77 ], [ null, %74 ]
  %81 = tail call i8* @halide_string_to_string(i8* %75, i8* %80, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PDOGFPNC@cuDeviceGetAttribute?$AA@", i32 0, i32 0)) #8
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %76, label %84, label %85

84:                                               ; preds = %79
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %72, i8** bitcast (i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHW4CUdevice_attribute@1234@H@ZA" to i8**), align 4, !tbaa !38
  %94 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@", i32 0, i32 0)) #8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = tail call i8* @malloc(i32 1024) #8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds i8, i8* %97, i32 1023
  store i8 0, i8* %100, align 1, !tbaa !37
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i8* [ %100, %99 ], [ null, %96 ]
  %103 = tail call i8* @halide_string_to_string(i8* %97, i8* %102, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %104 = tail call i8* @halide_string_to_string(i8* %103, i8* %102, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@OHKMFJNA@cuDeviceGetName?$AA@", i32 0, i32 0)) #8
  %105 = tail call i8* @halide_string_to_string(i8* %104, i8* %102, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %98, label %106, label %107

106:                                              ; preds = %101
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %94, i8** bitcast (i32 (i8*, i32, i32)** @"?cuDeviceGetName@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PADHH@ZA" to i8**), align 4, !tbaa !38
  %116 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@", i32 0, i32 0)) #8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = tail call i8* @malloc(i32 1024) #8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds i8, i8* %119, i32 1023
  store i8 0, i8* %122, align 1, !tbaa !37
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi i8* [ %122, %121 ], [ null, %118 ]
  %125 = tail call i8* @halide_string_to_string(i8* %119, i8* %124, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %126 = tail call i8* @halide_string_to_string(i8* %125, i8* %124, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@PMLCNFHH@cuDeviceTotalMem?$AA@", i32 0, i32 0)) #8
  %127 = tail call i8* @halide_string_to_string(i8* %126, i8* %124, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %120, label %128, label %129

128:                                              ; preds = %123
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %116, i8** bitcast (i32 (i32*, i32)** @"?cuDeviceTotalMem@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAIH@ZA" to i8**), align 4, !tbaa !38
  %138 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@", i32 0, i32 0)) #8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = tail call i8* @malloc(i32 1024) #8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, i8* %141, i32 1023
  store i8 0, i8* %144, align 1, !tbaa !37
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i8* [ %144, %143 ], [ null, %140 ]
  %147 = tail call i8* @halide_string_to_string(i8* %141, i8* %146, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %148 = tail call i8* @halide_string_to_string(i8* %147, i8* %146, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IHFIKMAB@cuCtxCreate_v2?$AA@", i32 0, i32 0)) #8
  %149 = tail call i8* @halide_string_to_string(i8* %148, i8* %146, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %142, label %150, label %151

150:                                              ; preds = %145
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %138, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@IH@ZA" to i8**), align 4, !tbaa !38
  %160 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@", i32 0, i32 0)) #8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = tail call i8* @malloc(i32 1024) #8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds i8, i8* %163, i32 1023
  store i8 0, i8* %166, align 1, !tbaa !37
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i8* [ %166, %165 ], [ null, %162 ]
  %169 = tail call i8* @halide_string_to_string(i8* %163, i8* %168, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %170 = tail call i8* @halide_string_to_string(i8* %169, i8* %168, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@LLFLLOLN@cuCtxDestroy_v2?$AA@", i32 0, i32 0)) #8
  %171 = tail call i8* @halide_string_to_string(i8* %170, i8* %168, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %164, label %172, label %173

172:                                              ; preds = %167
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %160, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA" to i8**), align 4, !tbaa !38
  %182 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@", i32 0, i32 0)) #8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %203

184:                                              ; preds = %181
  %185 = tail call i8* @malloc(i32 1024) #8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, i8* %185, i32 1023
  store i8 0, i8* %188, align 1, !tbaa !37
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i8* [ %188, %187 ], [ null, %184 ]
  %191 = tail call i8* @halide_string_to_string(i8* %185, i8* %190, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %192 = tail call i8* @halide_string_to_string(i8* %191, i8* %190, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@NEDHAKMB@cuProfilerStop?$AA@", i32 0, i32 0)) #8
  %193 = tail call i8* @halide_string_to_string(i8* %192, i8* %190, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %186, label %194, label %195

194:                                              ; preds = %189
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %182, i8** bitcast (i32 ()** @"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA" to i8**), align 4, !tbaa !38
  %204 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@", i32 0, i32 0)) #8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  %207 = tail call i8* @malloc(i32 1024) #8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, i8* %207, i32 1023
  store i8 0, i8* %210, align 1, !tbaa !37
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i8* [ %210, %209 ], [ null, %206 ]
  %213 = tail call i8* @halide_string_to_string(i8* %207, i8* %212, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %214 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@EBMOCPLL@cuCtxGetApiVersion?$AA@", i32 0, i32 0)) #8
  %215 = tail call i8* @halide_string_to_string(i8* %214, i8* %212, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %208, label %216, label %217

216:                                              ; preds = %211
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %204, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@PAI@ZA" to i8**), align 4, !tbaa !38
  %226 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@", i32 0, i32 0)) #8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = tail call i8* @malloc(i32 1024) #8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds i8, i8* %229, i32 1023
  store i8 0, i8* %232, align 1, !tbaa !37
  br label %233

233:                                              ; preds = %231, %228
  %234 = phi i8* [ %232, %231 ], [ null, %228 ]
  %235 = tail call i8* @halide_string_to_string(i8* %229, i8* %234, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %236 = tail call i8* @halide_string_to_string(i8* %235, i8* %234, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LOBLDFFE@cuCtxGetDevice?$AA@", i32 0, i32 0)) #8
  %237 = tail call i8* @halide_string_to_string(i8* %236, i8* %234, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %230, label %238, label %239

238:                                              ; preds = %233
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %226, i8** bitcast (i32 (i32*)** @"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA" to i8**), align 4, !tbaa !38
  %248 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@", i32 0, i32 0)) #8
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = tail call i8* @malloc(i32 1024) #8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, i8* %251, i32 1023
  store i8 0, i8* %254, align 1, !tbaa !37
  br label %255

255:                                              ; preds = %253, %250
  %256 = phi i8* [ %254, %253 ], [ null, %250 ]
  %257 = tail call i8* @halide_string_to_string(i8* %251, i8* %256, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %258 = tail call i8* @halide_string_to_string(i8* %257, i8* %256, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@MOHBGPBC@cuModuleLoadData?$AA@", i32 0, i32 0)) #8
  %259 = tail call i8* @halide_string_to_string(i8* %258, i8* %256, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %252, label %260, label %261

260:                                              ; preds = %255
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %248, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*)** @"?cuModuleLoadData@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUmod_st@1234@PBX@ZA" to i8**), align 4, !tbaa !38
  %270 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@", i32 0, i32 0)) #8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = tail call i8* @malloc(i32 1024) #8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, i8* %273, i32 1023
  store i8 0, i8* %276, align 1, !tbaa !37
  br label %277

277:                                              ; preds = %275, %272
  %278 = phi i8* [ %276, %275 ], [ null, %272 ]
  %279 = tail call i8* @halide_string_to_string(i8* %273, i8* %278, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %280 = tail call i8* @halide_string_to_string(i8* %279, i8* %278, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DEEOHOLO@cuModuleLoadDataEx?$AA@", i32 0, i32 0)) #8
  %281 = tail call i8* @halide_string_to_string(i8* %280, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %274, label %282, label %283

282:                                              ; preds = %277
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %270, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUmod_st@1234@PBXIPAW4CUjit_option_enum@1234@PAPAX@ZA" to i8**), align 4, !tbaa !38
  %292 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@", i32 0, i32 0)) #8
  %293 = icmp eq i8* %292, null
  br i1 %293, label %294, label %313

294:                                              ; preds = %291
  %295 = tail call i8* @malloc(i32 1024) #8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, i8* %295, i32 1023
  store i8 0, i8* %298, align 1, !tbaa !37
  br label %299

299:                                              ; preds = %297, %294
  %300 = phi i8* [ %298, %297 ], [ null, %294 ]
  %301 = tail call i8* @halide_string_to_string(i8* %295, i8* %300, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %302 = tail call i8* @halide_string_to_string(i8* %301, i8* %300, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FDOFKBJI@cuModuleUnload?$AA@", i32 0, i32 0)) #8
  %303 = tail call i8* @halide_string_to_string(i8* %302, i8* %300, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %296, label %304, label %305

304:                                              ; preds = %299
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %292, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUmod_st@1234@@ZA" to i8**), align 4, !tbaa !38
  %314 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@", i32 0, i32 0)) #8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %316, label %335

316:                                              ; preds = %313
  %317 = tail call i8* @malloc(i32 1024) #8
  %318 = icmp eq i8* %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, i8* %317, i32 1023
  store i8 0, i8* %320, align 1, !tbaa !37
  br label %321

321:                                              ; preds = %319, %316
  %322 = phi i8* [ %320, %319 ], [ null, %316 ]
  %323 = tail call i8* @halide_string_to_string(i8* %317, i8* %322, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %324 = tail call i8* @halide_string_to_string(i8* %323, i8* %322, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@NDFPCGHH@cuModuleGetFunction?$AA@", i32 0, i32 0)) #8
  %325 = tail call i8* @halide_string_to_string(i8* %324, i8* %322, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %318, label %326, label %327

326:                                              ; preds = %321
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %314, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUfunc_st@1234@PAUCUmod_st@1234@PBD@ZA" to i8**), align 4, !tbaa !38
  %336 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@", i32 0, i32 0)) #8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  %339 = tail call i8* @malloc(i32 1024) #8
  %340 = icmp eq i8* %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds i8, i8* %339, i32 1023
  store i8 0, i8* %342, align 1, !tbaa !37
  br label %343

343:                                              ; preds = %341, %338
  %344 = phi i8* [ %342, %341 ], [ null, %338 ]
  %345 = tail call i8* @halide_string_to_string(i8* %339, i8* %344, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %346 = tail call i8* @halide_string_to_string(i8* %345, i8* %344, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@NJJMILKN@cuMemAlloc_v2?$AA@", i32 0, i32 0)) #8
  %347 = tail call i8* @halide_string_to_string(i8* %346, i8* %344, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %340, label %348, label %349

348:                                              ; preds = %343
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %336, i8** bitcast (i32 (i32*, i32)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAII@ZA" to i8**), align 4, !tbaa !38
  %358 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@", i32 0, i32 0)) #8
  %359 = icmp eq i8* %358, null
  br i1 %359, label %360, label %379

360:                                              ; preds = %357
  %361 = tail call i8* @malloc(i32 1024) #8
  %362 = icmp eq i8* %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, i8* %361, i32 1023
  store i8 0, i8* %364, align 1, !tbaa !37
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i8* [ %364, %363 ], [ null, %360 ]
  %367 = tail call i8* @halide_string_to_string(i8* %361, i8* %366, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %368 = tail call i8* @halide_string_to_string(i8* %367, i8* %366, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@MLOJDHPN@cuMemFree_v2?$AA@", i32 0, i32 0)) #8
  %369 = tail call i8* @halide_string_to_string(i8* %368, i8* %366, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %362, label %370, label %371

370:                                              ; preds = %365
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %358, i8** bitcast (i32 (i32)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA" to i8**), align 4, !tbaa !38
  %380 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@", i32 0, i32 0)) #8
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %401

382:                                              ; preds = %379
  %383 = tail call i8* @malloc(i32 1024) #8
  %384 = icmp eq i8* %383, null
  br i1 %384, label %387, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %383, i32 1023
  store i8 0, i8* %386, align 1, !tbaa !37
  br label %387

387:                                              ; preds = %385, %382
  %388 = phi i8* [ %386, %385 ], [ null, %382 ]
  %389 = tail call i8* @halide_string_to_string(i8* %383, i8* %388, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %390 = tail call i8* @halide_string_to_string(i8* %389, i8* %388, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JOOHFLNH@cuMemcpyHtoD_v2?$AA@", i32 0, i32 0)) #8
  %391 = tail call i8* @halide_string_to_string(i8* %390, i8* %388, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %384, label %392, label %393

392:                                              ; preds = %387
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %380, i8** bitcast (i32 (i32, i8*, i32)** @"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@IPBXI@ZA" to i8**), align 4, !tbaa !38
  %402 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@", i32 0, i32 0)) #8
  %403 = icmp eq i8* %402, null
  br i1 %403, label %404, label %423

404:                                              ; preds = %401
  %405 = tail call i8* @malloc(i32 1024) #8
  %406 = icmp eq i8* %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds i8, i8* %405, i32 1023
  store i8 0, i8* %408, align 1, !tbaa !37
  br label %409

409:                                              ; preds = %407, %404
  %410 = phi i8* [ %408, %407 ], [ null, %404 ]
  %411 = tail call i8* @halide_string_to_string(i8* %405, i8* %410, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %412 = tail call i8* @halide_string_to_string(i8* %411, i8* %410, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLIKDJJ@cuMemcpyDtoH_v2?$AA@", i32 0, i32 0)) #8
  %413 = tail call i8* @halide_string_to_string(i8* %412, i8* %410, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %406, label %414, label %415

414:                                              ; preds = %409
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %402, i8** bitcast (i32 (i8*, i32, i32)** @"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAXII@ZA" to i8**), align 4, !tbaa !38
  %424 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@", i32 0, i32 0)) #8
  %425 = icmp eq i8* %424, null
  br i1 %425, label %426, label %445

426:                                              ; preds = %423
  %427 = tail call i8* @malloc(i32 1024) #8
  %428 = icmp eq i8* %427, null
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds i8, i8* %427, i32 1023
  store i8 0, i8* %430, align 1, !tbaa !37
  br label %431

431:                                              ; preds = %429, %426
  %432 = phi i8* [ %430, %429 ], [ null, %426 ]
  %433 = tail call i8* @halide_string_to_string(i8* %427, i8* %432, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %434 = tail call i8* @halide_string_to_string(i8* %433, i8* %432, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MJEIEOJI@cuMemcpyDtoD_v2?$AA@", i32 0, i32 0)) #8
  %435 = tail call i8* @halide_string_to_string(i8* %434, i8* %432, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %428, label %436, label %437

436:                                              ; preds = %431
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %424, i8** bitcast (i32 (i32, i32, i32)** @"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@III@ZA" to i8**), align 4, !tbaa !38
  %446 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@", i32 0, i32 0)) #8
  %447 = icmp eq i8* %446, null
  br i1 %447, label %448, label %467

448:                                              ; preds = %445
  %449 = tail call i8* @malloc(i32 1024) #8
  %450 = icmp eq i8* %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds i8, i8* %449, i32 1023
  store i8 0, i8* %452, align 1, !tbaa !37
  br label %453

453:                                              ; preds = %451, %448
  %454 = phi i8* [ %452, %451 ], [ null, %448 ]
  %455 = tail call i8* @halide_string_to_string(i8* %449, i8* %454, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %456 = tail call i8* @halide_string_to_string(i8* %455, i8* %454, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@GDMEINBN@cuMemcpy3D_v2?$AA@", i32 0, i32 0)) #8
  %457 = tail call i8* @halide_string_to_string(i8* %456, i8* %454, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %450, label %458, label %459

458:                                              ; preds = %453
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %446, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUDA_MEMCPY3D_st"*)** @"?cuMemcpy3D@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PBUCUDA_MEMCPY3D_st@1234@@ZA" to i8**), align 4, !tbaa !38
  %468 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@", i32 0, i32 0)) #8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %489

470:                                              ; preds = %467
  %471 = tail call i8* @malloc(i32 1024) #8
  %472 = icmp eq i8* %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, i8* %471, i32 1023
  store i8 0, i8* %474, align 1, !tbaa !37
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i8* [ %474, %473 ], [ null, %470 ]
  %477 = tail call i8* @halide_string_to_string(i8* %471, i8* %476, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %478 = tail call i8* @halide_string_to_string(i8* %477, i8* %476, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GGFCGLBF@cuLaunchKernel?$AA@", i32 0, i32 0)) #8
  %479 = tail call i8* @halide_string_to_string(i8* %478, i8* %476, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %472, label %480, label %481

480:                                              ; preds = %475
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %468, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUfunc_st@1234@IIIIIIIPAUCUstream_st@1234@PAPAX2@ZA" to i8**), align 4, !tbaa !38
  %490 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@", i32 0, i32 0)) #8
  %491 = icmp eq i8* %490, null
  br i1 %491, label %492, label %511

492:                                              ; preds = %489
  %493 = tail call i8* @malloc(i32 1024) #8
  %494 = icmp eq i8* %493, null
  br i1 %494, label %497, label %495

495:                                              ; preds = %492
  %496 = getelementptr inbounds i8, i8* %493, i32 1023
  store i8 0, i8* %496, align 1, !tbaa !37
  br label %497

497:                                              ; preds = %495, %492
  %498 = phi i8* [ %496, %495 ], [ null, %492 ]
  %499 = tail call i8* @halide_string_to_string(i8* %493, i8* %498, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %500 = tail call i8* @halide_string_to_string(i8* %499, i8* %498, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LPDDEHBO@cuCtxSynchronize?$AA@", i32 0, i32 0)) #8
  %501 = tail call i8* @halide_string_to_string(i8* %500, i8* %498, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %494, label %502, label %503

502:                                              ; preds = %497
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %490, i8** bitcast (i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA" to i8**), align 4, !tbaa !38
  %512 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@", i32 0, i32 0)) #8
  %513 = icmp eq i8* %512, null
  br i1 %513, label %514, label %533

514:                                              ; preds = %511
  %515 = tail call i8* @malloc(i32 1024) #8
  %516 = icmp eq i8* %515, null
  br i1 %516, label %519, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, i8* %515, i32 1023
  store i8 0, i8* %518, align 1, !tbaa !37
  br label %519

519:                                              ; preds = %517, %514
  %520 = phi i8* [ %518, %517 ], [ null, %514 ]
  %521 = tail call i8* @halide_string_to_string(i8* %515, i8* %520, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %522 = tail call i8* @halide_string_to_string(i8* %521, i8* %520, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@LCJOPGOL@cuCtxPushCurrent_v2?$AA@", i32 0, i32 0)) #8
  %523 = tail call i8* @halide_string_to_string(i8* %522, i8* %520, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %516, label %524, label %525

524:                                              ; preds = %519
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %512, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA" to i8**), align 4, !tbaa !38
  %534 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@", i32 0, i32 0)) #8
  %535 = icmp eq i8* %534, null
  br i1 %535, label %536, label %555

536:                                              ; preds = %533
  %537 = tail call i8* @malloc(i32 1024) #8
  %538 = icmp eq i8* %537, null
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds i8, i8* %537, i32 1023
  store i8 0, i8* %540, align 1, !tbaa !37
  br label %541

541:                                              ; preds = %539, %536
  %542 = phi i8* [ %540, %539 ], [ null, %536 ]
  %543 = tail call i8* @halide_string_to_string(i8* %537, i8* %542, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %544 = tail call i8* @halide_string_to_string(i8* %543, i8* %542, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IAIJBFOB@cuCtxPopCurrent_v2?$AA@", i32 0, i32 0)) #8
  %545 = tail call i8* @halide_string_to_string(i8* %544, i8* %542, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %538, label %546, label %547

546:                                              ; preds = %541
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %534, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA" to i8**), align 4, !tbaa !38
  %556 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@", i32 0, i32 0)) #8
  %557 = icmp eq i8* %556, null
  br i1 %557, label %558, label %577

558:                                              ; preds = %555
  %559 = tail call i8* @malloc(i32 1024) #8
  %560 = icmp eq i8* %559, null
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, i8* %559, i32 1023
  store i8 0, i8* %562, align 1, !tbaa !37
  br label %563

563:                                              ; preds = %561, %558
  %564 = phi i8* [ %562, %561 ], [ null, %558 ]
  %565 = tail call i8* @halide_string_to_string(i8* %559, i8* %564, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CDAFGFJB@CUDA?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #8
  %566 = tail call i8* @halide_string_to_string(i8* %565, i8* %564, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@ECOONMIL@cuPointerGetAttribute?$AA@", i32 0, i32 0)) #8
  %567 = tail call i8* @halide_string_to_string(i8* %566, i8* %564, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %560, label %568, label %569

568:                                              ; preds = %563
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i8* %556, i8** bitcast (i32 (i8*, i32, i32)** @"?cuPointerGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAXHI@ZA" to i8**), align 4, !tbaa !38
  %578 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@OKHEPNII@cuStreamSynchronize?$AA@", i32 0, i32 0)) #8
  store i8* %578, i8** bitcast (i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA" to i8**), align 4, !tbaa !38
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?lib_cuda_lock@Cuda@Internal@Runtime@Halide@@3DC", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @"?load_libcuda@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #9
  br label %9

9:                                                ; preds = %8, %5
  store atomic volatile i8 0, i8* @"?lib_cuda_lock@Cuda@Internal@Runtime@Halide@@3DC" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i1 zeroext %2) local_unnamed_addr #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %5 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@PKPCLCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  %10 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  br i1 %2, label %13, label %12

12:                                               ; preds = %11
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !38
  br label %27

13:                                               ; preds = %11
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !38
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @"?create_cuda_context@Cuda@Internal@Runtime@Halide@@YA?AW4CUresult@1234@PAXPAPAUCUctx_st@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !38
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %20, %19 ], [ %14, %13 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %22, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4, align 4, !tbaa !38
  br label %25

24:                                               ; preds = %16
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  br label %27

25:                                               ; preds = %21, %7
  %26 = phi %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* [ %23, %21 ], [ %9, %7 ]
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %24, %25, %12
  %28 = phi i32 [ 0, %25 ], [ %17, %24 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret i32 %28
}

; Function Attrs: nounwind
define weak dso_local i32 @"?create_cuda_context@Cuda@Internal@Runtime@Halide@@YA?AW4CUresult@1234@PAXPAPAUCUctx_st@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = alloca i32, align 4
  %10 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  tail call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #9
  %12 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %13 = icmp eq i32 (i32)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = tail call i8* @malloc(i32 1024) #8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@", i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %15, i32 1023
  store i8 0, i8* %20, align 1, !tbaa !37
  %21 = tail call i8* @halide_string_to_string(i8* nonnull %15, i8* nonnull %20, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@LDGILDHH@Could?5not?5find?5cuda?5system?5libra@", i32 0, i32 0)) #8
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
  %30 = tail call x86_stdcallcc i32 %12(i32 0) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = tail call i8* @malloc(i32 1024) #8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %33, i32 1023
  store i8 0, i8* %36, align 1, !tbaa !37
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i8* [ %36, %35 ], [ null, %32 ]
  %39 = tail call i8* @halide_string_to_string(i8* %33, i8* %38, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@LJMBJJGG@CUDA?3?5cuInit?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %40 = tail call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %30) #9
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i8* @halide_string_to_string(i8* %39, i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %46

44:                                               ; preds = %37
  %45 = tail call i8* @halide_string_to_string(i8* %39, i8* %38, i8* nonnull %40) #8
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi i8* [ %45, %44 ], [ %43, %42 ]
  br i1 %34, label %48, label %49

48:                                               ; preds = %46
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  store i32 0, i32* %3, align 4, !tbaa !40
  %59 = load i32 (i32*)*, i32 (i32*)** @"?cuDeviceGetCount@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA", align 4, !tbaa !38
  %60 = call x86_stdcallcc i32 %59(i32* nonnull %3) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %102, label %62

62:                                               ; preds = %57
  %63 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %63) #10
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3
  store i8* %0, i8** %64, align 4, !tbaa !41
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4
  store i8 1, i8* %65, align 4, !tbaa !44
  %66 = call i8* @malloc(i32 1024) #8
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0
  store i8* %66, i8** %67, align 4, !tbaa !45
  %68 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1
  store i8* %66, i8** %68, align 4, !tbaa !46
  %69 = icmp eq i8* %66, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds i8, i8* %66, i32 1023
  store i8 0, i8* %71, align 1, !tbaa !37
  br label %72

72:                                               ; preds = %62, %70
  %73 = phi i8* [ %71, %70 ], [ null, %62 ]
  %74 = call i8* @halide_string_to_string(i8* %66, i8* %73, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HDKFNAIB@CUDA?3?5cuGetDeviceCount?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %75 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %60) #9
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i8* @halide_string_to_string(i8* %74, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %81

79:                                               ; preds = %72
  %80 = call i8* @halide_string_to_string(i8* %74, i8* %73, i8* nonnull %75) #8
  br label %81

81:                                               ; preds = %77, %79
  %82 = phi i8* [ %80, %79 ], [ %78, %77 ]
  %83 = load i8*, i8** %67, align 4, !tbaa !45
  %84 = icmp eq i8* %83, null
  %85 = load i8*, i8** %64, align 4, !tbaa !41
  br i1 %84, label %86, label %87

86:                                               ; preds = %81
  call void @halide_error(i8* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %96

87:                                               ; preds = %81
  %88 = ptrtoint i8* %82 to i32
  %89 = ptrtoint i8* %83 to i32
  %90 = sub i32 1, %89
  %91 = add i32 %90, %88
  %92 = sext i32 %91 to i64
  %93 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %85, i8* nonnull %83, i64 %92) #8
  %94 = load i8*, i8** %67, align 4, !tbaa !45
  %95 = load i8*, i8** %64, align 4, !tbaa !41
  call void @halide_error(i8* %95, i8* %94) #8
  br label %96

96:                                               ; preds = %87, %86
  %97 = load i8, i8* %65, align 4, !tbaa !44, !range !47
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %67, align 4, !tbaa !45
  call void @free(i8* %100) #8
  br label %101

101:                                              ; preds = %96, %99
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %63) #10
  br label %249

102:                                              ; preds = %57
  %103 = load i32, i32* %3, align 4, !tbaa !40
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@MNIIBKJA@CUDA?3?5No?5devices?5available?$AA@", i32 0, i32 0)) #8
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
  %124 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHH@ZA", align 4, !tbaa !38
  %125 = call x86_stdcallcc i32 %124(i32* nonnull %5, i32 %121) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %119) #10
  store i32 0, i32* %6, align 4, !tbaa !40
  %128 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHW4CUdevice_attribute@1234@H@ZA", align 4, !tbaa !38
  %129 = load i32, i32* %5, align 4, !tbaa !40
  %130 = call x86_stdcallcc i32 %128(i32* nonnull %6, i32 16, i32 %129) #8
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
  %142 = load i32, i32* %3, align 4, !tbaa !40
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %120, label %144, !llvm.loop !48

144:                                              ; preds = %138, %115, %106
  %145 = phi i32 [ %114, %106 ], [ -1, %115 ], [ %139, %138 ]
  %146 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %146) #10
  %147 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuDeviceGet@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHH@ZA", align 4, !tbaa !38
  %148 = call x86_stdcallcc i32 %147(i32* nonnull %7, i32 %145) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@CLPLMAAO@CUDA?3?5Failed?5to?5get?5device?6?$AA@", i32 0, i32 0)) #8
  br label %247

151:                                              ; preds = %144
  %152 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**, i32, i32)** @"?cuCtxCreate@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@IH@ZA", align 4, !tbaa !38
  %153 = load i32, i32* %7, align 4, !tbaa !40
  %154 = call x86_stdcallcc i32 %152(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, i32 0, i32 %153) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %197, label %156

156:                                              ; preds = %151
  %157 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %154) #9
  %158 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %158) #10
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %159, align 4, !tbaa !41
  %160 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %160, align 4, !tbaa !44
  %161 = call i8* @malloc(i32 1024) #8
  %162 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %161, i8** %162, align 4, !tbaa !45
  %163 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %161, i8** %163, align 4, !tbaa !46
  %164 = icmp eq i8* %161, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %156
  %166 = getelementptr inbounds i8, i8* %161, i32 1023
  store i8 0, i8* %166, align 1, !tbaa !37
  br label %167

167:                                              ; preds = %156, %165
  %168 = phi i8* [ %166, %165 ], [ null, %156 ]
  %169 = call i8* @halide_string_to_string(i8* %161, i8* %168, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@LEJDCCBF@CUDA?3?5cuCtxCreate?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %170 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %154) #9
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i8* @halide_string_to_string(i8* %169, i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %176

174:                                              ; preds = %167
  %175 = call i8* @halide_string_to_string(i8* %169, i8* %168, i8* nonnull %170) #8
  br label %176

176:                                              ; preds = %172, %174
  %177 = phi i8* [ %175, %174 ], [ %173, %172 ]
  %178 = load i8*, i8** %162, align 4, !tbaa !45
  %179 = icmp eq i8* %178, null
  %180 = load i8*, i8** %159, align 4, !tbaa !41
  br i1 %179, label %181, label %182

181:                                              ; preds = %176
  call void @halide_error(i8* %180, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %191

182:                                              ; preds = %176
  %183 = ptrtoint i8* %177 to i32
  %184 = ptrtoint i8* %178 to i32
  %185 = sub i32 1, %184
  %186 = add i32 %185, %183
  %187 = sext i32 %186 to i64
  %188 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %180, i8* nonnull %178, i64 %187) #8
  %189 = load i8*, i8** %162, align 4, !tbaa !45
  %190 = load i8*, i8** %159, align 4, !tbaa !41
  call void @halide_error(i8* %190, i8* %189) #8
  br label %191

191:                                              ; preds = %182, %181
  %192 = load i8, i8* %160, align 4, !tbaa !44, !range !47
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %162, align 4, !tbaa !45
  call void @free(i8* %195) #8
  br label %196

196:                                              ; preds = %191, %194
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %158) #10
  br label %247

197:                                              ; preds = %151
  %198 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %198) #10
  store i32 0, i32* %9, align 4, !tbaa !40
  %199 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, i32*)** @"?cuCtxGetApiVersion@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@PAI@ZA", align 4, !tbaa !38
  %200 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %1, align 4, !tbaa !38
  %201 = call x86_stdcallcc i32 %199(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %200, i32* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %198) #10
  %202 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %202) #10
  %203 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %204 = call x86_stdcallcc i32 %203(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %246, label %206

206:                                              ; preds = %197
  %207 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %207) #10
  %208 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %208, align 4, !tbaa !41
  %209 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %209, align 4, !tbaa !44
  %210 = call i8* @malloc(i32 1024) #8
  %211 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %210, i8** %211, align 4, !tbaa !45
  %212 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %210, i8** %212, align 4, !tbaa !46
  %213 = icmp eq i8* %210, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds i8, i8* %210, i32 1023
  store i8 0, i8* %215, align 1, !tbaa !37
  br label %216

216:                                              ; preds = %206, %214
  %217 = phi i8* [ %215, %214 ], [ null, %206 ]
  %218 = call i8* @halide_string_to_string(i8* %210, i8* %217, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@EKFOANMP@CUDA?3?5cuCtxPopCurrent?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %219 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %204) #9
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call i8* @halide_string_to_string(i8* %218, i8* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %225

223:                                              ; preds = %216
  %224 = call i8* @halide_string_to_string(i8* %218, i8* %217, i8* nonnull %219) #8
  br label %225

225:                                              ; preds = %221, %223
  %226 = phi i8* [ %224, %223 ], [ %222, %221 ]
  %227 = load i8*, i8** %211, align 4, !tbaa !45
  %228 = icmp eq i8* %227, null
  %229 = load i8*, i8** %208, align 4, !tbaa !41
  br i1 %228, label %230, label %231

230:                                              ; preds = %225
  call void @halide_error(i8* %229, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %240

231:                                              ; preds = %225
  %232 = ptrtoint i8* %226 to i32
  %233 = ptrtoint i8* %227 to i32
  %234 = sub i32 1, %233
  %235 = add i32 %234, %232
  %236 = sext i32 %235 to i64
  %237 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %229, i8* nonnull %227, i64 %236) #8
  %238 = load i8*, i8** %211, align 4, !tbaa !45
  %239 = load i8*, i8** %208, align 4, !tbaa !41
  call void @halide_error(i8* %239, i8* %238) #8
  br label %240

240:                                              ; preds = %231, %230
  %241 = load i8, i8* %209, align 4, !tbaa !44, !range !47
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** %211, align 4, !tbaa !45
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
define weak dso_local i32 @halide_cuda_release_context(i8* %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %1, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2) local_unnamed_addr #5 {
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %2, align 4, !tbaa !38
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %0) local_unnamed_addr #4 {
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
  store i8 0, i8* %60, align 1, !tbaa !37
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GFJJBJ@Unknown?5cuda?5error?5?$AA@", i32 0, i32 0)) #8
  %64 = sext i32 %0 to i64
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #8
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %58, label %67, label %68

67:                                               ; preds = %61
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  %77 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), %75 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KJNCAEGL@CUDA_ERROR_UNKNOWN?$AA@", i32 0, i32 0), %55 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@GLNJADKF@CUDA_ERROR_NOT_SUPPORTED?$AA@", i32 0, i32 0), %54 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@DBBLBGBJ@CUDA_ERROR_NOT_PERMITTED?$AA@", i32 0, i32 0), %53 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@JLBELLNJ@CUDA_ERROR_LAUNCH_FAILED?$AA@", i32 0, i32 0), %52 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@OHCPPEH@CUDA_ERROR_INVALID_PC?$AA@", i32 0, i32 0), %51 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BDJJMPAO@CUDA_ERROR_INVALID_ADDRESS_SPACE@", i32 0, i32 0), %50 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@NOHCDJNG@CUDA_ERROR_MISALIGNED_ADDRESS?$AA@", i32 0, i32 0), %49 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @"??_C@_0DO@LEIEFPOK@Illegal?5instruction?5or?5Halide?5as@", i32 0, i32 0), %48 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@IGBMDCNL@CUDA_ERROR_CONTEXT_IS_DESTROYED?$AA@", i32 0, i32 0), %47 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@ILPMDNJB@CUDA_ERROR_PRIMARY_CONTEXT_ACTIV@", i32 0, i32 0), %46 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@BNCBHFPB@CUDA_ERROR_PEER_ACCESS_NOT_ENABL@", i32 0, i32 0), %45 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @"??_C@_0CH@LOBLNEGP@CUDA_ERROR_PEER_ACCESS_ALREADY_E@", i32 0, i32 0), %44 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @"??_C@_0CJ@IHGKNJOE@CUDA_ERROR_LAUNCH_INCOMPATIBLE_T@", i32 0, i32 0), %43 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@MIOKJHOO@CUDA_ERROR_LAUNCH_TIMEOUT?$AA@", i32 0, i32 0), %42 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IAMOGGLH@CUDA_ERROR_LAUNCH_OUT_OF_RESOURC@", i32 0, i32 0), %41 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@JBGMGMM@CUDA_ERROR_ILLEGAL_ADDRESS?$AA@", i32 0, i32 0), %40 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@MMICADPG@CUDA_ERROR_NOT_READY?$AA@", i32 0, i32 0), %39 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@DDPFHCNI@CUDA_ERROR_NOT_FOUND?$AA@", i32 0, i32 0), %38 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@FMCIPHBO@CUDA_ERROR_INVALID_HANDLE?$AA@", i32 0, i32 0), %37 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@DJPMPCAA@CUDA_ERROR_OPERATING_SYSTEM?$AA@", i32 0, i32 0), %36 ], [ getelementptr inbounds ([37 x i8], [37 x i8]* @"??_C@_0CF@JKMNCLJG@CUDA_ERROR_SHARED_OBJECT_INIT_FA@", i32 0, i32 0), %35 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @"??_C@_0CK@KMEKIDID@CUDA_ERROR_SHARED_OBJECT_SYMBOL_@", i32 0, i32 0), %34 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@JKOCDAGF@CUDA_ERROR_FILE_NOT_FOUND?$AA@", i32 0, i32 0), %33 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@GKOFLHLH@CUDA_ERROR_INVALID_SOURCE?$AA@", i32 0, i32 0), %32 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@KDCOPDAG@CUDA_ERROR_JIT_COMPILER_NOT_FOUN@", i32 0, i32 0), %31 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@DEDHGBPA@CUDA_ERROR_NVLINK_UNCORRECTABLE?$AA@", i32 0, i32 0), %30 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@KPBOEKLA@CUDA_ERROR_INVALID_GRAPHICS_CONT@", i32 0, i32 0), %29 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IDLNMEGF@CUDA_ERROR_INVALID_PTX?$AA@", i32 0, i32 0), %28 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@BKCKCDHK@CUDA_ERROR_PEER_ACCESS_UNSUPPORT@", i32 0, i32 0), %27 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@MKNOCLLI@CUDA_ERROR_CONTEXT_ALREADY_IN_US@", i32 0, i32 0), %26 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KCELBMJM@CUDA_ERROR_UNSUPPORTED_LIMIT?$AA@", i32 0, i32 0), %25 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@MOLLDDBF@CUDA_ERROR_ECC_UNCORRECTABLE?$AA@", i32 0, i32 0), %24 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@KGAEMLBJ@CUDA_ERROR_NOT_MAPPED_AS_POINTER@", i32 0, i32 0), %23 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@EOHNHEJJ@CUDA_ERROR_NOT_MAPPED_AS_ARRAY?$AA@", i32 0, i32 0), %22 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@FNMHNFPE@CUDA_ERROR_NOT_MAPPED?$AA@", i32 0, i32 0), %21 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@OJOJMFNC@CUDA_ERROR_ALREADY_ACQUIRED?$AA@", i32 0, i32 0), %20 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@LLCKJBJD@CUDA_ERROR_NO_BINARY_FOR_GPU?$AA@", i32 0, i32 0), %19 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@JGMMABAO@CUDA_ERROR_ALREADY_MAPPED?$AA@", i32 0, i32 0), %18 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@LHLGMFM@CUDA_ERROR_ARRAY_IS_MAPPED?$AA@", i32 0, i32 0), %17 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@LIOELPBH@CUDA_ERROR_UNMAP_FAILED?$AA@", i32 0, i32 0), %16 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@PCDIJLGE@CUDA_ERROR_MAP_FAILED?$AA@", i32 0, i32 0), %15 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@JICHIBFF@CUDA_ERROR_CONTEXT_ALREADY_CURRE@", i32 0, i32 0), %14 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@CAMHACOE@CUDA_ERROR_INVALID_CONTEXT?$AA@", i32 0, i32 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@BIGAIEEG@CUDA_ERROR_INVALID_IMAGE?$AA@", i32 0, i32 0), %12 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@KJLPJMNP@CUDA_ERROR_INVALID_DEVICE?$AA@", i32 0, i32 0), %11 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@OLCOGLNC@CUDA_ERROR_NO_DEVICE?$AA@", i32 0, i32 0), %10 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@IFNKMKIN@CUDA_ERROR_PROFILER_ALREADY_STOP@", i32 0, i32 0), %9 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@EKHCGPMK@CUDA_ERROR_PROFILER_ALREADY_STAR@", i32 0, i32 0), %8 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@HBMLIEHI@CUDA_ERROR_PROFILER_NOT_INITIALI@", i32 0, i32 0), %7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@FPJIJONF@CUDA_ERROR_PROFILER_DISABLED?$AA@", i32 0, i32 0), %6 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@IKKPFDBH@CUDA_ERROR_DEINITIALIZED?$AA@", i32 0, i32 0), %5 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@EPHIMIFG@CUDA_ERROR_NOT_INITIALIZED?$AA@", i32 0, i32 0), %4 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@CNEOPIBN@CUDA_ERROR_OUT_OF_MEMORY?$AA@", i32 0, i32 0), %3 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@MCNIHGMK@CUDA_ERROR_INVALID_VALUE?$AA@", i32 0, i32 0), %2 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IBGLLPEP@CUDA_SUCCESS?$AA@", i32 0, i32 0), %1 ]
  ret i8* %77
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* %1, i32 %2) local_unnamed_addr #5 {
  ret i1 true
}

; Function Attrs: nounwind
define weak dso_local %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* @"?compile_kernel@Cuda@Internal@Runtime@Halide@@YAPAUCUmod_st@1234@PAXPBDH@Z"(i8* %0, i8* %1, i32 %2) #4 {
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i8*], align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = bitcast [1 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DMLOHDHC@HL_CUDA_JIT_MAX_REGISTERS?$AA@", i32 0, i32 0)) #8
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
  store i8* %16, i8** %18, align 4, !tbaa !38
  %19 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"**, i8*, i32, i32*, i8**)** @"?cuModuleLoadDataEx@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUmod_st@1234@PBXIPAW4CUjit_option_enum@1234@PAPAX@ZA", align 4, !tbaa !38
  %21 = call x86_stdcallcc i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull %6, i8* %1, i32 1, i32* nonnull %9, i8** nonnull %18) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %15
  %24 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %25, align 4, !tbaa !41
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %26, align 4, !tbaa !44
  %27 = call i8* @malloc(i32 1024) #8
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 4, !tbaa !45
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %27, i8** %29, align 4, !tbaa !46
  %30 = icmp eq i8* %27, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, i8* %27, i32 1023
  store i8 0, i8* %32, align 1, !tbaa !37
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi i8* [ %32, %31 ], [ null, %23 ]
  %35 = call i8* @halide_string_to_string(i8* %27, i8* %34, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@BDCIDAKL@CUDA?3?5cuModuleLoadData?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %36 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %21) #9
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i8* @halide_string_to_string(i8* %35, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %42

40:                                               ; preds = %33
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %34, i8* nonnull %36) #8
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %28, align 4, !tbaa !45
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %25, align 4, !tbaa !41
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %57

48:                                               ; preds = %42
  %49 = ptrtoint i8* %43 to i32
  %50 = ptrtoint i8* %44 to i32
  %51 = sub i32 1, %50
  %52 = add i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %53) #8
  %55 = load i8*, i8** %28, align 4, !tbaa !45
  %56 = load i8*, i8** %25, align 4, !tbaa !41
  call void @halide_error(i8* %56, i8* %55) #8
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i8, i8* %26, align 4, !tbaa !44, !range !47
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %28, align 4, !tbaa !45
  call void @free(i8* %61) #8
  br label %62

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %24) #10
  br label %65

63:                                               ; preds = %15
  %64 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %6, align 4, !tbaa !38
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ null, %62 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %66
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare dso_local i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %6 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %7 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, align 4
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 0
  store i8* %0, i8** %9, align 4, !tbaa !49
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %6, i32 0, i32 2
  store i32 0, i32* %11, align 4, !tbaa !52
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 4, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %25 = call x86_stdcallcc i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 4, !tbaa !52
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #10
  %29 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %30 = call x86_thiscallcc zeroext i1 @"??$kernel_state_setup@P6APAUCUmod_st@Cuda@Internal@Runtime@Halide@@PAXPBDH@ZPAXPBDH@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NPAXPAPAXPAUCUctx_st@Cuda@1Runtime@2@AAPAUCUmod_st@4152@P6APAU64152@0PBDH@Z04H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i8* %0, i8** %1, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %29, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 4 dereferenceable(4) %7, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* nonnull @"?compile_kernel@Cuda@Internal@Runtime@Halide@@YAPAUCUmod_st@1234@PAXPBDH@Z", i8* %0, i8* %2, i32 %3) #9
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %7, align 4, !tbaa !38
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@BOIHBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %35

35:                                               ; preds = %27, %34, %31
  %36 = phi i32 [ -1, %27 ], [ 0, %34 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #10
  %37 = load i32, i32* %11, align 4, !tbaa !52
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40) #10
  %41 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %42 = call x86_stdcallcc i32 %41(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40) #10
  br label %43

43:                                               ; preds = %4, %22, %35, %39
  %44 = phi i32 [ %36, %35 ], [ %36, %39 ], [ %25, %22 ], [ %12, %4 ]
  %45 = load i8*, i8** %9, align 4, !tbaa !49
  %46 = call i32 @halide_cuda_release_context(i8* %45) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %8) #10
  ret i32 %44
}

; Function Attrs: nounwind
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"??$kernel_state_setup@P6APAUCUmod_st@Cuda@Internal@Runtime@Halide@@PAXPBDH@ZPAXPBDH@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NPAXPAPAXPAUCUctx_st@Cuda@1Runtime@2@AAPAUCUmod_st@4152@P6APAU64152@0PBDH@Z04H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** nonnull align 4 dereferenceable(4) %4, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* (i8*, i8*, i32)* %5, i8* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", align 4
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !53
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !53
  store i32 %17, i32* %12, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 4, !tbaa !56
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %19
  %25 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3 to i32
  %26 = add i32 %20, %25
  %27 = mul i32 %26, -1640531527
  %28 = sub i32 32, %22
  %29 = lshr i32 %27, %28
  %30 = shl nuw i32 1, %22
  %31 = icmp eq i32 %22, 31
  br i1 %31, label %63, label %32

32:                                               ; preds = %24
  %33 = add nsw i32 %30, -1
  %34 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %35 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %34, align 4, !tbaa !57
  %36 = icmp sgt i32 %30, 1
  %37 = select i1 %36, i32 %30, i32 1
  br label %41

38:                                               ; preds = %49
  %39 = icmp slt i32 %55, %30
  %40 = icmp eq i32 %55, %37
  br i1 %40, label %63, label %41, !llvm.loop !58

41:                                               ; preds = %38, %32
  %42 = phi i1 [ true, %32 ], [ %39, %38 ]
  %43 = phi i32 [ 0, %32 ], [ %55, %38 ]
  %44 = add i32 %43, %29
  %45 = and i32 %44, %33
  %46 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %45, i32 2
  %47 = load i32, i32* %46, align 4, !tbaa !59
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %45, i32 0
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %50, align 4, !tbaa !61
  %52 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %51, %3
  %53 = icmp eq i32 %47, %20
  %54 = and i1 %53, %52
  %55 = add nuw nsw i32 %43, 1
  br i1 %54, label %56, label %38

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %45, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !62
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 4, !tbaa !62
  br i1 %42, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %45, i32 1
  %62 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %61, align 4, !tbaa !38
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %62, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 4, !tbaa !38
  br label %75

63:                                               ; preds = %41, %38, %24, %19, %56
  %64 = tail call %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %5(i8* %6, i8* %7, i32 %8) #8
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #10
  %68 = load i32, i32* %12, align 4, !tbaa !40
  %69 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %3, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %69, align 4, !tbaa !61
  %70 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %64, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %70, align 4, !tbaa !63
  %71 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 2
  store i32 %68, i32* %71, align 4, !tbaa !59
  %72 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %10, i32 0, i32 3
  store i32 1, i32* %72, align 4, !tbaa !62
  %73 = call x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #10
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %64, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %4, align 4, !tbaa !38
  br label %75

75:                                               ; preds = %74, %63, %66, %60
  %76 = phi i1 [ true, %60 ], [ true, %74 ], [ false, %63 ], [ false, %66 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %76
}

; Function Attrs: nounwind
define weak dso_local void @halide_cuda_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #10
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !51
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %8, align 4, !tbaa !52
  %9 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %7, i1 zeroext true) #8
  store i32 %9, i32* %8, align 4, !tbaa !52
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %12 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !51
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %17 = icmp eq i32 (i32)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %21 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !51
  %22 = call x86_stdcallcc i32 %20(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %21) #8
  store i32 %22, i32* %8, align 4, !tbaa !52
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %19
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %7, align 4, !tbaa !51
  %26 = ptrtoint i8* %1 to i32
  %27 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 1), align 4, !tbaa !56
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %25 to i32
  %31 = add i32 %30, %26
  %32 = mul i32 %31, -1640531527
  %33 = sub i32 32, %27
  %34 = lshr i32 %32, %33
  %35 = shl nuw i32 1, %27
  %36 = icmp eq i32 %27, 31
  br i1 %36, label %64, label %37

37:                                               ; preds = %29
  %38 = add nsw i32 %35, -1
  %39 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 2), align 4, !tbaa !57
  %40 = icmp sgt i32 %35, 1
  %41 = select i1 %40, i32 %35, i32 1
  br label %45

42:                                               ; preds = %53
  %43 = icmp slt i32 %59, %35
  %44 = icmp eq i32 %59, %41
  br i1 %44, label %64, label %45, !llvm.loop !58

45:                                               ; preds = %42, %37
  %46 = phi i1 [ true, %37 ], [ %43, %42 ]
  %47 = phi i32 [ 0, %37 ], [ %59, %42 ]
  %48 = add i32 %47, %34
  %49 = and i32 %48, %38
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %49, i32 2
  %51 = load i32, i32* %50, align 4, !tbaa !59
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %49, i32 0
  %55 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !61
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %55, %25
  %57 = icmp eq i32 %51, %26
  %58 = and i1 %57, %56
  %59 = add nuw nsw i32 %47, 1
  br i1 %58, label %60, label %42

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %39, i32 %49, i32 3
  %62 = load i32, i32* %61, align 4, !tbaa !62
  %63 = add i32 %62, -1
  store i32 %63, i32* %61, align 4, !tbaa !62
  br i1 %46, label %67, label %64

64:                                               ; preds = %42, %45, %24, %29, %60
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  %65 = load i32, i32* %8, align 4, !tbaa !52
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %64
  %68 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %68) #10
  %69 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %70 = call x86_stdcallcc i32 %69(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68) #10
  br label %71

71:                                               ; preds = %2, %19, %64, %67
  %72 = load i8*, i8** %6, align 4, !tbaa !49
  %73 = call i32 @halide_cuda_release_context(i8* %72) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #10
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_release_unused_device_allocations(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %2 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A", align 4, !tbaa !38
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A", align 4, !tbaa !38
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %11, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i32 0, i32 0
  %7 = load i32 (i32)*, i32 (i32)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %8 = load i32, i32* %6, align 4, !tbaa !64
  %9 = tail call x86_stdcallcc i32 %7(i32 %8) #8
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5, i32 0, i32 4
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %10, align 4, !tbaa !66
  %12 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %5 to i8*
  tail call void @free(i8* nonnull %12) #8
  %13 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %11, null
  br i1 %13, label %14, label %4, !llvm.loop !67

14:                                               ; preds = %4, %1
  ret i32 0
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @register_cuda_allocation_pool() #0 {
  store i32 (i8*)* @halide_cuda_release_unused_device_allocations, i32 (i8*)** getelementptr inbounds (%struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* @cuda_allocation_pool, i32 0, i32 0), align 4, !tbaa !68
  tail call void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* nonnull @cuda_allocation_pool) #8
  ret void
}

declare dso_local void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %208, label %8

8:                                                ; preds = %2
  %9 = trunc i64 %6 to i32
  %10 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %10) #10
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !51
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %13, align 4, !tbaa !52
  %14 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %12, i1 zeroext true) #8
  store i32 %14, i32* %13, align 4, !tbaa !52
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %204

16:                                               ; preds = %8
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %17 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !51
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %22 = icmp eq i32 (i32)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %24

24:                                               ; preds = %20, %23
  %25 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !51
  %27 = call x86_stdcallcc i32 %25(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26) #8
  store i32 %27, i32* %13, align 4, !tbaa !52
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %204

29:                                               ; preds = %24
  %30 = call zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #9
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@IHNFJCBJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %32

32:                                               ; preds = %31, %29
  %33 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %33, label %34, label %187

34:                                               ; preds = %32
  %35 = call i8* @malloc(i32 20) #8
  %36 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %12, align 4, !tbaa !51
  %37 = getelementptr inbounds i8, i8* %35, i32 4
  %38 = bitcast i8* %37 to %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %36, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %38, align 4, !tbaa !70
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %40 = load i32, i32* %39, align 4, !tbaa !24
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %44 = load i8, i8* %43, align 1, !tbaa !23
  br label %128

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %46, align 8, !tbaa !25
  %48 = and i32 %40, 1
  %49 = icmp eq i32 %40, 1
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = and i32 %40, -2
  br label %52

52:                                               ; preds = %227, %50
  %53 = phi i32 [ 0, %50 ], [ %229, %227 ]
  %54 = phi i32 [ 0, %50 ], [ %228, %227 ]
  %55 = phi i32 [ %51, %50 ], [ %230, %227 ]
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %53, i32 2
  %57 = load i32, i32* %56, align 4, !tbaa !28
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %53, i32 1
  %61 = load i32, i32* %60, align 4, !tbaa !31
  %62 = add nsw i32 %61, -1
  %63 = mul nsw i32 %62, %57
  %64 = add nsw i32 %63, %54
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi i32 [ %64, %59 ], [ %54, %52 ]
  %67 = or i32 %53, 1
  %68 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %67, i32 2
  %69 = load i32, i32* %68, align 4, !tbaa !28
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %221, label %227

71:                                               ; preds = %227, %45
  %72 = phi i32 [ undef, %45 ], [ %228, %227 ]
  %73 = phi i32 [ 0, %45 ], [ %229, %227 ]
  %74 = phi i32 [ 0, %45 ], [ %228, %227 ]
  %75 = icmp eq i32 %48, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %73, i32 2
  %78 = load i32, i32* %77, align 4, !tbaa !28
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %73, i32 1
  %82 = load i32, i32* %81, align 4, !tbaa !31
  %83 = add nsw i32 %82, -1
  %84 = mul nsw i32 %83, %78
  %85 = add nsw i32 %84, %74
  br label %86

86:                                               ; preds = %80, %76, %71
  %87 = phi i32 [ %72, %71 ], [ %85, %80 ], [ %74, %76 ]
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %89 = load i8, i8* %88, align 1, !tbaa !23
  %90 = and i32 %40, 1
  %91 = icmp eq i32 %40, 1
  br i1 %91, label %113, label %92

92:                                               ; preds = %86
  %93 = and i32 %40, -2
  br label %94

94:                                               ; preds = %216, %92
  %95 = phi i32 [ 0, %92 ], [ %218, %216 ]
  %96 = phi i32 [ 0, %92 ], [ %217, %216 ]
  %97 = phi i32 [ %93, %92 ], [ %219, %216 ]
  %98 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %95, i32 2
  %99 = load i32, i32* %98, align 4, !tbaa !28
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %95, i32 1
  %103 = load i32, i32* %102, align 4, !tbaa !31
  %104 = add nsw i32 %103, -1
  %105 = mul nsw i32 %104, %99
  %106 = add nsw i32 %105, %96
  br label %107

107:                                              ; preds = %101, %94
  %108 = phi i32 [ %106, %101 ], [ %96, %94 ]
  %109 = or i32 %95, 1
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %109, i32 2
  %111 = load i32, i32* %110, align 4, !tbaa !28
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %210, label %216

113:                                              ; preds = %216, %86
  %114 = phi i32 [ undef, %86 ], [ %217, %216 ]
  %115 = phi i32 [ 0, %86 ], [ %218, %216 ]
  %116 = phi i32 [ 0, %86 ], [ %217, %216 ]
  %117 = icmp eq i32 %90, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %115, i32 2
  %120 = load i32, i32* %119, align 4, !tbaa !28
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %115, i32 1
  %124 = load i32, i32* %123, align 4, !tbaa !31
  %125 = add nsw i32 %124, -1
  %126 = mul nsw i32 %125, %120
  %127 = add nsw i32 %126, %116
  br label %128

128:                                              ; preds = %113, %118, %122, %42
  %129 = phi i8 [ %44, %42 ], [ %89, %122 ], [ %89, %118 ], [ %89, %113 ]
  %130 = phi i32 [ 0, %42 ], [ %87, %122 ], [ %87, %118 ], [ %87, %113 ]
  %131 = phi i32 [ 0, %42 ], [ %114, %113 ], [ %127, %122 ], [ %116, %118 ]
  %132 = zext i8 %129 to i32
  %133 = add nuw nsw i32 %132, 7
  %134 = lshr i32 %133, 3
  %135 = add nsw i32 %130, 1
  %136 = sub i32 %135, %131
  %137 = mul i32 %136, %134
  %138 = zext i32 %137 to i64
  %139 = call i64 @llvm.ctlz.i64(i64 %138, i1 true) #10, !range !71
  %140 = trunc i64 %139 to i32
  %141 = icmp ult i32 %140, 60
  br i1 %141, label %142, label %150

142:                                              ; preds = %128
  %143 = add nsw i64 %138, -1
  %144 = sub nuw nsw i32 60, %140
  %145 = zext i32 %144 to i64
  %146 = lshr i64 %143, %145
  %147 = add nuw i64 %146, 1
  %148 = shl i64 %147, %145
  %149 = trunc i64 %148 to i32
  br label %150

150:                                              ; preds = %128, %142
  %151 = phi i32 [ %149, %142 ], [ %137, %128 ]
  %152 = getelementptr inbounds i8, i8* %35, i32 12
  %153 = bitcast i8* %152 to i32*
  store i32 %151, i32* %153, align 4, !tbaa !72
  %154 = bitcast i8* %35 to i32*
  store i32 %9, i32* %154, align 4, !tbaa !64
  %155 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA", align 4, !tbaa !38
  %156 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %155, null
  %157 = getelementptr inbounds i8, i8* %35, i32 8
  %158 = bitcast i8* %157 to %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"**
  br i1 %156, label %182, label %159

159:                                              ; preds = %150
  %160 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %36, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %158) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %159
  %163 = call i8* @malloc(i32 1024) #8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds i8, i8* %163, i32 1023
  store i8 0, i8* %166, align 1, !tbaa !37
  br label %167

167:                                              ; preds = %162, %165
  %168 = phi i8* [ %166, %165 ], [ null, %162 ]
  %169 = call i8* @halide_string_to_string(i8* %163, i8* %168, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@GIMBMKIF@CUDA?3?5In?5halide_cuda_device_free@", i32 0, i32 0)) #8
  %170 = sext i32 %160 to i64
  %171 = call i8* @halide_int64_to_string(i8* %169, i8* %168, i64 %170, i32 1) #8
  %172 = call i8* @halide_string_to_string(i8* %171, i8* %168, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %164, label %173, label %174

173:                                              ; preds = %167
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %181

174:                                              ; preds = %167
  %175 = ptrtoint i8* %172 to i32
  %176 = ptrtoint i8* %163 to i32
  %177 = add i32 %175, 1
  %178 = sub i32 %177, %176
  %179 = sext i32 %178 to i64
  %180 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %163, i64 %179) #8
  call void @halide_error(i8* %0, i8* nonnull %163) #8
  br label %181

181:                                              ; preds = %174, %173
  call void @free(i8* %163) #8
  br label %183

182:                                              ; preds = %150
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %158, align 4, !tbaa !73
  br label %183

183:                                              ; preds = %159, %181, %182
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %184 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A", align 4, !tbaa !38
  %185 = getelementptr inbounds i8, i8* %35, i32 16
  %186 = bitcast i8* %185 to %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"**
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %184, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %186, align 4, !tbaa !66
  store i8* %35, i8** bitcast (%"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A" to i8**), align 4, !tbaa !38
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  br label %190

187:                                              ; preds = %32
  %188 = load i32 (i32)*, i32 (i32)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %189 = call x86_stdcallcc i32 %188(i32 %9) #8
  br label %190

190:                                              ; preds = %183, %187
  %191 = phi i32 [ 0, %183 ], [ %189, %187 ]
  %192 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %193 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %192, align 8, !tbaa !74
  %194 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %193, i32 0, i32 15
  %195 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %194, align 4, !tbaa !75
  %196 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %195, i32 0, i32 1
  %197 = load void ()*, void ()** %196, align 4, !tbaa !77
  call void %197() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %192, align 8, !tbaa !74
  store i64 0, i64* %5, align 8, !tbaa !22
  %198 = load i32, i32* %13, align 4, !tbaa !52
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %201) #10
  %202 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %203 = call x86_stdcallcc i32 %202(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %201) #10
  br label %204

204:                                              ; preds = %8, %24, %190, %200
  %205 = phi i32 [ %191, %190 ], [ %191, %200 ], [ %27, %24 ], [ %14, %8 ]
  %206 = load i8*, i8** %11, align 4, !tbaa !49
  %207 = call i32 @halide_cuda_release_context(i8* %206) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %10) #10
  br label %208

208:                                              ; preds = %2, %204
  %209 = phi i32 [ %205, %204 ], [ 0, %2 ]
  ret i32 %209

210:                                              ; preds = %107
  %211 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %109, i32 1
  %212 = load i32, i32* %211, align 4, !tbaa !31
  %213 = add nsw i32 %212, -1
  %214 = mul nsw i32 %213, %111
  %215 = add nsw i32 %214, %108
  br label %216

216:                                              ; preds = %210, %107
  %217 = phi i32 [ %215, %210 ], [ %108, %107 ]
  %218 = add nuw nsw i32 %95, 2
  %219 = add i32 %97, -2
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %113, label %94, !llvm.loop !79

221:                                              ; preds = %65
  %222 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %67, i32 1
  %223 = load i32, i32* %222, align 4, !tbaa !31
  %224 = add nsw i32 %223, -1
  %225 = mul nsw i32 %224, %69
  %226 = add nsw i32 %225, %66
  br label %227

227:                                              ; preds = %221, %65
  %228 = phi i32 [ %226, %221 ], [ %66, %65 ]
  %229 = add nuw nsw i32 %53, 2
  %230 = add i32 %55, -2
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %71, label %52, !llvm.loop !80
}

declare dso_local zeroext i1 @halide_can_reuse_device_allocations(i8*) local_unnamed_addr #2

declare dso_local i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_device_release(i8* %0) #4 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %5 = icmp eq i32 (i32)* %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #10
  %8 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %2, i1 zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %6
  %11 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !38
  %12 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %10
  %14 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %15 = call x86_stdcallcc i32 %14(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* nonnull %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32 ()*, i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA", align 4, !tbaa !38
  %19 = call x86_stdcallcc i32 %18() #8
  %20 = and i32 %19, -5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @"??_C@_0JC@MMDJCNJL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %23

23:                                               ; preds = %13, %22, %17
  %24 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %25 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !38
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 0)) #8
  %26 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 3), align 4, !tbaa !81
  %27 = icmp eq i32 %26, 0
  %28 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 1), align 4
  %29 = icmp eq i32 %28, 31
  %30 = or i1 %27, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %23
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 2), align 4, !tbaa !57
  br label %33

33:                                               ; preds = %59, %31
  %34 = phi i32 [ %60, %59 ], [ %28, %31 ]
  %35 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %61, %59 ], [ %32, %31 ]
  %36 = phi i32 [ %62, %59 ], [ 0, %31 ]
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 2
  %38 = load i32, i32* %37, align 4, !tbaa !59
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 0
  %42 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %41, align 4, !tbaa !61
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %42, %25
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 3
  %46 = load i32, i32* %45, align 4, !tbaa !62
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUmod_st@1234@@ZA", align 4, !tbaa !38
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %35, i32 %36, i32 1
  %51 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %50, align 4, !tbaa !63
  %52 = call x86_stdcallcc i32 %49(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %51) #8
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 2), align 4, !tbaa !57
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i32 %36, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %54, align 4, !tbaa !63
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %53, i32 %36, i32 2
  store i32 1, i32* %55, align 4, !tbaa !59
  %56 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 3), align 4, !tbaa !81
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 3), align 4, !tbaa !81
  %58 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 1), align 4, !tbaa !56
  br label %59

59:                                               ; preds = %48, %44, %40, %33
  %60 = phi i32 [ %34, %33 ], [ %34, %40 ], [ %34, %44 ], [ %58, %48 ]
  %61 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %35, %33 ], [ %35, %40 ], [ %35, %44 ], [ %53, %48 ]
  %62 = add nuw nsw i32 %36, 1
  %63 = shl nuw i32 1, %60
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %33, label %65, !llvm.loop !82

65:                                               ; preds = %59, %23
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 0)) #8
  %66 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #10
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %68 = call x86_stdcallcc i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %69 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %2, align 4, !tbaa !38
  %70 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  %71 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i32 ()*, i32 ()** @"?cuProfilerStop@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA", align 4, !tbaa !38
  %74 = call x86_stdcallcc i32 %73() #8
  %75 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxDestroy@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %76 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  %77 = call x86_stdcallcc i32 %75(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %76) #8
  %78 = and i32 %77, -5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @"??_C@_0JC@BOIMJOEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %81

81:                                               ; preds = %80, %72
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** @"?context@Cuda@Internal@Runtime@Halide@@3PAUCUctx_st@1234@A", align 4, !tbaa !38
  br label %82

82:                                               ; preds = %81, %65
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?context_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
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
define weak dso_local i32 @halide_cuda_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %8) #10
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %9, align 4, !tbaa !49
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %11, align 4, !tbaa !52
  %12 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %10, i1 zeroext true) #8
  store i32 %12, i32* %11, align 4, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %345

14:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %15 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %20 = icmp eq i32 (i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %24 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %25 = call x86_stdcallcc i32 %23(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %24) #8
  store i32 %25, i32* %11, align 4, !tbaa !52
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %345

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %33 = load i8, i8* %32, align 1, !tbaa !23
  br label %117

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !25
  %37 = and i32 %29, 1
  %38 = icmp eq i32 %29, 1
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = and i32 %29, -2
  br label %41

41:                                               ; preds = %366, %39
  %42 = phi i32 [ 0, %39 ], [ %368, %366 ]
  %43 = phi i32 [ 0, %39 ], [ %367, %366 ]
  %44 = phi i32 [ %40, %39 ], [ %369, %366 ]
  %45 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %42, i32 2
  %46 = load i32, i32* %45, align 4, !tbaa !28
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %42, i32 1
  %50 = load i32, i32* %49, align 4, !tbaa !31
  %51 = add nsw i32 %50, -1
  %52 = mul nsw i32 %51, %46
  %53 = add nsw i32 %52, %43
  br label %54

54:                                               ; preds = %48, %41
  %55 = phi i32 [ %53, %48 ], [ %43, %41 ]
  %56 = or i32 %42, 1
  %57 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %56, i32 2
  %58 = load i32, i32* %57, align 4, !tbaa !28
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %360, label %366

60:                                               ; preds = %366, %34
  %61 = phi i32 [ undef, %34 ], [ %367, %366 ]
  %62 = phi i32 [ 0, %34 ], [ %368, %366 ]
  %63 = phi i32 [ 0, %34 ], [ %367, %366 ]
  %64 = icmp eq i32 %37, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %62, i32 2
  %67 = load i32, i32* %66, align 4, !tbaa !28
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %62, i32 1
  %71 = load i32, i32* %70, align 4, !tbaa !31
  %72 = add nsw i32 %71, -1
  %73 = mul nsw i32 %72, %67
  %74 = add nsw i32 %73, %63
  br label %75

75:                                               ; preds = %69, %65, %60
  %76 = phi i32 [ %61, %60 ], [ %74, %69 ], [ %63, %65 ]
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %78 = load i8, i8* %77, align 1, !tbaa !23
  %79 = and i32 %29, 1
  %80 = icmp eq i32 %29, 1
  br i1 %80, label %102, label %81

81:                                               ; preds = %75
  %82 = and i32 %29, -2
  br label %83

83:                                               ; preds = %355, %81
  %84 = phi i32 [ 0, %81 ], [ %357, %355 ]
  %85 = phi i32 [ 0, %81 ], [ %356, %355 ]
  %86 = phi i32 [ %82, %81 ], [ %358, %355 ]
  %87 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %84, i32 2
  %88 = load i32, i32* %87, align 4, !tbaa !28
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %84, i32 1
  %92 = load i32, i32* %91, align 4, !tbaa !31
  %93 = add nsw i32 %92, -1
  %94 = mul nsw i32 %93, %88
  %95 = add nsw i32 %94, %85
  br label %96

96:                                               ; preds = %90, %83
  %97 = phi i32 [ %95, %90 ], [ %85, %83 ]
  %98 = or i32 %84, 1
  %99 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %98, i32 2
  %100 = load i32, i32* %99, align 4, !tbaa !28
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %349, label %355

102:                                              ; preds = %355, %75
  %103 = phi i32 [ undef, %75 ], [ %356, %355 ]
  %104 = phi i32 [ 0, %75 ], [ %357, %355 ]
  %105 = phi i32 [ 0, %75 ], [ %356, %355 ]
  %106 = icmp eq i32 %79, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %104, i32 2
  %109 = load i32, i32* %108, align 4, !tbaa !28
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %104, i32 1
  %113 = load i32, i32* %112, align 4, !tbaa !31
  %114 = add nsw i32 %113, -1
  %115 = mul nsw i32 %114, %109
  %116 = add nsw i32 %115, %105
  br label %117

117:                                              ; preds = %102, %107, %111, %31
  %118 = phi i8 [ %33, %31 ], [ %78, %111 ], [ %78, %107 ], [ %78, %102 ]
  %119 = phi i32 [ 0, %31 ], [ %76, %111 ], [ %76, %107 ], [ %76, %102 ]
  %120 = phi i32 [ 0, %31 ], [ %103, %102 ], [ %116, %111 ], [ %105, %107 ]
  %121 = zext i8 %118 to i32
  %122 = add nuw nsw i32 %121, 7
  %123 = lshr i32 %122, 3
  %124 = add nsw i32 %119, 1
  %125 = sub i32 %124, %120
  %126 = mul i32 %125, %123
  %127 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %127, label %128, label %141

128:                                              ; preds = %117
  %129 = zext i32 %126 to i64
  %130 = call i64 @llvm.ctlz.i64(i64 %129, i1 true) #10, !range !71
  %131 = trunc i64 %130 to i32
  %132 = icmp ult i32 %131, 60
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = add nsw i64 %129, -1
  %135 = sub nuw nsw i32 60, %131
  %136 = zext i32 %135 to i64
  %137 = lshr i64 %134, %136
  %138 = add nuw i64 %137, 1
  %139 = shl i64 %138, %136
  %140 = trunc i64 %139 to i32
  br label %141

141:                                              ; preds = %133, %128, %117
  %142 = phi i32 [ %126, %117 ], [ %140, %133 ], [ %126, %128 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @"??_C@_0GF@IMIIMJK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %145

145:                                              ; preds = %144, %141
  %146 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !22
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %28, align 4, !tbaa !24
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %160

154:                                              ; preds = %145
  %155 = call zeroext i1 @"?validate_device_pointer@Cuda@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %142) #9
  br i1 %155, label %337, label %156

156:                                              ; preds = %154
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@EKGDAOKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %337

157:                                              ; preds = %169, %149
  %158 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %158) #10
  store i32 0, i32* %5, align 4, !tbaa !40
  %159 = call zeroext i1 @halide_can_reuse_device_allocations(i8* %0) #8
  br i1 %159, label %173, label %268

160:                                              ; preds = %152, %169
  %161 = phi i32 [ %150, %152 ], [ %170, %169 ]
  %162 = phi i32 [ 0, %152 ], [ %171, %169 ]
  %163 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %153, align 8, !tbaa !25
  %164 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %163, i32 %162, i32 2
  %165 = load i32, i32* %164, align 4, !tbaa !28
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @"??_C@_0HD@KCEJMHHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  %168 = load i32, i32* %28, align 4, !tbaa !24
  br label %169

169:                                              ; preds = %160, %167
  %170 = phi i32 [ %161, %160 ], [ %168, %167 ]
  %171 = add nuw nsw i32 %162, 1
  %172 = icmp slt i32 %171, %170
  br i1 %172, label %160, label %157, !llvm.loop !83

173:                                              ; preds = %157
  %174 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %174) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 4, !tbaa !38
  %175 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA", align 4, !tbaa !38
  %176 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %175, null
  br i1 %176, label %201, label %177

177:                                              ; preds = %173
  %178 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4, !tbaa !51
  %179 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %178, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %6) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %177
  %182 = call i8* @malloc(i32 1024) #8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %182, i32 1023
  store i8 0, i8* %185, align 1, !tbaa !37
  br label %186

186:                                              ; preds = %181, %184
  %187 = phi i8* [ %185, %184 ], [ null, %181 ]
  %188 = call i8* @halide_string_to_string(i8* %182, i8* %187, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @"??_C@_0EF@NHLNPEBK@CUDA?3?5In?5halide_cuda_device_mall@", i32 0, i32 0)) #8
  %189 = sext i32 %179 to i64
  %190 = call i8* @halide_int64_to_string(i8* %188, i8* %187, i64 %189, i32 1) #8
  %191 = call i8* @halide_string_to_string(i8* %190, i8* %187, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %183, label %192, label %193

192:                                              ; preds = %186
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %200

193:                                              ; preds = %186
  %194 = ptrtoint i8* %191 to i32
  %195 = ptrtoint i8* %182 to i32
  %196 = add i32 %194, 1
  %197 = sub i32 %196, %195
  %198 = sext i32 %197 to i64
  %199 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %182, i64 %198) #8
  call void @halide_error(i8* %0, i8* nonnull %182) #8
  br label %200

200:                                              ; preds = %193, %192
  call void @free(i8* %182) #8
  br label %201

201:                                              ; preds = %177, %200, %173
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  %202 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A", align 4, !tbaa !38
  %203 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %202, null
  br i1 %203, label %255, label %204

204:                                              ; preds = %201
  %205 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %10, align 4
  %206 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %6, align 4
  br label %207

207:                                              ; preds = %204, %237
  %208 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %202, %204 ], [ %242, %237 ]
  %209 = phi i32 [ 0, %204 ], [ %241, %237 ]
  %210 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ @"?free_list@Cuda@Internal@Runtime@Halide@@3PAUFreeListItem@1234@A", %204 ], [ %240, %237 ]
  %211 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ null, %204 ], [ %239, %237 ]
  %212 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ null, %204 ], [ %238, %237 ]
  %213 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %208, i32 0, i32 3
  %214 = load i32, i32* %213, align 4, !tbaa !72
  %215 = icmp ugt i32 %142, %214
  br i1 %215, label %234, label %216

216:                                              ; preds = %207
  %217 = lshr i32 %214, 3
  %218 = mul nuw i32 %217, 7
  %219 = icmp ult i32 %142, %218
  br i1 %219, label %234, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %208, i32 0, i32 1
  %222 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %221, align 4, !tbaa !70
  %223 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %205, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %208, i32 0, i32 2
  %226 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %225, align 4, !tbaa !73
  %227 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %206, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %212, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %212, i32 0, i32 3
  %232 = load i32, i32* %231, align 4, !tbaa !72
  %233 = icmp ugt i32 %232, %214
  br i1 %233, label %237, label %234

234:                                              ; preds = %230, %224, %220, %216, %207
  %235 = icmp ugt i32 %209, 32
  br i1 %235, label %236, label %237

236:                                              ; preds = %234
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* null, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %210, align 4, !tbaa !38
  br label %244

237:                                              ; preds = %234, %228, %230
  %238 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %208, %230 ], [ %208, %228 ], [ %212, %234 ]
  %239 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %210, %230 ], [ %210, %228 ], [ %211, %234 ]
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %208, i32 0, i32 4
  %241 = add nuw nsw i32 %209, 1
  %242 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %240, align 4, !tbaa !38
  %243 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %242, null
  br i1 %243, label %244, label %207, !llvm.loop !84

244:                                              ; preds = %237, %236
  %245 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %212, %236 ], [ %238, %237 ]
  %246 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** [ %211, %236 ], [ %239, %237 ]
  %247 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %208, %236 ], [ null, %237 ]
  %248 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %245, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %245, i32 0, i32 0
  %251 = load i32, i32* %250, align 4, !tbaa !64
  store i32 %251, i32* %5, align 4, !tbaa !40
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %245, i32 0, i32 4
  %253 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %252, align 4, !tbaa !66
  store %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %253, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %246, align 4, !tbaa !38
  %254 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %245 to i8*
  call void @free(i8* nonnull %254) #8
  br label %255

255:                                              ; preds = %201, %244, %249
  %256 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %247, %249 ], [ %247, %244 ], [ null, %201 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?free_list_lock@Cuda@Internal@Runtime@Halide@@3Uhalide_mutex@@A") #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %174) #10
  %257 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %256, null
  br i1 %257, label %268, label %258

258:                                              ; preds = %255, %258
  %259 = phi %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* [ %261, %258 ], [ %256, %255 ]
  %260 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %259, i32 0, i32 4
  %261 = load %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"*, %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"** %260, align 4, !tbaa !66
  %262 = load i32 (i32)*, i32 (i32)** @"?cuMemFree@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %263 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Cuda::FreeListItem", %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %259, i32 0, i32 0
  %264 = load i32, i32* %263, align 4, !tbaa !64
  %265 = call x86_stdcallcc i32 %262(i32 %264) #8
  %266 = bitcast %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %259 to i8*
  call void @free(i8* nonnull %266) #8
  %267 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::FreeListItem"* %261, null
  br i1 %267, label %268, label %258, !llvm.loop !85

268:                                              ; preds = %258, %157, %255
  %269 = load i32, i32* %5, align 4, !tbaa !40
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %328

271:                                              ; preds = %268
  %272 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAII@ZA", align 4, !tbaa !38
  %273 = call x86_stdcallcc i32 %272(i32* nonnull %5, i32 %142) #8
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = call i32 @halide_cuda_release_unused_device_allocations(i8* %0) #9
  %277 = load i32 (i32*, i32)*, i32 (i32*, i32)** @"?cuMemAlloc@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAII@ZA", align 4, !tbaa !38
  %278 = call x86_stdcallcc i32 %277(i32* nonnull %5, i32 %142) #8
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i32 [ %278, %275 ], [ %273, %271 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %323, label %282

282:                                              ; preds = %279
  %283 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %280) #9
  %284 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %284) #10
  %285 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %285, align 4, !tbaa !41
  %286 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %286, align 4, !tbaa !44
  %287 = call i8* @malloc(i32 1024) #8
  %288 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %287, i8** %288, align 4, !tbaa !45
  %289 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %287, i8** %289, align 4, !tbaa !46
  %290 = icmp eq i8* %287, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %282
  %292 = getelementptr inbounds i8, i8* %287, i32 1023
  store i8 0, i8* %292, align 1, !tbaa !37
  br label %293

293:                                              ; preds = %282, %291
  %294 = phi i8* [ %292, %291 ], [ null, %282 ]
  %295 = call i8* @halide_string_to_string(i8* %287, i8* %294, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@IFMPONBJ@CUDA?3?5cuMemAlloc?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %296 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %280) #9
  %297 = icmp eq i8* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = call i8* @halide_string_to_string(i8* %295, i8* %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %302

300:                                              ; preds = %293
  %301 = call i8* @halide_string_to_string(i8* %295, i8* %294, i8* nonnull %296) #8
  br label %302

302:                                              ; preds = %298, %300
  %303 = phi i8* [ %301, %300 ], [ %299, %298 ]
  %304 = load i8*, i8** %288, align 4, !tbaa !45
  %305 = icmp eq i8* %304, null
  %306 = load i8*, i8** %285, align 4, !tbaa !41
  br i1 %305, label %307, label %308

307:                                              ; preds = %302
  call void @halide_error(i8* %306, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %317

308:                                              ; preds = %302
  %309 = ptrtoint i8* %303 to i32
  %310 = ptrtoint i8* %304 to i32
  %311 = sub i32 1, %310
  %312 = add i32 %311, %309
  %313 = sext i32 %312 to i64
  %314 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %306, i8* nonnull %304, i64 %313) #8
  %315 = load i8*, i8** %288, align 4, !tbaa !45
  %316 = load i8*, i8** %285, align 4, !tbaa !41
  call void @halide_error(i8* %316, i8* %315) #8
  br label %317

317:                                              ; preds = %308, %307
  %318 = load i8, i8* %286, align 4, !tbaa !44, !range !47
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = load i8*, i8** %288, align 4, !tbaa !45
  call void @free(i8* %321) #8
  br label %322

322:                                              ; preds = %320, %317
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %284) #10
  br label %335

323:                                              ; preds = %279
  %324 = load i32, i32* %5, align 4, !tbaa !40
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @"??_C@_0FN@MGKEONMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  %327 = load i32, i32* %5, align 4, !tbaa !40
  br label %328

328:                                              ; preds = %268, %326, %323
  %329 = phi i32 [ %269, %268 ], [ %327, %326 ], [ %324, %323 ]
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %146, align 8, !tbaa !22
  %331 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %331, align 8, !tbaa !74
  %332 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !75
  %333 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %332, i32 0, i32 0
  %334 = load void ()*, void ()** %333, align 4, !tbaa !86
  call void %334() #8
  br label %335

335:                                              ; preds = %322, %328
  %336 = phi i32 [ 0, %328 ], [ %280, %322 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %158) #10
  br label %337

337:                                              ; preds = %335, %156, %154
  %338 = phi i32 [ 0, %154 ], [ 0, %156 ], [ %336, %335 ]
  %339 = load i32, i32* %11, align 4, !tbaa !52
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %342) #10
  %343 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %344 = call x86_stdcallcc i32 %343(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #10
  br label %345

345:                                              ; preds = %2, %22, %337, %341
  %346 = phi i32 [ %338, %337 ], [ %338, %341 ], [ %25, %22 ], [ %12, %2 ]
  %347 = load i8*, i8** %9, align 4, !tbaa !49
  %348 = call i32 @halide_cuda_release_context(i8* %347) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %8) #10
  ret i32 %346

349:                                              ; preds = %96
  %350 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %98, i32 1
  %351 = load i32, i32* %350, align 4, !tbaa !31
  %352 = add nsw i32 %351, -1
  %353 = mul nsw i32 %352, %100
  %354 = add nsw i32 %353, %97
  br label %355

355:                                              ; preds = %349, %96
  %356 = phi i32 [ %354, %349 ], [ %97, %96 ]
  %357 = add nuw nsw i32 %84, 2
  %358 = add i32 %86, -2
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %102, label %83, !llvm.loop !79

360:                                              ; preds = %54
  %361 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %56, i32 1
  %362 = load i32, i32* %361, align 4, !tbaa !31
  %363 = add nsw i32 %362, -1
  %364 = mul nsw i32 %363, %58
  %365 = add nsw i32 %364, %55
  br label %366

366:                                              ; preds = %360, %54
  %367 = phi i32 [ %365, %360 ], [ %55, %54 ]
  %368 = add nuw nsw i32 %42, 2
  %369 = add i32 %44, -2
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %60, label %41, !llvm.loop !80
}

; Function Attrs: nounwind
define weak dso_local i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4, i1 zeroext %5, i1 zeroext %6) local_unnamed_addr #4 {
  %8 = icmp sgt i32 %4, 16
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = tail call i8* @malloc(i32 1024) #8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i32 1023
  store i8 0, i8* %15, align 1, !tbaa !37
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i32 0, i32 0)) #8
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
  %44 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** @"?cuMemcpyDtoH@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAXII@ZA", align 4, !tbaa !38
  %45 = load i64, i64* %40, align 8, !tbaa !12
  %46 = trunc i64 %45 to i32
  %47 = tail call x86_stdcallcc i32 %44(i8* %39, i32 %36, i32 %46) #8
  br label %69

48:                                               ; preds = %35
  %49 = xor i1 %5, true
  %50 = or i1 %49, %6
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** @"?cuMemcpyHtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@IPBXI@ZA", align 4, !tbaa !38
  %53 = load i64, i64* %40, align 8, !tbaa !12
  %54 = trunc i64 %53 to i32
  %55 = tail call x86_stdcallcc i32 %52(i32 %38, i8* %37, i32 %54) #8
  br label %69

56:                                               ; preds = %48
  %57 = or i1 %5, %6
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** @"?cuMemcpyDtoD@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@III@ZA", align 4, !tbaa !38
  %60 = load i64, i64* %40, align 8, !tbaa !12
  %61 = trunc i64 %60 to i32
  %62 = tail call x86_stdcallcc i32 %59(i32 %38, i32 %36, i32 %61) #8
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
  %71 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@HIPEOAAC@cuMemcpyDtoD?$AA@", i32 0, i32 0), %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@LNAEANAD@cuMemcpyHtoD?$AA@", i32 0, i32 0), %51 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@NEEBKPAO@cuMemcpyDtoH?$AA@", i32 0, i32 0), %43 ]
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %69
  %74 = tail call i8* @malloc(i32 1024) #8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, i8* %74, i32 1023
  store i8 0, i8* %77, align 1, !tbaa !37
  br label %78

78:                                               ; preds = %73, %76
  %79 = phi i8* [ %77, %76 ], [ null, %73 ]
  %80 = tail call i8* @halide_string_to_string(i8* %74, i8* %79, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06HJJAFDBE@CUDA?3?5?$AA@", i32 0, i32 0)) #8
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %79, i8* nonnull %71) #8
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %79, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FIOGNGMI@?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %83 = tail call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %70) #9
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = tail call i8* @halide_string_to_string(i8* %82, i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %89

87:                                               ; preds = %78
  %88 = tail call i8* @halide_string_to_string(i8* %82, i8* %79, i8* nonnull %83) #8
  br label %89

89:                                               ; preds = %85, %87
  %90 = phi i8* [ %88, %87 ], [ %86, %85 ]
  br i1 %75, label %91, label %92

91:                                               ; preds = %89
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  %104 = sext i32 %102 to i64
  %105 = add i64 %104, %3
  %106 = sext i32 %103 to i64
  %107 = add i64 %106, %2
  %108 = tail call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %107, i64 %105, i32 %27, i1 zeroext %5, i1 zeroext %6) #9
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
  br i1 %120, label %100, label %121, !llvm.loop !87

121:                                              ; preds = %110, %100, %26, %63, %65, %69, %99, %23
  %122 = phi i32 [ -1, %23 ], [ %70, %99 ], [ 0, %69 ], [ 0, %65 ], [ 0, %63 ], [ 0, %26 ], [ 0, %110 ], [ %108, %100 ]
  ret i32 %122
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %8 = icmp eq %struct.halide_device_interface_t* %2, null
  %9 = icmp eq %struct.halide_device_interface_t* %2, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @"??_C@_0KN@JNCHLBNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %14 = load i64, i64* %13, align 8, !tbaa !88
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
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !74
  %24 = icmp eq %struct.halide_device_interface_t* %23, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  br i1 %9, label %92, label %26

26:                                               ; preds = %25
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@NMJPPNNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %92

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !tbaa !74
  %30 = icmp eq %struct.halide_device_interface_t* %29, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@OPNBCGF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %51) #10
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %6, %struct.halide_buffer_t* nonnull %1, i1 zeroext %44, %struct.halide_buffer_t* %3, i1 zeroext %8) #9
  %52 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %52) #10
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 0
  store i8* %0, i8** %53, align 4, !tbaa !49
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !51
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %7, i32 0, i32 2
  store i32 0, i32* %55, align 4, !tbaa !52
  %56 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %54, i1 zeroext true) #8
  store i32 %56, i32* %55, align 4, !tbaa !52
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %59 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !51
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %64 = icmp eq i32 (i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %68 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %54, align 4, !tbaa !51
  %69 = call x86_stdcallcc i32 %67(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %68) #8
  store i32 %69, i32* %55, align 4, !tbaa !52
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %73 = load i32, i32* %72, align 4, !tbaa !24
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1
  %75 = load i64, i64* %74, align 8, !tbaa !11
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2
  %79 = load i64, i64* %78, align 8, !tbaa !14
  %80 = add i64 %79, %77
  %81 = call i32 @cuda_do_multidimensional_copy(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %6, i64 %80, i64 %75, i32 %73, i1 zeroext %44, i1 zeroext %8) #9
  %82 = load i32, i32* %55, align 4, !tbaa !52
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #10
  %86 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %87 = call x86_stdcallcc i32 %86(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10
  br label %88

88:                                               ; preds = %50, %66, %71, %84
  %89 = phi i32 [ %81, %71 ], [ %81, %84 ], [ %69, %66 ], [ %56, %50 ]
  %90 = load i8*, i8** %53, align 4, !tbaa !49
  %91 = call i32 @halide_cuda_release_context(i8* %90) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %52) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %51) #10
  br label %92

92:                                               ; preds = %26, %25, %88
  %93 = phi i32 [ %89, %88 ], [ -42, %25 ], [ -42, %26 ]
  ret i32 %93
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0
  store i64 %6, i64* %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1
  store %struct.halide_device_interface_t* %9, %struct.halide_device_interface_t** %10, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !88
  %13 = and i64 %12, 2
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !88
  %16 = and i64 %15, -3
  %17 = or i64 %16, %13
  store i64 %17, i64* %14, align 8, !tbaa !88
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !25
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %5, 1
  br i1 %13, label %46, label %14

14:                                               ; preds = %7
  %15 = and i32 %5, -2
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %43, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %42, %16 ]
  %19 = phi i32 [ %15, %14 ], [ %44, %16 ]
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %17, i32 0
  %21 = load i32, i32* %20, align 4, !tbaa !26
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %17, i32 0
  %23 = load i32, i32* %22, align 4, !tbaa !26
  %24 = sub nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %17, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !28
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %25, %28
  %30 = add nsw i64 %29, %18
  %31 = or i32 %17, 1
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %31, i32 0
  %33 = load i32, i32* %32, align 4, !tbaa !26
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %31, i32 0
  %35 = load i32, i32* %34, align 4, !tbaa !26
  %36 = sub nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %31, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !28
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %37, %40
  %42 = add nsw i64 %41, %30
  %43 = add nuw nsw i32 %17, 2
  %44 = add i32 %19, -2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %16, !llvm.loop !89

46:                                               ; preds = %16, %7
  %47 = phi i64 [ undef, %7 ], [ %42, %16 ]
  %48 = phi i32 [ 0, %7 ], [ %43, %16 ]
  %49 = phi i64 [ 0, %7 ], [ %42, %16 ]
  %50 = icmp eq i32 %12, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %48, i32 0
  %53 = load i32, i32* %52, align 4, !tbaa !26
  %54 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %48, i32 0
  %55 = load i32, i32* %54, align 4, !tbaa !26
  %56 = sub nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %48, i32 2
  %59 = load i32, i32* %58, align 4, !tbaa !28
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %57, %60
  %62 = add nsw i64 %61, %49
  br label %63

63:                                               ; preds = %51, %46, %3
  %64 = phi i64 [ 0, %3 ], [ %47, %46 ], [ %62, %51 ]
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %66 = load i8, i8* %65, align 1, !tbaa !23
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 7
  %69 = lshr i32 %68, 3
  %70 = zext i32 %69 to i64
  %71 = mul nsw i64 %64, %70
  %72 = tail call i32 @cuda_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %71, %struct.halide_buffer_t* %2) #9
  ret i32 %72
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_cuda_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #5 {
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !26
  %10 = sub nsw i32 %3, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !28
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
  %3 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %4 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %5 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %7 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #10
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 0
  store i8* %0, i8** %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %4, i32 0, i32 2
  store i32 0, i32* %10, align 4, !tbaa !52
  %11 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %9, i1 zeroext true) #8
  store i32 %11, i32* %10, align 4, !tbaa !52
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %2
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %14 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !51
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %19 = icmp eq i32 (i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %23 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !51
  %24 = call x86_stdcallcc i32 %22(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %23) #8
  store i32 %24, i32* %10, align 4, !tbaa !52
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %21
  %27 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA", align 4, !tbaa !38
  %28 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #10
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %9, align 4, !tbaa !51
  %32 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %5) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = call i8* @malloc(i32 1024) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i32 1023
  store i8 0, i8* %38, align 1, !tbaa !37
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@EBCFNJMM@CUDA?3?5In?5halide_cuda_device_sync@", i32 0, i32 0)) #8
  %42 = sext i32 %32 to i64
  %43 = call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %42, i32 1) #8
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %36, label %45, label %46

45:                                               ; preds = %39
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
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
  %55 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA", align 4, !tbaa !38
  %56 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %5, align 4, !tbaa !38
  %57 = call x86_stdcallcc i32 %55(%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %56) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #10
  br label %61

58:                                               ; preds = %26
  %59 = load i32 ()*, i32 ()** @"?cuCtxSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@XZA", align 4, !tbaa !38
  %60 = call x86_stdcallcc i32 %59() #8
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %57, %54 ], [ %60, %58 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %61
  %65 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %65) #10
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3
  store i8* %0, i8** %66, align 4, !tbaa !41
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4
  store i8 1, i8* %67, align 4, !tbaa !44
  %68 = call i8* @malloc(i32 1024) #8
  %69 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0
  store i8* %68, i8** %69, align 4, !tbaa !45
  %70 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1
  store i8* %68, i8** %70, align 4, !tbaa !46
  %71 = icmp eq i8* %68, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %68, i32 1023
  store i8 0, i8* %73, align 1, !tbaa !37
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi i8* [ %73, %72 ], [ null, %64 ]
  %76 = call i8* @halide_string_to_string(i8* %68, i8* %75, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@MMGFAAGI@CUDA?3?5cuCtxSynchronize?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %77 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %62) #9
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i8* @halide_string_to_string(i8* %76, i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %83

81:                                               ; preds = %74
  %82 = call i8* @halide_string_to_string(i8* %76, i8* %75, i8* nonnull %77) #8
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ]
  %85 = load i8*, i8** %69, align 4, !tbaa !45
  %86 = icmp eq i8* %85, null
  %87 = load i8*, i8** %66, align 4, !tbaa !41
  br i1 %86, label %88, label %89

88:                                               ; preds = %83
  call void @halide_error(i8* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %98

89:                                               ; preds = %83
  %90 = ptrtoint i8* %84 to i32
  %91 = ptrtoint i8* %85 to i32
  %92 = sub i32 1, %91
  %93 = add i32 %92, %90
  %94 = sext i32 %93 to i64
  %95 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %87, i8* nonnull %85, i64 %94) #8
  %96 = load i8*, i8** %69, align 4, !tbaa !45
  %97 = load i8*, i8** %66, align 4, !tbaa !41
  call void @halide_error(i8* %97, i8* %96) #8
  br label %98

98:                                               ; preds = %89, %88
  %99 = load i8, i8* %67, align 4, !tbaa !44, !range !47
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %69, align 4, !tbaa !45
  call void @free(i8* %102) #8
  br label %103

103:                                              ; preds = %98, %101
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %65) #10
  br label %104

104:                                              ; preds = %103, %61
  %105 = load i32, i32* %10, align 4, !tbaa !52
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %108) #10
  %109 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %110 = call x86_stdcallcc i32 %109(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %108) #10
  br label %111

111:                                              ; preds = %2, %21, %104, %107
  %112 = phi i32 [ %62, %104 ], [ %62, %107 ], [ %24, %21 ], [ %11, %2 ]
  %113 = load i8*, i8** %8, align 4, !tbaa !49
  %114 = call i32 @halide_cuda_release_context(i8* %113) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #10
  ret i32 %112
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %19 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %20 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, align 4
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %22 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, align 4
  %23 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %24 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %24) #10
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 0
  store i8* %0, i8** %25, align 4, !tbaa !49
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !51
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %19, i32 0, i32 2
  store i32 0, i32* %27, align 4, !tbaa !52
  %28 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %26, i1 zeroext true) #8
  store i32 %28, i32* %27, align 4, !tbaa !52
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %258

30:                                               ; preds = %17
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %31 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !51
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %36 = icmp eq i32 (i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %38

38:                                               ; preds = %34, %37
  %39 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %40 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !51
  %41 = call x86_stdcallcc i32 %39(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %40) #8
  store i32 %41, i32* %27, align 4, !tbaa !52
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %258

43:                                               ; preds = %38
  %44 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !51
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 0)) #8
  %45 = ptrtoint i8* %1 to i32
  %46 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 1), align 4, !tbaa !56
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %43
  %49 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %44 to i32
  %50 = add i32 %49, %45
  %51 = mul i32 %50, -1640531527
  %52 = sub i32 32, %46
  %53 = lshr i32 %51, %52
  %54 = shl nuw i32 1, %46
  %55 = icmp eq i32 %46, 31
  br i1 %55, label %80, label %56

56:                                               ; preds = %48
  %57 = add nsw i32 %54, -1
  %58 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 2), align 4, !tbaa !57
  %59 = icmp sgt i32 %54, 1
  %60 = select i1 %59, i32 %54, i32 1
  br label %64

61:                                               ; preds = %72
  %62 = icmp slt i32 %78, %54
  %63 = icmp eq i32 %78, %60
  br i1 %63, label %80, label %64, !llvm.loop !58

64:                                               ; preds = %61, %56
  %65 = phi i1 [ true, %56 ], [ %62, %61 ]
  %66 = phi i32 [ 0, %56 ], [ %78, %61 ]
  %67 = add i32 %66, %53
  %68 = and i32 %67, %57
  %69 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %68, i32 2
  %70 = load i32, i32* %69, align 4, !tbaa !59
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %68, i32 0
  %74 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %73, align 4, !tbaa !61
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %74, %44
  %76 = icmp eq i32 %70, %45
  %77 = and i1 %76, %75
  %78 = add nuw nsw i32 %66, 1
  br i1 %77, label %79, label %61

79:                                               ; preds = %72
  br i1 %65, label %81, label %80

80:                                               ; preds = %61, %64, %79, %43, %48
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 0)) #8
  br label %85

81:                                               ; preds = %79
  %82 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %58, i32 %68, i32 1
  %83 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %82, align 4, !tbaa !38
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 0)) #8
  %84 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %81
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@JLBLKPLK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %86

86:                                               ; preds = %81, %85
  %87 = phi %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* [ %83, %81 ], [ null, %85 ]
  %88 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %88) #10
  %89 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"**, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, i8*)** @"?cuModuleGetFunction@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUfunc_st@1234@PAUCUmod_st@1234@PBD@ZA", align 4, !tbaa !38
  %90 = call x86_stdcallcc i32 %89(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** nonnull %20, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %87, i8* %2) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %132, label %92

92:                                               ; preds = %86
  %93 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %93) #10
  %94 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 3
  store i8* %0, i8** %94, align 4, !tbaa !41
  %95 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 4
  store i8 1, i8* %95, align 4, !tbaa !44
  %96 = call i8* @malloc(i32 1024) #8
  %97 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 0
  store i8* %96, i8** %97, align 4, !tbaa !45
  %98 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 1
  store i8* %96, i8** %98, align 4, !tbaa !46
  %99 = icmp eq i8* %96, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds i8, i8* %96, i32 1023
  store i8 0, i8* %101, align 1, !tbaa !37
  br label %102

102:                                              ; preds = %92, %100
  %103 = phi i8* [ %101, %100 ], [ null, %92 ]
  %104 = call i8* @halide_string_to_string(i8* %96, i8* %103, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@CKBMCDCA@CUDA?3?5cuModuleGetFunction?5failed@", i32 0, i32 0)) #8
  %105 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %90) #9
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i8* @halide_string_to_string(i8* %104, i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %111

109:                                              ; preds = %102
  %110 = call i8* @halide_string_to_string(i8* %104, i8* %103, i8* nonnull %105) #8
  br label %111

111:                                              ; preds = %107, %109
  %112 = phi i8* [ %110, %109 ], [ %108, %107 ]
  %113 = load i8*, i8** %97, align 4, !tbaa !45
  %114 = icmp eq i8* %113, null
  %115 = load i8*, i8** %94, align 4, !tbaa !41
  br i1 %114, label %116, label %117

116:                                              ; preds = %111
  call void @halide_error(i8* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %126

117:                                              ; preds = %111
  %118 = ptrtoint i8* %112 to i32
  %119 = ptrtoint i8* %113 to i32
  %120 = sub i32 1, %119
  %121 = add i32 %120, %118
  %122 = sext i32 %121 to i64
  %123 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %115, i8* nonnull %113, i64 %122) #8
  %124 = load i8*, i8** %97, align 4, !tbaa !45
  %125 = load i8*, i8** %94, align 4, !tbaa !41
  call void @halide_error(i8* %125, i8* %124) #8
  br label %126

126:                                              ; preds = %117, %116
  %127 = load i8, i8* %95, align 4, !tbaa !44, !range !47
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load i8*, i8** %97, align 4, !tbaa !45
  call void @free(i8* %130) #8
  br label %131

131:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %93) #10
  br label %250

132:                                              ; preds = %86, %132
  %133 = phi i32 [ %137, %132 ], [ 0, %86 ]
  %134 = getelementptr inbounds i32, i32* %10, i32 %133
  %135 = load i32, i32* %134, align 4, !tbaa !40
  %136 = icmp eq i32 %135, 0
  %137 = add i32 %133, 1
  br i1 %136, label %138, label %132, !llvm.loop !90

138:                                              ; preds = %132
  %139 = shl i32 %133, 2
  %140 = add i32 %139, 4
  %141 = call i8* @malloc(i32 %140) #8
  %142 = bitcast i8* %141 to i8**
  %143 = shl i32 %133, 3
  %144 = call i8* @malloc(i32 %143) #8
  %145 = bitcast i8* %144 to i64*
  br label %150

146:                                              ; preds = %173
  %147 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %147) #10
  store %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 4, !tbaa !38
  %148 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)** @"?cuStreamSynchronize@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUstream_st@1234@@ZA", align 4, !tbaa !38
  %149 = icmp eq i32 (%"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*)* %148, null
  br i1 %149, label %202, label %176

150:                                              ; preds = %138, %173
  %151 = phi i32 [ 0, %138 ], [ %174, %173 ]
  %152 = getelementptr inbounds i8, i8* %12, i32 %151
  %153 = load i8, i8* %152, align 1, !tbaa !37
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds i32, i32* %10, i32 %151
  %157 = load i32, i32* %156, align 4, !tbaa !40
  %158 = icmp eq i32 %157, 8
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @"??_C@_0HN@LGMAJGMN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %160

160:                                              ; preds = %159, %155
  %161 = getelementptr inbounds i8*, i8** %11, i32 %151
  %162 = bitcast i8** %161 to %struct.halide_buffer_t**
  %163 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %162, align 4, !tbaa !38
  %164 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8, !tbaa !22
  %166 = getelementptr inbounds i64, i64* %145, i32 %151
  store i64 %165, i64* %166, align 8, !tbaa !3
  %167 = getelementptr inbounds i8*, i8** %142, i32 %151
  %168 = bitcast i8** %167 to i64**
  store i64* %166, i64** %168, align 4, !tbaa !38
  br label %173

169:                                              ; preds = %150
  %170 = getelementptr inbounds i8*, i8** %11, i32 %151
  %171 = load i8*, i8** %170, align 4, !tbaa !38
  %172 = getelementptr inbounds i8*, i8** %142, i32 %151
  store i8* %171, i8** %172, align 4, !tbaa !38
  br label %173

173:                                              ; preds = %160, %169
  %174 = add i32 %151, 1
  %175 = icmp ugt i32 %174, %133
  br i1 %175, label %146, label %150, !llvm.loop !91

176:                                              ; preds = %146
  %177 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %26, align 4, !tbaa !51
  %178 = call i32 @halide_cuda_get_stream(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %177, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** nonnull %22) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"** %22, align 4, !tbaa !38
  br label %202

182:                                              ; preds = %176
  %183 = call i8* @malloc(i32 1024) #8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds i8, i8* %183, i32 1023
  store i8 0, i8* %186, align 1, !tbaa !37
  br label %187

187:                                              ; preds = %182, %185
  %188 = phi i8* [ %186, %185 ], [ null, %182 ]
  %189 = call i8* @halide_string_to_string(i8* %183, i8* %188, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @"??_C@_0DL@OALCCANJ@CUDA?3?5In?5halide_cuda_run?0?5halide@", i32 0, i32 0)) #8
  %190 = sext i32 %178 to i64
  %191 = call i8* @halide_int64_to_string(i8* %189, i8* %188, i64 %190, i32 1) #8
  %192 = call i8* @halide_string_to_string(i8* %191, i8* %188, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #8
  br i1 %184, label %193, label %194

193:                                              ; preds = %187
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %201

194:                                              ; preds = %187
  %195 = ptrtoint i8* %192 to i32
  %196 = ptrtoint i8* %183 to i32
  %197 = add i32 %195, 1
  %198 = sub i32 %197, %196
  %199 = sext i32 %198 to i64
  %200 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %183, i64 %199) #8
  call void @halide_error(i8* %0, i8* nonnull %183) #8
  br label %201

201:                                              ; preds = %194, %193
  call void @free(i8* %183) #8
  call void @free(i8* %144) #8
  call void @free(i8* nonnull %141) #8
  br label %248

202:                                              ; preds = %180, %146
  %203 = phi %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* [ %181, %180 ], [ null, %146 ]
  %204 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, i32, i32, i32, i32, i32, i32, i32, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"*, i8**, i8**)** @"?cuLaunchKernel@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUfunc_st@1234@IIIIIIIPAUCUstream_st@1234@PAPAX2@ZA", align 4, !tbaa !38
  %205 = load %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"** %20, align 4, !tbaa !38
  %206 = call x86_stdcallcc i32 %204(%"struct.Halide::Runtime::Internal::Cuda::CUfunc_st"* %205, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %"struct.Halide::Runtime::Internal::Cuda::CUstream_st"* %203, i8** nonnull %142, i8** null) #8
  call void @free(i8* %144) #8
  call void @free(i8* nonnull %141) #8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %248, label %208

208:                                              ; preds = %202
  %209 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %209) #10
  %210 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 3
  store i8* %0, i8** %210, align 4, !tbaa !41
  %211 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 4
  store i8 1, i8* %211, align 4, !tbaa !44
  %212 = call i8* @malloc(i32 1024) #8
  %213 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 0
  store i8* %212, i8** %213, align 4, !tbaa !45
  %214 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %23, i32 0, i32 1
  store i8* %212, i8** %214, align 4, !tbaa !46
  %215 = icmp eq i8* %212, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds i8, i8* %212, i32 1023
  store i8 0, i8* %217, align 1, !tbaa !37
  br label %218

218:                                              ; preds = %208, %216
  %219 = phi i8* [ %217, %216 ], [ null, %208 ]
  %220 = call i8* @halide_string_to_string(i8* %212, i8* %219, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@MFKABAO@CUDA?3?5cuLaunchKernel?5failed?3?5?$AA@", i32 0, i32 0)) #8
  %221 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %206) #9
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = call i8* @halide_string_to_string(i8* %220, i8* %219, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %227

225:                                              ; preds = %218
  %226 = call i8* @halide_string_to_string(i8* %220, i8* %219, i8* nonnull %221) #8
  br label %227

227:                                              ; preds = %223, %225
  %228 = phi i8* [ %226, %225 ], [ %224, %223 ]
  %229 = load i8*, i8** %213, align 4, !tbaa !45
  %230 = icmp eq i8* %229, null
  %231 = load i8*, i8** %210, align 4, !tbaa !41
  br i1 %230, label %232, label %233

232:                                              ; preds = %227
  call void @halide_error(i8* %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %242

233:                                              ; preds = %227
  %234 = ptrtoint i8* %228 to i32
  %235 = ptrtoint i8* %229 to i32
  %236 = sub i32 1, %235
  %237 = add i32 %236, %234
  %238 = sext i32 %237 to i64
  %239 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %231, i8* nonnull %229, i64 %238) #8
  %240 = load i8*, i8** %213, align 4, !tbaa !45
  %241 = load i8*, i8** %210, align 4, !tbaa !41
  call void @halide_error(i8* %241, i8* %240) #8
  br label %242

242:                                              ; preds = %233, %232
  %243 = load i8, i8* %211, align 4, !tbaa !44, !range !47
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load i8*, i8** %213, align 4, !tbaa !45
  call void @free(i8* %246) #8
  br label %247

247:                                              ; preds = %242, %245
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %209) #10
  br label %248

248:                                              ; preds = %201, %202, %247
  %249 = phi i32 [ %206, %247 ], [ %178, %201 ], [ 0, %202 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %147) #10
  br label %250

250:                                              ; preds = %131, %248
  %251 = phi i32 [ %90, %131 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %88) #10
  %252 = load i32, i32* %27, align 4, !tbaa !52
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %255) #10
  %256 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %257 = call x86_stdcallcc i32 %256(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %18) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %255) #10
  br label %258

258:                                              ; preds = %17, %38, %250, %254
  %259 = phi i32 [ %251, %250 ], [ %251, %254 ], [ %41, %38 ], [ %28, %17 ]
  %260 = load i8*, i8** %25, align 4, !tbaa !49
  %261 = call i32 @halide_cuda_release_context(i8* %260) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %24) #10
  ret i32 %259
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #8
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #8
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_wrap_device_ptr(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HOBIEDCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3, %7
  store i64 %2, i64* %4, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %11, align 8, !tbaa !74
  %12 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !75
  %13 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %12, i32 0, i32 0
  %14 = load void ()*, void ()** %13, align 4, !tbaa !86
  tail call void %14() #8
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi i32 [ 0, %10 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_detach_device_ptr(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !74
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@GABEKHCB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !74
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i32 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 4, !tbaa !75
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i32 0, i32 1
  %17 = load void ()*, void ()** %16, align 4, !tbaa !77
  tail call void %17() #8
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_cuda_get_device_ptr(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !74
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @"??_C@_0IM@KELMOOGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %6, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %6 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_cuda_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?cuda_device_interface@Cuda@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_cuda_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::Cuda::Context", align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = load i8*, i8** @"?lib_cuda@Cuda@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %10 = icmp ne i8* %9, null
  %11 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4
  %12 = icmp ne i32 (i32)* %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i8* @halide_cuda_get_symbol(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06BGNBMNO@cuInit?$AA@", i32 0, i32 0)) #9
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4, !tbaa !40
  store i32 0, i32* %1, align 4, !tbaa !40
  ret i32 0

18:                                               ; preds = %14, %3
  %19 = bitcast %"class.Halide::Runtime::Internal::Cuda::Context"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %19) #10
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 0
  store i8* %0, i8** %20, align 4, !tbaa !49
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::Cuda::Context", %"class.Halide::Runtime::Internal::Cuda::Context"* %5, i32 0, i32 2
  store i32 0, i32* %22, align 4, !tbaa !52
  %23 = call i32 @halide_cuda_acquire_context(i8* %0, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %21, i1 zeroext true) #8
  store i32 %23, i32* %22, align 4, !tbaa !52
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %149

25:                                               ; preds = %18
  call void @"?ensure_libcuda_init@Cuda@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %26 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !51
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@EGACNCPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32 (i32)*, i32 (i32)** @"?cuInit@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@I@ZA", align 4, !tbaa !38
  %31 = icmp eq i32 (i32)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@HJLONMMI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  call void @abort() #8
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*)** @"?cuCtxPushCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %21, align 4, !tbaa !51
  %36 = call x86_stdcallcc i32 %34(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35) #8
  store i32 %36, i32* %22, align 4, !tbaa !52
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %149

38:                                               ; preds = %33
  %39 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #10
  %40 = load i32 (i32*)*, i32 (i32*)** @"?cuCtxGetDevice@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAH@ZA", align 4, !tbaa !38
  %41 = call x86_stdcallcc i32 %40(i32* nonnull %6) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %38
  %44 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %44) #10
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %45, align 4, !tbaa !41
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %46, align 4, !tbaa !44
  %47 = call i8* @malloc(i32 1024) #8
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %47, i8** %48, align 4, !tbaa !45
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %47, i8** %49, align 4, !tbaa !46
  %50 = icmp eq i8* %47, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, i8* %47, i32 1023
  store i8 0, i8* %52, align 1, !tbaa !37
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8* [ %52, %51 ], [ null, %43 ]
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 2
  store i8* %54, i8** %55, align 4
  %56 = call i8* @halide_string_to_string(i8* %47, i8* %54, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@HDIJPFPI@CUDA?3?5cuCtxGetDevice?5failed?5?$CI?$AA@", i32 0, i32 0)) #8
  %57 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %41) #9
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %63

61:                                               ; preds = %53
  %62 = call i8* @halide_string_to_string(i8* %56, i8* %54, i8* nonnull %57) #8
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi i8* [ %62, %61 ], [ %60, %59 ]
  %65 = load i8*, i8** %55, align 4, !tbaa !92
  %66 = call i8* @halide_string_to_string(i8* %64, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i32 0, i32 0)) #8
  %67 = load i8*, i8** %48, align 4, !tbaa !45
  %68 = icmp eq i8* %67, null
  %69 = load i8*, i8** %45, align 4, !tbaa !41
  br i1 %68, label %70, label %71

70:                                               ; preds = %63
  call void @halide_error(i8* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %80

71:                                               ; preds = %63
  %72 = ptrtoint i8* %66 to i32
  %73 = ptrtoint i8* %67 to i32
  %74 = add i32 %72, 1
  %75 = sub i32 %74, %73
  %76 = sext i32 %75 to i64
  %77 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %69, i8* nonnull %67, i64 %76) #8
  %78 = load i8*, i8** %48, align 4, !tbaa !45
  %79 = load i8*, i8** %45, align 4, !tbaa !41
  call void @halide_error(i8* %79, i8* %78) #8
  br label %80

80:                                               ; preds = %71, %70
  %81 = load i8, i8* %46, align 4, !tbaa !44, !range !47
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %48, align 4, !tbaa !45
  call void @free(i8* %84) #8
  br label %85

85:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %44) #10
  br label %140

86:                                               ; preds = %38
  %87 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHW4CUdevice_attribute@1234@H@ZA", align 4, !tbaa !38
  %88 = load i32, i32* %6, align 4, !tbaa !40
  %89 = call x86_stdcallcc i32 %87(i32* %1, i32 75, i32 %88) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** @"?cuDeviceGetAttribute@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAHW4CUdevice_attribute@1234@H@ZA", align 4, !tbaa !38
  %93 = load i32, i32* %6, align 4, !tbaa !40
  %94 = call x86_stdcallcc i32 %92(i32* %2, i32 76, i32 %93) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %140, label %96

96:                                               ; preds = %86, %91
  %97 = phi i32 [ %94, %91 ], [ %89, %86 ]
  %98 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %98) #10
  %99 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %99, align 4, !tbaa !41
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %100, align 4, !tbaa !44
  %101 = call i8* @malloc(i32 1024) #8
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %101, i8** %102, align 4, !tbaa !45
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %101, i8** %103, align 4, !tbaa !46
  %104 = icmp eq i8* %101, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds i8, i8* %101, i32 1023
  store i8 0, i8* %106, align 1, !tbaa !37
  br label %107

107:                                              ; preds = %96, %105
  %108 = phi i8* [ %106, %105 ], [ null, %96 ]
  %109 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 2
  store i8* %108, i8** %109, align 4
  %110 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@BBPCNOHG@CUDA?3?5cuDeviceGetAttribute?5faile@", i32 0, i32 0)) #8
  %111 = call i8* @"?get_error_name@Cuda@Internal@Runtime@Halide@@YAPBDW4CUresult@1234@@Z"(i32 %97) #9
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i8* @halide_string_to_string(i8* %110, i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #8
  br label %117

115:                                              ; preds = %107
  %116 = call i8* @halide_string_to_string(i8* %110, i8* %108, i8* nonnull %111) #8
  br label %117

117:                                              ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %114, %113 ]
  %119 = load i8*, i8** %109, align 4, !tbaa !92
  %120 = call i8* @halide_string_to_string(i8* %118, i8* %119, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i32 0, i32 0)) #8
  %121 = load i8*, i8** %102, align 4, !tbaa !45
  %122 = icmp eq i8* %121, null
  %123 = load i8*, i8** %99, align 4, !tbaa !41
  br i1 %122, label %124, label %125

124:                                              ; preds = %117
  call void @halide_error(i8* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #8
  br label %134

125:                                              ; preds = %117
  %126 = ptrtoint i8* %120 to i32
  %127 = ptrtoint i8* %121 to i32
  %128 = add i32 %126, 1
  %129 = sub i32 %128, %127
  %130 = sext i32 %129 to i64
  %131 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %123, i8* nonnull %121, i64 %130) #8
  %132 = load i8*, i8** %102, align 4, !tbaa !45
  %133 = load i8*, i8** %99, align 4, !tbaa !41
  call void @halide_error(i8* %133, i8* %132) #8
  br label %134

134:                                              ; preds = %125, %124
  %135 = load i8, i8* %100, align 4, !tbaa !44, !range !47
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %102, align 4, !tbaa !45
  call void @free(i8* %138) #8
  br label %139

139:                                              ; preds = %134, %137
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %98) #10
  br label %140

140:                                              ; preds = %85, %139, %91
  %141 = phi i32 [ %41, %85 ], [ %97, %139 ], [ 0, %91 ]
  %142 = phi i32 [ 1, %85 ], [ 1, %139 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #10
  %143 = load i32, i32* %22, align 4, !tbaa !52
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = bitcast %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %146) #10
  %147 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"**)** @"?cuCtxPopCurrent@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAPAUCUctx_st@1234@@ZA", align 4, !tbaa !38
  %148 = call x86_stdcallcc i32 %147(%"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %146) #10
  br label %149

149:                                              ; preds = %18, %33, %140, %145
  %150 = phi i32 [ %142, %140 ], [ %142, %145 ], [ 1, %33 ], [ 1, %18 ]
  %151 = phi i32 [ %141, %140 ], [ %141, %145 ], [ %36, %33 ], [ %23, %18 ]
  %152 = load i8*, i8** %20, align 4, !tbaa !49
  %153 = call i32 @halide_cuda_release_context(i8* %152) #8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %19) #10
  %154 = icmp eq i32 %150, 0
  %155 = select i1 %154, i32 0, i32 %151
  ret i32 %155
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_cuda_cleanup() #0 {
  tail call x86_thiscallcc void @"??$release_all@P6G?AW4CUresult@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Z@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAEXPAXAAP6G?AW4CUresult@Cuda@1Runtime@2@PAUCUmod_st@4152@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i8* null, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 4 dereferenceable(4) @"?cuModuleUnload@Cuda@Internal@Runtime@Halide@@3P6G?AW4CUresult@1234@PAUCUmod_st@1234@@ZA") #9
  %1 = tail call i32 @halide_cuda_device_release(i8* null) #9
  ret void
}

; Function Attrs: nounwind
define linkonce_odr dso_local x86_thiscallcc void @"??$release_all@P6G?AW4CUresult@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Z@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAEXPAXAAP6G?AW4CUresult@Cuda@1Runtime@2@PAUCUmod_st@4152@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #8
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !81
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !57
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %39, %38 ], [ %6, %12 ]
  %17 = phi i32 [ %40, %38 ], [ %10, %12 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %41, %38 ], [ %14, %12 ]
  %19 = phi i32 [ %42, %38 ], [ 0, %12 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !59
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !62
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)*, i32 (%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*)** %2, align 4, !tbaa !38
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %18, i32 %19, i32 1
  %30 = load %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %29, align 4, !tbaa !63
  %31 = tail call x86_stdcallcc i32 %28(%"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* %30) #8
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !57
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i32 %19, i32 1
  store %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"* null, %"struct.Halide::Runtime::Internal::Cuda::CUmod_st"** %33, align 4, !tbaa !63
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %32, i32 %19, i32 2
  store i32 1, i32* %34, align 4, !tbaa !59
  %35 = load i32, i32* %5, align 4, !tbaa !81
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4, !tbaa !81
  %37 = load i32, i32* %9, align 4, !tbaa !56
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i32 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %15, label %45, !llvm.loop !82

45:                                               ; preds = %38
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %3, %45
  %48 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %49 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %48 to i8**
  %50 = load i8*, i8** %49, align 4, !tbaa !57
  tail call void @free(i8* %50) #8
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %48, align 4, !tbaa !57
  %51 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  store i32 0, i32* %51, align 4, !tbaa !56
  br label %52

52:                                               ; preds = %8, %47, %45
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #8
  ret void
}

declare extern_weak void @halide_use_jit_module() #2

declare extern_weak void @halide_release_jit_module() #2

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #2

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #2

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

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !56
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #9
  br i1 %7, label %8, label %63

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !81
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #9
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !tbaa !81
  %25 = load i32, i32* %3, align 4, !tbaa !56
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 4, !tbaa !81
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i32 0, i32 2
  %33 = load i32, i32* %32, align 4, !tbaa !59
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1, i32 0, i32 0
  %35 = load %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"*, %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"** %34, align 4, !tbaa !61
  %36 = ptrtoint %"struct.Halide::Runtime::Internal::Cuda::CUctx_st"* %35 to i32
  %37 = add i32 %33, %36
  %38 = mul i32 %37, -1640531527
  %39 = sub i32 32, %31
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %31, 31
  br i1 %41, label %62, label %42

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %44, align 4, !tbaa !57
  %46 = icmp sgt i32 %29, 1
  %47 = select i1 %46, i32 %29, i32 1
  br label %50

48:                                               ; preds = %50
  %49 = icmp eq i32 %57, %47
  br i1 %49, label %62, label %50, !llvm.loop !93

50:                                               ; preds = %42, %48
  %51 = phi i32 [ 0, %42 ], [ %57, %48 ]
  %52 = add i32 %51, %40
  %53 = and i32 %52, %43
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %45, i32 %53, i32 2
  %55 = load i32, i32* %54, align 4, !tbaa !59
  %56 = icmp ult i32 %55, 2
  %57 = add nuw nsw i32 %51, 1
  br i1 %56, label %58, label %48

58:                                               ; preds = %50
  %59 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %45, i32 %53
  %60 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %59 to i8*
  %61 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %60, i8* nonnull align 4 dereferenceable(16) %61, i32 16, i1 false), !tbaa.struct !94
  br label %63

62:                                               ; preds = %48, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %63

63:                                               ; preds = %58, %62, %20, %6
  %64 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %58 ], [ false, %62 ]
  ret i1 %64
}

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !56
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %4
  %8 = shl i32 16, %1
  %9 = tail call i8* @malloc(i32 %8) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i32 %8) #8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13, align 4, !tbaa !57
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** %13 to i8**
  store i8* %9, i8** %15, align 4, !tbaa !57
  store i32 %1, i32* %3, align 4, !tbaa !56
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !81
  %18 = icmp sgt i32 %17, 0
  %19 = icmp ne i32 %4, 31
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %11
  %22 = icmp sgt i32 %7, 1
  %23 = select i1 %22, i32 %7, i32 1
  br label %24

24:                                               ; preds = %21, %33
  %25 = phi i32 [ %34, %33 ], [ 0, %21 ]
  %26 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14, i32 %25, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !59
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14, i32 %25
  %31 = tail call x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %30) #9
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %33

33:                                               ; preds = %24, %29, %32
  %34 = add nuw nsw i32 %25, 1
  %35 = icmp eq i32 %34, %23
  br i1 %35, label %36, label %24, !llvm.loop !95

36:                                               ; preds = %33, %11
  %37 = bitcast %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* %14 to i8*
  tail call void @free(i8* %37) #8
  br label %38

38:                                               ; preds = %2, %36, %6
  %39 = phi i1 [ false, %6 ], [ true, %36 ], [ true, %2 ]
  ret i1 %39
}

declare dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn writeonly
define internal void @_GLOBAL__sub_I_windows_cuda.cpp() #7 {
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 1), align 4, !tbaa !56
  store %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<Halide::Runtime::Internal::Cuda::CUctx_st *, Halide::Runtime::Internal::Cuda::CUmod_st *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 2), align 4, !tbaa !57
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 3), align 4, !tbaa !81
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@Cuda@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@24@A", i32 0, i32 4), align 4, !tbaa !53
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nounwind willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 0}
!10 = !{!"?AUdevice_copy@Internal@Runtime@Halide@@", !4, i64 0, !4, i64 8, !4, i64 16, !5, i64 24, !5, i64 152, !5, i64 280, !4, i64 408}
!11 = !{!10, !4, i64 8}
!12 = !{!10, !4, i64 408}
!13 = distinct !{!13, !8}
!14 = !{!10, !4, i64 16}
!15 = !{!16, !17, i64 12}
!16 = !{!"?AUhalide_buffer_t@@", !4, i64 0, !17, i64 8, !17, i64 12, !4, i64 16, !18, i64 24, !21, i64 28, !17, i64 32, !17, i64 36}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"?AUhalide_type_t@@", !19, i64 0, !5, i64 1, !20, i64 2}
!19 = !{!"?AW4halide_type_code_t@@", !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"int", !5, i64 0}
!22 = !{!16, !4, i64 0}
!23 = !{!18, !5, i64 1}
!24 = !{!16, !21, i64 28}
!25 = !{!16, !17, i64 32}
!26 = !{!27, !21, i64 0}
!27 = !{!"?AUhalide_dimension_t@@", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!28 = !{!27, !21, i64 8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!27, !21, i64 4}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8, !35}
!35 = !{!"llvm.loop.peeled.count", i32 7}
!36 = !{i64 0, i64 8, !3, i64 8, i64 8, !3, i64 16, i64 8, !3, i64 24, i64 128, !37, i64 152, i64 128, !37, i64 280, i64 128, !37, i64 408, i64 8, !3}
!37 = !{!5, !5, i64 0}
!38 = !{!17, !17, i64 0}
!39 = distinct !{!39, !8}
!40 = !{!21, !21, i64 0}
!41 = !{!42, !17, i64 12}
!42 = !{!"?AV?$Printer@$00$0EAA@@?A0x6F7B8F51@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !43, i64 16, !5, i64 17}
!43 = !{!"bool", !5, i64 0}
!44 = !{!42, !43, i64 16}
!45 = !{!42, !17, i64 0}
!46 = !{!42, !17, i64 4}
!47 = !{i8 0, i8 2}
!48 = distinct !{!48, !8}
!49 = !{!50, !17, i64 0}
!50 = !{!"?AVContext@Cuda@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !21, i64 8}
!51 = !{!50, !17, i64 4}
!52 = !{!50, !21, i64 8}
!53 = !{!54, !21, i64 16}
!54 = !{!"?AV?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@", !55, i64 0, !21, i64 4, !17, i64 8, !21, i64 12, !21, i64 16}
!55 = !{!"?AUhalide_mutex@@", !5, i64 0}
!56 = !{!54, !21, i64 4}
!57 = !{!54, !17, i64 8}
!58 = distinct !{!58, !8}
!59 = !{!60, !21, i64 8}
!60 = !{!"?AUCachedCompilation@?$GPUCompilationCache@PAUCUctx_st@Cuda@Internal@Runtime@Halide@@PAUCUmod_st@2345@@Internal@Halide@@", !17, i64 0, !17, i64 4, !21, i64 8, !21, i64 12}
!61 = !{!60, !17, i64 0}
!62 = !{!60, !21, i64 12}
!63 = !{!60, !17, i64 4}
!64 = !{!65, !21, i64 0}
!65 = !{!"?AUFreeListItem@Cuda@Internal@Runtime@Halide@@", !21, i64 0, !17, i64 4, !17, i64 8, !21, i64 12, !17, i64 16}
!66 = !{!65, !17, i64 16}
!67 = distinct !{!67, !8}
!68 = !{!69, !17, i64 0}
!69 = !{!"?AUhalide_device_allocation_pool@@", !17, i64 0, !17, i64 4}
!70 = !{!65, !17, i64 4}
!71 = !{i64 0, i64 65}
!72 = !{!65, !21, i64 12}
!73 = !{!65, !17, i64 8}
!74 = !{!16, !17, i64 8}
!75 = !{!76, !17, i64 60}
!76 = !{!"?AUhalide_device_interface_t@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!77 = !{!78, !17, i64 4}
!78 = !{!"?AUhalide_device_interface_impl_t@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = !{!54, !21, i64 12}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = !{!78, !17, i64 0}
!87 = distinct !{!87, !8}
!88 = !{!16, !4, i64 16}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
!92 = !{!42, !17, i64 8}
!93 = distinct !{!93, !8}
!94 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !40, i64 12, i64 4, !40}
!95 = distinct !{!95, !8}
