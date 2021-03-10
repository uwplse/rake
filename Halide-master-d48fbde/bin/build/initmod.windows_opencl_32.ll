; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_opencl.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_opencl.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

%struct._cl_platform_id = type opaque
%struct._cl_device_id = type opaque
%struct._cl_context = type opaque
%struct._cl_command_queue = type opaque
%struct._cl_mem = type opaque
%struct._cl_image_format = type { i32, i32 }
%struct._cl_image_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._cl_mem* }
%struct._cl_program = type opaque
%struct._cl_kernel = type opaque
%struct._cl_event = type opaque
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, i32, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation" = type { %struct._cl_context*, %struct._cl_program*, i32, i32 }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }
%"struct.Halide::Runtime::Internal::OpenCL::device_handle" = type { i64, %struct._cl_mem* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }
%"class.Halide::Runtime::Internal::OpenCL::ClContext" = type { i8*, %struct._cl_context*, %struct._cl_command_queue*, i32 }
%struct._cl_buffer_region = type { i32, i32 }

$"??$kernel_state_setup@P6APAU_cl_program@@PAXPAU_cl_context@@PBDH@ZPAXPAU2@PBDH@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NPAXPAPAXPAU_cl_context@@AAPAU_cl_program@@P6APAU4@02PBDH@Z024H@Z" = comdat any

$"??$release_all@P6GHPAU_cl_program@@@Z@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAEXPAXAAP6GHPAU_cl_program@@@Z@Z" = comdat any

$"?insert@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z" = comdat any

$"?resize_table@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NH@Z" = comdat any

$"??_C@_0L@PFNAKBJA@opencl?4dll?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0HH@NKMLHAFC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@" = comdat any

$"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@" = comdat any

$"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@" = comdat any

$"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@" = comdat any

$"??_C@_0BD@DHOGNIBF@clCreateSubDevices?$AA@" = comdat any

$"??_C@_0P@MLMFBHBD@clRetainDevice?$AA@" = comdat any

$"??_C@_0BA@DILOKKCJ@clReleaseDevice?$AA@" = comdat any

$"??_C@_0BA@NCICJKNI@clCreateContext?$AA@" = comdat any

$"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@" = comdat any

$"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@" = comdat any

$"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@" = comdat any

$"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@" = comdat any

$"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@" = comdat any

$"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@" = comdat any

$"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@" = comdat any

$"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@" = comdat any

$"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@" = comdat any

$"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@" = comdat any

$"??_C@_0O@LJDNFNNP@clCreateImage?$AA@" = comdat any

$"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@" = comdat any

$"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@" = comdat any

$"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@" = comdat any

$"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@" = comdat any

$"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@" = comdat any

$"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@" = comdat any

$"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@" = comdat any

$"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@" = comdat any

$"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@" = comdat any

$"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@" = comdat any

$"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@" = comdat any

$"??_C@_0P@POBJOHCP@clCreateKernel?$AA@" = comdat any

$"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@" = comdat any

$"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@" = comdat any

$"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@" = comdat any

$"??_C@_07KKBOLFGK@clFlush?$AA@" = comdat any

$"??_C@_08GIMDLLBG@clFinish?$AA@" = comdat any

$"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@" = comdat any

$"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@" = comdat any

$"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@" = comdat any

$"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@" = comdat any

$"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@" = comdat any

$"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@" = comdat any

$"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@" = comdat any

$"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@" = comdat any

$"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@" = comdat any

$"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@" = comdat any

$"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@" = comdat any

$"??_C@_0GM@KAFOONGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@HOCNIAFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BI@KGALDEEM@CL?3?5Bad?5device?5pointer?5?$AA@" = comdat any

$"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@" = comdat any

$"??_C@_0KJ@OLKHKEEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HP@GFCJAEGO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@BLCNEOOG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@" = comdat any

$"??_C@_0BO@LMLEHJG@CL?3?5clGetPlatformIDs?5failed?3?5?$AA@" = comdat any

$"??_C@_01CLKCMJKC@?5?$AA@" = comdat any

$"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@" = comdat any

$"??_C@_03PBJBJNON@cpu?$AA@" = comdat any

$"??_C@_03HOPDAKLK@gpu?$AA@" = comdat any

$"??_C@_03FJGAPNJI@acc?$AA@" = comdat any

$"??_C@_0BM@HCBABLID@CL?3?5clGetDeviceIDs?5failed?3?5?$AA@" = comdat any

$"??_C@_0BL@KPNMBBFB@CL?3?5Failed?5to?5get?5device?3?5?$AA@" = comdat any

$"??_C@_0BN@DAIECECO@CL?3?5clCreateContext?5failed?3?5?$AA@" = comdat any

$"??_C@_01JLIPDDHJ@?3?$AA@" = comdat any

$"??_C@_0CC@OJGJMEDK@CL?3?5clCreateCommandQueue?5failed?3@" = comdat any

$"??_C@_0DC@LKEIDCIO@CL?3?5clGetContextInfo?$CICL_CONTEXT_@" = comdat any

$"??_C@_0EC@BCLNDNGH@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@" = comdat any

$"??_C@_0DL@MAEDFEFL@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@" = comdat any

$"??_C@_0BN@JFGEECJA@?9D?5MAX_CONSTANT_BUFFER_SIZE?$DN?$AA@" = comdat any

$"??_C@_0BH@CDNOOPCE@?5?9D?5MAX_CONSTANT_ARGS?$DN?$AA@" = comdat any

$"??_C@_0CH@CLCJIFCI@CL?3?5clCreateProgramWithSource?5fa@" = comdat any

$"??_C@_0BM@OJMPGCGG@CL?3?5clBuildProgram?5failed?3?5?$AA@" = comdat any

$"??_C@_0N@IDFKKPKP@?6Build?5Log?3?6?$AA@" = comdat any

$"??_C@_0DJ@PDNJJJKK@clGetProgramBuildInfo?5failed?5?$CIPr@" = comdat any

$"??_C@_0NF@GAHAJAJD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@JCFFEMMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BO@PHJKOMAF@CL?3?5clGetContextInfo?5failed?3?5?$AA@" = comdat any

$"??_C@_0BN@OPHJLEEG@CL?3?5clGetDeviceInfo?5failed?3?5?$AA@" = comdat any

$"??_C@_0HA@MICKJDMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BG@HNMCCFHI@CL?3?5clFinish?5failed?3?5?$AA@" = comdat any

$"??_C@_0GP@IFKNINJB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GP@MMJNGNHC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GP@NINNKHKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GH@BOEJCFBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IO@ELDPDCNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@OENBMEHI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BM@JFCOLHML@CL?3?5clCreateBuffer?5failed?3?5?$AA@" = comdat any

$"??_C@_0IO@NKDENGNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@" = comdat any

$"??_C@_0BJ@HEIDBBOD@CL?3?5buffer?5copy?5failed?3?5?$AA@" = comdat any

$"??_C@_0LB@HCAEPHPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IO@GCBJGBEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HE@EGDFODBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GI@DACMPJPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HK@NCIAOLIA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BE@KFJGNCAK@CL?3?5clCreateKernel?5?$AA@" = comdat any

$"??_C@_09FIOGNGMI@?5failed?3?5?$AA@" = comdat any

$"??_C@_0HP@LAHLNOMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0BM@HJLMFHME@CL?3?5clSetKernelArg?5failed?3?5?$AA@" = comdat any

$"??_C@_0BL@OLKMLKBK@CL?3?5clSetKernelArg?5failed?5?$AA@" = comdat any

$"??_C@_0CE@KMDKKOMD@CL?3?5clEnqueueNDRangeKernel?5faile@" = comdat any

$"??_C@_0GP@FPCGBLCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ML@HEGIOGAJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ML@FGBMJAJG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JA@OCJLGPJI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@" = comdat any

$"??_C@_0IJ@PJBGAFJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0L@JNMCAGGL@CL_SUCCESS?$AA@" = comdat any

$"??_C@_0BE@ELAGNECF@CL_DEVICE_NOT_FOUND?$AA@" = comdat any

$"??_C@_0BI@DJICLPLE@CL_DEVICE_NOT_AVAILABLE?$AA@" = comdat any

$"??_C@_0BK@NIHADMP@CL_COMPILER_NOT_AVAILABLE?$AA@" = comdat any

$"??_C@_0CB@KNGEFLKK@CL_MEM_OBJECT_ALLOCATION_FAILURE@" = comdat any

$"??_C@_0BE@GHEIGNPM@CL_OUT_OF_RESOURCES?$AA@" = comdat any

$"??_C@_0BG@FJOOPJHO@CL_OUT_OF_HOST_MEMORY?$AA@" = comdat any

$"??_C@_0CA@NMFLODBK@CL_PROFILING_INFO_NOT_AVAILABLE?$AA@" = comdat any

$"??_C@_0BE@JMGFBLJK@CL_MEM_COPY_OVERLAP?$AA@" = comdat any

$"??_C@_0BJ@ONFDNJEG@CL_IMAGE_FORMAT_MISMATCH?$AA@" = comdat any

$"??_C@_0BO@NPJAPAAL@CL_IMAGE_FORMAT_NOT_SUPPORTED?$AA@" = comdat any

$"??_C@_0BJ@GCBBIHOP@CL_BUILD_PROGRAM_FAILURE?$AA@" = comdat any

$"??_C@_0P@LNNGPEBP@CL_MAP_FAILURE?$AA@" = comdat any

$"??_C@_0CA@OKLIKJOK@CL_MISALIGNED_SUB_BUFFER_OFFSET?$AA@" = comdat any

$"??_C@_0CN@ECJCNBKL@CL_EXEC_STATUS_ERROR_FOR_EVENTS_@" = comdat any

$"??_C@_0BL@OINJNLGH@CL_COMPILE_PROGRAM_FAILURE?$AA@" = comdat any

$"??_C@_0BI@GMJLLHMG@CL_LINKER_NOT_AVAILABLE?$AA@" = comdat any

$"??_C@_0BI@BKGHHLEO@CL_LINK_PROGRAM_FAILURE?$AA@" = comdat any

$"??_C@_0BL@EBAMFBNN@CL_DEVICE_PARTITION_FAILED?$AA@" = comdat any

$"??_C@_0CB@JNJGNCL@CL_KERNEL_ARG_INFO_NOT_AVAILABLE@" = comdat any

$"??_C@_0BB@IHLDHA@CL_INVALID_VALUE?$AA@" = comdat any

$"??_C@_0BH@LBOJAEIK@CL_INVALID_DEVICE_TYPE?$AA@" = comdat any

$"??_C@_0BE@EGJKELL@CL_INVALID_PLATFORM?$AA@" = comdat any

$"??_C@_0BC@ICMJJJII@CL_INVALID_DEVICE?$AA@" = comdat any

$"??_C@_0BD@NFODLALG@CL_INVALID_CONTEXT?$AA@" = comdat any

$"??_C@_0BM@LJKBKLGM@CL_INVALID_QUEUE_PROPERTIES?$AA@" = comdat any

$"??_C@_0BJ@DCHMJOMG@CL_INVALID_COMMAND_QUEUE?$AA@" = comdat any

$"??_C@_0BE@MBOCAOMA@CL_INVALID_HOST_PTR?$AA@" = comdat any

$"??_C@_0BG@OEIKFAMH@CL_INVALID_MEM_OBJECT?$AA@" = comdat any

$"??_C@_0CD@IIJKEAGK@CL_INVALID_IMAGE_FORMAT_DESCRIPT@" = comdat any

$"??_C@_0BG@HCNOAFJE@CL_INVALID_IMAGE_SIZE?$AA@" = comdat any

$"??_C@_0BD@LFNPPGIB@CL_INVALID_SAMPLER?$AA@" = comdat any

$"??_C@_0BC@PIGMAMHP@CL_INVALID_BINARY?$AA@" = comdat any

$"??_C@_0BJ@IDJIFICI@CL_INVALID_BUILD_OPTIONS?$AA@" = comdat any

$"??_C@_0BD@IIPLBLEG@CL_INVALID_PROGRAM?$AA@" = comdat any

$"??_C@_0BO@EDBIPNOL@CL_INVALID_PROGRAM_EXECUTABLE?$AA@" = comdat any

$"??_C@_0BH@FGADNKGM@CL_INVALID_KERNEL_NAME?$AA@" = comdat any

$"??_C@_0BN@PKJJKFBD@CL_INVALID_KERNEL_DEFINITION?$AA@" = comdat any

$"??_C@_0BC@MJJJLAOD@CL_INVALID_KERNEL?$AA@" = comdat any

$"??_C@_0BF@PBIEDICK@CL_INVALID_ARG_INDEX?$AA@" = comdat any

$"??_C@_0BF@KHKKPIDG@CL_INVALID_ARG_VALUE?$AA@" = comdat any

$"??_C@_0BE@JEFFIIPH@CL_INVALID_ARG_SIZE?$AA@" = comdat any

$"??_C@_0BH@IHPAIFMN@CL_INVALID_KERNEL_ARGS?$AA@" = comdat any

$"??_C@_0BK@IIJALOOA@CL_INVALID_WORK_DIMENSION?$AA@" = comdat any

$"??_C@_0BL@GNFKDAIO@CL_INVALID_WORK_GROUP_SIZE?$AA@" = comdat any

$"??_C@_0BK@PBHIKMMK@CL_INVALID_WORK_ITEM_SIZE?$AA@" = comdat any

$"??_C@_0BJ@ICDONJCN@CL_INVALID_GLOBAL_OFFSET?$AA@" = comdat any

$"??_C@_0BL@KDCAPAB@CL_INVALID_EVENT_WAIT_LIST?$AA@" = comdat any

$"??_C@_0BB@GJKHKINM@CL_INVALID_EVENT?$AA@" = comdat any

$"??_C@_0BF@MHCPKDDA@CL_INVALID_OPERATION?$AA@" = comdat any

$"??_C@_0BF@NPNLGFAG@CL_INVALID_GL_OBJECT?$AA@" = comdat any

$"??_C@_0BH@IDINIOAG@CL_INVALID_BUFFER_SIZE?$AA@" = comdat any

$"??_C@_0BF@EAPANENJ@CL_INVALID_MIP_LEVEL?$AA@" = comdat any

$"??_C@_0BM@IPEANGIP@CL_INVALID_GLOBAL_WORK_SIZE?$AA@" = comdat any

$"??_C@_0BE@GJAGOAJM@CL_INVALID_PROPERTY?$AA@" = comdat any

$"??_C@_0BM@DLPOCGIE@CL_INVALID_IMAGE_DESCRIPTOR?$AA@" = comdat any

$"??_C@_0BM@EGEFLIHM@CL_INVALID_COMPILER_OPTIONS?$AA@" = comdat any

$"??_C@_0BK@FJFBMGOA@CL_INVALID_LINKER_OPTIONS?$AA@" = comdat any

$"??_C@_0CC@CDIFHCPP@CL_INVALID_DEVICE_PARTITION_COUN@" = comdat any

$"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@" = comdat any

$"??_C@_0GI@KLGLJOPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IP@GPNAIHNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@DEPPOMDI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CP@JFFADFI@Unhandled?5datatype?5for?5opencl?5te@" = comdat any

$"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@" = comdat any

$"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@" = comdat any

$"??_C@_0BL@NNHHKBND@CL?3?5clCreateImage?5failed?3?5?$AA@" = comdat any

$"??_C@_0IP@NEAAEKKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0LI@BANCPNKE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JF@GOJCIKCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@BDNGEHJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@" = comdat any

$"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@" = comdat any

$"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@" = comdat any

$"??_C@_0BN@NALPKMPM@CL?3?5buffer?5transfer?5failed?3?5?$AA@" = comdat any

$"??_C@_0GP@FPIDEFFE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ED@LDGMHNKH@CL?3?5Bad?5device?5pointer?5passed?5to@" = comdat any

$"??_C@_0M@NDNKNKHF@?5with?5type?5?$AA@" = comdat any

$"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@" = comdat any

$"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@" = comdat any

$"??_C@_0BF@IKKCGBEB@HL_OCL_PLATFORM_NAME?$AA@" = comdat any

$"??_C@_0BD@PBIHOGAH@HL_OCL_DEVICE_TYPE?$AA@" = comdat any

$"??_C@_0BF@EDLBHNBE@HL_OCL_BUILD_OPTIONS?$AA@" = comdat any

$"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@" = comdat any

$"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@" = comdat any

$"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = comdat any

$"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = comdat any

$"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

@"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6GHIPAPAU_cl_platform_id@@PAI@ZA" = weak dso_local local_unnamed_addr global i32 (i32, %struct._cl_platform_id**, i32*)* null, align 4
@"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)* null, align 4
@"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@_KIPAPAU_cl_device_id@@PAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)* null, align 4
@"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)* null, align 4
@"?clCreateSubDevices@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@PBHIPAPAU5@PAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*, i32*, i32, %struct._cl_device_id**, i32*)* null, align 4
@"?clRetainDevice@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 4
@"?clReleaseDevice@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 4
@"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* null, align 4
@"?clCreateContextFromType@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBH_KP6GXPBDPBXIPAX@Z4PAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_context* (i32*, i64, void (i8*, i8*, i32, i8*)*, i8*, i32*)* null, align 4
@"?clRetainContext@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*)* null, align 4
@"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*)* null, align 4
@"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*, i32, i32, i8*, i32*)* null, align 4
@"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_command_queue@@PAU_cl_context@@PAU_cl_device_id@@_KPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)* null, align 4
@"?clRetainCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@"?clGetCommandQueueInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, i32, i32, i8*, i32*)* null, align 4
@"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KIPAXPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)* null, align 4
@"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU5@_KIPBXPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)* null, align 4
@"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KPBU_cl_image_format@@PBU_cl_image_desc@@PAXPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)* null, align 4
@"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 4
@"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 4
@"?clGetSupportedImageFormats@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@_KIIPAU_cl_image_format@@PAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)* null, align 4
@"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* null, align 4
@"?clGetImageInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* null, align 4
@"?clSetMemObjectDestructorCallback@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@P6GX0PAX@Z1@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)* null, align 4
@"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_program@@PAU_cl_context@@IPAPBDPBIPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)* null, align 4
@"?clRetainProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*)* null, align 4
@"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA" = weak dso_local global i32 (%struct._cl_program*)* null, align 4
@"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@IPBQAU_cl_device_id@@PBDP6GX0PAX@Z3@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* null, align 4
@"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@PAU_cl_device_id@@IIPAXPAI@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)* null, align 4
@"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_kernel@@PAU_cl_program@@PBDPAH@ZA" = weak dso_local local_unnamed_addr global %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)* null, align 4
@"?clRetainKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 4
@"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 4
@"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@IIPBX@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*, i32, i32, i8*)* null, align 4
@"?clFlush@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPAXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueReadBufferRect@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI22IIIIPAXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPBXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueWriteBufferRect@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI22IIIIPBXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@1IIIIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPAXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPBXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueMapBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAXPAU_cl_command_queue@@PAU_cl_mem@@I_KIIIPBQAU_cl_event@@PAPAU7@PAH@ZA" = weak dso_local local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32, i32, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 4
@"?clEnqueueMapImage@OpenCL@Internal@Runtime@Halide@@3P6GPAXPAU_cl_command_queue@@PAU_cl_mem@@I_KPBI3PAI4IPBQAU_cl_event@@PAPAU7@PAH@ZA" = weak dso_local local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32*, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 4
@"?clEnqueueUnmapMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@PAXIPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_kernel@@IPBI22IPBQAU_cl_event@@PAPAU7@@ZA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PAXA" = weak dso_local local_unnamed_addr global i8* null, align 4
@"??_C@_0L@PFNAKBJA@opencl?4dll?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"opencl.dll\00", comdat, align 1
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 1
@"??_C@_0HH@NKMLHAFC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:67 Assert failed: clCreateContext == nullptr\0A\00", comdat, align 1
@"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"clGetPlatformIDs\00", comdat, align 1
@"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"clGetPlatformInfo\00", comdat, align 1
@"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clGetDeviceIDs\00", comdat, align 1
@"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clGetDeviceInfo\00", comdat, align 1
@"??_C@_0BD@DHOGNIBF@clCreateSubDevices?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"clCreateSubDevices\00", comdat, align 1
@"??_C@_0P@MLMFBHBD@clRetainDevice?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clRetainDevice\00", comdat, align 1
@"??_C@_0BA@DILOKKCJ@clReleaseDevice?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clReleaseDevice\00", comdat, align 1
@"??_C@_0BA@NCICJKNI@clCreateContext?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clCreateContext\00", comdat, align 1
@"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"clCreateContextFromType\00", comdat, align 1
@"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clRetainContext\00", comdat, align 1
@"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"clReleaseContext\00", comdat, align 1
@"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"clGetContextInfo\00", comdat, align 1
@"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"clCreateCommandQueue\00", comdat, align 1
@"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"clRetainCommandQueue\00", comdat, align 1
@"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"clReleaseCommandQueue\00", comdat, align 1
@"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"clGetCommandQueueInfo\00", comdat, align 1
@"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clCreateBuffer\00", comdat, align 1
@"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"clCreateSubBuffer\00", comdat, align 1
@"??_C@_0O@LJDNFNNP@clCreateImage?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"clCreateImage\00", comdat, align 1
@"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"clRetainMemObject\00", comdat, align 1
@"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"clReleaseMemObject\00", comdat, align 1
@"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"clGetSupportedImageFormats\00", comdat, align 1
@"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"clGetMemObjectInfo\00", comdat, align 1
@"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clGetImageInfo\00", comdat, align 1
@"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"clSetMemObjectDestructorCallback\00", comdat, align 1
@"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"clCreateProgramWithSource\00", comdat, align 1
@"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clRetainProgram\00", comdat, align 1
@"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"clReleaseProgram\00", comdat, align 1
@"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clBuildProgram\00", comdat, align 1
@"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"clGetProgramBuildInfo\00", comdat, align 1
@"??_C@_0P@POBJOHCP@clCreateKernel?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clCreateKernel\00", comdat, align 1
@"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clRetainKernel\00", comdat, align 1
@"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"clReleaseKernel\00", comdat, align 1
@"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"clSetKernelArg\00", comdat, align 1
@"??_C@_07KKBOLFGK@clFlush?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"clFlush\00", comdat, align 1
@"??_C@_08GIMDLLBG@clFinish?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"clFinish\00", comdat, align 1
@"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"clEnqueueReadBuffer\00", comdat, align 1
@"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"clEnqueueReadBufferRect\00", comdat, align 1
@"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"clEnqueueWriteBuffer\00", comdat, align 1
@"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"clEnqueueWriteBufferRect\00", comdat, align 1
@"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"clEnqueueCopyBuffer\00", comdat, align 1
@"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"clEnqueueReadImage\00", comdat, align 1
@"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"clEnqueueWriteImage\00", comdat, align 1
@"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"clEnqueueMapBuffer\00", comdat, align 1
@"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"clEnqueueMapImage\00", comdat, align 1
@"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"clEnqueueUnmapMemObject\00", comdat, align 1
@"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"clEnqueueNDRangeKernel\00", comdat, align 1
@"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A" = weak dso_local global %struct._cl_context* null, align 4
@"?command_queue@OpenCL@Internal@Runtime@Halide@@3PAU_cl_command_queue@@A" = weak dso_local global %struct._cl_command_queue* null, align 4
@"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC" = weak dso_local global i8 0, align 1
@"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA" = weak dso_local global [256 x i8] zeroinitializer, align 1
@"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA" = weak dso_local global i8 0, align 1
@"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA" = weak dso_local local_unnamed_addr global i8 0, align 1
@"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA" = weak dso_local global [256 x i8] zeroinitializer, align 1
@"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA" = weak dso_local global i8 0, align 1
@"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA" = weak dso_local local_unnamed_addr global i8 0, align 1
@"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA" = weak dso_local global [1024 x i8] zeroinitializer, align 1
@"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA" = weak dso_local global i8 0, align 1
@"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA" = weak dso_local local_unnamed_addr global i8 0, align 1
@"??_C@_0GM@KAFOONGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:215 Assert failed: ctx != nullptr\0A\00", comdat, align 1
@"??_C@_0GK@HOCNIAFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:216 Assert failed: q != nullptr\0A\00", comdat, align 1
@"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A" = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4
@"??_C@_0BI@KGALDEEM@CL?3?5Bad?5device?5pointer?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"CL: Bad device pointer \00", comdat, align 1
@"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c": clGetMemObjectInfo returned \00", comdat, align 1
@"??_C@_0KJ@OLKHKEEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [169 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:328 Assert failed: real_size >= (size + offset) && \22Validating pointer with insufficient size\22\0A\00", comdat, align 1
@"??_C@_0HP@GFCJAEGO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [127 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:339 Assert failed: ctx != nullptr && *ctx == nullptr\0A\00", comdat, align 1
@"??_C@_0HL@BLCNEOOG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:340 Assert failed: q != nullptr && *q == nullptr\0A\00", comdat, align 1
@"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CL: clGetPlatformIDs not found\0A\00", comdat, align 1
@"??_C@_0BO@LMLEHJG@CL?3?5clGetPlatformIDs?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CL: clGetPlatformIDs failed: \00", comdat, align 1
@"??_C@_01CLKCMJKC@?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c" \00", comdat, align 1
@"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CL: Failed to find platform\0A\00", comdat, align 1
@"??_C@_03PBJBJNON@cpu?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"cpu\00", comdat, align 1
@"??_C@_03HOPDAKLK@gpu?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"gpu\00", comdat, align 1
@"??_C@_03FJGAPNJI@acc?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"acc\00", comdat, align 1
@"??_C@_0BM@HCBABLID@CL?3?5clGetDeviceIDs?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL: clGetDeviceIDs failed: \00", comdat, align 1
@"??_C@_0BL@KPNMBBFB@CL?3?5Failed?5to?5get?5device?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL: Failed to get device: \00", comdat, align 1
@"??_C@_0BN@DAIECECO@CL?3?5clCreateContext?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CL: clCreateContext failed: \00", comdat, align 1
@"??_C@_01JLIPDDHJ@?3?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c":\00", comdat, align 1
@"??_C@_0CC@OJGJMEDK@CL?3?5clCreateCommandQueue?5failed?3@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"CL: clCreateCommandQueue failed: \00", comdat, align 1
@"??_C@_0DC@LKEIDCIO@CL?3?5clGetContextInfo?$CICL_CONTEXT_@" = linkonce_odr dso_local unnamed_addr constant [50 x i8] c"CL: clGetContextInfo(CL_CONTEXT_DEVICES) failed: \00", comdat, align 1
@"??_C@_0EC@BCLNDNGH@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@" = linkonce_odr dso_local unnamed_addr constant [66 x i8] c"CL: clGetDeviceInfo (CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE) failed: \00", comdat, align 1
@"??_C@_0DL@MAEDFEFL@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@" = linkonce_odr dso_local unnamed_addr constant [59 x i8] c"CL: clGetDeviceInfo (CL_DEVICE_MAX_CONSTANT_ARGS) failed: \00", comdat, align 1
@"??_C@_0BN@JFGEECJA@?9D?5MAX_CONSTANT_BUFFER_SIZE?$DN?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"-D MAX_CONSTANT_BUFFER_SIZE=\00", comdat, align 1
@"??_C@_0BH@CDNOOPCE@?5?9D?5MAX_CONSTANT_ARGS?$DN?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c" -D MAX_CONSTANT_ARGS=\00", comdat, align 1
@"??_C@_0CH@CLCJIFCI@CL?3?5clCreateProgramWithSource?5fa@" = linkonce_odr dso_local unnamed_addr constant [39 x i8] c"CL: clCreateProgramWithSource failed: \00", comdat, align 1
@"??_C@_0BM@OJMPGCGG@CL?3?5clBuildProgram?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL: clBuildProgram failed: \00", comdat, align 1
@"??_C@_0N@IDFKKPKP@?6Build?5Log?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"\0ABuild Log:\0A\00", comdat, align 1
@"??_C@_0DJ@PDNJJJKK@clGetProgramBuildInfo?5failed?5?$CIPr@" = linkonce_odr dso_local unnamed_addr constant [57 x i8] c"clGetProgramBuildInfo failed (Printer buffer too small?)\00", comdat, align 1
@"??_C@_0NF@GAHAJAJD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [213 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:653 Assert failed: (((device_handle *)buf->device)->offset == 0) && \22halide_opencl_device_free on buffer obtained from halide_device_crop\22\0A\00", comdat, align 1
@"??_C@_0II@JCFFEMMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:668 Assert failed: validate_device_pointer(user_context, buf)\0A\00", comdat, align 1
@"??_C@_0BO@PHJKOMAF@CL?3?5clGetContextInfo?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CL: clGetContextInfo failed: \00", comdat, align 1
@"??_C@_0BN@OPHJLEEG@CL?3?5clGetDeviceInfo?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CL: clGetDeviceInfo failed: \00", comdat, align 1
@"??_C@_0HA@MICKJDMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [112 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:762 Assert failed: program != nullptr\0A\00", comdat, align 1
@"??_C@_0BG@HNMCCFHI@CL?3?5clFinish?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CL: clFinish failed: \00", comdat, align 1
@"??_C@_0GP@IFKNINJB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:825 Assert failed: err == CL_SUCCESS\0A\00", comdat, align 1
@"??_C@_0GP@MMJNGNHC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:833 Assert failed: err == CL_SUCCESS\0A\00", comdat, align 1
@"??_C@_0GP@NINNKHKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:838 Assert failed: err == CL_SUCCESS\0A\00", comdat, align 1
@"??_C@_0GH@BOEJCFBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [103 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:859 Assert failed: size != 0\0A\00", comdat, align 1
@"??_C@_0IO@ELDPDCNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:861 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", comdat, align 1
@"??_C@_0HF@OENBMEHI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:866 Assert failed: buf->dim[i].stride >= 0\0A\00", comdat, align 1
@"??_C@_0BM@JFCOLHML@CL?3?5clCreateBuffer?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL: clCreateBuffer failed: \00", comdat, align 1
@"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @"?opencl_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 4
@"??_C@_0IO@NKDENGNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:903 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", comdat, align 1
@"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@" = linkonce_odr dso_local unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", comdat, align 1
@"??_C@_0BJ@HEIDBBOD@CL?3?5buffer?5copy?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL: buffer copy failed: \00", comdat, align 1
@"??_C@_0LB@HCAEPHPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [177 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:974 Assert failed: dst_device_interface == nullptr || dst_device_interface == &opencl_device_interface\0A\00", comdat, align 1
@"??_C@_0IO@GCBJGBEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:978 Assert failed: dst_device_interface == &opencl_device_interface\0A\00", comdat, align 1
@"??_C@_0HE@EGDFODBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:989 Assert failed: to_host || dst->device\0A\00", comdat, align 1
@"??_C@_0GI@DACMPJPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1069 Assert failed: state_ptr\0A\00", comdat, align 1
@"??_C@_0HK@NCIAOLIA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1073 Assert failed: found && program != nullptr\0A\00", comdat, align 1
@"??_C@_0BE@KFJGNCAK@CL?3?5clCreateKernel?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL: clCreateKernel \00", comdat, align 1
@"??_C@_09FIOGNGMI@?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c" failed: \00", comdat, align 1
@"??_C@_0HP@LAHLNOMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [127 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1125 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", comdat, align 1
@"??_C@_0BM@HJLMFHME@CL?3?5clSetKernelArg?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL: clSetKernelArg failed: \00", comdat, align 1
@"??_C@_0BL@OLKMLKBK@CL?3?5clSetKernelArg?5failed?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL: clSetKernelArg failed \00", comdat, align 1
@"??_C@_0CE@KMDKKOMD@CL?3?5clEnqueueNDRangeKernel?5faile@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"CL: clEnqueueNDRangeKernel failed: \00", comdat, align 1
@"??_C@_0GP@FPCGBLCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1216 Assert failed: buf->device == 0\0A\00", comdat, align 1
@"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @"?opencl_image_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 4
@"??_C@_0ML@HEGIOGAJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [203 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1246 Assert failed: buf->device_interface == &opencl_device_interface || buf->device_interface == &opencl_image_device_interface\0A\00", comdat, align 1
@"??_C@_0ML@FGBMJAJG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [203 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1259 Assert failed: buf->device_interface == &opencl_device_interface || buf->device_interface == &opencl_image_device_interface\0A\00", comdat, align 1
@"??_C@_0JA@OCJLGPJI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [144 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1267 Assert failed: buf->device_interface == &opencl_device_interface\0A\00", comdat, align 1
@"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@" = linkonce_odr dso_local unnamed_addr constant [50 x i8] c"CL: malloc failed making device handle for crop.\0A\00", comdat, align 1
@"??_C@_0IJ@PJBGAFJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1336 Assert failed: validate_device_pointer(user_context, buf)\0A\00", comdat, align 1
@"??_C@_0L@JNMCAGGL@CL_SUCCESS?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"CL_SUCCESS\00", comdat, align 1
@"??_C@_0BE@ELAGNECF@CL_DEVICE_NOT_FOUND?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_DEVICE_NOT_FOUND\00", comdat, align 1
@"??_C@_0BI@DJICLPLE@CL_DEVICE_NOT_AVAILABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"CL_DEVICE_NOT_AVAILABLE\00", comdat, align 1
@"??_C@_0BK@NIHADMP@CL_COMPILER_NOT_AVAILABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CL_COMPILER_NOT_AVAILABLE\00", comdat, align 1
@"??_C@_0CB@KNGEFLKK@CL_MEM_OBJECT_ALLOCATION_FAILURE@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"CL_MEM_OBJECT_ALLOCATION_FAILURE\00", comdat, align 1
@"??_C@_0BE@GHEIGNPM@CL_OUT_OF_RESOURCES?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_OUT_OF_RESOURCES\00", comdat, align 1
@"??_C@_0BG@FJOOPJHO@CL_OUT_OF_HOST_MEMORY?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CL_OUT_OF_HOST_MEMORY\00", comdat, align 1
@"??_C@_0CA@NMFLODBK@CL_PROFILING_INFO_NOT_AVAILABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CL_PROFILING_INFO_NOT_AVAILABLE\00", comdat, align 1
@"??_C@_0BE@JMGFBLJK@CL_MEM_COPY_OVERLAP?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_MEM_COPY_OVERLAP\00", comdat, align 1
@"??_C@_0BJ@ONFDNJEG@CL_IMAGE_FORMAT_MISMATCH?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL_IMAGE_FORMAT_MISMATCH\00", comdat, align 1
@"??_C@_0BO@NPJAPAAL@CL_IMAGE_FORMAT_NOT_SUPPORTED?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CL_IMAGE_FORMAT_NOT_SUPPORTED\00", comdat, align 1
@"??_C@_0BJ@GCBBIHOP@CL_BUILD_PROGRAM_FAILURE?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL_BUILD_PROGRAM_FAILURE\00", comdat, align 1
@"??_C@_0P@LNNGPEBP@CL_MAP_FAILURE?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CL_MAP_FAILURE\00", comdat, align 1
@"??_C@_0CA@OKLIKJOK@CL_MISALIGNED_SUB_BUFFER_OFFSET?$AA@" = linkonce_odr dso_local unnamed_addr constant [32 x i8] c"CL_MISALIGNED_SUB_BUFFER_OFFSET\00", comdat, align 1
@"??_C@_0CN@ECJCNBKL@CL_EXEC_STATUS_ERROR_FOR_EVENTS_@" = linkonce_odr dso_local unnamed_addr constant [45 x i8] c"CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST\00", comdat, align 1
@"??_C@_0BL@OINJNLGH@CL_COMPILE_PROGRAM_FAILURE?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL_COMPILE_PROGRAM_FAILURE\00", comdat, align 1
@"??_C@_0BI@GMJLLHMG@CL_LINKER_NOT_AVAILABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"CL_LINKER_NOT_AVAILABLE\00", comdat, align 1
@"??_C@_0BI@BKGHHLEO@CL_LINK_PROGRAM_FAILURE?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"CL_LINK_PROGRAM_FAILURE\00", comdat, align 1
@"??_C@_0BL@EBAMFBNN@CL_DEVICE_PARTITION_FAILED?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL_DEVICE_PARTITION_FAILED\00", comdat, align 1
@"??_C@_0CB@JNJGNCL@CL_KERNEL_ARG_INFO_NOT_AVAILABLE@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"CL_KERNEL_ARG_INFO_NOT_AVAILABLE\00", comdat, align 1
@"??_C@_0BB@IHLDHA@CL_INVALID_VALUE?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"CL_INVALID_VALUE\00", comdat, align 1
@"??_C@_0BH@LBOJAEIK@CL_INVALID_DEVICE_TYPE?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"CL_INVALID_DEVICE_TYPE\00", comdat, align 1
@"??_C@_0BE@EGJKELL@CL_INVALID_PLATFORM?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_INVALID_PLATFORM\00", comdat, align 1
@"??_C@_0BC@ICMJJJII@CL_INVALID_DEVICE?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"CL_INVALID_DEVICE\00", comdat, align 1
@"??_C@_0BD@NFODLALG@CL_INVALID_CONTEXT?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"CL_INVALID_CONTEXT\00", comdat, align 1
@"??_C@_0BM@LJKBKLGM@CL_INVALID_QUEUE_PROPERTIES?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL_INVALID_QUEUE_PROPERTIES\00", comdat, align 1
@"??_C@_0BJ@DCHMJOMG@CL_INVALID_COMMAND_QUEUE?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL_INVALID_COMMAND_QUEUE\00", comdat, align 1
@"??_C@_0BE@MBOCAOMA@CL_INVALID_HOST_PTR?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_INVALID_HOST_PTR\00", comdat, align 1
@"??_C@_0BG@OEIKFAMH@CL_INVALID_MEM_OBJECT?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CL_INVALID_MEM_OBJECT\00", comdat, align 1
@"??_C@_0CD@IIJKEAGK@CL_INVALID_IMAGE_FORMAT_DESCRIPT@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"CL_INVALID_IMAGE_FORMAT_DESCRIPTOR\00", comdat, align 1
@"??_C@_0BG@HCNOAFJE@CL_INVALID_IMAGE_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"CL_INVALID_IMAGE_SIZE\00", comdat, align 1
@"??_C@_0BD@LFNPPGIB@CL_INVALID_SAMPLER?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"CL_INVALID_SAMPLER\00", comdat, align 1
@"??_C@_0BC@PIGMAMHP@CL_INVALID_BINARY?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"CL_INVALID_BINARY\00", comdat, align 1
@"??_C@_0BJ@IDJIFICI@CL_INVALID_BUILD_OPTIONS?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL_INVALID_BUILD_OPTIONS\00", comdat, align 1
@"??_C@_0BD@IIPLBLEG@CL_INVALID_PROGRAM?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"CL_INVALID_PROGRAM\00", comdat, align 1
@"??_C@_0BO@EDBIPNOL@CL_INVALID_PROGRAM_EXECUTABLE?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"CL_INVALID_PROGRAM_EXECUTABLE\00", comdat, align 1
@"??_C@_0BH@FGADNKGM@CL_INVALID_KERNEL_NAME?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"CL_INVALID_KERNEL_NAME\00", comdat, align 1
@"??_C@_0BN@PKJJKFBD@CL_INVALID_KERNEL_DEFINITION?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CL_INVALID_KERNEL_DEFINITION\00", comdat, align 1
@"??_C@_0BC@MJJJLAOD@CL_INVALID_KERNEL?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"CL_INVALID_KERNEL\00", comdat, align 1
@"??_C@_0BF@PBIEDICK@CL_INVALID_ARG_INDEX?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CL_INVALID_ARG_INDEX\00", comdat, align 1
@"??_C@_0BF@KHKKPIDG@CL_INVALID_ARG_VALUE?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CL_INVALID_ARG_VALUE\00", comdat, align 1
@"??_C@_0BE@JEFFIIPH@CL_INVALID_ARG_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_INVALID_ARG_SIZE\00", comdat, align 1
@"??_C@_0BH@IHPAIFMN@CL_INVALID_KERNEL_ARGS?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"CL_INVALID_KERNEL_ARGS\00", comdat, align 1
@"??_C@_0BK@IIJALOOA@CL_INVALID_WORK_DIMENSION?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CL_INVALID_WORK_DIMENSION\00", comdat, align 1
@"??_C@_0BL@GNFKDAIO@CL_INVALID_WORK_GROUP_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL_INVALID_WORK_GROUP_SIZE\00", comdat, align 1
@"??_C@_0BK@PBHIKMMK@CL_INVALID_WORK_ITEM_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CL_INVALID_WORK_ITEM_SIZE\00", comdat, align 1
@"??_C@_0BJ@ICDONJCN@CL_INVALID_GLOBAL_OFFSET?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"CL_INVALID_GLOBAL_OFFSET\00", comdat, align 1
@"??_C@_0BL@KDCAPAB@CL_INVALID_EVENT_WAIT_LIST?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL_INVALID_EVENT_WAIT_LIST\00", comdat, align 1
@"??_C@_0BB@GJKHKINM@CL_INVALID_EVENT?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"CL_INVALID_EVENT\00", comdat, align 1
@"??_C@_0BF@MHCPKDDA@CL_INVALID_OPERATION?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CL_INVALID_OPERATION\00", comdat, align 1
@"??_C@_0BF@NPNLGFAG@CL_INVALID_GL_OBJECT?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CL_INVALID_GL_OBJECT\00", comdat, align 1
@"??_C@_0BH@IDINIOAG@CL_INVALID_BUFFER_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"CL_INVALID_BUFFER_SIZE\00", comdat, align 1
@"??_C@_0BF@EAPANENJ@CL_INVALID_MIP_LEVEL?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"CL_INVALID_MIP_LEVEL\00", comdat, align 1
@"??_C@_0BM@IPEANGIP@CL_INVALID_GLOBAL_WORK_SIZE?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL_INVALID_GLOBAL_WORK_SIZE\00", comdat, align 1
@"??_C@_0BE@GJAGOAJM@CL_INVALID_PROPERTY?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"CL_INVALID_PROPERTY\00", comdat, align 1
@"??_C@_0BM@DLPOCGIE@CL_INVALID_IMAGE_DESCRIPTOR?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL_INVALID_IMAGE_DESCRIPTOR\00", comdat, align 1
@"??_C@_0BM@EGEFLIHM@CL_INVALID_COMPILER_OPTIONS?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"CL_INVALID_COMPILER_OPTIONS\00", comdat, align 1
@"??_C@_0BK@FJFBMGOA@CL_INVALID_LINKER_OPTIONS?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"CL_INVALID_LINKER_OPTIONS\00", comdat, align 1
@"??_C@_0CC@CDIFHCPP@CL_INVALID_DEVICE_PARTITION_COUN@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"CL_INVALID_DEVICE_PARTITION_COUNT\00", comdat, align 1
@"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"<Unknown error>\00", comdat, align 1
@"?opencl_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 4
@"??_C@_0GI@KLGLJOPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1552 Assert failed: size != 0\0A\00", comdat, align 1
@"??_C@_0IP@GPNAIHNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [143 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1554 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", comdat, align 1
@"??_C@_0HG@DEPPOMDI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1559 Assert failed: buf->dim[i].stride >= 0\0A\00", comdat, align 1
@"??_C@_0CP@JFFADFI@Unhandled?5datatype?5for?5opencl?5te@" = linkonce_odr dso_local unnamed_addr constant [47 x i8] c"Unhandled datatype for opencl texture object: \00", comdat, align 1
@"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"image buffer must be dense on inner dimension\00", comdat, align 1
@"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"image buffer must have 1-3 dimensions\00", comdat, align 1
@"??_C@_0BL@NNHHKBND@CL?3?5clCreateImage?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"CL: clCreateImage failed: \00", comdat, align 1
@"??_C@_0IP@NEAAEKKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [143 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1671 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", comdat, align 1
@"??_C@_0LI@BANCPNKE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [184 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1690 Assert failed: dst_device_interface == nullptr || dst_device_interface == &opencl_image_device_interface\0A\00", comdat, align 1
@"??_C@_0JF@GOJCIKCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1694 Assert failed: dst_device_interface == &opencl_image_device_interface\0A\00", comdat, align 1
@"??_C@_0HF@BDNGEHJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1705 Assert failed: to_host || dst->device\0A\00", comdat, align 1
@"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@" = linkonce_odr dso_local unnamed_addr constant [45 x i8] c"image buffer copies must be for whole buffer\00", comdat, align 1
@"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@" = linkonce_odr dso_local unnamed_addr constant [53 x i8] c"image buffer copies must be dense on inner dimension\00", comdat, align 1
@"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"image to image copies not implemented\00", comdat, align 1
@"??_C@_0BN@NALPKMPM@CL?3?5buffer?5transfer?5failed?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"CL: buffer transfer failed: \00", comdat, align 1
@"??_C@_0GP@FPIDEFFE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1818 Assert failed: buf->device == 0\0A\00", comdat, align 1
@"??_C@_0ED@LDGMHNKH@CL?3?5Bad?5device?5pointer?5passed?5to@" = linkonce_odr dso_local unnamed_addr constant [67 x i8] c"CL: Bad device pointer passed to halide_opencl_image_wrap_cl_mem: \00", comdat, align 1
@"??_C@_0M@NDNKNKHF@?5with?5type?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c" with type \00", comdat, align 1
@"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@" = linkonce_odr dso_local unnamed_addr constant [43 x i8] c"crop not supported on opencl image objects\00", comdat, align 1
@"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@" = linkonce_odr dso_local unnamed_addr constant [44 x i8] c"slice not supported on opencl image objects\00", comdat, align 1
@"?opencl_image_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_image_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_image_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_image_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_image_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 4
@"??_C@_0BF@IKKCGBEB@HL_OCL_PLATFORM_NAME?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"HL_OCL_PLATFORM_NAME\00", comdat, align 1
@"??_C@_0BD@PBIHOGAH@HL_OCL_DEVICE_TYPE?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"HL_OCL_DEVICE_TYPE\00", comdat, align 1
@"??_C@_0BF@EDLBHNBE@HL_OCL_BUILD_OPTIONS?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"HL_OCL_BUILD_OPTIONS\00", comdat, align 1
@"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"OpenCL: null context or cmd_queue\00", comdat, align 1
@"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"OpenCL API not found: \00", comdat, align 1
@"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", comdat, align 1
@"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"<nullptr>\00", comdat, align 1
@"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", comdat, align 1
@"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", comdat, align 1
@"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_windows_opencl.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_opencl_cleanup, i8* null }]
@"switch.table.?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z" = private unnamed_addr constant [69 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@CDIFHCPP@CL_INVALID_DEVICE_PARTITION_COUN@", i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@FJFBMGOA@CL_INVALID_LINKER_OPTIONS?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@EGEFLIHM@CL_INVALID_COMPILER_OPTIONS?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@DLPOCGIE@CL_INVALID_IMAGE_DESCRIPTOR?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GJAGOAJM@CL_INVALID_PROPERTY?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@IPEANGIP@CL_INVALID_GLOBAL_WORK_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EAPANENJ@CL_INVALID_MIP_LEVEL?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IDINIOAG@CL_INVALID_BUFFER_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@NPNLGFAG@CL_INVALID_GL_OBJECT?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@MHCPKDDA@CL_INVALID_OPERATION?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@GJKHKINM@CL_INVALID_EVENT?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@KDCAPAB@CL_INVALID_EVENT_WAIT_LIST?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@ICDONJCN@CL_INVALID_GLOBAL_OFFSET?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@PBHIKMMK@CL_INVALID_WORK_ITEM_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GNFKDAIO@CL_INVALID_WORK_GROUP_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@IIJALOOA@CL_INVALID_WORK_DIMENSION?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IHPAIFMN@CL_INVALID_KERNEL_ARGS?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@JEFFIIPH@CL_INVALID_ARG_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@KHKKPIDG@CL_INVALID_ARG_VALUE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PBIEDICK@CL_INVALID_ARG_INDEX?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MJJJLAOD@CL_INVALID_KERNEL?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@PKJJKFBD@CL_INVALID_KERNEL_DEFINITION?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@FGADNKGM@CL_INVALID_KERNEL_NAME?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@EDBIPNOL@CL_INVALID_PROGRAM_EXECUTABLE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IIPLBLEG@CL_INVALID_PROGRAM?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@IDJIFICI@CL_INVALID_BUILD_OPTIONS?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@PIGMAMHP@CL_INVALID_BINARY?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@LFNPPGIB@CL_INVALID_SAMPLER?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@HCNOAFJE@CL_INVALID_IMAGE_SIZE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IIJKEAGK@CL_INVALID_IMAGE_FORMAT_DESCRIPT@", i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@OEIKFAMH@CL_INVALID_MEM_OBJECT?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@MBOCAOMA@CL_INVALID_HOST_PTR?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@DCHMJOMG@CL_INVALID_COMMAND_QUEUE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@LJKBKLGM@CL_INVALID_QUEUE_PROPERTIES?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@NFODLALG@CL_INVALID_CONTEXT?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@ICMJJJII@CL_INVALID_DEVICE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@EGJKELL@CL_INVALID_PLATFORM?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@LBOJAEIK@CL_INVALID_DEVICE_TYPE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLDHA@CL_INVALID_VALUE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@JNJGNCL@CL_KERNEL_ARG_INFO_NOT_AVAILABLE@", i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@EBAMFBNN@CL_DEVICE_PARTITION_FAILED?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@BKGHHLEO@CL_LINK_PROGRAM_FAILURE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@GMJLLHMG@CL_LINKER_NOT_AVAILABLE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@OINJNLGH@CL_COMPILE_PROGRAM_FAILURE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@ECJCNBKL@CL_EXEC_STATUS_ERROR_FOR_EVENTS_@", i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@OKLIKJOK@CL_MISALIGNED_SUB_BUFFER_OFFSET?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LNNGPEBP@CL_MAP_FAILURE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@GCBBIHOP@CL_BUILD_PROGRAM_FAILURE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@NPJAPAAL@CL_IMAGE_FORMAT_NOT_SUPPORTED?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@ONFDNJEG@CL_IMAGE_FORMAT_MISMATCH?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@JMGFBLJK@CL_MEM_COPY_OVERLAP?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@NMFLODBK@CL_PROFILING_INFO_NOT_AVAILABLE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@FJOOPJHO@CL_OUT_OF_HOST_MEMORY?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GHEIGNPM@CL_OUT_OF_RESOURCES?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@KNGEFLKK@CL_MEM_OBJECT_ALLOCATION_FAILURE@", i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@NIHADMP@CL_COMPILER_NOT_AVAILABLE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DJICLPLE@CL_DEVICE_NOT_AVAILABLE?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@ELAGNECF@CL_DEVICE_NOT_FOUND?$AA@", i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@JNMCAGGL@CL_SUCCESS?$AA@", i32 0, i32 0)], align 4

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
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #7
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %3, %21 ], [ %47, %40 ]
  %43 = phi i64 [ %2, %21 ], [ %45, %40 ]
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXABUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %43, i64 %42) #8
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
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXABUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opencl_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@PFNAKBJA@opencl?4dll?$AA@", i32 0, i32 0)) #7
  store i8* %7, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %8 = tail call i8* @halide_get_library_symbol(i8* %7, i8* %1) #7
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8* [ %8, %6 ], [ %4, %2 ]
  ret i8* %10
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) local_unnamed_addr #4 {
  %2 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %3 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"??_C@_0HH@NKMLHAFC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@", i32 0, i32 0)) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i32 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !37
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@", i32 0, i32 0)) #7
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %26

19:                                               ; preds = %13
  %20 = ptrtoint i8* %17 to i32
  %21 = ptrtoint i8* %9 to i32
  %22 = sub i32 1, %21
  %23 = add i32 %22, %20
  %24 = sext i32 %23 to i64
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %24) #7
  tail call void @halide_error(i8* %0, i8* nonnull %9) #7
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %9) #7
  br label %27

27:                                               ; preds = %5, %26
  store i8* %6, i8** bitcast (i32 (i32, %struct._cl_platform_id**, i32*)** @"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6GHIPAPAU_cl_platform_id@@PAI@ZA" to i8**), align 4, !tbaa !38
  %28 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@", i32 0, i32 0)) #7
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = tail call i8* @malloc(i32 1024) #7
  %32 = icmp eq i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %34, align 1, !tbaa !37
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8* [ %34, %33 ], [ null, %30 ]
  %37 = tail call i8* @halide_string_to_string(i8* %31, i8* %36, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %36, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@", i32 0, i32 0)) #7
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %36, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %32, label %40, label %41

40:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %48

41:                                               ; preds = %35
  %42 = ptrtoint i8* %39 to i32
  %43 = ptrtoint i8* %31 to i32
  %44 = sub i32 1, %43
  %45 = add i32 %44, %42
  %46 = sext i32 %45 to i64
  %47 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %46) #7
  tail call void @halide_error(i8* %0, i8* nonnull %31) #7
  br label %48

48:                                               ; preds = %41, %40
  tail call void @free(i8* %31) #7
  br label %49

49:                                               ; preds = %27, %48
  store i8* %28, i8** bitcast (i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)** @"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %50 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@", i32 0, i32 0)) #7
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = tail call i8* @malloc(i32 1024) #7
  %54 = icmp eq i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023
  store i8 0, i8* %56, align 1, !tbaa !37
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i8* [ %56, %55 ], [ null, %52 ]
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %58, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@", i32 0, i32 0)) #7
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %54, label %62, label %63

62:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %70

63:                                               ; preds = %57
  %64 = ptrtoint i8* %61 to i32
  %65 = ptrtoint i8* %53 to i32
  %66 = sub i32 1, %65
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %53, i64 %68) #7
  tail call void @halide_error(i8* %0, i8* nonnull %53) #7
  br label %70

70:                                               ; preds = %63, %62
  tail call void @free(i8* %53) #7
  br label %71

71:                                               ; preds = %49, %70
  store i8* %50, i8** bitcast (i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@_KIPAPAU_cl_device_id@@PAI@ZA" to i8**), align 4, !tbaa !38
  %72 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@", i32 0, i32 0)) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = tail call i8* @malloc(i32 1024) #7
  %76 = icmp eq i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %78, align 1, !tbaa !37
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %78, %77 ], [ null, %74 ]
  %81 = tail call i8* @halide_string_to_string(i8* %75, i8* %80, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@", i32 0, i32 0)) #7
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %76, label %84, label %85

84:                                               ; preds = %79
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %92

85:                                               ; preds = %79
  %86 = ptrtoint i8* %83 to i32
  %87 = ptrtoint i8* %75 to i32
  %88 = sub i32 1, %87
  %89 = add i32 %88, %86
  %90 = sext i32 %89 to i64
  %91 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %75, i64 %90) #7
  tail call void @halide_error(i8* %0, i8* nonnull %75) #7
  br label %92

92:                                               ; preds = %85, %84
  tail call void @free(i8* %75) #7
  br label %93

93:                                               ; preds = %71, %92
  store i8* %72, i8** bitcast (i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %94 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DHOGNIBF@clCreateSubDevices?$AA@", i32 0, i32 0)) #7
  store i8* %94, i8** bitcast (i32 (%struct._cl_device_id*, i32*, i32, %struct._cl_device_id**, i32*)** @"?clCreateSubDevices@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@PBHIPAPAU5@PAI@ZA" to i8**), align 4, !tbaa !38
  %95 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MLMFBHBD@clRetainDevice?$AA@", i32 0, i32 0)) #7
  store i8* %95, i8** bitcast (i32 (%struct._cl_device_id*)** @"?clRetainDevice@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@@ZA" to i8**), align 4, !tbaa !38
  %96 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@DILOKKCJ@clReleaseDevice?$AA@", i32 0, i32 0)) #7
  store i8* %96, i8** bitcast (i32 (%struct._cl_device_id*)** @"?clReleaseDevice@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@@ZA" to i8**), align 4, !tbaa !38
  %97 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i32 0, i32 0)) #7
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = tail call i8* @malloc(i32 1024) #7
  %101 = icmp eq i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, i8* %100, i32 1023
  store i8 0, i8* %103, align 1, !tbaa !37
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i8* [ %103, %102 ], [ null, %99 ]
  %106 = tail call i8* @halide_string_to_string(i8* %100, i8* %105, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %107 = tail call i8* @halide_string_to_string(i8* %106, i8* %105, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i32 0, i32 0)) #7
  %108 = tail call i8* @halide_string_to_string(i8* %107, i8* %105, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %101, label %109, label %110

109:                                              ; preds = %104
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %117

110:                                              ; preds = %104
  %111 = ptrtoint i8* %108 to i32
  %112 = ptrtoint i8* %100 to i32
  %113 = sub i32 1, %112
  %114 = add i32 %113, %111
  %115 = sext i32 %114 to i64
  %116 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %100, i64 %115) #7
  tail call void @halide_error(i8* %0, i8* nonnull %100) #7
  br label %117

117:                                              ; preds = %110, %109
  tail call void @free(i8* %100) #7
  br label %118

118:                                              ; preds = %93, %117
  store i8* %97, i8** bitcast (%struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA" to i8**), align 4, !tbaa !38
  %119 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@", i32 0, i32 0)) #7
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = tail call i8* @malloc(i32 1024) #7
  %123 = icmp eq i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, i8* %122, i32 1023
  store i8 0, i8* %125, align 1, !tbaa !37
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i8* [ %125, %124 ], [ null, %121 ]
  %128 = tail call i8* @halide_string_to_string(i8* %122, i8* %127, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %129 = tail call i8* @halide_string_to_string(i8* %128, i8* %127, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@", i32 0, i32 0)) #7
  %130 = tail call i8* @halide_string_to_string(i8* %129, i8* %127, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %123, label %131, label %132

131:                                              ; preds = %126
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %139

132:                                              ; preds = %126
  %133 = ptrtoint i8* %130 to i32
  %134 = ptrtoint i8* %122 to i32
  %135 = sub i32 1, %134
  %136 = add i32 %135, %133
  %137 = sext i32 %136 to i64
  %138 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %122, i64 %137) #7
  tail call void @halide_error(i8* %0, i8* nonnull %122) #7
  br label %139

139:                                              ; preds = %132, %131
  tail call void @free(i8* %122) #7
  br label %140

140:                                              ; preds = %118, %139
  store i8* %119, i8** bitcast (%struct._cl_context* (i32*, i64, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContextFromType@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBH_KP6GXPBDPBXIPAX@Z4PAH@ZA" to i8**), align 4, !tbaa !38
  %141 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@", i32 0, i32 0)) #7
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = tail call i8* @malloc(i32 1024) #7
  %145 = icmp eq i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %144, i32 1023
  store i8 0, i8* %147, align 1, !tbaa !37
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi i8* [ %147, %146 ], [ null, %143 ]
  %150 = tail call i8* @halide_string_to_string(i8* %144, i8* %149, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %151 = tail call i8* @halide_string_to_string(i8* %150, i8* %149, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@", i32 0, i32 0)) #7
  %152 = tail call i8* @halide_string_to_string(i8* %151, i8* %149, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %145, label %153, label %154

153:                                              ; preds = %148
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %161

154:                                              ; preds = %148
  %155 = ptrtoint i8* %152 to i32
  %156 = ptrtoint i8* %144 to i32
  %157 = sub i32 1, %156
  %158 = add i32 %157, %155
  %159 = sext i32 %158 to i64
  %160 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %144, i64 %159) #7
  tail call void @halide_error(i8* %0, i8* nonnull %144) #7
  br label %161

161:                                              ; preds = %154, %153
  tail call void @free(i8* %144) #7
  br label %162

162:                                              ; preds = %140, %161
  store i8* %141, i8** bitcast (i32 (%struct._cl_context*)** @"?clRetainContext@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@@ZA" to i8**), align 4, !tbaa !38
  %163 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@", i32 0, i32 0)) #7
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = tail call i8* @malloc(i32 1024) #7
  %167 = icmp eq i8* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, i8* %166, i32 1023
  store i8 0, i8* %169, align 1, !tbaa !37
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i8* [ %169, %168 ], [ null, %165 ]
  %172 = tail call i8* @halide_string_to_string(i8* %166, i8* %171, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %173 = tail call i8* @halide_string_to_string(i8* %172, i8* %171, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@", i32 0, i32 0)) #7
  %174 = tail call i8* @halide_string_to_string(i8* %173, i8* %171, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %167, label %175, label %176

175:                                              ; preds = %170
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %183

176:                                              ; preds = %170
  %177 = ptrtoint i8* %174 to i32
  %178 = ptrtoint i8* %166 to i32
  %179 = sub i32 1, %178
  %180 = add i32 %179, %177
  %181 = sext i32 %180 to i64
  %182 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %166, i64 %181) #7
  tail call void @halide_error(i8* %0, i8* nonnull %166) #7
  br label %183

183:                                              ; preds = %176, %175
  tail call void @free(i8* %166) #7
  br label %184

184:                                              ; preds = %162, %183
  store i8* %163, i8** bitcast (i32 (%struct._cl_context*)** @"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@@ZA" to i8**), align 4, !tbaa !38
  %185 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@", i32 0, i32 0)) #7
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = tail call i8* @malloc(i32 1024) #7
  %189 = icmp eq i8* %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds i8, i8* %188, i32 1023
  store i8 0, i8* %191, align 1, !tbaa !37
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi i8* [ %191, %190 ], [ null, %187 ]
  %194 = tail call i8* @halide_string_to_string(i8* %188, i8* %193, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %195 = tail call i8* @halide_string_to_string(i8* %194, i8* %193, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@", i32 0, i32 0)) #7
  %196 = tail call i8* @halide_string_to_string(i8* %195, i8* %193, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %189, label %197, label %198

197:                                              ; preds = %192
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %205

198:                                              ; preds = %192
  %199 = ptrtoint i8* %196 to i32
  %200 = ptrtoint i8* %188 to i32
  %201 = sub i32 1, %200
  %202 = add i32 %201, %199
  %203 = sext i32 %202 to i64
  %204 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %188, i64 %203) #7
  tail call void @halide_error(i8* %0, i8* nonnull %188) #7
  br label %205

205:                                              ; preds = %198, %197
  tail call void @free(i8* %188) #7
  br label %206

206:                                              ; preds = %184, %205
  store i8* %185, i8** bitcast (i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %207 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@", i32 0, i32 0)) #7
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %228

209:                                              ; preds = %206
  %210 = tail call i8* @malloc(i32 1024) #7
  %211 = icmp eq i8* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds i8, i8* %210, i32 1023
  store i8 0, i8* %213, align 1, !tbaa !37
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i8* [ %213, %212 ], [ null, %209 ]
  %216 = tail call i8* @halide_string_to_string(i8* %210, i8* %215, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %217 = tail call i8* @halide_string_to_string(i8* %216, i8* %215, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@", i32 0, i32 0)) #7
  %218 = tail call i8* @halide_string_to_string(i8* %217, i8* %215, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %211, label %219, label %220

219:                                              ; preds = %214
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %227

220:                                              ; preds = %214
  %221 = ptrtoint i8* %218 to i32
  %222 = ptrtoint i8* %210 to i32
  %223 = sub i32 1, %222
  %224 = add i32 %223, %221
  %225 = sext i32 %224 to i64
  %226 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %210, i64 %225) #7
  tail call void @halide_error(i8* %0, i8* nonnull %210) #7
  br label %227

227:                                              ; preds = %220, %219
  tail call void @free(i8* %210) #7
  br label %228

228:                                              ; preds = %206, %227
  store i8* %207, i8** bitcast (%struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_command_queue@@PAU_cl_context@@PAU_cl_device_id@@_KPAH@ZA" to i8**), align 4, !tbaa !38
  %229 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@", i32 0, i32 0)) #7
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %250

231:                                              ; preds = %228
  %232 = tail call i8* @malloc(i32 1024) #7
  %233 = icmp eq i8* %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds i8, i8* %232, i32 1023
  store i8 0, i8* %235, align 1, !tbaa !37
  br label %236

236:                                              ; preds = %234, %231
  %237 = phi i8* [ %235, %234 ], [ null, %231 ]
  %238 = tail call i8* @halide_string_to_string(i8* %232, i8* %237, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %239 = tail call i8* @halide_string_to_string(i8* %238, i8* %237, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@", i32 0, i32 0)) #7
  %240 = tail call i8* @halide_string_to_string(i8* %239, i8* %237, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %233, label %241, label %242

241:                                              ; preds = %236
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %249

242:                                              ; preds = %236
  %243 = ptrtoint i8* %240 to i32
  %244 = ptrtoint i8* %232 to i32
  %245 = sub i32 1, %244
  %246 = add i32 %245, %243
  %247 = sext i32 %246 to i64
  %248 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %232, i64 %247) #7
  tail call void @halide_error(i8* %0, i8* nonnull %232) #7
  br label %249

249:                                              ; preds = %242, %241
  tail call void @free(i8* %232) #7
  br label %250

250:                                              ; preds = %228, %249
  store i8* %229, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clRetainCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" to i8**), align 4, !tbaa !38
  %251 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@", i32 0, i32 0)) #7
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %272

253:                                              ; preds = %250
  %254 = tail call i8* @malloc(i32 1024) #7
  %255 = icmp eq i8* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds i8, i8* %254, i32 1023
  store i8 0, i8* %257, align 1, !tbaa !37
  br label %258

258:                                              ; preds = %256, %253
  %259 = phi i8* [ %257, %256 ], [ null, %253 ]
  %260 = tail call i8* @halide_string_to_string(i8* %254, i8* %259, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %261 = tail call i8* @halide_string_to_string(i8* %260, i8* %259, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@", i32 0, i32 0)) #7
  %262 = tail call i8* @halide_string_to_string(i8* %261, i8* %259, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %255, label %263, label %264

263:                                              ; preds = %258
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %271

264:                                              ; preds = %258
  %265 = ptrtoint i8* %262 to i32
  %266 = ptrtoint i8* %254 to i32
  %267 = sub i32 1, %266
  %268 = add i32 %267, %265
  %269 = sext i32 %268 to i64
  %270 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %254, i64 %269) #7
  tail call void @halide_error(i8* %0, i8* nonnull %254) #7
  br label %271

271:                                              ; preds = %264, %263
  tail call void @free(i8* %254) #7
  br label %272

272:                                              ; preds = %250, %271
  store i8* %251, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" to i8**), align 4, !tbaa !38
  %273 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@", i32 0, i32 0)) #7
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = tail call i8* @malloc(i32 1024) #7
  %277 = icmp eq i8* %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, i8* %276, i32 1023
  store i8 0, i8* %279, align 1, !tbaa !37
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i8* [ %279, %278 ], [ null, %275 ]
  %282 = tail call i8* @halide_string_to_string(i8* %276, i8* %281, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %283 = tail call i8* @halide_string_to_string(i8* %282, i8* %281, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@", i32 0, i32 0)) #7
  %284 = tail call i8* @halide_string_to_string(i8* %283, i8* %281, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %277, label %285, label %286

285:                                              ; preds = %280
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %293

286:                                              ; preds = %280
  %287 = ptrtoint i8* %284 to i32
  %288 = ptrtoint i8* %276 to i32
  %289 = sub i32 1, %288
  %290 = add i32 %289, %287
  %291 = sext i32 %290 to i64
  %292 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %276, i64 %291) #7
  tail call void @halide_error(i8* %0, i8* nonnull %276) #7
  br label %293

293:                                              ; preds = %286, %285
  tail call void @free(i8* %276) #7
  br label %294

294:                                              ; preds = %272, %293
  store i8* %273, i8** bitcast (i32 (%struct._cl_command_queue*, i32, i32, i8*, i32*)** @"?clGetCommandQueueInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %295 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@", i32 0, i32 0)) #7
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = tail call i8* @malloc(i32 1024) #7
  %299 = icmp eq i8* %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds i8, i8* %298, i32 1023
  store i8 0, i8* %301, align 1, !tbaa !37
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi i8* [ %301, %300 ], [ null, %297 ]
  %304 = tail call i8* @halide_string_to_string(i8* %298, i8* %303, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %305 = tail call i8* @halide_string_to_string(i8* %304, i8* %303, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@", i32 0, i32 0)) #7
  %306 = tail call i8* @halide_string_to_string(i8* %305, i8* %303, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %299, label %307, label %308

307:                                              ; preds = %302
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %315

308:                                              ; preds = %302
  %309 = ptrtoint i8* %306 to i32
  %310 = ptrtoint i8* %298 to i32
  %311 = sub i32 1, %310
  %312 = add i32 %311, %309
  %313 = sext i32 %312 to i64
  %314 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %298, i64 %313) #7
  tail call void @halide_error(i8* %0, i8* nonnull %298) #7
  br label %315

315:                                              ; preds = %308, %307
  tail call void @free(i8* %298) #7
  br label %316

316:                                              ; preds = %294, %315
  store i8* %295, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)** @"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KIPAXPAH@ZA" to i8**), align 4, !tbaa !38
  %317 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@", i32 0, i32 0)) #7
  %318 = icmp eq i8* %317, null
  br i1 %318, label %319, label %338

319:                                              ; preds = %316
  %320 = tail call i8* @malloc(i32 1024) #7
  %321 = icmp eq i8* %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds i8, i8* %320, i32 1023
  store i8 0, i8* %323, align 1, !tbaa !37
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i8* [ %323, %322 ], [ null, %319 ]
  %326 = tail call i8* @halide_string_to_string(i8* %320, i8* %325, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %327 = tail call i8* @halide_string_to_string(i8* %326, i8* %325, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@", i32 0, i32 0)) #7
  %328 = tail call i8* @halide_string_to_string(i8* %327, i8* %325, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %321, label %329, label %330

329:                                              ; preds = %324
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %337

330:                                              ; preds = %324
  %331 = ptrtoint i8* %328 to i32
  %332 = ptrtoint i8* %320 to i32
  %333 = sub i32 1, %332
  %334 = add i32 %333, %331
  %335 = sext i32 %334 to i64
  %336 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %320, i64 %335) #7
  tail call void @halide_error(i8* %0, i8* nonnull %320) #7
  br label %337

337:                                              ; preds = %330, %329
  tail call void @free(i8* %320) #7
  br label %338

338:                                              ; preds = %316, %337
  store i8* %317, i8** bitcast (%struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU5@_KIPBXPAH@ZA" to i8**), align 4, !tbaa !38
  %339 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@LJDNFNNP@clCreateImage?$AA@", i32 0, i32 0)) #7
  store i8* %339, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KPBU_cl_image_format@@PBU_cl_image_desc@@PAXPAH@ZA" to i8**), align 4, !tbaa !38
  %340 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@", i32 0, i32 0)) #7
  %341 = icmp eq i8* %340, null
  br i1 %341, label %342, label %361

342:                                              ; preds = %338
  %343 = tail call i8* @malloc(i32 1024) #7
  %344 = icmp eq i8* %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds i8, i8* %343, i32 1023
  store i8 0, i8* %346, align 1, !tbaa !37
  br label %347

347:                                              ; preds = %345, %342
  %348 = phi i8* [ %346, %345 ], [ null, %342 ]
  %349 = tail call i8* @halide_string_to_string(i8* %343, i8* %348, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %350 = tail call i8* @halide_string_to_string(i8* %349, i8* %348, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@", i32 0, i32 0)) #7
  %351 = tail call i8* @halide_string_to_string(i8* %350, i8* %348, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %344, label %352, label %353

352:                                              ; preds = %347
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %360

353:                                              ; preds = %347
  %354 = ptrtoint i8* %351 to i32
  %355 = ptrtoint i8* %343 to i32
  %356 = sub i32 1, %355
  %357 = add i32 %356, %354
  %358 = sext i32 %357 to i64
  %359 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %343, i64 %358) #7
  tail call void @halide_error(i8* %0, i8* nonnull %343) #7
  br label %360

360:                                              ; preds = %353, %352
  tail call void @free(i8* %343) #7
  br label %361

361:                                              ; preds = %338, %360
  store i8* %340, i8** bitcast (i32 (%struct._cl_mem*)** @"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA" to i8**), align 4, !tbaa !38
  %362 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@", i32 0, i32 0)) #7
  %363 = icmp eq i8* %362, null
  br i1 %363, label %364, label %383

364:                                              ; preds = %361
  %365 = tail call i8* @malloc(i32 1024) #7
  %366 = icmp eq i8* %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds i8, i8* %365, i32 1023
  store i8 0, i8* %368, align 1, !tbaa !37
  br label %369

369:                                              ; preds = %367, %364
  %370 = phi i8* [ %368, %367 ], [ null, %364 ]
  %371 = tail call i8* @halide_string_to_string(i8* %365, i8* %370, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %372 = tail call i8* @halide_string_to_string(i8* %371, i8* %370, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@", i32 0, i32 0)) #7
  %373 = tail call i8* @halide_string_to_string(i8* %372, i8* %370, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %366, label %374, label %375

374:                                              ; preds = %369
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %382

375:                                              ; preds = %369
  %376 = ptrtoint i8* %373 to i32
  %377 = ptrtoint i8* %365 to i32
  %378 = sub i32 1, %377
  %379 = add i32 %378, %376
  %380 = sext i32 %379 to i64
  %381 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %365, i64 %380) #7
  tail call void @halide_error(i8* %0, i8* nonnull %365) #7
  br label %382

382:                                              ; preds = %375, %374
  tail call void @free(i8* %365) #7
  br label %383

383:                                              ; preds = %361, %382
  store i8* %362, i8** bitcast (i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA" to i8**), align 4, !tbaa !38
  %384 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@", i32 0, i32 0)) #7
  %385 = icmp eq i8* %384, null
  br i1 %385, label %386, label %405

386:                                              ; preds = %383
  %387 = tail call i8* @malloc(i32 1024) #7
  %388 = icmp eq i8* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8, i8* %387, i32 1023
  store i8 0, i8* %390, align 1, !tbaa !37
  br label %391

391:                                              ; preds = %389, %386
  %392 = phi i8* [ %390, %389 ], [ null, %386 ]
  %393 = tail call i8* @halide_string_to_string(i8* %387, i8* %392, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %394 = tail call i8* @halide_string_to_string(i8* %393, i8* %392, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@", i32 0, i32 0)) #7
  %395 = tail call i8* @halide_string_to_string(i8* %394, i8* %392, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %388, label %396, label %397

396:                                              ; preds = %391
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %404

397:                                              ; preds = %391
  %398 = ptrtoint i8* %395 to i32
  %399 = ptrtoint i8* %387 to i32
  %400 = sub i32 1, %399
  %401 = add i32 %400, %398
  %402 = sext i32 %401 to i64
  %403 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %387, i64 %402) #7
  tail call void @halide_error(i8* %0, i8* nonnull %387) #7
  br label %404

404:                                              ; preds = %397, %396
  tail call void @free(i8* %387) #7
  br label %405

405:                                              ; preds = %383, %404
  store i8* %384, i8** bitcast (i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)** @"?clGetSupportedImageFormats@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@_KIIPAU_cl_image_format@@PAI@ZA" to i8**), align 4, !tbaa !38
  %406 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@", i32 0, i32 0)) #7
  %407 = icmp eq i8* %406, null
  br i1 %407, label %408, label %427

408:                                              ; preds = %405
  %409 = tail call i8* @malloc(i32 1024) #7
  %410 = icmp eq i8* %409, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %408
  %412 = getelementptr inbounds i8, i8* %409, i32 1023
  store i8 0, i8* %412, align 1, !tbaa !37
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi i8* [ %412, %411 ], [ null, %408 ]
  %415 = tail call i8* @halide_string_to_string(i8* %409, i8* %414, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %416 = tail call i8* @halide_string_to_string(i8* %415, i8* %414, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@", i32 0, i32 0)) #7
  %417 = tail call i8* @halide_string_to_string(i8* %416, i8* %414, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %410, label %418, label %419

418:                                              ; preds = %413
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %426

419:                                              ; preds = %413
  %420 = ptrtoint i8* %417 to i32
  %421 = ptrtoint i8* %409 to i32
  %422 = sub i32 1, %421
  %423 = add i32 %422, %420
  %424 = sext i32 %423 to i64
  %425 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %409, i64 %424) #7
  tail call void @halide_error(i8* %0, i8* nonnull %409) #7
  br label %426

426:                                              ; preds = %419, %418
  tail call void @free(i8* %409) #7
  br label %427

427:                                              ; preds = %405, %426
  store i8* %406, i8** bitcast (i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %428 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@", i32 0, i32 0)) #7
  %429 = icmp eq i8* %428, null
  br i1 %429, label %430, label %449

430:                                              ; preds = %427
  %431 = tail call i8* @malloc(i32 1024) #7
  %432 = icmp eq i8* %431, null
  br i1 %432, label %435, label %433

433:                                              ; preds = %430
  %434 = getelementptr inbounds i8, i8* %431, i32 1023
  store i8 0, i8* %434, align 1, !tbaa !37
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi i8* [ %434, %433 ], [ null, %430 ]
  %437 = tail call i8* @halide_string_to_string(i8* %431, i8* %436, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %438 = tail call i8* @halide_string_to_string(i8* %437, i8* %436, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@", i32 0, i32 0)) #7
  %439 = tail call i8* @halide_string_to_string(i8* %438, i8* %436, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %432, label %440, label %441

440:                                              ; preds = %435
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %448

441:                                              ; preds = %435
  %442 = ptrtoint i8* %439 to i32
  %443 = ptrtoint i8* %431 to i32
  %444 = sub i32 1, %443
  %445 = add i32 %444, %442
  %446 = sext i32 %445 to i64
  %447 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %431, i64 %446) #7
  tail call void @halide_error(i8* %0, i8* nonnull %431) #7
  br label %448

448:                                              ; preds = %441, %440
  tail call void @free(i8* %431) #7
  br label %449

449:                                              ; preds = %427, %448
  store i8* %428, i8** bitcast (i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @"?clGetImageInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %450 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@", i32 0, i32 0)) #7
  %451 = icmp eq i8* %450, null
  br i1 %451, label %452, label %471

452:                                              ; preds = %449
  %453 = tail call i8* @malloc(i32 1024) #7
  %454 = icmp eq i8* %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds i8, i8* %453, i32 1023
  store i8 0, i8* %456, align 1, !tbaa !37
  br label %457

457:                                              ; preds = %455, %452
  %458 = phi i8* [ %456, %455 ], [ null, %452 ]
  %459 = tail call i8* @halide_string_to_string(i8* %453, i8* %458, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %460 = tail call i8* @halide_string_to_string(i8* %459, i8* %458, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@", i32 0, i32 0)) #7
  %461 = tail call i8* @halide_string_to_string(i8* %460, i8* %458, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %454, label %462, label %463

462:                                              ; preds = %457
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %470

463:                                              ; preds = %457
  %464 = ptrtoint i8* %461 to i32
  %465 = ptrtoint i8* %453 to i32
  %466 = sub i32 1, %465
  %467 = add i32 %466, %464
  %468 = sext i32 %467 to i64
  %469 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %453, i64 %468) #7
  tail call void @halide_error(i8* %0, i8* nonnull %453) #7
  br label %470

470:                                              ; preds = %463, %462
  tail call void @free(i8* %453) #7
  br label %471

471:                                              ; preds = %449, %470
  store i8* %450, i8** bitcast (i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)** @"?clSetMemObjectDestructorCallback@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@P6GX0PAX@Z1@ZA" to i8**), align 4, !tbaa !38
  %472 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@", i32 0, i32 0)) #7
  %473 = icmp eq i8* %472, null
  br i1 %473, label %474, label %493

474:                                              ; preds = %471
  %475 = tail call i8* @malloc(i32 1024) #7
  %476 = icmp eq i8* %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds i8, i8* %475, i32 1023
  store i8 0, i8* %478, align 1, !tbaa !37
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i8* [ %478, %477 ], [ null, %474 ]
  %481 = tail call i8* @halide_string_to_string(i8* %475, i8* %480, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %482 = tail call i8* @halide_string_to_string(i8* %481, i8* %480, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@", i32 0, i32 0)) #7
  %483 = tail call i8* @halide_string_to_string(i8* %482, i8* %480, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %476, label %484, label %485

484:                                              ; preds = %479
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %492

485:                                              ; preds = %479
  %486 = ptrtoint i8* %483 to i32
  %487 = ptrtoint i8* %475 to i32
  %488 = sub i32 1, %487
  %489 = add i32 %488, %486
  %490 = sext i32 %489 to i64
  %491 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %475, i64 %490) #7
  tail call void @halide_error(i8* %0, i8* nonnull %475) #7
  br label %492

492:                                              ; preds = %485, %484
  tail call void @free(i8* %475) #7
  br label %493

493:                                              ; preds = %471, %492
  store i8* %472, i8** bitcast (%struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)** @"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_program@@PAU_cl_context@@IPAPBDPBIPAH@ZA" to i8**), align 4, !tbaa !38
  %494 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@", i32 0, i32 0)) #7
  %495 = icmp eq i8* %494, null
  br i1 %495, label %496, label %515

496:                                              ; preds = %493
  %497 = tail call i8* @malloc(i32 1024) #7
  %498 = icmp eq i8* %497, null
  br i1 %498, label %501, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds i8, i8* %497, i32 1023
  store i8 0, i8* %500, align 1, !tbaa !37
  br label %501

501:                                              ; preds = %499, %496
  %502 = phi i8* [ %500, %499 ], [ null, %496 ]
  %503 = tail call i8* @halide_string_to_string(i8* %497, i8* %502, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %504 = tail call i8* @halide_string_to_string(i8* %503, i8* %502, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@", i32 0, i32 0)) #7
  %505 = tail call i8* @halide_string_to_string(i8* %504, i8* %502, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %498, label %506, label %507

506:                                              ; preds = %501
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %514

507:                                              ; preds = %501
  %508 = ptrtoint i8* %505 to i32
  %509 = ptrtoint i8* %497 to i32
  %510 = sub i32 1, %509
  %511 = add i32 %510, %508
  %512 = sext i32 %511 to i64
  %513 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %497, i64 %512) #7
  tail call void @halide_error(i8* %0, i8* nonnull %497) #7
  br label %514

514:                                              ; preds = %507, %506
  tail call void @free(i8* %497) #7
  br label %515

515:                                              ; preds = %493, %514
  store i8* %494, i8** bitcast (i32 (%struct._cl_program*)** @"?clRetainProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA" to i8**), align 4, !tbaa !38
  %516 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@", i32 0, i32 0)) #7
  %517 = icmp eq i8* %516, null
  br i1 %517, label %518, label %537

518:                                              ; preds = %515
  %519 = tail call i8* @malloc(i32 1024) #7
  %520 = icmp eq i8* %519, null
  br i1 %520, label %523, label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %519, i32 1023
  store i8 0, i8* %522, align 1, !tbaa !37
  br label %523

523:                                              ; preds = %521, %518
  %524 = phi i8* [ %522, %521 ], [ null, %518 ]
  %525 = tail call i8* @halide_string_to_string(i8* %519, i8* %524, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %526 = tail call i8* @halide_string_to_string(i8* %525, i8* %524, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@", i32 0, i32 0)) #7
  %527 = tail call i8* @halide_string_to_string(i8* %526, i8* %524, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %520, label %528, label %529

528:                                              ; preds = %523
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %536

529:                                              ; preds = %523
  %530 = ptrtoint i8* %527 to i32
  %531 = ptrtoint i8* %519 to i32
  %532 = sub i32 1, %531
  %533 = add i32 %532, %530
  %534 = sext i32 %533 to i64
  %535 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %519, i64 %534) #7
  tail call void @halide_error(i8* %0, i8* nonnull %519) #7
  br label %536

536:                                              ; preds = %529, %528
  tail call void @free(i8* %519) #7
  br label %537

537:                                              ; preds = %515, %536
  store i8* %516, i8** bitcast (i32 (%struct._cl_program*)** @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA" to i8**), align 4, !tbaa !38
  %538 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@", i32 0, i32 0)) #7
  %539 = icmp eq i8* %538, null
  br i1 %539, label %540, label %559

540:                                              ; preds = %537
  %541 = tail call i8* @malloc(i32 1024) #7
  %542 = icmp eq i8* %541, null
  br i1 %542, label %545, label %543

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, i8* %541, i32 1023
  store i8 0, i8* %544, align 1, !tbaa !37
  br label %545

545:                                              ; preds = %543, %540
  %546 = phi i8* [ %544, %543 ], [ null, %540 ]
  %547 = tail call i8* @halide_string_to_string(i8* %541, i8* %546, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %548 = tail call i8* @halide_string_to_string(i8* %547, i8* %546, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@", i32 0, i32 0)) #7
  %549 = tail call i8* @halide_string_to_string(i8* %548, i8* %546, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %542, label %550, label %551

550:                                              ; preds = %545
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %558

551:                                              ; preds = %545
  %552 = ptrtoint i8* %549 to i32
  %553 = ptrtoint i8* %541 to i32
  %554 = sub i32 1, %553
  %555 = add i32 %554, %552
  %556 = sext i32 %555 to i64
  %557 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %541, i64 %556) #7
  tail call void @halide_error(i8* %0, i8* nonnull %541) #7
  br label %558

558:                                              ; preds = %551, %550
  tail call void @free(i8* %541) #7
  br label %559

559:                                              ; preds = %537, %558
  store i8* %538, i8** bitcast (i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@IPBQAU_cl_device_id@@PBDP6GX0PAX@Z3@ZA" to i8**), align 4, !tbaa !38
  %560 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@", i32 0, i32 0)) #7
  %561 = icmp eq i8* %560, null
  br i1 %561, label %562, label %581

562:                                              ; preds = %559
  %563 = tail call i8* @malloc(i32 1024) #7
  %564 = icmp eq i8* %563, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %562
  %566 = getelementptr inbounds i8, i8* %563, i32 1023
  store i8 0, i8* %566, align 1, !tbaa !37
  br label %567

567:                                              ; preds = %565, %562
  %568 = phi i8* [ %566, %565 ], [ null, %562 ]
  %569 = tail call i8* @halide_string_to_string(i8* %563, i8* %568, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %570 = tail call i8* @halide_string_to_string(i8* %569, i8* %568, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@", i32 0, i32 0)) #7
  %571 = tail call i8* @halide_string_to_string(i8* %570, i8* %568, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %564, label %572, label %573

572:                                              ; preds = %567
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %580

573:                                              ; preds = %567
  %574 = ptrtoint i8* %571 to i32
  %575 = ptrtoint i8* %563 to i32
  %576 = sub i32 1, %575
  %577 = add i32 %576, %574
  %578 = sext i32 %577 to i64
  %579 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %563, i64 %578) #7
  tail call void @halide_error(i8* %0, i8* nonnull %563) #7
  br label %580

580:                                              ; preds = %573, %572
  tail call void @free(i8* %563) #7
  br label %581

581:                                              ; preds = %559, %580
  store i8* %560, i8** bitcast (i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@PAU_cl_device_id@@IIPAXPAI@ZA" to i8**), align 4, !tbaa !38
  %582 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@POBJOHCP@clCreateKernel?$AA@", i32 0, i32 0)) #7
  %583 = icmp eq i8* %582, null
  br i1 %583, label %584, label %603

584:                                              ; preds = %581
  %585 = tail call i8* @malloc(i32 1024) #7
  %586 = icmp eq i8* %585, null
  br i1 %586, label %589, label %587

587:                                              ; preds = %584
  %588 = getelementptr inbounds i8, i8* %585, i32 1023
  store i8 0, i8* %588, align 1, !tbaa !37
  br label %589

589:                                              ; preds = %587, %584
  %590 = phi i8* [ %588, %587 ], [ null, %584 ]
  %591 = tail call i8* @halide_string_to_string(i8* %585, i8* %590, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %592 = tail call i8* @halide_string_to_string(i8* %591, i8* %590, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@POBJOHCP@clCreateKernel?$AA@", i32 0, i32 0)) #7
  %593 = tail call i8* @halide_string_to_string(i8* %592, i8* %590, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %586, label %594, label %595

594:                                              ; preds = %589
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %602

595:                                              ; preds = %589
  %596 = ptrtoint i8* %593 to i32
  %597 = ptrtoint i8* %585 to i32
  %598 = sub i32 1, %597
  %599 = add i32 %598, %596
  %600 = sext i32 %599 to i64
  %601 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %585, i64 %600) #7
  tail call void @halide_error(i8* %0, i8* nonnull %585) #7
  br label %602

602:                                              ; preds = %595, %594
  tail call void @free(i8* %585) #7
  br label %603

603:                                              ; preds = %581, %602
  store i8* %582, i8** bitcast (%struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_kernel@@PAU_cl_program@@PBDPAH@ZA" to i8**), align 4, !tbaa !38
  %604 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@", i32 0, i32 0)) #7
  %605 = icmp eq i8* %604, null
  br i1 %605, label %606, label %625

606:                                              ; preds = %603
  %607 = tail call i8* @malloc(i32 1024) #7
  %608 = icmp eq i8* %607, null
  br i1 %608, label %611, label %609

609:                                              ; preds = %606
  %610 = getelementptr inbounds i8, i8* %607, i32 1023
  store i8 0, i8* %610, align 1, !tbaa !37
  br label %611

611:                                              ; preds = %609, %606
  %612 = phi i8* [ %610, %609 ], [ null, %606 ]
  %613 = tail call i8* @halide_string_to_string(i8* %607, i8* %612, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %614 = tail call i8* @halide_string_to_string(i8* %613, i8* %612, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@", i32 0, i32 0)) #7
  %615 = tail call i8* @halide_string_to_string(i8* %614, i8* %612, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %608, label %616, label %617

616:                                              ; preds = %611
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %624

617:                                              ; preds = %611
  %618 = ptrtoint i8* %615 to i32
  %619 = ptrtoint i8* %607 to i32
  %620 = sub i32 1, %619
  %621 = add i32 %620, %618
  %622 = sext i32 %621 to i64
  %623 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %607, i64 %622) #7
  tail call void @halide_error(i8* %0, i8* nonnull %607) #7
  br label %624

624:                                              ; preds = %617, %616
  tail call void @free(i8* %607) #7
  br label %625

625:                                              ; preds = %603, %624
  store i8* %604, i8** bitcast (i32 (%struct._cl_kernel*)** @"?clRetainKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@@ZA" to i8**), align 4, !tbaa !38
  %626 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@", i32 0, i32 0)) #7
  %627 = icmp eq i8* %626, null
  br i1 %627, label %628, label %647

628:                                              ; preds = %625
  %629 = tail call i8* @malloc(i32 1024) #7
  %630 = icmp eq i8* %629, null
  br i1 %630, label %633, label %631

631:                                              ; preds = %628
  %632 = getelementptr inbounds i8, i8* %629, i32 1023
  store i8 0, i8* %632, align 1, !tbaa !37
  br label %633

633:                                              ; preds = %631, %628
  %634 = phi i8* [ %632, %631 ], [ null, %628 ]
  %635 = tail call i8* @halide_string_to_string(i8* %629, i8* %634, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %636 = tail call i8* @halide_string_to_string(i8* %635, i8* %634, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@", i32 0, i32 0)) #7
  %637 = tail call i8* @halide_string_to_string(i8* %636, i8* %634, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %630, label %638, label %639

638:                                              ; preds = %633
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %646

639:                                              ; preds = %633
  %640 = ptrtoint i8* %637 to i32
  %641 = ptrtoint i8* %629 to i32
  %642 = sub i32 1, %641
  %643 = add i32 %642, %640
  %644 = sext i32 %643 to i64
  %645 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %629, i64 %644) #7
  tail call void @halide_error(i8* %0, i8* nonnull %629) #7
  br label %646

646:                                              ; preds = %639, %638
  tail call void @free(i8* %629) #7
  br label %647

647:                                              ; preds = %625, %646
  store i8* %626, i8** bitcast (i32 (%struct._cl_kernel*)** @"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@@ZA" to i8**), align 4, !tbaa !38
  %648 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@", i32 0, i32 0)) #7
  %649 = icmp eq i8* %648, null
  br i1 %649, label %650, label %669

650:                                              ; preds = %647
  %651 = tail call i8* @malloc(i32 1024) #7
  %652 = icmp eq i8* %651, null
  br i1 %652, label %655, label %653

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, i8* %651, i32 1023
  store i8 0, i8* %654, align 1, !tbaa !37
  br label %655

655:                                              ; preds = %653, %650
  %656 = phi i8* [ %654, %653 ], [ null, %650 ]
  %657 = tail call i8* @halide_string_to_string(i8* %651, i8* %656, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %658 = tail call i8* @halide_string_to_string(i8* %657, i8* %656, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@", i32 0, i32 0)) #7
  %659 = tail call i8* @halide_string_to_string(i8* %658, i8* %656, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %652, label %660, label %661

660:                                              ; preds = %655
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %668

661:                                              ; preds = %655
  %662 = ptrtoint i8* %659 to i32
  %663 = ptrtoint i8* %651 to i32
  %664 = sub i32 1, %663
  %665 = add i32 %664, %662
  %666 = sext i32 %665 to i64
  %667 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %651, i64 %666) #7
  tail call void @halide_error(i8* %0, i8* nonnull %651) #7
  br label %668

668:                                              ; preds = %661, %660
  tail call void @free(i8* %651) #7
  br label %669

669:                                              ; preds = %647, %668
  store i8* %648, i8** bitcast (i32 (%struct._cl_kernel*, i32, i32, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@IIPBX@ZA" to i8**), align 4, !tbaa !38
  %670 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07KKBOLFGK@clFlush?$AA@", i32 0, i32 0)) #7
  %671 = icmp eq i8* %670, null
  br i1 %671, label %672, label %691

672:                                              ; preds = %669
  %673 = tail call i8* @malloc(i32 1024) #7
  %674 = icmp eq i8* %673, null
  br i1 %674, label %677, label %675

675:                                              ; preds = %672
  %676 = getelementptr inbounds i8, i8* %673, i32 1023
  store i8 0, i8* %676, align 1, !tbaa !37
  br label %677

677:                                              ; preds = %675, %672
  %678 = phi i8* [ %676, %675 ], [ null, %672 ]
  %679 = tail call i8* @halide_string_to_string(i8* %673, i8* %678, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %680 = tail call i8* @halide_string_to_string(i8* %679, i8* %678, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07KKBOLFGK@clFlush?$AA@", i32 0, i32 0)) #7
  %681 = tail call i8* @halide_string_to_string(i8* %680, i8* %678, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %674, label %682, label %683

682:                                              ; preds = %677
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %690

683:                                              ; preds = %677
  %684 = ptrtoint i8* %681 to i32
  %685 = ptrtoint i8* %673 to i32
  %686 = sub i32 1, %685
  %687 = add i32 %686, %684
  %688 = sext i32 %687 to i64
  %689 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %673, i64 %688) #7
  tail call void @halide_error(i8* %0, i8* nonnull %673) #7
  br label %690

690:                                              ; preds = %683, %682
  tail call void @free(i8* %673) #7
  br label %691

691:                                              ; preds = %669, %690
  store i8* %670, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clFlush@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" to i8**), align 4, !tbaa !38
  %692 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08GIMDLLBG@clFinish?$AA@", i32 0, i32 0)) #7
  %693 = icmp eq i8* %692, null
  br i1 %693, label %694, label %713

694:                                              ; preds = %691
  %695 = tail call i8* @malloc(i32 1024) #7
  %696 = icmp eq i8* %695, null
  br i1 %696, label %699, label %697

697:                                              ; preds = %694
  %698 = getelementptr inbounds i8, i8* %695, i32 1023
  store i8 0, i8* %698, align 1, !tbaa !37
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi i8* [ %698, %697 ], [ null, %694 ]
  %701 = tail call i8* @halide_string_to_string(i8* %695, i8* %700, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %702 = tail call i8* @halide_string_to_string(i8* %701, i8* %700, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08GIMDLLBG@clFinish?$AA@", i32 0, i32 0)) #7
  %703 = tail call i8* @halide_string_to_string(i8* %702, i8* %700, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %696, label %704, label %705

704:                                              ; preds = %699
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %712

705:                                              ; preds = %699
  %706 = ptrtoint i8* %703 to i32
  %707 = ptrtoint i8* %695 to i32
  %708 = sub i32 1, %707
  %709 = add i32 %708, %706
  %710 = sext i32 %709 to i64
  %711 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %695, i64 %710) #7
  tail call void @halide_error(i8* %0, i8* nonnull %695) #7
  br label %712

712:                                              ; preds = %705, %704
  tail call void @free(i8* %695) #7
  br label %713

713:                                              ; preds = %691, %712
  store i8* %692, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA" to i8**), align 4, !tbaa !38
  %714 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@", i32 0, i32 0)) #7
  %715 = icmp eq i8* %714, null
  br i1 %715, label %716, label %735

716:                                              ; preds = %713
  %717 = tail call i8* @malloc(i32 1024) #7
  %718 = icmp eq i8* %717, null
  br i1 %718, label %721, label %719

719:                                              ; preds = %716
  %720 = getelementptr inbounds i8, i8* %717, i32 1023
  store i8 0, i8* %720, align 1, !tbaa !37
  br label %721

721:                                              ; preds = %719, %716
  %722 = phi i8* [ %720, %719 ], [ null, %716 ]
  %723 = tail call i8* @halide_string_to_string(i8* %717, i8* %722, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %724 = tail call i8* @halide_string_to_string(i8* %723, i8* %722, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@", i32 0, i32 0)) #7
  %725 = tail call i8* @halide_string_to_string(i8* %724, i8* %722, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %718, label %726, label %727

726:                                              ; preds = %721
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %734

727:                                              ; preds = %721
  %728 = ptrtoint i8* %725 to i32
  %729 = ptrtoint i8* %717 to i32
  %730 = sub i32 1, %729
  %731 = add i32 %730, %728
  %732 = sext i32 %731 to i64
  %733 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %717, i64 %732) #7
  tail call void @halide_error(i8* %0, i8* nonnull %717) #7
  br label %734

734:                                              ; preds = %727, %726
  tail call void @free(i8* %717) #7
  br label %735

735:                                              ; preds = %713, %734
  store i8* %714, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPAXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %736 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@", i32 0, i32 0)) #7
  %737 = icmp eq i8* %736, null
  br i1 %737, label %738, label %757

738:                                              ; preds = %735
  %739 = tail call i8* @malloc(i32 1024) #7
  %740 = icmp eq i8* %739, null
  br i1 %740, label %743, label %741

741:                                              ; preds = %738
  %742 = getelementptr inbounds i8, i8* %739, i32 1023
  store i8 0, i8* %742, align 1, !tbaa !37
  br label %743

743:                                              ; preds = %741, %738
  %744 = phi i8* [ %742, %741 ], [ null, %738 ]
  %745 = tail call i8* @halide_string_to_string(i8* %739, i8* %744, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %746 = tail call i8* @halide_string_to_string(i8* %745, i8* %744, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@", i32 0, i32 0)) #7
  %747 = tail call i8* @halide_string_to_string(i8* %746, i8* %744, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %740, label %748, label %749

748:                                              ; preds = %743
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %756

749:                                              ; preds = %743
  %750 = ptrtoint i8* %747 to i32
  %751 = ptrtoint i8* %739 to i32
  %752 = sub i32 1, %751
  %753 = add i32 %752, %750
  %754 = sext i32 %753 to i64
  %755 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %739, i64 %754) #7
  tail call void @halide_error(i8* %0, i8* nonnull %739) #7
  br label %756

756:                                              ; preds = %749, %748
  tail call void @free(i8* %739) #7
  br label %757

757:                                              ; preds = %735, %756
  store i8* %736, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBufferRect@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI22IIIIPAXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %758 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@", i32 0, i32 0)) #7
  %759 = icmp eq i8* %758, null
  br i1 %759, label %760, label %779

760:                                              ; preds = %757
  %761 = tail call i8* @malloc(i32 1024) #7
  %762 = icmp eq i8* %761, null
  br i1 %762, label %765, label %763

763:                                              ; preds = %760
  %764 = getelementptr inbounds i8, i8* %761, i32 1023
  store i8 0, i8* %764, align 1, !tbaa !37
  br label %765

765:                                              ; preds = %763, %760
  %766 = phi i8* [ %764, %763 ], [ null, %760 ]
  %767 = tail call i8* @halide_string_to_string(i8* %761, i8* %766, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %768 = tail call i8* @halide_string_to_string(i8* %767, i8* %766, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@", i32 0, i32 0)) #7
  %769 = tail call i8* @halide_string_to_string(i8* %768, i8* %766, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %762, label %770, label %771

770:                                              ; preds = %765
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %778

771:                                              ; preds = %765
  %772 = ptrtoint i8* %769 to i32
  %773 = ptrtoint i8* %761 to i32
  %774 = sub i32 1, %773
  %775 = add i32 %774, %772
  %776 = sext i32 %775 to i64
  %777 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %761, i64 %776) #7
  tail call void @halide_error(i8* %0, i8* nonnull %761) #7
  br label %778

778:                                              ; preds = %771, %770
  tail call void @free(i8* %761) #7
  br label %779

779:                                              ; preds = %757, %778
  store i8* %758, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPBXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %780 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@", i32 0, i32 0)) #7
  %781 = icmp eq i8* %780, null
  br i1 %781, label %782, label %801

782:                                              ; preds = %779
  %783 = tail call i8* @malloc(i32 1024) #7
  %784 = icmp eq i8* %783, null
  br i1 %784, label %787, label %785

785:                                              ; preds = %782
  %786 = getelementptr inbounds i8, i8* %783, i32 1023
  store i8 0, i8* %786, align 1, !tbaa !37
  br label %787

787:                                              ; preds = %785, %782
  %788 = phi i8* [ %786, %785 ], [ null, %782 ]
  %789 = tail call i8* @halide_string_to_string(i8* %783, i8* %788, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %790 = tail call i8* @halide_string_to_string(i8* %789, i8* %788, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@", i32 0, i32 0)) #7
  %791 = tail call i8* @halide_string_to_string(i8* %790, i8* %788, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %784, label %792, label %793

792:                                              ; preds = %787
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %800

793:                                              ; preds = %787
  %794 = ptrtoint i8* %791 to i32
  %795 = ptrtoint i8* %783 to i32
  %796 = sub i32 1, %795
  %797 = add i32 %796, %794
  %798 = sext i32 %797 to i64
  %799 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %783, i64 %798) #7
  tail call void @halide_error(i8* %0, i8* nonnull %783) #7
  br label %800

800:                                              ; preds = %793, %792
  tail call void @free(i8* %783) #7
  br label %801

801:                                              ; preds = %779, %800
  store i8* %780, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBufferRect@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI22IIIIPBXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %802 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@", i32 0, i32 0)) #7
  %803 = icmp eq i8* %802, null
  br i1 %803, label %804, label %823

804:                                              ; preds = %801
  %805 = tail call i8* @malloc(i32 1024) #7
  %806 = icmp eq i8* %805, null
  br i1 %806, label %809, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds i8, i8* %805, i32 1023
  store i8 0, i8* %808, align 1, !tbaa !37
  br label %809

809:                                              ; preds = %807, %804
  %810 = phi i8* [ %808, %807 ], [ null, %804 ]
  %811 = tail call i8* @halide_string_to_string(i8* %805, i8* %810, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %812 = tail call i8* @halide_string_to_string(i8* %811, i8* %810, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@", i32 0, i32 0)) #7
  %813 = tail call i8* @halide_string_to_string(i8* %812, i8* %810, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %806, label %814, label %815

814:                                              ; preds = %809
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %822

815:                                              ; preds = %809
  %816 = ptrtoint i8* %813 to i32
  %817 = ptrtoint i8* %805 to i32
  %818 = sub i32 1, %817
  %819 = add i32 %818, %816
  %820 = sext i32 %819 to i64
  %821 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %805, i64 %820) #7
  tail call void @halide_error(i8* %0, i8* nonnull %805) #7
  br label %822

822:                                              ; preds = %815, %814
  tail call void @free(i8* %805) #7
  br label %823

823:                                              ; preds = %801, %822
  store i8* %802, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@1IIIIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %824 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@", i32 0, i32 0)) #7
  %825 = icmp eq i8* %824, null
  br i1 %825, label %826, label %845

826:                                              ; preds = %823
  %827 = tail call i8* @malloc(i32 1024) #7
  %828 = icmp eq i8* %827, null
  br i1 %828, label %831, label %829

829:                                              ; preds = %826
  %830 = getelementptr inbounds i8, i8* %827, i32 1023
  store i8 0, i8* %830, align 1, !tbaa !37
  br label %831

831:                                              ; preds = %829, %826
  %832 = phi i8* [ %830, %829 ], [ null, %826 ]
  %833 = tail call i8* @halide_string_to_string(i8* %827, i8* %832, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %834 = tail call i8* @halide_string_to_string(i8* %833, i8* %832, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@", i32 0, i32 0)) #7
  %835 = tail call i8* @halide_string_to_string(i8* %834, i8* %832, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %828, label %836, label %837

836:                                              ; preds = %831
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %844

837:                                              ; preds = %831
  %838 = ptrtoint i8* %835 to i32
  %839 = ptrtoint i8* %827 to i32
  %840 = sub i32 1, %839
  %841 = add i32 %840, %838
  %842 = sext i32 %841 to i64
  %843 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %827, i64 %842) #7
  tail call void @halide_error(i8* %0, i8* nonnull %827) #7
  br label %844

844:                                              ; preds = %837, %836
  tail call void @free(i8* %827) #7
  br label %845

845:                                              ; preds = %823, %844
  store i8* %824, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPAXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %846 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@", i32 0, i32 0)) #7
  %847 = icmp eq i8* %846, null
  br i1 %847, label %848, label %867

848:                                              ; preds = %845
  %849 = tail call i8* @malloc(i32 1024) #7
  %850 = icmp eq i8* %849, null
  br i1 %850, label %853, label %851

851:                                              ; preds = %848
  %852 = getelementptr inbounds i8, i8* %849, i32 1023
  store i8 0, i8* %852, align 1, !tbaa !37
  br label %853

853:                                              ; preds = %851, %848
  %854 = phi i8* [ %852, %851 ], [ null, %848 ]
  %855 = tail call i8* @halide_string_to_string(i8* %849, i8* %854, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %856 = tail call i8* @halide_string_to_string(i8* %855, i8* %854, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@", i32 0, i32 0)) #7
  %857 = tail call i8* @halide_string_to_string(i8* %856, i8* %854, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %850, label %858, label %859

858:                                              ; preds = %853
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %866

859:                                              ; preds = %853
  %860 = ptrtoint i8* %857 to i32
  %861 = ptrtoint i8* %849 to i32
  %862 = sub i32 1, %861
  %863 = add i32 %862, %860
  %864 = sext i32 %863 to i64
  %865 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %849, i64 %864) #7
  tail call void @halide_error(i8* %0, i8* nonnull %849) #7
  br label %866

866:                                              ; preds = %859, %858
  tail call void @free(i8* %849) #7
  br label %867

867:                                              ; preds = %845, %866
  store i8* %846, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPBXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %868 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@", i32 0, i32 0)) #7
  %869 = icmp eq i8* %868, null
  br i1 %869, label %870, label %889

870:                                              ; preds = %867
  %871 = tail call i8* @malloc(i32 1024) #7
  %872 = icmp eq i8* %871, null
  br i1 %872, label %875, label %873

873:                                              ; preds = %870
  %874 = getelementptr inbounds i8, i8* %871, i32 1023
  store i8 0, i8* %874, align 1, !tbaa !37
  br label %875

875:                                              ; preds = %873, %870
  %876 = phi i8* [ %874, %873 ], [ null, %870 ]
  %877 = tail call i8* @halide_string_to_string(i8* %871, i8* %876, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %878 = tail call i8* @halide_string_to_string(i8* %877, i8* %876, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@", i32 0, i32 0)) #7
  %879 = tail call i8* @halide_string_to_string(i8* %878, i8* %876, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %872, label %880, label %881

880:                                              ; preds = %875
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %888

881:                                              ; preds = %875
  %882 = ptrtoint i8* %879 to i32
  %883 = ptrtoint i8* %871 to i32
  %884 = sub i32 1, %883
  %885 = add i32 %884, %882
  %886 = sext i32 %885 to i64
  %887 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %871, i64 %886) #7
  tail call void @halide_error(i8* %0, i8* nonnull %871) #7
  br label %888

888:                                              ; preds = %881, %880
  tail call void @free(i8* %871) #7
  br label %889

889:                                              ; preds = %867, %888
  store i8* %868, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32, i32, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @"?clEnqueueMapBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAXPAU_cl_command_queue@@PAU_cl_mem@@I_KIIIPBQAU_cl_event@@PAPAU7@PAH@ZA" to i8**), align 4, !tbaa !38
  %890 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@", i32 0, i32 0)) #7
  %891 = icmp eq i8* %890, null
  br i1 %891, label %892, label %911

892:                                              ; preds = %889
  %893 = tail call i8* @malloc(i32 1024) #7
  %894 = icmp eq i8* %893, null
  br i1 %894, label %897, label %895

895:                                              ; preds = %892
  %896 = getelementptr inbounds i8, i8* %893, i32 1023
  store i8 0, i8* %896, align 1, !tbaa !37
  br label %897

897:                                              ; preds = %895, %892
  %898 = phi i8* [ %896, %895 ], [ null, %892 ]
  %899 = tail call i8* @halide_string_to_string(i8* %893, i8* %898, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %900 = tail call i8* @halide_string_to_string(i8* %899, i8* %898, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@", i32 0, i32 0)) #7
  %901 = tail call i8* @halide_string_to_string(i8* %900, i8* %898, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %894, label %902, label %903

902:                                              ; preds = %897
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %910

903:                                              ; preds = %897
  %904 = ptrtoint i8* %901 to i32
  %905 = ptrtoint i8* %893 to i32
  %906 = sub i32 1, %905
  %907 = add i32 %906, %904
  %908 = sext i32 %907 to i64
  %909 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %893, i64 %908) #7
  tail call void @halide_error(i8* %0, i8* nonnull %893) #7
  br label %910

910:                                              ; preds = %903, %902
  tail call void @free(i8* %893) #7
  br label %911

911:                                              ; preds = %889, %910
  store i8* %890, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32*, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @"?clEnqueueMapImage@OpenCL@Internal@Runtime@Halide@@3P6GPAXPAU_cl_command_queue@@PAU_cl_mem@@I_KPBI3PAI4IPBQAU_cl_event@@PAPAU7@PAH@ZA" to i8**), align 4, !tbaa !38
  %912 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@", i32 0, i32 0)) #7
  %913 = icmp eq i8* %912, null
  br i1 %913, label %914, label %933

914:                                              ; preds = %911
  %915 = tail call i8* @malloc(i32 1024) #7
  %916 = icmp eq i8* %915, null
  br i1 %916, label %919, label %917

917:                                              ; preds = %914
  %918 = getelementptr inbounds i8, i8* %915, i32 1023
  store i8 0, i8* %918, align 1, !tbaa !37
  br label %919

919:                                              ; preds = %917, %914
  %920 = phi i8* [ %918, %917 ], [ null, %914 ]
  %921 = tail call i8* @halide_string_to_string(i8* %915, i8* %920, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %922 = tail call i8* @halide_string_to_string(i8* %921, i8* %920, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@", i32 0, i32 0)) #7
  %923 = tail call i8* @halide_string_to_string(i8* %922, i8* %920, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %916, label %924, label %925

924:                                              ; preds = %919
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %932

925:                                              ; preds = %919
  %926 = ptrtoint i8* %923 to i32
  %927 = ptrtoint i8* %915 to i32
  %928 = sub i32 1, %927
  %929 = add i32 %928, %926
  %930 = sext i32 %929 to i64
  %931 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %915, i64 %930) #7
  tail call void @halide_error(i8* %0, i8* nonnull %915) #7
  br label %932

932:                                              ; preds = %925, %924
  tail call void @free(i8* %915) #7
  br label %933

933:                                              ; preds = %911, %932
  store i8* %912, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueUnmapMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@PAXIPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  %934 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@", i32 0, i32 0)) #7
  %935 = icmp eq i8* %934, null
  br i1 %935, label %936, label %955

936:                                              ; preds = %933
  %937 = tail call i8* @malloc(i32 1024) #7
  %938 = icmp eq i8* %937, null
  br i1 %938, label %941, label %939

939:                                              ; preds = %936
  %940 = getelementptr inbounds i8, i8* %937, i32 1023
  store i8 0, i8* %940, align 1, !tbaa !37
  br label %941

941:                                              ; preds = %939, %936
  %942 = phi i8* [ %940, %939 ], [ null, %936 ]
  %943 = tail call i8* @halide_string_to_string(i8* %937, i8* %942, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i32 0, i32 0)) #7
  %944 = tail call i8* @halide_string_to_string(i8* %943, i8* %942, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@", i32 0, i32 0)) #7
  %945 = tail call i8* @halide_string_to_string(i8* %944, i8* %942, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  br i1 %938, label %946, label %947

946:                                              ; preds = %941
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %954

947:                                              ; preds = %941
  %948 = ptrtoint i8* %945 to i32
  %949 = ptrtoint i8* %937 to i32
  %950 = sub i32 1, %949
  %951 = add i32 %950, %948
  %952 = sext i32 %951 to i64
  %953 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %937, i64 %952) #7
  tail call void @halide_error(i8* %0, i8* nonnull %937) #7
  br label %954

954:                                              ; preds = %947, %946
  tail call void @free(i8* %937) #7
  br label %955

955:                                              ; preds = %933, %954
  store i8* %934, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_kernel@@IPBI22IPBQAU_cl_event@@PAPAU7@@ZA" to i8**), align 4, !tbaa !38
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %0, i32 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !37
  store i8 1, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  store atomic volatile i8 0, i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = load i8, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@IKKCGBEB@HL_OCL_PLATFORM_NAME?$AA@", i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %9, i32 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !37
  store i8 1, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0)
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %0, i32 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !37
  store i8 1, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  store atomic volatile i8 0, i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = load i8, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@PBIHOGAH@HL_OCL_DEVICE_TYPE?$AA@", i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %9, i32 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !37
  store i8 1, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0)
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %0, i32 1024) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 1023), %7 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !37
  store i8 1, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  store atomic volatile i8 0, i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !39

5:                                                ; preds = %2
  %6 = load i8, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EDLBHNBE@HL_OCL_BUILD_OPTIONS?$AA@", i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), i8* nonnull %9, i32 1024) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 1023), %11 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !37
  store i8 1, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !40
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i32 0, i32 0)
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct._cl_context** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@KAFOONGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@HOCNIAFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10, %11
  %12 = atomicrmw volatile xchg i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC", i8 1 acquire
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %11, !llvm.loop !43

14:                                               ; preds = %11
  %15 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", align 4, !tbaa !38
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = and i1 %16, %3
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call i32 @"?create_opencl_context@OpenCL@Internal@Runtime@Halide@@YAHPAXPAPAU_cl_context@@PAPAU_cl_command_queue@@@Z"(i8* %0, %struct._cl_context** nonnull @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", %struct._cl_command_queue** nonnull @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PAU_cl_command_queue@@A") #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", align 4, !tbaa !38
  br label %24

23:                                               ; preds = %18
  store atomic volatile i8 0, i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC" release, align 1
  br label %27

24:                                               ; preds = %21, %14
  %25 = phi %struct._cl_context* [ %22, %21 ], [ %15, %14 ]
  store %struct._cl_context* %25, %struct._cl_context** %1, align 4, !tbaa !38
  %26 = load %struct._cl_command_queue*, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PAU_cl_command_queue@@A", align 4, !tbaa !38
  store %struct._cl_command_queue* %26, %struct._cl_command_queue** %2, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %23, %24
  %28 = phi i32 [ 0, %24 ], [ %19, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind
define weak dso_local i32 @"?create_opencl_context@OpenCL@Internal@Runtime@Halide@@YAHPAXPAPAU_cl_context@@PAPAU_cl_command_queue@@@Z"(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct._cl_platform_id*], align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = alloca [256 x i8], align 1
  %9 = alloca [128 x %struct._cl_device_id*], align 4
  %10 = alloca i32, align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._cl_device_id*, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %17 = icmp eq %struct._cl_context** %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct._cl_context*, %struct._cl_context** %1, align 4, !tbaa !38
  %20 = icmp eq %struct._cl_context* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"??_C@_0HP@GFCJAEGO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load %struct._cl_command_queue*, %struct._cl_command_queue** %2, align 4, !tbaa !38
  %26 = icmp eq %struct._cl_command_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@BLCNEOOG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32 (i32, %struct._cl_platform_id**, i32*)*, i32 (i32, %struct._cl_platform_id**, i32*)** @"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6GHIPAPAU_cl_platform_id@@PAI@ZA", align 4, !tbaa !38
  %30 = icmp eq i32 (i32, %struct._cl_platform_id**, i32*)* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = tail call i8* @malloc(i32 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@", i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !37
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@", i32 0, i32 0)) #7
  %39 = ptrtoint i8* %38 to i32
  %40 = ptrtoint i8* %32 to i32
  %41 = add i32 %39, 1
  %42 = sub i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %43) #7
  tail call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %45

45:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #7
  br label %388

46:                                               ; preds = %28
  %47 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #9
  store i32 0, i32* %4, align 4, !tbaa !44
  %48 = bitcast [4 x %struct._cl_platform_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #9
  %49 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %49) #9
  store i32 0, i32* %6, align 4, !tbaa !44
  %50 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i32 0, i32 0
  %51 = call x86_stdcallcc i32 %29(i32 4, %struct._cl_platform_id** nonnull %50, i32* nonnull %6) #7
  store i32 %51, i32* %4, align 4, !tbaa !44
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %46
  %54 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %54) #9
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %55, align 4, !tbaa !45
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %56, align 4, !tbaa !47
  %57 = call i8* @malloc(i32 1024) #7
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %57, i8** %58, align 4, !tbaa !48
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  %60 = icmp eq i8* %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %62, align 1, !tbaa !37
  br label %63

63:                                               ; preds = %53, %61
  %64 = phi i8* [ %62, %61 ], [ null, %53 ]
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 2
  store i8* %64, i8** %65, align 4
  %66 = call i8* @halide_string_to_string(i8* %57, i8* %64, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@LMLEHJG@CL?3?5clGetPlatformIDs?5failed?3?5?$AA@", i32 0, i32 0)) #7
  store i8* %66, i8** %59, align 4, !tbaa !49
  %67 = load i32, i32* %4, align 4, !tbaa !44
  %68 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %67) #8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i8* @halide_string_to_string(i8* %66, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %74

72:                                               ; preds = %63
  %73 = call i8* @halide_string_to_string(i8* %66, i8* %64, i8* nonnull %68) #7
  br label %74

74:                                               ; preds = %70, %72
  %75 = phi i8* [ %73, %72 ], [ %71, %70 ]
  %76 = load i8*, i8** %65, align 4, !tbaa !50
  %77 = call i8* @halide_string_to_string(i8* %75, i8* %76, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7
  %78 = load i32, i32* %4, align 4, !tbaa !44
  %79 = sext i32 %78 to i64
  %80 = call i8* @halide_int64_to_string(i8* %77, i8* %76, i64 %79, i32 1) #7
  %81 = load i8*, i8** %58, align 4, !tbaa !48
  %82 = icmp eq i8* %81, null
  %83 = load i8*, i8** %55, align 4, !tbaa !45
  br i1 %82, label %84, label %85

84:                                               ; preds = %74
  call void @halide_error(i8* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %94

85:                                               ; preds = %74
  %86 = ptrtoint i8* %80 to i32
  %87 = ptrtoint i8* %81 to i32
  %88 = add i32 %86, 1
  %89 = sub i32 %88, %87
  %90 = sext i32 %89 to i64
  %91 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %83, i8* nonnull %81, i64 %90) #7
  %92 = load i8*, i8** %58, align 4, !tbaa !48
  %93 = load i8*, i8** %55, align 4, !tbaa !45
  call void @halide_error(i8* %93, i8* %92) #7
  br label %94

94:                                               ; preds = %85, %84
  %95 = load i8, i8* %56, align 4, !tbaa !47, !range !42
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %58, align 4, !tbaa !48
  call void @free(i8* %98) #7
  br label %99

99:                                               ; preds = %94, %97
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %54) #9
  %100 = load i32, i32* %4, align 4, !tbaa !44
  br label %386

101:                                              ; preds = %46
  %102 = call i8* @halide_opencl_get_platform_name(i8* %0) #8
  %103 = icmp eq i8* %102, null
  %104 = load i32, i32* %6, align 4, !tbaa !44
  %105 = icmp eq i32 %104, 0
  br i1 %103, label %126, label %106

106:                                              ; preds = %101
  br i1 %105, label %131, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  br label %109

109:                                              ; preds = %107, %122
  %110 = phi i32 [ 0, %107 ], [ %123, %122 ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %108) #9
  %111 = load i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)** @"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %112 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i32 0, i32 %110
  %113 = load %struct._cl_platform_id*, %struct._cl_platform_id** %112, align 4, !tbaa !38
  %114 = call x86_stdcallcc i32 %111(%struct._cl_platform_id* %113, i32 2306, i32 256, i8* nonnull %108, i32* null) #7
  store i32 %114, i32* %4, align 4, !tbaa !44
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = call i8* @strstr(i8* nonnull %108, i8* nonnull %102) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i32 0, i32 %110
  %121 = load %struct._cl_platform_id*, %struct._cl_platform_id** %120, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %108) #9
  br label %128

122:                                              ; preds = %109, %116
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %108) #9
  %123 = add nuw i32 %110, 1
  %124 = load i32, i32* %6, align 4, !tbaa !44
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %109, label %131, !llvm.loop !51

126:                                              ; preds = %101
  %127 = load %struct._cl_platform_id*, %struct._cl_platform_id** %50, align 4
  br i1 %105, label %131, label %128

128:                                              ; preds = %126, %119
  %129 = phi %struct._cl_platform_id* [ %121, %119 ], [ %127, %126 ]
  %130 = icmp eq %struct._cl_platform_id* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %122, %106, %126, %128
  %132 = call i8* @malloc(i32 1024) #7
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i8* @halide_string_to_string(i8* %132, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %145

136:                                              ; preds = %131
  %137 = getelementptr inbounds i8, i8* %132, i32 1023
  store i8 0, i8* %137, align 1, !tbaa !37
  %138 = call i8* @halide_string_to_string(i8* nonnull %132, i8* nonnull %137, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@", i32 0, i32 0)) #7
  %139 = ptrtoint i8* %138 to i32
  %140 = ptrtoint i8* %132 to i32
  %141 = add i32 %139, 1
  %142 = sub i32 %141, %140
  %143 = sext i32 %142 to i64
  %144 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %132, i64 %143) #7
  call void @halide_error(i8* %0, i8* nonnull %132) #7
  br label %145

145:                                              ; preds = %136, %134
  call void @free(i8* %132) #7
  br label %386

146:                                              ; preds = %128
  %147 = call i8* @halide_opencl_get_device_type(i8* %0) #8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %146
  %150 = load i8, i8* %147, align 1, !tbaa !37
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %149
  %153 = call i8* @strstr(i8* nonnull %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03PBJBJNON@cpu?$AA@", i32 0, i32 0)) #7
  %154 = icmp eq i8* %153, null
  %155 = select i1 %154, i64 0, i64 2
  %156 = call i8* @strstr(i8* nonnull %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03HOPDAKLK@gpu?$AA@", i32 0, i32 0)) #7
  %157 = icmp eq i8* %156, null
  %158 = or i64 %155, 4
  %159 = select i1 %157, i64 %155, i64 %158
  %160 = call i8* @strstr(i8* nonnull %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03FJGAPNJI@acc?$AA@", i32 0, i32 0)) #7
  %161 = icmp eq i8* %160, null
  %162 = or i64 %159, 8
  br i1 %161, label %163, label %166

163:                                              ; preds = %152
  %164 = icmp eq i64 %159, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %146, %149, %163
  br label %166

166:                                              ; preds = %152, %163, %165
  %167 = phi i64 [ 4294967295, %165 ], [ %159, %163 ], [ %162, %152 ]
  %168 = bitcast [128 x %struct._cl_device_id*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %168) #9
  %169 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %169) #9
  store i32 0, i32* %10, align 4, !tbaa !44
  %170 = load i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)*, i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_platform_id@@_KIPAPAU_cl_device_id@@PAI@ZA", align 4, !tbaa !38
  %171 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 0
  %172 = call x86_stdcallcc i32 %170(%struct._cl_platform_id* nonnull %129, i64 %167, i32 128, %struct._cl_device_id** nonnull %171, i32* nonnull %10) #7
  store i32 %172, i32* %4, align 4, !tbaa !44
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %216, label %174

174:                                              ; preds = %166
  %175 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %175) #9
  %176 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %176, align 4, !tbaa !45
  %177 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %177, align 4, !tbaa !47
  %178 = call i8* @malloc(i32 1024) #7
  %179 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %178, i8** %179, align 4, !tbaa !48
  %180 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %178, i8** %180, align 4, !tbaa !49
  %181 = icmp eq i8* %178, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds i8, i8* %178, i32 1023
  store i8 0, i8* %183, align 1, !tbaa !37
  br label %184

184:                                              ; preds = %174, %182
  %185 = phi i8* [ %183, %182 ], [ null, %174 ]
  %186 = call i8* @halide_string_to_string(i8* %178, i8* %185, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@HCBABLID@CL?3?5clGetDeviceIDs?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %187 = load i32, i32* %4, align 4, !tbaa !44
  %188 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %187) #8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i8* @halide_string_to_string(i8* %186, i8* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %194

192:                                              ; preds = %184
  %193 = call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull %188) #7
  br label %194

194:                                              ; preds = %190, %192
  %195 = phi i8* [ %193, %192 ], [ %191, %190 ]
  %196 = load i8*, i8** %179, align 4, !tbaa !48
  %197 = icmp eq i8* %196, null
  %198 = load i8*, i8** %176, align 4, !tbaa !45
  br i1 %197, label %199, label %200

199:                                              ; preds = %194
  call void @halide_error(i8* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %209

200:                                              ; preds = %194
  %201 = ptrtoint i8* %195 to i32
  %202 = ptrtoint i8* %196 to i32
  %203 = sub i32 1, %202
  %204 = add i32 %203, %201
  %205 = sext i32 %204 to i64
  %206 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %198, i8* nonnull %196, i64 %205) #7
  %207 = load i8*, i8** %179, align 4, !tbaa !48
  %208 = load i8*, i8** %176, align 4, !tbaa !45
  call void @halide_error(i8* %208, i8* %207) #7
  br label %209

209:                                              ; preds = %200, %199
  %210 = load i8, i8* %177, align 4, !tbaa !47, !range !42
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = load i8*, i8** %179, align 4, !tbaa !48
  call void @free(i8* %213) #7
  br label %214

214:                                              ; preds = %209, %212
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %175) #9
  %215 = load i32, i32* %4, align 4, !tbaa !44
  br label %384

216:                                              ; preds = %166
  %217 = call i32 @halide_get_gpu_device(i8* %0) #7
  %218 = icmp eq i32 %217, -1
  %219 = load i32, i32* %10, align 4
  %220 = icmp eq i32 %219, 1
  %221 = and i1 %218, %220
  %222 = xor i1 %218, true
  %223 = or i1 %220, %222
  %224 = select i1 %221, i32 0, i32 %217
  br i1 %223, label %247, label %225

225:                                              ; preds = %216
  %226 = icmp eq i32 %219, 0
  br i1 %226, label %253, label %227

227:                                              ; preds = %225
  %228 = bitcast i32* %12 to i8*
  br label %229

229:                                              ; preds = %227, %229
  %230 = phi i32 [ 0, %227 ], [ %244, %229 ]
  %231 = phi i32 [ 0, %227 ], [ %243, %229 ]
  %232 = phi i32 [ -1, %227 ], [ %242, %229 ]
  %233 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 %230
  %234 = load %struct._cl_device_id*, %struct._cl_device_id** %233, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %228) #9
  store i32 0, i32* %12, align 4, !tbaa !44
  %235 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %236 = call x86_stdcallcc i32 %235(%struct._cl_device_id* %234, i32 4098, i32 4, i8* nonnull %228, i32* null) #7
  store i32 %236, i32* %4, align 4, !tbaa !44
  %237 = icmp eq i32 %236, 0
  %238 = load i32, i32* %12, align 4
  %239 = icmp ult i32 %238, %231
  %240 = select i1 %239, i32 %232, i32 %230
  %241 = select i1 %239, i32 %231, i32 %238
  %242 = select i1 %237, i32 %240, i32 %232
  %243 = select i1 %237, i32 %241, i32 %231
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %228) #9
  %244 = add nuw i32 %230, 1
  %245 = load i32, i32* %10, align 4, !tbaa !44
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %229, label %247, !llvm.loop !52

247:                                              ; preds = %229, %216
  %248 = phi i32 [ %219, %216 ], [ %245, %229 ]
  %249 = phi i32 [ %224, %216 ], [ %242, %229 ]
  %250 = icmp sgt i32 %249, -1
  %251 = icmp slt i32 %249, %248
  %252 = and i1 %250, %251
  br i1 %252, label %273, label %253

253:                                              ; preds = %225, %247
  %254 = phi i32 [ %249, %247 ], [ -1, %225 ]
  %255 = call i8* @malloc(i32 1024) #7
  %256 = icmp eq i8* %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds i8, i8* %255, i32 1023
  store i8 0, i8* %258, align 1, !tbaa !37
  br label %259

259:                                              ; preds = %253, %257
  %260 = phi i8* [ %258, %257 ], [ null, %253 ]
  %261 = call i8* @halide_string_to_string(i8* %255, i8* %260, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@KPNMBBFB@CL?3?5Failed?5to?5get?5device?3?5?$AA@", i32 0, i32 0)) #7
  %262 = sext i32 %254 to i64
  %263 = call i8* @halide_int64_to_string(i8* %261, i8* %260, i64 %262, i32 1) #7
  br i1 %256, label %264, label %265

264:                                              ; preds = %259
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %272

265:                                              ; preds = %259
  %266 = ptrtoint i8* %263 to i32
  %267 = ptrtoint i8* %255 to i32
  %268 = add i32 %266, 1
  %269 = sub i32 %268, %267
  %270 = sext i32 %269 to i64
  %271 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %255, i64 %270) #7
  call void @halide_error(i8* %0, i8* nonnull %255) #7
  br label %272

272:                                              ; preds = %265, %264
  call void @free(i8* %255) #7
  br label %384

273:                                              ; preds = %247
  %274 = bitcast %struct._cl_device_id** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %274) #9
  %275 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 %249
  %276 = load %struct._cl_device_id*, %struct._cl_device_id** %275, align 4, !tbaa !38
  store %struct._cl_device_id* %276, %struct._cl_device_id** %13, align 4, !tbaa !38
  %277 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %277) #9
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 0
  store i32 4228, i32* %278, align 4, !tbaa !44
  %279 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 1
  %280 = ptrtoint %struct._cl_platform_id* %129 to i32
  store i32 %280, i32* %279, align 4, !tbaa !44
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 2
  store i32 0, i32* %281, align 4, !tbaa !44
  %282 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %283 = call x86_stdcallcc %struct._cl_context* %282(i32* nonnull %278, i32 1, %struct._cl_device_id** nonnull %13, void (i8*, i8*, i32, i8*)* null, i8* null, i32* nonnull %4) #7
  store %struct._cl_context* %283, %struct._cl_context** %1, align 4, !tbaa !38
  %284 = load i32, i32* %4, align 4, !tbaa !44
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %334, label %286

286:                                              ; preds = %273
  %287 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %284) #8
  %288 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %288) #9
  %289 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 3
  store i8* %0, i8** %289, align 4, !tbaa !45
  %290 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 4
  store i8 1, i8* %290, align 4, !tbaa !47
  %291 = call i8* @malloc(i32 1024) #7
  %292 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 0
  store i8* %291, i8** %292, align 4, !tbaa !48
  %293 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 1
  %294 = icmp eq i8* %291, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %286
  %296 = getelementptr inbounds i8, i8* %291, i32 1023
  store i8 0, i8* %296, align 1, !tbaa !37
  br label %297

297:                                              ; preds = %286, %295
  %298 = phi i8* [ %296, %295 ], [ null, %286 ]
  %299 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 2
  store i8* %298, i8** %299, align 4
  %300 = call i8* @halide_string_to_string(i8* %291, i8* %298, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@DAIECECO@CL?3?5clCreateContext?5failed?3?5?$AA@", i32 0, i32 0)) #7
  store i8* %300, i8** %293, align 4, !tbaa !49
  %301 = load i32, i32* %4, align 4, !tbaa !44
  %302 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %301) #8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %297
  %305 = call i8* @halide_string_to_string(i8* %300, i8* %298, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %308

306:                                              ; preds = %297
  %307 = call i8* @halide_string_to_string(i8* %300, i8* %298, i8* nonnull %302) #7
  br label %308

308:                                              ; preds = %304, %306
  %309 = phi i8* [ %307, %306 ], [ %305, %304 ]
  %310 = load i8*, i8** %299, align 4, !tbaa !50
  %311 = call i8* @halide_string_to_string(i8* %309, i8* %310, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01JLIPDDHJ@?3?$AA@", i32 0, i32 0)) #7
  %312 = load i32, i32* %4, align 4, !tbaa !44
  %313 = sext i32 %312 to i64
  %314 = call i8* @halide_int64_to_string(i8* %311, i8* %310, i64 %313, i32 1) #7
  %315 = load i8*, i8** %292, align 4, !tbaa !48
  %316 = icmp eq i8* %315, null
  %317 = load i8*, i8** %289, align 4, !tbaa !45
  br i1 %316, label %318, label %319

318:                                              ; preds = %308
  call void @halide_error(i8* %317, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %328

319:                                              ; preds = %308
  %320 = ptrtoint i8* %314 to i32
  %321 = ptrtoint i8* %315 to i32
  %322 = add i32 %320, 1
  %323 = sub i32 %322, %321
  %324 = sext i32 %323 to i64
  %325 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %317, i8* nonnull %315, i64 %324) #7
  %326 = load i8*, i8** %292, align 4, !tbaa !48
  %327 = load i8*, i8** %289, align 4, !tbaa !45
  call void @halide_error(i8* %327, i8* %326) #7
  br label %328

328:                                              ; preds = %319, %318
  %329 = load i8, i8* %290, align 4, !tbaa !47, !range !42
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = load i8*, i8** %292, align 4, !tbaa !48
  call void @free(i8* %332) #7
  br label %333

333:                                              ; preds = %328, %331
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %288) #9
  br label %382

334:                                              ; preds = %273
  %335 = load %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)*, %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_command_queue@@PAU_cl_context@@PAU_cl_device_id@@_KPAH@ZA", align 4, !tbaa !38
  %336 = load %struct._cl_device_id*, %struct._cl_device_id** %13, align 4, !tbaa !38
  %337 = call x86_stdcallcc %struct._cl_command_queue* %335(%struct._cl_context* %283, %struct._cl_device_id* %336, i64 0, i32* nonnull %4) #7
  store %struct._cl_command_queue* %337, %struct._cl_command_queue** %2, align 4, !tbaa !38
  %338 = load i32, i32* %4, align 4, !tbaa !44
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %382, label %340

340:                                              ; preds = %334
  %341 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %338) #8
  %342 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %342) #9
  %343 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 3
  store i8* %0, i8** %343, align 4, !tbaa !45
  %344 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 4
  store i8 1, i8* %344, align 4, !tbaa !47
  %345 = call i8* @malloc(i32 1024) #7
  %346 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 0
  store i8* %345, i8** %346, align 4, !tbaa !48
  %347 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 1
  store i8* %345, i8** %347, align 4, !tbaa !49
  %348 = icmp eq i8* %345, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %340
  %350 = getelementptr inbounds i8, i8* %345, i32 1023
  store i8 0, i8* %350, align 1, !tbaa !37
  br label %351

351:                                              ; preds = %340, %349
  %352 = phi i8* [ %350, %349 ], [ null, %340 ]
  %353 = call i8* @halide_string_to_string(i8* %345, i8* %352, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@OJGJMEDK@CL?3?5clCreateCommandQueue?5failed?3@", i32 0, i32 0)) #7
  %354 = load i32, i32* %4, align 4, !tbaa !44
  %355 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %354) #8
  %356 = icmp eq i8* %355, null
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = call i8* @halide_string_to_string(i8* %353, i8* %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %361

359:                                              ; preds = %351
  %360 = call i8* @halide_string_to_string(i8* %353, i8* %352, i8* nonnull %355) #7
  br label %361

361:                                              ; preds = %357, %359
  %362 = phi i8* [ %360, %359 ], [ %358, %357 ]
  %363 = load i8*, i8** %346, align 4, !tbaa !48
  %364 = icmp eq i8* %363, null
  %365 = load i8*, i8** %343, align 4, !tbaa !45
  br i1 %364, label %366, label %367

366:                                              ; preds = %361
  call void @halide_error(i8* %365, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %376

367:                                              ; preds = %361
  %368 = ptrtoint i8* %362 to i32
  %369 = ptrtoint i8* %363 to i32
  %370 = sub i32 1, %369
  %371 = add i32 %370, %368
  %372 = sext i32 %371 to i64
  %373 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %365, i8* nonnull %363, i64 %372) #7
  %374 = load i8*, i8** %346, align 4, !tbaa !48
  %375 = load i8*, i8** %343, align 4, !tbaa !45
  call void @halide_error(i8* %375, i8* %374) #7
  br label %376

376:                                              ; preds = %367, %366
  %377 = load i8, i8* %344, align 4, !tbaa !47, !range !42
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %376
  %380 = load i8*, i8** %346, align 4, !tbaa !48
  call void @free(i8* %380) #7
  br label %381

381:                                              ; preds = %376, %379
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %342) #9
  br label %382

382:                                              ; preds = %334, %381, %333
  %383 = load i32, i32* %4, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %277) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %274) #9
  br label %384

384:                                              ; preds = %272, %382, %214
  %385 = phi i32 [ %215, %214 ], [ -1, %272 ], [ %383, %382 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #9
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %168) #9
  br label %386

386:                                              ; preds = %145, %384, %99
  %387 = phi i32 [ %100, %99 ], [ -32, %145 ], [ %385, %384 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %49) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #9
  br label %388

388:                                              ; preds = %386, %45
  %389 = phi i32 [ -1, %45 ], [ %387, %386 ]
  ret i32 %389
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_release_cl_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC" release, align 1
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* %1, i32 %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %82, label %9

9:                                                ; preds = %3
  %10 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA", align 4, !tbaa !38
  %11 = icmp eq i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* %10, null
  %12 = trunc i64 %7 to i32
  br i1 %11, label %13, label %17

13:                                               ; preds = %9
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #8
  %14 = load i64, i64* %6, align 8, !tbaa !22
  %15 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA", align 4, !tbaa !38
  %16 = trunc i64 %14 to i32
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* [ %15, %13 ], [ %10, %9 ]
  %19 = phi i32 [ %16, %13 ], [ %12, %9 ]
  %20 = inttoptr i32 %19 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %20, i32 0, i32 1
  %22 = load %struct._cl_mem*, %struct._cl_mem** %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %20, i32 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !55
  %25 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #9
  %26 = call x86_stdcallcc i32 %18(%struct._cl_mem* %22, i32 4354, i32 4, i8* nonnull %25, i32* null) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %17
  %29 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %29) #9
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %30, align 4, !tbaa !45
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %31, align 4, !tbaa !47
  %32 = call i8* @malloc(i32 1024) #7
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %32, i8** %33, align 4, !tbaa !48
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  %35 = icmp eq i8* %32, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !37
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i8* [ %37, %36 ], [ null, %28 ]
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2
  store i8* %39, i8** %40, align 4
  %41 = call i8* @halide_string_to_string(i8* %32, i8* %39, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@KGALDEEM@CL?3?5Bad?5device?5pointer?5?$AA@", i32 0, i32 0)) #7
  store i8* %41, i8** %34, align 4, !tbaa !49
  %42 = bitcast %struct._cl_mem* %22 to i8*
  %43 = call i8* @halide_pointer_to_string(i8* %41, i8* %39, i8* %42) #7
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %39, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@", i32 0, i32 0)) #7
  %45 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %26) #8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i8* @halide_string_to_string(i8* %44, i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %51

49:                                               ; preds = %38
  %50 = call i8* @halide_string_to_string(i8* %44, i8* %39, i8* nonnull %45) #7
  br label %51

51:                                               ; preds = %47, %49
  %52 = phi i8* [ %50, %49 ], [ %48, %47 ]
  %53 = load i8*, i8** %33, align 4, !tbaa !48
  %54 = icmp eq i8* %53, null
  %55 = load i8*, i8** %30, align 4, !tbaa !45
  br i1 %54, label %56, label %57

56:                                               ; preds = %51
  call void @halide_error(i8* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %66

57:                                               ; preds = %51
  %58 = ptrtoint i8* %52 to i32
  %59 = ptrtoint i8* %53 to i32
  %60 = sub i32 1, %59
  %61 = add i32 %60, %58
  %62 = sext i32 %61 to i64
  %63 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %55, i8* nonnull %53, i64 %62) #7
  %64 = load i8*, i8** %33, align 4, !tbaa !48
  %65 = load i8*, i8** %30, align 4, !tbaa !45
  call void @halide_error(i8* %65, i8* %64) #7
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i8, i8* %31, align 4, !tbaa !47, !range !42
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %33, align 4, !tbaa !48
  call void @free(i8* %70) #7
  br label %71

71:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %29) #9
  br label %81

72:                                               ; preds = %17
  %73 = icmp eq i32 %2, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %72
  %75 = zext i32 %2 to i64
  %76 = load i32, i32* %4, align 4, !tbaa !44
  %77 = zext i32 %76 to i64
  %78 = add i64 %24, %75
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @"??_C@_0KJ@OLKHKEEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %81

81:                                               ; preds = %72, %80, %74, %71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #9
  br label %82

82:                                               ; preds = %3, %81
  %83 = phi i1 [ %27, %81 ], [ true, %3 ]
  ret i1 %83
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %0) local_unnamed_addr #5 {
  %2 = add i32 %0, 68
  %3 = icmp ult i32 %2, 69
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [69 x i8*], [69 x i8*]* @"switch.table.?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z", i32 0, i32 %2
  %6 = load i8*, i8** %5, align 4
  ret i8* %6

7:                                                ; preds = %1
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i32 0, i32 0)
}

declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local %struct._cl_program* @"?compile_kernel@OpenCL@Internal@Runtime@Halide@@YAPAU_cl_program@@PAXPAU_cl_context@@PBDH@Z"(i8* %0, %struct._cl_context* %1, i8* %2, i32 %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._cl_device_id*, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %8 = alloca [1 x %struct._cl_device_id*], align 4
  %9 = alloca i64, align 8
  %10 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %11 = alloca i32, align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %13 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 4
  %14 = alloca [1 x i8*], align 4
  %15 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", align 4
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #9
  store i32 0, i32* %5, align 4, !tbaa !44
  %18 = bitcast %struct._cl_device_id** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #9
  %19 = load i32 (%struct._cl_context*, i32, i32, i8*, i32*)*, i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@IIPAXPAI@ZA", align 4, !tbaa !38
  %20 = call x86_stdcallcc i32 %19(%struct._cl_context* %1, i32 4225, i32 4, i8* nonnull %18, i32* null) #7
  store i32 %20, i32* %5, align 4, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %4
  %23 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %23) #9
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %24, align 4, !tbaa !45
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %25, align 4, !tbaa !47
  %26 = call i8* @malloc(i32 1024) #7
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %26, i8** %27, align 4, !tbaa !48
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %26, i8** %28, align 4, !tbaa !49
  %29 = icmp eq i8* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !37
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i8* [ %31, %30 ], [ null, %22 ]
  %34 = call i8* @halide_string_to_string(i8* %26, i8* %33, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@LKEIDCIO@CL?3?5clGetContextInfo?$CICL_CONTEXT_@", i32 0, i32 0)) #7
  %35 = load i32, i32* %5, align 4, !tbaa !44
  %36 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %35) #8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %42

40:                                               ; preds = %32
  %41 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull %36) #7
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %27, align 4, !tbaa !48
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %24, align 4, !tbaa !45
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %57

48:                                               ; preds = %42
  %49 = ptrtoint i8* %43 to i32
  %50 = ptrtoint i8* %44 to i32
  %51 = sub i32 1, %50
  %52 = add i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %53) #7
  %55 = load i8*, i8** %27, align 4, !tbaa !48
  %56 = load i8*, i8** %24, align 4, !tbaa !45
  call void @halide_error(i8* %56, i8* %55) #7
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i8, i8* %25, align 4, !tbaa !47, !range !42
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %27, align 4, !tbaa !48
  call void @free(i8* %61) #7
  br label %62

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %23) #9
  br label %353

63:                                               ; preds = %4
  %64 = bitcast [1 x %struct._cl_device_id*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #9
  %65 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %8, i32 0, i32 0
  %66 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !38
  store %struct._cl_device_id* %66, %struct._cl_device_id** %65, align 4, !tbaa !38
  %67 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #9
  store i64 0, i64* %9, align 8, !tbaa !3
  %68 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %69 = call x86_stdcallcc i32 %68(%struct._cl_device_id* %66, i32 4128, i32 8, i8* nonnull %67, i32* null) #7
  store i32 %69, i32* %5, align 4, !tbaa !44
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %63
  %72 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %72) #9
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 3
  store i8* %0, i8** %73, align 4, !tbaa !45
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 4
  store i8 1, i8* %74, align 4, !tbaa !47
  %75 = call i8* @malloc(i32 1024) #7
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 0
  store i8* %75, i8** %76, align 4, !tbaa !48
  %77 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 1
  store i8* %75, i8** %77, align 4, !tbaa !49
  %78 = icmp eq i8* %75, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %80, align 1, !tbaa !37
  br label %81

81:                                               ; preds = %71, %79
  %82 = phi i8* [ %80, %79 ], [ null, %71 ]
  %83 = call i8* @halide_string_to_string(i8* %75, i8* %82, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @"??_C@_0EC@BCLNDNGH@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@", i32 0, i32 0)) #7
  %84 = load i32, i32* %5, align 4, !tbaa !44
  %85 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %84) #8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i8* @halide_string_to_string(i8* %83, i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %91

89:                                               ; preds = %81
  %90 = call i8* @halide_string_to_string(i8* %83, i8* %82, i8* nonnull %85) #7
  br label %91

91:                                               ; preds = %87, %89
  %92 = phi i8* [ %90, %89 ], [ %88, %87 ]
  %93 = load i8*, i8** %76, align 4, !tbaa !48
  %94 = icmp eq i8* %93, null
  %95 = load i8*, i8** %73, align 4, !tbaa !45
  br i1 %94, label %96, label %97

96:                                               ; preds = %91
  call void @halide_error(i8* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %106

97:                                               ; preds = %91
  %98 = ptrtoint i8* %92 to i32
  %99 = ptrtoint i8* %93 to i32
  %100 = sub i32 1, %99
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %95, i8* nonnull %93, i64 %102) #7
  %104 = load i8*, i8** %76, align 4, !tbaa !48
  %105 = load i8*, i8** %73, align 4, !tbaa !45
  call void @halide_error(i8* %105, i8* %104) #7
  br label %106

106:                                              ; preds = %97, %96
  %107 = load i8, i8* %74, align 4, !tbaa !47, !range !42
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %76, align 4, !tbaa !48
  call void @free(i8* %110) #7
  br label %111

111:                                              ; preds = %106, %109
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %72) #9
  br label %351

112:                                              ; preds = %63
  %113 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %113) #9
  store i32 0, i32* %11, align 4, !tbaa !44
  %114 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %115 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !38
  %116 = call x86_stdcallcc i32 %114(%struct._cl_device_id* %115, i32 4129, i32 4, i8* nonnull %113, i32* null) #7
  store i32 %116, i32* %5, align 4, !tbaa !44
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %159, label %118

118:                                              ; preds = %112
  %119 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %119) #9
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 3
  store i8* %0, i8** %120, align 4, !tbaa !45
  %121 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 4
  store i8 1, i8* %121, align 4, !tbaa !47
  %122 = call i8* @malloc(i32 1024) #7
  %123 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 0
  store i8* %122, i8** %123, align 4, !tbaa !48
  %124 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 1
  store i8* %122, i8** %124, align 4, !tbaa !49
  %125 = icmp eq i8* %122, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds i8, i8* %122, i32 1023
  store i8 0, i8* %127, align 1, !tbaa !37
  br label %128

128:                                              ; preds = %118, %126
  %129 = phi i8* [ %127, %126 ], [ null, %118 ]
  %130 = call i8* @halide_string_to_string(i8* %122, i8* %129, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @"??_C@_0DL@MAEDFEFL@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@", i32 0, i32 0)) #7
  %131 = load i32, i32* %5, align 4, !tbaa !44
  %132 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %131) #8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i8* @halide_string_to_string(i8* %130, i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %138

136:                                              ; preds = %128
  %137 = call i8* @halide_string_to_string(i8* %130, i8* %129, i8* nonnull %132) #7
  br label %138

138:                                              ; preds = %134, %136
  %139 = phi i8* [ %137, %136 ], [ %135, %134 ]
  %140 = load i8*, i8** %123, align 4, !tbaa !48
  %141 = icmp eq i8* %140, null
  %142 = load i8*, i8** %120, align 4, !tbaa !45
  br i1 %141, label %143, label %144

143:                                              ; preds = %138
  call void @halide_error(i8* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %153

144:                                              ; preds = %138
  %145 = ptrtoint i8* %139 to i32
  %146 = ptrtoint i8* %140 to i32
  %147 = sub i32 1, %146
  %148 = add i32 %147, %145
  %149 = sext i32 %148 to i64
  %150 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %142, i8* nonnull %140, i64 %149) #7
  %151 = load i8*, i8** %123, align 4, !tbaa !48
  %152 = load i8*, i8** %120, align 4, !tbaa !45
  call void @halide_error(i8* %152, i8* %151) #7
  br label %153

153:                                              ; preds = %144, %143
  %154 = load i8, i8* %121, align 4, !tbaa !47, !range !42
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %123, align 4, !tbaa !48
  call void @free(i8* %157) #7
  br label %158

158:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %119) #9
  br label %349

159:                                              ; preds = %112
  %160 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %160) #9
  %161 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 3
  store i8* %0, i8** %161, align 4, !tbaa !56
  %162 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 4
  store i8 1, i8* %162, align 4, !tbaa !58
  %163 = call i8* @malloc(i32 1024) #7
  %164 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 0
  store i8* %163, i8** %164, align 4, !tbaa !59
  %165 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 1
  store i8* %163, i8** %165, align 4, !tbaa !60
  %166 = icmp eq i8* %163, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds i8, i8* %163, i32 1023
  store i8 0, i8* %168, align 1, !tbaa !37
  br label %169

169:                                              ; preds = %159, %167
  %170 = phi i8* [ %168, %167 ], [ null, %159 ]
  %171 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 2
  store i8* %170, i8** %171, align 4
  %172 = call i8* @halide_string_to_string(i8* %163, i8* %170, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@JFGEECJA@?9D?5MAX_CONSTANT_BUFFER_SIZE?$DN?$AA@", i32 0, i32 0)) #7
  store i8* %172, i8** %165, align 4, !tbaa !60
  %173 = load i64, i64* %9, align 8, !tbaa !3
  %174 = call i8* @halide_uint64_to_string(i8* %172, i8* %170, i64 %173, i32 1) #7
  store i8* %174, i8** %165, align 4, !tbaa !60
  %175 = call i8* @halide_string_to_string(i8* %174, i8* %170, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@CDNOOPCE@?5?9D?5MAX_CONSTANT_ARGS?$DN?$AA@", i32 0, i32 0)) #7
  store i8* %175, i8** %165, align 4, !tbaa !60
  %176 = load i32, i32* %11, align 4, !tbaa !44
  %177 = zext i32 %176 to i64
  %178 = call i8* @halide_uint64_to_string(i8* %175, i8* %170, i64 %177, i32 1) #7
  store i8* %178, i8** %165, align 4, !tbaa !60
  %179 = call i8* @halide_opencl_get_build_options(i8* %0) #8
  %180 = call i8* @halide_string_to_string(i8* %178, i8* %170, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7
  store i8* %180, i8** %165, align 4, !tbaa !60
  %181 = icmp eq i8* %179, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %169
  %183 = call i8* @halide_string_to_string(i8* %180, i8* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %186

184:                                              ; preds = %169
  %185 = call i8* @halide_string_to_string(i8* %180, i8* %170, i8* nonnull %179) #7
  br label %186

186:                                              ; preds = %182, %184
  %187 = phi i8* [ %185, %184 ], [ %183, %182 ]
  store i8* %187, i8** %165, align 4, !tbaa !60
  %188 = bitcast [1 x i8*]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %188) #9
  %189 = getelementptr inbounds [1 x i8*], [1 x i8*]* %14, i32 0, i32 0
  store i8* %2, i8** %189, align 4, !tbaa !38
  %190 = load %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)*, %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)** @"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_program@@PAU_cl_context@@IPAPBDPBIPAH@ZA", align 4, !tbaa !38
  %191 = call x86_stdcallcc %struct._cl_program* %190(%struct._cl_context* %1, i32 1, i8** nonnull %189, i32* null, i32* nonnull %5) #7
  %192 = load i32, i32* %5, align 4, !tbaa !44
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %236, label %194

194:                                              ; preds = %186
  %195 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %192) #8
  %196 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %196) #9
  %197 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 3
  store i8* %0, i8** %197, align 4, !tbaa !45
  %198 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 4
  store i8 1, i8* %198, align 4, !tbaa !47
  %199 = call i8* @malloc(i32 1024) #7
  %200 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 0
  store i8* %199, i8** %200, align 4, !tbaa !48
  %201 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 1
  store i8* %199, i8** %201, align 4, !tbaa !49
  %202 = icmp eq i8* %199, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %194
  %204 = getelementptr inbounds i8, i8* %199, i32 1023
  store i8 0, i8* %204, align 1, !tbaa !37
  br label %205

205:                                              ; preds = %194, %203
  %206 = phi i8* [ %204, %203 ], [ null, %194 ]
  %207 = call i8* @halide_string_to_string(i8* %199, i8* %206, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @"??_C@_0CH@CLCJIFCI@CL?3?5clCreateProgramWithSource?5fa@", i32 0, i32 0)) #7
  %208 = load i32, i32* %5, align 4, !tbaa !44
  %209 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %208) #8
  %210 = icmp eq i8* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = call i8* @halide_string_to_string(i8* %207, i8* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %215

213:                                              ; preds = %205
  %214 = call i8* @halide_string_to_string(i8* %207, i8* %206, i8* nonnull %209) #7
  br label %215

215:                                              ; preds = %211, %213
  %216 = phi i8* [ %214, %213 ], [ %212, %211 ]
  %217 = load i8*, i8** %200, align 4, !tbaa !48
  %218 = icmp eq i8* %217, null
  %219 = load i8*, i8** %197, align 4, !tbaa !45
  br i1 %218, label %220, label %221

220:                                              ; preds = %215
  call void @halide_error(i8* %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %230

221:                                              ; preds = %215
  %222 = ptrtoint i8* %216 to i32
  %223 = ptrtoint i8* %217 to i32
  %224 = sub i32 1, %223
  %225 = add i32 %224, %222
  %226 = sext i32 %225 to i64
  %227 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %219, i8* nonnull %217, i64 %226) #7
  %228 = load i8*, i8** %200, align 4, !tbaa !48
  %229 = load i8*, i8** %197, align 4, !tbaa !45
  call void @halide_error(i8* %229, i8* %228) #7
  br label %230

230:                                              ; preds = %221, %220
  %231 = load i8, i8* %198, align 4, !tbaa !47, !range !42
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = load i8*, i8** %200, align 4, !tbaa !48
  call void @free(i8* %234) #7
  br label %235

235:                                              ; preds = %230, %233
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %196) #9
  br label %325

236:                                              ; preds = %186
  %237 = load i8*, i8** %164, align 4, !tbaa !59
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@IPBQAU_cl_device_id@@PBDP6GX0PAX@Z3@ZA", align 4, !tbaa !38
  br label %262

241:                                              ; preds = %236
  %242 = load i8*, i8** %161, align 4, !tbaa !56
  %243 = ptrtoint i8* %187 to i32
  %244 = ptrtoint i8* %237 to i32
  %245 = sub i32 1, %244
  %246 = add i32 %245, %243
  %247 = sext i32 %246 to i64
  %248 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %242, i8* nonnull %237, i64 %247) #7
  %249 = load i8*, i8** %164, align 4, !tbaa !59
  %250 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@IPBQAU_cl_device_id@@PBDP6GX0PAX@Z3@ZA", align 4, !tbaa !38
  %251 = icmp eq i8* %249, null
  br i1 %251, label %262, label %252

252:                                              ; preds = %241
  %253 = load i8*, i8** %165, align 4, !tbaa !60
  %254 = load i8*, i8** %161, align 4, !tbaa !56
  %255 = ptrtoint i8* %253 to i32
  %256 = ptrtoint i8* %249 to i32
  %257 = sub i32 1, %256
  %258 = add i32 %257, %255
  %259 = sext i32 %258 to i64
  %260 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %254, i8* nonnull %249, i64 %259) #7
  %261 = load i8*, i8** %164, align 4, !tbaa !59
  br label %262

262:                                              ; preds = %239, %241, %252
  %263 = phi i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* [ %250, %252 ], [ %250, %241 ], [ %240, %239 ]
  %264 = phi i8* [ %261, %252 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0), %241 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0), %239 ]
  %265 = call x86_stdcallcc i32 %263(%struct._cl_program* %191, i32 1, %struct._cl_device_id** nonnull %65, i8* %264, void (%struct._cl_program*, i8*)* null, i8* null) #7
  store i32 %265, i32* %5, align 4, !tbaa !44
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %325, label %267

267:                                              ; preds = %262
  %268 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %268) #9
  %269 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i32 0, i32 3
  store i8* %0, i8** %269, align 4, !tbaa !61
  %270 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i32 0, i32 4
  store i8 1, i8* %270, align 4, !tbaa !63
  %271 = call i8* @malloc(i32 16384) #7
  %272 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i32 0, i32 0
  store i8* %271, i8** %272, align 4, !tbaa !64
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i32 0, i32 1
  %274 = icmp eq i8* %271, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %267
  %276 = getelementptr inbounds i8, i8* %271, i32 16383
  store i8 0, i8* %276, align 1, !tbaa !37
  br label %277

277:                                              ; preds = %267, %275
  %278 = phi i8* [ %276, %275 ], [ null, %267 ]
  %279 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i32 0, i32 2
  store i8* %278, i8** %279, align 4
  %280 = call i8* @halide_string_to_string(i8* %271, i8* %278, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@OJMPGCGG@CL?3?5clBuildProgram?5failed?3?5?$AA@", i32 0, i32 0)) #7
  store i8* %280, i8** %273, align 4, !tbaa !65
  %281 = load i32, i32* %5, align 4, !tbaa !44
  %282 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %281) #8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = call i8* @halide_string_to_string(i8* %280, i8* %278, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %288

286:                                              ; preds = %277
  %287 = call i8* @halide_string_to_string(i8* %280, i8* %278, i8* nonnull %282) #7
  br label %288

288:                                              ; preds = %284, %286
  %289 = phi i8* [ %287, %286 ], [ %285, %284 ]
  %290 = load i8*, i8** %279, align 4, !tbaa !66
  %291 = call i8* @halide_string_to_string(i8* %289, i8* %290, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IDFKKPKP@?6Build?5Log?3?6?$AA@", i32 0, i32 0)) #7
  %292 = load i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@PAU_cl_device_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %293 = load i8*, i8** %272, align 4, !tbaa !64
  %294 = ptrtoint i8* %291 to i32
  %295 = ptrtoint i8* %293 to i32
  %296 = sub i32 16383, %294
  %297 = add i32 %296, %295
  %298 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !38
  %299 = call x86_stdcallcc i32 %292(%struct._cl_program* %191, %struct._cl_device_id* %298, i32 4483, i32 %297, i8* %291, i32* null) #7
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %288
  %302 = call i8* @halide_string_to_string(i8* %291, i8* %290, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @"??_C@_0DJ@PDNJJJKK@clGetProgramBuildInfo?5failed?5?$CIPr@", i32 0, i32 0)) #7
  %303 = load i8*, i8** %272, align 4, !tbaa !64
  br label %304

304:                                              ; preds = %301, %288
  %305 = phi i8* [ %302, %301 ], [ %291, %288 ]
  %306 = phi i8* [ %303, %301 ], [ %293, %288 ]
  %307 = icmp eq i8* %306, null
  %308 = load i8*, i8** %269, align 4, !tbaa !61
  br i1 %307, label %309, label %310

309:                                              ; preds = %304
  call void @halide_error(i8* %308, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %319

310:                                              ; preds = %304
  %311 = ptrtoint i8* %305 to i32
  %312 = ptrtoint i8* %306 to i32
  %313 = sub i32 1, %312
  %314 = add i32 %313, %311
  %315 = sext i32 %314 to i64
  %316 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %308, i8* nonnull %306, i64 %315) #7
  %317 = load i8*, i8** %272, align 4, !tbaa !64
  %318 = load i8*, i8** %269, align 4, !tbaa !61
  call void @halide_error(i8* %318, i8* %317) #7
  br label %319

319:                                              ; preds = %310, %309
  %320 = load i8, i8* %270, align 4, !tbaa !63, !range !42
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %319
  %323 = load i8*, i8** %272, align 4, !tbaa !64
  call void @free(i8* %323) #7
  br label %324

324:                                              ; preds = %319, %322
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %268) #9
  br label %325

325:                                              ; preds = %262, %324, %235
  %326 = phi %struct._cl_program* [ null, %235 ], [ null, %324 ], [ %191, %262 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %188) #9
  %327 = load i8*, i8** %164, align 4, !tbaa !59
  %328 = icmp eq i8* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i8*, i8** %161, align 4, !tbaa !56
  call void @halide_error(i8* %330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %340

331:                                              ; preds = %325
  %332 = load i8*, i8** %165, align 4, !tbaa !60
  %333 = load i8*, i8** %161, align 4, !tbaa !56
  %334 = ptrtoint i8* %332 to i32
  %335 = ptrtoint i8* %327 to i32
  %336 = sub i32 1, %335
  %337 = add i32 %336, %334
  %338 = sext i32 %337 to i64
  %339 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %333, i8* nonnull %327, i64 %338) #7
  br label %340

340:                                              ; preds = %331, %329
  %341 = load i8, i8* %162, align 4, !tbaa !58, !range !42
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %340
  %344 = load i8*, i8** %164, align 4, !tbaa !59
  %345 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 5, i32 0
  %346 = icmp eq i8* %344, %345
  br i1 %346, label %348, label %347

347:                                              ; preds = %343
  call void @free(i8* %344) #7
  br label %348

348:                                              ; preds = %340, %343, %347
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %160) #9
  br label %349

349:                                              ; preds = %348, %158
  %350 = phi %struct._cl_program* [ null, %158 ], [ %326, %348 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %113) #9
  br label %351

351:                                              ; preds = %349, %111
  %352 = phi %struct._cl_program* [ null, %111 ], [ %350, %349 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #9
  br label %353

353:                                              ; preds = %351, %62
  %354 = phi %struct._cl_program* [ null, %62 ], [ %352, %351 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #9
  ret %struct._cl_program* %354
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %5 to i32
  %9 = inttoptr i32 %8 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %9, i32 0, i32 1
  %11 = load %struct._cl_mem*, %struct._cl_mem** %10, align 8, !tbaa !53
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %9, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !55
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @"??_C@_0NF@GAHAJAJD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %15, %7
  %17 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #9
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %18, align 4, !tbaa !67
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %19, align 4, !tbaa !69
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %20, align 4, !tbaa !70
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %21, align 4, !tbaa !71
  %22 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %23 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %25

25:                                               ; preds = %24, %16
  %26 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %19, %struct._cl_command_queue** nonnull %20, i1 zeroext true) #7
  store i32 %26, i32* %21, align 4, !tbaa !71
  %27 = load %struct._cl_context*, %struct._cl_context** %19, align 4, !tbaa !69
  %28 = icmp eq %struct._cl_context* %27, null
  %29 = load %struct._cl_command_queue*, %struct._cl_command_queue** %20, align 4
  %30 = icmp eq %struct._cl_command_queue* %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = call i8* @malloc(i32 1024) #7
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %46

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %33, i32 1023
  store i8 0, i8* %38, align 1, !tbaa !37
  %39 = call i8* @halide_string_to_string(i8* nonnull %33, i8* nonnull %38, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %40 = ptrtoint i8* %39 to i32
  %41 = ptrtoint i8* %33 to i32
  %42 = sub i32 1, %41
  %43 = add i32 %42, %40
  %44 = sext i32 %43 to i64
  %45 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %44) #7
  call void @halide_error(i8* %0, i8* nonnull %33) #7
  br label %46

46:                                               ; preds = %35, %37
  call void @free(i8* %33) #7
  store i32 -1, i32* %21, align 4, !tbaa !71
  br label %64

47:                                               ; preds = %25
  %48 = icmp eq i32 %26, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  %50 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #8
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@JCFFEMMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA", align 4, !tbaa !38
  %54 = call x86_stdcallcc i32 %53(%struct._cl_mem* %11) #7
  %55 = load i64, i64* %4, align 8, !tbaa !22
  %56 = trunc i64 %55 to i32
  %57 = inttoptr i32 %56 to i8*
  call void @free(i8* %57) #7
  store i64 0, i64* %4, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %59 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %58, align 8, !tbaa !72
  %60 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %59, i32 0, i32 15
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %60, align 4, !tbaa !73
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i32 0, i32 1
  %63 = load void ()*, void ()** %62, align 4, !tbaa !75
  call void %63() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %58, align 8, !tbaa !72
  br label %64

64:                                               ; preds = %46, %52, %47
  %65 = phi i32 [ %26, %47 ], [ %54, %52 ], [ -1, %46 ]
  %66 = load i8*, i8** %18, align 4, !tbaa !67
  %67 = call i32 @halide_release_cl_context(i8* %66) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #9
  br label %68

68:                                               ; preds = %2, %64
  %69 = phi i32 [ %65, %64 ], [ 0, %2 ]
  ret i32 %69
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %5 = alloca [1 x %struct._cl_device_id*], align 4
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = load i8*, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PAXA", align 4, !tbaa !38
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i32 0, i32 0)) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4, !tbaa !44
  store i32 0, i32* %1, align 4, !tbaa !44
  ret i32 0

15:                                               ; preds = %11, %3
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 0
  store i8* %0, i8** %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 4, !tbaa !69
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 4, !tbaa !70
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 3
  store i32 0, i32* %20, align 4, !tbaa !71
  %21 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %22 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 4, !tbaa !71
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 4, !tbaa !69
  %27 = icmp eq %struct._cl_context* %26, null
  %28 = load %struct._cl_command_queue*, %struct._cl_command_queue** %19, align 4
  %29 = icmp eq %struct._cl_command_queue* %28, null
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = call i8* @malloc(i32 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !37
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %39 = ptrtoint i8* %38 to i32
  %40 = ptrtoint i8* %32 to i32
  %41 = sub i32 1, %40
  %42 = add i32 %41, %39
  %43 = sext i32 %42 to i64
  %44 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %43) #7
  call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %45

45:                                               ; preds = %34, %36
  call void @free(i8* %32) #7
  store i32 -1, i32* %20, align 4, !tbaa !71
  br label %158

46:                                               ; preds = %24
  %47 = icmp eq i32 %25, 0
  br i1 %47, label %48, label %158

48:                                               ; preds = %46
  %49 = bitcast [1 x %struct._cl_device_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %49) #9
  %50 = load i32 (%struct._cl_context*, i32, i32, i8*, i32*)*, i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@IIPAXPAI@ZA", align 4, !tbaa !38
  %51 = call x86_stdcallcc i32 %50(%struct._cl_context* nonnull %26, i32 4225, i32 4, i8* nonnull %49, i32* null) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %48
  %54 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %54) #9
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3
  store i8* %0, i8** %55, align 4, !tbaa !45
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4
  store i8 1, i8* %56, align 4, !tbaa !47
  %57 = call i8* @malloc(i32 1024) #7
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0
  store i8* %57, i8** %58, align 4, !tbaa !48
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1
  store i8* %57, i8** %59, align 4, !tbaa !49
  %60 = icmp eq i8* %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %62, align 1, !tbaa !37
  br label %63

63:                                               ; preds = %53, %61
  %64 = phi i8* [ %62, %61 ], [ null, %53 ]
  %65 = call i8* @halide_string_to_string(i8* %57, i8* %64, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@PHJKOMAF@CL?3?5clGetContextInfo?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %66 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %51) #8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i8* @halide_string_to_string(i8* %65, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %72

70:                                               ; preds = %63
  %71 = call i8* @halide_string_to_string(i8* %65, i8* %64, i8* nonnull %66) #7
  br label %72

72:                                               ; preds = %68, %70
  %73 = phi i8* [ %71, %70 ], [ %69, %68 ]
  %74 = load i8*, i8** %58, align 4, !tbaa !48
  %75 = icmp eq i8* %74, null
  %76 = load i8*, i8** %55, align 4, !tbaa !45
  br i1 %75, label %77, label %78

77:                                               ; preds = %72
  call void @halide_error(i8* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %87

78:                                               ; preds = %72
  %79 = ptrtoint i8* %73 to i32
  %80 = ptrtoint i8* %74 to i32
  %81 = sub i32 1, %80
  %82 = add i32 %81, %79
  %83 = sext i32 %82 to i64
  %84 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %76, i8* nonnull %74, i64 %83) #7
  %85 = load i8*, i8** %58, align 4, !tbaa !48
  %86 = load i8*, i8** %55, align 4, !tbaa !45
  call void @halide_error(i8* %86, i8* %85) #7
  br label %87

87:                                               ; preds = %78, %77
  %88 = load i8, i8* %56, align 4, !tbaa !47, !range !42
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %58, align 4, !tbaa !48
  call void @free(i8* %91) #7
  br label %92

92:                                               ; preds = %87, %90
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %54) #9
  br label %155

93:                                               ; preds = %48
  %94 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %5, i32 0, i32 0
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %95) #9
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(256) %95, i8 0, i32 256, i1 false)
  %96 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_device_id@@IIPAXPAI@ZA", align 4, !tbaa !38
  %97 = load %struct._cl_device_id*, %struct._cl_device_id** %94, align 4, !tbaa !38
  %98 = call x86_stdcallcc i32 %96(%struct._cl_device_id* %97, i32 4143, i32 256, i8* nonnull %95, i32* null) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %140, label %100

100:                                              ; preds = %93
  %101 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %101) #9
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %102, align 4, !tbaa !45
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %103, align 4, !tbaa !47
  %104 = call i8* @malloc(i32 1024) #7
  %105 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %104, i8** %105, align 4, !tbaa !48
  %106 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %104, i8** %106, align 4, !tbaa !49
  %107 = icmp eq i8* %104, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds i8, i8* %104, i32 1023
  store i8 0, i8* %109, align 1, !tbaa !37
  br label %110

110:                                              ; preds = %100, %108
  %111 = phi i8* [ %109, %108 ], [ null, %100 ]
  %112 = call i8* @halide_string_to_string(i8* %104, i8* %111, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@OPHJLEEG@CL?3?5clGetDeviceInfo?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %113 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %98) #8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i8* @halide_string_to_string(i8* %112, i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %119

117:                                              ; preds = %110
  %118 = call i8* @halide_string_to_string(i8* %112, i8* %111, i8* nonnull %113) #7
  br label %119

119:                                              ; preds = %115, %117
  %120 = phi i8* [ %118, %117 ], [ %116, %115 ]
  %121 = load i8*, i8** %105, align 4, !tbaa !48
  %122 = icmp eq i8* %121, null
  %123 = load i8*, i8** %102, align 4, !tbaa !45
  br i1 %122, label %124, label %125

124:                                              ; preds = %119
  call void @halide_error(i8* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %134

125:                                              ; preds = %119
  %126 = ptrtoint i8* %120 to i32
  %127 = ptrtoint i8* %121 to i32
  %128 = sub i32 1, %127
  %129 = add i32 %128, %126
  %130 = sext i32 %129 to i64
  %131 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %123, i8* nonnull %121, i64 %130) #7
  %132 = load i8*, i8** %105, align 4, !tbaa !48
  %133 = load i8*, i8** %102, align 4, !tbaa !45
  call void @halide_error(i8* %133, i8* %132) #7
  br label %134

134:                                              ; preds = %125, %124
  %135 = load i8, i8* %103, align 4, !tbaa !47, !range !42
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %105, align 4, !tbaa !48
  call void @free(i8* %138) #7
  br label %139

139:                                              ; preds = %134, %137
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %101) #9
  br label %152

140:                                              ; preds = %93
  %141 = call i32 @strlen(i8* nonnull %95) #7
  %142 = icmp ult i32 %141, 10
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 7
  %145 = load i8, i8* %144, align 1, !tbaa !37
  %146 = sext i8 %145 to i32
  %147 = add nsw i32 %146, -48
  store i32 %147, i32* %1, align 4, !tbaa !44
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 9
  %149 = load i8, i8* %148, align 1, !tbaa !37
  %150 = sext i8 %149 to i32
  %151 = add nsw i32 %150, -48
  store i32 %151, i32* %2, align 4, !tbaa !44
  br label %152

152:                                              ; preds = %140, %143, %139
  %153 = phi i32 [ %98, %139 ], [ 0, %143 ], [ -1, %140 ]
  %154 = phi i32 [ 1, %139 ], [ 0, %143 ], [ 1, %140 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %95) #9
  br label %155

155:                                              ; preds = %152, %92
  %156 = phi i32 [ %51, %92 ], [ %153, %152 ]
  %157 = phi i32 [ 1, %92 ], [ %154, %152 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %49) #9
  br label %158

158:                                              ; preds = %45, %46, %155
  %159 = phi i32 [ %156, %155 ], [ %25, %46 ], [ -1, %45 ]
  %160 = phi i32 [ %157, %155 ], [ 1, %46 ], [ 1, %45 ]
  %161 = load i8*, i8** %17, align 4, !tbaa !67
  %162 = call i32 @halide_release_cl_context(i8* %161) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #9
  %163 = icmp eq i32 %160, 0
  %164 = select i1 %163, i32 0, i32 %159
  ret i32 %164
}

declare dso_local i32 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %6 = alloca %struct._cl_program*, align 4
  %7 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 0
  store i8* %0, i8** %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %10, align 4, !tbaa !70
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 3
  store i32 0, i32* %11, align 4, !tbaa !71
  %12 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %13 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %9, %struct._cl_command_queue** nonnull %10, i1 zeroext true) #7
  store i32 %16, i32* %11, align 4, !tbaa !71
  %17 = load %struct._cl_context*, %struct._cl_context** %9, align 4, !tbaa !69
  %18 = icmp eq %struct._cl_context* %17, null
  %19 = load %struct._cl_command_queue*, %struct._cl_command_queue** %10, align 4
  %20 = icmp eq %struct._cl_command_queue* %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = call i8* @malloc(i32 1024) #7
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i32 1023
  store i8 0, i8* %28, align 1, !tbaa !37
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %30 = ptrtoint i8* %29 to i32
  %31 = ptrtoint i8* %23 to i32
  %32 = sub i32 1, %31
  %33 = add i32 %32, %30
  %34 = sext i32 %33 to i64
  %35 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %34) #7
  call void @halide_error(i8* %0, i8* nonnull %23) #7
  br label %36

36:                                               ; preds = %25, %27
  call void @free(i8* %23) #7
  store i32 -1, i32* %11, align 4, !tbaa !71
  br label %48

37:                                               ; preds = %15
  %38 = icmp eq i32 %16, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = bitcast %struct._cl_program** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40) #9
  %41 = call x86_thiscallcc zeroext i1 @"??$kernel_state_setup@P6APAU_cl_program@@PAXPAU_cl_context@@PBDH@ZPAXPAU2@PBDH@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NPAXPAPAXPAU_cl_context@@AAPAU_cl_program@@P6APAU4@02PBDH@Z024H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i8* %0, i8** %1, %struct._cl_context* nonnull %17, %struct._cl_program** nonnull align 4 dereferenceable(4) %6, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* nonnull @"?compile_kernel@OpenCL@Internal@Runtime@Halide@@YAPAU_cl_program@@PAXPAU_cl_context@@PBDH@Z", i8* %0, %struct._cl_context* nonnull %17, i8* %2, i32 %3) #8
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct._cl_program*, %struct._cl_program** %6, align 4, !tbaa !38
  %44 = icmp eq %struct._cl_program* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @"??_C@_0HA@MICKJDMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %46

46:                                               ; preds = %42, %45, %39
  %47 = phi i32 [ -1, %39 ], [ 0, %45 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40) #9
  br label %48

48:                                               ; preds = %36, %37, %46
  %49 = phi i32 [ %47, %46 ], [ %16, %37 ], [ -1, %36 ]
  %50 = load i8*, i8** %8, align 4, !tbaa !67
  %51 = call i32 @halide_release_cl_context(i8* %50) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  ret i32 %49
}

; Function Attrs: nounwind
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"??$kernel_state_setup@P6APAU_cl_program@@PAXPAU_cl_context@@PBDH@ZPAXPAU2@PBDH@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NPAXPAPAXPAU_cl_context@@AAPAU_cl_program@@P6APAU4@02PBDH@Z024H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %struct._cl_context* %3, %struct._cl_program** nonnull align 4 dereferenceable(4) %4, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* %5, i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) local_unnamed_addr #4 comdat align 2 {
  %11 = alloca %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", align 4
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %12) #7
  %13 = bitcast i8** %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4
  %18 = load i32, i32* %17, align 4, !tbaa !77
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !77
  store i32 %18, i32* %13, align 4, !tbaa !44
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %20
  %26 = ptrtoint %struct._cl_context* %3 to i32
  %27 = add i32 %21, %26
  %28 = mul i32 %27, -1640531527
  %29 = sub i32 32, %23
  %30 = lshr i32 %28, %29
  %31 = shl nuw i32 1, %23
  %32 = icmp eq i32 %23, 31
  br i1 %32, label %64, label %33

33:                                               ; preds = %25
  %34 = add nsw i32 %31, -1
  %35 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %36 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %35, align 4, !tbaa !81
  %37 = icmp sgt i32 %31, 1
  %38 = select i1 %37, i32 %31, i32 1
  br label %42

39:                                               ; preds = %50
  %40 = icmp slt i32 %56, %31
  %41 = icmp eq i32 %56, %38
  br i1 %41, label %64, label %42, !llvm.loop !82

42:                                               ; preds = %39, %33
  %43 = phi i1 [ true, %33 ], [ %40, %39 ]
  %44 = phi i32 [ 0, %33 ], [ %56, %39 ]
  %45 = add i32 %44, %30
  %46 = and i32 %45, %34
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %46, i32 2
  %48 = load i32, i32* %47, align 4, !tbaa !83
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %46, i32 0
  %52 = load %struct._cl_context*, %struct._cl_context** %51, align 4, !tbaa !85
  %53 = icmp eq %struct._cl_context* %52, %3
  %54 = icmp eq i32 %48, %21
  %55 = and i1 %54, %53
  %56 = add nuw nsw i32 %44, 1
  br i1 %55, label %57, label %39

57:                                               ; preds = %50
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %46, i32 3
  %59 = load i32, i32* %58, align 4, !tbaa !86
  %60 = add i32 %59, 1
  store i32 %60, i32* %58, align 4, !tbaa !86
  br i1 %43, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %46, i32 1
  %63 = load %struct._cl_program*, %struct._cl_program** %62, align 4, !tbaa !38
  store %struct._cl_program* %63, %struct._cl_program** %4, align 4, !tbaa !38
  br label %76

64:                                               ; preds = %42, %39, %25, %20, %57
  %65 = tail call %struct._cl_program* %5(i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) #7
  %66 = icmp eq %struct._cl_program* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #9
  %69 = load i32, i32* %13, align 4, !tbaa !44
  %70 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 0
  store %struct._cl_context* %3, %struct._cl_context** %70, align 4, !tbaa !85
  %71 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 1
  store %struct._cl_program* %65, %struct._cl_program** %71, align 4, !tbaa !87
  %72 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 2
  store i32 %69, i32* %72, align 4, !tbaa !83
  %73 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 3
  store i32 1, i32* %73, align 4, !tbaa !86
  %74 = call x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %11) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #9
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store %struct._cl_program* %65, %struct._cl_program** %4, align 4, !tbaa !38
  br label %76

76:                                               ; preds = %75, %64, %67, %61
  %77 = phi i1 [ true, %61 ], [ true, %75 ], [ false, %64 ], [ false, %67 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %12) #7
  ret i1 %77
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %5, align 4, !tbaa !67
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %6, align 4, !tbaa !69
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %7, align 4, !tbaa !70
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %8, align 4, !tbaa !71
  %9 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %10 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %6, %struct._cl_command_queue** nonnull %7, i1 zeroext true) #7
  store i32 %13, i32* %8, align 4, !tbaa !71
  %14 = load %struct._cl_context*, %struct._cl_context** %6, align 4, !tbaa !69
  %15 = icmp eq %struct._cl_context* %14, null
  %16 = load %struct._cl_command_queue*, %struct._cl_command_queue** %7, align 4
  %17 = icmp eq %struct._cl_command_queue* %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = call i8* @malloc(i32 1024) #7
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i32 1023
  store i8 0, i8* %25, align 1, !tbaa !37
  %26 = call i8* @halide_string_to_string(i8* nonnull %20, i8* nonnull %25, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %27 = ptrtoint i8* %26 to i32
  %28 = ptrtoint i8* %20 to i32
  %29 = sub i32 1, %28
  %30 = add i32 %29, %27
  %31 = sext i32 %30 to i64
  %32 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %31) #7
  call void @halide_error(i8* %0, i8* nonnull %20) #7
  br label %33

33:                                               ; preds = %22, %24
  call void @free(i8* %20) #7
  store i32 -1, i32* %8, align 4, !tbaa !71
  br label %76

34:                                               ; preds = %12
  %35 = icmp eq i32 %13, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %34
  %37 = ptrtoint i8* %1 to i32
  %38 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 1), align 4, !tbaa !80
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %75, label %40

40:                                               ; preds = %36
  %41 = ptrtoint %struct._cl_context* %14 to i32
  %42 = add i32 %41, %37
  %43 = mul i32 %42, -1640531527
  %44 = sub i32 32, %38
  %45 = lshr i32 %43, %44
  %46 = shl nuw i32 1, %38
  %47 = icmp eq i32 %38, 31
  br i1 %47, label %75, label %48

48:                                               ; preds = %40
  %49 = add nsw i32 %46, -1
  %50 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 2), align 4, !tbaa !81
  %51 = icmp sgt i32 %46, 1
  %52 = select i1 %51, i32 %46, i32 1
  br label %56

53:                                               ; preds = %64
  %54 = icmp slt i32 %70, %46
  %55 = icmp eq i32 %70, %52
  br i1 %55, label %75, label %56, !llvm.loop !82

56:                                               ; preds = %53, %48
  %57 = phi i1 [ true, %48 ], [ %54, %53 ]
  %58 = phi i32 [ 0, %48 ], [ %70, %53 ]
  %59 = add i32 %58, %45
  %60 = and i32 %59, %49
  %61 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %60, i32 2
  %62 = load i32, i32* %61, align 4, !tbaa !83
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %60, i32 0
  %66 = load %struct._cl_context*, %struct._cl_context** %65, align 4, !tbaa !85
  %67 = icmp eq %struct._cl_context* %66, %14
  %68 = icmp eq i32 %62, %37
  %69 = and i1 %68, %67
  %70 = add nuw nsw i32 %58, 1
  br i1 %69, label %71, label %53

71:                                               ; preds = %64
  %72 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %60, i32 3
  %73 = load i32, i32* %72, align 4, !tbaa !86
  %74 = add i32 %73, -1
  store i32 %74, i32* %72, align 4, !tbaa !86
  br i1 %57, label %76, label %75

75:                                               ; preds = %56, %53, %71, %40, %36
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %76

76:                                               ; preds = %75, %71, %33, %34
  %77 = load i8*, i8** %5, align 4, !tbaa !67
  %78 = call i32 @halide_release_cl_context(i8* %77) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %6, align 4, !tbaa !67
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %7, align 4, !tbaa !69
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %8, align 4, !tbaa !70
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %9, align 4, !tbaa !71
  %10 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %11 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %7, %struct._cl_command_queue** nonnull %8, i1 zeroext true) #7
  store i32 %14, i32* %9, align 4, !tbaa !71
  %15 = load %struct._cl_context*, %struct._cl_context** %7, align 4, !tbaa !69
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = load %struct._cl_command_queue*, %struct._cl_command_queue** %8, align 4
  %18 = icmp eq %struct._cl_command_queue* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = call i8* @malloc(i32 1024) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %34

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i32 1023
  store i8 0, i8* %26, align 1, !tbaa !37
  %27 = call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %28 = ptrtoint i8* %27 to i32
  %29 = ptrtoint i8* %21 to i32
  %30 = sub i32 1, %29
  %31 = add i32 %30, %28
  %32 = sext i32 %31 to i64
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %32) #7
  call void @halide_error(i8* %0, i8* nonnull %21) #7
  br label %34

34:                                               ; preds = %23, %25
  call void @free(i8* %21) #7
  store i32 -1, i32* %9, align 4, !tbaa !71
  br label %81

35:                                               ; preds = %13
  %36 = icmp eq i32 %14, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %35
  %38 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA", align 4, !tbaa !38
  %39 = call x86_stdcallcc i32 %38(%struct._cl_command_queue* nonnull %17) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %37
  %42 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %42) #9
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3
  store i8* %0, i8** %43, align 4, !tbaa !45
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4
  store i8 1, i8* %44, align 4, !tbaa !47
  %45 = call i8* @malloc(i32 1024) #7
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0
  store i8* %45, i8** %46, align 4, !tbaa !48
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1
  store i8* %45, i8** %47, align 4, !tbaa !49
  %48 = icmp eq i8* %45, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds i8, i8* %45, i32 1023
  store i8 0, i8* %50, align 1, !tbaa !37
  br label %51

51:                                               ; preds = %41, %49
  %52 = phi i8* [ %50, %49 ], [ null, %41 ]
  %53 = call i8* @halide_string_to_string(i8* %45, i8* %52, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@HNMCCFHI@CL?3?5clFinish?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %54 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %39) #8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i8* @halide_string_to_string(i8* %53, i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %60

58:                                               ; preds = %51
  %59 = call i8* @halide_string_to_string(i8* %53, i8* %52, i8* nonnull %54) #7
  br label %60

60:                                               ; preds = %56, %58
  %61 = phi i8* [ %59, %58 ], [ %57, %56 ]
  %62 = load i8*, i8** %46, align 4, !tbaa !48
  %63 = icmp eq i8* %62, null
  %64 = load i8*, i8** %43, align 4, !tbaa !45
  br i1 %63, label %65, label %66

65:                                               ; preds = %60
  call void @halide_error(i8* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %75

66:                                               ; preds = %60
  %67 = ptrtoint i8* %61 to i32
  %68 = ptrtoint i8* %62 to i32
  %69 = sub i32 1, %68
  %70 = add i32 %69, %67
  %71 = sext i32 %70 to i64
  %72 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %64, i8* nonnull %62, i64 %71) #7
  %73 = load i8*, i8** %46, align 4, !tbaa !48
  %74 = load i8*, i8** %43, align 4, !tbaa !45
  call void @halide_error(i8* %74, i8* %73) #7
  br label %75

75:                                               ; preds = %66, %65
  %76 = load i8, i8* %44, align 4, !tbaa !47, !range !42
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %46, align 4, !tbaa !48
  call void @free(i8* %79) #7
  br label %80

80:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %42) #9
  br label %81

81:                                               ; preds = %34, %80, %37, %35
  %82 = phi i32 [ %14, %35 ], [ %39, %80 ], [ 0, %37 ], [ -1, %34 ]
  %83 = load i8*, i8** %6, align 4, !tbaa !67
  %84 = call i32 @halide_release_cl_context(i8* %83) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  ret i32 %82
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_release(i8* %0) #4 {
  %2 = alloca %struct._cl_context*, align 4
  %3 = alloca %struct._cl_command_queue*, align 4
  %4 = bitcast %struct._cl_context** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %5 = bitcast %struct._cl_command_queue** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %2, %struct._cl_command_queue** nonnull %3, i1 zeroext false) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %77

8:                                                ; preds = %1
  %9 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !38
  %10 = icmp eq %struct._cl_context* %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %8
  %12 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA", align 4, !tbaa !38
  %13 = load %struct._cl_command_queue*, %struct._cl_command_queue** %3, align 4, !tbaa !38
  %14 = call x86_stdcallcc i32 %12(%struct._cl_command_queue* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@IFKNINJB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !38
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  %19 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 3), align 4, !tbaa !88
  %20 = icmp eq i32 %19, 0
  %21 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 1), align 4
  %22 = icmp eq i32 %21, 31
  %23 = or i1 %20, %22
  br i1 %23, label %58, label %24

24:                                               ; preds = %17
  %25 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 2), align 4, !tbaa !81
  br label %26

26:                                               ; preds = %52, %24
  %27 = phi i32 [ %53, %52 ], [ %21, %24 ]
  %28 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %54, %52 ], [ %25, %24 ]
  %29 = phi i32 [ %55, %52 ], [ 0, %24 ]
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 2
  %31 = load i32, i32* %30, align 4, !tbaa !83
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 4, !tbaa !85
  %36 = icmp eq %struct._cl_context* %35, %18
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 3
  %39 = load i32, i32* %38, align 4, !tbaa !86
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA", align 4, !tbaa !38
  %43 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 1
  %44 = load %struct._cl_program*, %struct._cl_program** %43, align 4, !tbaa !87
  %45 = call x86_stdcallcc i32 %42(%struct._cl_program* %44) #7
  %46 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 2), align 4, !tbaa !81
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i32 %29, i32 1
  store %struct._cl_program* null, %struct._cl_program** %47, align 4, !tbaa !87
  %48 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i32 %29, i32 2
  store i32 1, i32* %48, align 4, !tbaa !83
  %49 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 3), align 4, !tbaa !88
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 3), align 4, !tbaa !88
  %51 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 1), align 4, !tbaa !80
  br label %52

52:                                               ; preds = %41, %37, %33, %26
  %53 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %27, %37 ], [ %51, %41 ]
  %54 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %28, %26 ], [ %28, %33 ], [ %28, %37 ], [ %46, %41 ]
  %55 = add nuw nsw i32 %29, 1
  %56 = shl nuw i32 1, %53
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %26, label %58, !llvm.loop !89

58:                                               ; preds = %52, %17
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  %59 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !38
  %60 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", align 4, !tbaa !38
  %61 = icmp eq %struct._cl_context* %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA", align 4, !tbaa !38
  %64 = load %struct._cl_command_queue*, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PAU_cl_command_queue@@A", align 4, !tbaa !38
  %65 = call x86_stdcallcc i32 %63(%struct._cl_command_queue* %64) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@MMJNGNHC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %68

68:                                               ; preds = %67, %62
  store %struct._cl_command_queue* null, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PAU_cl_command_queue@@A", align 4, !tbaa !38
  %69 = load i32 (%struct._cl_context*)*, i32 (%struct._cl_context*)** @"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_context@@@ZA", align 4, !tbaa !38
  %70 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", align 4, !tbaa !38
  %71 = call x86_stdcallcc i32 %69(%struct._cl_context* %70) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@NINNKHKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %74

74:                                               ; preds = %73, %68
  store %struct._cl_context* null, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PAU_cl_context@@A", align 4, !tbaa !38
  br label %75

75:                                               ; preds = %58, %74, %8
  %76 = call i32 @halide_release_cl_context(i8* %0) #8
  br label %77

77:                                               ; preds = %1, %75
  %78 = phi i32 [ 0, %75 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  ret i32 %78
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %7, align 4, !tbaa !67
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 4, !tbaa !69
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 4, !tbaa !70
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %10, align 4, !tbaa !71
  %11 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %12 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %2
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 4, !tbaa !71
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !69
  %17 = icmp eq %struct._cl_context* %16, null
  %18 = load %struct._cl_command_queue*, %struct._cl_command_queue** %9, align 4
  %19 = icmp eq %struct._cl_command_queue* %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = call i8* @malloc(i32 1024) #7
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i32 1023
  store i8 0, i8* %27, align 1, !tbaa !37
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %29 = ptrtoint i8* %28 to i32
  %30 = ptrtoint i8* %22 to i32
  %31 = sub i32 1, %30
  %32 = add i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %33) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %35

35:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 4, !tbaa !71
  br label %234

36:                                               ; preds = %14
  %37 = icmp eq i32 %15, 0
  br i1 %37, label %38, label %234

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %40 = load i32, i32* %39, align 4, !tbaa !24
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %44 = load i8, i8* %43, align 1, !tbaa !23
  br label %128

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %46, align 8, !tbaa !25
  %48 = and i32 %40, 1
  %49 = icmp eq i32 %40, 1
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = and i32 %40, -2
  br label %52

52:                                               ; preds = %255, %50
  %53 = phi i32 [ 0, %50 ], [ %257, %255 ]
  %54 = phi i32 [ 0, %50 ], [ %256, %255 ]
  %55 = phi i32 [ %51, %50 ], [ %258, %255 ]
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
  br i1 %70, label %249, label %255

71:                                               ; preds = %255, %45
  %72 = phi i32 [ undef, %45 ], [ %256, %255 ]
  %73 = phi i32 [ 0, %45 ], [ %257, %255 ]
  %74 = phi i32 [ 0, %45 ], [ %256, %255 ]
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

94:                                               ; preds = %244, %92
  %95 = phi i32 [ 0, %92 ], [ %246, %244 ]
  %96 = phi i32 [ 0, %92 ], [ %245, %244 ]
  %97 = phi i32 [ %93, %92 ], [ %247, %244 ]
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
  br i1 %112, label %238, label %244

113:                                              ; preds = %244, %86
  %114 = phi i32 [ undef, %86 ], [ %245, %244 ]
  %115 = phi i32 [ 0, %86 ], [ %246, %244 ]
  %116 = phi i32 [ 0, %86 ], [ %245, %244 ]
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
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @"??_C@_0GH@BOEJCFBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %140

140:                                              ; preds = %139, %128
  %141 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !22
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* %39, align 4, !tbaa !24
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %155

149:                                              ; preds = %140
  %150 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %137) #8
  br i1 %150, label %234, label %151

151:                                              ; preds = %149
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@ELDPDCNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %234

152:                                              ; preds = %164, %144
  %153 = call i8* @malloc(i32 16) #7
  %154 = icmp eq i8* %153, null
  br i1 %154, label %234, label %168

155:                                              ; preds = %147, %164
  %156 = phi i32 [ %145, %147 ], [ %165, %164 ]
  %157 = phi i32 [ 0, %147 ], [ %166, %164 ]
  %158 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %148, align 8, !tbaa !25
  %159 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %158, i32 %157, i32 2
  %160 = load i32, i32* %159, align 4, !tbaa !28
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %164, label %162

162:                                              ; preds = %155
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@OENBMEHI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  %163 = load i32, i32* %39, align 4, !tbaa !24
  br label %164

164:                                              ; preds = %155, %162
  %165 = phi i32 [ %156, %155 ], [ %163, %162 ]
  %166 = add nuw nsw i32 %157, 1
  %167 = icmp slt i32 %166, %165
  br i1 %167, label %155, label %152, !llvm.loop !90

168:                                              ; preds = %152
  %169 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %169) #9
  %170 = load %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)** @"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KIPAXPAH@ZA", align 4, !tbaa !38
  %171 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !69
  %172 = call x86_stdcallcc %struct._cl_mem* %170(%struct._cl_context* %171, i64 1, i32 %137, i8* null, i32* nonnull %4) #7
  %173 = load i32, i32* %4, align 4, !tbaa !44
  %174 = icmp ne i32 %173, 0
  %175 = icmp eq %struct._cl_mem* %172, null
  %176 = or i1 %175, %174
  br i1 %176, label %177, label %220

177:                                              ; preds = %168
  %178 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %173) #8
  %179 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %179) #9
  %180 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %180, align 4, !tbaa !45
  %181 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %181, align 4, !tbaa !47
  %182 = call i8* @malloc(i32 1024) #7
  %183 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %182, i8** %183, align 4, !tbaa !48
  %184 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  store i8* %182, i8** %184, align 4, !tbaa !49
  %185 = icmp eq i8* %182, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %177
  %187 = getelementptr inbounds i8, i8* %182, i32 1023
  store i8 0, i8* %187, align 1, !tbaa !37
  br label %188

188:                                              ; preds = %177, %186
  %189 = phi i8* [ %187, %186 ], [ null, %177 ]
  %190 = call i8* @halide_string_to_string(i8* %182, i8* %189, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@JFCOLHML@CL?3?5clCreateBuffer?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %191 = load i32, i32* %4, align 4, !tbaa !44
  %192 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %191) #8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = call i8* @halide_string_to_string(i8* %190, i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %198

196:                                              ; preds = %188
  %197 = call i8* @halide_string_to_string(i8* %190, i8* %189, i8* nonnull %192) #7
  br label %198

198:                                              ; preds = %194, %196
  %199 = phi i8* [ %197, %196 ], [ %195, %194 ]
  %200 = load i8*, i8** %183, align 4, !tbaa !48
  %201 = icmp eq i8* %200, null
  %202 = load i8*, i8** %180, align 4, !tbaa !45
  br i1 %201, label %203, label %204

203:                                              ; preds = %198
  call void @halide_error(i8* %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %213

204:                                              ; preds = %198
  %205 = ptrtoint i8* %199 to i32
  %206 = ptrtoint i8* %200 to i32
  %207 = sub i32 1, %206
  %208 = add i32 %207, %205
  %209 = sext i32 %208 to i64
  %210 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %202, i8* nonnull %200, i64 %209) #7
  %211 = load i8*, i8** %183, align 4, !tbaa !48
  %212 = load i8*, i8** %180, align 4, !tbaa !45
  call void @halide_error(i8* %212, i8* %211) #7
  br label %213

213:                                              ; preds = %204, %203
  %214 = load i8, i8* %181, align 4, !tbaa !47, !range !42
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = load i8*, i8** %183, align 4, !tbaa !48
  call void @free(i8* %217) #7
  br label %218

218:                                              ; preds = %213, %216
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %179) #9
  call void @free(i8* nonnull %153) #7
  %219 = load i32, i32* %4, align 4, !tbaa !44
  br label %232

220:                                              ; preds = %168
  %221 = getelementptr inbounds i8, i8* %153, i32 8
  %222 = bitcast i8* %221 to %struct._cl_mem**
  store %struct._cl_mem* %172, %struct._cl_mem** %222, align 8, !tbaa !53
  %223 = bitcast i8* %153 to i64*
  store i64 0, i64* %223, align 8, !tbaa !55
  %224 = ptrtoint i8* %153 to i32
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %141, align 8, !tbaa !22
  %226 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %226, align 8, !tbaa !72
  %227 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !73
  %228 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %227, i32 0, i32 0
  %229 = load void ()*, void ()** %228, align 4, !tbaa !91
  call void %229() #7
  %230 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %137) #8
  br i1 %230, label %232, label %231

231:                                              ; preds = %220
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@NKDENGNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %232

232:                                              ; preds = %220, %231, %218
  %233 = phi i32 [ %219, %218 ], [ 0, %231 ], [ 0, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #9
  br label %234

234:                                              ; preds = %35, %151, %149, %152, %232, %36
  %235 = phi i32 [ %15, %36 ], [ 0, %151 ], [ 0, %149 ], [ %233, %232 ], [ -6, %152 ], [ -1, %35 ]
  %236 = load i8*, i8** %7, align 4, !tbaa !67
  %237 = call i32 @halide_release_cl_context(i8* %236) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret i32 %235

238:                                              ; preds = %107
  %239 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %109, i32 1
  %240 = load i32, i32* %239, align 4, !tbaa !31
  %241 = add nsw i32 %240, -1
  %242 = mul nsw i32 %241, %111
  %243 = add nsw i32 %242, %108
  br label %244

244:                                              ; preds = %238, %107
  %245 = phi i32 [ %243, %238 ], [ %108, %107 ]
  %246 = add nuw nsw i32 %95, 2
  %247 = add i32 %97, -2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %113, label %94, !llvm.loop !92

249:                                              ; preds = %65
  %250 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %47, i32 %67, i32 1
  %251 = load i32, i32* %250, align 4, !tbaa !31
  %252 = add nsw i32 %251, -1
  %253 = mul nsw i32 %252, %69
  %254 = add nsw i32 %253, %66
  br label %255

255:                                              ; preds = %249, %65
  %256 = phi i32 [ %254, %249 ], [ %66, %65 ]
  %257 = add nuw nsw i32 %53, 2
  %258 = add i32 %55, -2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %71, label %52, !llvm.loop !93
}

declare dso_local i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %3, i64 %4, i32 %5, i1 zeroext %6, i1 zeroext %7) local_unnamed_addr #4 {
  %9 = icmp sgt i32 %5, 16
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  %11 = tail call i8* @malloc(i32 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !37
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i32 0, i32 0)) #7
  %18 = ptrtoint i8* %17 to i32
  %19 = ptrtoint i8* %11 to i32
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %22) #7
  tail call void @halide_error(i8* %0, i8* nonnull %11) #7
  br label %24

24:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #7
  br label %175

25:                                               ; preds = %8
  %26 = icmp eq i32 %5, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = add nsw i32 %5, -1
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 3, i32 %28
  %30 = load i64, i64* %29, align 8, !tbaa !3
  %31 = trunc i64 %30 to i32
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %175

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 4, i32 %28
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 5, i32 %28
  br label %154

36:                                               ; preds = %25
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 1
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i32 0, i32 6
  %40 = xor i1 %7, true
  %41 = or i1 %40, %6
  br i1 %41, label %62, label %42

42:                                               ; preds = %36
  %43 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPAXIPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %44 = load i64, i64* %38, align 8, !tbaa !11
  %45 = add i64 %44, %4
  %46 = trunc i64 %45 to i32
  %47 = inttoptr i32 %46 to i8*
  %48 = load i64, i64* %39, align 8, !tbaa !12
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %37, align 8, !tbaa !9
  %51 = trunc i64 %50 to i32
  %52 = inttoptr i32 %51 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !55
  %55 = add i64 %54, %3
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %52, i32 0, i32 1
  %58 = load %struct._cl_mem*, %struct._cl_mem** %57, align 8, !tbaa !53
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %60 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 4, !tbaa !70
  %61 = tail call x86_stdcallcc i32 %43(%struct._cl_command_queue* %60, %struct._cl_mem* %58, i32 0, i32 %56, i32 %49, i8* %47, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

62:                                               ; preds = %36
  %63 = xor i1 %6, true
  %64 = or i1 %63, %7
  br i1 %64, label %85, label %65

65:                                               ; preds = %62
  %66 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IIIPBXIPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %67 = load i64, i64* %37, align 8, !tbaa !9
  %68 = add i64 %67, %3
  %69 = trunc i64 %68 to i32
  %70 = inttoptr i32 %69 to i8*
  %71 = load i64, i64* %39, align 8, !tbaa !12
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %38, align 8, !tbaa !11
  %74 = trunc i64 %73 to i32
  %75 = inttoptr i32 %74 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !55
  %78 = add i64 %77, %4
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %75, i32 0, i32 1
  %81 = load %struct._cl_mem*, %struct._cl_mem** %80, align 8, !tbaa !53
  %82 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %83 = load %struct._cl_command_queue*, %struct._cl_command_queue** %82, align 4, !tbaa !70
  %84 = tail call x86_stdcallcc i32 %66(%struct._cl_command_queue* %83, %struct._cl_mem* %81, i32 0, i32 %79, i32 %72, i8* %70, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

85:                                               ; preds = %62
  %86 = or i1 %6, %7
  br i1 %86, label %112, label %87

87:                                               ; preds = %85
  %88 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@1IIIIPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %89 = load i64, i64* %39, align 8, !tbaa !12
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %38, align 8, !tbaa !11
  %92 = trunc i64 %91 to i32
  %93 = inttoptr i32 %92 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8, !tbaa !55
  %96 = add i64 %95, %4
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* %37, align 8, !tbaa !9
  %99 = trunc i64 %98 to i32
  %100 = inttoptr i32 %99 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8, !tbaa !55
  %103 = add i64 %102, %3
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %93, i32 0, i32 1
  %106 = load %struct._cl_mem*, %struct._cl_mem** %105, align 8, !tbaa !53
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %100, i32 0, i32 1
  %108 = load %struct._cl_mem*, %struct._cl_mem** %107, align 8, !tbaa !53
  %109 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %110 = load %struct._cl_command_queue*, %struct._cl_command_queue** %109, align 4, !tbaa !70
  %111 = tail call x86_stdcallcc i32 %88(%struct._cl_command_queue* %110, %struct._cl_mem* %108, %struct._cl_mem* %106, i32 %104, i32 %97, i32 %90, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

112:                                              ; preds = %85
  %113 = load i64, i64* %38, align 8, !tbaa !11
  %114 = add i64 %113, %4
  %115 = load i64, i64* %37, align 8, !tbaa !9
  %116 = add i64 %115, %3
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %175, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %39, align 8, !tbaa !12
  %120 = trunc i64 %119 to i32
  %121 = trunc i64 %116 to i32
  %122 = inttoptr i32 %121 to i8*
  %123 = trunc i64 %114 to i32
  %124 = inttoptr i32 %123 to i8*
  %125 = tail call i8* @memcpy(i8* %124, i8* %122, i32 %120) #7
  br label %175

126:                                              ; preds = %65, %87, %42
  %127 = phi i32 [ %111, %87 ], [ %84, %65 ], [ %61, %42 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %175, label %129

129:                                              ; preds = %126
  %130 = tail call i8* @malloc(i32 1024) #7
  %131 = icmp eq i8* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds i8, i8* %130, i32 1023
  store i8 0, i8* %133, align 1, !tbaa !37
  br label %134

134:                                              ; preds = %129, %132
  %135 = phi i8* [ %133, %132 ], [ null, %129 ]
  %136 = tail call i8* @halide_string_to_string(i8* %130, i8* %135, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@HEIDBBOD@CL?3?5buffer?5copy?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %137 = tail call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %127) #8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = tail call i8* @halide_string_to_string(i8* %136, i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %143

141:                                              ; preds = %134
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %135, i8* nonnull %137) #7
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi i8* [ %142, %141 ], [ %140, %139 ]
  br i1 %131, label %145, label %146

145:                                              ; preds = %143
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %153

146:                                              ; preds = %143
  %147 = ptrtoint i8* %144 to i32
  %148 = ptrtoint i8* %130 to i32
  %149 = sub i32 1, %148
  %150 = add i32 %149, %147
  %151 = sext i32 %150 to i64
  %152 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %130, i64 %151) #7
  tail call void @halide_error(i8* %0, i8* nonnull %130) #7
  br label %153

153:                                              ; preds = %145, %146
  call void @free(i8* %130) #7
  br label %175

154:                                              ; preds = %33, %164
  %155 = phi i32 [ 0, %33 ], [ %171, %164 ]
  %156 = phi i32 [ 0, %33 ], [ %170, %164 ]
  %157 = phi i32 [ 0, %33 ], [ %167, %164 ]
  %158 = sext i32 %156 to i64
  %159 = add nsw i64 %158, %4
  %160 = sext i32 %157 to i64
  %161 = add nsw i64 %160, %3
  %162 = tail call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %161, i64 %159, i32 %28, i1 zeroext %6, i1 zeroext %7) #8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %154
  %165 = load i64, i64* %34, align 8, !tbaa !3
  %166 = trunc i64 %165 to i32
  %167 = add i32 %157, %166
  %168 = load i64, i64* %35, align 8, !tbaa !3
  %169 = trunc i64 %168 to i32
  %170 = add i32 %156, %169
  %171 = add nuw nsw i32 %155, 1
  %172 = load i64, i64* %29, align 8, !tbaa !3
  %173 = trunc i64 %172 to i32
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %154, label %175, !llvm.loop !94

175:                                              ; preds = %164, %154, %27, %112, %118, %126, %153, %24
  %176 = phi i32 [ -1, %24 ], [ %127, %153 ], [ 0, %126 ], [ 0, %118 ], [ 0, %112 ], [ 0, %27 ], [ 0, %164 ], [ %162, %154 ]
  ret i32 %176
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %7 = icmp eq %struct.halide_device_interface_t* %2, null
  %8 = icmp eq %struct.halide_device_interface_t* %2, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @"??_C@_0LB@HCAEPHPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !95
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %18 = load i8*, i8** %17, align 4, !tbaa !15
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !72
  %23 = icmp eq %struct.halide_device_interface_t* %22, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  br i1 %8, label %96, label %25

25:                                               ; preds = %24
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@GCBJGBEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %96

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !72
  %29 = icmp eq %struct.halide_device_interface_t* %28, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %29, label %30, label %42

30:                                               ; preds = %20, %26
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !22
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = and i64 %13, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %39 = load i8*, i8** %38, align 4, !tbaa !15
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %37
  br label %42

42:                                               ; preds = %41, %26, %30, %37
  %43 = phi i1 [ true, %37 ], [ false, %41 ], [ true, %30 ], [ true, %26 ]
  br i1 %7, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !22
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@EGDFODBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %50) #9
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %43, %struct.halide_buffer_t* %3, i1 zeroext %7) #8
  %51 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #9
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 0
  store i8* %0, i8** %52, align 4, !tbaa !67
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %53, align 4, !tbaa !69
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %54, align 4, !tbaa !70
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 3
  store i32 0, i32* %55, align 4, !tbaa !71
  %56 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %57 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %59

59:                                               ; preds = %58, %49
  %60 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %53, %struct._cl_command_queue** nonnull %54, i1 zeroext true) #7
  store i32 %60, i32* %55, align 4, !tbaa !71
  %61 = load %struct._cl_context*, %struct._cl_context** %53, align 4, !tbaa !69
  %62 = icmp eq %struct._cl_context* %61, null
  %63 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 4
  %64 = icmp eq %struct._cl_command_queue* %63, null
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = call i8* @malloc(i32 1024) #7
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %80

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i32 1023
  store i8 0, i8* %72, align 1, !tbaa !37
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %74 = ptrtoint i8* %73 to i32
  %75 = ptrtoint i8* %67 to i32
  %76 = sub i32 1, %75
  %77 = add i32 %76, %74
  %78 = sext i32 %77 to i64
  %79 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %78) #7
  call void @halide_error(i8* %0, i8* nonnull %67) #7
  br label %80

80:                                               ; preds = %69, %71
  call void @free(i8* %67) #7
  store i32 -1, i32* %55, align 4, !tbaa !71
  br label %92

81:                                               ; preds = %59
  %82 = icmp eq i32 %60, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %85 = load i32, i32* %84, align 4, !tbaa !24
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 2
  %87 = load i64, i64* %86, align 8, !tbaa !14
  %88 = call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %6, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %87, i64 0, i32 %85, i1 zeroext %43, i1 zeroext %7) #8
  %89 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA", align 4, !tbaa !38
  %90 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 4, !tbaa !70
  %91 = call x86_stdcallcc i32 %89(%struct._cl_command_queue* %90) #7
  br label %92

92:                                               ; preds = %80, %81, %83
  %93 = phi i32 [ %88, %83 ], [ %60, %81 ], [ -1, %80 ]
  %94 = load i8*, i8** %52, align 4, !tbaa !67
  %95 = call i32 @halide_release_cl_context(i8* %94) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %50) #9
  br label %96

96:                                               ; preds = %25, %24, %92
  %97 = phi i32 [ %93, %92 ], [ -42, %24 ], [ -42, %25 ]
  ret i32 %97
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca i32, align 4
  %19 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %20 = alloca %struct._cl_program*, align 4
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct._cl_mem*, align 4
  %26 = alloca %struct._cl_buffer_region, align 4
  %27 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %28 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %29 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %30 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #9
  %31 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #9
  %32 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 0
  store i8* %0, i8** %32, align 4, !tbaa !67
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %33, align 4, !tbaa !69
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %34, align 4, !tbaa !70
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 3
  store i32 0, i32* %35, align 4, !tbaa !71
  %36 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %37 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %39

39:                                               ; preds = %38, %17
  %40 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %33, %struct._cl_command_queue** nonnull %34, i1 zeroext true) #7
  store i32 %40, i32* %35, align 4, !tbaa !71
  %41 = load %struct._cl_context*, %struct._cl_context** %33, align 4, !tbaa !69
  %42 = icmp eq %struct._cl_context* %41, null
  %43 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 4
  %44 = icmp eq %struct._cl_command_queue* %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = call i8* @malloc(i32 1024) #7
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %60

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %47, i32 1023
  store i8 0, i8* %52, align 1, !tbaa !37
  %53 = call i8* @halide_string_to_string(i8* nonnull %47, i8* nonnull %52, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %54 = ptrtoint i8* %53 to i32
  %55 = ptrtoint i8* %47 to i32
  %56 = sub i32 1, %55
  %57 = add i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %58) #7
  call void @halide_error(i8* %0, i8* nonnull %47) #7
  br label %60

60:                                               ; preds = %49, %51
  call void @free(i8* %47) #7
  store i32 -1, i32* %35, align 4, !tbaa !71
  br label %557

61:                                               ; preds = %39
  %62 = icmp eq i32 %40, 0
  br i1 %62, label %63, label %557

63:                                               ; preds = %61
  %64 = icmp eq i8* %1, null
  br i1 %64, label %102, label %65

65:                                               ; preds = %63
  %66 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 4, !tbaa !38
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  %67 = ptrtoint i8* %1 to i32
  %68 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 1), align 4, !tbaa !80
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %108, label %70

70:                                               ; preds = %65
  %71 = ptrtoint %struct._cl_context* %41 to i32
  %72 = add i32 %71, %67
  %73 = mul i32 %72, -1640531527
  %74 = sub i32 32, %68
  %75 = lshr i32 %73, %74
  %76 = shl nuw i32 1, %68
  %77 = icmp eq i32 %68, 31
  br i1 %77, label %108, label %78

78:                                               ; preds = %70
  %79 = add nsw i32 %76, -1
  %80 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 2), align 4, !tbaa !81
  %81 = icmp sgt i32 %76, 1
  %82 = select i1 %81, i32 %76, i32 1
  br label %86

83:                                               ; preds = %94
  %84 = icmp slt i32 %100, %76
  %85 = icmp eq i32 %100, %82
  br i1 %85, label %108, label %86, !llvm.loop !82

86:                                               ; preds = %83, %78
  %87 = phi i1 [ true, %78 ], [ %84, %83 ]
  %88 = phi i32 [ 0, %78 ], [ %100, %83 ]
  %89 = add i32 %88, %75
  %90 = and i32 %89, %79
  %91 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %90, i32 2
  %92 = load i32, i32* %91, align 4, !tbaa !83
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %90, i32 0
  %96 = load %struct._cl_context*, %struct._cl_context** %95, align 4, !tbaa !85
  %97 = icmp eq %struct._cl_context* %96, %41
  %98 = icmp eq i32 %92, %67
  %99 = and i1 %98, %97
  %100 = add nuw nsw i32 %88, 1
  br i1 %99, label %101, label %83

101:                                              ; preds = %94
  br i1 %87, label %104, label %108

102:                                              ; preds = %63
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@DACMPJPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  %103 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %103) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 4, !tbaa !38
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  br label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %90, i32 1
  %106 = load %struct._cl_program*, %struct._cl_program** %105, align 4, !tbaa !38
  store %struct._cl_program* %106, %struct._cl_program** %20, align 4, !tbaa !38
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  %107 = icmp eq %struct._cl_program* %106, null
  br i1 %107, label %110, label %113

108:                                              ; preds = %86, %83, %70, %65, %101, %102
  %109 = phi i8* [ %103, %102 ], [ %66, %101 ], [ %66, %65 ], [ %66, %70 ], [ %66, %83 ], [ %66, %86 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 0)) #7
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi %struct._cl_program* [ %106, %104 ], [ null, %108 ]
  %112 = phi i8* [ %66, %104 ], [ %109, %108 ]
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@NCIAOLIA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %113

113:                                              ; preds = %104, %110
  %114 = phi %struct._cl_program* [ %106, %104 ], [ %111, %110 ]
  %115 = phi i8* [ %66, %104 ], [ %112, %110 ]
  %116 = load %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)*, %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_kernel@@PAU_cl_program@@PBDPAH@ZA", align 4, !tbaa !38
  %117 = call x86_stdcallcc %struct._cl_kernel* %116(%struct._cl_program* %114, i8* %2, i32* nonnull %18) #7
  %118 = load i32, i32* %18, align 4, !tbaa !44
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %175, label %120

120:                                              ; preds = %113
  %121 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %118) #8
  %122 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %122) #9
  %123 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 3
  store i8* %0, i8** %123, align 4, !tbaa !45
  %124 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 4
  store i8 1, i8* %124, align 4, !tbaa !47
  %125 = call i8* @malloc(i32 1024) #7
  %126 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 0
  store i8* %125, i8** %126, align 4, !tbaa !48
  %127 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 1
  %128 = icmp eq i8* %125, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds i8, i8* %125, i32 1023
  store i8 0, i8* %130, align 1, !tbaa !37
  br label %131

131:                                              ; preds = %120, %129
  %132 = phi i8* [ %130, %129 ], [ null, %120 ]
  %133 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 2
  store i8* %132, i8** %133, align 4
  %134 = call i8* @halide_string_to_string(i8* %125, i8* %132, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@KFJGNCAK@CL?3?5clCreateKernel?5?$AA@", i32 0, i32 0)) #7
  %135 = icmp eq i8* %2, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i8* @halide_string_to_string(i8* %134, i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %140

138:                                              ; preds = %131
  %139 = call i8* @halide_string_to_string(i8* %134, i8* %132, i8* nonnull %2) #7
  br label %140

140:                                              ; preds = %136, %138
  %141 = phi i8* [ %139, %138 ], [ %137, %136 ]
  store i8* %141, i8** %127, align 4, !tbaa !49
  %142 = load i8*, i8** %133, align 4, !tbaa !50
  %143 = call i8* @halide_string_to_string(i8* %141, i8* %142, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FIOGNGMI@?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %144 = load i32, i32* %18, align 4, !tbaa !44
  %145 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %144) #8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = call i8* @halide_string_to_string(i8* %143, i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %151

149:                                              ; preds = %140
  %150 = call i8* @halide_string_to_string(i8* %143, i8* %142, i8* nonnull %145) #7
  br label %151

151:                                              ; preds = %147, %149
  %152 = phi i8* [ %150, %149 ], [ %148, %147 ]
  %153 = load i8*, i8** %133, align 4, !tbaa !50
  %154 = call i8* @halide_string_to_string(i8* %152, i8* %153, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  %155 = load i8*, i8** %126, align 4, !tbaa !48
  %156 = icmp eq i8* %155, null
  %157 = load i8*, i8** %123, align 4, !tbaa !45
  br i1 %156, label %158, label %159

158:                                              ; preds = %151
  call void @halide_error(i8* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %168

159:                                              ; preds = %151
  %160 = ptrtoint i8* %154 to i32
  %161 = ptrtoint i8* %155 to i32
  %162 = add i32 %160, 1
  %163 = sub i32 %162, %161
  %164 = sext i32 %163 to i64
  %165 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %157, i8* nonnull %155, i64 %164) #7
  %166 = load i8*, i8** %126, align 4, !tbaa !48
  %167 = load i8*, i8** %123, align 4, !tbaa !45
  call void @halide_error(i8* %167, i8* %166) #7
  br label %168

168:                                              ; preds = %159, %158
  %169 = load i8, i8* %124, align 4, !tbaa !47, !range !42
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %126, align 4, !tbaa !48
  call void @free(i8* %172) #7
  br label %173

173:                                              ; preds = %168, %171
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %122) #9
  %174 = load i32, i32* %18, align 4, !tbaa !44
  br label %555

175:                                              ; preds = %113
  %176 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %176) #9
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 0
  %178 = mul i32 %6, %3
  store i32 %178, i32* %177, align 4, !tbaa !44
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 1
  %180 = mul i32 %7, %4
  store i32 %180, i32* %179, align 4, !tbaa !44
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 2
  %182 = mul i32 %8, %5
  store i32 %182, i32* %181, align 4, !tbaa !44
  %183 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %183) #9
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 0
  store i32 %6, i32* %184, align 4, !tbaa !44
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 1
  store i32 %7, i32* %185, align 4, !tbaa !44
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 2
  store i32 %8, i32* %186, align 4, !tbaa !44
  %187 = load i32, i32* %10, align 4, !tbaa !44
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %223, label %189

189:                                              ; preds = %175, %208
  %190 = phi i32 [ %209, %208 ], [ 0, %175 ]
  %191 = phi i32 [ %210, %208 ], [ 0, %175 ]
  %192 = getelementptr inbounds i8, i8* %12, i32 %191
  %193 = load i8, i8* %192, align 1, !tbaa !37
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds i8*, i8** %11, i32 %191
  %197 = bitcast i8** %196 to %struct.halide_buffer_t**
  %198 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %197, align 4, !tbaa !38
  %199 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !22
  %201 = trunc i64 %200 to i32
  %202 = inttoptr i32 %201 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %203 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8, !tbaa !55
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = add nsw i32 %190, %206
  br label %208

208:                                              ; preds = %195, %189
  %209 = phi i32 [ %190, %189 ], [ %207, %195 ]
  %210 = add nuw nsw i32 %191, 1
  %211 = getelementptr inbounds i32, i32* %10, i32 %210
  %212 = load i32, i32* %211, align 4, !tbaa !44
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %189, !llvm.loop !96

214:                                              ; preds = %208
  %215 = icmp sgt i32 %209, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %214
  %217 = shl i32 %209, 2
  %218 = call i8* @malloc(i32 %217) #7
  %219 = icmp eq i8* %218, null
  br i1 %219, label %553, label %220

220:                                              ; preds = %216
  %221 = bitcast i8* %218 to %struct._cl_mem**
  %222 = call i8* @memset(i8* nonnull %218, i32 0, i32 %217) #7
  br label %223

223:                                              ; preds = %175, %220, %214
  %224 = phi %struct._cl_mem** [ %221, %220 ], [ null, %214 ], [ null, %175 ]
  %225 = bitcast i32* %24 to i8*
  %226 = bitcast %struct._cl_mem** %25 to i8*
  %227 = bitcast %struct._cl_buffer_region* %26 to i8*
  %228 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i32 0, i32 0
  %229 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i32 0, i32 1
  %230 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27 to i8*
  %231 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 3
  %232 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 4
  %233 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 0
  %234 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 1
  %235 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 2
  %236 = bitcast %struct._cl_mem** %224 to i8*
  br label %237

237:                                              ; preds = %437, %223
  %238 = phi i32 [ 0, %223 ], [ %438, %437 ]
  %239 = phi i32 [ 0, %223 ], [ %384, %437 ]
  %240 = phi i32 [ undef, %223 ], [ %439, %437 ]
  %241 = getelementptr inbounds i32, i32* %10, i32 %238
  %242 = load i32, i32* %241, align 4, !tbaa !44
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %440, label %244

244:                                              ; preds = %237
  %245 = getelementptr inbounds i8*, i8** %11, i32 %238
  %246 = getelementptr inbounds i8, i8* %12, i32 %238
  %247 = load i8*, i8** %245, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %225) #9
  store i32 0, i32* %24, align 4, !tbaa !44
  %248 = load i8, i8* %246, align 1, !tbaa !37
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %379, label %250

250:                                              ; preds = %244
  %251 = icmp eq i32 %242, 8
  br i1 %251, label %253, label %252

252:                                              ; preds = %250
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"??_C@_0HP@LAHLNOMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %253

253:                                              ; preds = %252, %250
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %226) #9
  %254 = bitcast i8* %247 to i64*
  %255 = load i64, i64* %254, align 8, !tbaa !22
  %256 = trunc i64 %255 to i32
  %257 = inttoptr i32 %256 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %257, i32 0, i32 1
  %259 = load %struct._cl_mem*, %struct._cl_mem** %258, align 8, !tbaa !53
  store %struct._cl_mem* %259, %struct._cl_mem** %25, align 4, !tbaa !38
  %260 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %257, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !55
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %370, label %263

263:                                              ; preds = %253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %227) #9
  %264 = trunc i64 %261 to i32
  store i32 %264, i32* %228, align 4, !tbaa !97
  %265 = getelementptr inbounds i8, i8* %247, i32 28
  %266 = bitcast i8* %265 to i32*
  %267 = load i32, i32* %266, align 4, !tbaa !24
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds i8, i8* %247, i32 25
  %271 = load i8, i8* %270, align 1, !tbaa !23
  br label %356

272:                                              ; preds = %263
  %273 = getelementptr inbounds i8, i8* %247, i32 32
  %274 = bitcast i8* %273 to %struct.halide_dimension_t**
  %275 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %274, align 8, !tbaa !25
  %276 = and i32 %267, 1
  %277 = icmp eq i32 %267, 1
  br i1 %277, label %299, label %278

278:                                              ; preds = %272
  %279 = and i32 %267, -2
  br label %280

280:                                              ; preds = %567, %278
  %281 = phi i32 [ 0, %278 ], [ %569, %567 ]
  %282 = phi i32 [ 0, %278 ], [ %568, %567 ]
  %283 = phi i32 [ %279, %278 ], [ %570, %567 ]
  %284 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %281, i32 2
  %285 = load i32, i32* %284, align 4, !tbaa !28
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %281, i32 1
  %289 = load i32, i32* %288, align 4, !tbaa !31
  %290 = add nsw i32 %289, -1
  %291 = mul nsw i32 %290, %285
  %292 = add nsw i32 %291, %282
  br label %293

293:                                              ; preds = %287, %280
  %294 = phi i32 [ %292, %287 ], [ %282, %280 ]
  %295 = or i32 %281, 1
  %296 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %295, i32 2
  %297 = load i32, i32* %296, align 4, !tbaa !28
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %561, label %567

299:                                              ; preds = %567, %272
  %300 = phi i32 [ undef, %272 ], [ %568, %567 ]
  %301 = phi i32 [ 0, %272 ], [ %569, %567 ]
  %302 = phi i32 [ 0, %272 ], [ %568, %567 ]
  %303 = icmp eq i32 %276, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %301, i32 2
  %306 = load i32, i32* %305, align 4, !tbaa !28
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %301, i32 1
  %310 = load i32, i32* %309, align 4, !tbaa !31
  %311 = add nsw i32 %310, -1
  %312 = mul nsw i32 %311, %306
  %313 = add nsw i32 %312, %302
  br label %314

314:                                              ; preds = %308, %304, %299
  %315 = phi i32 [ %300, %299 ], [ %313, %308 ], [ %302, %304 ]
  %316 = getelementptr inbounds i8, i8* %247, i32 25
  %317 = load i8, i8* %316, align 1, !tbaa !23
  %318 = and i32 %267, 1
  %319 = icmp eq i32 %267, 1
  br i1 %319, label %341, label %320

320:                                              ; preds = %314
  %321 = and i32 %267, -2
  br label %322

322:                                              ; preds = %578, %320
  %323 = phi i32 [ 0, %320 ], [ %580, %578 ]
  %324 = phi i32 [ 0, %320 ], [ %579, %578 ]
  %325 = phi i32 [ %321, %320 ], [ %581, %578 ]
  %326 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %323, i32 2
  %327 = load i32, i32* %326, align 4, !tbaa !28
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %323, i32 1
  %331 = load i32, i32* %330, align 4, !tbaa !31
  %332 = add nsw i32 %331, -1
  %333 = mul nsw i32 %332, %327
  %334 = add nsw i32 %333, %324
  br label %335

335:                                              ; preds = %329, %322
  %336 = phi i32 [ %334, %329 ], [ %324, %322 ]
  %337 = or i32 %323, 1
  %338 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %337, i32 2
  %339 = load i32, i32* %338, align 4, !tbaa !28
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %572, label %578

341:                                              ; preds = %578, %314
  %342 = phi i32 [ undef, %314 ], [ %579, %578 ]
  %343 = phi i32 [ 0, %314 ], [ %580, %578 ]
  %344 = phi i32 [ 0, %314 ], [ %579, %578 ]
  %345 = icmp eq i32 %318, 0
  br i1 %345, label %356, label %346

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %343, i32 2
  %348 = load i32, i32* %347, align 4, !tbaa !28
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %343, i32 1
  %352 = load i32, i32* %351, align 4, !tbaa !31
  %353 = add nsw i32 %352, -1
  %354 = mul nsw i32 %353, %348
  %355 = add nsw i32 %354, %344
  br label %356

356:                                              ; preds = %341, %346, %350, %269
  %357 = phi i8 [ %271, %269 ], [ %317, %350 ], [ %317, %346 ], [ %317, %341 ]
  %358 = phi i32 [ 0, %269 ], [ %315, %350 ], [ %315, %346 ], [ %315, %341 ]
  %359 = phi i32 [ 0, %269 ], [ %342, %341 ], [ %355, %350 ], [ %344, %346 ]
  %360 = zext i8 %357 to i32
  %361 = add nuw nsw i32 %360, 7
  %362 = lshr i32 %361, 3
  %363 = add nsw i32 %358, 1
  %364 = sub i32 %363, %359
  %365 = mul i32 %364, %362
  store i32 %365, i32* %229, align 4, !tbaa !99
  %366 = load %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU5@_KIPBXPAH@ZA", align 4, !tbaa !38
  %367 = call x86_stdcallcc %struct._cl_mem* %366(%struct._cl_mem* %259, i64 1, i32 4640, i8* nonnull %227, i32* nonnull %24) #7
  store %struct._cl_mem* %367, %struct._cl_mem** %25, align 4, !tbaa !38
  %368 = add nsw i32 %239, 1
  %369 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %224, i32 %239
  store %struct._cl_mem* %367, %struct._cl_mem** %369, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %227) #9
  br label %370

370:                                              ; preds = %356, %253
  %371 = phi i32 [ %368, %356 ], [ %239, %253 ]
  %372 = load i32, i32* %24, align 4, !tbaa !44
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@IIPBX@ZA", align 4, !tbaa !38
  %376 = call x86_stdcallcc i32 %375(%struct._cl_kernel* %117, i32 %238, i32 4, i8* nonnull %226) #7
  store i32 %376, i32* %24, align 4, !tbaa !44
  br label %377

377:                                              ; preds = %374, %370
  %378 = phi i32 [ %376, %374 ], [ %372, %370 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #9
  br label %382

379:                                              ; preds = %244
  %380 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@IIPBX@ZA", align 4, !tbaa !38
  %381 = call x86_stdcallcc i32 %380(%struct._cl_kernel* %117, i32 %238, i32 %242, i8* %247) #7
  store i32 %381, i32* %24, align 4, !tbaa !44
  br label %382

382:                                              ; preds = %379, %377
  %383 = phi i32 [ %381, %379 ], [ %378, %377 ]
  %384 = phi i32 [ %239, %379 ], [ %371, %377 ]
  %385 = icmp eq i32 %383, 0
  br i1 %385, label %435, label %386

386:                                              ; preds = %382
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %230) #9
  store i8* %0, i8** %231, align 4, !tbaa !45
  store i8 1, i8* %232, align 4, !tbaa !47
  %387 = call i8* @malloc(i32 1024) #7
  store i8* %387, i8** %233, align 4, !tbaa !48
  %388 = icmp eq i8* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8, i8* %387, i32 1023
  store i8* %390, i8** %235, align 4, !tbaa !50
  store i8 0, i8* %390, align 1, !tbaa !37
  br label %392

391:                                              ; preds = %386
  store i8* null, i8** %235, align 4, !tbaa !50
  br label %392

392:                                              ; preds = %389, %391
  %393 = phi i8* [ %390, %389 ], [ null, %391 ]
  %394 = call i8* @halide_string_to_string(i8* %387, i8* %393, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@HJLMFHME@CL?3?5clSetKernelArg?5failed?3?5?$AA@", i32 0, i32 0)) #7
  store i8* %394, i8** %234, align 4, !tbaa !49
  %395 = load i32, i32* %24, align 4, !tbaa !44
  %396 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %395) #8
  %397 = icmp eq i8* %396, null
  %398 = load i8*, i8** %235, align 4, !tbaa !50
  br i1 %397, label %399, label %401

399:                                              ; preds = %392
  %400 = call i8* @halide_string_to_string(i8* %394, i8* %398, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %403

401:                                              ; preds = %392
  %402 = call i8* @halide_string_to_string(i8* %394, i8* %398, i8* nonnull %396) #7
  br label %403

403:                                              ; preds = %399, %401
  %404 = phi i8* [ %402, %401 ], [ %400, %399 ]
  %405 = load i8*, i8** %233, align 4, !tbaa !48
  %406 = icmp eq i8* %405, null
  %407 = load i8*, i8** %231, align 4, !tbaa !45
  br i1 %406, label %408, label %409

408:                                              ; preds = %403
  call void @halide_error(i8* %407, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %418

409:                                              ; preds = %403
  %410 = ptrtoint i8* %404 to i32
  %411 = ptrtoint i8* %405 to i32
  %412 = sub i32 1, %411
  %413 = add i32 %412, %410
  %414 = sext i32 %413 to i64
  %415 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %407, i8* nonnull %405, i64 %414) #7
  %416 = load i8*, i8** %233, align 4, !tbaa !48
  %417 = load i8*, i8** %231, align 4, !tbaa !45
  call void @halide_error(i8* %417, i8* %416) #7
  br label %418

418:                                              ; preds = %409, %408
  %419 = load i8, i8* %232, align 4, !tbaa !47, !range !42
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %418
  %422 = load i8*, i8** %233, align 4
  call void @free(i8* %422) #7
  br label %423

423:                                              ; preds = %418, %421
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %230) #9
  %424 = icmp sgt i32 %384, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %427, %423
  call void @free(i8* %236) #7
  %426 = load i32, i32* %24, align 4, !tbaa !44
  br label %437

427:                                              ; preds = %423, %427
  %428 = phi i32 [ %433, %427 ], [ 0, %423 ]
  %429 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA", align 4, !tbaa !38
  %430 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %224, i32 %428
  %431 = load %struct._cl_mem*, %struct._cl_mem** %430, align 4, !tbaa !38
  %432 = call x86_stdcallcc i32 %429(%struct._cl_mem* %431) #7
  %433 = add nuw nsw i32 %428, 1
  %434 = icmp eq i32 %433, %384
  br i1 %434, label %425, label %427, !llvm.loop !100

435:                                              ; preds = %382
  %436 = add nsw i32 %238, 1
  br label %437

437:                                              ; preds = %435, %425
  %438 = phi i32 [ %238, %425 ], [ %436, %435 ]
  %439 = phi i32 [ %426, %425 ], [ %240, %435 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %225) #9
  br i1 %385, label %237, label %553, !llvm.loop !101

440:                                              ; preds = %237
  %441 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@IIPBX@ZA", align 4, !tbaa !38
  %442 = icmp sgt i32 %9, 1
  %443 = select i1 %442, i32 %9, i32 1
  %444 = call x86_stdcallcc i32 %441(%struct._cl_kernel* %117, i32 %238, i32 %443, i8* null) #7
  store i32 %444, i32* %18, align 4, !tbaa !44
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %488, label %446

446:                                              ; preds = %440
  %447 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %447) #9
  %448 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 3
  store i8* %0, i8** %448, align 4, !tbaa !45
  %449 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 4
  store i8 1, i8* %449, align 4, !tbaa !47
  %450 = call i8* @malloc(i32 1024) #7
  %451 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 0
  store i8* %450, i8** %451, align 4, !tbaa !48
  %452 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 1
  store i8* %450, i8** %452, align 4, !tbaa !49
  %453 = icmp eq i8* %450, null
  br i1 %453, label %456, label %454

454:                                              ; preds = %446
  %455 = getelementptr inbounds i8, i8* %450, i32 1023
  store i8 0, i8* %455, align 1, !tbaa !37
  br label %456

456:                                              ; preds = %446, %454
  %457 = phi i8* [ %455, %454 ], [ null, %446 ]
  %458 = call i8* @halide_string_to_string(i8* %450, i8* %457, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@OLKMLKBK@CL?3?5clSetKernelArg?5failed?5?$AA@", i32 0, i32 0)) #7
  %459 = load i32, i32* %18, align 4, !tbaa !44
  %460 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %459) #8
  %461 = icmp eq i8* %460, null
  br i1 %461, label %462, label %464

462:                                              ; preds = %456
  %463 = call i8* @halide_string_to_string(i8* %458, i8* %457, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %466

464:                                              ; preds = %456
  %465 = call i8* @halide_string_to_string(i8* %458, i8* %457, i8* nonnull %460) #7
  br label %466

466:                                              ; preds = %462, %464
  %467 = phi i8* [ %465, %464 ], [ %463, %462 ]
  %468 = load i8*, i8** %451, align 4, !tbaa !48
  %469 = icmp eq i8* %468, null
  %470 = load i8*, i8** %448, align 4, !tbaa !45
  br i1 %469, label %471, label %472

471:                                              ; preds = %466
  call void @halide_error(i8* %470, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %481

472:                                              ; preds = %466
  %473 = ptrtoint i8* %467 to i32
  %474 = ptrtoint i8* %468 to i32
  %475 = sub i32 1, %474
  %476 = add i32 %475, %473
  %477 = sext i32 %476 to i64
  %478 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %470, i8* nonnull %468, i64 %477) #7
  %479 = load i8*, i8** %451, align 4, !tbaa !48
  %480 = load i8*, i8** %448, align 4, !tbaa !45
  call void @halide_error(i8* %480, i8* %479) #7
  br label %481

481:                                              ; preds = %472, %471
  %482 = load i8, i8* %449, align 4, !tbaa !47, !range !42
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %486, label %484

484:                                              ; preds = %481
  %485 = load i8*, i8** %451, align 4, !tbaa !48
  call void @free(i8* %485) #7
  br label %486

486:                                              ; preds = %481, %484
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %447) #9
  %487 = load i32, i32* %18, align 4, !tbaa !44
  br label %553

488:                                              ; preds = %440
  %489 = load i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_kernel@@IPBI22IPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %490 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 4, !tbaa !70
  %491 = call x86_stdcallcc i32 %489(%struct._cl_command_queue* %490, %struct._cl_kernel* %117, i32 3, i32* null, i32* nonnull %177, i32* nonnull %184, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  store i32 %491, i32* %18, align 4, !tbaa !44
  %492 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %491) #8
  %493 = icmp sgt i32 %239, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %497, %488
  call void @free(i8* %236) #7
  %495 = load i32, i32* %18, align 4, !tbaa !44
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %550, label %505

497:                                              ; preds = %488, %497
  %498 = phi i32 [ %503, %497 ], [ 0, %488 ]
  %499 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA", align 4, !tbaa !38
  %500 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %224, i32 %498
  %501 = load %struct._cl_mem*, %struct._cl_mem** %500, align 4, !tbaa !38
  %502 = call x86_stdcallcc i32 %499(%struct._cl_mem* %501) #7
  %503 = add nuw nsw i32 %498, 1
  %504 = icmp eq i32 %503, %239
  br i1 %504, label %494, label %497, !llvm.loop !102

505:                                              ; preds = %494
  %506 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %506) #9
  %507 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 3
  store i8* %0, i8** %507, align 4, !tbaa !45
  %508 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 4
  store i8 1, i8* %508, align 4, !tbaa !47
  %509 = call i8* @malloc(i32 1024) #7
  %510 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 0
  store i8* %509, i8** %510, align 4, !tbaa !48
  %511 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 1
  store i8* %509, i8** %511, align 4, !tbaa !49
  %512 = icmp eq i8* %509, null
  br i1 %512, label %515, label %513

513:                                              ; preds = %505
  %514 = getelementptr inbounds i8, i8* %509, i32 1023
  store i8 0, i8* %514, align 1, !tbaa !37
  br label %515

515:                                              ; preds = %505, %513
  %516 = phi i8* [ %514, %513 ], [ null, %505 ]
  %517 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 2
  store i8* %516, i8** %517, align 4
  %518 = call i8* @halide_string_to_string(i8* %509, i8* %516, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@KMDKKOMD@CL?3?5clEnqueueNDRangeKernel?5faile@", i32 0, i32 0)) #7
  %519 = load i32, i32* %18, align 4, !tbaa !44
  %520 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %519) #8
  %521 = icmp eq i8* %520, null
  br i1 %521, label %522, label %524

522:                                              ; preds = %515
  %523 = call i8* @halide_string_to_string(i8* %518, i8* %516, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %526

524:                                              ; preds = %515
  %525 = call i8* @halide_string_to_string(i8* %518, i8* %516, i8* nonnull %520) #7
  br label %526

526:                                              ; preds = %522, %524
  %527 = phi i8* [ %525, %524 ], [ %523, %522 ]
  %528 = load i8*, i8** %517, align 4, !tbaa !50
  %529 = call i8* @halide_string_to_string(i8* %527, i8* %528, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7
  %530 = load i8*, i8** %510, align 4, !tbaa !48
  %531 = icmp eq i8* %530, null
  %532 = load i8*, i8** %507, align 4, !tbaa !45
  br i1 %531, label %533, label %534

533:                                              ; preds = %526
  call void @halide_error(i8* %532, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %543

534:                                              ; preds = %526
  %535 = ptrtoint i8* %529 to i32
  %536 = ptrtoint i8* %530 to i32
  %537 = add i32 %535, 1
  %538 = sub i32 %537, %536
  %539 = sext i32 %538 to i64
  %540 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %532, i8* nonnull %530, i64 %539) #7
  %541 = load i8*, i8** %510, align 4, !tbaa !48
  %542 = load i8*, i8** %507, align 4, !tbaa !45
  call void @halide_error(i8* %542, i8* %541) #7
  br label %543

543:                                              ; preds = %534, %533
  %544 = load i8, i8* %508, align 4, !tbaa !47, !range !42
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %548, label %546

546:                                              ; preds = %543
  %547 = load i8*, i8** %510, align 4, !tbaa !48
  call void @free(i8* %547) #7
  br label %548

548:                                              ; preds = %543, %546
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %506) #9
  %549 = load i32, i32* %18, align 4, !tbaa !44
  br label %553

550:                                              ; preds = %494
  %551 = load i32 (%struct._cl_kernel*)*, i32 (%struct._cl_kernel*)** @"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_kernel@@@ZA", align 4, !tbaa !38
  %552 = call x86_stdcallcc i32 %551(%struct._cl_kernel* %117) #7
  br label %553

553:                                              ; preds = %437, %216, %550, %548, %486
  %554 = phi i32 [ %487, %486 ], [ %549, %548 ], [ 0, %550 ], [ -11, %216 ], [ %439, %437 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %183) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %176) #9
  br label %555

555:                                              ; preds = %553, %173
  %556 = phi i32 [ %174, %173 ], [ %554, %553 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #9
  br label %557

557:                                              ; preds = %60, %61, %555
  %558 = phi i32 [ %556, %555 ], [ %40, %61 ], [ -1, %60 ]
  %559 = load i8*, i8** %32, align 4, !tbaa !67
  %560 = call i32 @halide_release_cl_context(i8* %559) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #9
  ret i32 %558

561:                                              ; preds = %293
  %562 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %295, i32 1
  %563 = load i32, i32* %562, align 4, !tbaa !31
  %564 = add nsw i32 %563, -1
  %565 = mul nsw i32 %564, %297
  %566 = add nsw i32 %565, %294
  br label %567

567:                                              ; preds = %561, %293
  %568 = phi i32 [ %566, %561 ], [ %294, %293 ]
  %569 = add nuw nsw i32 %281, 2
  %570 = add i32 %283, -2
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %299, label %280, !llvm.loop !93

572:                                              ; preds = %335
  %573 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %275, i32 %337, i32 1
  %574 = load i32, i32* %573, align 4, !tbaa !31
  %575 = add nsw i32 %574, -1
  %576 = mul nsw i32 %575, %339
  %577 = add nsw i32 %576, %336
  br label %578

578:                                              ; preds = %572, %335
  %579 = phi i32 [ %577, %572 ], [ %336, %335 ]
  %580 = add nuw nsw i32 %323, 2
  %581 = add i32 %325, -2
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %341, label %322, !llvm.loop !92
}

declare dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_wrap_cl_mem(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@FPCGBLCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i32 16) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = trunc i64 %2 to i32
  %15 = inttoptr i32 %14 to %struct._cl_mem*
  %16 = getelementptr inbounds i8, i8* %11, i32 8
  %17 = bitcast i8* %16 to %struct._cl_mem**
  store %struct._cl_mem* %15, %struct._cl_mem** %17, align 8, !tbaa !53
  %18 = bitcast i8* %11 to i64*
  store i64 0, i64* %18, align 8, !tbaa !55
  %19 = ptrtoint i8* %11 to i32
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %4, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %21, align 8, !tbaa !72
  %22 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !73
  %23 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %22, i32 0, i32 0
  %24 = load void ()*, void ()** %23, align 4, !tbaa !91
  tail call void %24() #7
  br label %25

25:                                               ; preds = %13, %10, %7
  %26 = phi i32 [ -2, %7 ], [ 0, %13 ], [ -11, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_detach_cl_mem(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %11 = or i1 %9, %10
  %12 = trunc i64 %4 to i32
  br i1 %11, label %16, label %13

13:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @"??_C@_0ML@HEGIOGAJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  %14 = load i64, i64* %3, align 8, !tbaa !22
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %12, %6 ], [ %15, %13 ]
  %18 = inttoptr i32 %17 to i8*
  tail call void @free(i8* %18) #7
  store i64 0, i64* %3, align 8, !tbaa !22
  %19 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %19, i32 0, i32 15
  %21 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %20, align 4, !tbaa !73
  %22 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %21, i32 0, i32 1
  %23 = load void ()*, void ()** %22, align 4, !tbaa !75
  tail call void %23() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  br label %24

24:                                               ; preds = %2, %16
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_get_cl_mem(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %11 = or i1 %9, %10
  %12 = trunc i64 %4 to i32
  br i1 %11, label %16, label %13

13:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @"??_C@_0ML@FGBMJAJG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  %14 = load i64, i64* %3, align 8, !tbaa !22
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %12, %6 ], [ %15, %13 ]
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i32 0, i32 1
  %20 = load %struct._cl_mem*, %struct._cl_mem** %19, align 8, !tbaa !53
  %21 = ptrtoint %struct._cl_mem* %20 to i32
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_opencl_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @"??_C@_0JA@OCJLGPJI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %2 ]
  ret i64 %20
}

; Function Attrs: nounwind
define weak dso_local i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 0
  store i8* %0, i8** %7, align 4, !tbaa !67
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 4, !tbaa !69
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 4, !tbaa !70
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 3
  store i32 0, i32* %10, align 4, !tbaa !71
  %11 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %12 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %4
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 4, !tbaa !71
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !69
  %17 = icmp eq %struct._cl_context* %16, null
  %18 = load %struct._cl_command_queue*, %struct._cl_command_queue** %9, align 4
  %19 = icmp eq %struct._cl_command_queue* %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = call i8* @malloc(i32 1024) #7
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i32 1023
  store i8 0, i8* %27, align 1, !tbaa !37
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %29 = ptrtoint i8* %28 to i32
  %30 = ptrtoint i8* %22 to i32
  %31 = sub i32 1, %30
  %32 = add i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %33) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %35

35:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 4, !tbaa !71
  br label %82

36:                                               ; preds = %14
  %37 = icmp eq i32 %15, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %40 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1
  store %struct.halide_device_interface_t* %40, %struct.halide_device_interface_t** %41, align 8, !tbaa !72
  %42 = call i8* @malloc(i32 16) #7
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = call i8* @malloc(i32 1024) #7
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i8* @halide_string_to_string(i8* %45, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %58

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %45, i32 1023
  store i8 0, i8* %50, align 1, !tbaa !37
  %51 = call i8* @halide_string_to_string(i8* nonnull %45, i8* nonnull %50, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@", i32 0, i32 0)) #7
  %52 = ptrtoint i8* %51 to i32
  %53 = ptrtoint i8* %45 to i32
  %54 = add i32 %52, 1
  %55 = sub i32 %54, %53
  %56 = sext i32 %55 to i64
  %57 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %45, i64 %56) #7
  call void @halide_error(i8* %0, i8* nonnull %45) #7
  br label %58

58:                                               ; preds = %49, %47
  call void @free(i8* %45) #7
  br label %82

59:                                               ; preds = %38
  %60 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA", align 4, !tbaa !38
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !22
  %63 = trunc i64 %62 to i32
  %64 = inttoptr i32 %63 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %64, i32 0, i32 1
  %66 = load %struct._cl_mem*, %struct._cl_mem** %65, align 8, !tbaa !53
  %67 = call x86_stdcallcc i32 %60(%struct._cl_mem* %66) #7
  %68 = load i64, i64* %61, align 8, !tbaa !22
  %69 = trunc i64 %68 to i32
  %70 = inttoptr i32 %69 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %70, i32 0, i32 1
  %72 = load %struct._cl_mem*, %struct._cl_mem** %71, align 8, !tbaa !53
  %73 = getelementptr inbounds i8, i8* %42, i32 8
  %74 = bitcast i8* %73 to %struct._cl_mem**
  store %struct._cl_mem* %72, %struct._cl_mem** %74, align 8, !tbaa !53
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %70, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !55
  %77 = add i64 %76, %2
  %78 = bitcast i8* %42 to i64*
  store i64 %77, i64* %78, align 8, !tbaa !55
  %79 = ptrtoint i8* %42 to i32
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  store i64 %80, i64* %81, align 8, !tbaa !22
  br label %82

82:                                               ; preds = %35, %58, %59, %36
  %83 = phi i32 [ %15, %36 ], [ -11, %58 ], [ 0, %59 ], [ -1, %35 ]
  %84 = load i8*, i8** %7, align 4, !tbaa !67
  %85 = call i32 @halide_release_cl_context(i8* %84) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret i32 %83
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %45, label %46, label %16, !llvm.loop !103

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
  %72 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %71, %struct.halide_buffer_t* %2) #8
  ret i32 %72
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #8
  ret i32 %23
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = trunc i64 %5 to i32
  %7 = inttoptr i32 %6 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %7, i32 0, i32 1
  %9 = load %struct._cl_mem*, %struct._cl_mem** %8, align 8, !tbaa !53
  %10 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 4, !tbaa !69
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 4, !tbaa !70
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %14, align 4, !tbaa !71
  %15 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %16 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 4, !tbaa !71
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !69
  %21 = icmp eq %struct._cl_context* %20, null
  %22 = load %struct._cl_command_queue*, %struct._cl_command_queue** %13, align 4
  %23 = icmp eq %struct._cl_command_queue* %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = call i8* @malloc(i32 1024) #7
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !37
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %33 = ptrtoint i8* %32 to i32
  %34 = ptrtoint i8* %26 to i32
  %35 = sub i32 1, %34
  %36 = add i32 %35, %33
  %37 = sext i32 %36 to i64
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %37) #7
  call void @halide_error(i8* %0, i8* nonnull %26) #7
  br label %39

39:                                               ; preds = %28, %30
  call void @free(i8* %26) #7
  store i32 -1, i32* %14, align 4, !tbaa !71
  br label %51

40:                                               ; preds = %18
  %41 = icmp eq i32 %19, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #8
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@PJBGAFJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@@ZA", align 4, !tbaa !38
  %47 = call x86_stdcallcc i32 %46(%struct._cl_mem* %9) #7
  %48 = load i64, i64* %4, align 8, !tbaa !22
  %49 = trunc i64 %48 to i32
  %50 = inttoptr i32 %49 to i8*
  call void @free(i8* %50) #7
  br label %51

51:                                               ; preds = %39, %45, %40
  %52 = phi i32 [ %19, %40 ], [ %47, %45 ], [ -1, %39 ]
  %53 = load i8*, i8** %11, align 4, !tbaa !67
  %54 = call i32 @halide_release_cl_context(i8* %53) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  ret i32 %52
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_opencl_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_opencl_cleanup() #0 {
  tail call x86_thiscallcc void @"??$release_all@P6GHPAU_cl_program@@@Z@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAEXPAXAAP6GHPAU_cl_program@@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i8* null, i32 (%struct._cl_program*)** nonnull align 4 dereferenceable(4) @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_program@@@ZA") #8
  %1 = tail call i32 @halide_opencl_device_release(i8* null) #8
  ret void
}

; Function Attrs: nounwind
define linkonce_odr dso_local x86_thiscallcc void @"??$release_all@P6GHPAU_cl_program@@@Z@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAEXPAXAAP6GHPAU_cl_program@@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i32 (%struct._cl_program*)** nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !88
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !81
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %39, %38 ], [ %6, %12 ]
  %17 = phi i32 [ %40, %38 ], [ %10, %12 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %41, %38 ], [ %14, %12 ]
  %19 = phi i32 [ %42, %38 ], [ 0, %12 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !83
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !86
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** %2, align 4, !tbaa !38
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 1
  %30 = load %struct._cl_program*, %struct._cl_program** %29, align 4, !tbaa !87
  %31 = tail call x86_stdcallcc i32 %28(%struct._cl_program* %30) #7
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !81
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i32 %19, i32 1
  store %struct._cl_program* null, %struct._cl_program** %33, align 4, !tbaa !87
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i32 %19, i32 2
  store i32 1, i32* %34, align 4, !tbaa !83
  %35 = load i32, i32* %5, align 4, !tbaa !88
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4, !tbaa !88
  %37 = load i32, i32* %9, align 4, !tbaa !80
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i32 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %15, label %45, !llvm.loop !89

45:                                               ; preds = %38
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %3, %45
  %48 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %49 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %48 to i8**
  %50 = load i8*, i8** %49, align 4, !tbaa !81
  tail call void @free(i8* %50) #7
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %48, align 4, !tbaa !81
  %51 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  store i32 0, i32* %51, align 4, !tbaa !80
  br label %52

52:                                               ; preds = %8, %47, %45
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #7
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

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = alloca %struct._cl_image_format, align 4
  %5 = alloca %struct._cl_image_desc, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to %struct.halide_type_t*
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %10 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 4, !tbaa !69
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 4, !tbaa !70
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %14, align 4, !tbaa !71
  %15 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %16 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 4, !tbaa !71
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !69
  %21 = icmp eq %struct._cl_context* %20, null
  %22 = load %struct._cl_command_queue*, %struct._cl_command_queue** %13, align 4
  %23 = icmp eq %struct._cl_command_queue* %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = call i8* @malloc(i32 1024) #7
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !37
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %33 = ptrtoint i8* %32 to i32
  %34 = ptrtoint i8* %26 to i32
  %35 = sub i32 1, %34
  %36 = add i32 %35, %33
  %37 = sext i32 %36 to i64
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %37) #7
  call void @halide_error(i8* %0, i8* nonnull %26) #7
  br label %39

39:                                               ; preds = %28, %30
  call void @free(i8* %26) #7
  store i32 -1, i32* %14, align 4, !tbaa !71
  br label %362

40:                                               ; preds = %18
  %41 = icmp eq i32 %19, 0
  br i1 %41, label %42, label %362

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %44 = load i32, i32* %43, align 4, !tbaa !24
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %48 = load i8, i8* %47, align 1, !tbaa !23
  br label %132

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %51 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %50, align 8, !tbaa !25
  %52 = and i32 %44, 1
  %53 = icmp eq i32 %44, 1
  br i1 %53, label %75, label %54

54:                                               ; preds = %49
  %55 = and i32 %44, -2
  br label %56

56:                                               ; preds = %383, %54
  %57 = phi i32 [ 0, %54 ], [ %385, %383 ]
  %58 = phi i32 [ 0, %54 ], [ %384, %383 ]
  %59 = phi i32 [ %55, %54 ], [ %386, %383 ]
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %57, i32 2
  %61 = load i32, i32* %60, align 4, !tbaa !28
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %57, i32 1
  %65 = load i32, i32* %64, align 4, !tbaa !31
  %66 = add nsw i32 %65, -1
  %67 = mul nsw i32 %66, %61
  %68 = add nsw i32 %67, %58
  br label %69

69:                                               ; preds = %63, %56
  %70 = phi i32 [ %68, %63 ], [ %58, %56 ]
  %71 = or i32 %57, 1
  %72 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %71, i32 2
  %73 = load i32, i32* %72, align 4, !tbaa !28
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %377, label %383

75:                                               ; preds = %383, %49
  %76 = phi i32 [ undef, %49 ], [ %384, %383 ]
  %77 = phi i32 [ 0, %49 ], [ %385, %383 ]
  %78 = phi i32 [ 0, %49 ], [ %384, %383 ]
  %79 = icmp eq i32 %52, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %77, i32 2
  %82 = load i32, i32* %81, align 4, !tbaa !28
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %77, i32 1
  %86 = load i32, i32* %85, align 4, !tbaa !31
  %87 = add nsw i32 %86, -1
  %88 = mul nsw i32 %87, %82
  %89 = add nsw i32 %88, %78
  br label %90

90:                                               ; preds = %84, %80, %75
  %91 = phi i32 [ %76, %75 ], [ %89, %84 ], [ %78, %80 ]
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %93 = load i8, i8* %92, align 1, !tbaa !23
  %94 = and i32 %44, 1
  %95 = icmp eq i32 %44, 1
  br i1 %95, label %117, label %96

96:                                               ; preds = %90
  %97 = and i32 %44, -2
  br label %98

98:                                               ; preds = %372, %96
  %99 = phi i32 [ 0, %96 ], [ %374, %372 ]
  %100 = phi i32 [ 0, %96 ], [ %373, %372 ]
  %101 = phi i32 [ %97, %96 ], [ %375, %372 ]
  %102 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %99, i32 2
  %103 = load i32, i32* %102, align 4, !tbaa !28
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %99, i32 1
  %107 = load i32, i32* %106, align 4, !tbaa !31
  %108 = add nsw i32 %107, -1
  %109 = mul nsw i32 %108, %103
  %110 = add nsw i32 %109, %100
  br label %111

111:                                              ; preds = %105, %98
  %112 = phi i32 [ %110, %105 ], [ %100, %98 ]
  %113 = or i32 %99, 1
  %114 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %113, i32 2
  %115 = load i32, i32* %114, align 4, !tbaa !28
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %366, label %372

117:                                              ; preds = %372, %90
  %118 = phi i32 [ undef, %90 ], [ %373, %372 ]
  %119 = phi i32 [ 0, %90 ], [ %374, %372 ]
  %120 = phi i32 [ 0, %90 ], [ %373, %372 ]
  %121 = icmp eq i32 %94, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %119, i32 2
  %124 = load i32, i32* %123, align 4, !tbaa !28
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %119, i32 1
  %128 = load i32, i32* %127, align 4, !tbaa !31
  %129 = add nsw i32 %128, -1
  %130 = mul nsw i32 %129, %124
  %131 = add nsw i32 %130, %120
  br label %132

132:                                              ; preds = %117, %122, %126, %46
  %133 = phi i8 [ %48, %46 ], [ %93, %126 ], [ %93, %122 ], [ %93, %117 ]
  %134 = phi i32 [ 0, %46 ], [ %91, %126 ], [ %91, %122 ], [ %91, %117 ]
  %135 = phi i32 [ 0, %46 ], [ %118, %117 ], [ %131, %126 ], [ %120, %122 ]
  %136 = zext i8 %133 to i32
  %137 = add nuw nsw i32 %136, 7
  %138 = lshr i32 %137, 3
  %139 = add nsw i32 %134, 1
  %140 = sub i32 %139, %135
  %141 = mul i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@KLGLJOPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %144

144:                                              ; preds = %143, %132
  %145 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %146 = load i64, i64* %145, align 8, !tbaa !22
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %43, align 4, !tbaa !24
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %159

153:                                              ; preds = %144
  %154 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %141) #8
  br i1 %154, label %362, label %155

155:                                              ; preds = %153
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @"??_C@_0IP@GPNAIHNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %362

156:                                              ; preds = %168, %148
  %157 = call i8* @malloc(i32 16) #7
  %158 = icmp eq i8* %157, null
  br i1 %158, label %362, label %172

159:                                              ; preds = %151, %168
  %160 = phi i32 [ %149, %151 ], [ %169, %168 ]
  %161 = phi i32 [ 0, %151 ], [ %170, %168 ]
  %162 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %152, align 8, !tbaa !25
  %163 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %162, i32 %161, i32 2
  %164 = load i32, i32* %163, align 4, !tbaa !28
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DEPPOMDI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  %167 = load i32, i32* %43, align 4, !tbaa !24
  br label %168

168:                                              ; preds = %159, %166
  %169 = phi i32 [ %160, %159 ], [ %167, %166 ]
  %170 = add nuw nsw i32 %161, 1
  %171 = icmp slt i32 %170, %169
  br i1 %171, label %159, label %156, !llvm.loop !104

172:                                              ; preds = %156
  %173 = bitcast %struct._cl_image_format* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %173) #9
  %174 = bitcast %struct._cl_image_desc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %174) #9
  %175 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %175) #9
  %176 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0
  %177 = bitcast i8* %176 to i32*
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %6, align 4
  %179 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i32 0, i32 1
  store i32 65535, i32* %179, align 4, !tbaa !105
  %180 = trunc i32 %178 to i8
  %181 = lshr i32 %178, 8
  %182 = trunc i32 %181 to i8
  switch i8 %180, label %191 [
    i8 0, label %183
    i8 1, label %186
    i8 2, label %189
  ]

183:                                              ; preds = %172
  switch i8 %182, label %191 [
    i8 8, label %209
    i8 16, label %184
    i8 32, label %185
  ]

184:                                              ; preds = %183
  br label %209

185:                                              ; preds = %183
  br label %209

186:                                              ; preds = %172
  switch i8 %182, label %191 [
    i8 8, label %209
    i8 16, label %187
    i8 32, label %188
  ]

187:                                              ; preds = %186
  br label %209

188:                                              ; preds = %186
  br label %209

189:                                              ; preds = %172
  switch i8 %182, label %191 [
    i8 16, label %209
    i8 32, label %190
  ]

190:                                              ; preds = %189
  br label %209

191:                                              ; preds = %183, %186, %172, %189
  %192 = call i8* @malloc(i32 1024) #7
  %193 = icmp eq i8* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, i8* %192, i32 1023
  store i8 0, i8* %195, align 1, !tbaa !37
  br label %196

196:                                              ; preds = %191, %194
  %197 = phi i8* [ %195, %194 ], [ null, %191 ]
  %198 = call i8* @halide_string_to_string(i8* %192, i8* %197, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @"??_C@_0CP@JFFADFI@Unhandled?5datatype?5for?5opencl?5te@", i32 0, i32 0)) #7
  %199 = call i8* @halide_type_to_string(i8* %198, i8* %197, %struct.halide_type_t* nonnull %7) #7
  br i1 %193, label %200, label %201

200:                                              ; preds = %196
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %208

201:                                              ; preds = %196
  %202 = ptrtoint i8* %199 to i32
  %203 = ptrtoint i8* %192 to i32
  %204 = add i32 %202, 1
  %205 = sub i32 %204, %203
  %206 = sext i32 %205 to i64
  %207 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %192, i64 %206) #7
  call void @halide_error(i8* %0, i8* nonnull %192) #7
  br label %208

208:                                              ; preds = %201, %200
  call void @free(i8* %192) #7
  br label %360

209:                                              ; preds = %189, %186, %183, %187, %188, %190, %185, %184
  %210 = phi i32 [ 4315, %187 ], [ 4316, %188 ], [ 4318, %190 ], [ 4313, %185 ], [ 4312, %184 ], [ 4311, %183 ], [ 4314, %186 ], [ 4317, %189 ]
  store i32 %210, i32* %179, align 4, !tbaa !105
  %211 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i32 0, i32 0
  store i32 4272, i32* %211, align 4, !tbaa !107
  %212 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %213 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %212, align 8, !tbaa !25
  %214 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4, !tbaa !28
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %235

217:                                              ; preds = %209
  %218 = load i32, i32* %43, align 4, !tbaa !24
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %250

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 1, i32 2
  %222 = load i32, i32* %221, align 4, !tbaa !28
  %223 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 0, i32 1
  %224 = load i32, i32* %223, align 4, !tbaa !31
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = icmp sgt i32 %218, 2
  br i1 %227, label %228, label %253

228:                                              ; preds = %226
  %229 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 2, i32 2
  %230 = load i32, i32* %229, align 4, !tbaa !28
  %231 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 1, i32 1
  %232 = load i32, i32* %231, align 4, !tbaa !31
  %233 = mul nsw i32 %232, %222
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %250, label %235

235:                                              ; preds = %228, %220, %209
  %236 = call i8* @malloc(i32 1024) #7
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i8* @halide_string_to_string(i8* %236, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %249

240:                                              ; preds = %235
  %241 = getelementptr inbounds i8, i8* %236, i32 1023
  store i8 0, i8* %241, align 1, !tbaa !37
  %242 = call i8* @halide_string_to_string(i8* nonnull %236, i8* nonnull %241, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@", i32 0, i32 0)) #7
  %243 = ptrtoint i8* %242 to i32
  %244 = ptrtoint i8* %236 to i32
  %245 = add i32 %243, 1
  %246 = sub i32 %245, %244
  %247 = sext i32 %246 to i64
  %248 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %236, i64 %247) #7
  call void @halide_error(i8* %0, i8* nonnull %236) #7
  br label %249

249:                                              ; preds = %240, %238
  call void @free(i8* %236) #7
  br label %360

250:                                              ; preds = %217, %228
  switch i32 %218, label %262 [
    i32 1, label %251
    i32 3, label %260
  ]

251:                                              ; preds = %250
  %252 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4340, i32* %252, align 4, !tbaa !108
  br label %277

253:                                              ; preds = %226
  %254 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4337, i32* %254, align 4, !tbaa !108
  %255 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 0, i32 1
  %256 = load i32, i32* %255, align 4, !tbaa !31
  %257 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 1
  store i32 %256, i32* %257, align 4, !tbaa !110
  %258 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 1, i32 1
  %259 = load i32, i32* %258, align 4, !tbaa !31
  br label %284

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4338, i32* %261, align 4, !tbaa !108
  br label %277

262:                                              ; preds = %250
  %263 = call i8* @malloc(i32 1024) #7
  %264 = icmp eq i8* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = call i8* @halide_string_to_string(i8* %263, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %276

267:                                              ; preds = %262
  %268 = getelementptr inbounds i8, i8* %263, i32 1023
  store i8 0, i8* %268, align 1, !tbaa !37
  %269 = call i8* @halide_string_to_string(i8* nonnull %263, i8* nonnull %268, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@", i32 0, i32 0)) #7
  %270 = ptrtoint i8* %269 to i32
  %271 = ptrtoint i8* %263 to i32
  %272 = add i32 %270, 1
  %273 = sub i32 %272, %271
  %274 = sext i32 %273 to i64
  %275 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %263, i64 %274) #7
  call void @halide_error(i8* %0, i8* nonnull %263) #7
  br label %276

276:                                              ; preds = %267, %265
  call void @free(i8* %263) #7
  br label %360

277:                                              ; preds = %260, %251
  %278 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 0, i32 1
  %279 = load i32, i32* %278, align 4, !tbaa !31
  %280 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 1
  store i32 %279, i32* %280, align 4, !tbaa !110
  br i1 %219, label %281, label %284

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %213, i32 1, i32 1
  %283 = load i32, i32* %282, align 4, !tbaa !31
  br label %284

284:                                              ; preds = %277, %253, %281
  %285 = phi i32 [ %259, %253 ], [ %283, %281 ], [ 1, %277 ]
  %286 = phi i32 [ 1, %253 ], [ %283, %281 ], [ 1, %277 ]
  %287 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 2
  store i32 %285, i32* %287, align 4, !tbaa !111
  %288 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 3
  store i32 %286, i32* %288, align 4, !tbaa !112
  %289 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 4
  store i32 1, i32* %289, align 4, !tbaa !113
  %290 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 5
  store i32 0, i32* %290, align 4, !tbaa !114
  %291 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 6
  store i32 0, i32* %291, align 4, !tbaa !115
  %292 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 7
  store i32 0, i32* %292, align 4, !tbaa !116
  %293 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 8
  store i32 0, i32* %293, align 4, !tbaa !117
  %294 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 9
  store %struct._cl_mem* null, %struct._cl_mem** %294, align 4, !tbaa !118
  %295 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %295) #9
  %296 = load %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_mem@@PAU_cl_context@@_KPBU_cl_image_format@@PBU_cl_image_desc@@PAXPAH@ZA", align 4, !tbaa !38
  %297 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !69
  %298 = call x86_stdcallcc %struct._cl_mem* %296(%struct._cl_context* %297, i64 1, %struct._cl_image_format* nonnull %4, %struct._cl_image_desc* nonnull %5, i8* null, i32* nonnull %8) #7
  %299 = load i32, i32* %8, align 4, !tbaa !44
  %300 = icmp ne i32 %299, 0
  %301 = icmp eq %struct._cl_mem* %298, null
  %302 = or i1 %301, %300
  br i1 %302, label %303, label %346

303:                                              ; preds = %284
  %304 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %299) #8
  %305 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %305) #9
  %306 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3
  store i8* %0, i8** %306, align 4, !tbaa !45
  %307 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4
  store i8 1, i8* %307, align 4, !tbaa !47
  %308 = call i8* @malloc(i32 1024) #7
  %309 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0
  store i8* %308, i8** %309, align 4, !tbaa !48
  %310 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1
  store i8* %308, i8** %310, align 4, !tbaa !49
  %311 = icmp eq i8* %308, null
  br i1 %311, label %314, label %312

312:                                              ; preds = %303
  %313 = getelementptr inbounds i8, i8* %308, i32 1023
  store i8 0, i8* %313, align 1, !tbaa !37
  br label %314

314:                                              ; preds = %303, %312
  %315 = phi i8* [ %313, %312 ], [ null, %303 ]
  %316 = call i8* @halide_string_to_string(i8* %308, i8* %315, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@NNHHKBND@CL?3?5clCreateImage?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %317 = load i32, i32* %8, align 4, !tbaa !44
  %318 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %317) #8
  %319 = icmp eq i8* %318, null
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = call i8* @halide_string_to_string(i8* %316, i8* %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %324

322:                                              ; preds = %314
  %323 = call i8* @halide_string_to_string(i8* %316, i8* %315, i8* nonnull %318) #7
  br label %324

324:                                              ; preds = %320, %322
  %325 = phi i8* [ %323, %322 ], [ %321, %320 ]
  %326 = load i8*, i8** %309, align 4, !tbaa !48
  %327 = icmp eq i8* %326, null
  %328 = load i8*, i8** %306, align 4, !tbaa !45
  br i1 %327, label %329, label %330

329:                                              ; preds = %324
  call void @halide_error(i8* %328, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %339

330:                                              ; preds = %324
  %331 = ptrtoint i8* %325 to i32
  %332 = ptrtoint i8* %326 to i32
  %333 = sub i32 1, %332
  %334 = add i32 %333, %331
  %335 = sext i32 %334 to i64
  %336 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %328, i8* nonnull %326, i64 %335) #7
  %337 = load i8*, i8** %309, align 4, !tbaa !48
  %338 = load i8*, i8** %306, align 4, !tbaa !45
  call void @halide_error(i8* %338, i8* %337) #7
  br label %339

339:                                              ; preds = %330, %329
  %340 = load i8, i8* %307, align 4, !tbaa !47, !range !42
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %339
  %343 = load i8*, i8** %309, align 4, !tbaa !48
  call void @free(i8* %343) #7
  br label %344

344:                                              ; preds = %339, %342
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %305) #9
  call void @free(i8* nonnull %157) #7
  %345 = load i32, i32* %8, align 4, !tbaa !44
  br label %358

346:                                              ; preds = %284
  %347 = getelementptr inbounds i8, i8* %157, i32 8
  %348 = bitcast i8* %347 to %struct._cl_mem**
  store %struct._cl_mem* %298, %struct._cl_mem** %348, align 8, !tbaa !53
  %349 = bitcast i8* %157 to i64*
  store i64 0, i64* %349, align 8, !tbaa !55
  %350 = ptrtoint i8* %157 to i32
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %145, align 8, !tbaa !22
  %352 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %352, align 8, !tbaa !72
  %353 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !73
  %354 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %353, i32 0, i32 0
  %355 = load void ()*, void ()** %354, align 4, !tbaa !91
  call void %355() #7
  %356 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPAXPAUhalide_buffer_t@@I@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %141) #8
  br i1 %356, label %358, label %357

357:                                              ; preds = %346
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @"??_C@_0IP@NEAAEKKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  call void @abort() #7
  br label %358

358:                                              ; preds = %346, %357, %344
  %359 = phi i32 [ %345, %344 ], [ 0, %357 ], [ 0, %346 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %295) #9
  br label %360

360:                                              ; preds = %358, %276, %249, %208
  %361 = phi i32 [ -16, %208 ], [ -16, %249 ], [ %359, %358 ], [ -16, %276 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %175) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %174) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %173) #9
  br label %362

362:                                              ; preds = %39, %155, %153, %156, %360, %40
  %363 = phi i32 [ %19, %40 ], [ 0, %155 ], [ 0, %153 ], [ %361, %360 ], [ -6, %156 ], [ -1, %39 ]
  %364 = load i8*, i8** %11, align 4, !tbaa !67
  %365 = call i32 @halide_release_cl_context(i8* %364) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  ret i32 %363

366:                                              ; preds = %111
  %367 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %113, i32 1
  %368 = load i32, i32* %367, align 4, !tbaa !31
  %369 = add nsw i32 %368, -1
  %370 = mul nsw i32 %369, %115
  %371 = add nsw i32 %370, %112
  br label %372

372:                                              ; preds = %366, %111
  %373 = phi i32 [ %371, %366 ], [ %112, %111 ]
  %374 = add nuw nsw i32 %99, 2
  %375 = add i32 %101, -2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %117, label %98, !llvm.loop !92

377:                                              ; preds = %69
  %378 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %71, i32 1
  %379 = load i32, i32* %378, align 4, !tbaa !31
  %380 = add nsw i32 %379, -1
  %381 = mul nsw i32 %380, %73
  %382 = add nsw i32 %381, %70
  br label %383

383:                                              ; preds = %377, %69
  %384 = phi i32 [ %382, %377 ], [ %70, %69 ]
  %385 = add nuw nsw i32 %57, 2
  %386 = add i32 %59, -2
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %75, label %56, !llvm.loop !93
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %12 = icmp eq %struct.halide_device_interface_t* %2, null
  %13 = icmp eq %struct.halide_device_interface_t* %2, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @"??_C@_0LI@BANCPNKE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %18 = load i64, i64* %17, align 8, !tbaa !95
  %19 = and i64 %18, 2
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %23 = load i8*, i8** %22, align 4, !tbaa !15
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !72
  %28 = icmp eq %struct.halide_device_interface_t* %27, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  br i1 %13, label %624, label %30

30:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @"??_C@_0JF@GOJCIKCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %624

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %33 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %32, align 8, !tbaa !72
  %34 = icmp eq %struct.halide_device_interface_t* %33, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %34, label %35, label %47

35:                                               ; preds = %25, %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !22
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = and i64 %18, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %44 = load i8*, i8** %43, align 4, !tbaa !15
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %42
  br label %47

47:                                               ; preds = %46, %31, %35, %42
  %48 = phi i1 [ true, %42 ], [ false, %46 ], [ true, %35 ], [ true, %31 ]
  br i1 %12, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@BDNGEHJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %54

54:                                               ; preds = %53, %49, %47
  %55 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %55) #9
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %48, %struct.halide_buffer_t* %3, i1 zeroext %12) #8
  %56 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #9
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 0
  store i8* %0, i8** %57, align 4, !tbaa !67
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %58, align 4, !tbaa !69
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %59, align 4, !tbaa !70
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 3
  store i32 0, i32* %60, align 4, !tbaa !71
  %61 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6GPAU_cl_context@@PBHIPBQAU_cl_device_id@@P6GXPBDPBXIPAX@Z4PAH@ZA", align 4, !tbaa !38
  %62 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #7
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %58, %struct._cl_command_queue** nonnull %59, i1 zeroext true) #7
  store i32 %65, i32* %60, align 4, !tbaa !71
  %66 = load %struct._cl_context*, %struct._cl_context** %58, align 4, !tbaa !69
  %67 = icmp eq %struct._cl_context* %66, null
  %68 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 4
  %69 = icmp eq %struct._cl_command_queue* %68, null
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = call i8* @malloc(i32 1024) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %85

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i32 1023
  store i8 0, i8* %77, align 1, !tbaa !37
  %78 = call i8* @halide_string_to_string(i8* nonnull %72, i8* nonnull %77, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i32 0, i32 0)) #7
  %79 = ptrtoint i8* %78 to i32
  %80 = ptrtoint i8* %72 to i32
  %81 = sub i32 1, %80
  %82 = add i32 %81, %79
  %83 = sext i32 %82 to i64
  %84 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %83) #7
  call void @halide_error(i8* %0, i8* nonnull %72) #7
  br label %85

85:                                               ; preds = %74, %76
  call void @free(i8* %72) #7
  store i32 -1, i32* %60, align 4, !tbaa !71
  br label %620

86:                                               ; preds = %64
  %87 = icmp eq i32 %65, 0
  br i1 %87, label %88, label %620

88:                                               ; preds = %86
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1
  %91 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %92 = load i32, i32* %91, align 4, !tbaa !24
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %96 = load i8, i8* %95, align 1, !tbaa !23
  br label %180

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %99 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %98, align 8, !tbaa !25
  %100 = and i32 %92, 1
  %101 = icmp eq i32 %92, 1
  br i1 %101, label %123, label %102

102:                                              ; preds = %97
  %103 = and i32 %92, -2
  br label %104

104:                                              ; preds = %687, %102
  %105 = phi i32 [ 0, %102 ], [ %689, %687 ]
  %106 = phi i32 [ 0, %102 ], [ %688, %687 ]
  %107 = phi i32 [ %103, %102 ], [ %690, %687 ]
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %105, i32 2
  %109 = load i32, i32* %108, align 4, !tbaa !28
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %105, i32 1
  %113 = load i32, i32* %112, align 4, !tbaa !31
  %114 = add nsw i32 %113, -1
  %115 = mul nsw i32 %114, %109
  %116 = add nsw i32 %115, %106
  br label %117

117:                                              ; preds = %111, %104
  %118 = phi i32 [ %116, %111 ], [ %106, %104 ]
  %119 = or i32 %105, 1
  %120 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %119, i32 2
  %121 = load i32, i32* %120, align 4, !tbaa !28
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %681, label %687

123:                                              ; preds = %687, %97
  %124 = phi i32 [ undef, %97 ], [ %688, %687 ]
  %125 = phi i32 [ 0, %97 ], [ %689, %687 ]
  %126 = phi i32 [ 0, %97 ], [ %688, %687 ]
  %127 = icmp eq i32 %100, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %125, i32 2
  %130 = load i32, i32* %129, align 4, !tbaa !28
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %125, i32 1
  %134 = load i32, i32* %133, align 4, !tbaa !31
  %135 = add nsw i32 %134, -1
  %136 = mul nsw i32 %135, %130
  %137 = add nsw i32 %136, %126
  br label %138

138:                                              ; preds = %132, %128, %123
  %139 = phi i32 [ %124, %123 ], [ %137, %132 ], [ %126, %128 ]
  %140 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %141 = load i8, i8* %140, align 1, !tbaa !23
  %142 = and i32 %92, 1
  %143 = icmp eq i32 %92, 1
  br i1 %143, label %165, label %144

144:                                              ; preds = %138
  %145 = and i32 %92, -2
  br label %146

146:                                              ; preds = %676, %144
  %147 = phi i32 [ 0, %144 ], [ %678, %676 ]
  %148 = phi i32 [ 0, %144 ], [ %677, %676 ]
  %149 = phi i32 [ %145, %144 ], [ %679, %676 ]
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %147, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !28
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %147, i32 1
  %155 = load i32, i32* %154, align 4, !tbaa !31
  %156 = add nsw i32 %155, -1
  %157 = mul nsw i32 %156, %151
  %158 = add nsw i32 %157, %148
  br label %159

159:                                              ; preds = %153, %146
  %160 = phi i32 [ %158, %153 ], [ %148, %146 ]
  %161 = or i32 %147, 1
  %162 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %161, i32 2
  %163 = load i32, i32* %162, align 4, !tbaa !28
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %670, label %676

165:                                              ; preds = %676, %138
  %166 = phi i32 [ undef, %138 ], [ %677, %676 ]
  %167 = phi i32 [ 0, %138 ], [ %678, %676 ]
  %168 = phi i32 [ 0, %138 ], [ %677, %676 ]
  %169 = icmp eq i32 %142, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %167, i32 2
  %172 = load i32, i32* %171, align 4, !tbaa !28
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %167, i32 1
  %176 = load i32, i32* %175, align 4, !tbaa !31
  %177 = add nsw i32 %176, -1
  %178 = mul nsw i32 %177, %172
  %179 = add nsw i32 %178, %168
  br label %180

180:                                              ; preds = %165, %170, %174, %94
  %181 = phi i8 [ %96, %94 ], [ %141, %174 ], [ %141, %170 ], [ %141, %165 ]
  %182 = phi i32 [ 0, %94 ], [ %139, %174 ], [ %139, %170 ], [ %139, %165 ]
  %183 = phi i32 [ 0, %94 ], [ %166, %165 ], [ %179, %174 ], [ %168, %170 ]
  %184 = zext i8 %181 to i32
  %185 = add nuw nsw i32 %184, 7
  %186 = lshr i32 %185, 3
  %187 = add nsw i32 %182, 1
  %188 = sub i32 %187, %183
  %189 = mul i32 %188, %186
  %190 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %191 = load i32, i32* %190, align 4, !tbaa !24
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %180
  %194 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %195 = load i8, i8* %194, align 1, !tbaa !23
  br label %279

196:                                              ; preds = %180
  %197 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %198 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %197, align 8, !tbaa !25
  %199 = and i32 %191, 1
  %200 = icmp eq i32 %191, 1
  br i1 %200, label %222, label %201

201:                                              ; preds = %196
  %202 = and i32 %191, -2
  br label %203

203:                                              ; preds = %665, %201
  %204 = phi i32 [ 0, %201 ], [ %667, %665 ]
  %205 = phi i32 [ 0, %201 ], [ %666, %665 ]
  %206 = phi i32 [ %202, %201 ], [ %668, %665 ]
  %207 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %204, i32 2
  %208 = load i32, i32* %207, align 4, !tbaa !28
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %204, i32 1
  %212 = load i32, i32* %211, align 4, !tbaa !31
  %213 = add nsw i32 %212, -1
  %214 = mul nsw i32 %213, %208
  %215 = add nsw i32 %214, %205
  br label %216

216:                                              ; preds = %210, %203
  %217 = phi i32 [ %215, %210 ], [ %205, %203 ]
  %218 = or i32 %204, 1
  %219 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %218, i32 2
  %220 = load i32, i32* %219, align 4, !tbaa !28
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %659, label %665

222:                                              ; preds = %665, %196
  %223 = phi i32 [ undef, %196 ], [ %666, %665 ]
  %224 = phi i32 [ 0, %196 ], [ %667, %665 ]
  %225 = phi i32 [ 0, %196 ], [ %666, %665 ]
  %226 = icmp eq i32 %199, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %224, i32 2
  %229 = load i32, i32* %228, align 4, !tbaa !28
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %224, i32 1
  %233 = load i32, i32* %232, align 4, !tbaa !31
  %234 = add nsw i32 %233, -1
  %235 = mul nsw i32 %234, %229
  %236 = add nsw i32 %235, %225
  br label %237

237:                                              ; preds = %231, %227, %222
  %238 = phi i32 [ %223, %222 ], [ %236, %231 ], [ %225, %227 ]
  %239 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %240 = load i8, i8* %239, align 1, !tbaa !23
  %241 = and i32 %191, 1
  %242 = icmp eq i32 %191, 1
  br i1 %242, label %264, label %243

243:                                              ; preds = %237
  %244 = and i32 %191, -2
  br label %245

245:                                              ; preds = %654, %243
  %246 = phi i32 [ 0, %243 ], [ %656, %654 ]
  %247 = phi i32 [ 0, %243 ], [ %655, %654 ]
  %248 = phi i32 [ %244, %243 ], [ %657, %654 ]
  %249 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %246, i32 2
  %250 = load i32, i32* %249, align 4, !tbaa !28
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %246, i32 1
  %254 = load i32, i32* %253, align 4, !tbaa !31
  %255 = add nsw i32 %254, -1
  %256 = mul nsw i32 %255, %250
  %257 = add nsw i32 %256, %247
  br label %258

258:                                              ; preds = %252, %245
  %259 = phi i32 [ %257, %252 ], [ %247, %245 ]
  %260 = or i32 %246, 1
  %261 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %260, i32 2
  %262 = load i32, i32* %261, align 4, !tbaa !28
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %648, label %654

264:                                              ; preds = %654, %237
  %265 = phi i32 [ undef, %237 ], [ %655, %654 ]
  %266 = phi i32 [ 0, %237 ], [ %656, %654 ]
  %267 = phi i32 [ 0, %237 ], [ %655, %654 ]
  %268 = icmp eq i32 %241, 0
  br i1 %268, label %279, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %266, i32 2
  %271 = load i32, i32* %270, align 4, !tbaa !28
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %266, i32 1
  %275 = load i32, i32* %274, align 4, !tbaa !31
  %276 = add nsw i32 %275, -1
  %277 = mul nsw i32 %276, %271
  %278 = add nsw i32 %277, %267
  br label %279

279:                                              ; preds = %264, %269, %273, %193
  %280 = phi i8 [ %195, %193 ], [ %240, %273 ], [ %240, %269 ], [ %240, %264 ]
  %281 = phi i32 [ 0, %193 ], [ %238, %273 ], [ %238, %269 ], [ %238, %264 ]
  %282 = phi i32 [ 0, %193 ], [ %265, %264 ], [ %278, %273 ], [ %267, %269 ]
  %283 = zext i8 %280 to i32
  %284 = add nuw nsw i32 %283, 7
  %285 = lshr i32 %284, 3
  %286 = add nsw i32 %281, 1
  %287 = sub i32 %286, %282
  %288 = mul i32 %287, %285
  %289 = icmp eq i32 %189, %288
  br i1 %289, label %290, label %382

290:                                              ; preds = %279
  %291 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 6
  %292 = load i64, i64* %291, align 8, !tbaa !12
  br i1 %93, label %293, label %374

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %295 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %294, align 8, !tbaa !25
  %296 = and i32 %92, 1
  %297 = icmp eq i32 %92, 1
  br i1 %297, label %319, label %298

298:                                              ; preds = %293
  %299 = and i32 %92, -2
  br label %300

300:                                              ; preds = %643, %298
  %301 = phi i32 [ 0, %298 ], [ %645, %643 ]
  %302 = phi i32 [ 0, %298 ], [ %644, %643 ]
  %303 = phi i32 [ %299, %298 ], [ %646, %643 ]
  %304 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %301, i32 2
  %305 = load i32, i32* %304, align 4, !tbaa !28
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %301, i32 1
  %309 = load i32, i32* %308, align 4, !tbaa !31
  %310 = add nsw i32 %309, -1
  %311 = mul nsw i32 %310, %305
  %312 = add nsw i32 %311, %302
  br label %313

313:                                              ; preds = %307, %300
  %314 = phi i32 [ %312, %307 ], [ %302, %300 ]
  %315 = or i32 %301, 1
  %316 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %315, i32 2
  %317 = load i32, i32* %316, align 4, !tbaa !28
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %637, label %643

319:                                              ; preds = %643, %293
  %320 = phi i32 [ undef, %293 ], [ %644, %643 ]
  %321 = phi i32 [ 0, %293 ], [ %645, %643 ]
  %322 = phi i32 [ 0, %293 ], [ %644, %643 ]
  %323 = icmp eq i32 %296, 0
  br i1 %323, label %334, label %324

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %321, i32 2
  %326 = load i32, i32* %325, align 4, !tbaa !28
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %321, i32 1
  %330 = load i32, i32* %329, align 4, !tbaa !31
  %331 = add nsw i32 %330, -1
  %332 = mul nsw i32 %331, %326
  %333 = add nsw i32 %332, %322
  br label %334

334:                                              ; preds = %328, %324, %319
  %335 = phi i32 [ %320, %319 ], [ %333, %328 ], [ %322, %324 ]
  %336 = and i32 %92, 1
  %337 = icmp eq i32 %92, 1
  br i1 %337, label %359, label %338

338:                                              ; preds = %334
  %339 = and i32 %92, -2
  br label %340

340:                                              ; preds = %632, %338
  %341 = phi i32 [ 0, %338 ], [ %634, %632 ]
  %342 = phi i32 [ 0, %338 ], [ %633, %632 ]
  %343 = phi i32 [ %339, %338 ], [ %635, %632 ]
  %344 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %341, i32 2
  %345 = load i32, i32* %344, align 4, !tbaa !28
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %341, i32 1
  %349 = load i32, i32* %348, align 4, !tbaa !31
  %350 = add nsw i32 %349, -1
  %351 = mul nsw i32 %350, %345
  %352 = add nsw i32 %351, %342
  br label %353

353:                                              ; preds = %347, %340
  %354 = phi i32 [ %352, %347 ], [ %342, %340 ]
  %355 = or i32 %341, 1
  %356 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %355, i32 2
  %357 = load i32, i32* %356, align 4, !tbaa !28
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %626, label %632

359:                                              ; preds = %632, %334
  %360 = phi i32 [ undef, %334 ], [ %633, %632 ]
  %361 = phi i32 [ 0, %334 ], [ %634, %632 ]
  %362 = phi i32 [ 0, %334 ], [ %633, %632 ]
  %363 = icmp eq i32 %336, 0
  br i1 %363, label %374, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %361, i32 2
  %366 = load i32, i32* %365, align 4, !tbaa !28
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %361, i32 1
  %370 = load i32, i32* %369, align 4, !tbaa !31
  %371 = add nsw i32 %370, -1
  %372 = mul nsw i32 %371, %366
  %373 = add nsw i32 %372, %362
  br label %374

374:                                              ; preds = %359, %364, %368, %290
  %375 = phi i32 [ 0, %290 ], [ %335, %368 ], [ %335, %364 ], [ %335, %359 ]
  %376 = phi i32 [ 0, %290 ], [ %360, %359 ], [ %373, %368 ], [ %362, %364 ]
  %377 = add nsw i32 %375, 1
  %378 = sub i32 %377, %376
  %379 = mul i32 %378, %186
  %380 = zext i32 %379 to i64
  %381 = icmp eq i64 %292, %380
  br i1 %381, label %397, label %382

382:                                              ; preds = %374, %279
  %383 = call i8* @malloc(i32 1024) #7
  %384 = icmp eq i8* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = call i8* @halide_string_to_string(i8* %383, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %396

387:                                              ; preds = %382
  %388 = getelementptr inbounds i8, i8* %383, i32 1023
  store i8 0, i8* %388, align 1, !tbaa !37
  %389 = call i8* @halide_string_to_string(i8* nonnull %383, i8* nonnull %388, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@", i32 0, i32 0)) #7
  %390 = ptrtoint i8* %389 to i32
  %391 = ptrtoint i8* %383 to i32
  %392 = add i32 %390, 1
  %393 = sub i32 %392, %391
  %394 = sext i32 %393 to i64
  %395 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %383, i64 %394) #7
  call void @halide_error(i8* %0, i8* nonnull %383) #7
  br label %396

396:                                              ; preds = %387, %385
  call void @free(i8* %383) #7
  br label %620

397:                                              ; preds = %374
  %398 = xor i1 %12, true
  %399 = or i1 %48, %398
  br i1 %399, label %475, label %400

400:                                              ; preds = %397
  %401 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %401) #9
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %401, i8 0, i32 12, i1 false)
  %402 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %402) #9
  %403 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 0
  %404 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %405 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %404, align 8, !tbaa !25
  %406 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4, !tbaa !31
  store i32 %407, i32* %403, align 4, !tbaa !44
  %408 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 1
  %409 = icmp sgt i32 %191, 1
  br i1 %409, label %410, label %415

410:                                              ; preds = %400
  %411 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 1, i32 1
  %412 = load i32, i32* %411, align 4, !tbaa !31
  store i32 %412, i32* %408, align 4, !tbaa !44
  %413 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 2
  %414 = icmp eq i32 %191, 2
  br i1 %414, label %417, label %422

415:                                              ; preds = %400
  store i32 1, i32* %408, align 4, !tbaa !44
  %416 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 2
  store i32 1, i32* %416, align 4, !tbaa !44
  br label %464

417:                                              ; preds = %410
  store i32 1, i32* %413, align 4, !tbaa !44
  %418 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 1, i32 2
  %419 = load i32, i32* %418, align 4, !tbaa !28
  %420 = load i32, i32* %406, align 4, !tbaa !31
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %464, label %429

422:                                              ; preds = %410
  %423 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 2, i32 1
  %424 = load i32, i32* %423, align 4, !tbaa !31
  store i32 %424, i32* %413, align 4, !tbaa !44
  %425 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 1, i32 2
  %426 = load i32, i32* %425, align 4, !tbaa !28
  %427 = load i32, i32* %406, align 4, !tbaa !31
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %443, label %429

429:                                              ; preds = %422, %417
  %430 = call i8* @malloc(i32 1024) #7
  %431 = icmp eq i8* %430, null
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = call i8* @halide_string_to_string(i8* %430, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %462

434:                                              ; preds = %429
  %435 = getelementptr inbounds i8, i8* %430, i32 1023
  store i8 0, i8* %435, align 1, !tbaa !37
  %436 = call i8* @halide_string_to_string(i8* nonnull %430, i8* nonnull %435, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  %437 = ptrtoint i8* %436 to i32
  %438 = ptrtoint i8* %430 to i32
  %439 = add i32 %437, 1
  %440 = sub i32 %439, %438
  %441 = sext i32 %440 to i64
  %442 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %430, i64 %441) #7
  call void @halide_error(i8* %0, i8* nonnull %430) #7
  br label %462

443:                                              ; preds = %422
  %444 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %405, i32 2, i32 2
  %445 = load i32, i32* %444, align 4, !tbaa !28
  %446 = mul nsw i32 %412, %426
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %464, label %448

448:                                              ; preds = %443
  %449 = call i8* @malloc(i32 1024) #7
  %450 = icmp eq i8* %449, null
  br i1 %450, label %451, label %453

451:                                              ; preds = %448
  %452 = call i8* @halide_string_to_string(i8* %449, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %462

453:                                              ; preds = %448
  %454 = getelementptr inbounds i8, i8* %449, i32 1023
  store i8 0, i8* %454, align 1, !tbaa !37
  %455 = call i8* @halide_string_to_string(i8* nonnull %449, i8* nonnull %454, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  %456 = ptrtoint i8* %455 to i32
  %457 = ptrtoint i8* %449 to i32
  %458 = add i32 %456, 1
  %459 = sub i32 %458, %457
  %460 = sext i32 %459 to i64
  %461 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %449, i64 %460) #7
  call void @halide_error(i8* %0, i8* nonnull %449) #7
  br label %462

462:                                              ; preds = %451, %453, %432, %434
  %463 = phi i8* [ %430, %434 ], [ %430, %432 ], [ %449, %453 ], [ %449, %451 ]
  call void @free(i8* %463) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %402) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %401) #9
  br label %620

464:                                              ; preds = %417, %415, %443
  %465 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPAXIPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %466 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  %467 = load i8*, i8** %466, align 4, !tbaa !15
  %468 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i32 0, i32 0
  %469 = load i64, i64* %89, align 8, !tbaa !9
  %470 = trunc i64 %469 to i32
  %471 = inttoptr i32 %470 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %472 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %471, i32 0, i32 1
  %473 = load %struct._cl_mem*, %struct._cl_mem** %472, align 8, !tbaa !53
  %474 = call x86_stdcallcc i32 %465(%struct._cl_command_queue* %68, %struct._cl_mem* %473, i32 0, i32* nonnull %468, i32* nonnull %403, i32 0, i32 0, i8* %467, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %402) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %401) #9
  br label %570

475:                                              ; preds = %397
  %476 = xor i1 %48, true
  %477 = or i1 %12, %476
  br i1 %477, label %553, label %478

478:                                              ; preds = %475
  %479 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %479) #9
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %479, i8 0, i32 12, i1 false)
  %480 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %480) #9
  %481 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 0
  %482 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %483 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %482, align 8, !tbaa !25
  %484 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4, !tbaa !31
  store i32 %485, i32* %481, align 4, !tbaa !44
  %486 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 1
  %487 = icmp sgt i32 %92, 1
  br i1 %487, label %488, label %493

488:                                              ; preds = %478
  %489 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 1, i32 1
  %490 = load i32, i32* %489, align 4, !tbaa !31
  store i32 %490, i32* %486, align 4, !tbaa !44
  %491 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 2
  %492 = icmp eq i32 %92, 2
  br i1 %492, label %495, label %500

493:                                              ; preds = %478
  store i32 1, i32* %486, align 4, !tbaa !44
  %494 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 2
  store i32 1, i32* %494, align 4, !tbaa !44
  br label %542

495:                                              ; preds = %488
  store i32 1, i32* %491, align 4, !tbaa !44
  %496 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 1, i32 2
  %497 = load i32, i32* %496, align 4, !tbaa !28
  %498 = load i32, i32* %484, align 4, !tbaa !31
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %542, label %507

500:                                              ; preds = %488
  %501 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 2, i32 1
  %502 = load i32, i32* %501, align 4, !tbaa !31
  store i32 %502, i32* %491, align 4, !tbaa !44
  %503 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 1, i32 2
  %504 = load i32, i32* %503, align 4, !tbaa !28
  %505 = load i32, i32* %484, align 4, !tbaa !31
  %506 = icmp eq i32 %504, %505
  br i1 %506, label %521, label %507

507:                                              ; preds = %500, %495
  %508 = call i8* @malloc(i32 1024) #7
  %509 = icmp eq i8* %508, null
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  %511 = call i8* @halide_string_to_string(i8* %508, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %540

512:                                              ; preds = %507
  %513 = getelementptr inbounds i8, i8* %508, i32 1023
  store i8 0, i8* %513, align 1, !tbaa !37
  %514 = call i8* @halide_string_to_string(i8* nonnull %508, i8* nonnull %513, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  %515 = ptrtoint i8* %514 to i32
  %516 = ptrtoint i8* %508 to i32
  %517 = add i32 %515, 1
  %518 = sub i32 %517, %516
  %519 = sext i32 %518 to i64
  %520 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %508, i64 %519) #7
  call void @halide_error(i8* %0, i8* nonnull %508) #7
  br label %540

521:                                              ; preds = %500
  %522 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %483, i32 2, i32 2
  %523 = load i32, i32* %522, align 4, !tbaa !28
  %524 = mul nsw i32 %490, %504
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %542, label %526

526:                                              ; preds = %521
  %527 = call i8* @malloc(i32 1024) #7
  %528 = icmp eq i8* %527, null
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = call i8* @halide_string_to_string(i8* %527, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %540

531:                                              ; preds = %526
  %532 = getelementptr inbounds i8, i8* %527, i32 1023
  store i8 0, i8* %532, align 1, !tbaa !37
  %533 = call i8* @halide_string_to_string(i8* nonnull %527, i8* nonnull %532, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i32 0, i32 0)) #7
  %534 = ptrtoint i8* %533 to i32
  %535 = ptrtoint i8* %527 to i32
  %536 = add i32 %534, 1
  %537 = sub i32 %536, %535
  %538 = sext i32 %537 to i64
  %539 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %527, i64 %538) #7
  call void @halide_error(i8* %0, i8* nonnull %527) #7
  br label %540

540:                                              ; preds = %529, %531, %510, %512
  %541 = phi i8* [ %508, %512 ], [ %508, %510 ], [ %527, %531 ], [ %527, %529 ]
  call void @free(i8* %541) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %480) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %479) #9
  br label %620

542:                                              ; preds = %495, %493, %521
  %543 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@PAU_cl_mem@@IPBI2IIPBXIPBQAU_cl_event@@PAPAU7@@ZA", align 4, !tbaa !38
  %544 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %545 = load i8*, i8** %544, align 4, !tbaa !15
  %546 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i32 0, i32 0
  %547 = load i64, i64* %90, align 8, !tbaa !11
  %548 = trunc i64 %547 to i32
  %549 = inttoptr i32 %548 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %550 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %549, i32 0, i32 1
  %551 = load %struct._cl_mem*, %struct._cl_mem** %550, align 8, !tbaa !53
  %552 = call x86_stdcallcc i32 %543(%struct._cl_command_queue* %68, %struct._cl_mem* %551, i32 0, i32* nonnull %546, i32* nonnull %481, i32 0, i32 0, i8* %545, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %480) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %479) #9
  br label %570

553:                                              ; preds = %475
  %554 = or i1 %12, %48
  br i1 %554, label %616, label %555

555:                                              ; preds = %553
  %556 = call i8* @malloc(i32 1024) #7
  %557 = icmp eq i8* %556, null
  br i1 %557, label %558, label %560

558:                                              ; preds = %555
  %559 = call i8* @halide_string_to_string(i8* %556, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@", i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %569

560:                                              ; preds = %555
  %561 = getelementptr inbounds i8, i8* %556, i32 1023
  store i8 0, i8* %561, align 1, !tbaa !37
  %562 = call i8* @halide_string_to_string(i8* nonnull %556, i8* nonnull %561, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@", i32 0, i32 0)) #7
  %563 = ptrtoint i8* %562 to i32
  %564 = ptrtoint i8* %556 to i32
  %565 = add i32 %563, 1
  %566 = sub i32 %565, %564
  %567 = sext i32 %566 to i64
  %568 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %556, i64 %567) #7
  call void @halide_error(i8* %0, i8* nonnull %556) #7
  br label %569

569:                                              ; preds = %560, %558
  call void @free(i8* %556) #7
  br label %620

570:                                              ; preds = %542, %464
  %571 = phi i32 [ %552, %542 ], [ %474, %464 ]
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  %574 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 4, !tbaa !70
  br label %616

575:                                              ; preds = %570
  %576 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %571) #8
  %577 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %577) #9
  %578 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %578, align 4, !tbaa !45
  %579 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %579, align 4, !tbaa !47
  %580 = call i8* @malloc(i32 1024) #7
  %581 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %580, i8** %581, align 4, !tbaa !48
  %582 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %580, i8** %582, align 4, !tbaa !49
  %583 = icmp eq i8* %580, null
  br i1 %583, label %586, label %584

584:                                              ; preds = %575
  %585 = getelementptr inbounds i8, i8* %580, i32 1023
  store i8 0, i8* %585, align 1, !tbaa !37
  br label %586

586:                                              ; preds = %575, %584
  %587 = phi i8* [ %585, %584 ], [ null, %575 ]
  %588 = call i8* @halide_string_to_string(i8* %580, i8* %587, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@NALPKMPM@CL?3?5buffer?5transfer?5failed?3?5?$AA@", i32 0, i32 0)) #7
  %589 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %571) #8
  %590 = icmp eq i8* %589, null
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = call i8* @halide_string_to_string(i8* %588, i8* %587, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %595

593:                                              ; preds = %586
  %594 = call i8* @halide_string_to_string(i8* %588, i8* %587, i8* nonnull %589) #7
  br label %595

595:                                              ; preds = %591, %593
  %596 = phi i8* [ %594, %593 ], [ %592, %591 ]
  %597 = load i8*, i8** %581, align 4, !tbaa !48
  %598 = icmp eq i8* %597, null
  %599 = load i8*, i8** %578, align 4, !tbaa !45
  br i1 %598, label %600, label %601

600:                                              ; preds = %595
  call void @halide_error(i8* %599, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %610

601:                                              ; preds = %595
  %602 = ptrtoint i8* %596 to i32
  %603 = ptrtoint i8* %597 to i32
  %604 = sub i32 1, %603
  %605 = add i32 %604, %602
  %606 = sext i32 %605 to i64
  %607 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %599, i8* nonnull %597, i64 %606) #7
  %608 = load i8*, i8** %581, align 4, !tbaa !48
  %609 = load i8*, i8** %578, align 4, !tbaa !45
  call void @halide_error(i8* %609, i8* %608) #7
  br label %610

610:                                              ; preds = %601, %600
  %611 = load i8, i8* %579, align 4, !tbaa !47, !range !42
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %615, label %613

613:                                              ; preds = %610
  %614 = load i8*, i8** %581, align 4, !tbaa !48
  call void @free(i8* %614) #7
  br label %615

615:                                              ; preds = %610, %613
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %577) #9
  br label %620

616:                                              ; preds = %573, %553
  %617 = phi %struct._cl_command_queue* [ %574, %573 ], [ %68, %553 ]
  %618 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_command_queue@@@ZA", align 4, !tbaa !38
  %619 = call x86_stdcallcc i32 %618(%struct._cl_command_queue* %617) #7
  br label %620

620:                                              ; preds = %540, %462, %85, %86, %616, %615, %569, %396
  %621 = phi i32 [ 0, %616 ], [ %571, %615 ], [ -39, %569 ], [ -39, %396 ], [ %65, %86 ], [ -1, %85 ], [ -39, %462 ], [ -39, %540 ]
  %622 = load i8*, i8** %57, align 4, !tbaa !67
  %623 = call i32 @halide_release_cl_context(i8* %622) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %55) #9
  br label %624

624:                                              ; preds = %30, %29, %620
  %625 = phi i32 [ %621, %620 ], [ -42, %29 ], [ -42, %30 ]
  ret i32 %625

626:                                              ; preds = %353
  %627 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %355, i32 1
  %628 = load i32, i32* %627, align 4, !tbaa !31
  %629 = add nsw i32 %628, -1
  %630 = mul nsw i32 %629, %357
  %631 = add nsw i32 %630, %354
  br label %632

632:                                              ; preds = %626, %353
  %633 = phi i32 [ %631, %626 ], [ %354, %353 ]
  %634 = add nuw nsw i32 %341, 2
  %635 = add i32 %343, -2
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %359, label %340, !llvm.loop !92

637:                                              ; preds = %313
  %638 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %295, i32 %315, i32 1
  %639 = load i32, i32* %638, align 4, !tbaa !31
  %640 = add nsw i32 %639, -1
  %641 = mul nsw i32 %640, %317
  %642 = add nsw i32 %641, %314
  br label %643

643:                                              ; preds = %637, %313
  %644 = phi i32 [ %642, %637 ], [ %314, %313 ]
  %645 = add nuw nsw i32 %301, 2
  %646 = add i32 %303, -2
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %319, label %300, !llvm.loop !93

648:                                              ; preds = %258
  %649 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %260, i32 1
  %650 = load i32, i32* %649, align 4, !tbaa !31
  %651 = add nsw i32 %650, -1
  %652 = mul nsw i32 %651, %262
  %653 = add nsw i32 %652, %259
  br label %654

654:                                              ; preds = %648, %258
  %655 = phi i32 [ %653, %648 ], [ %259, %258 ]
  %656 = add nuw nsw i32 %246, 2
  %657 = add i32 %248, -2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %264, label %245, !llvm.loop !92

659:                                              ; preds = %216
  %660 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %198, i32 %218, i32 1
  %661 = load i32, i32* %660, align 4, !tbaa !31
  %662 = add nsw i32 %661, -1
  %663 = mul nsw i32 %662, %220
  %664 = add nsw i32 %663, %217
  br label %665

665:                                              ; preds = %659, %216
  %666 = phi i32 [ %664, %659 ], [ %217, %216 ]
  %667 = add nuw nsw i32 %204, 2
  %668 = add i32 %206, -2
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %222, label %203, !llvm.loop !93

670:                                              ; preds = %159
  %671 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %161, i32 1
  %672 = load i32, i32* %671, align 4, !tbaa !31
  %673 = add nsw i32 %672, -1
  %674 = mul nsw i32 %673, %163
  %675 = add nsw i32 %674, %160
  br label %676

676:                                              ; preds = %670, %159
  %677 = phi i32 [ %675, %670 ], [ %160, %159 ]
  %678 = add nuw nsw i32 %147, 2
  %679 = add i32 %149, -2
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %165, label %146, !llvm.loop !92

681:                                              ; preds = %117
  %682 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %119, i32 1
  %683 = load i32, i32* %682, align 4, !tbaa !31
  %684 = add nsw i32 %683, -1
  %685 = mul nsw i32 %684, %121
  %686 = add nsw i32 %685, %118
  br label %687

687:                                              ; preds = %681, %117
  %688 = phi i32 [ %686, %681 ], [ %118, %117 ]
  %689 = add nuw nsw i32 %105, 2
  %690 = add i32 %107, -2
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %123, label %104, !llvm.loop !93
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_image_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_image_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_image_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_image_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_wrap_cl_mem(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@FPIDEFFE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  %10 = load i64, i64* %6, align 8, !tbaa !22
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %3, %9
  %13 = tail call i8* @malloc(i32 16) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %85, label %15

15:                                               ; preds = %12
  %16 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9
  store i32 0, i32* %4, align 4, !tbaa !44
  %17 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6GHPAU_cl_mem@@IIPAXPAI@ZA", align 4, !tbaa !38
  %18 = trunc i64 %2 to i32
  %19 = inttoptr i32 %18 to %struct._cl_mem*
  %20 = call x86_stdcallcc i32 %17(%struct._cl_mem* %19, i32 4352, i32 4, i8* nonnull %16, i32* null) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4, !tbaa !44
  switch i32 %23, label %24 [
    i32 4340, label %73
    i32 4338, label %73
    i32 4337, label %73
  ]

24:                                               ; preds = %22, %15
  %25 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #9
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %26, align 4, !tbaa !45
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %27, align 4, !tbaa !47
  %28 = call i8* @malloc(i32 1024) #7
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 4, !tbaa !48
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  %31 = icmp eq i8* %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %28, i32 1023
  store i8 0, i8* %33, align 1, !tbaa !37
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i8* [ %33, %32 ], [ null, %24 ]
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2
  store i8* %35, i8** %36, align 4
  %37 = call i8* @halide_string_to_string(i8* %28, i8* %35, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@LDGMHNKH@CL?3?5Bad?5device?5pointer?5passed?5to@", i32 0, i32 0)) #7
  %38 = inttoptr i32 %18 to i8*
  %39 = call i8* @halide_pointer_to_string(i8* %37, i8* %35, i8* %38) #7
  %40 = call i8* @halide_string_to_string(i8* %39, i8* %35, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@", i32 0, i32 0)) #7
  store i8* %40, i8** %30, align 4, !tbaa !49
  %41 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPBDH@Z"(i32 %20) #8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i8* @halide_string_to_string(i8* %40, i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7
  br label %47

45:                                               ; preds = %34
  %46 = call i8* @halide_string_to_string(i8* %40, i8* %35, i8* nonnull %41) #7
  br label %47

47:                                               ; preds = %43, %45
  %48 = phi i8* [ %46, %45 ], [ %44, %43 ]
  %49 = load i8*, i8** %36, align 4, !tbaa !50
  %50 = call i8* @halide_string_to_string(i8* %48, i8* %49, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@NDNKNKHF@?5with?5type?5?$AA@", i32 0, i32 0)) #7
  %51 = load i32, i32* %4, align 4, !tbaa !44
  %52 = sext i32 %51 to i64
  %53 = call i8* @halide_int64_to_string(i8* %50, i8* %49, i64 %52, i32 1) #7
  %54 = load i8*, i8** %29, align 4, !tbaa !48
  %55 = icmp eq i8* %54, null
  %56 = load i8*, i8** %26, align 4, !tbaa !45
  br i1 %55, label %57, label %58

57:                                               ; preds = %47
  call void @halide_error(i8* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %67

58:                                               ; preds = %47
  %59 = ptrtoint i8* %53 to i32
  %60 = ptrtoint i8* %54 to i32
  %61 = add i32 %59, 1
  %62 = sub i32 %61, %60
  %63 = sext i32 %62 to i64
  %64 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %56, i8* nonnull %54, i64 %63) #7
  %65 = load i8*, i8** %29, align 4, !tbaa !48
  %66 = load i8*, i8** %26, align 4, !tbaa !45
  call void @halide_error(i8* %66, i8* %65) #7
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i8, i8* %27, align 4, !tbaa !47, !range !42
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %29, align 4, !tbaa !48
  call void @free(i8* %71) #7
  br label %72

72:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #9
  br label %83

73:                                               ; preds = %22, %22, %22
  %74 = getelementptr inbounds i8, i8* %13, i32 8
  %75 = bitcast i8* %74 to %struct._cl_mem**
  store %struct._cl_mem* %19, %struct._cl_mem** %75, align 8, !tbaa !53
  %76 = bitcast i8* %13 to i64*
  store i64 0, i64* %76, align 8, !tbaa !55
  %77 = ptrtoint i8* %13 to i32
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %6, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %79, align 8, !tbaa !72
  %80 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i32 0, i32 15), align 4, !tbaa !73
  %81 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %80, i32 0, i32 0
  %82 = load void ()*, void ()** %81, align 4, !tbaa !91
  call void %82() #7
  br label %83

83:                                               ; preds = %73, %72
  %84 = phi i32 [ -32, %72 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %85

85:                                               ; preds = %83, %12, %9
  %86 = phi i32 [ -2, %9 ], [ %84, %83 ], [ -11, %12 ]
  ret i32 %86
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !25
  br label %14

12:                                               ; preds = %33
  %13 = icmp slt i32 %39, %5
  br i1 %13, label %14, label %55, !llvm.loop !119

14:                                               ; preds = %7, %12
  %15 = phi i32 [ 0, %7 ], [ %39, %12 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !26
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !26
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !31
  %24 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 1
  %25 = load i32, i32* %24, align 4, !tbaa !31
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 2
  %29 = load i32, i32* %28, align 4, !tbaa !28
  %30 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 2
  %31 = load i32, i32* %30, align 4, !tbaa !28
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 3
  %35 = load i32, i32* %34, align 4, !tbaa !120
  %36 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !120
  %38 = icmp eq i32 %35, %37
  %39 = add nuw nsw i32 %15, 1
  br i1 %38, label %12, label %40

40:                                               ; preds = %14, %21, %27, %33
  %41 = tail call i8* @malloc(i32 1024) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i8* @halide_string_to_string(i8* %41, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, i8* %41, i32 1023
  store i8 0, i8* %46, align 1, !tbaa !37
  %47 = tail call i8* @halide_string_to_string(i8* nonnull %41, i8* nonnull %46, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i32 0, i32 0)) #7
  %48 = ptrtoint i8* %47 to i32
  %49 = ptrtoint i8* %41 to i32
  %50 = add i32 %48, 1
  %51 = sub i32 %50, %49
  %52 = sext i32 %51 to i64
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %41, i64 %52) #7
  tail call void @halide_error(i8* %0, i8* nonnull %41) #7
  br label %54

54:                                               ; preds = %45, %43
  tail call void @free(i8* %41) #7
  br label %55

55:                                               ; preds = %12, %3, %54
  %56 = phi i32 [ -40, %54 ], [ 0, %3 ], [ 0, %12 ]
  ret i32 %56
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  %6 = tail call i8* @malloc(i32 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@", i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !37
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@", i32 0, i32 0)) #7
  %13 = ptrtoint i8* %12 to i32
  %14 = ptrtoint i8* %6 to i32
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = sext i32 %16 to i64
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %17) #7
  tail call void @halide_error(i8* %0, i8* nonnull %6) #7
  br label %19

19:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7
  ret i32 -40
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i32 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023
  store i8 0, i8* %8, align 1, !tbaa !37
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i32 0, i32 0)) #7
  %10 = ptrtoint i8* %9 to i32
  %11 = ptrtoint i8* %3 to i32
  %12 = add i32 %10, 1
  %13 = sub i32 %12, %11
  %14 = sext i32 %13 to i64
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -40
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_opencl_image_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

declare dso_local i8* @strncpy(i8*, i8*, i32) local_unnamed_addr #2

declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !80
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #8
  br i1 %7, label %8, label %63

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !88
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #8
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !tbaa !88
  %25 = load i32, i32* %3, align 4, !tbaa !80
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 4, !tbaa !88
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i32 0, i32 2
  %33 = load i32, i32* %32, align 4, !tbaa !83
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i32 0, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 4, !tbaa !85
  %36 = ptrtoint %struct._cl_context* %35 to i32
  %37 = add i32 %33, %36
  %38 = mul i32 %37, -1640531527
  %39 = sub i32 32, %31
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %31, 31
  br i1 %41, label %62, label %42

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %44, align 4, !tbaa !81
  %46 = icmp sgt i32 %29, 1
  %47 = select i1 %46, i32 %29, i32 1
  br label %50

48:                                               ; preds = %50
  %49 = icmp eq i32 %57, %47
  br i1 %49, label %62, label %50, !llvm.loop !121

50:                                               ; preds = %42, %48
  %51 = phi i32 [ 0, %42 ], [ %57, %48 ]
  %52 = add i32 %51, %40
  %53 = and i32 %52, %43
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %45, i32 %53, i32 2
  %55 = load i32, i32* %54, align 4, !tbaa !83
  %56 = icmp ult i32 %55, 2
  %57 = add nuw nsw i32 %51, 1
  br i1 %56, label %58, label %48

58:                                               ; preds = %50
  %59 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %45, i32 %53
  %60 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %59 to i8*
  %61 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %60, i8* nonnull align 4 dereferenceable(16) %61, i32 16, i1 false), !tbaa.struct !122
  br label %63

62:                                               ; preds = %48, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %63

63:                                               ; preds = %58, %62, %20, %6
  %64 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %58 ], [ false, %62 ]
  ret i1 %64
}

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local x86_thiscallcc zeroext i1 @"?resize_table@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !80
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %4
  %8 = shl i32 16, %1
  %9 = tail call i8* @malloc(i32 %8) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i32 %8) #7
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !81
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13 to i8**
  store i8* %9, i8** %15, align 4, !tbaa !81
  store i32 %1, i32* %3, align 4, !tbaa !80
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !88
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
  %26 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14, i32 %25, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !83
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14, i32 %25
  %31 = tail call x86_thiscallcc zeroext i1 @"?insert@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@QAE_NABUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %30) #8
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %33

33:                                               ; preds = %24, %29, %32
  %34 = add nuw nsw i32 %25, 1
  %35 = icmp eq i32 %34, %23
  br i1 %35, label %36, label %24, !llvm.loop !123

36:                                               ; preds = %33, %11
  %37 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14 to i8*
  tail call void @free(i8* %37) #7
  br label %38

38:                                               ; preds = %2, %36, %6
  %39 = phi i1 [ false, %6 ], [ true, %36 ], [ true, %2 ]
  ret i1 %39
}

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn writeonly
define internal void @_GLOBAL__sub_I_windows_opencl.cpp() #6 {
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 1), align 4, !tbaa !80
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 2), align 4, !tbaa !81
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 3), align 4, !tbaa !88
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@24@A", i32 0, i32 4), align 4, !tbaa !77
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!40 = !{!41, !41, i64 0}
!41 = !{!"bool", !5, i64 0}
!42 = !{i8 0, i8 2}
!43 = distinct !{!43, !8}
!44 = !{!21, !21, i64 0}
!45 = !{!46, !17, i64 12}
!46 = !{!"?AV?$Printer@$00$0EAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !41, i64 16, !5, i64 17}
!47 = !{!46, !41, i64 16}
!48 = !{!46, !17, i64 0}
!49 = !{!46, !17, i64 4}
!50 = !{!46, !17, i64 8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = !{!54, !17, i64 8}
!54 = !{!"?AUdevice_handle@OpenCL@Internal@Runtime@Halide@@", !4, i64 0, !17, i64 8}
!55 = !{!54, !4, i64 0}
!56 = !{!57, !17, i64 12}
!57 = !{!"?AV?$Printer@$01$0EAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !41, i64 16, !5, i64 17}
!58 = !{!57, !41, i64 16}
!59 = !{!57, !17, i64 0}
!60 = !{!57, !17, i64 4}
!61 = !{!62, !17, i64 12}
!62 = !{!"?AV?$Printer@$00$0EAAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !41, i64 16, !5, i64 17}
!63 = !{!62, !41, i64 16}
!64 = !{!62, !17, i64 0}
!65 = !{!62, !17, i64 4}
!66 = !{!62, !17, i64 8}
!67 = !{!68, !17, i64 0}
!68 = !{!"?AVClContext@OpenCL@Internal@Runtime@Halide@@", !17, i64 0, !17, i64 4, !17, i64 8, !21, i64 12}
!69 = !{!68, !17, i64 4}
!70 = !{!68, !17, i64 8}
!71 = !{!68, !21, i64 12}
!72 = !{!16, !17, i64 8}
!73 = !{!74, !17, i64 60}
!74 = !{!"?AUhalide_device_interface_t@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!75 = !{!76, !17, i64 4}
!76 = !{!"?AUhalide_device_interface_impl_t@@", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!77 = !{!78, !21, i64 16}
!78 = !{!"?AV?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@", !79, i64 0, !21, i64 4, !17, i64 8, !21, i64 12, !21, i64 16}
!79 = !{!"?AUhalide_mutex@@", !5, i64 0}
!80 = !{!78, !21, i64 4}
!81 = !{!78, !17, i64 8}
!82 = distinct !{!82, !8}
!83 = !{!84, !21, i64 8}
!84 = !{!"?AUCachedCompilation@?$GPUCompilationCache@PAU_cl_context@@PAU_cl_program@@@Internal@Halide@@", !17, i64 0, !17, i64 4, !21, i64 8, !21, i64 12}
!85 = !{!84, !17, i64 0}
!86 = !{!84, !21, i64 12}
!87 = !{!84, !17, i64 4}
!88 = !{!78, !21, i64 12}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = !{!76, !17, i64 0}
!92 = distinct !{!92, !8}
!93 = distinct !{!93, !8}
!94 = distinct !{!94, !8}
!95 = !{!16, !4, i64 16}
!96 = distinct !{!96, !8}
!97 = !{!98, !21, i64 0}
!98 = !{!"?AU_cl_buffer_region@@", !21, i64 0, !21, i64 4}
!99 = !{!98, !21, i64 4}
!100 = distinct !{!100, !8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = distinct !{!103, !8}
!104 = distinct !{!104, !8}
!105 = !{!106, !21, i64 4}
!106 = !{!"?AU_cl_image_format@@", !21, i64 0, !21, i64 4}
!107 = !{!106, !21, i64 0}
!108 = !{!109, !21, i64 0}
!109 = !{!"?AU_cl_image_desc@@", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !17, i64 36}
!110 = !{!109, !21, i64 4}
!111 = !{!109, !21, i64 8}
!112 = !{!109, !21, i64 12}
!113 = !{!109, !21, i64 16}
!114 = !{!109, !21, i64 20}
!115 = !{!109, !21, i64 24}
!116 = !{!109, !21, i64 28}
!117 = !{!109, !21, i64 32}
!118 = !{!109, !17, i64 36}
!119 = distinct !{!119, !8}
!120 = !{!27, !21, i64 12}
!121 = distinct !{!121, !8}
!122 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !44, i64 12, i64 4, !44}
!123 = distinct !{!123, !8}
