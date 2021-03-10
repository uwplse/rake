; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_opencl.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_opencl.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

%struct._cl_platform_id = type opaque
%struct._cl_device_id = type opaque
%struct._cl_context = type opaque
%struct._cl_command_queue = type opaque
%struct._cl_mem = type opaque
%struct._cl_image_format = type { i32, i32 }
%struct._cl_image_desc = type { i32, [4 x i8], i64, i64, i64, i64, i64, i64, i32, i32, %struct._cl_mem* }
%struct._cl_program = type opaque
%struct._cl_kernel = type opaque
%struct._cl_event = type opaque
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, i32, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation" = type { %struct._cl_context*, %struct._cl_program*, i32, i32 }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }
%"struct.Halide::Runtime::Internal::OpenCL::device_handle" = type { i64, %struct._cl_mem* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type { i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1" = type { i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }
%"class.Halide::Runtime::Internal::OpenCL::ClContext" = type { i8*, %struct._cl_context*, %struct._cl_command_queue*, i32, [4 x i8] }
%struct._cl_buffer_region = type { i64, i64 }

$"??$kernel_state_setup@P6APEAU_cl_program@@PEAXPEAU_cl_context@@PEBDH@ZPEAXPEAU2@PEBDH@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAU_cl_context@@AEAPEAU_cl_program@@P6APEAU4@02PEBDH@Z024H@Z" = comdat any

$"??$release_all@P6AHPEAU_cl_program@@@Z@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAAXPEAXAEAP6AHPEAU_cl_program@@@Z@Z" = comdat any

$"?insert@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z" = comdat any

$"?resize_table@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NH@Z" = comdat any

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

@"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6AHIPEAPEAU_cl_platform_id@@PEAI@ZEA" = weak dso_local local_unnamed_addr global i32 (i32, %struct._cl_platform_id**, i32*)* null, align 8
@"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)* null, align 8
@"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@_KIPEAPEAU_cl_device_id@@PEAI@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)* null, align 8
@"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)* null, align 8
@"?clCreateSubDevices@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@PEB_JIPEAPEAU5@PEAI@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*, i64*, i32, %struct._cl_device_id**, i32*)* null, align 8
@"?clRetainDevice@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 8
@"?clReleaseDevice@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 8
@"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* null, align 8
@"?clCreateContextFromType@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_J_KP6AXPEBDPEBXKPEAX@Z4PEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_context* (i64*, i64, void (i8*, i8*, i64, i8*)*, i8*, i32*)* null, align 8
@"?clRetainContext@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*)* null, align 8
@"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*)* null, align 8
@"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*, i32, i64, i8*, i64*)* null, align 8
@"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_command_queue@@PEAU_cl_context@@PEAU_cl_device_id@@_KPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)* null, align 8
@"?clRetainCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@"?clGetCommandQueueInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, i32, i64, i8*, i64*)* null, align 8
@"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KKPEAXPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)* null, align 8
@"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU5@_KIPEBXPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)* null, align 8
@"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KPEBU_cl_image_format@@PEBU_cl_image_desc@@PEAXPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)* null, align 8
@"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 8
@"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 8
@"?clGetSupportedImageFormats@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@_KIIPEAU_cl_image_format@@PEAI@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)* null, align 8
@"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* null, align 8
@"?clGetImageInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* null, align 8
@"?clSetMemObjectDestructorCallback@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@P6AX0PEAX@Z1@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)* null, align 8
@"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_program@@PEAU_cl_context@@IPEAPEBDPEBKPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)* null, align 8
@"?clRetainProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*)* null, align 8
@"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA" = weak dso_local global i32 (%struct._cl_program*)* null, align 8
@"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@IPEBQEAU_cl_device_id@@PEBDP6AX0PEAX@Z3@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* null, align 8
@"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@PEAU_cl_device_id@@IKPEAXPEAK@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)* null, align 8
@"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_kernel@@PEAU_cl_program@@PEBDPEAH@ZEA" = weak dso_local local_unnamed_addr global %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)* null, align 8
@"?clRetainKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 8
@"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 8
@"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@IKPEBX@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_kernel*, i32, i64, i8*)* null, align 8
@"?clFlush@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueReadBufferRect@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK22KKKKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueWriteBufferRect@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK22KKKKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@1KKKIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueMapBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAXPEAU_cl_command_queue@@PEAU_cl_mem@@I_KKKIPEBQEAU_cl_event@@PEAPEAU7@PEAH@ZEA" = weak dso_local local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 8
@"?clEnqueueMapImage@OpenCL@Internal@Runtime@Halide@@3P6APEAXPEAU_cl_command_queue@@PEAU_cl_mem@@I_KPEBK3PEAK4IPEBQEAU_cl_event@@PEAPEAU7@PEAH@ZEA" = weak dso_local local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64*, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 8
@"?clEnqueueUnmapMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@PEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_kernel@@IPEBK22IPEBQEAU_cl_event@@PEAPEAU7@@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PEAXEA" = weak dso_local local_unnamed_addr global i8* null, align 8
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
@"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA" = weak dso_local global %struct._cl_context* null, align 8
@"?command_queue@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_command_queue@@EA" = weak dso_local global %struct._cl_command_queue* null, align 8
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
@"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A" = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
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
@"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @"?opencl_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 8
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
@"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @"?opencl_image_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 8
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
@"?opencl_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 8
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
@"?opencl_image_device_interface_impl@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_image_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_image_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_image_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_image_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 8
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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #7
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %3, %23 ], [ %46, %39 ]
  %42 = phi i64 [ %2, %23 ], [ %44, %39 ]
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %42, i64 %41) #8
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
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opencl_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@PFNAKBJA@opencl?4dll?$AA@", i64 0, i64 0)) #7
  store i8* %7, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %8 = tail call i8* @halide_get_library_symbol(i8* %7, i8* %1) #7
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8* [ %8, %6 ], [ %4, %2 ]
  ret i8* %10
}

declare extern_weak dso_local i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) local_unnamed_addr #4 {
  %2 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %3 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"??_C@_0HH@NKMLHAFC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@", i64 0, i64 0)) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i64 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !35
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLFOOEK@clGetPlatformIDs?$AA@", i64 0, i64 0)) #7
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %25

19:                                               ; preds = %13
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %9 to i64
  %22 = sub i64 1, %21
  %23 = add i64 %22, %20
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %23) #7
  tail call void @halide_error(i8* %0, i8* nonnull %9) #7
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %9) #7
  br label %26

26:                                               ; preds = %5, %25
  store i8* %6, i8** bitcast (i32 (i32, %struct._cl_platform_id**, i32*)** @"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6AHIPEAPEAU_cl_platform_id@@PEAI@ZEA" to i8**), align 8, !tbaa !36
  %27 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@", i64 0, i64 0)) #7
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = tail call i8* @malloc(i64 1024) #7
  %31 = icmp eq i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !35
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i8* [ %33, %32 ], [ null, %29 ]
  %36 = tail call i8* @halide_string_to_string(i8* %30, i8* %35, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KBIJEEMJ@clGetPlatformInfo?$AA@", i64 0, i64 0)) #7
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %35, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %31, label %39, label %40

39:                                               ; preds = %34
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %46

40:                                               ; preds = %34
  %41 = ptrtoint i8* %38 to i64
  %42 = ptrtoint i8* %30 to i64
  %43 = sub i64 1, %42
  %44 = add i64 %43, %41
  %45 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %30, i64 %44) #7
  tail call void @halide_error(i8* %0, i8* nonnull %30) #7
  br label %46

46:                                               ; preds = %40, %39
  tail call void @free(i8* %30) #7
  br label %47

47:                                               ; preds = %26, %46
  store i8* %27, i8** bitcast (i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)** @"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %48 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@", i64 0, i64 0)) #7
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = tail call i8* @malloc(i64 1024) #7
  %52 = icmp eq i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %51, i64 1023
  store i8 0, i8* %54, align 1, !tbaa !35
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %54, %53 ], [ null, %50 ]
  %57 = tail call i8* @halide_string_to_string(i8* %51, i8* %56, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %56, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@FMCIAPFL@clGetDeviceIDs?$AA@", i64 0, i64 0)) #7
  %59 = tail call i8* @halide_string_to_string(i8* %58, i8* %56, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %52, label %60, label %61

60:                                               ; preds = %55
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %67

61:                                               ; preds = %55
  %62 = ptrtoint i8* %59 to i64
  %63 = ptrtoint i8* %51 to i64
  %64 = sub i64 1, %63
  %65 = add i64 %64, %62
  %66 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %51, i64 %65) #7
  tail call void @halide_error(i8* %0, i8* nonnull %51) #7
  br label %67

67:                                               ; preds = %61, %60
  tail call void @free(i8* %51) #7
  br label %68

68:                                               ; preds = %47, %67
  store i8* %48, i8** bitcast (i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@_KIPEAPEAU_cl_device_id@@PEAI@ZEA" to i8**), align 8, !tbaa !36
  %69 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@", i64 0, i64 0)) #7
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = tail call i8* @malloc(i64 1024) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %75, align 1, !tbaa !35
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i8* [ %75, %74 ], [ null, %71 ]
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@MLOCPJNK@clGetDeviceInfo?$AA@", i64 0, i64 0)) #7
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %77, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %73, label %81, label %82

81:                                               ; preds = %76
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %88

82:                                               ; preds = %76
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %72 to i64
  %85 = sub i64 1, %84
  %86 = add i64 %85, %83
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %86) #7
  tail call void @halide_error(i8* %0, i8* nonnull %72) #7
  br label %88

88:                                               ; preds = %82, %81
  tail call void @free(i8* %72) #7
  br label %89

89:                                               ; preds = %68, %88
  store i8* %69, i8** bitcast (i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %90 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DHOGNIBF@clCreateSubDevices?$AA@", i64 0, i64 0)) #7
  store i8* %90, i8** bitcast (i32 (%struct._cl_device_id*, i64*, i32, %struct._cl_device_id**, i32*)** @"?clCreateSubDevices@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@PEB_JIPEAPEAU5@PEAI@ZEA" to i8**), align 8, !tbaa !36
  %91 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MLMFBHBD@clRetainDevice?$AA@", i64 0, i64 0)) #7
  store i8* %91, i8** bitcast (i32 (%struct._cl_device_id*)** @"?clRetainDevice@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@@ZEA" to i8**), align 8, !tbaa !36
  %92 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@DILOKKCJ@clReleaseDevice?$AA@", i64 0, i64 0)) #7
  store i8* %92, i8** bitcast (i32 (%struct._cl_device_id*)** @"?clReleaseDevice@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@@ZEA" to i8**), align 8, !tbaa !36
  %93 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i64 0, i64 0)) #7
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = tail call i8* @malloc(i64 1024) #7
  %97 = icmp eq i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, i8* %96, i64 1023
  store i8 0, i8* %99, align 1, !tbaa !35
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i8* [ %99, %98 ], [ null, %95 ]
  %102 = tail call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %103 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i64 0, i64 0)) #7
  %104 = tail call i8* @halide_string_to_string(i8* %103, i8* %101, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %97, label %105, label %106

105:                                              ; preds = %100
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %112

106:                                              ; preds = %100
  %107 = ptrtoint i8* %104 to i64
  %108 = ptrtoint i8* %96 to i64
  %109 = sub i64 1, %108
  %110 = add i64 %109, %107
  %111 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %110) #7
  tail call void @halide_error(i8* %0, i8* nonnull %96) #7
  br label %112

112:                                              ; preds = %106, %105
  tail call void @free(i8* %96) #7
  br label %113

113:                                              ; preds = %89, %112
  store i8* %93, i8** bitcast (%struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA" to i8**), align 8, !tbaa !36
  %114 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@", i64 0, i64 0)) #7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = tail call i8* @malloc(i64 1024) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %120, align 1, !tbaa !35
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i8* [ %120, %119 ], [ null, %116 ]
  %123 = tail call i8* @halide_string_to_string(i8* %117, i8* %122, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %124 = tail call i8* @halide_string_to_string(i8* %123, i8* %122, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CDLLGAHG@clCreateContextFromType?$AA@", i64 0, i64 0)) #7
  %125 = tail call i8* @halide_string_to_string(i8* %124, i8* %122, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %118, label %126, label %127

126:                                              ; preds = %121
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %133

127:                                              ; preds = %121
  %128 = ptrtoint i8* %125 to i64
  %129 = ptrtoint i8* %117 to i64
  %130 = sub i64 1, %129
  %131 = add i64 %130, %128
  %132 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %131) #7
  tail call void @halide_error(i8* %0, i8* nonnull %117) #7
  br label %133

133:                                              ; preds = %127, %126
  tail call void @free(i8* %117) #7
  br label %134

134:                                              ; preds = %113, %133
  store i8* %114, i8** bitcast (%struct._cl_context* (i64*, i64, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContextFromType@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_J_KP6AXPEBDPEBXKPEAX@Z4PEAH@ZEA" to i8**), align 8, !tbaa !36
  %135 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@", i64 0, i64 0)) #7
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = tail call i8* @malloc(i64 1024) #7
  %139 = icmp eq i8* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, i8* %138, i64 1023
  store i8 0, i8* %141, align 1, !tbaa !35
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i8* [ %141, %140 ], [ null, %137 ]
  %144 = tail call i8* @halide_string_to_string(i8* %138, i8* %143, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %143, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@CHPDNCFG@clRetainContext?$AA@", i64 0, i64 0)) #7
  %146 = tail call i8* @halide_string_to_string(i8* %145, i8* %143, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %139, label %147, label %148

147:                                              ; preds = %142
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %154

148:                                              ; preds = %142
  %149 = ptrtoint i8* %146 to i64
  %150 = ptrtoint i8* %138 to i64
  %151 = sub i64 1, %150
  %152 = add i64 %151, %149
  %153 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %138, i64 %152) #7
  tail call void @halide_error(i8* %0, i8* nonnull %138) #7
  br label %154

154:                                              ; preds = %148, %147
  tail call void @free(i8* %138) #7
  br label %155

155:                                              ; preds = %134, %154
  store i8* %135, i8** bitcast (i32 (%struct._cl_context*)** @"?clRetainContext@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@@ZEA" to i8**), align 8, !tbaa !36
  %156 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@", i64 0, i64 0)) #7
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = tail call i8* @malloc(i64 1024) #7
  %160 = icmp eq i8* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds i8, i8* %159, i64 1023
  store i8 0, i8* %162, align 1, !tbaa !35
  br label %163

163:                                              ; preds = %161, %158
  %164 = phi i8* [ %162, %161 ], [ null, %158 ]
  %165 = tail call i8* @halide_string_to_string(i8* %159, i8* %164, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %166 = tail call i8* @halide_string_to_string(i8* %165, i8* %164, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@OBAMHAFJ@clReleaseContext?$AA@", i64 0, i64 0)) #7
  %167 = tail call i8* @halide_string_to_string(i8* %166, i8* %164, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %160, label %168, label %169

168:                                              ; preds = %163
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %175

169:                                              ; preds = %163
  %170 = ptrtoint i8* %167 to i64
  %171 = ptrtoint i8* %159 to i64
  %172 = sub i64 1, %171
  %173 = add i64 %172, %170
  %174 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %159, i64 %173) #7
  tail call void @halide_error(i8* %0, i8* nonnull %159) #7
  br label %175

175:                                              ; preds = %169, %168
  tail call void @free(i8* %159) #7
  br label %176

176:                                              ; preds = %155, %175
  store i8* %156, i8** bitcast (i32 (%struct._cl_context*)** @"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@@ZEA" to i8**), align 8, !tbaa !36
  %177 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@", i64 0, i64 0)) #7
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = tail call i8* @malloc(i64 1024) #7
  %181 = icmp eq i8* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 1023
  store i8 0, i8* %183, align 1, !tbaa !35
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i8* [ %183, %182 ], [ null, %179 ]
  %186 = tail call i8* @halide_string_to_string(i8* %180, i8* %185, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %187 = tail call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LKGPHLOE@clGetContextInfo?$AA@", i64 0, i64 0)) #7
  %188 = tail call i8* @halide_string_to_string(i8* %187, i8* %185, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %181, label %189, label %190

189:                                              ; preds = %184
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %196

190:                                              ; preds = %184
  %191 = ptrtoint i8* %188 to i64
  %192 = ptrtoint i8* %180 to i64
  %193 = sub i64 1, %192
  %194 = add i64 %193, %191
  %195 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %180, i64 %194) #7
  tail call void @halide_error(i8* %0, i8* nonnull %180) #7
  br label %196

196:                                              ; preds = %190, %189
  tail call void @free(i8* %180) #7
  br label %197

197:                                              ; preds = %176, %196
  store i8* %177, i8** bitcast (i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %198 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@", i64 0, i64 0)) #7
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %197
  %201 = tail call i8* @malloc(i64 1024) #7
  %202 = icmp eq i8* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds i8, i8* %201, i64 1023
  store i8 0, i8* %204, align 1, !tbaa !35
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i8* [ %204, %203 ], [ null, %200 ]
  %207 = tail call i8* @halide_string_to_string(i8* %201, i8* %206, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %208 = tail call i8* @halide_string_to_string(i8* %207, i8* %206, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EINAOCOD@clCreateCommandQueue?$AA@", i64 0, i64 0)) #7
  %209 = tail call i8* @halide_string_to_string(i8* %208, i8* %206, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %202, label %210, label %211

210:                                              ; preds = %205
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %217

211:                                              ; preds = %205
  %212 = ptrtoint i8* %209 to i64
  %213 = ptrtoint i8* %201 to i64
  %214 = sub i64 1, %213
  %215 = add i64 %214, %212
  %216 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %201, i64 %215) #7
  tail call void @halide_error(i8* %0, i8* nonnull %201) #7
  br label %217

217:                                              ; preds = %211, %210
  tail call void @free(i8* %201) #7
  br label %218

218:                                              ; preds = %197, %217
  store i8* %198, i8** bitcast (%struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_command_queue@@PEAU_cl_context@@PEAU_cl_device_id@@_KPEAH@ZEA" to i8**), align 8, !tbaa !36
  %219 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@", i64 0, i64 0)) #7
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %239

221:                                              ; preds = %218
  %222 = tail call i8* @malloc(i64 1024) #7
  %223 = icmp eq i8* %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds i8, i8* %222, i64 1023
  store i8 0, i8* %225, align 1, !tbaa !35
  br label %226

226:                                              ; preds = %224, %221
  %227 = phi i8* [ %225, %224 ], [ null, %221 ]
  %228 = tail call i8* @halide_string_to_string(i8* %222, i8* %227, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %229 = tail call i8* @halide_string_to_string(i8* %228, i8* %227, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@CEFOILFN@clRetainCommandQueue?$AA@", i64 0, i64 0)) #7
  %230 = tail call i8* @halide_string_to_string(i8* %229, i8* %227, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %223, label %231, label %232

231:                                              ; preds = %226
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %238

232:                                              ; preds = %226
  %233 = ptrtoint i8* %230 to i64
  %234 = ptrtoint i8* %222 to i64
  %235 = sub i64 1, %234
  %236 = add i64 %235, %233
  %237 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %222, i64 %236) #7
  tail call void @halide_error(i8* %0, i8* nonnull %222) #7
  br label %238

238:                                              ; preds = %232, %231
  tail call void @free(i8* %222) #7
  br label %239

239:                                              ; preds = %218, %238
  store i8* %219, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clRetainCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" to i8**), align 8, !tbaa !36
  %240 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@", i64 0, i64 0)) #7
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = tail call i8* @malloc(i64 1024) #7
  %244 = icmp eq i8* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds i8, i8* %243, i64 1023
  store i8 0, i8* %246, align 1, !tbaa !35
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi i8* [ %246, %245 ], [ null, %242 ]
  %249 = tail call i8* @halide_string_to_string(i8* %243, i8* %248, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %250 = tail call i8* @halide_string_to_string(i8* %249, i8* %248, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@GCFEIJCH@clReleaseCommandQueue?$AA@", i64 0, i64 0)) #7
  %251 = tail call i8* @halide_string_to_string(i8* %250, i8* %248, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %244, label %252, label %253

252:                                              ; preds = %247
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %259

253:                                              ; preds = %247
  %254 = ptrtoint i8* %251 to i64
  %255 = ptrtoint i8* %243 to i64
  %256 = sub i64 1, %255
  %257 = add i64 %256, %254
  %258 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %243, i64 %257) #7
  tail call void @halide_error(i8* %0, i8* nonnull %243) #7
  br label %259

259:                                              ; preds = %253, %252
  tail call void @free(i8* %243) #7
  br label %260

260:                                              ; preds = %239, %259
  store i8* %240, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" to i8**), align 8, !tbaa !36
  %261 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@", i64 0, i64 0)) #7
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %281

263:                                              ; preds = %260
  %264 = tail call i8* @malloc(i64 1024) #7
  %265 = icmp eq i8* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds i8, i8* %264, i64 1023
  store i8 0, i8* %267, align 1, !tbaa !35
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i8* [ %267, %266 ], [ null, %263 ]
  %270 = tail call i8* @halide_string_to_string(i8* %264, i8* %269, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %271 = tail call i8* @halide_string_to_string(i8* %270, i8* %269, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@EHOJPOHB@clGetCommandQueueInfo?$AA@", i64 0, i64 0)) #7
  %272 = tail call i8* @halide_string_to_string(i8* %271, i8* %269, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %265, label %273, label %274

273:                                              ; preds = %268
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %280

274:                                              ; preds = %268
  %275 = ptrtoint i8* %272 to i64
  %276 = ptrtoint i8* %264 to i64
  %277 = sub i64 1, %276
  %278 = add i64 %277, %275
  %279 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %264, i64 %278) #7
  tail call void @halide_error(i8* %0, i8* nonnull %264) #7
  br label %280

280:                                              ; preds = %274, %273
  tail call void @free(i8* %264) #7
  br label %281

281:                                              ; preds = %260, %280
  store i8* %261, i8** bitcast (i32 (%struct._cl_command_queue*, i32, i64, i8*, i64*)** @"?clGetCommandQueueInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %282 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@", i64 0, i64 0)) #7
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %302

284:                                              ; preds = %281
  %285 = tail call i8* @malloc(i64 1024) #7
  %286 = icmp eq i8* %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, i8* %285, i64 1023
  store i8 0, i8* %288, align 1, !tbaa !35
  br label %289

289:                                              ; preds = %287, %284
  %290 = phi i8* [ %288, %287 ], [ null, %284 ]
  %291 = tail call i8* @halide_string_to_string(i8* %285, i8* %290, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %292 = tail call i8* @halide_string_to_string(i8* %291, i8* %290, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@OMMCIGBF@clCreateBuffer?$AA@", i64 0, i64 0)) #7
  %293 = tail call i8* @halide_string_to_string(i8* %292, i8* %290, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %286, label %294, label %295

294:                                              ; preds = %289
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %301

295:                                              ; preds = %289
  %296 = ptrtoint i8* %293 to i64
  %297 = ptrtoint i8* %285 to i64
  %298 = sub i64 1, %297
  %299 = add i64 %298, %296
  %300 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %285, i64 %299) #7
  tail call void @halide_error(i8* %0, i8* nonnull %285) #7
  br label %301

301:                                              ; preds = %295, %294
  tail call void @free(i8* %285) #7
  br label %302

302:                                              ; preds = %281, %301
  store i8* %282, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)** @"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KKPEAXPEAH@ZEA" to i8**), align 8, !tbaa !36
  %303 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@", i64 0, i64 0)) #7
  %304 = icmp eq i8* %303, null
  br i1 %304, label %305, label %323

305:                                              ; preds = %302
  %306 = tail call i8* @malloc(i64 1024) #7
  %307 = icmp eq i8* %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, i8* %306, i64 1023
  store i8 0, i8* %309, align 1, !tbaa !35
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i8* [ %309, %308 ], [ null, %305 ]
  %312 = tail call i8* @halide_string_to_string(i8* %306, i8* %311, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %313 = tail call i8* @halide_string_to_string(i8* %312, i8* %311, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@KOGEINDM@clCreateSubBuffer?$AA@", i64 0, i64 0)) #7
  %314 = tail call i8* @halide_string_to_string(i8* %313, i8* %311, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %307, label %315, label %316

315:                                              ; preds = %310
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %322

316:                                              ; preds = %310
  %317 = ptrtoint i8* %314 to i64
  %318 = ptrtoint i8* %306 to i64
  %319 = sub i64 1, %318
  %320 = add i64 %319, %317
  %321 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %306, i64 %320) #7
  tail call void @halide_error(i8* %0, i8* nonnull %306) #7
  br label %322

322:                                              ; preds = %316, %315
  tail call void @free(i8* %306) #7
  br label %323

323:                                              ; preds = %302, %322
  store i8* %303, i8** bitcast (%struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU5@_KIPEBXPEAH@ZEA" to i8**), align 8, !tbaa !36
  %324 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@LJDNFNNP@clCreateImage?$AA@", i64 0, i64 0)) #7
  store i8* %324, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KPEBU_cl_image_format@@PEBU_cl_image_desc@@PEAXPEAH@ZEA" to i8**), align 8, !tbaa !36
  %325 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@", i64 0, i64 0)) #7
  %326 = icmp eq i8* %325, null
  br i1 %326, label %327, label %345

327:                                              ; preds = %323
  %328 = tail call i8* @malloc(i64 1024) #7
  %329 = icmp eq i8* %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds i8, i8* %328, i64 1023
  store i8 0, i8* %331, align 1, !tbaa !35
  br label %332

332:                                              ; preds = %330, %327
  %333 = phi i8* [ %331, %330 ], [ null, %327 ]
  %334 = tail call i8* @halide_string_to_string(i8* %328, i8* %333, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %335 = tail call i8* @halide_string_to_string(i8* %334, i8* %333, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MFHCCPJE@clRetainMemObject?$AA@", i64 0, i64 0)) #7
  %336 = tail call i8* @halide_string_to_string(i8* %335, i8* %333, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %329, label %337, label %338

337:                                              ; preds = %332
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %344

338:                                              ; preds = %332
  %339 = ptrtoint i8* %336 to i64
  %340 = ptrtoint i8* %328 to i64
  %341 = sub i64 1, %340
  %342 = add i64 %341, %339
  %343 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %328, i64 %342) #7
  tail call void @halide_error(i8* %0, i8* nonnull %328) #7
  br label %344

344:                                              ; preds = %338, %337
  tail call void @free(i8* %328) #7
  br label %345

345:                                              ; preds = %323, %344
  store i8* %325, i8** bitcast (i32 (%struct._cl_mem*)** @"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA" to i8**), align 8, !tbaa !36
  %346 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@", i64 0, i64 0)) #7
  %347 = icmp eq i8* %346, null
  br i1 %347, label %348, label %366

348:                                              ; preds = %345
  %349 = tail call i8* @malloc(i64 1024) #7
  %350 = icmp eq i8* %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds i8, i8* %349, i64 1023
  store i8 0, i8* %352, align 1, !tbaa !35
  br label %353

353:                                              ; preds = %351, %348
  %354 = phi i8* [ %352, %351 ], [ null, %348 ]
  %355 = tail call i8* @halide_string_to_string(i8* %349, i8* %354, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %356 = tail call i8* @halide_string_to_string(i8* %355, i8* %354, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@HKDCDHGA@clReleaseMemObject?$AA@", i64 0, i64 0)) #7
  %357 = tail call i8* @halide_string_to_string(i8* %356, i8* %354, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %350, label %358, label %359

358:                                              ; preds = %353
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %365

359:                                              ; preds = %353
  %360 = ptrtoint i8* %357 to i64
  %361 = ptrtoint i8* %349 to i64
  %362 = sub i64 1, %361
  %363 = add i64 %362, %360
  %364 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %349, i64 %363) #7
  tail call void @halide_error(i8* %0, i8* nonnull %349) #7
  br label %365

365:                                              ; preds = %359, %358
  tail call void @free(i8* %349) #7
  br label %366

366:                                              ; preds = %345, %365
  store i8* %346, i8** bitcast (i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA" to i8**), align 8, !tbaa !36
  %367 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@", i64 0, i64 0)) #7
  %368 = icmp eq i8* %367, null
  br i1 %368, label %369, label %387

369:                                              ; preds = %366
  %370 = tail call i8* @malloc(i64 1024) #7
  %371 = icmp eq i8* %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds i8, i8* %370, i64 1023
  store i8 0, i8* %373, align 1, !tbaa !35
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i8* [ %373, %372 ], [ null, %369 ]
  %376 = tail call i8* @halide_string_to_string(i8* %370, i8* %375, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %377 = tail call i8* @halide_string_to_string(i8* %376, i8* %375, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GAHILIAB@clGetSupportedImageFormats?$AA@", i64 0, i64 0)) #7
  %378 = tail call i8* @halide_string_to_string(i8* %377, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %371, label %379, label %380

379:                                              ; preds = %374
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %386

380:                                              ; preds = %374
  %381 = ptrtoint i8* %378 to i64
  %382 = ptrtoint i8* %370 to i64
  %383 = sub i64 1, %382
  %384 = add i64 %383, %381
  %385 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %370, i64 %384) #7
  tail call void @halide_error(i8* %0, i8* nonnull %370) #7
  br label %386

386:                                              ; preds = %380, %379
  tail call void @free(i8* %370) #7
  br label %387

387:                                              ; preds = %366, %386
  store i8* %367, i8** bitcast (i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)** @"?clGetSupportedImageFormats@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@_KIIPEAU_cl_image_format@@PEAI@ZEA" to i8**), align 8, !tbaa !36
  %388 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@", i64 0, i64 0)) #7
  %389 = icmp eq i8* %388, null
  br i1 %389, label %390, label %408

390:                                              ; preds = %387
  %391 = tail call i8* @malloc(i64 1024) #7
  %392 = icmp eq i8* %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %391, i64 1023
  store i8 0, i8* %394, align 1, !tbaa !35
  br label %395

395:                                              ; preds = %393, %390
  %396 = phi i8* [ %394, %393 ], [ null, %390 ]
  %397 = tail call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %398 = tail call i8* @halide_string_to_string(i8* %397, i8* %396, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@DMLNBBGD@clGetMemObjectInfo?$AA@", i64 0, i64 0)) #7
  %399 = tail call i8* @halide_string_to_string(i8* %398, i8* %396, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %392, label %400, label %401

400:                                              ; preds = %395
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %407

401:                                              ; preds = %395
  %402 = ptrtoint i8* %399 to i64
  %403 = ptrtoint i8* %391 to i64
  %404 = sub i64 1, %403
  %405 = add i64 %404, %402
  %406 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %391, i64 %405) #7
  tail call void @halide_error(i8* %0, i8* nonnull %391) #7
  br label %407

407:                                              ; preds = %401, %400
  tail call void @free(i8* %391) #7
  br label %408

408:                                              ; preds = %387, %407
  store i8* %388, i8** bitcast (i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %409 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@", i64 0, i64 0)) #7
  %410 = icmp eq i8* %409, null
  br i1 %410, label %411, label %429

411:                                              ; preds = %408
  %412 = tail call i8* @malloc(i64 1024) #7
  %413 = icmp eq i8* %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds i8, i8* %412, i64 1023
  store i8 0, i8* %415, align 1, !tbaa !35
  br label %416

416:                                              ; preds = %414, %411
  %417 = phi i8* [ %415, %414 ], [ null, %411 ]
  %418 = tail call i8* @halide_string_to_string(i8* %412, i8* %417, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %419 = tail call i8* @halide_string_to_string(i8* %418, i8* %417, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@GHMBMNA@clGetImageInfo?$AA@", i64 0, i64 0)) #7
  %420 = tail call i8* @halide_string_to_string(i8* %419, i8* %417, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %413, label %421, label %422

421:                                              ; preds = %416
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %428

422:                                              ; preds = %416
  %423 = ptrtoint i8* %420 to i64
  %424 = ptrtoint i8* %412 to i64
  %425 = sub i64 1, %424
  %426 = add i64 %425, %423
  %427 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %412, i64 %426) #7
  tail call void @halide_error(i8* %0, i8* nonnull %412) #7
  br label %428

428:                                              ; preds = %422, %421
  tail call void @free(i8* %412) #7
  br label %429

429:                                              ; preds = %408, %428
  store i8* %409, i8** bitcast (i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @"?clGetImageInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %430 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@", i64 0, i64 0)) #7
  %431 = icmp eq i8* %430, null
  br i1 %431, label %432, label %450

432:                                              ; preds = %429
  %433 = tail call i8* @malloc(i64 1024) #7
  %434 = icmp eq i8* %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds i8, i8* %433, i64 1023
  store i8 0, i8* %436, align 1, !tbaa !35
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi i8* [ %436, %435 ], [ null, %432 ]
  %439 = tail call i8* @halide_string_to_string(i8* %433, i8* %438, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %440 = tail call i8* @halide_string_to_string(i8* %439, i8* %438, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@BAHPHBPH@clSetMemObjectDestructorCallback@", i64 0, i64 0)) #7
  %441 = tail call i8* @halide_string_to_string(i8* %440, i8* %438, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %434, label %442, label %443

442:                                              ; preds = %437
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %449

443:                                              ; preds = %437
  %444 = ptrtoint i8* %441 to i64
  %445 = ptrtoint i8* %433 to i64
  %446 = sub i64 1, %445
  %447 = add i64 %446, %444
  %448 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %433, i64 %447) #7
  tail call void @halide_error(i8* %0, i8* nonnull %433) #7
  br label %449

449:                                              ; preds = %443, %442
  tail call void @free(i8* %433) #7
  br label %450

450:                                              ; preds = %429, %449
  store i8* %430, i8** bitcast (i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)** @"?clSetMemObjectDestructorCallback@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@P6AX0PEAX@Z1@ZEA" to i8**), align 8, !tbaa !36
  %451 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@", i64 0, i64 0)) #7
  %452 = icmp eq i8* %451, null
  br i1 %452, label %453, label %471

453:                                              ; preds = %450
  %454 = tail call i8* @malloc(i64 1024) #7
  %455 = icmp eq i8* %454, null
  br i1 %455, label %458, label %456

456:                                              ; preds = %453
  %457 = getelementptr inbounds i8, i8* %454, i64 1023
  store i8 0, i8* %457, align 1, !tbaa !35
  br label %458

458:                                              ; preds = %456, %453
  %459 = phi i8* [ %457, %456 ], [ null, %453 ]
  %460 = tail call i8* @halide_string_to_string(i8* %454, i8* %459, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %461 = tail call i8* @halide_string_to_string(i8* %460, i8* %459, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@DOGIMIML@clCreateProgramWithSource?$AA@", i64 0, i64 0)) #7
  %462 = tail call i8* @halide_string_to_string(i8* %461, i8* %459, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %455, label %463, label %464

463:                                              ; preds = %458
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %470

464:                                              ; preds = %458
  %465 = ptrtoint i8* %462 to i64
  %466 = ptrtoint i8* %454 to i64
  %467 = sub i64 1, %466
  %468 = add i64 %467, %465
  %469 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %454, i64 %468) #7
  tail call void @halide_error(i8* %0, i8* nonnull %454) #7
  br label %470

470:                                              ; preds = %464, %463
  tail call void @free(i8* %454) #7
  br label %471

471:                                              ; preds = %450, %470
  store i8* %451, i8** bitcast (%struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)** @"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_program@@PEAU_cl_context@@IPEAPEBDPEBKPEAH@ZEA" to i8**), align 8, !tbaa !36
  %472 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@", i64 0, i64 0)) #7
  %473 = icmp eq i8* %472, null
  br i1 %473, label %474, label %492

474:                                              ; preds = %471
  %475 = tail call i8* @malloc(i64 1024) #7
  %476 = icmp eq i8* %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds i8, i8* %475, i64 1023
  store i8 0, i8* %478, align 1, !tbaa !35
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i8* [ %478, %477 ], [ null, %474 ]
  %481 = tail call i8* @halide_string_to_string(i8* %475, i8* %480, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %482 = tail call i8* @halide_string_to_string(i8* %481, i8* %480, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HKOLHJKG@clRetainProgram?$AA@", i64 0, i64 0)) #7
  %483 = tail call i8* @halide_string_to_string(i8* %482, i8* %480, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %476, label %484, label %485

484:                                              ; preds = %479
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %491

485:                                              ; preds = %479
  %486 = ptrtoint i8* %483 to i64
  %487 = ptrtoint i8* %475 to i64
  %488 = sub i64 1, %487
  %489 = add i64 %488, %486
  %490 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %475, i64 %489) #7
  tail call void @halide_error(i8* %0, i8* nonnull %475) #7
  br label %491

491:                                              ; preds = %485, %484
  tail call void @free(i8* %475) #7
  br label %492

492:                                              ; preds = %471, %491
  store i8* %472, i8** bitcast (i32 (%struct._cl_program*)** @"?clRetainProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA" to i8**), align 8, !tbaa !36
  %493 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@", i64 0, i64 0)) #7
  %494 = icmp eq i8* %493, null
  br i1 %494, label %495, label %513

495:                                              ; preds = %492
  %496 = tail call i8* @malloc(i64 1024) #7
  %497 = icmp eq i8* %496, null
  br i1 %497, label %500, label %498

498:                                              ; preds = %495
  %499 = getelementptr inbounds i8, i8* %496, i64 1023
  store i8 0, i8* %499, align 1, !tbaa !35
  br label %500

500:                                              ; preds = %498, %495
  %501 = phi i8* [ %499, %498 ], [ null, %495 ]
  %502 = tail call i8* @halide_string_to_string(i8* %496, i8* %501, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %503 = tail call i8* @halide_string_to_string(i8* %502, i8* %501, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@LMBENLKJ@clReleaseProgram?$AA@", i64 0, i64 0)) #7
  %504 = tail call i8* @halide_string_to_string(i8* %503, i8* %501, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %497, label %505, label %506

505:                                              ; preds = %500
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %512

506:                                              ; preds = %500
  %507 = ptrtoint i8* %504 to i64
  %508 = ptrtoint i8* %496 to i64
  %509 = sub i64 1, %508
  %510 = add i64 %509, %507
  %511 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %496, i64 %510) #7
  tail call void @halide_error(i8* %0, i8* nonnull %496) #7
  br label %512

512:                                              ; preds = %506, %505
  tail call void @free(i8* %496) #7
  br label %513

513:                                              ; preds = %492, %512
  store i8* %493, i8** bitcast (i32 (%struct._cl_program*)** @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA" to i8**), align 8, !tbaa !36
  %514 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@", i64 0, i64 0)) #7
  %515 = icmp eq i8* %514, null
  br i1 %515, label %516, label %534

516:                                              ; preds = %513
  %517 = tail call i8* @malloc(i64 1024) #7
  %518 = icmp eq i8* %517, null
  br i1 %518, label %521, label %519

519:                                              ; preds = %516
  %520 = getelementptr inbounds i8, i8* %517, i64 1023
  store i8 0, i8* %520, align 1, !tbaa !35
  br label %521

521:                                              ; preds = %519, %516
  %522 = phi i8* [ %520, %519 ], [ null, %516 ]
  %523 = tail call i8* @halide_string_to_string(i8* %517, i8* %522, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %524 = tail call i8* @halide_string_to_string(i8* %523, i8* %522, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@PJKDHLJF@clBuildProgram?$AA@", i64 0, i64 0)) #7
  %525 = tail call i8* @halide_string_to_string(i8* %524, i8* %522, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %518, label %526, label %527

526:                                              ; preds = %521
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %533

527:                                              ; preds = %521
  %528 = ptrtoint i8* %525 to i64
  %529 = ptrtoint i8* %517 to i64
  %530 = sub i64 1, %529
  %531 = add i64 %530, %528
  %532 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %517, i64 %531) #7
  tail call void @halide_error(i8* %0, i8* nonnull %517) #7
  br label %533

533:                                              ; preds = %527, %526
  tail call void @free(i8* %517) #7
  br label %534

534:                                              ; preds = %513, %533
  store i8* %514, i8** bitcast (i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@IPEBQEAU_cl_device_id@@PEBDP6AX0PEAX@Z3@ZEA" to i8**), align 8, !tbaa !36
  %535 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@", i64 0, i64 0)) #7
  %536 = icmp eq i8* %535, null
  br i1 %536, label %537, label %555

537:                                              ; preds = %534
  %538 = tail call i8* @malloc(i64 1024) #7
  %539 = icmp eq i8* %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds i8, i8* %538, i64 1023
  store i8 0, i8* %541, align 1, !tbaa !35
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i8* [ %541, %540 ], [ null, %537 ]
  %544 = tail call i8* @halide_string_to_string(i8* %538, i8* %543, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %545 = tail call i8* @halide_string_to_string(i8* %544, i8* %543, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@DEMGGFLJ@clGetProgramBuildInfo?$AA@", i64 0, i64 0)) #7
  %546 = tail call i8* @halide_string_to_string(i8* %545, i8* %543, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %539, label %547, label %548

547:                                              ; preds = %542
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %554

548:                                              ; preds = %542
  %549 = ptrtoint i8* %546 to i64
  %550 = ptrtoint i8* %538 to i64
  %551 = sub i64 1, %550
  %552 = add i64 %551, %549
  %553 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %538, i64 %552) #7
  tail call void @halide_error(i8* %0, i8* nonnull %538) #7
  br label %554

554:                                              ; preds = %548, %547
  tail call void @free(i8* %538) #7
  br label %555

555:                                              ; preds = %534, %554
  store i8* %535, i8** bitcast (i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@PEAU_cl_device_id@@IKPEAXPEAK@ZEA" to i8**), align 8, !tbaa !36
  %556 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@POBJOHCP@clCreateKernel?$AA@", i64 0, i64 0)) #7
  %557 = icmp eq i8* %556, null
  br i1 %557, label %558, label %576

558:                                              ; preds = %555
  %559 = tail call i8* @malloc(i64 1024) #7
  %560 = icmp eq i8* %559, null
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, i8* %559, i64 1023
  store i8 0, i8* %562, align 1, !tbaa !35
  br label %563

563:                                              ; preds = %561, %558
  %564 = phi i8* [ %562, %561 ], [ null, %558 ]
  %565 = tail call i8* @halide_string_to_string(i8* %559, i8* %564, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %566 = tail call i8* @halide_string_to_string(i8* %565, i8* %564, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@POBJOHCP@clCreateKernel?$AA@", i64 0, i64 0)) #7
  %567 = tail call i8* @halide_string_to_string(i8* %566, i8* %564, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %560, label %568, label %569

568:                                              ; preds = %563
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %575

569:                                              ; preds = %563
  %570 = ptrtoint i8* %567 to i64
  %571 = ptrtoint i8* %559 to i64
  %572 = sub i64 1, %571
  %573 = add i64 %572, %570
  %574 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %559, i64 %573) #7
  tail call void @halide_error(i8* %0, i8* nonnull %559) #7
  br label %575

575:                                              ; preds = %569, %568
  tail call void @free(i8* %559) #7
  br label %576

576:                                              ; preds = %555, %575
  store i8* %556, i8** bitcast (%struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_kernel@@PEAU_cl_program@@PEBDPEAH@ZEA" to i8**), align 8, !tbaa !36
  %577 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@", i64 0, i64 0)) #7
  %578 = icmp eq i8* %577, null
  br i1 %578, label %579, label %597

579:                                              ; preds = %576
  %580 = tail call i8* @malloc(i64 1024) #7
  %581 = icmp eq i8* %580, null
  br i1 %581, label %584, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds i8, i8* %580, i64 1023
  store i8 0, i8* %583, align 1, !tbaa !35
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i8* [ %583, %582 ], [ null, %579 ]
  %586 = tail call i8* @halide_string_to_string(i8* %580, i8* %585, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %587 = tail call i8* @halide_string_to_string(i8* %586, i8* %585, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IAJFDOHI@clRetainKernel?$AA@", i64 0, i64 0)) #7
  %588 = tail call i8* @halide_string_to_string(i8* %587, i8* %585, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %581, label %589, label %590

589:                                              ; preds = %584
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %596

590:                                              ; preds = %584
  %591 = ptrtoint i8* %588 to i64
  %592 = ptrtoint i8* %580 to i64
  %593 = sub i64 1, %592
  %594 = add i64 %593, %591
  %595 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %580, i64 %594) #7
  tail call void @halide_error(i8* %0, i8* nonnull %580) #7
  br label %596

596:                                              ; preds = %590, %589
  tail call void @free(i8* %580) #7
  br label %597

597:                                              ; preds = %576, %596
  store i8* %577, i8** bitcast (i32 (%struct._cl_kernel*)** @"?clRetainKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@@ZEA" to i8**), align 8, !tbaa !36
  %598 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@", i64 0, i64 0)) #7
  %599 = icmp eq i8* %598, null
  br i1 %599, label %600, label %618

600:                                              ; preds = %597
  %601 = tail call i8* @malloc(i64 1024) #7
  %602 = icmp eq i8* %601, null
  br i1 %602, label %605, label %603

603:                                              ; preds = %600
  %604 = getelementptr inbounds i8, i8* %601, i64 1023
  store i8 0, i8* %604, align 1, !tbaa !35
  br label %605

605:                                              ; preds = %603, %600
  %606 = phi i8* [ %604, %603 ], [ null, %600 ]
  %607 = tail call i8* @halide_string_to_string(i8* %601, i8* %606, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %608 = tail call i8* @halide_string_to_string(i8* %607, i8* %606, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@HDOOIDEC@clReleaseKernel?$AA@", i64 0, i64 0)) #7
  %609 = tail call i8* @halide_string_to_string(i8* %608, i8* %606, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %602, label %610, label %611

610:                                              ; preds = %605
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %617

611:                                              ; preds = %605
  %612 = ptrtoint i8* %609 to i64
  %613 = ptrtoint i8* %601 to i64
  %614 = sub i64 1, %613
  %615 = add i64 %614, %612
  %616 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %601, i64 %615) #7
  tail call void @halide_error(i8* %0, i8* nonnull %601) #7
  br label %617

617:                                              ; preds = %611, %610
  tail call void @free(i8* %601) #7
  br label %618

618:                                              ; preds = %597, %617
  store i8* %598, i8** bitcast (i32 (%struct._cl_kernel*)** @"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@@ZEA" to i8**), align 8, !tbaa !36
  %619 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@", i64 0, i64 0)) #7
  %620 = icmp eq i8* %619, null
  br i1 %620, label %621, label %639

621:                                              ; preds = %618
  %622 = tail call i8* @malloc(i64 1024) #7
  %623 = icmp eq i8* %622, null
  br i1 %623, label %626, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds i8, i8* %622, i64 1023
  store i8 0, i8* %625, align 1, !tbaa !35
  br label %626

626:                                              ; preds = %624, %621
  %627 = phi i8* [ %625, %624 ], [ null, %621 ]
  %628 = tail call i8* @halide_string_to_string(i8* %622, i8* %627, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %629 = tail call i8* @halide_string_to_string(i8* %628, i8* %627, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IIMFEPBK@clSetKernelArg?$AA@", i64 0, i64 0)) #7
  %630 = tail call i8* @halide_string_to_string(i8* %629, i8* %627, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %623, label %631, label %632

631:                                              ; preds = %626
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %638

632:                                              ; preds = %626
  %633 = ptrtoint i8* %630 to i64
  %634 = ptrtoint i8* %622 to i64
  %635 = sub i64 1, %634
  %636 = add i64 %635, %633
  %637 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %622, i64 %636) #7
  tail call void @halide_error(i8* %0, i8* nonnull %622) #7
  br label %638

638:                                              ; preds = %632, %631
  tail call void @free(i8* %622) #7
  br label %639

639:                                              ; preds = %618, %638
  store i8* %619, i8** bitcast (i32 (%struct._cl_kernel*, i32, i64, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@IKPEBX@ZEA" to i8**), align 8, !tbaa !36
  %640 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07KKBOLFGK@clFlush?$AA@", i64 0, i64 0)) #7
  %641 = icmp eq i8* %640, null
  br i1 %641, label %642, label %660

642:                                              ; preds = %639
  %643 = tail call i8* @malloc(i64 1024) #7
  %644 = icmp eq i8* %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %642
  %646 = getelementptr inbounds i8, i8* %643, i64 1023
  store i8 0, i8* %646, align 1, !tbaa !35
  br label %647

647:                                              ; preds = %645, %642
  %648 = phi i8* [ %646, %645 ], [ null, %642 ]
  %649 = tail call i8* @halide_string_to_string(i8* %643, i8* %648, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %650 = tail call i8* @halide_string_to_string(i8* %649, i8* %648, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07KKBOLFGK@clFlush?$AA@", i64 0, i64 0)) #7
  %651 = tail call i8* @halide_string_to_string(i8* %650, i8* %648, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %644, label %652, label %653

652:                                              ; preds = %647
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %659

653:                                              ; preds = %647
  %654 = ptrtoint i8* %651 to i64
  %655 = ptrtoint i8* %643 to i64
  %656 = sub i64 1, %655
  %657 = add i64 %656, %654
  %658 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %643, i64 %657) #7
  tail call void @halide_error(i8* %0, i8* nonnull %643) #7
  br label %659

659:                                              ; preds = %653, %652
  tail call void @free(i8* %643) #7
  br label %660

660:                                              ; preds = %639, %659
  store i8* %640, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clFlush@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" to i8**), align 8, !tbaa !36
  %661 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08GIMDLLBG@clFinish?$AA@", i64 0, i64 0)) #7
  %662 = icmp eq i8* %661, null
  br i1 %662, label %663, label %681

663:                                              ; preds = %660
  %664 = tail call i8* @malloc(i64 1024) #7
  %665 = icmp eq i8* %664, null
  br i1 %665, label %668, label %666

666:                                              ; preds = %663
  %667 = getelementptr inbounds i8, i8* %664, i64 1023
  store i8 0, i8* %667, align 1, !tbaa !35
  br label %668

668:                                              ; preds = %666, %663
  %669 = phi i8* [ %667, %666 ], [ null, %663 ]
  %670 = tail call i8* @halide_string_to_string(i8* %664, i8* %669, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %671 = tail call i8* @halide_string_to_string(i8* %670, i8* %669, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08GIMDLLBG@clFinish?$AA@", i64 0, i64 0)) #7
  %672 = tail call i8* @halide_string_to_string(i8* %671, i8* %669, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %665, label %673, label %674

673:                                              ; preds = %668
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %680

674:                                              ; preds = %668
  %675 = ptrtoint i8* %672 to i64
  %676 = ptrtoint i8* %664 to i64
  %677 = sub i64 1, %676
  %678 = add i64 %677, %675
  %679 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %664, i64 %678) #7
  tail call void @halide_error(i8* %0, i8* nonnull %664) #7
  br label %680

680:                                              ; preds = %674, %673
  tail call void @free(i8* %664) #7
  br label %681

681:                                              ; preds = %660, %680
  store i8* %661, i8** bitcast (i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA" to i8**), align 8, !tbaa !36
  %682 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@", i64 0, i64 0)) #7
  %683 = icmp eq i8* %682, null
  br i1 %683, label %684, label %702

684:                                              ; preds = %681
  %685 = tail call i8* @malloc(i64 1024) #7
  %686 = icmp eq i8* %685, null
  br i1 %686, label %689, label %687

687:                                              ; preds = %684
  %688 = getelementptr inbounds i8, i8* %685, i64 1023
  store i8 0, i8* %688, align 1, !tbaa !35
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i8* [ %688, %687 ], [ null, %684 ]
  %691 = tail call i8* @halide_string_to_string(i8* %685, i8* %690, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %692 = tail call i8* @halide_string_to_string(i8* %691, i8* %690, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BHABMOFN@clEnqueueReadBuffer?$AA@", i64 0, i64 0)) #7
  %693 = tail call i8* @halide_string_to_string(i8* %692, i8* %690, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %686, label %694, label %695

694:                                              ; preds = %689
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %701

695:                                              ; preds = %689
  %696 = ptrtoint i8* %693 to i64
  %697 = ptrtoint i8* %685 to i64
  %698 = sub i64 1, %697
  %699 = add i64 %698, %696
  %700 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %685, i64 %699) #7
  tail call void @halide_error(i8* %0, i8* nonnull %685) #7
  br label %701

701:                                              ; preds = %695, %694
  tail call void @free(i8* %685) #7
  br label %702

702:                                              ; preds = %681, %701
  store i8* %682, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %703 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@", i64 0, i64 0)) #7
  %704 = icmp eq i8* %703, null
  br i1 %704, label %705, label %723

705:                                              ; preds = %702
  %706 = tail call i8* @malloc(i64 1024) #7
  %707 = icmp eq i8* %706, null
  br i1 %707, label %710, label %708

708:                                              ; preds = %705
  %709 = getelementptr inbounds i8, i8* %706, i64 1023
  store i8 0, i8* %709, align 1, !tbaa !35
  br label %710

710:                                              ; preds = %708, %705
  %711 = phi i8* [ %709, %708 ], [ null, %705 ]
  %712 = tail call i8* @halide_string_to_string(i8* %706, i8* %711, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %713 = tail call i8* @halide_string_to_string(i8* %712, i8* %711, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@HHHHIKKC@clEnqueueReadBufferRect?$AA@", i64 0, i64 0)) #7
  %714 = tail call i8* @halide_string_to_string(i8* %713, i8* %711, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %707, label %715, label %716

715:                                              ; preds = %710
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %722

716:                                              ; preds = %710
  %717 = ptrtoint i8* %714 to i64
  %718 = ptrtoint i8* %706 to i64
  %719 = sub i64 1, %718
  %720 = add i64 %719, %717
  %721 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %706, i64 %720) #7
  tail call void @halide_error(i8* %0, i8* nonnull %706) #7
  br label %722

722:                                              ; preds = %716, %715
  tail call void @free(i8* %706) #7
  br label %723

723:                                              ; preds = %702, %722
  store i8* %703, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBufferRect@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK22KKKKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %724 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@", i64 0, i64 0)) #7
  %725 = icmp eq i8* %724, null
  br i1 %725, label %726, label %744

726:                                              ; preds = %723
  %727 = tail call i8* @malloc(i64 1024) #7
  %728 = icmp eq i8* %727, null
  br i1 %728, label %731, label %729

729:                                              ; preds = %726
  %730 = getelementptr inbounds i8, i8* %727, i64 1023
  store i8 0, i8* %730, align 1, !tbaa !35
  br label %731

731:                                              ; preds = %729, %726
  %732 = phi i8* [ %730, %729 ], [ null, %726 ]
  %733 = tail call i8* @halide_string_to_string(i8* %727, i8* %732, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %734 = tail call i8* @halide_string_to_string(i8* %733, i8* %732, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@LIFEAJJD@clEnqueueWriteBuffer?$AA@", i64 0, i64 0)) #7
  %735 = tail call i8* @halide_string_to_string(i8* %734, i8* %732, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %728, label %736, label %737

736:                                              ; preds = %731
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %743

737:                                              ; preds = %731
  %738 = ptrtoint i8* %735 to i64
  %739 = ptrtoint i8* %727 to i64
  %740 = sub i64 1, %739
  %741 = add i64 %740, %738
  %742 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %727, i64 %741) #7
  tail call void @halide_error(i8* %0, i8* nonnull %727) #7
  br label %743

743:                                              ; preds = %737, %736
  tail call void @free(i8* %727) #7
  br label %744

744:                                              ; preds = %723, %743
  store i8* %724, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %745 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@", i64 0, i64 0)) #7
  %746 = icmp eq i8* %745, null
  br i1 %746, label %747, label %765

747:                                              ; preds = %744
  %748 = tail call i8* @malloc(i64 1024) #7
  %749 = icmp eq i8* %748, null
  br i1 %749, label %752, label %750

750:                                              ; preds = %747
  %751 = getelementptr inbounds i8, i8* %748, i64 1023
  store i8 0, i8* %751, align 1, !tbaa !35
  br label %752

752:                                              ; preds = %750, %747
  %753 = phi i8* [ %751, %750 ], [ null, %747 ]
  %754 = tail call i8* @halide_string_to_string(i8* %748, i8* %753, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %755 = tail call i8* @halide_string_to_string(i8* %754, i8* %753, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@PEKAIEDK@clEnqueueWriteBufferRect?$AA@", i64 0, i64 0)) #7
  %756 = tail call i8* @halide_string_to_string(i8* %755, i8* %753, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %749, label %757, label %758

757:                                              ; preds = %752
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %764

758:                                              ; preds = %752
  %759 = ptrtoint i8* %756 to i64
  %760 = ptrtoint i8* %748 to i64
  %761 = sub i64 1, %760
  %762 = add i64 %761, %759
  %763 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %748, i64 %762) #7
  tail call void @halide_error(i8* %0, i8* nonnull %748) #7
  br label %764

764:                                              ; preds = %758, %757
  tail call void @free(i8* %748) #7
  br label %765

765:                                              ; preds = %744, %764
  store i8* %745, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBufferRect@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK22KKKKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %766 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@", i64 0, i64 0)) #7
  %767 = icmp eq i8* %766, null
  br i1 %767, label %768, label %786

768:                                              ; preds = %765
  %769 = tail call i8* @malloc(i64 1024) #7
  %770 = icmp eq i8* %769, null
  br i1 %770, label %773, label %771

771:                                              ; preds = %768
  %772 = getelementptr inbounds i8, i8* %769, i64 1023
  store i8 0, i8* %772, align 1, !tbaa !35
  br label %773

773:                                              ; preds = %771, %768
  %774 = phi i8* [ %772, %771 ], [ null, %768 ]
  %775 = tail call i8* @halide_string_to_string(i8* %769, i8* %774, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %776 = tail call i8* @halide_string_to_string(i8* %775, i8* %774, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@DDFODHFH@clEnqueueCopyBuffer?$AA@", i64 0, i64 0)) #7
  %777 = tail call i8* @halide_string_to_string(i8* %776, i8* %774, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %770, label %778, label %779

778:                                              ; preds = %773
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %785

779:                                              ; preds = %773
  %780 = ptrtoint i8* %777 to i64
  %781 = ptrtoint i8* %769 to i64
  %782 = sub i64 1, %781
  %783 = add i64 %782, %780
  %784 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %769, i64 %783) #7
  tail call void @halide_error(i8* %0, i8* nonnull %769) #7
  br label %785

785:                                              ; preds = %779, %778
  tail call void @free(i8* %769) #7
  br label %786

786:                                              ; preds = %765, %785
  store i8* %766, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@1KKKIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %787 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@", i64 0, i64 0)) #7
  %788 = icmp eq i8* %787, null
  br i1 %788, label %789, label %807

789:                                              ; preds = %786
  %790 = tail call i8* @malloc(i64 1024) #7
  %791 = icmp eq i8* %790, null
  br i1 %791, label %794, label %792

792:                                              ; preds = %789
  %793 = getelementptr inbounds i8, i8* %790, i64 1023
  store i8 0, i8* %793, align 1, !tbaa !35
  br label %794

794:                                              ; preds = %792, %789
  %795 = phi i8* [ %793, %792 ], [ null, %789 ]
  %796 = tail call i8* @halide_string_to_string(i8* %790, i8* %795, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %797 = tail call i8* @halide_string_to_string(i8* %796, i8* %795, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KODJHAIA@clEnqueueReadImage?$AA@", i64 0, i64 0)) #7
  %798 = tail call i8* @halide_string_to_string(i8* %797, i8* %795, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %791, label %799, label %800

799:                                              ; preds = %794
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %806

800:                                              ; preds = %794
  %801 = ptrtoint i8* %798 to i64
  %802 = ptrtoint i8* %790 to i64
  %803 = sub i64 1, %802
  %804 = add i64 %803, %801
  %805 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %790, i64 %804) #7
  tail call void @halide_error(i8* %0, i8* nonnull %790) #7
  br label %806

806:                                              ; preds = %800, %799
  tail call void @free(i8* %790) #7
  br label %807

807:                                              ; preds = %786, %806
  store i8* %787, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %808 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@", i64 0, i64 0)) #7
  %809 = icmp eq i8* %808, null
  br i1 %809, label %810, label %828

810:                                              ; preds = %807
  %811 = tail call i8* @malloc(i64 1024) #7
  %812 = icmp eq i8* %811, null
  br i1 %812, label %815, label %813

813:                                              ; preds = %810
  %814 = getelementptr inbounds i8, i8* %811, i64 1023
  store i8 0, i8* %814, align 1, !tbaa !35
  br label %815

815:                                              ; preds = %813, %810
  %816 = phi i8* [ %814, %813 ], [ null, %810 ]
  %817 = tail call i8* @halide_string_to_string(i8* %811, i8* %816, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %818 = tail call i8* @halide_string_to_string(i8* %817, i8* %816, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@PBOFPCCJ@clEnqueueWriteImage?$AA@", i64 0, i64 0)) #7
  %819 = tail call i8* @halide_string_to_string(i8* %818, i8* %816, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %812, label %820, label %821

820:                                              ; preds = %815
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %827

821:                                              ; preds = %815
  %822 = ptrtoint i8* %819 to i64
  %823 = ptrtoint i8* %811 to i64
  %824 = sub i64 1, %823
  %825 = add i64 %824, %822
  %826 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %811, i64 %825) #7
  tail call void @halide_error(i8* %0, i8* nonnull %811) #7
  br label %827

827:                                              ; preds = %821, %820
  tail call void @free(i8* %811) #7
  br label %828

828:                                              ; preds = %807, %827
  store i8* %808, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %829 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@", i64 0, i64 0)) #7
  %830 = icmp eq i8* %829, null
  br i1 %830, label %831, label %849

831:                                              ; preds = %828
  %832 = tail call i8* @malloc(i64 1024) #7
  %833 = icmp eq i8* %832, null
  br i1 %833, label %836, label %834

834:                                              ; preds = %831
  %835 = getelementptr inbounds i8, i8* %832, i64 1023
  store i8 0, i8* %835, align 1, !tbaa !35
  br label %836

836:                                              ; preds = %834, %831
  %837 = phi i8* [ %835, %834 ], [ null, %831 ]
  %838 = tail call i8* @halide_string_to_string(i8* %832, i8* %837, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %839 = tail call i8* @halide_string_to_string(i8* %838, i8* %837, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@KGLEFIHM@clEnqueueMapBuffer?$AA@", i64 0, i64 0)) #7
  %840 = tail call i8* @halide_string_to_string(i8* %839, i8* %837, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %833, label %841, label %842

841:                                              ; preds = %836
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %848

842:                                              ; preds = %836
  %843 = ptrtoint i8* %840 to i64
  %844 = ptrtoint i8* %832 to i64
  %845 = sub i64 1, %844
  %846 = add i64 %845, %843
  %847 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %832, i64 %846) #7
  tail call void @halide_error(i8* %0, i8* nonnull %832) #7
  br label %848

848:                                              ; preds = %842, %841
  tail call void @free(i8* %832) #7
  br label %849

849:                                              ; preds = %828, %848
  store i8* %829, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @"?clEnqueueMapBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAXPEAU_cl_command_queue@@PEAU_cl_mem@@I_KKKIPEBQEAU_cl_event@@PEAPEAU7@PEAH@ZEA" to i8**), align 8, !tbaa !36
  %850 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@", i64 0, i64 0)) #7
  %851 = icmp eq i8* %850, null
  br i1 %851, label %852, label %870

852:                                              ; preds = %849
  %853 = tail call i8* @malloc(i64 1024) #7
  %854 = icmp eq i8* %853, null
  br i1 %854, label %857, label %855

855:                                              ; preds = %852
  %856 = getelementptr inbounds i8, i8* %853, i64 1023
  store i8 0, i8* %856, align 1, !tbaa !35
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i8* [ %856, %855 ], [ null, %852 ]
  %859 = tail call i8* @halide_string_to_string(i8* %853, i8* %858, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %860 = tail call i8* @halide_string_to_string(i8* %859, i8* %858, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@BAEGHFLL@clEnqueueMapImage?$AA@", i64 0, i64 0)) #7
  %861 = tail call i8* @halide_string_to_string(i8* %860, i8* %858, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %854, label %862, label %863

862:                                              ; preds = %857
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %869

863:                                              ; preds = %857
  %864 = ptrtoint i8* %861 to i64
  %865 = ptrtoint i8* %853 to i64
  %866 = sub i64 1, %865
  %867 = add i64 %866, %864
  %868 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %853, i64 %867) #7
  tail call void @halide_error(i8* %0, i8* nonnull %853) #7
  br label %869

869:                                              ; preds = %863, %862
  tail call void @free(i8* %853) #7
  br label %870

870:                                              ; preds = %849, %869
  store i8* %850, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64*, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @"?clEnqueueMapImage@OpenCL@Internal@Runtime@Halide@@3P6APEAXPEAU_cl_command_queue@@PEAU_cl_mem@@I_KPEBK3PEAK4IPEBQEAU_cl_event@@PEAPEAU7@PEAH@ZEA" to i8**), align 8, !tbaa !36
  %871 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@", i64 0, i64 0)) #7
  %872 = icmp eq i8* %871, null
  br i1 %872, label %873, label %891

873:                                              ; preds = %870
  %874 = tail call i8* @malloc(i64 1024) #7
  %875 = icmp eq i8* %874, null
  br i1 %875, label %878, label %876

876:                                              ; preds = %873
  %877 = getelementptr inbounds i8, i8* %874, i64 1023
  store i8 0, i8* %877, align 1, !tbaa !35
  br label %878

878:                                              ; preds = %876, %873
  %879 = phi i8* [ %877, %876 ], [ null, %873 ]
  %880 = tail call i8* @halide_string_to_string(i8* %874, i8* %879, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %881 = tail call i8* @halide_string_to_string(i8* %880, i8* %879, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DHNIPHDC@clEnqueueUnmapMemObject?$AA@", i64 0, i64 0)) #7
  %882 = tail call i8* @halide_string_to_string(i8* %881, i8* %879, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %875, label %883, label %884

883:                                              ; preds = %878
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %890

884:                                              ; preds = %878
  %885 = ptrtoint i8* %882 to i64
  %886 = ptrtoint i8* %874 to i64
  %887 = sub i64 1, %886
  %888 = add i64 %887, %885
  %889 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %874, i64 %888) #7
  tail call void @halide_error(i8* %0, i8* nonnull %874) #7
  br label %890

890:                                              ; preds = %884, %883
  tail call void @free(i8* %874) #7
  br label %891

891:                                              ; preds = %870, %890
  store i8* %871, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueUnmapMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@PEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  %892 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@", i64 0, i64 0)) #7
  %893 = icmp eq i8* %892, null
  br i1 %893, label %894, label %912

894:                                              ; preds = %891
  %895 = tail call i8* @malloc(i64 1024) #7
  %896 = icmp eq i8* %895, null
  br i1 %896, label %899, label %897

897:                                              ; preds = %894
  %898 = getelementptr inbounds i8, i8* %895, i64 1023
  store i8 0, i8* %898, align 1, !tbaa !35
  br label %899

899:                                              ; preds = %897, %894
  %900 = phi i8* [ %898, %897 ], [ null, %894 ]
  %901 = tail call i8* @halide_string_to_string(i8* %895, i8* %900, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@JIGFLJEL@OpenCL?5API?5not?5found?3?5?$AA@", i64 0, i64 0)) #7
  %902 = tail call i8* @halide_string_to_string(i8* %901, i8* %900, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@NNEKHLGD@clEnqueueNDRangeKernel?$AA@", i64 0, i64 0)) #7
  %903 = tail call i8* @halide_string_to_string(i8* %902, i8* %900, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  br i1 %896, label %904, label %905

904:                                              ; preds = %899
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %911

905:                                              ; preds = %899
  %906 = ptrtoint i8* %903 to i64
  %907 = ptrtoint i8* %895 to i64
  %908 = sub i64 1, %907
  %909 = add i64 %908, %906
  %910 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %895, i64 %909) #7
  tail call void @halide_error(i8* %0, i8* nonnull %895) #7
  br label %911

911:                                              ; preds = %905, %904
  tail call void @free(i8* %895) #7
  br label %912

912:                                              ; preds = %891, %911
  store i8* %892, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_kernel@@IPEBK22IPEBQEAU_cl_event@@PEAPEAU7@@ZEA" to i8**), align 8, !tbaa !36
  ret void
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %0, i64 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !35
  store i8 1, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  store atomic volatile i8 0, i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = load i8, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38, !range !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@IKKCGBEB@HL_OCL_PLATFORM_NAME?$AA@", i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %9, i64 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !35
  store i8 1, i8* @"?platform_name_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?platform_name_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?platform_name@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0)
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %0, i64 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !35
  store i8 1, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  store atomic volatile i8 0, i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = load i8, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38, !range !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@PBIHOGAH@HL_OCL_DEVICE_TYPE?$AA@", i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %9, i64 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !35
  store i8 1, i8* @"?device_type_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?device_type_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"?device_type@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0)
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_set_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %0, i64 1024) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 1023), %7 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !35
  store i8 1, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  store atomic volatile i8 0, i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i8* @halide_opencl_get_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA", i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !37

5:                                                ; preds = %2
  %6 = load i8, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38, !range !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EDLBHNBE@HL_OCL_BUILD_OPTIONS?$AA@", i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), i8* nonnull %9, i64 1024) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 1023), %11 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !35
  store i8 1, i8* @"?build_options_initialized@OpenCL@Internal@Runtime@Halide@@3_NA", align 1, !tbaa !38
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @"?build_options_lock@OpenCL@Internal@Runtime@Halide@@3DA" release, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @"?build_options@OpenCL@Internal@Runtime@Halide@@3PADA", i64 0, i64 0)
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct._cl_context** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@KAFOONGG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@HOCNIAFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10, %11
  %12 = atomicrmw volatile xchg i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC", i8 1 acquire
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %11, !llvm.loop !41

14:                                               ; preds = %11
  %15 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", align 8, !tbaa !36
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = and i1 %16, %3
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call i32 @"?create_opencl_context@OpenCL@Internal@Runtime@Halide@@YAHPEAXPEAPEAU_cl_context@@PEAPEAU_cl_command_queue@@@Z"(i8* %0, %struct._cl_context** nonnull @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", %struct._cl_command_queue** nonnull @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_command_queue@@EA") #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", align 8, !tbaa !36
  br label %24

23:                                               ; preds = %18
  store atomic volatile i8 0, i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC" release, align 1
  br label %27

24:                                               ; preds = %21, %14
  %25 = phi %struct._cl_context* [ %22, %21 ], [ %15, %14 ]
  store %struct._cl_context* %25, %struct._cl_context** %1, align 8, !tbaa !36
  %26 = load %struct._cl_command_queue*, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_command_queue@@EA", align 8, !tbaa !36
  store %struct._cl_command_queue* %26, %struct._cl_command_queue** %2, align 8, !tbaa !36
  br label %27

27:                                               ; preds = %23, %24
  %28 = phi i32 [ 0, %24 ], [ %19, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind
define weak dso_local i32 @"?create_opencl_context@OpenCL@Internal@Runtime@Halide@@YAHPEAXPEAPEAU_cl_context@@PEAPEAU_cl_command_queue@@@Z"(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct._cl_platform_id*], align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = alloca [256 x i8], align 1
  %9 = alloca [128 x %struct._cl_device_id*], align 8
  %10 = alloca i32, align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._cl_device_id*, align 8
  %14 = alloca [3 x i64], align 8
  %15 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %17 = icmp eq %struct._cl_context** %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct._cl_context*, %struct._cl_context** %1, align 8, !tbaa !36
  %20 = icmp eq %struct._cl_context* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"??_C@_0HP@GFCJAEGO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load %struct._cl_command_queue*, %struct._cl_command_queue** %2, align 8, !tbaa !36
  %26 = icmp eq %struct._cl_command_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@BLCNEOOG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32 (i32, %struct._cl_platform_id**, i32*)*, i32 (i32, %struct._cl_platform_id**, i32*)** @"?clGetPlatformIDs@OpenCL@Internal@Runtime@Halide@@3P6AHIPEAPEAU_cl_platform_id@@PEAI@ZEA", align 8, !tbaa !36
  %30 = icmp eq i32 (i32, %struct._cl_platform_id**, i32*)* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = tail call i8* @malloc(i64 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@", i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !35
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@HGCNAKI@CL?3?5clGetPlatformIDs?5not?5found?6?$AA@", i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = add i64 %39, 1
  %42 = sub i64 %41, %40
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  tail call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #7
  br label %384

45:                                               ; preds = %28
  %46 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #9
  store i32 0, i32* %4, align 4, !tbaa !42
  %47 = bitcast [4 x %struct._cl_platform_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %47) #9
  %48 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #9
  store i32 0, i32* %6, align 4, !tbaa !42
  %49 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i64 0, i64 0
  %50 = call i32 %29(i32 4, %struct._cl_platform_id** nonnull %49, i32* nonnull %6) #7
  store i32 %50, i32* %4, align 4, !tbaa !42
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %99, label %52

52:                                               ; preds = %45
  %53 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %53) #9
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %54, align 8, !tbaa !43
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %55, align 8, !tbaa !45
  %56 = call i8* @malloc(i64 1024) #7
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %56, i8** %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  %59 = icmp eq i8* %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, i8* %56, i64 1023
  store i8 0, i8* %61, align 1, !tbaa !35
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi i8* [ %61, %60 ], [ null, %52 ]
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = call i8* @halide_string_to_string(i8* %56, i8* %63, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@LMLEHJG@CL?3?5clGetPlatformIDs?5failed?3?5?$AA@", i64 0, i64 0)) #7
  store i8* %65, i8** %58, align 8, !tbaa !47
  %66 = load i32, i32* %4, align 4, !tbaa !42
  %67 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %66) #8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i8* @halide_string_to_string(i8* %65, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %73

71:                                               ; preds = %62
  %72 = call i8* @halide_string_to_string(i8* %65, i8* %63, i8* nonnull %67) #7
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi i8* [ %72, %71 ], [ %70, %69 ]
  %75 = load i8*, i8** %64, align 8, !tbaa !48
  %76 = call i8* @halide_string_to_string(i8* %74, i8* %75, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7
  %77 = load i32, i32* %4, align 4, !tbaa !42
  %78 = sext i32 %77 to i64
  %79 = call i8* @halide_int64_to_string(i8* %76, i8* %75, i64 %78, i32 1) #7
  %80 = load i8*, i8** %57, align 8, !tbaa !46
  %81 = icmp eq i8* %80, null
  %82 = load i8*, i8** %54, align 8, !tbaa !43
  br i1 %81, label %83, label %84

83:                                               ; preds = %73
  call void @halide_error(i8* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %92

84:                                               ; preds = %73
  %85 = ptrtoint i8* %79 to i64
  %86 = ptrtoint i8* %80 to i64
  %87 = add i64 %85, 1
  %88 = sub i64 %87, %86
  %89 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %82, i8* nonnull %80, i64 %88) #7
  %90 = load i8*, i8** %57, align 8, !tbaa !46
  %91 = load i8*, i8** %54, align 8, !tbaa !43
  call void @halide_error(i8* %91, i8* %90) #7
  br label %92

92:                                               ; preds = %84, %83
  %93 = load i8, i8* %55, align 8, !tbaa !45, !range !40
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %57, align 8, !tbaa !46
  call void @free(i8* %96) #7
  br label %97

97:                                               ; preds = %92, %95
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %53) #9
  %98 = load i32, i32* %4, align 4, !tbaa !42
  br label %382

99:                                               ; preds = %45
  %100 = call i8* @halide_opencl_get_platform_name(i8* %0) #8
  %101 = icmp eq i8* %100, null
  %102 = load i32, i32* %6, align 4, !tbaa !42
  %103 = icmp eq i32 %102, 0
  br i1 %101, label %124, label %104

104:                                              ; preds = %99
  br i1 %103, label %129, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  br label %107

107:                                              ; preds = %105, %119
  %108 = phi i64 [ 0, %105 ], [ %120, %119 ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %106) #9
  %109 = load i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)** @"?clGetPlatformInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %110 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i64 0, i64 %108
  %111 = load %struct._cl_platform_id*, %struct._cl_platform_id** %110, align 8, !tbaa !36
  %112 = call i32 %109(%struct._cl_platform_id* %111, i32 2306, i64 256, i8* nonnull %106, i64* null) #7
  store i32 %112, i32* %4, align 4, !tbaa !42
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = call i8* @strstr(i8* nonnull %106, i8* nonnull %100) #7
  %116 = icmp eq i8* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load %struct._cl_platform_id*, %struct._cl_platform_id** %110, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %106) #9
  br label %126

119:                                              ; preds = %107, %114
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %106) #9
  %120 = add nuw nsw i64 %108, 1
  %121 = load i32, i32* %6, align 4, !tbaa !42
  %122 = zext i32 %121 to i64
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %107, label %129, !llvm.loop !49

124:                                              ; preds = %99
  %125 = load %struct._cl_platform_id*, %struct._cl_platform_id** %49, align 8
  br i1 %103, label %129, label %126

126:                                              ; preds = %124, %117
  %127 = phi %struct._cl_platform_id* [ %118, %117 ], [ %125, %124 ]
  %128 = icmp eq %struct._cl_platform_id* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %119, %104, %124, %126
  %130 = call i8* @malloc(i64 1024) #7
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i8* @halide_string_to_string(i8* %130, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, i8* %130, i64 1023
  store i8 0, i8* %135, align 1, !tbaa !35
  %136 = call i8* @halide_string_to_string(i8* nonnull %130, i8* nonnull %135, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@KFMEPBJD@CL?3?5Failed?5to?5find?5platform?6?$AA@", i64 0, i64 0)) #7
  %137 = ptrtoint i8* %136 to i64
  %138 = ptrtoint i8* %130 to i64
  %139 = add i64 %137, 1
  %140 = sub i64 %139, %138
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %130, i64 %140) #7
  call void @halide_error(i8* %0, i8* nonnull %130) #7
  br label %142

142:                                              ; preds = %134, %132
  call void @free(i8* %130) #7
  br label %382

143:                                              ; preds = %126
  %144 = call i8* @halide_opencl_get_device_type(i8* %0) #8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %162, label %146

146:                                              ; preds = %143
  %147 = load i8, i8* %144, align 1, !tbaa !35
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = call i8* @strstr(i8* nonnull %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03PBJBJNON@cpu?$AA@", i64 0, i64 0)) #7
  %151 = icmp eq i8* %150, null
  %152 = select i1 %151, i64 0, i64 2
  %153 = call i8* @strstr(i8* nonnull %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03HOPDAKLK@gpu?$AA@", i64 0, i64 0)) #7
  %154 = icmp eq i8* %153, null
  %155 = or i64 %152, 4
  %156 = select i1 %154, i64 %152, i64 %155
  %157 = call i8* @strstr(i8* nonnull %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03FJGAPNJI@acc?$AA@", i64 0, i64 0)) #7
  %158 = icmp eq i8* %157, null
  %159 = or i64 %156, 8
  br i1 %158, label %160, label %163

160:                                              ; preds = %149
  %161 = icmp eq i64 %156, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %143, %146, %160
  br label %163

163:                                              ; preds = %149, %160, %162
  %164 = phi i64 [ 4294967295, %162 ], [ %156, %160 ], [ %159, %149 ]
  %165 = bitcast [128 x %struct._cl_device_id*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %165) #9
  %166 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %166) #9
  store i32 0, i32* %10, align 4, !tbaa !42
  %167 = load i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)*, i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @"?clGetDeviceIDs@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_platform_id@@_KIPEAPEAU_cl_device_id@@PEAI@ZEA", align 8, !tbaa !36
  %168 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 0
  %169 = call i32 %167(%struct._cl_platform_id* nonnull %127, i64 %164, i32 128, %struct._cl_device_id** nonnull %168, i32* nonnull %10) #7
  store i32 %169, i32* %4, align 4, !tbaa !42
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %212, label %171

171:                                              ; preds = %163
  %172 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %172) #9
  %173 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %173, align 8, !tbaa !43
  %174 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %174, align 8, !tbaa !45
  %175 = call i8* @malloc(i64 1024) #7
  %176 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %175, i8** %176, align 8, !tbaa !46
  %177 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %175, i8** %177, align 8, !tbaa !47
  %178 = icmp eq i8* %175, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = getelementptr inbounds i8, i8* %175, i64 1023
  store i8 0, i8* %180, align 1, !tbaa !35
  br label %181

181:                                              ; preds = %171, %179
  %182 = phi i8* [ %180, %179 ], [ null, %171 ]
  %183 = call i8* @halide_string_to_string(i8* %175, i8* %182, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@HCBABLID@CL?3?5clGetDeviceIDs?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %184 = load i32, i32* %4, align 4, !tbaa !42
  %185 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %184) #8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = call i8* @halide_string_to_string(i8* %183, i8* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %191

189:                                              ; preds = %181
  %190 = call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull %185) #7
  br label %191

191:                                              ; preds = %187, %189
  %192 = phi i8* [ %190, %189 ], [ %188, %187 ]
  %193 = load i8*, i8** %176, align 8, !tbaa !46
  %194 = icmp eq i8* %193, null
  %195 = load i8*, i8** %173, align 8, !tbaa !43
  br i1 %194, label %196, label %197

196:                                              ; preds = %191
  call void @halide_error(i8* %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %205

197:                                              ; preds = %191
  %198 = ptrtoint i8* %192 to i64
  %199 = ptrtoint i8* %193 to i64
  %200 = sub i64 1, %199
  %201 = add i64 %200, %198
  %202 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %195, i8* nonnull %193, i64 %201) #7
  %203 = load i8*, i8** %176, align 8, !tbaa !46
  %204 = load i8*, i8** %173, align 8, !tbaa !43
  call void @halide_error(i8* %204, i8* %203) #7
  br label %205

205:                                              ; preds = %197, %196
  %206 = load i8, i8* %174, align 8, !tbaa !45, !range !40
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = load i8*, i8** %176, align 8, !tbaa !46
  call void @free(i8* %209) #7
  br label %210

210:                                              ; preds = %205, %208
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %172) #9
  %211 = load i32, i32* %4, align 4, !tbaa !42
  br label %380

212:                                              ; preds = %163
  %213 = call i32 @halide_get_gpu_device(i8* %0) #7
  %214 = icmp eq i32 %213, -1
  %215 = load i32, i32* %10, align 4
  %216 = icmp eq i32 %215, 1
  %217 = and i1 %214, %216
  %218 = xor i1 %214, true
  %219 = or i1 %216, %218
  %220 = select i1 %217, i32 0, i32 %213
  br i1 %219, label %245, label %221

221:                                              ; preds = %212
  %222 = icmp eq i32 %215, 0
  br i1 %222, label %251, label %223

223:                                              ; preds = %221
  %224 = bitcast i32* %12 to i8*
  br label %225

225:                                              ; preds = %223, %225
  %226 = phi i64 [ 0, %223 ], [ %241, %225 ]
  %227 = phi i32 [ 0, %223 ], [ %240, %225 ]
  %228 = phi i32 [ -1, %223 ], [ %239, %225 ]
  %229 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 %226
  %230 = load %struct._cl_device_id*, %struct._cl_device_id** %229, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %224) #9
  store i32 0, i32* %12, align 4, !tbaa !42
  %231 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %232 = call i32 %231(%struct._cl_device_id* %230, i32 4098, i64 4, i8* nonnull %224, i64* null) #7
  store i32 %232, i32* %4, align 4, !tbaa !42
  %233 = icmp eq i32 %232, 0
  %234 = load i32, i32* %12, align 4
  %235 = icmp ult i32 %234, %227
  %236 = trunc i64 %226 to i32
  %237 = select i1 %235, i32 %228, i32 %236
  %238 = select i1 %235, i32 %227, i32 %234
  %239 = select i1 %233, i32 %237, i32 %228
  %240 = select i1 %233, i32 %238, i32 %227
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %224) #9
  %241 = add nuw nsw i64 %226, 1
  %242 = load i32, i32* %10, align 4, !tbaa !42
  %243 = zext i32 %242 to i64
  %244 = icmp ult i64 %241, %243
  br i1 %244, label %225, label %245, !llvm.loop !50

245:                                              ; preds = %225, %212
  %246 = phi i32 [ %215, %212 ], [ %242, %225 ]
  %247 = phi i32 [ %220, %212 ], [ %239, %225 ]
  %248 = icmp sgt i32 %247, -1
  %249 = icmp slt i32 %247, %246
  %250 = and i1 %248, %249
  br i1 %250, label %270, label %251

251:                                              ; preds = %221, %245
  %252 = phi i32 [ %247, %245 ], [ -1, %221 ]
  %253 = call i8* @malloc(i64 1024) #7
  %254 = icmp eq i8* %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds i8, i8* %253, i64 1023
  store i8 0, i8* %256, align 1, !tbaa !35
  br label %257

257:                                              ; preds = %251, %255
  %258 = phi i8* [ %256, %255 ], [ null, %251 ]
  %259 = call i8* @halide_string_to_string(i8* %253, i8* %258, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@KPNMBBFB@CL?3?5Failed?5to?5get?5device?3?5?$AA@", i64 0, i64 0)) #7
  %260 = sext i32 %252 to i64
  %261 = call i8* @halide_int64_to_string(i8* %259, i8* %258, i64 %260, i32 1) #7
  br i1 %254, label %262, label %263

262:                                              ; preds = %257
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %269

263:                                              ; preds = %257
  %264 = ptrtoint i8* %261 to i64
  %265 = ptrtoint i8* %253 to i64
  %266 = add i64 %264, 1
  %267 = sub i64 %266, %265
  %268 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %253, i64 %267) #7
  call void @halide_error(i8* %0, i8* nonnull %253) #7
  br label %269

269:                                              ; preds = %263, %262
  call void @free(i8* %253) #7
  br label %380

270:                                              ; preds = %245
  %271 = bitcast %struct._cl_device_id** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %271) #9
  %272 = zext i32 %247 to i64
  %273 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 %272
  %274 = load %struct._cl_device_id*, %struct._cl_device_id** %273, align 8, !tbaa !36
  store %struct._cl_device_id* %274, %struct._cl_device_id** %13, align 8, !tbaa !36
  %275 = bitcast [3 x i64]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %275) #9
  %276 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 4228, i64* %276, align 8, !tbaa !2
  %277 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %278 = ptrtoint %struct._cl_platform_id* %127 to i64
  store i64 %278, i64* %277, align 8, !tbaa !2
  %279 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 0, i64* %279, align 8, !tbaa !2
  %280 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %281 = call %struct._cl_context* %280(i64* nonnull %276, i32 1, %struct._cl_device_id** nonnull %13, void (i8*, i8*, i64, i8*)* null, i8* null, i32* nonnull %4) #7
  store %struct._cl_context* %281, %struct._cl_context** %1, align 8, !tbaa !36
  %282 = load i32, i32* %4, align 4, !tbaa !42
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %331, label %284

284:                                              ; preds = %270
  %285 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %282) #8
  %286 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %286) #9
  %287 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 3
  store i8* %0, i8** %287, align 8, !tbaa !43
  %288 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 4
  store i8 1, i8* %288, align 8, !tbaa !45
  %289 = call i8* @malloc(i64 1024) #7
  %290 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 0
  store i8* %289, i8** %290, align 8, !tbaa !46
  %291 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 1
  %292 = icmp eq i8* %289, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %284
  %294 = getelementptr inbounds i8, i8* %289, i64 1023
  store i8 0, i8* %294, align 1, !tbaa !35
  br label %295

295:                                              ; preds = %284, %293
  %296 = phi i8* [ %294, %293 ], [ null, %284 ]
  %297 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 2
  store i8* %296, i8** %297, align 8
  %298 = call i8* @halide_string_to_string(i8* %289, i8* %296, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@DAIECECO@CL?3?5clCreateContext?5failed?3?5?$AA@", i64 0, i64 0)) #7
  store i8* %298, i8** %291, align 8, !tbaa !47
  %299 = load i32, i32* %4, align 4, !tbaa !42
  %300 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %299) #8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = call i8* @halide_string_to_string(i8* %298, i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %306

304:                                              ; preds = %295
  %305 = call i8* @halide_string_to_string(i8* %298, i8* %296, i8* nonnull %300) #7
  br label %306

306:                                              ; preds = %302, %304
  %307 = phi i8* [ %305, %304 ], [ %303, %302 ]
  %308 = load i8*, i8** %297, align 8, !tbaa !48
  %309 = call i8* @halide_string_to_string(i8* %307, i8* %308, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01JLIPDDHJ@?3?$AA@", i64 0, i64 0)) #7
  %310 = load i32, i32* %4, align 4, !tbaa !42
  %311 = sext i32 %310 to i64
  %312 = call i8* @halide_int64_to_string(i8* %309, i8* %308, i64 %311, i32 1) #7
  %313 = load i8*, i8** %290, align 8, !tbaa !46
  %314 = icmp eq i8* %313, null
  %315 = load i8*, i8** %287, align 8, !tbaa !43
  br i1 %314, label %316, label %317

316:                                              ; preds = %306
  call void @halide_error(i8* %315, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %325

317:                                              ; preds = %306
  %318 = ptrtoint i8* %312 to i64
  %319 = ptrtoint i8* %313 to i64
  %320 = add i64 %318, 1
  %321 = sub i64 %320, %319
  %322 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %315, i8* nonnull %313, i64 %321) #7
  %323 = load i8*, i8** %290, align 8, !tbaa !46
  %324 = load i8*, i8** %287, align 8, !tbaa !43
  call void @halide_error(i8* %324, i8* %323) #7
  br label %325

325:                                              ; preds = %317, %316
  %326 = load i8, i8* %288, align 8, !tbaa !45, !range !40
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %325
  %329 = load i8*, i8** %290, align 8, !tbaa !46
  call void @free(i8* %329) #7
  br label %330

330:                                              ; preds = %325, %328
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %286) #9
  br label %378

331:                                              ; preds = %270
  %332 = load %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)*, %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @"?clCreateCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_command_queue@@PEAU_cl_context@@PEAU_cl_device_id@@_KPEAH@ZEA", align 8, !tbaa !36
  %333 = load %struct._cl_device_id*, %struct._cl_device_id** %13, align 8, !tbaa !36
  %334 = call %struct._cl_command_queue* %332(%struct._cl_context* %281, %struct._cl_device_id* %333, i64 0, i32* nonnull %4) #7
  store %struct._cl_command_queue* %334, %struct._cl_command_queue** %2, align 8, !tbaa !36
  %335 = load i32, i32* %4, align 4, !tbaa !42
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %378, label %337

337:                                              ; preds = %331
  %338 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %335) #8
  %339 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %339) #9
  %340 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 3
  store i8* %0, i8** %340, align 8, !tbaa !43
  %341 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 4
  store i8 1, i8* %341, align 8, !tbaa !45
  %342 = call i8* @malloc(i64 1024) #7
  %343 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 0
  store i8* %342, i8** %343, align 8, !tbaa !46
  %344 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 1
  store i8* %342, i8** %344, align 8, !tbaa !47
  %345 = icmp eq i8* %342, null
  br i1 %345, label %348, label %346

346:                                              ; preds = %337
  %347 = getelementptr inbounds i8, i8* %342, i64 1023
  store i8 0, i8* %347, align 1, !tbaa !35
  br label %348

348:                                              ; preds = %337, %346
  %349 = phi i8* [ %347, %346 ], [ null, %337 ]
  %350 = call i8* @halide_string_to_string(i8* %342, i8* %349, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@OJGJMEDK@CL?3?5clCreateCommandQueue?5failed?3@", i64 0, i64 0)) #7
  %351 = load i32, i32* %4, align 4, !tbaa !42
  %352 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %351) #8
  %353 = icmp eq i8* %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %348
  %355 = call i8* @halide_string_to_string(i8* %350, i8* %349, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %358

356:                                              ; preds = %348
  %357 = call i8* @halide_string_to_string(i8* %350, i8* %349, i8* nonnull %352) #7
  br label %358

358:                                              ; preds = %354, %356
  %359 = phi i8* [ %357, %356 ], [ %355, %354 ]
  %360 = load i8*, i8** %343, align 8, !tbaa !46
  %361 = icmp eq i8* %360, null
  %362 = load i8*, i8** %340, align 8, !tbaa !43
  br i1 %361, label %363, label %364

363:                                              ; preds = %358
  call void @halide_error(i8* %362, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %372

364:                                              ; preds = %358
  %365 = ptrtoint i8* %359 to i64
  %366 = ptrtoint i8* %360 to i64
  %367 = sub i64 1, %366
  %368 = add i64 %367, %365
  %369 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %362, i8* nonnull %360, i64 %368) #7
  %370 = load i8*, i8** %343, align 8, !tbaa !46
  %371 = load i8*, i8** %340, align 8, !tbaa !43
  call void @halide_error(i8* %371, i8* %370) #7
  br label %372

372:                                              ; preds = %364, %363
  %373 = load i8, i8* %341, align 8, !tbaa !45, !range !40
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = load i8*, i8** %343, align 8, !tbaa !46
  call void @free(i8* %376) #7
  br label %377

377:                                              ; preds = %372, %375
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %339) #9
  br label %378

378:                                              ; preds = %331, %377, %330
  %379 = load i32, i32* %4, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %275) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %271) #9
  br label %380

380:                                              ; preds = %269, %378, %210
  %381 = phi i32 [ %211, %210 ], [ -1, %269 ], [ %379, %378 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %166) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %165) #9
  br label %382

382:                                              ; preds = %142, %380, %97
  %383 = phi i32 [ %98, %97 ], [ -32, %142 ], [ %381, %380 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %47) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #9
  br label %384

384:                                              ; preds = %382, %44
  %385 = phi i32 [ -1, %44 ], [ %383, %382 ]
  ret i32 %385
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_release_cl_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @"?thread_lock@OpenCL@Internal@Runtime@Halide@@3DC" release, align 1
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #4 {
  %4 = alloca i64, align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !21
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %3
  %10 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %11 = icmp eq i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #8
  %13 = load i64, i64* %6, align 8, !tbaa !21
  %14 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* [ %14, %12 ], [ %10, %9 ]
  %17 = phi i64 [ %13, %12 ], [ %7, %9 ]
  %18 = inttoptr i64 %17 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i64 0, i32 1
  %20 = load %struct._cl_mem*, %struct._cl_mem** %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i64 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !53
  %23 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #9
  %24 = call i32 %16(%struct._cl_mem* %20, i32 4354, i64 8, i8* nonnull %23, i64* null) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %15
  %27 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %27) #9
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %28, align 8, !tbaa !43
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %29, align 8, !tbaa !45
  %30 = call i8* @malloc(i64 1024) #7
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %30, i8** %31, align 8, !tbaa !46
  %32 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %33 = icmp eq i8* %30, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %35, align 1, !tbaa !35
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi i8* [ %35, %34 ], [ null, %26 ]
  %38 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = call i8* @halide_string_to_string(i8* %30, i8* %37, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@KGALDEEM@CL?3?5Bad?5device?5pointer?5?$AA@", i64 0, i64 0)) #7
  store i8* %39, i8** %32, align 8, !tbaa !47
  %40 = bitcast %struct._cl_mem* %20 to i8*
  %41 = call i8* @halide_pointer_to_string(i8* %39, i8* %37, i8* %40) #7
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %37, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@", i64 0, i64 0)) #7
  %43 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %24) #8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i8* @halide_string_to_string(i8* %42, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %49

47:                                               ; preds = %36
  %48 = call i8* @halide_string_to_string(i8* %42, i8* %37, i8* nonnull %43) #7
  br label %49

49:                                               ; preds = %45, %47
  %50 = phi i8* [ %48, %47 ], [ %46, %45 ]
  %51 = load i8*, i8** %31, align 8, !tbaa !46
  %52 = icmp eq i8* %51, null
  %53 = load i8*, i8** %28, align 8, !tbaa !43
  br i1 %52, label %54, label %55

54:                                               ; preds = %49
  call void @halide_error(i8* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %63

55:                                               ; preds = %49
  %56 = ptrtoint i8* %50 to i64
  %57 = ptrtoint i8* %51 to i64
  %58 = sub i64 1, %57
  %59 = add i64 %58, %56
  %60 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %53, i8* nonnull %51, i64 %59) #7
  %61 = load i8*, i8** %31, align 8, !tbaa !46
  %62 = load i8*, i8** %28, align 8, !tbaa !43
  call void @halide_error(i8* %62, i8* %61) #7
  br label %63

63:                                               ; preds = %55, %54
  %64 = load i8, i8* %29, align 8, !tbaa !45, !range !40
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %31, align 8, !tbaa !46
  call void @free(i8* %67) #7
  br label %68

68:                                               ; preds = %63, %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %27) #9
  br label %76

69:                                               ; preds = %15
  %70 = icmp eq i64 %2, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %69
  %72 = load i64, i64* %4, align 8, !tbaa !54
  %73 = add i64 %22, %2
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @"??_C@_0KJ@OLKHKEEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %76

76:                                               ; preds = %69, %75, %71, %68
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9
  br label %77

77:                                               ; preds = %3, %76
  %78 = phi i1 [ %25, %76 ], [ true, %3 ]
  ret i1 %78
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %0) local_unnamed_addr #5 {
  switch i32 %0, label %60 [
    i32 0, label %61
    i32 -1, label %2
    i32 -2, label %3
    i32 -3, label %4
    i32 -4, label %5
    i32 -5, label %6
    i32 -6, label %7
    i32 -7, label %8
    i32 -8, label %9
    i32 -9, label %10
    i32 -10, label %11
    i32 -11, label %12
    i32 -12, label %13
    i32 -13, label %14
    i32 -14, label %15
    i32 -15, label %16
    i32 -16, label %17
    i32 -17, label %18
    i32 -18, label %19
    i32 -19, label %20
    i32 -30, label %21
    i32 -31, label %22
    i32 -32, label %23
    i32 -33, label %24
    i32 -34, label %25
    i32 -35, label %26
    i32 -36, label %27
    i32 -37, label %28
    i32 -38, label %29
    i32 -39, label %30
    i32 -40, label %31
    i32 -41, label %32
    i32 -42, label %33
    i32 -43, label %34
    i32 -44, label %35
    i32 -45, label %36
    i32 -46, label %37
    i32 -47, label %38
    i32 -48, label %39
    i32 -49, label %40
    i32 -50, label %41
    i32 -51, label %42
    i32 -52, label %43
    i32 -53, label %44
    i32 -54, label %45
    i32 -55, label %46
    i32 -56, label %47
    i32 -57, label %48
    i32 -58, label %49
    i32 -59, label %50
    i32 -60, label %51
    i32 -61, label %52
    i32 -62, label %53
    i32 -63, label %54
    i32 -64, label %55
    i32 -65, label %56
    i32 -66, label %57
    i32 -67, label %58
    i32 -68, label %59
  ]

2:                                                ; preds = %1
  br label %61

3:                                                ; preds = %1
  br label %61

4:                                                ; preds = %1
  br label %61

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  br label %61

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  br label %61

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  br label %61

14:                                               ; preds = %1
  br label %61

15:                                               ; preds = %1
  br label %61

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  br label %61

19:                                               ; preds = %1
  br label %61

20:                                               ; preds = %1
  br label %61

21:                                               ; preds = %1
  br label %61

22:                                               ; preds = %1
  br label %61

23:                                               ; preds = %1
  br label %61

24:                                               ; preds = %1
  br label %61

25:                                               ; preds = %1
  br label %61

26:                                               ; preds = %1
  br label %61

27:                                               ; preds = %1
  br label %61

28:                                               ; preds = %1
  br label %61

29:                                               ; preds = %1
  br label %61

30:                                               ; preds = %1
  br label %61

31:                                               ; preds = %1
  br label %61

32:                                               ; preds = %1
  br label %61

33:                                               ; preds = %1
  br label %61

34:                                               ; preds = %1
  br label %61

35:                                               ; preds = %1
  br label %61

36:                                               ; preds = %1
  br label %61

37:                                               ; preds = %1
  br label %61

38:                                               ; preds = %1
  br label %61

39:                                               ; preds = %1
  br label %61

40:                                               ; preds = %1
  br label %61

41:                                               ; preds = %1
  br label %61

42:                                               ; preds = %1
  br label %61

43:                                               ; preds = %1
  br label %61

44:                                               ; preds = %1
  br label %61

45:                                               ; preds = %1
  br label %61

46:                                               ; preds = %1
  br label %61

47:                                               ; preds = %1
  br label %61

48:                                               ; preds = %1
  br label %61

49:                                               ; preds = %1
  br label %61

50:                                               ; preds = %1
  br label %61

51:                                               ; preds = %1
  br label %61

52:                                               ; preds = %1
  br label %61

53:                                               ; preds = %1
  br label %61

54:                                               ; preds = %1
  br label %61

55:                                               ; preds = %1
  br label %61

56:                                               ; preds = %1
  br label %61

57:                                               ; preds = %1
  br label %61

58:                                               ; preds = %1
  br label %61

59:                                               ; preds = %1
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %1, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %62 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@EEJCIADE@?$DMUnknown?5error?$DO?$AA@", i64 0, i64 0), %60 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@CDIFHCPP@CL_INVALID_DEVICE_PARTITION_COUN@", i64 0, i64 0), %59 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@FJFBMGOA@CL_INVALID_LINKER_OPTIONS?$AA@", i64 0, i64 0), %58 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@EGEFLIHM@CL_INVALID_COMPILER_OPTIONS?$AA@", i64 0, i64 0), %57 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@DLPOCGIE@CL_INVALID_IMAGE_DESCRIPTOR?$AA@", i64 0, i64 0), %56 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GJAGOAJM@CL_INVALID_PROPERTY?$AA@", i64 0, i64 0), %55 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@IPEANGIP@CL_INVALID_GLOBAL_WORK_SIZE?$AA@", i64 0, i64 0), %54 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@EAPANENJ@CL_INVALID_MIP_LEVEL?$AA@", i64 0, i64 0), %53 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IDINIOAG@CL_INVALID_BUFFER_SIZE?$AA@", i64 0, i64 0), %52 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@NPNLGFAG@CL_INVALID_GL_OBJECT?$AA@", i64 0, i64 0), %51 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@MHCPKDDA@CL_INVALID_OPERATION?$AA@", i64 0, i64 0), %50 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@GJKHKINM@CL_INVALID_EVENT?$AA@", i64 0, i64 0), %49 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@KDCAPAB@CL_INVALID_EVENT_WAIT_LIST?$AA@", i64 0, i64 0), %48 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@ICDONJCN@CL_INVALID_GLOBAL_OFFSET?$AA@", i64 0, i64 0), %47 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@PBHIKMMK@CL_INVALID_WORK_ITEM_SIZE?$AA@", i64 0, i64 0), %46 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@GNFKDAIO@CL_INVALID_WORK_GROUP_SIZE?$AA@", i64 0, i64 0), %45 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@IIJALOOA@CL_INVALID_WORK_DIMENSION?$AA@", i64 0, i64 0), %44 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@IHPAIFMN@CL_INVALID_KERNEL_ARGS?$AA@", i64 0, i64 0), %43 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@JEFFIIPH@CL_INVALID_ARG_SIZE?$AA@", i64 0, i64 0), %42 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@KHKKPIDG@CL_INVALID_ARG_VALUE?$AA@", i64 0, i64 0), %41 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PBIEDICK@CL_INVALID_ARG_INDEX?$AA@", i64 0, i64 0), %40 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@MJJJLAOD@CL_INVALID_KERNEL?$AA@", i64 0, i64 0), %39 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@PKJJKFBD@CL_INVALID_KERNEL_DEFINITION?$AA@", i64 0, i64 0), %38 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@FGADNKGM@CL_INVALID_KERNEL_NAME?$AA@", i64 0, i64 0), %37 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@EDBIPNOL@CL_INVALID_PROGRAM_EXECUTABLE?$AA@", i64 0, i64 0), %36 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@IIPLBLEG@CL_INVALID_PROGRAM?$AA@", i64 0, i64 0), %35 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@IDJIFICI@CL_INVALID_BUILD_OPTIONS?$AA@", i64 0, i64 0), %34 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@PIGMAMHP@CL_INVALID_BINARY?$AA@", i64 0, i64 0), %33 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@LFNPPGIB@CL_INVALID_SAMPLER?$AA@", i64 0, i64 0), %32 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@HCNOAFJE@CL_INVALID_IMAGE_SIZE?$AA@", i64 0, i64 0), %31 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IIJKEAGK@CL_INVALID_IMAGE_FORMAT_DESCRIPT@", i64 0, i64 0), %30 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@OEIKFAMH@CL_INVALID_MEM_OBJECT?$AA@", i64 0, i64 0), %29 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@MBOCAOMA@CL_INVALID_HOST_PTR?$AA@", i64 0, i64 0), %28 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@DCHMJOMG@CL_INVALID_COMMAND_QUEUE?$AA@", i64 0, i64 0), %27 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@LJKBKLGM@CL_INVALID_QUEUE_PROPERTIES?$AA@", i64 0, i64 0), %26 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@NFODLALG@CL_INVALID_CONTEXT?$AA@", i64 0, i64 0), %25 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@ICMJJJII@CL_INVALID_DEVICE?$AA@", i64 0, i64 0), %24 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@EGJKELL@CL_INVALID_PLATFORM?$AA@", i64 0, i64 0), %23 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@LBOJAEIK@CL_INVALID_DEVICE_TYPE?$AA@", i64 0, i64 0), %22 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@IHLDHA@CL_INVALID_VALUE?$AA@", i64 0, i64 0), %21 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@JNJGNCL@CL_KERNEL_ARG_INFO_NOT_AVAILABLE@", i64 0, i64 0), %20 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@EBAMFBNN@CL_DEVICE_PARTITION_FAILED?$AA@", i64 0, i64 0), %19 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@BKGHHLEO@CL_LINK_PROGRAM_FAILURE?$AA@", i64 0, i64 0), %18 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@GMJLLHMG@CL_LINKER_NOT_AVAILABLE?$AA@", i64 0, i64 0), %17 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@OINJNLGH@CL_COMPILE_PROGRAM_FAILURE?$AA@", i64 0, i64 0), %16 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@ECJCNBKL@CL_EXEC_STATUS_ERROR_FOR_EVENTS_@", i64 0, i64 0), %15 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@OKLIKJOK@CL_MISALIGNED_SUB_BUFFER_OFFSET?$AA@", i64 0, i64 0), %14 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LNNGPEBP@CL_MAP_FAILURE?$AA@", i64 0, i64 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@GCBBIHOP@CL_BUILD_PROGRAM_FAILURE?$AA@", i64 0, i64 0), %12 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@NPJAPAAL@CL_IMAGE_FORMAT_NOT_SUPPORTED?$AA@", i64 0, i64 0), %11 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@ONFDNJEG@CL_IMAGE_FORMAT_MISMATCH?$AA@", i64 0, i64 0), %10 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@JMGFBLJK@CL_MEM_COPY_OVERLAP?$AA@", i64 0, i64 0), %9 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @"??_C@_0CA@NMFLODBK@CL_PROFILING_INFO_NOT_AVAILABLE?$AA@", i64 0, i64 0), %8 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@FJOOPJHO@CL_OUT_OF_HOST_MEMORY?$AA@", i64 0, i64 0), %7 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@GHEIGNPM@CL_OUT_OF_RESOURCES?$AA@", i64 0, i64 0), %6 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@KNGEFLKK@CL_MEM_OBJECT_ALLOCATION_FAILURE@", i64 0, i64 0), %5 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @"??_C@_0BK@NIHADMP@CL_COMPILER_NOT_AVAILABLE?$AA@", i64 0, i64 0), %4 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@DJICLPLE@CL_DEVICE_NOT_AVAILABLE?$AA@", i64 0, i64 0), %3 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@ELAGNECF@CL_DEVICE_NOT_FOUND?$AA@", i64 0, i64 0), %2 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@JNMCAGGL@CL_SUCCESS?$AA@", i64 0, i64 0), %1 ]
  ret i8* %62
}

declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local %struct._cl_program* @"?compile_kernel@OpenCL@Internal@Runtime@Halide@@YAPEAU_cl_program@@PEAXPEAU_cl_context@@PEBDH@Z"(i8* %0, %struct._cl_context* %1, i8* %2, i32 %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._cl_device_id*, align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = alloca [1 x %struct._cl_device_id*], align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %13 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 8
  %14 = alloca [1 x i8*], align 8
  %15 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", align 8
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #9
  store i32 0, i32* %5, align 4, !tbaa !42
  %18 = bitcast %struct._cl_device_id** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9
  %19 = load i32 (%struct._cl_context*, i32, i64, i8*, i64*)*, i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %20 = call i32 %19(%struct._cl_context* %1, i32 4225, i64 8, i8* nonnull %18, i64* null) #7
  store i32 %20, i32* %5, align 4, !tbaa !42
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %4
  %23 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #9
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %25, align 8, !tbaa !45
  %26 = call i8* @malloc(i64 1024) #7
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %26, i8** %27, align 8, !tbaa !46
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %26, i8** %28, align 8, !tbaa !47
  %29 = icmp eq i8* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i64 1023
  store i8 0, i8* %31, align 1, !tbaa !35
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i8* [ %31, %30 ], [ null, %22 ]
  %34 = call i8* @halide_string_to_string(i8* %26, i8* %33, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@LKEIDCIO@CL?3?5clGetContextInfo?$CICL_CONTEXT_@", i64 0, i64 0)) #7
  %35 = load i32, i32* %5, align 4, !tbaa !42
  %36 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %35) #8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %42

40:                                               ; preds = %32
  %41 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull %36) #7
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %27, align 8, !tbaa !46
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %24, align 8, !tbaa !43
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %56

48:                                               ; preds = %42
  %49 = ptrtoint i8* %43 to i64
  %50 = ptrtoint i8* %44 to i64
  %51 = sub i64 1, %50
  %52 = add i64 %51, %49
  %53 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %52) #7
  %54 = load i8*, i8** %27, align 8, !tbaa !46
  %55 = load i8*, i8** %24, align 8, !tbaa !43
  call void @halide_error(i8* %55, i8* %54) #7
  br label %56

56:                                               ; preds = %48, %47
  %57 = load i8, i8* %25, align 8, !tbaa !45, !range !40
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %27, align 8, !tbaa !46
  call void @free(i8* %60) #7
  br label %61

61:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #9
  br label %345

62:                                               ; preds = %4
  %63 = bitcast [1 x %struct._cl_device_id*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #9
  %64 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %8, i64 0, i64 0
  %65 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !36
  store %struct._cl_device_id* %65, %struct._cl_device_id** %64, align 8, !tbaa !36
  %66 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #9
  store i64 0, i64* %9, align 8, !tbaa !2
  %67 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %68 = call i32 %67(%struct._cl_device_id* %65, i32 4128, i64 8, i8* nonnull %66, i64* null) #7
  store i32 %68, i32* %5, align 4, !tbaa !42
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %62
  %71 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %71) #9
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 3
  store i8* %0, i8** %72, align 8, !tbaa !43
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 4
  store i8 1, i8* %73, align 8, !tbaa !45
  %74 = call i8* @malloc(i64 1024) #7
  %75 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 0
  store i8* %74, i8** %75, align 8, !tbaa !46
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 1
  store i8* %74, i8** %76, align 8, !tbaa !47
  %77 = icmp eq i8* %74, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds i8, i8* %74, i64 1023
  store i8 0, i8* %79, align 1, !tbaa !35
  br label %80

80:                                               ; preds = %70, %78
  %81 = phi i8* [ %79, %78 ], [ null, %70 ]
  %82 = call i8* @halide_string_to_string(i8* %74, i8* %81, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @"??_C@_0EC@BCLNDNGH@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@", i64 0, i64 0)) #7
  %83 = load i32, i32* %5, align 4, !tbaa !42
  %84 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %83) #8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i8* @halide_string_to_string(i8* %82, i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %90

88:                                               ; preds = %80
  %89 = call i8* @halide_string_to_string(i8* %82, i8* %81, i8* nonnull %84) #7
  br label %90

90:                                               ; preds = %86, %88
  %91 = phi i8* [ %89, %88 ], [ %87, %86 ]
  %92 = load i8*, i8** %75, align 8, !tbaa !46
  %93 = icmp eq i8* %92, null
  %94 = load i8*, i8** %72, align 8, !tbaa !43
  br i1 %93, label %95, label %96

95:                                               ; preds = %90
  call void @halide_error(i8* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %104

96:                                               ; preds = %90
  %97 = ptrtoint i8* %91 to i64
  %98 = ptrtoint i8* %92 to i64
  %99 = sub i64 1, %98
  %100 = add i64 %99, %97
  %101 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %94, i8* nonnull %92, i64 %100) #7
  %102 = load i8*, i8** %75, align 8, !tbaa !46
  %103 = load i8*, i8** %72, align 8, !tbaa !43
  call void @halide_error(i8* %103, i8* %102) #7
  br label %104

104:                                              ; preds = %96, %95
  %105 = load i8, i8* %73, align 8, !tbaa !45, !range !40
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %75, align 8, !tbaa !46
  call void @free(i8* %108) #7
  br label %109

109:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %71) #9
  br label %343

110:                                              ; preds = %62
  %111 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %111) #9
  store i32 0, i32* %11, align 4, !tbaa !42
  %112 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %113 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !36
  %114 = call i32 %112(%struct._cl_device_id* %113, i32 4129, i64 4, i8* nonnull %111, i64* null) #7
  store i32 %114, i32* %5, align 4, !tbaa !42
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %110
  %117 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %117) #9
  %118 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 3
  store i8* %0, i8** %118, align 8, !tbaa !43
  %119 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 4
  store i8 1, i8* %119, align 8, !tbaa !45
  %120 = call i8* @malloc(i64 1024) #7
  %121 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 0
  store i8* %120, i8** %121, align 8, !tbaa !46
  %122 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 1
  store i8* %120, i8** %122, align 8, !tbaa !47
  %123 = icmp eq i8* %120, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, i8* %120, i64 1023
  store i8 0, i8* %125, align 1, !tbaa !35
  br label %126

126:                                              ; preds = %116, %124
  %127 = phi i8* [ %125, %124 ], [ null, %116 ]
  %128 = call i8* @halide_string_to_string(i8* %120, i8* %127, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @"??_C@_0DL@MAEDFEFL@CL?3?5clGetDeviceInfo?5?$CICL_DEVICE_M@", i64 0, i64 0)) #7
  %129 = load i32, i32* %5, align 4, !tbaa !42
  %130 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %129) #8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = call i8* @halide_string_to_string(i8* %128, i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %136

134:                                              ; preds = %126
  %135 = call i8* @halide_string_to_string(i8* %128, i8* %127, i8* nonnull %130) #7
  br label %136

136:                                              ; preds = %132, %134
  %137 = phi i8* [ %135, %134 ], [ %133, %132 ]
  %138 = load i8*, i8** %121, align 8, !tbaa !46
  %139 = icmp eq i8* %138, null
  %140 = load i8*, i8** %118, align 8, !tbaa !43
  br i1 %139, label %141, label %142

141:                                              ; preds = %136
  call void @halide_error(i8* %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %150

142:                                              ; preds = %136
  %143 = ptrtoint i8* %137 to i64
  %144 = ptrtoint i8* %138 to i64
  %145 = sub i64 1, %144
  %146 = add i64 %145, %143
  %147 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %140, i8* nonnull %138, i64 %146) #7
  %148 = load i8*, i8** %121, align 8, !tbaa !46
  %149 = load i8*, i8** %118, align 8, !tbaa !43
  call void @halide_error(i8* %149, i8* %148) #7
  br label %150

150:                                              ; preds = %142, %141
  %151 = load i8, i8* %119, align 8, !tbaa !45, !range !40
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %121, align 8, !tbaa !46
  call void @free(i8* %154) #7
  br label %155

155:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %117) #9
  br label %341

156:                                              ; preds = %110
  %157 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %157) #9
  %158 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 3
  store i8* %0, i8** %158, align 8, !tbaa !56
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 4
  store i8 1, i8* %159, align 8, !tbaa !58
  %160 = call i8* @malloc(i64 1024) #7
  %161 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 0
  store i8* %160, i8** %161, align 8, !tbaa !59
  %162 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 1
  store i8* %160, i8** %162, align 8, !tbaa !60
  %163 = icmp eq i8* %160, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds i8, i8* %160, i64 1023
  store i8 0, i8* %165, align 1, !tbaa !35
  br label %166

166:                                              ; preds = %156, %164
  %167 = phi i8* [ %165, %164 ], [ null, %156 ]
  %168 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 2
  store i8* %167, i8** %168, align 8
  %169 = call i8* @halide_string_to_string(i8* %160, i8* %167, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@JFGEECJA@?9D?5MAX_CONSTANT_BUFFER_SIZE?$DN?$AA@", i64 0, i64 0)) #7
  store i8* %169, i8** %162, align 8, !tbaa !60
  %170 = load i64, i64* %9, align 8, !tbaa !2
  %171 = call i8* @halide_uint64_to_string(i8* %169, i8* %167, i64 %170, i32 1) #7
  store i8* %171, i8** %162, align 8, !tbaa !60
  %172 = call i8* @halide_string_to_string(i8* %171, i8* %167, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@CDNOOPCE@?5?9D?5MAX_CONSTANT_ARGS?$DN?$AA@", i64 0, i64 0)) #7
  store i8* %172, i8** %162, align 8, !tbaa !60
  %173 = load i32, i32* %11, align 4, !tbaa !42
  %174 = zext i32 %173 to i64
  %175 = call i8* @halide_uint64_to_string(i8* %172, i8* %167, i64 %174, i32 1) #7
  store i8* %175, i8** %162, align 8, !tbaa !60
  %176 = call i8* @halide_opencl_get_build_options(i8* %0) #8
  %177 = call i8* @halide_string_to_string(i8* %175, i8* %167, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7
  store i8* %177, i8** %162, align 8, !tbaa !60
  %178 = icmp eq i8* %176, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %166
  %180 = call i8* @halide_string_to_string(i8* %177, i8* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %183

181:                                              ; preds = %166
  %182 = call i8* @halide_string_to_string(i8* %177, i8* %167, i8* nonnull %176) #7
  br label %183

183:                                              ; preds = %179, %181
  %184 = phi i8* [ %182, %181 ], [ %180, %179 ]
  store i8* %184, i8** %162, align 8, !tbaa !60
  %185 = bitcast [1 x i8*]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185) #9
  %186 = getelementptr inbounds [1 x i8*], [1 x i8*]* %14, i64 0, i64 0
  store i8* %2, i8** %186, align 8, !tbaa !36
  %187 = load %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)*, %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)** @"?clCreateProgramWithSource@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_program@@PEAU_cl_context@@IPEAPEBDPEBKPEAH@ZEA", align 8, !tbaa !36
  %188 = call %struct._cl_program* %187(%struct._cl_context* %1, i32 1, i8** nonnull %186, i64* null, i32* nonnull %5) #7
  %189 = load i32, i32* %5, align 4, !tbaa !42
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %232, label %191

191:                                              ; preds = %183
  %192 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %189) #8
  %193 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %193) #9
  %194 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 3
  store i8* %0, i8** %194, align 8, !tbaa !43
  %195 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 4
  store i8 1, i8* %195, align 8, !tbaa !45
  %196 = call i8* @malloc(i64 1024) #7
  %197 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 0
  store i8* %196, i8** %197, align 8, !tbaa !46
  %198 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 1
  store i8* %196, i8** %198, align 8, !tbaa !47
  %199 = icmp eq i8* %196, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %191
  %201 = getelementptr inbounds i8, i8* %196, i64 1023
  store i8 0, i8* %201, align 1, !tbaa !35
  br label %202

202:                                              ; preds = %191, %200
  %203 = phi i8* [ %201, %200 ], [ null, %191 ]
  %204 = call i8* @halide_string_to_string(i8* %196, i8* %203, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @"??_C@_0CH@CLCJIFCI@CL?3?5clCreateProgramWithSource?5fa@", i64 0, i64 0)) #7
  %205 = load i32, i32* %5, align 4, !tbaa !42
  %206 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %205) #8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = call i8* @halide_string_to_string(i8* %204, i8* %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %212

210:                                              ; preds = %202
  %211 = call i8* @halide_string_to_string(i8* %204, i8* %203, i8* nonnull %206) #7
  br label %212

212:                                              ; preds = %208, %210
  %213 = phi i8* [ %211, %210 ], [ %209, %208 ]
  %214 = load i8*, i8** %197, align 8, !tbaa !46
  %215 = icmp eq i8* %214, null
  %216 = load i8*, i8** %194, align 8, !tbaa !43
  br i1 %215, label %217, label %218

217:                                              ; preds = %212
  call void @halide_error(i8* %216, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %226

218:                                              ; preds = %212
  %219 = ptrtoint i8* %213 to i64
  %220 = ptrtoint i8* %214 to i64
  %221 = sub i64 1, %220
  %222 = add i64 %221, %219
  %223 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %216, i8* nonnull %214, i64 %222) #7
  %224 = load i8*, i8** %197, align 8, !tbaa !46
  %225 = load i8*, i8** %194, align 8, !tbaa !43
  call void @halide_error(i8* %225, i8* %224) #7
  br label %226

226:                                              ; preds = %218, %217
  %227 = load i8, i8* %195, align 8, !tbaa !45, !range !40
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %226
  %230 = load i8*, i8** %197, align 8, !tbaa !46
  call void @free(i8* %230) #7
  br label %231

231:                                              ; preds = %226, %229
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %193) #9
  br label %318

232:                                              ; preds = %183
  %233 = load i8*, i8** %161, align 8, !tbaa !59
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@IPEBQEAU_cl_device_id@@PEBDP6AX0PEAX@Z3@ZEA", align 8, !tbaa !36
  br label %256

237:                                              ; preds = %232
  %238 = load i8*, i8** %158, align 8, !tbaa !56
  %239 = ptrtoint i8* %184 to i64
  %240 = ptrtoint i8* %233 to i64
  %241 = sub i64 1, %240
  %242 = add i64 %241, %239
  %243 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %238, i8* nonnull %233, i64 %242) #7
  %244 = load i8*, i8** %161, align 8, !tbaa !59
  %245 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @"?clBuildProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@IPEBQEAU_cl_device_id@@PEBDP6AX0PEAX@Z3@ZEA", align 8, !tbaa !36
  %246 = icmp eq i8* %244, null
  br i1 %246, label %256, label %247

247:                                              ; preds = %237
  %248 = load i8*, i8** %162, align 8, !tbaa !60
  %249 = load i8*, i8** %158, align 8, !tbaa !56
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %244 to i64
  %252 = sub i64 1, %251
  %253 = add i64 %252, %250
  %254 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %249, i8* nonnull %244, i64 %253) #7
  %255 = load i8*, i8** %161, align 8, !tbaa !59
  br label %256

256:                                              ; preds = %235, %237, %247
  %257 = phi i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* [ %245, %247 ], [ %245, %237 ], [ %236, %235 ]
  %258 = phi i8* [ %255, %247 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %237 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %235 ]
  %259 = call i32 %257(%struct._cl_program* %188, i32 1, %struct._cl_device_id** nonnull %64, i8* %258, void (%struct._cl_program*, i8*)* null, i8* null) #7
  store i32 %259, i32* %5, align 4, !tbaa !42
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %318, label %261

261:                                              ; preds = %256
  %262 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %262) #9
  %263 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i64 0, i32 3
  store i8* %0, i8** %263, align 8, !tbaa !61
  %264 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i64 0, i32 4
  store i8 1, i8* %264, align 8, !tbaa !63
  %265 = call i8* @malloc(i64 16384) #7
  %266 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i64 0, i32 0
  store i8* %265, i8** %266, align 8, !tbaa !64
  %267 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i64 0, i32 1
  %268 = icmp eq i8* %265, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %261
  %270 = getelementptr inbounds i8, i8* %265, i64 16383
  store i8 0, i8* %270, align 1, !tbaa !35
  br label %271

271:                                              ; preds = %261, %269
  %272 = phi i8* [ %270, %269 ], [ null, %261 ]
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.1"* %16, i64 0, i32 2
  store i8* %272, i8** %273, align 8
  %274 = call i8* @halide_string_to_string(i8* %265, i8* %272, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@OJMPGCGG@CL?3?5clBuildProgram?5failed?3?5?$AA@", i64 0, i64 0)) #7
  store i8* %274, i8** %267, align 8, !tbaa !65
  %275 = load i32, i32* %5, align 4, !tbaa !42
  %276 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %275) #8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = call i8* @halide_string_to_string(i8* %274, i8* %272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %282

280:                                              ; preds = %271
  %281 = call i8* @halide_string_to_string(i8* %274, i8* %272, i8* nonnull %276) #7
  br label %282

282:                                              ; preds = %278, %280
  %283 = phi i8* [ %281, %280 ], [ %279, %278 ]
  %284 = load i8*, i8** %273, align 8, !tbaa !66
  %285 = call i8* @halide_string_to_string(i8* %283, i8* %284, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IDFKKPKP@?6Build?5Log?3?6?$AA@", i64 0, i64 0)) #7
  %286 = load i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetProgramBuildInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@PEAU_cl_device_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %287 = load i8*, i8** %266, align 8, !tbaa !64
  %288 = ptrtoint i8* %285 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 16383, %288
  %291 = add i64 %290, %289
  %292 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !36
  %293 = call i32 %286(%struct._cl_program* %188, %struct._cl_device_id* %292, i32 4483, i64 %291, i8* %285, i64* null) #7
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %282
  %296 = call i8* @halide_string_to_string(i8* %285, i8* %284, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @"??_C@_0DJ@PDNJJJKK@clGetProgramBuildInfo?5failed?5?$CIPr@", i64 0, i64 0)) #7
  %297 = load i8*, i8** %266, align 8, !tbaa !64
  br label %298

298:                                              ; preds = %295, %282
  %299 = phi i8* [ %296, %295 ], [ %285, %282 ]
  %300 = phi i8* [ %297, %295 ], [ %287, %282 ]
  %301 = icmp eq i8* %300, null
  %302 = load i8*, i8** %263, align 8, !tbaa !61
  br i1 %301, label %303, label %304

303:                                              ; preds = %298
  call void @halide_error(i8* %302, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %312

304:                                              ; preds = %298
  %305 = ptrtoint i8* %299 to i64
  %306 = ptrtoint i8* %300 to i64
  %307 = sub i64 1, %306
  %308 = add i64 %307, %305
  %309 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %302, i8* nonnull %300, i64 %308) #7
  %310 = load i8*, i8** %266, align 8, !tbaa !64
  %311 = load i8*, i8** %263, align 8, !tbaa !61
  call void @halide_error(i8* %311, i8* %310) #7
  br label %312

312:                                              ; preds = %304, %303
  %313 = load i8, i8* %264, align 8, !tbaa !63, !range !40
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %312
  %316 = load i8*, i8** %266, align 8, !tbaa !64
  call void @free(i8* %316) #7
  br label %317

317:                                              ; preds = %312, %315
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %262) #9
  br label %318

318:                                              ; preds = %256, %317, %231
  %319 = phi %struct._cl_program* [ null, %231 ], [ null, %317 ], [ %188, %256 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185) #9
  %320 = load i8*, i8** %161, align 8, !tbaa !59
  %321 = icmp eq i8* %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load i8*, i8** %158, align 8, !tbaa !56
  call void @halide_error(i8* %323, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %332

324:                                              ; preds = %318
  %325 = load i8*, i8** %162, align 8, !tbaa !60
  %326 = load i8*, i8** %158, align 8, !tbaa !56
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %320 to i64
  %329 = sub i64 1, %328
  %330 = add i64 %329, %327
  %331 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %326, i8* nonnull %320, i64 %330) #7
  br label %332

332:                                              ; preds = %324, %322
  %333 = load i8, i8* %159, align 8, !tbaa !58, !range !40
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %332
  %336 = load i8*, i8** %161, align 8, !tbaa !59
  %337 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 5, i64 0
  %338 = icmp eq i8* %336, %337
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  call void @free(i8* %336) #7
  br label %340

340:                                              ; preds = %332, %335, %339
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %157) #9
  br label %341

341:                                              ; preds = %340, %155
  %342 = phi %struct._cl_program* [ null, %155 ], [ %319, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111) #9
  br label %343

343:                                              ; preds = %341, %109
  %344 = phi %struct._cl_program* [ null, %109 ], [ %342, %341 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #9
  br label %345

345:                                              ; preds = %343, %61
  %346 = phi %struct._cl_program* [ null, %61 ], [ %344, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #9
  ret %struct._cl_program* %346
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !21
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = inttoptr i64 %5 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %8, i64 0, i32 1
  %10 = load %struct._cl_mem*, %struct._cl_mem** %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %8, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !53
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @"??_C@_0NF@GAHAJAJD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %15

15:                                               ; preds = %14, %7
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 8, !tbaa !69
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %20, align 8, !tbaa !71
  %21 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %22 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 8, !tbaa !71
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 8, !tbaa !69
  %27 = icmp eq %struct._cl_context* %26, null
  %28 = load %struct._cl_command_queue*, %struct._cl_command_queue** %19, align 8
  %29 = icmp eq %struct._cl_command_queue* %28, null
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = call i8* @malloc(i64 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !35
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = sub i64 1, %40
  %42 = add i64 %41, %39
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %34, %36
  call void @free(i8* %32) #7
  store i32 -1, i32* %20, align 8, !tbaa !71
  br label %61

45:                                               ; preds = %24
  %46 = icmp eq i32 %25, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #8
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@JCFFEMMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA", align 8, !tbaa !36
  %52 = call i32 %51(%struct._cl_mem* %10) #7
  %53 = load i64, i64* %4, align 8, !tbaa !21
  %54 = inttoptr i64 %53 to i8*
  call void @free(i8* %54) #7
  store i64 0, i64* %4, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %56 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %55, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %56, i64 0, i32 15
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !tbaa !73
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 1
  %60 = load void ()*, void ()** %59, align 8, !tbaa !75
  call void %60() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %55, align 8, !tbaa !72
  br label %61

61:                                               ; preds = %44, %50, %45
  %62 = phi i32 [ %25, %45 ], [ %52, %50 ], [ -1, %44 ]
  %63 = load i8*, i8** %17, align 8, !tbaa !67
  %64 = call i32 @halide_release_cl_context(i8* %63) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #9
  br label %65

65:                                               ; preds = %2, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %2 ]
  ret i32 %66
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %5 = alloca [1 x %struct._cl_device_id*], align 8
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %7 = alloca [256 x i8], align 1
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = load i8*, i8** @"?lib_opencl@OpenCL@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !36
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@NCICJKNI@clCreateContext?$AA@", i64 0, i64 0)) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4, !tbaa !42
  store i32 0, i32* %1, align 4, !tbaa !42
  ret i32 0

15:                                               ; preds = %11, %3
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 0
  store i8* %0, i8** %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 8, !tbaa !69
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 3
  store i32 0, i32* %20, align 8, !tbaa !71
  %21 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %22 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 8, !tbaa !71
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 8, !tbaa !69
  %27 = icmp eq %struct._cl_context* %26, null
  %28 = load %struct._cl_command_queue*, %struct._cl_command_queue** %19, align 8
  %29 = icmp eq %struct._cl_command_queue* %28, null
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = call i8* @malloc(i64 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !35
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = sub i64 1, %40
  %42 = add i64 %41, %39
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %34, %36
  call void @free(i8* %32) #7
  store i32 -1, i32* %20, align 8, !tbaa !71
  br label %155

45:                                               ; preds = %24
  %46 = icmp eq i32 %25, 0
  br i1 %46, label %47, label %155

47:                                               ; preds = %45
  %48 = bitcast [1 x %struct._cl_device_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #9
  %49 = load i32 (%struct._cl_context*, i32, i64, i8*, i64*)*, i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @"?clGetContextInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %50 = call i32 %49(%struct._cl_context* nonnull %26, i32 4225, i64 8, i8* nonnull %48, i64* null) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %91, label %52

52:                                               ; preds = %47
  %53 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %53) #9
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3
  store i8* %0, i8** %54, align 8, !tbaa !43
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4
  store i8 1, i8* %55, align 8, !tbaa !45
  %56 = call i8* @malloc(i64 1024) #7
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0
  store i8* %56, i8** %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1
  store i8* %56, i8** %58, align 8, !tbaa !47
  %59 = icmp eq i8* %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, i8* %56, i64 1023
  store i8 0, i8* %61, align 1, !tbaa !35
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi i8* [ %61, %60 ], [ null, %52 ]
  %64 = call i8* @halide_string_to_string(i8* %56, i8* %63, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @"??_C@_0BO@PHJKOMAF@CL?3?5clGetContextInfo?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %65 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %50) #8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %71

69:                                               ; preds = %62
  %70 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* nonnull %65) #7
  br label %71

71:                                               ; preds = %67, %69
  %72 = phi i8* [ %70, %69 ], [ %68, %67 ]
  %73 = load i8*, i8** %57, align 8, !tbaa !46
  %74 = icmp eq i8* %73, null
  %75 = load i8*, i8** %54, align 8, !tbaa !43
  br i1 %74, label %76, label %77

76:                                               ; preds = %71
  call void @halide_error(i8* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %85

77:                                               ; preds = %71
  %78 = ptrtoint i8* %72 to i64
  %79 = ptrtoint i8* %73 to i64
  %80 = sub i64 1, %79
  %81 = add i64 %80, %78
  %82 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %75, i8* nonnull %73, i64 %81) #7
  %83 = load i8*, i8** %57, align 8, !tbaa !46
  %84 = load i8*, i8** %54, align 8, !tbaa !43
  call void @halide_error(i8* %84, i8* %83) #7
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i8, i8* %55, align 8, !tbaa !45, !range !40
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %57, align 8, !tbaa !46
  call void @free(i8* %89) #7
  br label %90

90:                                               ; preds = %85, %88
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %53) #9
  br label %152

91:                                               ; preds = %47
  %92 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %5, i64 0, i64 0
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %93) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(256) %93, i8 0, i64 256, i1 false)
  %94 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @"?clGetDeviceInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_device_id@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %95 = load %struct._cl_device_id*, %struct._cl_device_id** %92, align 8, !tbaa !36
  %96 = call i32 %94(%struct._cl_device_id* %95, i32 4143, i64 256, i8* nonnull %93, i64* null) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %91
  %99 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %99) #9
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %100, align 8, !tbaa !43
  %101 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %101, align 8, !tbaa !45
  %102 = call i8* @malloc(i64 1024) #7
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %102, i8** %103, align 8, !tbaa !46
  %104 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %102, i8** %104, align 8, !tbaa !47
  %105 = icmp eq i8* %102, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds i8, i8* %102, i64 1023
  store i8 0, i8* %107, align 1, !tbaa !35
  br label %108

108:                                              ; preds = %98, %106
  %109 = phi i8* [ %107, %106 ], [ null, %98 ]
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@OPHJLEEG@CL?3?5clGetDeviceInfo?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %111 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %96) #8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %117

115:                                              ; preds = %108
  %116 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* nonnull %111) #7
  br label %117

117:                                              ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %114, %113 ]
  %119 = load i8*, i8** %103, align 8, !tbaa !46
  %120 = icmp eq i8* %119, null
  %121 = load i8*, i8** %100, align 8, !tbaa !43
  br i1 %120, label %122, label %123

122:                                              ; preds = %117
  call void @halide_error(i8* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %131

123:                                              ; preds = %117
  %124 = ptrtoint i8* %118 to i64
  %125 = ptrtoint i8* %119 to i64
  %126 = sub i64 1, %125
  %127 = add i64 %126, %124
  %128 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %121, i8* nonnull %119, i64 %127) #7
  %129 = load i8*, i8** %103, align 8, !tbaa !46
  %130 = load i8*, i8** %100, align 8, !tbaa !43
  call void @halide_error(i8* %130, i8* %129) #7
  br label %131

131:                                              ; preds = %123, %122
  %132 = load i8, i8* %101, align 8, !tbaa !45, !range !40
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %103, align 8, !tbaa !46
  call void @free(i8* %135) #7
  br label %136

136:                                              ; preds = %131, %134
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %99) #9
  br label %149

137:                                              ; preds = %91
  %138 = call i64 @strlen(i8* nonnull %93) #7
  %139 = icmp ult i64 %138, 10
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 7
  %142 = load i8, i8* %141, align 1, !tbaa !35
  %143 = sext i8 %142 to i32
  %144 = add nsw i32 %143, -48
  store i32 %144, i32* %1, align 4, !tbaa !42
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 9
  %146 = load i8, i8* %145, align 1, !tbaa !35
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 %147, -48
  store i32 %148, i32* %2, align 4, !tbaa !42
  br label %149

149:                                              ; preds = %137, %140, %136
  %150 = phi i32 [ %96, %136 ], [ 0, %140 ], [ -1, %137 ]
  %151 = phi i32 [ 1, %136 ], [ 0, %140 ], [ 1, %137 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %93) #9
  br label %152

152:                                              ; preds = %149, %90
  %153 = phi i32 [ %50, %90 ], [ %150, %149 ]
  %154 = phi i32 [ 1, %90 ], [ %151, %149 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #9
  br label %155

155:                                              ; preds = %44, %45, %152
  %156 = phi i32 [ %153, %152 ], [ %25, %45 ], [ -1, %44 ]
  %157 = phi i32 [ %154, %152 ], [ 1, %45 ], [ 1, %44 ]
  %158 = load i8*, i8** %17, align 8, !tbaa !67
  %159 = call i32 @halide_release_cl_context(i8* %158) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #9
  %160 = icmp eq i32 %157, 0
  %161 = select i1 %160, i32 0, i32 %156
  ret i32 %161
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %6 = alloca %struct._cl_program*, align 8
  %7 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #9
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 0
  store i8* %0, i8** %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 3
  store i32 0, i32* %11, align 8, !tbaa !71
  %12 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %13 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %9, %struct._cl_command_queue** nonnull %10, i1 zeroext true) #7
  store i32 %16, i32* %11, align 8, !tbaa !71
  %17 = load %struct._cl_context*, %struct._cl_context** %9, align 8, !tbaa !69
  %18 = icmp eq %struct._cl_context* %17, null
  %19 = load %struct._cl_command_queue*, %struct._cl_command_queue** %10, align 8
  %20 = icmp eq %struct._cl_command_queue* %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = call i8* @malloc(i64 1024) #7
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i64 1023
  store i8 0, i8* %28, align 1, !tbaa !35
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %30 = ptrtoint i8* %29 to i64
  %31 = ptrtoint i8* %23 to i64
  %32 = sub i64 1, %31
  %33 = add i64 %32, %30
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %33) #7
  call void @halide_error(i8* %0, i8* nonnull %23) #7
  br label %35

35:                                               ; preds = %25, %27
  call void @free(i8* %23) #7
  store i32 -1, i32* %11, align 8, !tbaa !71
  br label %47

36:                                               ; preds = %15
  %37 = icmp eq i32 %16, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = bitcast %struct._cl_program** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #9
  %40 = call zeroext i1 @"??$kernel_state_setup@P6APEAU_cl_program@@PEAXPEAU_cl_context@@PEBDH@ZPEAXPEAU2@PEBDH@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAU_cl_context@@AEAPEAU_cl_program@@P6APEAU4@02PEBDH@Z024H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i8* %0, i8** %1, %struct._cl_context* nonnull %17, %struct._cl_program** nonnull align 8 dereferenceable(8) %6, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* nonnull @"?compile_kernel@OpenCL@Internal@Runtime@Halide@@YAPEAU_cl_program@@PEAXPEAU_cl_context@@PEBDH@Z", i8* %0, %struct._cl_context* nonnull %17, i8* %2, i32 %3) #8
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct._cl_program*, %struct._cl_program** %6, align 8, !tbaa !36
  %43 = icmp eq %struct._cl_program* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @"??_C@_0HA@MICKJDMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %45

45:                                               ; preds = %41, %44, %38
  %46 = phi i32 [ -1, %38 ], [ 0, %44 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #9
  br label %47

47:                                               ; preds = %35, %36, %45
  %48 = phi i32 [ %46, %45 ], [ %16, %36 ], [ -1, %35 ]
  %49 = load i8*, i8** %8, align 8, !tbaa !67
  %50 = call i32 @halide_release_cl_context(i8* %49) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #9
  ret i32 %48
}

; Function Attrs: nounwind
define linkonce_odr dso_local zeroext i1 @"??$kernel_state_setup@P6APEAU_cl_program@@PEAXPEAU_cl_context@@PEBDH@ZPEAXPEAU2@PEBDH@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAU_cl_context@@AEAPEAU_cl_program@@P6APEAU4@02PEBDH@Z024H@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %struct._cl_context* %3, %struct._cl_program** nonnull align 8 dereferenceable(8) %4, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* %5, i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) local_unnamed_addr #4 comdat align 2 {
  %11 = alloca %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", align 8
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %12) #7
  %13 = bitcast i8** %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !42
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %18 = load i32, i32* %17, align 4, !tbaa !77
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !77
  store i32 %18, i32* %13, align 4, !tbaa !42
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = ptrtoint %struct._cl_context* %3 to i64
  %27 = zext i32 %21 to i64
  %28 = add i64 %27, %26
  %29 = mul i64 %28, -7046029254386353131
  %30 = sub i32 64, %23
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %29, %31
  %33 = shl nuw i32 1, %23
  %34 = icmp eq i32 %23, 31
  br i1 %34, label %69, label %35

35:                                               ; preds = %25
  %36 = add nsw i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %39 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %38, align 8, !tbaa !81
  %40 = sext i32 %33 to i64
  %41 = icmp sgt i32 %33, 1
  %42 = select i1 %41, i32 %33, i32 1
  %43 = zext i32 %42 to i64
  br label %47

44:                                               ; preds = %55
  %45 = icmp slt i64 %61, %40
  %46 = icmp eq i64 %61, %43
  br i1 %46, label %69, label %47, !llvm.loop !82

47:                                               ; preds = %44, %35
  %48 = phi i64 [ 0, %35 ], [ %61, %44 ]
  %49 = phi i1 [ true, %35 ], [ %45, %44 ]
  %50 = add i64 %48, %32
  %51 = and i64 %50, %37
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 2
  %53 = load i32, i32* %52, align 8, !tbaa !83
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 0
  %57 = load %struct._cl_context*, %struct._cl_context** %56, align 8, !tbaa !85
  %58 = icmp eq %struct._cl_context* %57, %3
  %59 = icmp eq i32 %53, %21
  %60 = and i1 %59, %58
  %61 = add nuw nsw i64 %48, 1
  br i1 %60, label %62, label %44

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 3
  %64 = load i32, i32* %63, align 4, !tbaa !86
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4, !tbaa !86
  br i1 %49, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 1
  %68 = load %struct._cl_program*, %struct._cl_program** %67, align 8, !tbaa !36
  store %struct._cl_program* %68, %struct._cl_program** %4, align 8, !tbaa !36
  br label %81

69:                                               ; preds = %47, %44, %25, %20, %62
  %70 = tail call %struct._cl_program* %5(i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) #7
  %71 = icmp eq %struct._cl_program* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #9
  %74 = load i32, i32* %13, align 4, !tbaa !42
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 0
  store %struct._cl_context* %3, %struct._cl_context** %75, align 8, !tbaa !85
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 1
  store %struct._cl_program* %70, %struct._cl_program** %76, align 8, !tbaa !87
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 2
  store i32 %74, i32* %77, align 8, !tbaa !83
  %78 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 3
  store i32 1, i32* %78, align 4, !tbaa !86
  %79 = call zeroext i1 @"?insert@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %11) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #9
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store %struct._cl_program* %70, %struct._cl_program** %4, align 8, !tbaa !36
  br label %81

81:                                               ; preds = %80, %69, %72, %66
  %82 = phi i1 [ true, %66 ], [ true, %80 ], [ false, %69 ], [ false, %72 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %12) #7
  ret i1 %82
}

; Function Attrs: nounwind
define weak dso_local void @halide_opencl_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %8, align 8, !tbaa !71
  %9 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %10 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %6, %struct._cl_command_queue** nonnull %7, i1 zeroext true) #7
  store i32 %13, i32* %8, align 8, !tbaa !71
  %14 = load %struct._cl_context*, %struct._cl_context** %6, align 8, !tbaa !69
  %15 = icmp eq %struct._cl_context* %14, null
  %16 = load %struct._cl_command_queue*, %struct._cl_command_queue** %7, align 8
  %17 = icmp eq %struct._cl_command_queue* %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = call i8* @malloc(i64 1024) #7
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i64 1023
  store i8 0, i8* %25, align 1, !tbaa !35
  %26 = call i8* @halide_string_to_string(i8* nonnull %20, i8* nonnull %25, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %20 to i64
  %29 = sub i64 1, %28
  %30 = add i64 %29, %27
  %31 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %30) #7
  call void @halide_error(i8* %0, i8* nonnull %20) #7
  br label %32

32:                                               ; preds = %22, %24
  call void @free(i8* %20) #7
  store i32 -1, i32* %8, align 8, !tbaa !71
  br label %81

33:                                               ; preds = %12
  %34 = icmp eq i32 %13, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %33
  %36 = ptrtoint i8* %1 to i64
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 1), align 8, !tbaa !80
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %35
  %41 = ptrtoint %struct._cl_context* %14 to i64
  %42 = and i64 %36, 4294967295
  %43 = add i64 %42, %41
  %44 = mul i64 %43, -7046029254386353131
  %45 = sub i32 64, %38
  %46 = zext i32 %45 to i64
  %47 = lshr i64 %44, %46
  %48 = shl nuw i32 1, %38
  %49 = icmp eq i32 %38, 31
  br i1 %49, label %80, label %50

50:                                               ; preds = %40
  %51 = add nsw i32 %48, -1
  %52 = sext i32 %51 to i64
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 2), align 8, !tbaa !81
  %54 = sext i32 %48 to i64
  %55 = icmp sgt i32 %48, 1
  %56 = select i1 %55, i32 %48, i32 1
  %57 = zext i32 %56 to i64
  br label %61

58:                                               ; preds = %69
  %59 = icmp slt i64 %75, %54
  %60 = icmp eq i64 %75, %57
  br i1 %60, label %80, label %61, !llvm.loop !82

61:                                               ; preds = %58, %50
  %62 = phi i64 [ 0, %50 ], [ %75, %58 ]
  %63 = phi i1 [ true, %50 ], [ %59, %58 ]
  %64 = add i64 %62, %47
  %65 = and i64 %64, %52
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !83
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 0
  %71 = load %struct._cl_context*, %struct._cl_context** %70, align 8, !tbaa !85
  %72 = icmp eq %struct._cl_context* %71, %14
  %73 = icmp eq i32 %67, %37
  %74 = and i1 %73, %72
  %75 = add nuw nsw i64 %62, 1
  br i1 %74, label %76, label %58

76:                                               ; preds = %69
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 3
  %78 = load i32, i32* %77, align 4, !tbaa !86
  %79 = add i32 %78, -1
  store i32 %79, i32* %77, align 4, !tbaa !86
  br i1 %63, label %81, label %80

80:                                               ; preds = %61, %58, %76, %40, %35
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %81

81:                                               ; preds = %80, %76, %32, %33
  %82 = load i8*, i8** %5, align 8, !tbaa !67
  %83 = call i32 @halide_release_cl_context(i8* %82) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %9, align 8, !tbaa !71
  %10 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %11 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %7, %struct._cl_command_queue** nonnull %8, i1 zeroext true) #7
  store i32 %14, i32* %9, align 8, !tbaa !71
  %15 = load %struct._cl_context*, %struct._cl_context** %7, align 8, !tbaa !69
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = load %struct._cl_command_queue*, %struct._cl_command_queue** %8, align 8
  %18 = icmp eq %struct._cl_command_queue* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = call i8* @malloc(i64 1024) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i64 1023
  store i8 0, i8* %26, align 1, !tbaa !35
  %27 = call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %28 = ptrtoint i8* %27 to i64
  %29 = ptrtoint i8* %21 to i64
  %30 = sub i64 1, %29
  %31 = add i64 %30, %28
  %32 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %31) #7
  call void @halide_error(i8* %0, i8* nonnull %21) #7
  br label %33

33:                                               ; preds = %23, %25
  call void @free(i8* %21) #7
  store i32 -1, i32* %9, align 8, !tbaa !71
  br label %79

34:                                               ; preds = %13
  %35 = icmp eq i32 %14, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %34
  %37 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA", align 8, !tbaa !36
  %38 = call i32 %37(%struct._cl_command_queue* nonnull %17) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %36
  %41 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %41) #9
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %42, align 8, !tbaa !43
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %43, align 8, !tbaa !45
  %44 = call i8* @malloc(i64 1024) #7
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %44, i8** %45, align 8, !tbaa !46
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %44, i8** %46, align 8, !tbaa !47
  %47 = icmp eq i8* %44, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds i8, i8* %44, i64 1023
  store i8 0, i8* %49, align 1, !tbaa !35
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi i8* [ %49, %48 ], [ null, %40 ]
  %52 = call i8* @halide_string_to_string(i8* %44, i8* %51, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@HNMCCFHI@CL?3?5clFinish?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %53 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %38) #8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i8* @halide_string_to_string(i8* %52, i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %59

57:                                               ; preds = %50
  %58 = call i8* @halide_string_to_string(i8* %52, i8* %51, i8* nonnull %53) #7
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi i8* [ %58, %57 ], [ %56, %55 ]
  %61 = load i8*, i8** %45, align 8, !tbaa !46
  %62 = icmp eq i8* %61, null
  %63 = load i8*, i8** %42, align 8, !tbaa !43
  br i1 %62, label %64, label %65

64:                                               ; preds = %59
  call void @halide_error(i8* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %73

65:                                               ; preds = %59
  %66 = ptrtoint i8* %60 to i64
  %67 = ptrtoint i8* %61 to i64
  %68 = sub i64 1, %67
  %69 = add i64 %68, %66
  %70 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %63, i8* nonnull %61, i64 %69) #7
  %71 = load i8*, i8** %45, align 8, !tbaa !46
  %72 = load i8*, i8** %42, align 8, !tbaa !43
  call void @halide_error(i8* %72, i8* %71) #7
  br label %73

73:                                               ; preds = %65, %64
  %74 = load i8, i8* %43, align 8, !tbaa !45, !range !40
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %45, align 8, !tbaa !46
  call void @free(i8* %77) #7
  br label %78

78:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %41) #9
  br label %79

79:                                               ; preds = %33, %78, %36, %34
  %80 = phi i32 [ %14, %34 ], [ %38, %78 ], [ 0, %36 ], [ -1, %33 ]
  %81 = load i8*, i8** %6, align 8, !tbaa !67
  %82 = call i32 @halide_release_cl_context(i8* %81) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #9
  ret i32 %80
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_release(i8* %0) #4 {
  %2 = alloca %struct._cl_context*, align 8
  %3 = alloca %struct._cl_command_queue*, align 8
  %4 = bitcast %struct._cl_context** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct._cl_command_queue** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %2, %struct._cl_command_queue** nonnull %3, i1 zeroext false) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %1
  %9 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !36
  %10 = icmp eq %struct._cl_context* %9, null
  br i1 %10, label %76, label %11

11:                                               ; preds = %8
  %12 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA", align 8, !tbaa !36
  %13 = load %struct._cl_command_queue*, %struct._cl_command_queue** %3, align 8, !tbaa !36
  %14 = call i32 %12(%struct._cl_command_queue* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@IFKNINJB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !36
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  %19 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 3), align 8, !tbaa !88
  %20 = icmp eq i32 %19, 0
  %21 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 1), align 8
  %22 = icmp eq i32 %21, 31
  %23 = or i1 %20, %22
  br i1 %23, label %59, label %24

24:                                               ; preds = %17
  %25 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 2), align 8, !tbaa !81
  br label %26

26:                                               ; preds = %52, %24
  %27 = phi i32 [ %21, %24 ], [ %53, %52 ]
  %28 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %25, %24 ], [ %54, %52 ]
  %29 = phi i64 [ 0, %24 ], [ %55, %52 ]
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 2
  %31 = load i32, i32* %30, align 8, !tbaa !83
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 8, !tbaa !85
  %36 = icmp eq %struct._cl_context* %35, %18
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 3
  %39 = load i32, i32* %38, align 4, !tbaa !86
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA", align 8, !tbaa !36
  %43 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 1
  %44 = load %struct._cl_program*, %struct._cl_program** %43, align 8, !tbaa !87
  %45 = call i32 %42(%struct._cl_program* %44) #7
  %46 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 2), align 8, !tbaa !81
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i64 %29, i32 1
  store %struct._cl_program* null, %struct._cl_program** %47, align 8, !tbaa !87
  %48 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i64 %29, i32 2
  store i32 1, i32* %48, align 8, !tbaa !83
  %49 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 3), align 8, !tbaa !88
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 3), align 8, !tbaa !88
  %51 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 1), align 8, !tbaa !80
  br label %52

52:                                               ; preds = %41, %37, %33, %26
  %53 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %27, %37 ], [ %51, %41 ]
  %54 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %28, %26 ], [ %28, %33 ], [ %28, %37 ], [ %46, %41 ]
  %55 = add nuw nsw i64 %29, 1
  %56 = shl nuw i32 1, %53
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %26, label %59, !llvm.loop !89

59:                                               ; preds = %52, %17
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  %60 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !36
  %61 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", align 8, !tbaa !36
  %62 = icmp eq %struct._cl_context* %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clReleaseCommandQueue@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA", align 8, !tbaa !36
  %65 = load %struct._cl_command_queue*, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_command_queue@@EA", align 8, !tbaa !36
  %66 = call i32 %64(%struct._cl_command_queue* %65) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@MMJNGNHC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %69

69:                                               ; preds = %68, %63
  store %struct._cl_command_queue* null, %struct._cl_command_queue** @"?command_queue@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_command_queue@@EA", align 8, !tbaa !36
  %70 = load i32 (%struct._cl_context*)*, i32 (%struct._cl_context*)** @"?clReleaseContext@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_context@@@ZEA", align 8, !tbaa !36
  %71 = load %struct._cl_context*, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", align 8, !tbaa !36
  %72 = call i32 %70(%struct._cl_context* %71) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@NINNKHKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %75

75:                                               ; preds = %74, %69
  store %struct._cl_context* null, %struct._cl_context** @"?context@OpenCL@Internal@Runtime@Halide@@3PEAU_cl_context@@EA", align 8, !tbaa !36
  br label %76

76:                                               ; preds = %59, %75, %8
  %77 = call i32 @halide_release_cl_context(i8* %0) #8
  br label %78

78:                                               ; preds = %1, %76
  %79 = phi i32 [ 0, %76 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i32 %79
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 8, !tbaa !69
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %10, align 8, !tbaa !71
  %11 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %12 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %2
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 8, !tbaa !71
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !69
  %17 = icmp eq %struct._cl_context* %16, null
  %18 = load %struct._cl_command_queue*, %struct._cl_command_queue** %9, align 8
  %19 = icmp eq %struct._cl_command_queue* %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = call i8* @malloc(i64 1024) #7
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023
  store i8 0, i8* %27, align 1, !tbaa !35
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %29 = ptrtoint i8* %28 to i64
  %30 = ptrtoint i8* %22 to i64
  %31 = sub i64 1, %30
  %32 = add i64 %31, %29
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %34

34:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 8, !tbaa !71
  br label %192

35:                                               ; preds = %14
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %37, label %192

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %39 = load i32, i32* %38, align 4, !tbaa !23
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %43 = load i8, i8* %42, align 1, !tbaa !22
  br label %87

44:                                               ; preds = %37
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
  br i1 %65, label %66, label %48, !llvm.loop !90

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
  br i1 %86, label %87, label %69, !llvm.loop !91

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
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @"??_C@_0GH@BOEJCFBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %99

99:                                               ; preds = %98, %87
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !21
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %38, align 4, !tbaa !23
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %114

108:                                              ; preds = %99
  %109 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %96) #8
  br i1 %109, label %192, label %110

110:                                              ; preds = %108
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@ELDPDCNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %192

111:                                              ; preds = %123, %103
  %112 = call i8* @malloc(i64 16) #7
  %113 = icmp eq i8* %112, null
  br i1 %113, label %192, label %128

114:                                              ; preds = %106, %123
  %115 = phi i32 [ %104, %106 ], [ %124, %123 ]
  %116 = phi i64 [ 0, %106 ], [ %125, %123 ]
  %117 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %107, align 8, !tbaa !24
  %118 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i64 %116, i32 2
  %119 = load i32, i32* %118, align 4, !tbaa !25
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@OENBMEHI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  %122 = load i32, i32* %38, align 4, !tbaa !23
  br label %123

123:                                              ; preds = %114, %121
  %124 = phi i32 [ %115, %114 ], [ %122, %121 ]
  %125 = add nuw nsw i64 %116, 1
  %126 = sext i32 %124 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %114, label %111, !llvm.loop !92

128:                                              ; preds = %111
  %129 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %129) #9
  %130 = load %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)** @"?clCreateBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KKPEAXPEAH@ZEA", align 8, !tbaa !36
  %131 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !69
  %132 = call %struct._cl_mem* %130(%struct._cl_context* %131, i64 1, i64 %96, i8* null, i32* nonnull %4) #7
  %133 = load i32, i32* %4, align 4, !tbaa !42
  %134 = icmp ne i32 %133, 0
  %135 = icmp eq %struct._cl_mem* %132, null
  %136 = or i1 %135, %134
  br i1 %136, label %137, label %179

137:                                              ; preds = %128
  %138 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %133) #8
  %139 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %139) #9
  %140 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %140, align 8, !tbaa !43
  %141 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %141, align 8, !tbaa !45
  %142 = call i8* @malloc(i64 1024) #7
  %143 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %142, i8** %143, align 8, !tbaa !46
  %144 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  store i8* %142, i8** %144, align 8, !tbaa !47
  %145 = icmp eq i8* %142, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = getelementptr inbounds i8, i8* %142, i64 1023
  store i8 0, i8* %147, align 1, !tbaa !35
  br label %148

148:                                              ; preds = %137, %146
  %149 = phi i8* [ %147, %146 ], [ null, %137 ]
  %150 = call i8* @halide_string_to_string(i8* %142, i8* %149, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@JFCOLHML@CL?3?5clCreateBuffer?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %151 = load i32, i32* %4, align 4, !tbaa !42
  %152 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %151) #8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i8* @halide_string_to_string(i8* %150, i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %158

156:                                              ; preds = %148
  %157 = call i8* @halide_string_to_string(i8* %150, i8* %149, i8* nonnull %152) #7
  br label %158

158:                                              ; preds = %154, %156
  %159 = phi i8* [ %157, %156 ], [ %155, %154 ]
  %160 = load i8*, i8** %143, align 8, !tbaa !46
  %161 = icmp eq i8* %160, null
  %162 = load i8*, i8** %140, align 8, !tbaa !43
  br i1 %161, label %163, label %164

163:                                              ; preds = %158
  call void @halide_error(i8* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %172

164:                                              ; preds = %158
  %165 = ptrtoint i8* %159 to i64
  %166 = ptrtoint i8* %160 to i64
  %167 = sub i64 1, %166
  %168 = add i64 %167, %165
  %169 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %162, i8* nonnull %160, i64 %168) #7
  %170 = load i8*, i8** %143, align 8, !tbaa !46
  %171 = load i8*, i8** %140, align 8, !tbaa !43
  call void @halide_error(i8* %171, i8* %170) #7
  br label %172

172:                                              ; preds = %164, %163
  %173 = load i8, i8* %141, align 8, !tbaa !45, !range !40
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %143, align 8, !tbaa !46
  call void @free(i8* %176) #7
  br label %177

177:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %139) #9
  call void @free(i8* nonnull %112) #7
  %178 = load i32, i32* %4, align 4, !tbaa !42
  br label %190

179:                                              ; preds = %128
  %180 = getelementptr inbounds i8, i8* %112, i64 8
  %181 = bitcast i8* %180 to %struct._cl_mem**
  store %struct._cl_mem* %132, %struct._cl_mem** %181, align 8, !tbaa !51
  %182 = bitcast i8* %112 to i64*
  store i64 0, i64* %182, align 8, !tbaa !53
  %183 = ptrtoint i8* %112 to i64
  store i64 %183, i64* %100, align 8, !tbaa !21
  %184 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %184, align 8, !tbaa !72
  %185 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !73
  %186 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %185, i64 0, i32 0
  %187 = load void ()*, void ()** %186, align 8, !tbaa !93
  call void %187() #7
  %188 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %96) #8
  br i1 %188, label %190, label %189

189:                                              ; preds = %179
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@NKDENGNA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %190

190:                                              ; preds = %179, %189, %177
  %191 = phi i32 [ %178, %177 ], [ 0, %189 ], [ 0, %179 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %129) #9
  br label %192

192:                                              ; preds = %34, %110, %108, %111, %190, %35
  %193 = phi i32 [ %15, %35 ], [ 0, %110 ], [ 0, %108 ], [ %191, %190 ], [ -6, %111 ], [ -1, %34 ]
  %194 = load i8*, i8** %7, align 8, !tbaa !67
  %195 = call i32 @halide_release_cl_context(i8* %194) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #9
  ret i32 %193
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(32) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %3, i64 %4, i32 %5, i1 zeroext %6, i1 zeroext %7) local_unnamed_addr #4 {
  %9 = icmp sgt i32 %5, 16
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = tail call i8* @malloc(i64 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !35
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @"??_C@_0DE@MONCEOAB@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #7
  %18 = ptrtoint i8* %17 to i64
  %19 = ptrtoint i8* %11 to i64
  %20 = add i64 %18, 1
  %21 = sub i64 %20, %19
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %21) #7
  tail call void @halide_error(i8* %0, i8* nonnull %11) #7
  br label %23

23:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #7
  br label %154

24:                                               ; preds = %8
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %5, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 3, i64 %28
  %30 = load i64, i64* %29, align 8, !tbaa !2
  %31 = trunc i64 %30 to i32
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %154

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 4, i64 %28
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 5, i64 %28
  br label %137

36:                                               ; preds = %24
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 0
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 1
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %2, i64 0, i32 6
  %40 = xor i1 %7, true
  %41 = or i1 %40, %6
  br i1 %41, label %58, label %42

42:                                               ; preds = %36
  %43 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %44 = load i64, i64* %38, align 8, !tbaa !10
  %45 = add i64 %44, %4
  %46 = inttoptr i64 %45 to i8*
  %47 = load i64, i64* %39, align 8, !tbaa !11
  %48 = load i64, i64* %37, align 8, !tbaa !8
  %49 = inttoptr i64 %48 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %49, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !53
  %52 = add i64 %51, %3
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %49, i64 0, i32 1
  %54 = load %struct._cl_mem*, %struct._cl_mem** %53, align 8, !tbaa !51
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %56 = load %struct._cl_command_queue*, %struct._cl_command_queue** %55, align 8, !tbaa !70
  %57 = tail call i32 %43(%struct._cl_command_queue* %56, %struct._cl_mem* %54, i32 0, i64 %52, i64 %47, i8* %46, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

58:                                               ; preds = %36
  %59 = xor i1 %6, true
  %60 = or i1 %59, %7
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IKKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %63 = load i64, i64* %37, align 8, !tbaa !8
  %64 = add i64 %63, %3
  %65 = inttoptr i64 %64 to i8*
  %66 = load i64, i64* %39, align 8, !tbaa !11
  %67 = load i64, i64* %38, align 8, !tbaa !10
  %68 = inttoptr i64 %67 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %68, i64 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !53
  %71 = add i64 %70, %4
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %68, i64 0, i32 1
  %73 = load %struct._cl_mem*, %struct._cl_mem** %72, align 8, !tbaa !51
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %75 = load %struct._cl_command_queue*, %struct._cl_command_queue** %74, align 8, !tbaa !70
  %76 = tail call i32 %62(%struct._cl_command_queue* %75, %struct._cl_mem* %73, i32 0, i64 %71, i64 %66, i8* %65, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

77:                                               ; preds = %58
  %78 = or i1 %6, %7
  br i1 %78, label %99, label %79

79:                                               ; preds = %77
  %80 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueCopyBuffer@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@1KKKIPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %81 = load i64, i64* %39, align 8, !tbaa !11
  %82 = load i64, i64* %38, align 8, !tbaa !10
  %83 = inttoptr i64 %82 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %83, i64 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !53
  %86 = add i64 %85, %4
  %87 = load i64, i64* %37, align 8, !tbaa !8
  %88 = inttoptr i64 %87 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %88, i64 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !53
  %91 = add i64 %90, %3
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %83, i64 0, i32 1
  %93 = load %struct._cl_mem*, %struct._cl_mem** %92, align 8, !tbaa !51
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %88, i64 0, i32 1
  %95 = load %struct._cl_mem*, %struct._cl_mem** %94, align 8, !tbaa !51
  %96 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %97 = load %struct._cl_command_queue*, %struct._cl_command_queue** %96, align 8, !tbaa !70
  %98 = tail call i32 %80(%struct._cl_command_queue* %97, %struct._cl_mem* %95, %struct._cl_mem* %93, i64 %91, i64 %86, i64 %81, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

99:                                               ; preds = %77
  %100 = load i64, i64* %38, align 8, !tbaa !10
  %101 = add i64 %100, %4
  %102 = load i64, i64* %37, align 8, !tbaa !8
  %103 = add i64 %102, %3
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %154, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %39, align 8, !tbaa !11
  %107 = inttoptr i64 %103 to i8*
  %108 = inttoptr i64 %101 to i8*
  %109 = tail call i8* @memcpy(i8* %108, i8* %107, i64 %106) #7
  br label %154

110:                                              ; preds = %61, %79, %42
  %111 = phi i32 [ %98, %79 ], [ %76, %61 ], [ %57, %42 ]
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %154, label %113

113:                                              ; preds = %110
  %114 = tail call i8* @malloc(i64 1024) #7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %114, i64 1023
  store i8 0, i8* %117, align 1, !tbaa !35
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i8* [ %117, %116 ], [ null, %113 ]
  %120 = tail call i8* @halide_string_to_string(i8* %114, i8* %119, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @"??_C@_0BJ@HEIDBBOD@CL?3?5buffer?5copy?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %121 = tail call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %111) #8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %127

125:                                              ; preds = %118
  %126 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* nonnull %121) #7
  br label %127

127:                                              ; preds = %123, %125
  %128 = phi i8* [ %126, %125 ], [ %124, %123 ]
  br i1 %115, label %129, label %130

129:                                              ; preds = %127
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %136

130:                                              ; preds = %127
  %131 = ptrtoint i8* %128 to i64
  %132 = ptrtoint i8* %114 to i64
  %133 = sub i64 1, %132
  %134 = add i64 %133, %131
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %114, i64 %134) #7
  tail call void @halide_error(i8* %0, i8* nonnull %114) #7
  br label %136

136:                                              ; preds = %129, %130
  call void @free(i8* %114) #7
  br label %154

137:                                              ; preds = %33, %145
  %138 = phi i32 [ 0, %33 ], [ %150, %145 ]
  %139 = phi i64 [ 0, %33 ], [ %149, %145 ]
  %140 = phi i64 [ 0, %33 ], [ %147, %145 ]
  %141 = add nsw i64 %139, %4
  %142 = add nsw i64 %140, %3
  %143 = tail call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(32) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %142, i64 %141, i32 %27, i1 zeroext %6, i1 zeroext %7) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = load i64, i64* %34, align 8, !tbaa !2
  %147 = add i64 %146, %140
  %148 = load i64, i64* %35, align 8, !tbaa !2
  %149 = add i64 %148, %139
  %150 = add nuw nsw i32 %138, 1
  %151 = load i64, i64* %29, align 8, !tbaa !2
  %152 = trunc i64 %151 to i32
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %137, label %154, !llvm.loop !94

154:                                              ; preds = %145, %137, %26, %99, %105, %110, %136, %23
  %155 = phi i32 [ -1, %23 ], [ %111, %136 ], [ 0, %110 ], [ 0, %105 ], [ 0, %99 ], [ 0, %26 ], [ 0, %145 ], [ %143, %137 ]
  ret i32 %155
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %7 = icmp eq %struct.halide_device_interface_t* %2, null
  %8 = icmp eq %struct.halide_device_interface_t* %2, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @"??_C@_0LB@HCAEPHPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !95
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8, !tbaa !14
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !72
  %23 = icmp eq %struct.halide_device_interface_t* %22, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  br i1 %8, label %95, label %25

25:                                               ; preds = %24
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@GCBJGBEC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %95

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !72
  %29 = icmp eq %struct.halide_device_interface_t* %28, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %29, label %30, label %42

30:                                               ; preds = %20, %26
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !21
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = and i64 %13, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8, !tbaa !14
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %37
  br label %42

42:                                               ; preds = %41, %26, %30, %37
  %43 = phi i1 [ true, %37 ], [ false, %41 ], [ true, %30 ], [ true, %26 ]
  br i1 %7, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !21
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@EGDFODBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %50) #9
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %43, %struct.halide_buffer_t* %3, i1 zeroext %7) #8
  %51 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %51) #9
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 0
  store i8* %0, i8** %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %53, align 8, !tbaa !69
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %54, align 8, !tbaa !70
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 3
  store i32 0, i32* %55, align 8, !tbaa !71
  %56 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %57 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %59

59:                                               ; preds = %58, %49
  %60 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %53, %struct._cl_command_queue** nonnull %54, i1 zeroext true) #7
  store i32 %60, i32* %55, align 8, !tbaa !71
  %61 = load %struct._cl_context*, %struct._cl_context** %53, align 8, !tbaa !69
  %62 = icmp eq %struct._cl_context* %61, null
  %63 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 8
  %64 = icmp eq %struct._cl_command_queue* %63, null
  %65 = or i1 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = call i8* @malloc(i64 1024) #7
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i64 1023
  store i8 0, i8* %72, align 1, !tbaa !35
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %74 = ptrtoint i8* %73 to i64
  %75 = ptrtoint i8* %67 to i64
  %76 = sub i64 1, %75
  %77 = add i64 %76, %74
  %78 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %77) #7
  call void @halide_error(i8* %0, i8* nonnull %67) #7
  br label %79

79:                                               ; preds = %69, %71
  call void @free(i8* %67) #7
  store i32 -1, i32* %55, align 8, !tbaa !71
  br label %91

80:                                               ; preds = %59
  %81 = icmp eq i32 %60, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %84 = load i32, i32* %83, align 4, !tbaa !23
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 2
  %86 = load i64, i64* %85, align 8, !tbaa !13
  %87 = call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(32) %6, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %86, i64 0, i32 %84, i1 zeroext %43, i1 zeroext %7) #8
  %88 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA", align 8, !tbaa !36
  %89 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 8, !tbaa !70
  %90 = call i32 %88(%struct._cl_command_queue* %89) #7
  br label %91

91:                                               ; preds = %79, %80, %82
  %92 = phi i32 [ %87, %82 ], [ %60, %80 ], [ -1, %79 ]
  %93 = load i8*, i8** %52, align 8, !tbaa !67
  %94 = call i32 @halide_release_cl_context(i8* %93) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %51) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %50) #9
  br label %95

95:                                               ; preds = %25, %24, %91
  %96 = phi i32 [ %92, %91 ], [ -42, %24 ], [ -42, %25 ]
  ret i32 %96
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
define weak dso_local i32 @halide_opencl_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca i32, align 4
  %19 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %20 = alloca %struct._cl_program*, align 8
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %22 = alloca [3 x i64], align 8
  %23 = alloca [3 x i64], align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct._cl_mem*, align 8
  %26 = alloca %struct._cl_buffer_region, align 8
  %27 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %28 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %29 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %30 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #9
  %31 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #9
  %32 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 0
  store i8* %0, i8** %32, align 8, !tbaa !67
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %33, align 8, !tbaa !69
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %34, align 8, !tbaa !70
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 3
  store i32 0, i32* %35, align 8, !tbaa !71
  %36 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %37 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %39

39:                                               ; preds = %38, %17
  %40 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %33, %struct._cl_command_queue** nonnull %34, i1 zeroext true) #7
  store i32 %40, i32* %35, align 8, !tbaa !71
  %41 = load %struct._cl_context*, %struct._cl_context** %33, align 8, !tbaa !69
  %42 = icmp eq %struct._cl_context* %41, null
  %43 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 8
  %44 = icmp eq %struct._cl_command_queue* %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = call i8* @malloc(i64 1024) #7
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %47, i64 1023
  store i8 0, i8* %52, align 1, !tbaa !35
  %53 = call i8* @halide_string_to_string(i8* nonnull %47, i8* nonnull %52, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %54 = ptrtoint i8* %53 to i64
  %55 = ptrtoint i8* %47 to i64
  %56 = sub i64 1, %55
  %57 = add i64 %56, %54
  %58 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %57) #7
  call void @halide_error(i8* %0, i8* nonnull %47) #7
  br label %59

59:                                               ; preds = %49, %51
  call void @free(i8* %47) #7
  store i32 -1, i32* %35, align 8, !tbaa !71
  br label %529

60:                                               ; preds = %39
  %61 = icmp eq i32 %40, 0
  br i1 %61, label %62, label %529

62:                                               ; preds = %60
  %63 = icmp eq i8* %1, null
  br i1 %63, label %107, label %64

64:                                               ; preds = %62
  %65 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 8, !tbaa !36
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  %66 = ptrtoint i8* %1 to i64
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 1), align 8, !tbaa !80
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %64
  %71 = ptrtoint %struct._cl_context* %41 to i64
  %72 = and i64 %66, 4294967295
  %73 = add i64 %72, %71
  %74 = mul i64 %73, -7046029254386353131
  %75 = sub i32 64, %68
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %74, %76
  %78 = shl nuw i32 1, %68
  %79 = icmp eq i32 %68, 31
  br i1 %79, label %113, label %80

80:                                               ; preds = %70
  %81 = add nsw i32 %78, -1
  %82 = sext i32 %81 to i64
  %83 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 2), align 8, !tbaa !81
  %84 = sext i32 %78 to i64
  %85 = icmp sgt i32 %78, 1
  %86 = select i1 %85, i32 %78, i32 1
  %87 = zext i32 %86 to i64
  br label %91

88:                                               ; preds = %99
  %89 = icmp slt i64 %105, %84
  %90 = icmp eq i64 %105, %87
  br i1 %90, label %113, label %91, !llvm.loop !82

91:                                               ; preds = %88, %80
  %92 = phi i64 [ 0, %80 ], [ %105, %88 ]
  %93 = phi i1 [ true, %80 ], [ %89, %88 ]
  %94 = add i64 %92, %77
  %95 = and i64 %94, %82
  %96 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 2
  %97 = load i32, i32* %96, align 8, !tbaa !83
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 0
  %101 = load %struct._cl_context*, %struct._cl_context** %100, align 8, !tbaa !85
  %102 = icmp eq %struct._cl_context* %101, %41
  %103 = icmp eq i32 %97, %67
  %104 = and i1 %103, %102
  %105 = add nuw nsw i64 %92, 1
  br i1 %104, label %106, label %88

106:                                              ; preds = %99
  br i1 %93, label %109, label %113

107:                                              ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@DACMPJPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  %108 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 8, !tbaa !36
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  br label %113

109:                                              ; preds = %106
  %110 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 1
  %111 = load %struct._cl_program*, %struct._cl_program** %110, align 8, !tbaa !36
  store %struct._cl_program* %111, %struct._cl_program** %20, align 8, !tbaa !36
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  %112 = icmp eq %struct._cl_program* %111, null
  br i1 %112, label %115, label %118

113:                                              ; preds = %91, %88, %70, %64, %106, %107
  %114 = phi i8* [ %108, %107 ], [ %65, %106 ], [ %65, %64 ], [ %65, %70 ], [ %65, %88 ], [ %65, %91 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 0)) #7
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi %struct._cl_program* [ %111, %109 ], [ null, %113 ]
  %117 = phi i8* [ %65, %109 ], [ %114, %113 ]
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@NCIAOLIA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %118

118:                                              ; preds = %109, %115
  %119 = phi %struct._cl_program* [ %111, %109 ], [ %116, %115 ]
  %120 = phi i8* [ %65, %109 ], [ %117, %115 ]
  %121 = load %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)*, %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @"?clCreateKernel@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_kernel@@PEAU_cl_program@@PEBDPEAH@ZEA", align 8, !tbaa !36
  %122 = call %struct._cl_kernel* %121(%struct._cl_program* %119, i8* %2, i32* nonnull %18) #7
  %123 = load i32, i32* %18, align 4, !tbaa !42
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %179, label %125

125:                                              ; preds = %118
  %126 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %123) #8
  %127 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %127) #9
  %128 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 3
  store i8* %0, i8** %128, align 8, !tbaa !43
  %129 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 4
  store i8 1, i8* %129, align 8, !tbaa !45
  %130 = call i8* @malloc(i64 1024) #7
  %131 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 0
  store i8* %130, i8** %131, align 8, !tbaa !46
  %132 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 1
  %133 = icmp eq i8* %130, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds i8, i8* %130, i64 1023
  store i8 0, i8* %135, align 1, !tbaa !35
  br label %136

136:                                              ; preds = %125, %134
  %137 = phi i8* [ %135, %134 ], [ null, %125 ]
  %138 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = call i8* @halide_string_to_string(i8* %130, i8* %137, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@KFJGNCAK@CL?3?5clCreateKernel?5?$AA@", i64 0, i64 0)) #7
  %140 = icmp eq i8* %2, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i8* @halide_string_to_string(i8* %139, i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %145

143:                                              ; preds = %136
  %144 = call i8* @halide_string_to_string(i8* %139, i8* %137, i8* nonnull %2) #7
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ]
  store i8* %146, i8** %132, align 8, !tbaa !47
  %147 = load i8*, i8** %138, align 8, !tbaa !48
  %148 = call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FIOGNGMI@?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %149 = load i32, i32* %18, align 4, !tbaa !42
  %150 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %149) #8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i8* @halide_string_to_string(i8* %148, i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %156

154:                                              ; preds = %145
  %155 = call i8* @halide_string_to_string(i8* %148, i8* %147, i8* nonnull %150) #7
  br label %156

156:                                              ; preds = %152, %154
  %157 = phi i8* [ %155, %154 ], [ %153, %152 ]
  %158 = load i8*, i8** %138, align 8, !tbaa !48
  %159 = call i8* @halide_string_to_string(i8* %157, i8* %158, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  %160 = load i8*, i8** %131, align 8, !tbaa !46
  %161 = icmp eq i8* %160, null
  %162 = load i8*, i8** %128, align 8, !tbaa !43
  br i1 %161, label %163, label %164

163:                                              ; preds = %156
  call void @halide_error(i8* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %172

164:                                              ; preds = %156
  %165 = ptrtoint i8* %159 to i64
  %166 = ptrtoint i8* %160 to i64
  %167 = add i64 %165, 1
  %168 = sub i64 %167, %166
  %169 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %162, i8* nonnull %160, i64 %168) #7
  %170 = load i8*, i8** %131, align 8, !tbaa !46
  %171 = load i8*, i8** %128, align 8, !tbaa !43
  call void @halide_error(i8* %171, i8* %170) #7
  br label %172

172:                                              ; preds = %164, %163
  %173 = load i8, i8* %129, align 8, !tbaa !45, !range !40
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %131, align 8, !tbaa !46
  call void @free(i8* %176) #7
  br label %177

177:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %127) #9
  %178 = load i32, i32* %18, align 4, !tbaa !42
  br label %527

179:                                              ; preds = %118
  %180 = bitcast [3 x i64]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %180) #9
  %181 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 0
  %182 = sext i32 %3 to i64
  %183 = sext i32 %6 to i64
  %184 = mul nsw i64 %183, %182
  store i64 %184, i64* %181, align 8, !tbaa !54
  %185 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 1
  %186 = sext i32 %4 to i64
  %187 = sext i32 %7 to i64
  %188 = mul nsw i64 %187, %186
  store i64 %188, i64* %185, align 8, !tbaa !54
  %189 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 2
  %190 = sext i32 %5 to i64
  %191 = sext i32 %8 to i64
  %192 = mul nsw i64 %191, %190
  store i64 %192, i64* %189, align 8, !tbaa !54
  %193 = bitcast [3 x i64]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %193) #9
  %194 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 %183, i64* %194, align 8, !tbaa !54
  %195 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 %187, i64* %195, align 8, !tbaa !54
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 %191, i64* %196, align 8, !tbaa !54
  %197 = load i64, i64* %10, align 8, !tbaa !54
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %233, label %199

199:                                              ; preds = %179, %217
  %200 = phi i64 [ %219, %217 ], [ 0, %179 ]
  %201 = phi i32 [ %218, %217 ], [ 0, %179 ]
  %202 = getelementptr inbounds i8, i8* %12, i64 %200
  %203 = load i8, i8* %202, align 1, !tbaa !35
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds i8*, i8** %11, i64 %200
  %207 = bitcast i8** %206 to %struct.halide_buffer_t**
  %208 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %207, align 8, !tbaa !36
  %209 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %208, i64 0, i32 0
  %210 = load i64, i64* %209, align 8, !tbaa !21
  %211 = inttoptr i64 %210 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %212 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %211, i64 0, i32 0
  %213 = load i64, i64* %212, align 8, !tbaa !53
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i32
  %216 = add nsw i32 %201, %215
  br label %217

217:                                              ; preds = %205, %199
  %218 = phi i32 [ %201, %199 ], [ %216, %205 ]
  %219 = add nuw i64 %200, 1
  %220 = getelementptr inbounds i64, i64* %10, i64 %219
  %221 = load i64, i64* %220, align 8, !tbaa !54
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %199, !llvm.loop !96

223:                                              ; preds = %217
  %224 = icmp sgt i32 %218, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %223
  %226 = zext i32 %218 to i64
  %227 = shl nuw nsw i64 %226, 3
  %228 = call i8* @malloc(i64 %227) #7
  %229 = icmp eq i8* %228, null
  br i1 %229, label %525, label %230

230:                                              ; preds = %225
  %231 = bitcast i8* %228 to %struct._cl_mem**
  %232 = call i8* @memset(i8* nonnull %228, i32 0, i64 %227) #7
  br label %233

233:                                              ; preds = %179, %230, %223
  %234 = phi %struct._cl_mem** [ %231, %230 ], [ null, %223 ], [ null, %179 ]
  %235 = bitcast i32* %24 to i8*
  %236 = bitcast %struct._cl_mem** %25 to i8*
  %237 = bitcast %struct._cl_buffer_region* %26 to i8*
  %238 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i64 0, i32 0
  %239 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i64 0, i32 1
  %240 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27 to i8*
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 3
  %242 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 4
  %243 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 0
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 1
  %245 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 2
  %246 = bitcast %struct._cl_mem** %234 to i8*
  br label %247

247:                                              ; preds = %408, %233
  %248 = phi i32 [ 0, %233 ], [ %409, %408 ]
  %249 = phi i32 [ 0, %233 ], [ %354, %408 ]
  %250 = phi i32 [ undef, %233 ], [ %410, %408 ]
  %251 = sext i32 %248 to i64
  %252 = getelementptr inbounds i64, i64* %10, i64 %251
  %253 = load i64, i64* %252, align 8, !tbaa !54
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %411, label %255

255:                                              ; preds = %247
  %256 = getelementptr inbounds i8*, i8** %11, i64 %251
  %257 = getelementptr inbounds i8, i8* %12, i64 %251
  %258 = load i8*, i8** %256, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %235) #9
  store i32 0, i32* %24, align 4, !tbaa !42
  %259 = load i8, i8* %257, align 1, !tbaa !35
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %349, label %261

261:                                              ; preds = %255
  %262 = icmp eq i64 %253, 8
  br i1 %262, label %264, label %263

263:                                              ; preds = %261
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"??_C@_0HP@LAHLNOMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %264

264:                                              ; preds = %263, %261
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236) #9
  %265 = bitcast i8* %258 to i64*
  %266 = load i64, i64* %265, align 8, !tbaa !21
  %267 = inttoptr i64 %266 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %268 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %267, i64 0, i32 1
  %269 = load %struct._cl_mem*, %struct._cl_mem** %268, align 8, !tbaa !51
  store %struct._cl_mem* %269, %struct._cl_mem** %25, align 8, !tbaa !36
  %270 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %267, i64 0, i32 0
  %271 = load i64, i64* %270, align 8, !tbaa !53
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %340, label %273

273:                                              ; preds = %264
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %237) #9
  store i64 %271, i64* %238, align 8, !tbaa !97
  %274 = getelementptr inbounds i8, i8* %258, i64 36
  %275 = bitcast i8* %274 to i32*
  %276 = load i32, i32* %275, align 4, !tbaa !23
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds i8, i8* %258, i64 33
  %280 = load i8, i8* %279, align 1, !tbaa !22
  br label %325

281:                                              ; preds = %273
  %282 = getelementptr inbounds i8, i8* %258, i64 40
  %283 = bitcast i8* %282 to %struct.halide_dimension_t**
  %284 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %283, align 8, !tbaa !24
  %285 = zext i32 %276 to i64
  br label %286

286:                                              ; preds = %300, %281
  %287 = phi i64 [ 0, %281 ], [ %302, %300 ]
  %288 = phi i64 [ 0, %281 ], [ %301, %300 ]
  %289 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %284, i64 %287, i32 2
  %290 = load i32, i32* %289, align 4, !tbaa !25
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %286
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %284, i64 %287, i32 1
  %295 = load i32, i32* %294, align 4, !tbaa !30
  %296 = add nsw i32 %295, -1
  %297 = sext i32 %296 to i64
  %298 = mul nsw i64 %297, %293
  %299 = add nsw i64 %298, %288
  br label %300

300:                                              ; preds = %292, %286
  %301 = phi i64 [ %299, %292 ], [ %288, %286 ]
  %302 = add nuw nsw i64 %287, 1
  %303 = icmp eq i64 %302, %285
  br i1 %303, label %304, label %286, !llvm.loop !90

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, i8* %258, i64 33
  %306 = load i8, i8* %305, align 1, !tbaa !22
  br label %307

307:                                              ; preds = %321, %304
  %308 = phi i64 [ 0, %304 ], [ %323, %321 ]
  %309 = phi i64 [ 0, %304 ], [ %322, %321 ]
  %310 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %284, i64 %308, i32 2
  %311 = load i32, i32* %310, align 4, !tbaa !25
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %307
  %314 = sext i32 %311 to i64
  %315 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %284, i64 %308, i32 1
  %316 = load i32, i32* %315, align 4, !tbaa !30
  %317 = add nsw i32 %316, -1
  %318 = sext i32 %317 to i64
  %319 = mul nsw i64 %318, %314
  %320 = add nsw i64 %319, %309
  br label %321

321:                                              ; preds = %313, %307
  %322 = phi i64 [ %320, %313 ], [ %309, %307 ]
  %323 = add nuw nsw i64 %308, 1
  %324 = icmp eq i64 %323, %285
  br i1 %324, label %325, label %307, !llvm.loop !91

325:                                              ; preds = %321, %278
  %326 = phi i8 [ %280, %278 ], [ %306, %321 ]
  %327 = phi i64 [ 0, %278 ], [ %301, %321 ]
  %328 = phi i64 [ 0, %278 ], [ %322, %321 ]
  %329 = zext i8 %326 to i64
  %330 = add nuw nsw i64 %329, 7
  %331 = lshr i64 %330, 3
  %332 = add nsw i64 %327, 1
  %333 = sub i64 %332, %328
  %334 = mul i64 %333, %331
  store i64 %334, i64* %239, align 8, !tbaa !99
  %335 = load %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @"?clCreateSubBuffer@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU5@_KIPEBXPEAH@ZEA", align 8, !tbaa !36
  %336 = call %struct._cl_mem* %335(%struct._cl_mem* %269, i64 1, i32 4640, i8* nonnull %237, i32* nonnull %24) #7
  store %struct._cl_mem* %336, %struct._cl_mem** %25, align 8, !tbaa !36
  %337 = add nsw i32 %249, 1
  %338 = sext i32 %249 to i64
  %339 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %234, i64 %338
  store %struct._cl_mem* %336, %struct._cl_mem** %339, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %237) #9
  br label %340

340:                                              ; preds = %325, %264
  %341 = phi i32 [ %337, %325 ], [ %249, %264 ]
  %342 = load i32, i32* %24, align 4, !tbaa !42
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@IKPEBX@ZEA", align 8, !tbaa !36
  %346 = call i32 %345(%struct._cl_kernel* %122, i32 %248, i64 8, i8* nonnull %236) #7
  store i32 %346, i32* %24, align 4, !tbaa !42
  br label %347

347:                                              ; preds = %344, %340
  %348 = phi i32 [ %346, %344 ], [ %342, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236) #9
  br label %352

349:                                              ; preds = %255
  %350 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@IKPEBX@ZEA", align 8, !tbaa !36
  %351 = call i32 %350(%struct._cl_kernel* %122, i32 %248, i64 %253, i8* %258) #7
  store i32 %351, i32* %24, align 4, !tbaa !42
  br label %352

352:                                              ; preds = %349, %347
  %353 = phi i32 [ %351, %349 ], [ %348, %347 ]
  %354 = phi i32 [ %249, %349 ], [ %341, %347 ]
  %355 = icmp eq i32 %353, 0
  br i1 %355, label %406, label %356

356:                                              ; preds = %352
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %240) #9
  store i8* %0, i8** %241, align 8, !tbaa !43
  store i8 1, i8* %242, align 8, !tbaa !45
  %357 = call i8* @malloc(i64 1024) #7
  store i8* %357, i8** %243, align 8, !tbaa !46
  %358 = icmp eq i8* %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds i8, i8* %357, i64 1023
  store i8* %360, i8** %245, align 8, !tbaa !48
  store i8 0, i8* %360, align 1, !tbaa !35
  br label %362

361:                                              ; preds = %356
  store i8* null, i8** %245, align 8, !tbaa !48
  br label %362

362:                                              ; preds = %359, %361
  %363 = phi i8* [ %360, %359 ], [ null, %361 ]
  %364 = call i8* @halide_string_to_string(i8* %357, i8* %363, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@HJLMFHME@CL?3?5clSetKernelArg?5failed?3?5?$AA@", i64 0, i64 0)) #7
  store i8* %364, i8** %244, align 8, !tbaa !47
  %365 = load i32, i32* %24, align 4, !tbaa !42
  %366 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %365) #8
  %367 = icmp eq i8* %366, null
  %368 = load i8*, i8** %245, align 8, !tbaa !48
  br i1 %367, label %369, label %371

369:                                              ; preds = %362
  %370 = call i8* @halide_string_to_string(i8* %364, i8* %368, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %373

371:                                              ; preds = %362
  %372 = call i8* @halide_string_to_string(i8* %364, i8* %368, i8* nonnull %366) #7
  br label %373

373:                                              ; preds = %369, %371
  %374 = phi i8* [ %372, %371 ], [ %370, %369 ]
  %375 = load i8*, i8** %243, align 8, !tbaa !46
  %376 = icmp eq i8* %375, null
  %377 = load i8*, i8** %241, align 8, !tbaa !43
  br i1 %376, label %378, label %379

378:                                              ; preds = %373
  call void @halide_error(i8* %377, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %387

379:                                              ; preds = %373
  %380 = ptrtoint i8* %374 to i64
  %381 = ptrtoint i8* %375 to i64
  %382 = sub i64 1, %381
  %383 = add i64 %382, %380
  %384 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %377, i8* nonnull %375, i64 %383) #7
  %385 = load i8*, i8** %243, align 8, !tbaa !46
  %386 = load i8*, i8** %241, align 8, !tbaa !43
  call void @halide_error(i8* %386, i8* %385) #7
  br label %387

387:                                              ; preds = %379, %378
  %388 = load i8, i8* %242, align 8, !tbaa !45, !range !40
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %387
  %391 = load i8*, i8** %243, align 8
  call void @free(i8* %391) #7
  br label %392

392:                                              ; preds = %387, %390
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %240) #9
  %393 = icmp sgt i32 %354, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %392
  %395 = zext i32 %354 to i64
  br label %398

396:                                              ; preds = %398, %392
  call void @free(i8* %246) #7
  %397 = load i32, i32* %24, align 4, !tbaa !42
  br label %408

398:                                              ; preds = %394, %398
  %399 = phi i64 [ 0, %394 ], [ %404, %398 ]
  %400 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA", align 8, !tbaa !36
  %401 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %234, i64 %399
  %402 = load %struct._cl_mem*, %struct._cl_mem** %401, align 8, !tbaa !36
  %403 = call i32 %400(%struct._cl_mem* %402) #7
  %404 = add nuw nsw i64 %399, 1
  %405 = icmp eq i64 %404, %395
  br i1 %405, label %396, label %398, !llvm.loop !100

406:                                              ; preds = %352
  %407 = add nsw i32 %248, 1
  br label %408

408:                                              ; preds = %406, %396
  %409 = phi i32 [ %248, %396 ], [ %407, %406 ]
  %410 = phi i32 [ %397, %396 ], [ %250, %406 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %235) #9
  br i1 %355, label %247, label %525, !llvm.loop !101

411:                                              ; preds = %247
  %412 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @"?clSetKernelArg@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@IKPEBX@ZEA", align 8, !tbaa !36
  %413 = icmp sgt i32 %9, 1
  %414 = select i1 %413, i32 %9, i32 1
  %415 = zext i32 %414 to i64
  %416 = call i32 %412(%struct._cl_kernel* %122, i32 %248, i64 %415, i8* null) #7
  store i32 %416, i32* %18, align 4, !tbaa !42
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %459, label %418

418:                                              ; preds = %411
  %419 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %419) #9
  %420 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 3
  store i8* %0, i8** %420, align 8, !tbaa !43
  %421 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 4
  store i8 1, i8* %421, align 8, !tbaa !45
  %422 = call i8* @malloc(i64 1024) #7
  %423 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 0
  store i8* %422, i8** %423, align 8, !tbaa !46
  %424 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 1
  store i8* %422, i8** %424, align 8, !tbaa !47
  %425 = icmp eq i8* %422, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %418
  %427 = getelementptr inbounds i8, i8* %422, i64 1023
  store i8 0, i8* %427, align 1, !tbaa !35
  br label %428

428:                                              ; preds = %418, %426
  %429 = phi i8* [ %427, %426 ], [ null, %418 ]
  %430 = call i8* @halide_string_to_string(i8* %422, i8* %429, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@OLKMLKBK@CL?3?5clSetKernelArg?5failed?5?$AA@", i64 0, i64 0)) #7
  %431 = load i32, i32* %18, align 4, !tbaa !42
  %432 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %431) #8
  %433 = icmp eq i8* %432, null
  br i1 %433, label %434, label %436

434:                                              ; preds = %428
  %435 = call i8* @halide_string_to_string(i8* %430, i8* %429, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %438

436:                                              ; preds = %428
  %437 = call i8* @halide_string_to_string(i8* %430, i8* %429, i8* nonnull %432) #7
  br label %438

438:                                              ; preds = %434, %436
  %439 = phi i8* [ %437, %436 ], [ %435, %434 ]
  %440 = load i8*, i8** %423, align 8, !tbaa !46
  %441 = icmp eq i8* %440, null
  %442 = load i8*, i8** %420, align 8, !tbaa !43
  br i1 %441, label %443, label %444

443:                                              ; preds = %438
  call void @halide_error(i8* %442, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %452

444:                                              ; preds = %438
  %445 = ptrtoint i8* %439 to i64
  %446 = ptrtoint i8* %440 to i64
  %447 = sub i64 1, %446
  %448 = add i64 %447, %445
  %449 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %442, i8* nonnull %440, i64 %448) #7
  %450 = load i8*, i8** %423, align 8, !tbaa !46
  %451 = load i8*, i8** %420, align 8, !tbaa !43
  call void @halide_error(i8* %451, i8* %450) #7
  br label %452

452:                                              ; preds = %444, %443
  %453 = load i8, i8* %421, align 8, !tbaa !45, !range !40
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %452
  %456 = load i8*, i8** %423, align 8, !tbaa !46
  call void @free(i8* %456) #7
  br label %457

457:                                              ; preds = %452, %455
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %419) #9
  %458 = load i32, i32* %18, align 4, !tbaa !42
  br label %525

459:                                              ; preds = %411
  %460 = load i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueNDRangeKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_kernel@@IPEBK22IPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %461 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 8, !tbaa !70
  %462 = call i32 %460(%struct._cl_command_queue* %461, %struct._cl_kernel* %122, i32 3, i64* null, i64* nonnull %181, i64* nonnull %194, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  store i32 %462, i32* %18, align 4, !tbaa !42
  %463 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %462) #8
  %464 = icmp sgt i32 %249, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %459
  %466 = zext i32 %249 to i64
  br label %470

467:                                              ; preds = %470, %459
  call void @free(i8* %246) #7
  %468 = load i32, i32* %18, align 4, !tbaa !42
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %522, label %478

470:                                              ; preds = %465, %470
  %471 = phi i64 [ 0, %465 ], [ %476, %470 ]
  %472 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA", align 8, !tbaa !36
  %473 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %234, i64 %471
  %474 = load %struct._cl_mem*, %struct._cl_mem** %473, align 8, !tbaa !36
  %475 = call i32 %472(%struct._cl_mem* %474) #7
  %476 = add nuw nsw i64 %471, 1
  %477 = icmp eq i64 %476, %466
  br i1 %477, label %467, label %470, !llvm.loop !102

478:                                              ; preds = %467
  %479 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %479) #9
  %480 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 3
  store i8* %0, i8** %480, align 8, !tbaa !43
  %481 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 4
  store i8 1, i8* %481, align 8, !tbaa !45
  %482 = call i8* @malloc(i64 1024) #7
  %483 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 0
  store i8* %482, i8** %483, align 8, !tbaa !46
  %484 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 1
  store i8* %482, i8** %484, align 8, !tbaa !47
  %485 = icmp eq i8* %482, null
  br i1 %485, label %488, label %486

486:                                              ; preds = %478
  %487 = getelementptr inbounds i8, i8* %482, i64 1023
  store i8 0, i8* %487, align 1, !tbaa !35
  br label %488

488:                                              ; preds = %478, %486
  %489 = phi i8* [ %487, %486 ], [ null, %478 ]
  %490 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 2
  store i8* %489, i8** %490, align 8
  %491 = call i8* @halide_string_to_string(i8* %482, i8* %489, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@KMDKKOMD@CL?3?5clEnqueueNDRangeKernel?5faile@", i64 0, i64 0)) #7
  %492 = load i32, i32* %18, align 4, !tbaa !42
  %493 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %492) #8
  %494 = icmp eq i8* %493, null
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = call i8* @halide_string_to_string(i8* %491, i8* %489, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %499

497:                                              ; preds = %488
  %498 = call i8* @halide_string_to_string(i8* %491, i8* %489, i8* nonnull %493) #7
  br label %499

499:                                              ; preds = %495, %497
  %500 = phi i8* [ %498, %497 ], [ %496, %495 ]
  %501 = load i8*, i8** %490, align 8, !tbaa !48
  %502 = call i8* @halide_string_to_string(i8* %500, i8* %501, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7
  %503 = load i8*, i8** %483, align 8, !tbaa !46
  %504 = icmp eq i8* %503, null
  %505 = load i8*, i8** %480, align 8, !tbaa !43
  br i1 %504, label %506, label %507

506:                                              ; preds = %499
  call void @halide_error(i8* %505, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %515

507:                                              ; preds = %499
  %508 = ptrtoint i8* %502 to i64
  %509 = ptrtoint i8* %503 to i64
  %510 = add i64 %508, 1
  %511 = sub i64 %510, %509
  %512 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %505, i8* nonnull %503, i64 %511) #7
  %513 = load i8*, i8** %483, align 8, !tbaa !46
  %514 = load i8*, i8** %480, align 8, !tbaa !43
  call void @halide_error(i8* %514, i8* %513) #7
  br label %515

515:                                              ; preds = %507, %506
  %516 = load i8, i8* %481, align 8, !tbaa !45, !range !40
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %520, label %518

518:                                              ; preds = %515
  %519 = load i8*, i8** %483, align 8, !tbaa !46
  call void @free(i8* %519) #7
  br label %520

520:                                              ; preds = %515, %518
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %479) #9
  %521 = load i32, i32* %18, align 4, !tbaa !42
  br label %525

522:                                              ; preds = %467
  %523 = load i32 (%struct._cl_kernel*)*, i32 (%struct._cl_kernel*)** @"?clReleaseKernel@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_kernel@@@ZEA", align 8, !tbaa !36
  %524 = call i32 %523(%struct._cl_kernel* %122) #7
  br label %525

525:                                              ; preds = %408, %225, %522, %520, %457
  %526 = phi i32 [ %458, %457 ], [ %521, %520 ], [ 0, %522 ], [ -11, %225 ], [ %410, %408 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %193) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %180) #9
  br label %527

527:                                              ; preds = %525, %177
  %528 = phi i32 [ %178, %177 ], [ %526, %525 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %120) #9
  br label %529

529:                                              ; preds = %59, %60, %527
  %530 = phi i32 [ %528, %527 ], [ %40, %60 ], [ -1, %59 ]
  %531 = load i8*, i8** %32, align 8, !tbaa !67
  %532 = call i32 @halide_release_cl_context(i8* %531) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #9
  ret i32 %530
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

declare extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #7
  ret i32 %3
}

declare extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_wrap_cl_mem(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !21
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@FPCGBLCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %4, align 8, !tbaa !21
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i64 16) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = inttoptr i64 %2 to %struct._cl_mem*
  %15 = getelementptr inbounds i8, i8* %11, i64 8
  %16 = bitcast i8* %15 to %struct._cl_mem**
  store %struct._cl_mem* %14, %struct._cl_mem** %16, align 8, !tbaa !51
  %17 = bitcast i8* %11 to i64*
  store i64 0, i64* %17, align 8, !tbaa !53
  %18 = ptrtoint i8* %11 to i64
  store i64 %18, i64* %4, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %19, align 8, !tbaa !72
  %20 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %20, i64 0, i32 0
  %22 = load void ()*, void ()** %21, align 8, !tbaa !93
  tail call void %22() #7
  br label %23

23:                                               ; preds = %13, %10, %7
  %24 = phi i32 [ -2, %7 ], [ 0, %13 ], [ -11, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_detach_cl_mem(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @"??_C@_0ML@HEGIOGAJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  %13 = load i64, i64* %3, align 8, !tbaa !21
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i64 [ %4, %6 ], [ %13, %12 ]
  %16 = inttoptr i64 %15 to i8*
  tail call void @free(i8* %16) #7
  store i64 0, i64* %3, align 8, !tbaa !21
  %17 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %17, i64 0, i32 15
  %19 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %19, i64 0, i32 1
  %21 = load void ()*, void ()** %20, align 8, !tbaa !75
  tail call void %21() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  br label %22

22:                                               ; preds = %2, %14
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_opencl_get_cl_mem(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %10 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @"??_C@_0ML@FGBMJAJG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  %13 = load i64, i64* %3, align 8, !tbaa !21
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i64 [ %4, %6 ], [ %13, %12 ]
  %16 = inttoptr i64 %15 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %16, i64 0, i32 1
  %18 = load %struct._cl_mem*, %struct._cl_mem** %17, align 8, !tbaa !51
  %19 = ptrtoint %struct._cl_mem* %18 to i64
  br label %20

20:                                               ; preds = %2, %14
  %21 = phi i64 [ %19, %14 ], [ 0, %2 ]
  ret i64 %21
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_opencl_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !72
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @"??_C@_0JA@OCJLGPJI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  %11 = load i64, i64* %3, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %14, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i64 [ %16, %12 ], [ 0, %2 ]
  ret i64 %18
}

; Function Attrs: nounwind
define weak dso_local i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 0
  store i8* %0, i8** %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 8, !tbaa !69
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 3
  store i32 0, i32* %10, align 8, !tbaa !71
  %11 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %12 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %4
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 8, !tbaa !71
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !69
  %17 = icmp eq %struct._cl_context* %16, null
  %18 = load %struct._cl_command_queue*, %struct._cl_command_queue** %9, align 8
  %19 = icmp eq %struct._cl_command_queue* %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = call i8* @malloc(i64 1024) #7
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023
  store i8 0, i8* %27, align 1, !tbaa !35
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %29 = ptrtoint i8* %28 to i64
  %30 = ptrtoint i8* %22 to i64
  %31 = sub i64 1, %30
  %32 = add i64 %31, %29
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %34

34:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 8, !tbaa !71
  br label %77

35:                                               ; preds = %14
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  store %struct.halide_device_interface_t* %39, %struct.halide_device_interface_t** %40, align 8, !tbaa !72
  %41 = call i8* @malloc(i64 16) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = call i8* @malloc(i64 1024) #7
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i8* @halide_string_to_string(i8* %44, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %56

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %44, i64 1023
  store i8 0, i8* %49, align 1, !tbaa !35
  %50 = call i8* @halide_string_to_string(i8* nonnull %44, i8* nonnull %49, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@KDFHIBFC@CL?3?5malloc?5failed?5making?5device?5@", i64 0, i64 0)) #7
  %51 = ptrtoint i8* %50 to i64
  %52 = ptrtoint i8* %44 to i64
  %53 = add i64 %51, 1
  %54 = sub i64 %53, %52
  %55 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %44, i64 %54) #7
  call void @halide_error(i8* %0, i8* nonnull %44) #7
  br label %56

56:                                               ; preds = %48, %46
  call void @free(i8* %44) #7
  br label %77

57:                                               ; preds = %37
  %58 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clRetainMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA", align 8, !tbaa !36
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !21
  %61 = inttoptr i64 %60 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %61, i64 0, i32 1
  %63 = load %struct._cl_mem*, %struct._cl_mem** %62, align 8, !tbaa !51
  %64 = call i32 %58(%struct._cl_mem* %63) #7
  %65 = load i64, i64* %59, align 8, !tbaa !21
  %66 = inttoptr i64 %65 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 1
  %68 = load %struct._cl_mem*, %struct._cl_mem** %67, align 8, !tbaa !51
  %69 = getelementptr inbounds i8, i8* %41, i64 8
  %70 = bitcast i8* %69 to %struct._cl_mem**
  store %struct._cl_mem* %68, %struct._cl_mem** %70, align 8, !tbaa !51
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !53
  %73 = add i64 %72, %2
  %74 = bitcast i8* %41 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !53
  %75 = ptrtoint i8* %41 to i64
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  store i64 %75, i64* %76, align 8, !tbaa !21
  br label %77

77:                                               ; preds = %34, %56, %57, %35
  %78 = phi i32 [ %15, %35 ], [ -11, %56 ], [ 0, %57 ], [ -1, %34 ]
  %79 = load i8*, i8** %7, align 8, !tbaa !67
  %80 = call i32 @halide_release_cl_context(i8* %79) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #9
  ret i32 %78
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %28, label %29, label %13, !llvm.loop !103

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !22
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #8
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opencl_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #8
  ret i32 %23
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !21
  %6 = inttoptr i64 %5 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %6, i64 0, i32 1
  %8 = load %struct._cl_mem*, %struct._cl_mem** %7, align 8, !tbaa !51
  %9 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #9
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %13, align 8, !tbaa !71
  %14 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %15 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %17

17:                                               ; preds = %16, %2
  %18 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %11, %struct._cl_command_queue** nonnull %12, i1 zeroext true) #7
  store i32 %18, i32* %13, align 8, !tbaa !71
  %19 = load %struct._cl_context*, %struct._cl_context** %11, align 8, !tbaa !69
  %20 = icmp eq %struct._cl_context* %19, null
  %21 = load %struct._cl_command_queue*, %struct._cl_command_queue** %12, align 8
  %22 = icmp eq %struct._cl_command_queue* %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = call i8* @malloc(i64 1024) #7
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, i8* %25, i64 1023
  store i8 0, i8* %30, align 1, !tbaa !35
  %31 = call i8* @halide_string_to_string(i8* nonnull %25, i8* nonnull %30, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %32 = ptrtoint i8* %31 to i64
  %33 = ptrtoint i8* %25 to i64
  %34 = sub i64 1, %33
  %35 = add i64 %34, %32
  %36 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %25, i64 %35) #7
  call void @halide_error(i8* %0, i8* nonnull %25) #7
  br label %37

37:                                               ; preds = %27, %29
  call void @free(i8* %25) #7
  store i32 -1, i32* %13, align 8, !tbaa !71
  br label %48

38:                                               ; preds = %17
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #8
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@PJBGAFJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @"?clReleaseMemObject@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@@ZEA", align 8, !tbaa !36
  %45 = call i32 %44(%struct._cl_mem* %8) #7
  %46 = load i64, i64* %4, align 8, !tbaa !21
  %47 = inttoptr i64 %46 to i8*
  call void @free(i8* %47) #7
  br label %48

48:                                               ; preds = %37, %43, %38
  %49 = phi i32 [ %18, %38 ], [ %45, %43 ], [ -1, %37 ]
  %50 = load i8*, i8** %10, align 8, !tbaa !67
  %51 = call i32 @halide_release_cl_context(i8* %50) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #9
  ret i32 %49
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_opencl_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?opencl_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_opencl_cleanup() #0 {
  tail call void @"??$release_all@P6AHPEAU_cl_program@@@Z@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAAXPEAXAEAP6AHPEAU_cl_program@@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i8* null, i32 (%struct._cl_program*)** nonnull align 8 dereferenceable(8) @"?clReleaseProgram@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_program@@@ZEA") #8
  %1 = tail call i32 @halide_opencl_device_release(i8* null) #8
  ret void
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @"??$release_all@P6AHPEAU_cl_program@@@Z@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAAXPEAXAEAP6AHPEAU_cl_program@@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i32 (%struct._cl_program*)** nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !80
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %6, %12 ], [ %39, %38 ]
  %17 = phi i32 [ %10, %12 ], [ %40, %38 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %14, %12 ], [ %41, %38 ]
  %19 = phi i64 [ 0, %12 ], [ %42, %38 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !83
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !86
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** %2, align 8, !tbaa !36
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 1
  %30 = load %struct._cl_program*, %struct._cl_program** %29, align 8, !tbaa !87
  %31 = tail call i32 %28(%struct._cl_program* %30) #7
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 8, !tbaa !81
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i64 %19, i32 1
  store %struct._cl_program* null, %struct._cl_program** %33, align 8, !tbaa !87
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i64 %19, i32 2
  store i32 1, i32* %34, align 8, !tbaa !83
  %35 = load i32, i32* %5, align 8, !tbaa !88
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 8, !tbaa !88
  %37 = load i32, i32* %9, align 8, !tbaa !80
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i64 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %15, label %46, !llvm.loop !89

46:                                               ; preds = %38
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3, %46
  %49 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %50 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !81
  tail call void @free(i8* %51) #7
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %49, align 8, !tbaa !81
  %52 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  store i32 0, i32* %52, align 8, !tbaa !80
  br label %53

53:                                               ; preds = %8, %48, %46
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #7
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

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = alloca %struct._cl_image_format, align 4
  %5 = alloca %struct._cl_image_desc, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to %struct.halide_type_t*
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %10 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %14, align 8, !tbaa !71
  %15 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %16 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 8, !tbaa !71
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 8, !tbaa !69
  %21 = icmp eq %struct._cl_context* %20, null
  %22 = load %struct._cl_command_queue*, %struct._cl_command_queue** %13, align 8
  %23 = icmp eq %struct._cl_command_queue* %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = call i8* @malloc(i64 1024) #7
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023
  store i8 0, i8* %31, align 1, !tbaa !35
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %33 = ptrtoint i8* %32 to i64
  %34 = ptrtoint i8* %26 to i64
  %35 = sub i64 1, %34
  %36 = add i64 %35, %33
  %37 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #7
  call void @halide_error(i8* %0, i8* nonnull %26) #7
  br label %38

38:                                               ; preds = %28, %30
  call void @free(i8* %26) #7
  store i32 -1, i32* %14, align 8, !tbaa !71
  br label %326

39:                                               ; preds = %18
  %40 = icmp eq i32 %19, 0
  br i1 %40, label %41, label %326

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %43 = load i32, i32* %42, align 4, !tbaa !23
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %47 = load i8, i8* %46, align 1, !tbaa !22
  br label %91

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %50 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %49, align 8, !tbaa !24
  %51 = zext i32 %43 to i64
  br label %52

52:                                               ; preds = %66, %48
  %53 = phi i64 [ 0, %48 ], [ %68, %66 ]
  %54 = phi i64 [ 0, %48 ], [ %67, %66 ]
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %53, i32 2
  %56 = load i32, i32* %55, align 4, !tbaa !25
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %53, i32 1
  %61 = load i32, i32* %60, align 4, !tbaa !30
  %62 = add nsw i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %59
  %65 = add nsw i64 %64, %54
  br label %66

66:                                               ; preds = %58, %52
  %67 = phi i64 [ %65, %58 ], [ %54, %52 ]
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %51
  br i1 %69, label %70, label %52, !llvm.loop !90

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %72 = load i8, i8* %71, align 1, !tbaa !22
  br label %73

73:                                               ; preds = %87, %70
  %74 = phi i64 [ 0, %70 ], [ %89, %87 ]
  %75 = phi i64 [ 0, %70 ], [ %88, %87 ]
  %76 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %74, i32 2
  %77 = load i32, i32* %76, align 4, !tbaa !25
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %74, i32 1
  %82 = load i32, i32* %81, align 4, !tbaa !30
  %83 = add nsw i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %80
  %86 = add nsw i64 %85, %75
  br label %87

87:                                               ; preds = %79, %73
  %88 = phi i64 [ %86, %79 ], [ %75, %73 ]
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %51
  br i1 %90, label %91, label %73, !llvm.loop !91

91:                                               ; preds = %87, %45
  %92 = phi i8 [ %47, %45 ], [ %72, %87 ]
  %93 = phi i64 [ 0, %45 ], [ %67, %87 ]
  %94 = phi i64 [ 0, %45 ], [ %88, %87 ]
  %95 = zext i8 %92 to i64
  %96 = add nuw nsw i64 %95, 7
  %97 = lshr i64 %96, 3
  %98 = add nsw i64 %93, 1
  %99 = sub i64 %98, %94
  %100 = mul i64 %99, %97
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@KLGLJOPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %103

103:                                              ; preds = %102, %91
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %105 = load i64, i64* %104, align 8, !tbaa !21
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %42, align 4, !tbaa !23
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %118

112:                                              ; preds = %103
  %113 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #8
  br i1 %113, label %326, label %114

114:                                              ; preds = %112
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @"??_C@_0IP@GPNAIHNH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %326

115:                                              ; preds = %127, %107
  %116 = call i8* @malloc(i64 16) #7
  %117 = icmp eq i8* %116, null
  br i1 %117, label %326, label %132

118:                                              ; preds = %110, %127
  %119 = phi i32 [ %108, %110 ], [ %128, %127 ]
  %120 = phi i64 [ 0, %110 ], [ %129, %127 ]
  %121 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %111, align 8, !tbaa !24
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %121, i64 %120, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !25
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DEPPOMDI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  %126 = load i32, i32* %42, align 4, !tbaa !23
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi i32 [ %119, %118 ], [ %126, %125 ]
  %129 = add nuw nsw i64 %120, 1
  %130 = sext i32 %128 to i64
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %118, label %115, !llvm.loop !104

132:                                              ; preds = %115
  %133 = bitcast %struct._cl_image_format* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #9
  %134 = bitcast %struct._cl_image_desc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %134) #9
  %135 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %135) #9
  %136 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %6, align 4
  %139 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i64 0, i32 1
  store i32 65535, i32* %139, align 4, !tbaa !105
  %140 = trunc i32 %138 to i8
  %141 = lshr i32 %138, 8
  %142 = trunc i32 %141 to i8
  switch i8 %140, label %151 [
    i8 0, label %143
    i8 1, label %146
    i8 2, label %149
  ]

143:                                              ; preds = %132
  switch i8 %142, label %151 [
    i8 8, label %168
    i8 16, label %144
    i8 32, label %145
  ]

144:                                              ; preds = %143
  br label %168

145:                                              ; preds = %143
  br label %168

146:                                              ; preds = %132
  switch i8 %142, label %151 [
    i8 8, label %168
    i8 16, label %147
    i8 32, label %148
  ]

147:                                              ; preds = %146
  br label %168

148:                                              ; preds = %146
  br label %168

149:                                              ; preds = %132
  switch i8 %142, label %151 [
    i8 16, label %168
    i8 32, label %150
  ]

150:                                              ; preds = %149
  br label %168

151:                                              ; preds = %143, %146, %132, %149
  %152 = call i8* @malloc(i64 1024) #7
  %153 = icmp eq i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, i8* %152, i64 1023
  store i8 0, i8* %155, align 1, !tbaa !35
  br label %156

156:                                              ; preds = %151, %154
  %157 = phi i8* [ %155, %154 ], [ null, %151 ]
  %158 = call i8* @halide_string_to_string(i8* %152, i8* %157, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @"??_C@_0CP@JFFADFI@Unhandled?5datatype?5for?5opencl?5te@", i64 0, i64 0)) #7
  %159 = call i8* @halide_type_to_string(i8* %158, i8* %157, %struct.halide_type_t* nonnull %7) #7
  br i1 %153, label %160, label %161

160:                                              ; preds = %156
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %167

161:                                              ; preds = %156
  %162 = ptrtoint i8* %159 to i64
  %163 = ptrtoint i8* %152 to i64
  %164 = add i64 %162, 1
  %165 = sub i64 %164, %163
  %166 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %152, i64 %165) #7
  call void @halide_error(i8* %0, i8* nonnull %152) #7
  br label %167

167:                                              ; preds = %161, %160
  call void @free(i8* %152) #7
  br label %324

168:                                              ; preds = %149, %146, %143, %147, %148, %150, %145, %144
  %169 = phi i32 [ 4315, %147 ], [ 4316, %148 ], [ 4318, %150 ], [ 4313, %145 ], [ 4312, %144 ], [ 4311, %143 ], [ 4314, %146 ], [ 4317, %149 ]
  store i32 %169, i32* %139, align 4, !tbaa !105
  %170 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i64 0, i32 0
  store i32 4272, i32* %170, align 4, !tbaa !107
  %171 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %172 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %171, align 8, !tbaa !24
  %173 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 2
  %174 = load i32, i32* %173, align 4, !tbaa !25
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %194

176:                                              ; preds = %168
  %177 = load i32, i32* %42, align 4, !tbaa !23
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %208

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 2
  %181 = load i32, i32* %180, align 4, !tbaa !25
  %182 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %183 = load i32, i32* %182, align 4, !tbaa !30
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = icmp sgt i32 %177, 2
  br i1 %186, label %187, label %211

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 2, i32 2
  %189 = load i32, i32* %188, align 4, !tbaa !25
  %190 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %191 = load i32, i32* %190, align 4, !tbaa !30
  %192 = mul nsw i32 %191, %181
  %193 = icmp eq i32 %189, %192
  br i1 %193, label %208, label %194

194:                                              ; preds = %187, %179, %168
  %195 = call i8* @malloc(i64 1024) #7
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i8* @halide_string_to_string(i8* %195, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %207

199:                                              ; preds = %194
  %200 = getelementptr inbounds i8, i8* %195, i64 1023
  store i8 0, i8* %200, align 1, !tbaa !35
  %201 = call i8* @halide_string_to_string(i8* nonnull %195, i8* nonnull %200, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@BGCMENKM@image?5buffer?5must?5be?5dense?5on?5in@", i64 0, i64 0)) #7
  %202 = ptrtoint i8* %201 to i64
  %203 = ptrtoint i8* %195 to i64
  %204 = add i64 %202, 1
  %205 = sub i64 %204, %203
  %206 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %195, i64 %205) #7
  call void @halide_error(i8* %0, i8* nonnull %195) #7
  br label %207

207:                                              ; preds = %199, %197
  call void @free(i8* %195) #7
  br label %324

208:                                              ; preds = %176, %187
  switch i32 %177, label %223 [
    i32 1, label %209
    i32 3, label %221
  ]

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4340, i32* %210, align 8, !tbaa !108
  br label %237

211:                                              ; preds = %185
  %212 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4337, i32* %212, align 8, !tbaa !108
  %213 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %214 = load i32, i32* %213, align 4, !tbaa !30
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 2
  store i64 %215, i64* %216, align 8, !tbaa !110
  %217 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %218 = load i32, i32* %217, align 4, !tbaa !30
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 %219, i64* %220, align 8, !tbaa !111
  br label %252

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4338, i32* %222, align 8, !tbaa !108
  br label %237

223:                                              ; preds = %208
  %224 = call i8* @malloc(i64 1024) #7
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i8* @halide_string_to_string(i8* %224, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %236

228:                                              ; preds = %223
  %229 = getelementptr inbounds i8, i8* %224, i64 1023
  store i8 0, i8* %229, align 1, !tbaa !35
  %230 = call i8* @halide_string_to_string(i8* nonnull %224, i8* nonnull %229, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BBLMLEAJ@image?5buffer?5must?5have?51?93?5dimen@", i64 0, i64 0)) #7
  %231 = ptrtoint i8* %230 to i64
  %232 = ptrtoint i8* %224 to i64
  %233 = add i64 %231, 1
  %234 = sub i64 %233, %232
  %235 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %224, i64 %234) #7
  call void @halide_error(i8* %0, i8* nonnull %224) #7
  br label %236

236:                                              ; preds = %228, %226
  call void @free(i8* %224) #7
  br label %324

237:                                              ; preds = %221, %209
  %238 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %239 = load i32, i32* %238, align 4, !tbaa !30
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 2
  store i64 %240, i64* %241, align 8, !tbaa !110
  br i1 %178, label %242, label %250

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %244 = load i32, i32* %243, align 4, !tbaa !30
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 %245, i64* %246, align 8, !tbaa !111
  %247 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %248 = load i32, i32* %247, align 4, !tbaa !30
  %249 = sext i32 %248 to i64
  br label %252

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 1, i64* %251, align 8, !tbaa !111
  br label %252

252:                                              ; preds = %250, %211, %242
  %253 = phi i64 [ %249, %242 ], [ 1, %250 ], [ 1, %211 ]
  %254 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 4
  store i64 %253, i64* %254, align 8, !tbaa !112
  %255 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 5
  store i64 1, i64* %255, align 8, !tbaa !113
  %256 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 6
  store i64 0, i64* %256, align 8, !tbaa !114
  %257 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 7
  store i64 0, i64* %257, align 8, !tbaa !115
  %258 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 8
  store i32 0, i32* %258, align 8, !tbaa !116
  %259 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 9
  store i32 0, i32* %259, align 4, !tbaa !117
  %260 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 10
  store %struct._cl_mem* null, %struct._cl_mem** %260, align 8, !tbaa !118
  %261 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %261) #9
  %262 = load %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @"?clCreateImage@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_mem@@PEAU_cl_context@@_KPEBU_cl_image_format@@PEBU_cl_image_desc@@PEAXPEAH@ZEA", align 8, !tbaa !36
  %263 = load %struct._cl_context*, %struct._cl_context** %12, align 8, !tbaa !69
  %264 = call %struct._cl_mem* %262(%struct._cl_context* %263, i64 1, %struct._cl_image_format* nonnull %4, %struct._cl_image_desc* nonnull %5, i8* null, i32* nonnull %8) #7
  %265 = load i32, i32* %8, align 4, !tbaa !42
  %266 = icmp ne i32 %265, 0
  %267 = icmp eq %struct._cl_mem* %264, null
  %268 = or i1 %267, %266
  br i1 %268, label %269, label %311

269:                                              ; preds = %252
  %270 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %265) #8
  %271 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %271) #9
  %272 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3
  store i8* %0, i8** %272, align 8, !tbaa !43
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4
  store i8 1, i8* %273, align 8, !tbaa !45
  %274 = call i8* @malloc(i64 1024) #7
  %275 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0
  store i8* %274, i8** %275, align 8, !tbaa !46
  %276 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1
  store i8* %274, i8** %276, align 8, !tbaa !47
  %277 = icmp eq i8* %274, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %269
  %279 = getelementptr inbounds i8, i8* %274, i64 1023
  store i8 0, i8* %279, align 1, !tbaa !35
  br label %280

280:                                              ; preds = %269, %278
  %281 = phi i8* [ %279, %278 ], [ null, %269 ]
  %282 = call i8* @halide_string_to_string(i8* %274, i8* %281, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @"??_C@_0BL@NNHHKBND@CL?3?5clCreateImage?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %283 = load i32, i32* %8, align 4, !tbaa !42
  %284 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %283) #8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = call i8* @halide_string_to_string(i8* %282, i8* %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %290

288:                                              ; preds = %280
  %289 = call i8* @halide_string_to_string(i8* %282, i8* %281, i8* nonnull %284) #7
  br label %290

290:                                              ; preds = %286, %288
  %291 = phi i8* [ %289, %288 ], [ %287, %286 ]
  %292 = load i8*, i8** %275, align 8, !tbaa !46
  %293 = icmp eq i8* %292, null
  %294 = load i8*, i8** %272, align 8, !tbaa !43
  br i1 %293, label %295, label %296

295:                                              ; preds = %290
  call void @halide_error(i8* %294, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %304

296:                                              ; preds = %290
  %297 = ptrtoint i8* %291 to i64
  %298 = ptrtoint i8* %292 to i64
  %299 = sub i64 1, %298
  %300 = add i64 %299, %297
  %301 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %294, i8* nonnull %292, i64 %300) #7
  %302 = load i8*, i8** %275, align 8, !tbaa !46
  %303 = load i8*, i8** %272, align 8, !tbaa !43
  call void @halide_error(i8* %303, i8* %302) #7
  br label %304

304:                                              ; preds = %296, %295
  %305 = load i8, i8* %273, align 8, !tbaa !45, !range !40
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %304
  %308 = load i8*, i8** %275, align 8, !tbaa !46
  call void @free(i8* %308) #7
  br label %309

309:                                              ; preds = %304, %307
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %271) #9
  call void @free(i8* nonnull %116) #7
  %310 = load i32, i32* %8, align 4, !tbaa !42
  br label %322

311:                                              ; preds = %252
  %312 = getelementptr inbounds i8, i8* %116, i64 8
  %313 = bitcast i8* %312 to %struct._cl_mem**
  store %struct._cl_mem* %264, %struct._cl_mem** %313, align 8, !tbaa !51
  %314 = bitcast i8* %116 to i64*
  store i64 0, i64* %314, align 8, !tbaa !53
  %315 = ptrtoint i8* %116 to i64
  store i64 %315, i64* %104, align 8, !tbaa !21
  %316 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %316, align 8, !tbaa !72
  %317 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !73
  %318 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %317, i64 0, i32 0
  %319 = load void ()*, void ()** %318, align 8, !tbaa !93
  call void %319() #7
  %320 = call zeroext i1 @"?validate_device_pointer@OpenCL@Internal@Runtime@Halide@@YA_NPEAXPEAUhalide_buffer_t@@K@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #8
  br i1 %320, label %322, label %321

321:                                              ; preds = %311
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @"??_C@_0IP@NEAAEKKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  call void @abort() #7
  br label %322

322:                                              ; preds = %311, %321, %309
  %323 = phi i32 [ %310, %309 ], [ 0, %321 ], [ 0, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %261) #9
  br label %324

324:                                              ; preds = %322, %236, %207, %167
  %325 = phi i32 [ -16, %167 ], [ -16, %207 ], [ %323, %322 ], [ -16, %236 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %135) #9
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %134) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #9
  br label %326

326:                                              ; preds = %38, %114, %112, %115, %324, %39
  %327 = phi i32 [ %19, %39 ], [ 0, %114 ], [ 0, %112 ], [ %325, %324 ], [ -6, %115 ], [ -1, %38 ]
  %328 = load i8*, i8** %11, align 8, !tbaa !67
  %329 = call i32 @halide_release_cl_context(i8* %328) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #9
  ret i32 %327
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %7 = alloca [3 x i64], align 8
  %8 = alloca [3 x i64], align 8
  %9 = alloca [3 x i64], align 8
  %10 = alloca [3 x i64], align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %12 = icmp eq %struct.halide_device_interface_t* %2, null
  %13 = icmp eq %struct.halide_device_interface_t* %2, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @"??_C@_0LI@BANCPNKE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %18 = load i64, i64* %17, align 8, !tbaa !95
  %19 = and i64 %18, 2
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !72
  %28 = icmp eq %struct.halide_device_interface_t* %27, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  br i1 %13, label %494, label %30

30:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @"??_C@_0JF@GOJCIKCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %494

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %33 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %32, align 8, !tbaa !72
  %34 = icmp eq %struct.halide_device_interface_t* %33, @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %34, label %35, label %47

35:                                               ; preds = %25, %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !21
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = and i64 %18, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %44 = load i8*, i8** %43, align 8, !tbaa !14
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %42
  br label %47

47:                                               ; preds = %46, %31, %35, %42
  %48 = phi i1 [ true, %42 ], [ false, %46 ], [ true, %35 ], [ true, %31 ]
  br i1 %12, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !21
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@BDNGEHJA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %54

54:                                               ; preds = %53, %49, %47
  %55 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %55) #9
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %48, %struct.halide_buffer_t* %3, i1 zeroext %12) #8
  %56 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %56) #9
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 0
  store i8* %0, i8** %57, align 8, !tbaa !67
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %58, align 8, !tbaa !69
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %59, align 8, !tbaa !70
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 3
  store i32 0, i32* %60, align 8, !tbaa !71
  %61 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @"?clCreateContext@OpenCL@Internal@Runtime@Halide@@3P6APEAU_cl_context@@PEB_JIPEBQEAU_cl_device_id@@P6AXPEBDPEBXKPEAX@Z4PEAH@ZEA", align 8, !tbaa !36
  %62 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  call void @"?load_libopencl@OpenCL@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #7
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %58, %struct._cl_command_queue** nonnull %59, i1 zeroext true) #7
  store i32 %65, i32* %60, align 8, !tbaa !71
  %66 = load %struct._cl_context*, %struct._cl_context** %58, align 8, !tbaa !69
  %67 = icmp eq %struct._cl_context* %66, null
  %68 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 8
  %69 = icmp eq %struct._cl_command_queue* %68, null
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = call i8* @malloc(i64 1024) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %77, align 1, !tbaa !35
  %78 = call i8* @halide_string_to_string(i8* nonnull %72, i8* nonnull %77, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@IIEJBDMK@OpenCL?3?5null?5context?5or?5cmd_queu@", i64 0, i64 0)) #7
  %79 = ptrtoint i8* %78 to i64
  %80 = ptrtoint i8* %72 to i64
  %81 = sub i64 1, %80
  %82 = add i64 %81, %79
  %83 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %82) #7
  call void @halide_error(i8* %0, i8* nonnull %72) #7
  br label %84

84:                                               ; preds = %74, %76
  call void @free(i8* %72) #7
  store i32 -1, i32* %60, align 8, !tbaa !71
  br label %490

85:                                               ; preds = %64
  %86 = icmp eq i32 %65, 0
  br i1 %86, label %87, label %490

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %91 = load i32, i32* %90, align 4, !tbaa !23
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %95 = load i8, i8* %94, align 1, !tbaa !22
  br label %139

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %98 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %97, align 8, !tbaa !24
  %99 = zext i32 %91 to i64
  br label %100

100:                                              ; preds = %114, %96
  %101 = phi i64 [ 0, %96 ], [ %116, %114 ]
  %102 = phi i64 [ 0, %96 ], [ %115, %114 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !25
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = zext i32 %104 to i64
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %101, i32 1
  %109 = load i32, i32* %108, align 4, !tbaa !30
  %110 = add nsw i32 %109, -1
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %107
  %113 = add nsw i64 %112, %102
  br label %114

114:                                              ; preds = %106, %100
  %115 = phi i64 [ %113, %106 ], [ %102, %100 ]
  %116 = add nuw nsw i64 %101, 1
  %117 = icmp eq i64 %116, %99
  br i1 %117, label %118, label %100, !llvm.loop !90

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %120 = load i8, i8* %119, align 1, !tbaa !22
  br label %121

121:                                              ; preds = %135, %118
  %122 = phi i64 [ 0, %118 ], [ %137, %135 ]
  %123 = phi i64 [ 0, %118 ], [ %136, %135 ]
  %124 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %122, i32 2
  %125 = load i32, i32* %124, align 4, !tbaa !25
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = sext i32 %125 to i64
  %129 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %122, i32 1
  %130 = load i32, i32* %129, align 4, !tbaa !30
  %131 = add nsw i32 %130, -1
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %128
  %134 = add nsw i64 %133, %123
  br label %135

135:                                              ; preds = %127, %121
  %136 = phi i64 [ %134, %127 ], [ %123, %121 ]
  %137 = add nuw nsw i64 %122, 1
  %138 = icmp eq i64 %137, %99
  br i1 %138, label %139, label %121, !llvm.loop !91

139:                                              ; preds = %135, %93
  %140 = phi i8 [ %95, %93 ], [ %120, %135 ]
  %141 = phi i64 [ 0, %93 ], [ %115, %135 ]
  %142 = phi i64 [ 0, %93 ], [ %136, %135 ]
  %143 = zext i8 %140 to i64
  %144 = add nuw nsw i64 %143, 7
  %145 = lshr i64 %144, 3
  %146 = add nsw i64 %141, 1
  %147 = sub i64 %146, %142
  %148 = mul i64 %147, %145
  %149 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %150 = load i32, i32* %149, align 4, !tbaa !23
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %154 = load i8, i8* %153, align 1, !tbaa !22
  br label %198

155:                                              ; preds = %139
  %156 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %157 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %156, align 8, !tbaa !24
  %158 = zext i32 %150 to i64
  br label %159

159:                                              ; preds = %173, %155
  %160 = phi i64 [ 0, %155 ], [ %175, %173 ]
  %161 = phi i64 [ 0, %155 ], [ %174, %173 ]
  %162 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 2
  %163 = load i32, i32* %162, align 4, !tbaa !25
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = zext i32 %163 to i64
  %167 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 1
  %168 = load i32, i32* %167, align 4, !tbaa !30
  %169 = add nsw i32 %168, -1
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %166
  %172 = add nsw i64 %171, %161
  br label %173

173:                                              ; preds = %165, %159
  %174 = phi i64 [ %172, %165 ], [ %161, %159 ]
  %175 = add nuw nsw i64 %160, 1
  %176 = icmp eq i64 %175, %158
  br i1 %176, label %177, label %159, !llvm.loop !90

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %179 = load i8, i8* %178, align 1, !tbaa !22
  br label %180

180:                                              ; preds = %194, %177
  %181 = phi i64 [ 0, %177 ], [ %196, %194 ]
  %182 = phi i64 [ 0, %177 ], [ %195, %194 ]
  %183 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 2
  %184 = load i32, i32* %183, align 4, !tbaa !25
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 1
  %189 = load i32, i32* %188, align 4, !tbaa !30
  %190 = add nsw i32 %189, -1
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %187
  %193 = add nsw i64 %192, %182
  br label %194

194:                                              ; preds = %186, %180
  %195 = phi i64 [ %193, %186 ], [ %182, %180 ]
  %196 = add nuw nsw i64 %181, 1
  %197 = icmp eq i64 %196, %158
  br i1 %197, label %198, label %180, !llvm.loop !91

198:                                              ; preds = %194, %152
  %199 = phi i8 [ %154, %152 ], [ %179, %194 ]
  %200 = phi i64 [ 0, %152 ], [ %174, %194 ]
  %201 = phi i64 [ 0, %152 ], [ %195, %194 ]
  %202 = zext i8 %199 to i64
  %203 = add nuw nsw i64 %202, 7
  %204 = lshr i64 %203, 3
  %205 = add nsw i64 %200, 1
  %206 = sub i64 %205, %201
  %207 = mul i64 %206, %204
  %208 = icmp eq i64 %148, %207
  br i1 %208, label %209, label %259

209:                                              ; preds = %198
  %210 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 6
  %211 = load i64, i64* %210, align 8, !tbaa !11
  br i1 %92, label %212, label %252

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %214 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %213, align 8, !tbaa !24
  %215 = zext i32 %91 to i64
  br label %216

216:                                              ; preds = %230, %212
  %217 = phi i64 [ 0, %212 ], [ %232, %230 ]
  %218 = phi i64 [ 0, %212 ], [ %231, %230 ]
  %219 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %217, i32 2
  %220 = load i32, i32* %219, align 4, !tbaa !25
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = zext i32 %220 to i64
  %224 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %217, i32 1
  %225 = load i32, i32* %224, align 4, !tbaa !30
  %226 = add nsw i32 %225, -1
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %227, %223
  %229 = add nsw i64 %228, %218
  br label %230

230:                                              ; preds = %222, %216
  %231 = phi i64 [ %229, %222 ], [ %218, %216 ]
  %232 = add nuw nsw i64 %217, 1
  %233 = icmp eq i64 %232, %215
  br i1 %233, label %234, label %216, !llvm.loop !90

234:                                              ; preds = %230, %248
  %235 = phi i64 [ %250, %248 ], [ 0, %230 ]
  %236 = phi i64 [ %249, %248 ], [ 0, %230 ]
  %237 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %235, i32 2
  %238 = load i32, i32* %237, align 4, !tbaa !25
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = sext i32 %238 to i64
  %242 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %235, i32 1
  %243 = load i32, i32* %242, align 4, !tbaa !30
  %244 = add nsw i32 %243, -1
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, %241
  %247 = add nsw i64 %246, %236
  br label %248

248:                                              ; preds = %240, %234
  %249 = phi i64 [ %247, %240 ], [ %236, %234 ]
  %250 = add nuw nsw i64 %235, 1
  %251 = icmp eq i64 %250, %215
  br i1 %251, label %252, label %234, !llvm.loop !91

252:                                              ; preds = %248, %209
  %253 = phi i64 [ 0, %209 ], [ %231, %248 ]
  %254 = phi i64 [ 0, %209 ], [ %249, %248 ]
  %255 = add nsw i64 %253, 1
  %256 = sub i64 %255, %254
  %257 = mul i64 %256, %145
  %258 = icmp eq i64 %211, %257
  br i1 %258, label %273, label %259

259:                                              ; preds = %252, %198
  %260 = call i8* @malloc(i64 1024) #7
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = call i8* @halide_string_to_string(i8* %260, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %272

264:                                              ; preds = %259
  %265 = getelementptr inbounds i8, i8* %260, i64 1023
  store i8 0, i8* %265, align 1, !tbaa !35
  %266 = call i8* @halide_string_to_string(i8* nonnull %260, i8* nonnull %265, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @"??_C@_0CN@FPAFPECO@image?5buffer?5copies?5must?5be?5for?5@", i64 0, i64 0)) #7
  %267 = ptrtoint i8* %266 to i64
  %268 = ptrtoint i8* %260 to i64
  %269 = add i64 %267, 1
  %270 = sub i64 %269, %268
  %271 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %260, i64 %270) #7
  call void @halide_error(i8* %0, i8* nonnull %260) #7
  br label %272

272:                                              ; preds = %264, %262
  call void @free(i8* %260) #7
  br label %490

273:                                              ; preds = %252
  %274 = xor i1 %12, true
  %275 = or i1 %48, %274
  br i1 %275, label %349, label %276

276:                                              ; preds = %273
  %277 = bitcast [3 x i64]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %277) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %277, i8 0, i64 24, i1 false)
  %278 = bitcast [3 x i64]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %278) #9
  %279 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %280 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %281 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %280, align 8, !tbaa !24
  %282 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 0, i32 1
  %283 = load i32, i32* %282, align 4, !tbaa !30
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %279, align 8, !tbaa !54
  %285 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %286 = icmp sgt i32 %150, 1
  br i1 %286, label %287, label %293

287:                                              ; preds = %276
  %288 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 1
  %289 = load i32, i32* %288, align 4, !tbaa !30
  %290 = sext i32 %289 to i64
  store i64 %290, i64* %285, align 8, !tbaa !54
  %291 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %292 = icmp eq i32 %150, 2
  br i1 %292, label %295, label %299

293:                                              ; preds = %276
  store i64 1, i64* %285, align 8, !tbaa !54
  %294 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 1, i64* %294, align 8, !tbaa !54
  br label %339

295:                                              ; preds = %287
  store i64 1, i64* %291, align 8, !tbaa !54
  %296 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 2
  %297 = load i32, i32* %296, align 4, !tbaa !25
  %298 = icmp eq i32 %297, %283
  br i1 %298, label %339, label %306

299:                                              ; preds = %287
  %300 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 2, i32 1
  %301 = load i32, i32* %300, align 4, !tbaa !30
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %291, align 8, !tbaa !54
  %303 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 2
  %304 = load i32, i32* %303, align 4, !tbaa !25
  %305 = icmp eq i32 %304, %283
  br i1 %305, label %319, label %306

306:                                              ; preds = %299, %295
  %307 = call i8* @malloc(i64 1024) #7
  %308 = icmp eq i8* %307, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = call i8* @halide_string_to_string(i8* %307, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %337

311:                                              ; preds = %306
  %312 = getelementptr inbounds i8, i8* %307, i64 1023
  store i8 0, i8* %312, align 1, !tbaa !35
  %313 = call i8* @halide_string_to_string(i8* nonnull %307, i8* nonnull %312, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  %314 = ptrtoint i8* %313 to i64
  %315 = ptrtoint i8* %307 to i64
  %316 = add i64 %314, 1
  %317 = sub i64 %316, %315
  %318 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %307, i64 %317) #7
  call void @halide_error(i8* %0, i8* nonnull %307) #7
  br label %337

319:                                              ; preds = %299
  %320 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 2, i32 2
  %321 = load i32, i32* %320, align 4, !tbaa !25
  %322 = mul nsw i32 %289, %283
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %339, label %324

324:                                              ; preds = %319
  %325 = call i8* @malloc(i64 1024) #7
  %326 = icmp eq i8* %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = call i8* @halide_string_to_string(i8* %325, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %337

329:                                              ; preds = %324
  %330 = getelementptr inbounds i8, i8* %325, i64 1023
  store i8 0, i8* %330, align 1, !tbaa !35
  %331 = call i8* @halide_string_to_string(i8* nonnull %325, i8* nonnull %330, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  %332 = ptrtoint i8* %331 to i64
  %333 = ptrtoint i8* %325 to i64
  %334 = add i64 %332, 1
  %335 = sub i64 %334, %333
  %336 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %325, i64 %335) #7
  call void @halide_error(i8* %0, i8* nonnull %325) #7
  br label %337

337:                                              ; preds = %327, %329, %309, %311
  %338 = phi i8* [ %307, %311 ], [ %307, %309 ], [ %325, %329 ], [ %325, %327 ]
  call void @free(i8* %338) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %278) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %277) #9
  br label %490

339:                                              ; preds = %295, %293, %319
  %340 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueReadImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEAXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %341 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %342 = load i8*, i8** %341, align 8, !tbaa !14
  %343 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %344 = load i64, i64* %88, align 8, !tbaa !8
  %345 = inttoptr i64 %344 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %346 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %345, i64 0, i32 1
  %347 = load %struct._cl_mem*, %struct._cl_mem** %346, align 8, !tbaa !51
  %348 = call i32 %340(%struct._cl_command_queue* %68, %struct._cl_mem* %347, i32 0, i64* nonnull %343, i64* nonnull %279, i64 0, i64 0, i8* %342, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %278) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %277) #9
  br label %441

349:                                              ; preds = %273
  %350 = xor i1 %48, true
  %351 = or i1 %12, %350
  br i1 %351, label %425, label %352

352:                                              ; preds = %349
  %353 = bitcast [3 x i64]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %353) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %353, i8 0, i64 24, i1 false)
  %354 = bitcast [3 x i64]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %354) #9
  %355 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %356 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %357 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %356, align 8, !tbaa !24
  %358 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 0, i32 1
  %359 = load i32, i32* %358, align 4, !tbaa !30
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %355, align 8, !tbaa !54
  %361 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %362 = icmp sgt i32 %91, 1
  br i1 %362, label %363, label %369

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 1
  %365 = load i32, i32* %364, align 4, !tbaa !30
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %361, align 8, !tbaa !54
  %367 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %368 = icmp eq i32 %91, 2
  br i1 %368, label %371, label %375

369:                                              ; preds = %352
  store i64 1, i64* %361, align 8, !tbaa !54
  %370 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 1, i64* %370, align 8, !tbaa !54
  br label %415

371:                                              ; preds = %363
  store i64 1, i64* %367, align 8, !tbaa !54
  %372 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 2
  %373 = load i32, i32* %372, align 4, !tbaa !25
  %374 = icmp eq i32 %373, %359
  br i1 %374, label %415, label %382

375:                                              ; preds = %363
  %376 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 2, i32 1
  %377 = load i32, i32* %376, align 4, !tbaa !30
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %367, align 8, !tbaa !54
  %379 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 2
  %380 = load i32, i32* %379, align 4, !tbaa !25
  %381 = icmp eq i32 %380, %359
  br i1 %381, label %395, label %382

382:                                              ; preds = %375, %371
  %383 = call i8* @malloc(i64 1024) #7
  %384 = icmp eq i8* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = call i8* @halide_string_to_string(i8* %383, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %413

387:                                              ; preds = %382
  %388 = getelementptr inbounds i8, i8* %383, i64 1023
  store i8 0, i8* %388, align 1, !tbaa !35
  %389 = call i8* @halide_string_to_string(i8* nonnull %383, i8* nonnull %388, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  %390 = ptrtoint i8* %389 to i64
  %391 = ptrtoint i8* %383 to i64
  %392 = add i64 %390, 1
  %393 = sub i64 %392, %391
  %394 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %383, i64 %393) #7
  call void @halide_error(i8* %0, i8* nonnull %383) #7
  br label %413

395:                                              ; preds = %375
  %396 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 2, i32 2
  %397 = load i32, i32* %396, align 4, !tbaa !25
  %398 = mul nsw i32 %365, %359
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %415, label %400

400:                                              ; preds = %395
  %401 = call i8* @malloc(i64 1024) #7
  %402 = icmp eq i8* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = call i8* @halide_string_to_string(i8* %401, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %413

405:                                              ; preds = %400
  %406 = getelementptr inbounds i8, i8* %401, i64 1023
  store i8 0, i8* %406, align 1, !tbaa !35
  %407 = call i8* @halide_string_to_string(i8* nonnull %401, i8* nonnull %406, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@ENIMJJEL@image?5buffer?5copies?5must?5be?5dens@", i64 0, i64 0)) #7
  %408 = ptrtoint i8* %407 to i64
  %409 = ptrtoint i8* %401 to i64
  %410 = add i64 %408, 1
  %411 = sub i64 %410, %409
  %412 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %401, i64 %411) #7
  call void @halide_error(i8* %0, i8* nonnull %401) #7
  br label %413

413:                                              ; preds = %403, %405, %385, %387
  %414 = phi i8* [ %383, %387 ], [ %383, %385 ], [ %401, %405 ], [ %401, %403 ]
  call void @free(i8* %414) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %354) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %353) #9
  br label %490

415:                                              ; preds = %371, %369, %395
  %416 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @"?clEnqueueWriteImage@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@PEAU_cl_mem@@IPEBK2KKPEBXIPEBQEAU_cl_event@@PEAPEAU7@@ZEA", align 8, !tbaa !36
  %417 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %418 = load i8*, i8** %417, align 8, !tbaa !14
  %419 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %420 = load i64, i64* %89, align 8, !tbaa !10
  %421 = inttoptr i64 %420 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %422 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %421, i64 0, i32 1
  %423 = load %struct._cl_mem*, %struct._cl_mem** %422, align 8, !tbaa !51
  %424 = call i32 %416(%struct._cl_command_queue* %68, %struct._cl_mem* %423, i32 0, i64* nonnull %419, i64* nonnull %355, i64 0, i64 0, i8* %418, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %354) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %353) #9
  br label %441

425:                                              ; preds = %349
  %426 = or i1 %12, %48
  br i1 %426, label %486, label %427

427:                                              ; preds = %425
  %428 = call i8* @malloc(i64 1024) #7
  %429 = icmp eq i8* %428, null
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = call i8* @halide_string_to_string(i8* %428, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@", i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %440

432:                                              ; preds = %427
  %433 = getelementptr inbounds i8, i8* %428, i64 1023
  store i8 0, i8* %433, align 1, !tbaa !35
  %434 = call i8* @halide_string_to_string(i8* nonnull %428, i8* nonnull %433, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BEDKGNGM@image?5to?5image?5copies?5not?5implem@", i64 0, i64 0)) #7
  %435 = ptrtoint i8* %434 to i64
  %436 = ptrtoint i8* %428 to i64
  %437 = add i64 %435, 1
  %438 = sub i64 %437, %436
  %439 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %428, i64 %438) #7
  call void @halide_error(i8* %0, i8* nonnull %428) #7
  br label %440

440:                                              ; preds = %432, %430
  call void @free(i8* %428) #7
  br label %490

441:                                              ; preds = %415, %339
  %442 = phi i32 [ %424, %415 ], [ %348, %339 ]
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %441
  %445 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 8, !tbaa !70
  br label %486

446:                                              ; preds = %441
  %447 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %442) #8
  %448 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %448) #9
  %449 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %449, align 8, !tbaa !43
  %450 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %450, align 8, !tbaa !45
  %451 = call i8* @malloc(i64 1024) #7
  %452 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %451, i8** %452, align 8, !tbaa !46
  %453 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %451, i8** %453, align 8, !tbaa !47
  %454 = icmp eq i8* %451, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %446
  %456 = getelementptr inbounds i8, i8* %451, i64 1023
  store i8 0, i8* %456, align 1, !tbaa !35
  br label %457

457:                                              ; preds = %446, %455
  %458 = phi i8* [ %456, %455 ], [ null, %446 ]
  %459 = call i8* @halide_string_to_string(i8* %451, i8* %458, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @"??_C@_0BN@NALPKMPM@CL?3?5buffer?5transfer?5failed?3?5?$AA@", i64 0, i64 0)) #7
  %460 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %442) #8
  %461 = icmp eq i8* %460, null
  br i1 %461, label %462, label %464

462:                                              ; preds = %457
  %463 = call i8* @halide_string_to_string(i8* %459, i8* %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %466

464:                                              ; preds = %457
  %465 = call i8* @halide_string_to_string(i8* %459, i8* %458, i8* nonnull %460) #7
  br label %466

466:                                              ; preds = %462, %464
  %467 = phi i8* [ %465, %464 ], [ %463, %462 ]
  %468 = load i8*, i8** %452, align 8, !tbaa !46
  %469 = icmp eq i8* %468, null
  %470 = load i8*, i8** %449, align 8, !tbaa !43
  br i1 %469, label %471, label %472

471:                                              ; preds = %466
  call void @halide_error(i8* %470, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %480

472:                                              ; preds = %466
  %473 = ptrtoint i8* %467 to i64
  %474 = ptrtoint i8* %468 to i64
  %475 = sub i64 1, %474
  %476 = add i64 %475, %473
  %477 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %470, i8* nonnull %468, i64 %476) #7
  %478 = load i8*, i8** %452, align 8, !tbaa !46
  %479 = load i8*, i8** %449, align 8, !tbaa !43
  call void @halide_error(i8* %479, i8* %478) #7
  br label %480

480:                                              ; preds = %472, %471
  %481 = load i8, i8* %450, align 8, !tbaa !45, !range !40
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %485, label %483

483:                                              ; preds = %480
  %484 = load i8*, i8** %452, align 8, !tbaa !46
  call void @free(i8* %484) #7
  br label %485

485:                                              ; preds = %480, %483
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %448) #9
  br label %490

486:                                              ; preds = %444, %425
  %487 = phi %struct._cl_command_queue* [ %445, %444 ], [ %68, %425 ]
  %488 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @"?clFinish@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_command_queue@@@ZEA", align 8, !tbaa !36
  %489 = call i32 %488(%struct._cl_command_queue* %487) #7
  br label %490

490:                                              ; preds = %413, %337, %84, %85, %486, %485, %440, %272
  %491 = phi i32 [ 0, %486 ], [ %442, %485 ], [ -39, %440 ], [ -39, %272 ], [ %65, %85 ], [ -1, %84 ], [ -39, %337 ], [ -39, %413 ]
  %492 = load i8*, i8** %57, align 8, !tbaa !67
  %493 = call i32 @halide_release_cl_context(i8* %492) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %56) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %55) #9
  br label %494

494:                                              ; preds = %30, %29, %490
  %495 = phi i32 [ %491, %490 ], [ -42, %29 ], [ -42, %30 ]
  ret i32 %495
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
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !21
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@FPIDEFFE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  %10 = load i64, i64* %6, align 8, !tbaa !21
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %3, %9
  %13 = tail call i8* @malloc(i64 16) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %82, label %15

15:                                               ; preds = %12
  %16 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9
  store i32 0, i32* %4, align 4, !tbaa !42
  %17 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @"?clGetMemObjectInfo@OpenCL@Internal@Runtime@Halide@@3P6AHPEAU_cl_mem@@IKPEAXPEAK@ZEA", align 8, !tbaa !36
  %18 = inttoptr i64 %2 to %struct._cl_mem*
  %19 = call i32 %17(%struct._cl_mem* %18, i32 4352, i64 4, i8* nonnull %16, i64* null) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4, !tbaa !42
  switch i32 %22, label %23 [
    i32 4340, label %71
    i32 4338, label %71
    i32 4337, label %71
  ]

23:                                               ; preds = %21, %15
  %24 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #9
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %25, align 8, !tbaa !43
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %26, align 8, !tbaa !45
  %27 = call i8* @malloc(i64 1024) #7
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %27, i8** %28, align 8, !tbaa !46
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %30 = icmp eq i8* %27, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, i8* %27, i64 1023
  store i8 0, i8* %32, align 1, !tbaa !35
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi i8* [ %32, %31 ], [ null, %23 ]
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = call i8* @halide_string_to_string(i8* %27, i8* %34, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @"??_C@_0ED@LDGMHNKH@CL?3?5Bad?5device?5pointer?5passed?5to@", i64 0, i64 0)) #7
  %37 = inttoptr i64 %2 to i8*
  %38 = call i8* @halide_pointer_to_string(i8* %36, i8* %34, i8* %37) #7
  %39 = call i8* @halide_string_to_string(i8* %38, i8* %34, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@OBAIKJCO@?3?5clGetMemObjectInfo?5returned?5?$AA@", i64 0, i64 0)) #7
  store i8* %39, i8** %29, align 8, !tbaa !47
  %40 = call i8* @"?get_opencl_error_name@OpenCL@Internal@Runtime@Halide@@YAPEBDH@Z"(i32 %19) #8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i8* @halide_string_to_string(i8* %39, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7
  br label %46

44:                                               ; preds = %33
  %45 = call i8* @halide_string_to_string(i8* %39, i8* %34, i8* nonnull %40) #7
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi i8* [ %45, %44 ], [ %43, %42 ]
  %48 = load i8*, i8** %35, align 8, !tbaa !48
  %49 = call i8* @halide_string_to_string(i8* %47, i8* %48, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@NDNKNKHF@?5with?5type?5?$AA@", i64 0, i64 0)) #7
  %50 = load i32, i32* %4, align 4, !tbaa !42
  %51 = sext i32 %50 to i64
  %52 = call i8* @halide_int64_to_string(i8* %49, i8* %48, i64 %51, i32 1) #7
  %53 = load i8*, i8** %28, align 8, !tbaa !46
  %54 = icmp eq i8* %53, null
  %55 = load i8*, i8** %25, align 8, !tbaa !43
  br i1 %54, label %56, label %57

56:                                               ; preds = %46
  call void @halide_error(i8* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %65

57:                                               ; preds = %46
  %58 = ptrtoint i8* %52 to i64
  %59 = ptrtoint i8* %53 to i64
  %60 = add i64 %58, 1
  %61 = sub i64 %60, %59
  %62 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %55, i8* nonnull %53, i64 %61) #7
  %63 = load i8*, i8** %28, align 8, !tbaa !46
  %64 = load i8*, i8** %25, align 8, !tbaa !43
  call void @halide_error(i8* %64, i8* %63) #7
  br label %65

65:                                               ; preds = %57, %56
  %66 = load i8, i8* %26, align 8, !tbaa !45, !range !40
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %28, align 8, !tbaa !46
  call void @free(i8* %69) #7
  br label %70

70:                                               ; preds = %65, %68
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #9
  br label %80

71:                                               ; preds = %21, %21, %21
  %72 = getelementptr inbounds i8, i8* %13, i64 8
  %73 = bitcast i8* %72 to %struct._cl_mem**
  store %struct._cl_mem* %18, %struct._cl_mem** %73, align 8, !tbaa !51
  %74 = bitcast i8* %13 to i64*
  store i64 0, i64* %74, align 8, !tbaa !53
  %75 = ptrtoint i8* %13 to i64
  store i64 %75, i64* %6, align 8, !tbaa !21
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %76, align 8, !tbaa !72
  %77 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !73
  %78 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %77, i64 0, i32 0
  %79 = load void ()*, void ()** %78, align 8, !tbaa !93
  call void %79() #7
  br label %80

80:                                               ; preds = %71, %70
  %81 = phi i32 [ -32, %70 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %82

82:                                               ; preds = %80, %12, %9
  %83 = phi i32 [ -2, %9 ], [ %81, %80 ], [ -11, %12 ]
  ret i32 %83
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !23
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !24
  %12 = sext i32 %5 to i64
  br label %15

13:                                               ; preds = %34
  %14 = icmp slt i64 %40, %12
  br i1 %14, label %15, label %55, !llvm.loop !119

15:                                               ; preds = %7, %13
  %16 = phi i64 [ 0, %7 ], [ %40, %13 ]
  %17 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !27
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 0
  %20 = load i32, i32* %19, align 4, !tbaa !27
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 1
  %24 = load i32, i32* %23, align 4, !tbaa !30
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !30
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 2
  %30 = load i32, i32* %29, align 4, !tbaa !25
  %31 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !25
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 3
  %36 = load i32, i32* %35, align 4, !tbaa !120
  %37 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 3
  %38 = load i32, i32* %37, align 4, !tbaa !120
  %39 = icmp eq i32 %36, %38
  %40 = add nuw nsw i64 %16, 1
  br i1 %39, label %13, label %41

41:                                               ; preds = %15, %22, %28, %34
  %42 = tail call i8* @malloc(i64 1024) #7
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call i8* @halide_string_to_string(i8* %42, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, i8* %42, i64 1023
  store i8 0, i8* %47, align 1, !tbaa !35
  %48 = tail call i8* @halide_string_to_string(i8* nonnull %42, i8* nonnull %47, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i64 0, i64 0)) #7
  %49 = ptrtoint i8* %48 to i64
  %50 = ptrtoint i8* %42 to i64
  %51 = add i64 %49, 1
  %52 = sub i64 %51, %50
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %42, i64 %52) #7
  tail call void @halide_error(i8* %0, i8* nonnull %42) #7
  br label %54

54:                                               ; preds = %46, %44
  tail call void @free(i8* %42) #7
  br label %55

55:                                               ; preds = %13, %3, %54
  %56 = phi i32 [ -40, %54 ], [ 0, %3 ], [ 0, %13 ]
  ret i32 %56
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  %6 = tail call i8* @malloc(i64 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@", i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !35
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @"??_C@_0CM@JIBBOEGP@slice?5not?5supported?5on?5opencl?5im@", i64 0, i64 0)) #7
  %13 = ptrtoint i8* %12 to i64
  %14 = ptrtoint i8* %6 to i64
  %15 = add i64 %13, 1
  %16 = sub i64 %15, %14
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %16) #7
  tail call void @halide_error(i8* %0, i8* nonnull %6) #7
  br label %18

18:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7
  ret i32 -40
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_opencl_image_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i64 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !35
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @"??_C@_0CL@FEFCGAPD@crop?5not?5supported?5on?5opencl?5ima@", i64 0, i64 0)) #7
  %10 = ptrtoint i8* %9 to i64
  %11 = ptrtoint i8* %3 to i64
  %12 = add i64 %10, 1
  %13 = sub i64 %12, %11
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -40
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_opencl_image_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?opencl_image_device_interface@OpenCL@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @"?insert@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !80
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #8
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !80
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !88
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #8
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !88
  %25 = load i32, i32* %3, align 8, !tbaa !80
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !88
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i64 0, i32 2
  %33 = load i32, i32* %32, align 8, !tbaa !83
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i64 0, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 8, !tbaa !85
  %36 = ptrtoint %struct._cl_context* %35 to i64
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
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %47, align 8, !tbaa !81
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !121

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !83
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !122
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @"?resize_table@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !80
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %1
  %8 = shl nuw i32 1, %4
  %9 = sext i32 %7 to i64
  %10 = mul nsw i64 %9, 24
  %11 = tail call i8* @malloc(i64 %10) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %6
  %14 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %10) #7
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %15, align 8, !tbaa !81
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !81
  store i32 %1, i32* %3, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !88
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
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %16, i64 %28, i32 2
  %30 = load i32, i32* %29, align 8, !tbaa !83
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %16, i64 %28
  %34 = tail call zeroext i1 @"?insert@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #8
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !123

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #7
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak dso_local i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn writeonly
define internal void @_GLOBAL__sub_I_windows_opencl.cpp() #6 {
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 1), align 8, !tbaa !80
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 2), align 8, !tbaa !81
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 3), align 8, !tbaa !88
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@OpenCL@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@24@A", i64 0, i32 4), align 4, !tbaa !77
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !4, i64 0}
!40 = !{i8 0, i8 2}
!41 = distinct !{!41, !7}
!42 = !{!20, !20, i64 0}
!43 = !{!44, !16, i64 24}
!44 = !{!"?AV?$Printer@$00$0EAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !39, i64 32, !4, i64 33}
!45 = !{!44, !39, i64 32}
!46 = !{!44, !16, i64 0}
!47 = !{!44, !16, i64 8}
!48 = !{!44, !16, i64 16}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = !{!52, !16, i64 8}
!52 = !{!"?AUdevice_handle@OpenCL@Internal@Runtime@Halide@@", !3, i64 0, !16, i64 8}
!53 = !{!52, !3, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !4, i64 0}
!56 = !{!57, !16, i64 24}
!57 = !{!"?AV?$Printer@$01$0EAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !39, i64 32, !4, i64 33}
!58 = !{!57, !39, i64 32}
!59 = !{!57, !16, i64 0}
!60 = !{!57, !16, i64 8}
!61 = !{!62, !16, i64 24}
!62 = !{!"?AV?$Printer@$00$0EAAA@@?A0xEE9BEA30@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !39, i64 32, !4, i64 33}
!63 = !{!62, !39, i64 32}
!64 = !{!62, !16, i64 0}
!65 = !{!62, !16, i64 8}
!66 = !{!62, !16, i64 16}
!67 = !{!68, !16, i64 0}
!68 = !{!"?AVClContext@OpenCL@Internal@Runtime@Halide@@", !16, i64 0, !16, i64 8, !16, i64 16, !20, i64 24}
!69 = !{!68, !16, i64 8}
!70 = !{!68, !16, i64 16}
!71 = !{!68, !20, i64 24}
!72 = !{!15, !16, i64 8}
!73 = !{!74, !16, i64 120}
!74 = !{!"?AUhalide_device_interface_t@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!75 = !{!76, !16, i64 8}
!76 = !{!"?AUhalide_device_interface_impl_t@@", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!77 = !{!78, !20, i64 28}
!78 = !{!"?AV?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@", !79, i64 0, !20, i64 8, !16, i64 16, !20, i64 24, !20, i64 28}
!79 = !{!"?AUhalide_mutex@@", !4, i64 0}
!80 = !{!78, !20, i64 8}
!81 = !{!78, !16, i64 16}
!82 = distinct !{!82, !7}
!83 = !{!84, !20, i64 16}
!84 = !{!"?AUCachedCompilation@?$GPUCompilationCache@PEAU_cl_context@@PEAU_cl_program@@@Internal@Halide@@", !16, i64 0, !16, i64 8, !20, i64 16, !20, i64 20}
!85 = !{!84, !16, i64 0}
!86 = !{!84, !20, i64 20}
!87 = !{!84, !16, i64 8}
!88 = !{!78, !20, i64 24}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, !7}
!91 = distinct !{!91, !7}
!92 = distinct !{!92, !7}
!93 = !{!76, !16, i64 0}
!94 = distinct !{!94, !7}
!95 = !{!15, !3, i64 24}
!96 = distinct !{!96, !7}
!97 = !{!98, !55, i64 0}
!98 = !{!"?AU_cl_buffer_region@@", !55, i64 0, !55, i64 8}
!99 = !{!98, !55, i64 8}
!100 = distinct !{!100, !7}
!101 = distinct !{!101, !7}
!102 = distinct !{!102, !7}
!103 = distinct !{!103, !7}
!104 = distinct !{!104, !7}
!105 = !{!106, !20, i64 4}
!106 = !{!"?AU_cl_image_format@@", !20, i64 0, !20, i64 4}
!107 = !{!106, !20, i64 0}
!108 = !{!109, !20, i64 0}
!109 = !{!"?AU_cl_image_desc@@", !20, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !20, i64 56, !20, i64 60, !16, i64 64}
!110 = !{!109, !55, i64 8}
!111 = !{!109, !55, i64 16}
!112 = !{!109, !55, i64 24}
!113 = !{!109, !55, i64 32}
!114 = !{!109, !55, i64 40}
!115 = !{!109, !55, i64 48}
!116 = !{!109, !20, i64 56}
!117 = !{!109, !20, i64 60}
!118 = !{!109, !16, i64 64}
!119 = distinct !{!119, !7}
!120 = !{!26, !20, i64 12}
!121 = distinct !{!121, !7}
!122 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 4, !42, i64 20, i64 4, !42}
!123 = distinct !{!123, !7}
