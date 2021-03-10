; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::OpenCL::device_handle" = type { i64, %struct._cl_mem* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::OpenCL::ClContext" = type { i8*, %struct._cl_context*, %struct._cl_command_queue*, i32 }
%struct._cl_buffer_region = type { i32, i32 }

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi = comdat any

$_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = comdat any

@_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE = weak local_unnamed_addr global i32 (i32, %struct._cl_platform_id**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE = weak local_unnamed_addr global i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE = weak local_unnamed_addr global i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE = weak local_unnamed_addr global i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL18clCreateSubDevicesE = weak local_unnamed_addr global i32 (%struct._cl_device_id*, i32*, i32, %struct._cl_device_id**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clRetainDeviceE = weak local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clReleaseDeviceE = weak local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE = weak local_unnamed_addr global %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL23clCreateContextFromTypeE = weak local_unnamed_addr global %struct._cl_context* (i32*, i64, void (i8*, i8*, i32, i8*)*, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clRetainContextE = weak local_unnamed_addr global i32 (%struct._cl_context*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE = weak local_unnamed_addr global i32 (%struct._cl_context*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE = weak local_unnamed_addr global i32 (%struct._cl_context*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE = weak local_unnamed_addr global %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL20clRetainCommandQueueE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL21clGetCommandQueueInfoE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL26clGetSupportedImageFormatsE = weak local_unnamed_addr global i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE = weak local_unnamed_addr global i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clGetImageInfoE = weak local_unnamed_addr global i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL32clSetMemObjectDestructorCallbackE = weak local_unnamed_addr global i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE = weak local_unnamed_addr global %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clRetainProgramE = weak local_unnamed_addr global i32 (%struct._cl_program*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE = weak global i32 (%struct._cl_program*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE = weak local_unnamed_addr global i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE = weak local_unnamed_addr global i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE = weak local_unnamed_addr global %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clRetainKernelE = weak local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE = weak local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE = weak local_unnamed_addr global i32 (%struct._cl_kernel*, i32, i32, i8*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL7clFlushE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL8clFinishE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueReadBufferRectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL24clEnqueueWriteBufferRectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueMapBufferE = weak local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32, i32, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL17clEnqueueMapImageE = weak local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32*, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueUnmapMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE = weak local_unnamed_addr global i8* null, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"libOpenCL.so\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"/System/Library/Frameworks/OpenCL.framework/OpenCL\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:67 Assert failed: clCreateContext == nullptr\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"clGetPlatformIDs\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"clGetPlatformInfo\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"clGetDeviceIDs\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"clGetDeviceInfo\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"clCreateSubDevices\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"clRetainDevice\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"clReleaseDevice\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"clCreateContext\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"clCreateContextFromType\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"clRetainContext\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"clReleaseContext\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"clGetContextInfo\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"clCreateCommandQueue\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"clRetainCommandQueue\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"clReleaseCommandQueue\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"clGetCommandQueueInfo\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"clCreateBuffer\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"clCreateSubBuffer\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"clCreateImage\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"clRetainMemObject\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"clReleaseMemObject\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"clGetSupportedImageFormats\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"clGetMemObjectInfo\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"clGetImageInfo\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"clSetMemObjectDestructorCallback\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"clCreateProgramWithSource\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"clRetainProgram\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"clReleaseProgram\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"clBuildProgram\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"clGetProgramBuildInfo\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"clCreateKernel\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"clRetainKernel\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"clReleaseKernel\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"clSetKernelArg\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"clFlush\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"clFinish\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"clEnqueueReadBuffer\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"clEnqueueReadBufferRect\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"clEnqueueWriteBuffer\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"clEnqueueWriteBufferRect\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"clEnqueueCopyBuffer\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"clEnqueueReadImage\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"clEnqueueWriteImage\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"clEnqueueMapBuffer\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"clEnqueueMapImage\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"clEnqueueUnmapMemObject\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"clEnqueueNDRangeKernel\00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL7contextE = weak global %struct._cl_context* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL13command_queueE = weak global %struct._cl_command_queue* null, align 4
@_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE = weak global [256 x i8] zeroinitializer, align 1
@_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL25platform_name_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL11device_typeE = weak global [256 x i8] zeroinitializer, align 1
@_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL23device_type_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE = weak global [1024 x i8] zeroinitializer, align 1
@_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenCL25build_options_initializedE = weak local_unnamed_addr global i8 0, align 1
@.str.55 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:215 Assert failed: ctx != nullptr\0A\00", align 1
@.str.56 = private unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:216 Assert failed: q != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4
@_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 8
@.str.60 = private unnamed_addr constant [24 x i8] c"CL: Bad device pointer \00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c": clGetMemObjectInfo returned \00", align 1
@.str.66 = private unnamed_addr constant [169 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:328 Assert failed: real_size >= (size + offset) && \22Validating pointer with insufficient size\22\0A\00", align 1
@.str.68 = private unnamed_addr constant [127 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:339 Assert failed: ctx != nullptr && *ctx == nullptr\0A\00", align 1
@.str.69 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:340 Assert failed: q != nullptr && *q == nullptr\0A\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"CL: clGetPlatformIDs not found\0A\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"CL: clGetPlatformIDs failed: \00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"CL: Failed to find platform\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"acc\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"CL: clGetDeviceIDs failed: \00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"CL: Failed to get device: \00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"CL: clCreateContext failed: \00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"CL: clCreateCommandQueue failed: \00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"CL: clGetContextInfo(CL_CONTEXT_DEVICES) failed: \00", align 1
@.str.92 = private unnamed_addr constant [66 x i8] c"CL: clGetDeviceInfo (CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE) failed: \00", align 1
@.str.93 = private unnamed_addr constant [59 x i8] c"CL: clGetDeviceInfo (CL_DEVICE_MAX_CONSTANT_ARGS) failed: \00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"-D MAX_CONSTANT_BUFFER_SIZE=\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c" -D MAX_CONSTANT_ARGS=\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"CL: clCreateProgramWithSource failed: \00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"CL: clBuildProgram failed: \00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"\0ABuild Log:\0A\00", align 1
@.str.101 = private unnamed_addr constant [57 x i8] c"clGetProgramBuildInfo failed (Printer buffer too small?)\00", align 1
@.str.102 = private unnamed_addr constant [213 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:653 Assert failed: (((device_handle *)buf->device)->offset == 0) && \22halide_opencl_device_free on buffer obtained from halide_device_crop\22\0A\00", align 1
@.str.106 = private unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:668 Assert failed: validate_device_pointer(user_context, buf)\0A\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"CL: clGetContextInfo failed: \00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"CL: clGetDeviceInfo failed: \00", align 1
@.str.115 = private unnamed_addr constant [112 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:762 Assert failed: program != nullptr\0A\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"CL: clFinish failed: \00", align 1
@.str.120 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:825 Assert failed: err == CL_SUCCESS\0A\00", align 1
@.str.122 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:833 Assert failed: err == CL_SUCCESS\0A\00", align 1
@.str.124 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:838 Assert failed: err == CL_SUCCESS\0A\00", align 1
@.str.126 = private unnamed_addr constant [103 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:859 Assert failed: size != 0\0A\00", align 1
@.str.127 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:861 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", align 1
@.str.128 = private unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:866 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"CL: clCreateBuffer failed: \00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal6OpenCL28opencl_device_interface_implE }, align 4
@.str.135 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:903 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", align 1
@.str.136 = private unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"CL: buffer copy failed: \00", align 1
@.str.146 = private unnamed_addr constant [177 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:974 Assert failed: dst_device_interface == nullptr || dst_device_interface == &opencl_device_interface\0A\00", align 1
@.str.147 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:978 Assert failed: dst_device_interface == &opencl_device_interface\0A\00", align 1
@.str.149 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:989 Assert failed: to_host || dst->device\0A\00", align 1
@.str.159 = private unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1069 Assert failed: state_ptr\0A\00", align 1
@.str.160 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1073 Assert failed: found && program != nullptr\0A\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"CL: clCreateKernel \00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c" failed: \00", align 1
@.str.167 = private unnamed_addr constant [127 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1125 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"CL: clSetKernelArg failed: \00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"CL: clSetKernelArg failed \00", align 1
@.str.173 = private unnamed_addr constant [36 x i8] c"CL: clEnqueueNDRangeKernel failed: \00", align 1
@.str.176 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1216 Assert failed: buf->device == 0\0A\00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal6OpenCL34opencl_image_device_interface_implE }, align 4
@.str.177 = private unnamed_addr constant [203 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1246 Assert failed: buf->device_interface == &opencl_device_interface || buf->device_interface == &opencl_image_device_interface\0A\00", align 1
@.str.178 = private unnamed_addr constant [203 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1259 Assert failed: buf->device_interface == &opencl_device_interface || buf->device_interface == &opencl_image_device_interface\0A\00", align 1
@.str.179 = private unnamed_addr constant [144 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1267 Assert failed: buf->device_interface == &opencl_device_interface\0A\00", align 1
@.str.180 = private unnamed_addr constant [50 x i8] c"CL: malloc failed making device handle for crop.\0A\00", align 1
@.str.182 = private unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1336 Assert failed: validate_device_pointer(user_context, buf)\0A\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"CL_SUCCESS\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"CL_DEVICE_NOT_FOUND\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"CL_DEVICE_NOT_AVAILABLE\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"CL_COMPILER_NOT_AVAILABLE\00", align 1
@.str.187 = private unnamed_addr constant [33 x i8] c"CL_MEM_OBJECT_ALLOCATION_FAILURE\00", align 1
@.str.188 = private unnamed_addr constant [20 x i8] c"CL_OUT_OF_RESOURCES\00", align 1
@.str.189 = private unnamed_addr constant [22 x i8] c"CL_OUT_OF_HOST_MEMORY\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"CL_PROFILING_INFO_NOT_AVAILABLE\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"CL_MEM_COPY_OVERLAP\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"CL_IMAGE_FORMAT_MISMATCH\00", align 1
@.str.193 = private unnamed_addr constant [30 x i8] c"CL_IMAGE_FORMAT_NOT_SUPPORTED\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"CL_BUILD_PROGRAM_FAILURE\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"CL_MAP_FAILURE\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"CL_MISALIGNED_SUB_BUFFER_OFFSET\00", align 1
@.str.197 = private unnamed_addr constant [45 x i8] c"CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST\00", align 1
@.str.198 = private unnamed_addr constant [27 x i8] c"CL_COMPILE_PROGRAM_FAILURE\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"CL_LINKER_NOT_AVAILABLE\00", align 1
@.str.200 = private unnamed_addr constant [24 x i8] c"CL_LINK_PROGRAM_FAILURE\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"CL_DEVICE_PARTITION_FAILED\00", align 1
@.str.202 = private unnamed_addr constant [33 x i8] c"CL_KERNEL_ARG_INFO_NOT_AVAILABLE\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"CL_INVALID_VALUE\00", align 1
@.str.204 = private unnamed_addr constant [23 x i8] c"CL_INVALID_DEVICE_TYPE\00", align 1
@.str.205 = private unnamed_addr constant [20 x i8] c"CL_INVALID_PLATFORM\00", align 1
@.str.206 = private unnamed_addr constant [18 x i8] c"CL_INVALID_DEVICE\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"CL_INVALID_CONTEXT\00", align 1
@.str.208 = private unnamed_addr constant [28 x i8] c"CL_INVALID_QUEUE_PROPERTIES\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"CL_INVALID_COMMAND_QUEUE\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"CL_INVALID_HOST_PTR\00", align 1
@.str.211 = private unnamed_addr constant [22 x i8] c"CL_INVALID_MEM_OBJECT\00", align 1
@.str.212 = private unnamed_addr constant [35 x i8] c"CL_INVALID_IMAGE_FORMAT_DESCRIPTOR\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"CL_INVALID_IMAGE_SIZE\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c"CL_INVALID_SAMPLER\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"CL_INVALID_BINARY\00", align 1
@.str.216 = private unnamed_addr constant [25 x i8] c"CL_INVALID_BUILD_OPTIONS\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"CL_INVALID_PROGRAM\00", align 1
@.str.218 = private unnamed_addr constant [30 x i8] c"CL_INVALID_PROGRAM_EXECUTABLE\00", align 1
@.str.219 = private unnamed_addr constant [23 x i8] c"CL_INVALID_KERNEL_NAME\00", align 1
@.str.220 = private unnamed_addr constant [29 x i8] c"CL_INVALID_KERNEL_DEFINITION\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"CL_INVALID_KERNEL\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"CL_INVALID_ARG_INDEX\00", align 1
@.str.223 = private unnamed_addr constant [21 x i8] c"CL_INVALID_ARG_VALUE\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"CL_INVALID_ARG_SIZE\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"CL_INVALID_KERNEL_ARGS\00", align 1
@.str.226 = private unnamed_addr constant [26 x i8] c"CL_INVALID_WORK_DIMENSION\00", align 1
@.str.227 = private unnamed_addr constant [27 x i8] c"CL_INVALID_WORK_GROUP_SIZE\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"CL_INVALID_WORK_ITEM_SIZE\00", align 1
@.str.229 = private unnamed_addr constant [25 x i8] c"CL_INVALID_GLOBAL_OFFSET\00", align 1
@.str.230 = private unnamed_addr constant [27 x i8] c"CL_INVALID_EVENT_WAIT_LIST\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"CL_INVALID_EVENT\00", align 1
@.str.232 = private unnamed_addr constant [21 x i8] c"CL_INVALID_OPERATION\00", align 1
@.str.233 = private unnamed_addr constant [21 x i8] c"CL_INVALID_GL_OBJECT\00", align 1
@.str.234 = private unnamed_addr constant [23 x i8] c"CL_INVALID_BUFFER_SIZE\00", align 1
@.str.235 = private unnamed_addr constant [21 x i8] c"CL_INVALID_MIP_LEVEL\00", align 1
@.str.236 = private unnamed_addr constant [28 x i8] c"CL_INVALID_GLOBAL_WORK_SIZE\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"CL_INVALID_PROPERTY\00", align 1
@.str.238 = private unnamed_addr constant [28 x i8] c"CL_INVALID_IMAGE_DESCRIPTOR\00", align 1
@.str.239 = private unnamed_addr constant [28 x i8] c"CL_INVALID_COMPILER_OPTIONS\00", align 1
@.str.240 = private unnamed_addr constant [26 x i8] c"CL_INVALID_LINKER_OPTIONS\00", align 1
@.str.241 = private unnamed_addr constant [34 x i8] c"CL_INVALID_DEVICE_PARTITION_COUNT\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"<Unknown error>\00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL28opencl_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 4
@.str.244 = private unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1552 Assert failed: size != 0\0A\00", align 1
@.str.245 = private unnamed_addr constant [143 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1554 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", align 1
@.str.246 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1559 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.247 = private unnamed_addr constant [47 x i8] c"Unhandled datatype for opencl texture object: \00", align 1
@.str.249 = private unnamed_addr constant [46 x i8] c"image buffer must be dense on inner dimension\00", align 1
@.str.250 = private unnamed_addr constant [38 x i8] c"image buffer must have 1-3 dimensions\00", align 1
@.str.253 = private unnamed_addr constant [27 x i8] c"CL: clCreateImage failed: \00", align 1
@.str.254 = private unnamed_addr constant [143 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1671 Assert failed: validate_device_pointer(user_context, buf, size)\0A\00", align 1
@.str.256 = private unnamed_addr constant [184 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1690 Assert failed: dst_device_interface == nullptr || dst_device_interface == &opencl_image_device_interface\0A\00", align 1
@.str.257 = private unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1694 Assert failed: dst_device_interface == &opencl_image_device_interface\0A\00", align 1
@.str.259 = private unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1705 Assert failed: to_host || dst->device\0A\00", align 1
@.str.260 = private unnamed_addr constant [45 x i8] c"image buffer copies must be for whole buffer\00", align 1
@.str.261 = private unnamed_addr constant [53 x i8] c"image buffer copies must be dense on inner dimension\00", align 1
@.str.262 = private unnamed_addr constant [38 x i8] c"image to image copies not implemented\00", align 1
@.str.263 = private unnamed_addr constant [29 x i8] c"CL: buffer transfer failed: \00", align 1
@.str.264 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp:1818 Assert failed: buf->device == 0\0A\00", align 1
@.str.265 = private unnamed_addr constant [67 x i8] c"CL: Bad device pointer passed to halide_opencl_image_wrap_cl_mem: \00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c" with type \00", align 1
@.str.267 = private unnamed_addr constant [43 x i8] c"crop not supported on opencl image objects\00", align 1
@.str.268 = private unnamed_addr constant [44 x i8] c"slice not supported on opencl image objects\00", align 1
@_ZN6Halide7Runtime8Internal6OpenCL34opencl_image_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_image_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_image_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_image_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_image_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 4
@.str.269 = private unnamed_addr constant [21 x i8] c"HL_OCL_PLATFORM_NAME\00", align 1
@.str.270 = private unnamed_addr constant [19 x i8] c"HL_OCL_DEVICE_TYPE\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"HL_OCL_BUILD_OPTIONS\00", align 1
@.str.272 = private unnamed_addr constant [34 x i8] c"OpenCL: null context or cmd_queue\00", align 1
@.str.273 = private unnamed_addr constant [23 x i8] c"OpenCL API not found: \00", align 1
@.str.274 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.279 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", align 1
@.str.280 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", align 1
@.str.281 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_opencl.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_opencl_cleanup, i8* null }]

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
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #7
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #8
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
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_opencl_get_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 4, !tbaa !37
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #7
  store i8* %7, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 4, !tbaa !37
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %10, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 4, !tbaa !37
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %7, %6 ], [ %10, %9 ]
  %13 = tail call i8* @halide_get_library_symbol(i8* %12, i8* %1) #7
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i8* [ %13, %11 ], [ %4, %2 ]
  ret i8* %15
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) local_unnamed_addr #4 {
  %2 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %3 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i32 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #7
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %6, i8** bitcast (i32 (i32, %struct._cl_platform_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE to i8**), align 4, !tbaa !37
  %28 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #7
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = tail call i8* @malloc(i32 1024) #7
  %32 = icmp eq i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %34, align 1, !tbaa !36
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8* [ %34, %33 ], [ null, %30 ]
  %37 = tail call i8* @halide_string_to_string(i8* %31, i8* %36, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %36, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #7
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %36, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %32, label %40, label %41

40:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %28, i8** bitcast (i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE to i8**), align 4, !tbaa !37
  %50 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = tail call i8* @malloc(i32 1024) #7
  %54 = icmp eq i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023
  store i8 0, i8* %56, align 1, !tbaa !36
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i8* [ %56, %55 ], [ null, %52 ]
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %58, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %54, label %62, label %63

62:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %50, i8** bitcast (i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE to i8**), align 4, !tbaa !37
  %72 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = tail call i8* @malloc(i32 1024) #7
  %76 = icmp eq i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %78, align 1, !tbaa !36
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %78, %77 ], [ null, %74 ]
  %81 = tail call i8* @halide_string_to_string(i8* %75, i8* %80, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #7
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %76, label %84, label %85

84:                                               ; preds = %79
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %72, i8** bitcast (i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE to i8**), align 4, !tbaa !37
  %94 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  store i8* %94, i8** bitcast (i32 (%struct._cl_device_id*, i32*, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clCreateSubDevicesE to i8**), align 4, !tbaa !37
  %95 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #7
  store i8* %95, i8** bitcast (i32 (%struct._cl_device_id*)** @_ZN6Halide7Runtime8Internal6OpenCL14clRetainDeviceE to i8**), align 4, !tbaa !37
  %96 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  store i8* %96, i8** bitcast (i32 (%struct._cl_device_id*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseDeviceE to i8**), align 4, !tbaa !37
  %97 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #7
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = tail call i8* @malloc(i32 1024) #7
  %101 = icmp eq i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, i8* %100, i32 1023
  store i8 0, i8* %103, align 1, !tbaa !36
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i8* [ %103, %102 ], [ null, %99 ]
  %106 = tail call i8* @halide_string_to_string(i8* %100, i8* %105, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %107 = tail call i8* @halide_string_to_string(i8* %106, i8* %105, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #7
  %108 = tail call i8* @halide_string_to_string(i8* %107, i8* %105, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %101, label %109, label %110

109:                                              ; preds = %104
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %97, i8** bitcast (%struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE to i8**), align 4, !tbaa !37
  %119 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)) #7
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = tail call i8* @malloc(i32 1024) #7
  %123 = icmp eq i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, i8* %122, i32 1023
  store i8 0, i8* %125, align 1, !tbaa !36
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i8* [ %125, %124 ], [ null, %121 ]
  %128 = tail call i8* @halide_string_to_string(i8* %122, i8* %127, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %129 = tail call i8* @halide_string_to_string(i8* %128, i8* %127, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)) #7
  %130 = tail call i8* @halide_string_to_string(i8* %129, i8* %127, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %123, label %131, label %132

131:                                              ; preds = %126
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %119, i8** bitcast (%struct._cl_context* (i32*, i64, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL23clCreateContextFromTypeE to i8**), align 4, !tbaa !37
  %141 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #7
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = tail call i8* @malloc(i32 1024) #7
  %145 = icmp eq i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %144, i32 1023
  store i8 0, i8* %147, align 1, !tbaa !36
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi i8* [ %147, %146 ], [ null, %143 ]
  %150 = tail call i8* @halide_string_to_string(i8* %144, i8* %149, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %151 = tail call i8* @halide_string_to_string(i8* %150, i8* %149, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #7
  %152 = tail call i8* @halide_string_to_string(i8* %151, i8* %149, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %145, label %153, label %154

153:                                              ; preds = %148
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %141, i8** bitcast (i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL15clRetainContextE to i8**), align 4, !tbaa !37
  %163 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)) #7
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = tail call i8* @malloc(i32 1024) #7
  %167 = icmp eq i8* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, i8* %166, i32 1023
  store i8 0, i8* %169, align 1, !tbaa !36
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i8* [ %169, %168 ], [ null, %165 ]
  %172 = tail call i8* @halide_string_to_string(i8* %166, i8* %171, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %173 = tail call i8* @halide_string_to_string(i8* %172, i8* %171, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)) #7
  %174 = tail call i8* @halide_string_to_string(i8* %173, i8* %171, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %167, label %175, label %176

175:                                              ; preds = %170
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %163, i8** bitcast (i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE to i8**), align 4, !tbaa !37
  %185 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #7
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = tail call i8* @malloc(i32 1024) #7
  %189 = icmp eq i8* %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds i8, i8* %188, i32 1023
  store i8 0, i8* %191, align 1, !tbaa !36
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi i8* [ %191, %190 ], [ null, %187 ]
  %194 = tail call i8* @halide_string_to_string(i8* %188, i8* %193, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %195 = tail call i8* @halide_string_to_string(i8* %194, i8* %193, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #7
  %196 = tail call i8* @halide_string_to_string(i8* %195, i8* %193, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %189, label %197, label %198

197:                                              ; preds = %192
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %185, i8** bitcast (i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE to i8**), align 4, !tbaa !37
  %207 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)) #7
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %228

209:                                              ; preds = %206
  %210 = tail call i8* @malloc(i32 1024) #7
  %211 = icmp eq i8* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds i8, i8* %210, i32 1023
  store i8 0, i8* %213, align 1, !tbaa !36
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i8* [ %213, %212 ], [ null, %209 ]
  %216 = tail call i8* @halide_string_to_string(i8* %210, i8* %215, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %217 = tail call i8* @halide_string_to_string(i8* %216, i8* %215, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)) #7
  %218 = tail call i8* @halide_string_to_string(i8* %217, i8* %215, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %211, label %219, label %220

219:                                              ; preds = %214
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %207, i8** bitcast (%struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE to i8**), align 4, !tbaa !37
  %229 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0)) #7
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %250

231:                                              ; preds = %228
  %232 = tail call i8* @malloc(i32 1024) #7
  %233 = icmp eq i8* %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds i8, i8* %232, i32 1023
  store i8 0, i8* %235, align 1, !tbaa !36
  br label %236

236:                                              ; preds = %234, %231
  %237 = phi i8* [ %235, %234 ], [ null, %231 ]
  %238 = tail call i8* @halide_string_to_string(i8* %232, i8* %237, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %239 = tail call i8* @halide_string_to_string(i8* %238, i8* %237, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0)) #7
  %240 = tail call i8* @halide_string_to_string(i8* %239, i8* %237, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %233, label %241, label %242

241:                                              ; preds = %236
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %229, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL20clRetainCommandQueueE to i8**), align 4, !tbaa !37
  %251 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0)) #7
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %272

253:                                              ; preds = %250
  %254 = tail call i8* @malloc(i32 1024) #7
  %255 = icmp eq i8* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds i8, i8* %254, i32 1023
  store i8 0, i8* %257, align 1, !tbaa !36
  br label %258

258:                                              ; preds = %256, %253
  %259 = phi i8* [ %257, %256 ], [ null, %253 ]
  %260 = tail call i8* @halide_string_to_string(i8* %254, i8* %259, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %261 = tail call i8* @halide_string_to_string(i8* %260, i8* %259, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0)) #7
  %262 = tail call i8* @halide_string_to_string(i8* %261, i8* %259, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %255, label %263, label %264

263:                                              ; preds = %258
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %251, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE to i8**), align 4, !tbaa !37
  %273 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #7
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = tail call i8* @malloc(i32 1024) #7
  %277 = icmp eq i8* %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, i8* %276, i32 1023
  store i8 0, i8* %279, align 1, !tbaa !36
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i8* [ %279, %278 ], [ null, %275 ]
  %282 = tail call i8* @halide_string_to_string(i8* %276, i8* %281, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %283 = tail call i8* @halide_string_to_string(i8* %282, i8* %281, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #7
  %284 = tail call i8* @halide_string_to_string(i8* %283, i8* %281, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %277, label %285, label %286

285:                                              ; preds = %280
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %273, i8** bitcast (i32 (%struct._cl_command_queue*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetCommandQueueInfoE to i8**), align 4, !tbaa !37
  %295 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #7
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = tail call i8* @malloc(i32 1024) #7
  %299 = icmp eq i8* %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds i8, i8* %298, i32 1023
  store i8 0, i8* %301, align 1, !tbaa !36
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi i8* [ %301, %300 ], [ null, %297 ]
  %304 = tail call i8* @halide_string_to_string(i8* %298, i8* %303, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %305 = tail call i8* @halide_string_to_string(i8* %304, i8* %303, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #7
  %306 = tail call i8* @halide_string_to_string(i8* %305, i8* %303, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %299, label %307, label %308

307:                                              ; preds = %302
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %295, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE to i8**), align 4, !tbaa !37
  %317 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #7
  %318 = icmp eq i8* %317, null
  br i1 %318, label %319, label %338

319:                                              ; preds = %316
  %320 = tail call i8* @malloc(i32 1024) #7
  %321 = icmp eq i8* %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds i8, i8* %320, i32 1023
  store i8 0, i8* %323, align 1, !tbaa !36
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i8* [ %323, %322 ], [ null, %319 ]
  %326 = tail call i8* @halide_string_to_string(i8* %320, i8* %325, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %327 = tail call i8* @halide_string_to_string(i8* %326, i8* %325, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #7
  %328 = tail call i8* @halide_string_to_string(i8* %327, i8* %325, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %321, label %329, label %330

329:                                              ; preds = %324
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %317, i8** bitcast (%struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE to i8**), align 4, !tbaa !37
  %339 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #7
  store i8* %339, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE to i8**), align 4, !tbaa !37
  %340 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #7
  %341 = icmp eq i8* %340, null
  br i1 %341, label %342, label %361

342:                                              ; preds = %338
  %343 = tail call i8* @malloc(i32 1024) #7
  %344 = icmp eq i8* %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds i8, i8* %343, i32 1023
  store i8 0, i8* %346, align 1, !tbaa !36
  br label %347

347:                                              ; preds = %345, %342
  %348 = phi i8* [ %346, %345 ], [ null, %342 ]
  %349 = tail call i8* @halide_string_to_string(i8* %343, i8* %348, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %350 = tail call i8* @halide_string_to_string(i8* %349, i8* %348, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #7
  %351 = tail call i8* @halide_string_to_string(i8* %350, i8* %348, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %344, label %352, label %353

352:                                              ; preds = %347
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %340, i8** bitcast (i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE to i8**), align 4, !tbaa !37
  %362 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #7
  %363 = icmp eq i8* %362, null
  br i1 %363, label %364, label %383

364:                                              ; preds = %361
  %365 = tail call i8* @malloc(i32 1024) #7
  %366 = icmp eq i8* %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds i8, i8* %365, i32 1023
  store i8 0, i8* %368, align 1, !tbaa !36
  br label %369

369:                                              ; preds = %367, %364
  %370 = phi i8* [ %368, %367 ], [ null, %364 ]
  %371 = tail call i8* @halide_string_to_string(i8* %365, i8* %370, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %372 = tail call i8* @halide_string_to_string(i8* %371, i8* %370, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #7
  %373 = tail call i8* @halide_string_to_string(i8* %372, i8* %370, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %366, label %374, label %375

374:                                              ; preds = %369
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %362, i8** bitcast (i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE to i8**), align 4, !tbaa !37
  %384 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0)) #7
  %385 = icmp eq i8* %384, null
  br i1 %385, label %386, label %405

386:                                              ; preds = %383
  %387 = tail call i8* @malloc(i32 1024) #7
  %388 = icmp eq i8* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8, i8* %387, i32 1023
  store i8 0, i8* %390, align 1, !tbaa !36
  br label %391

391:                                              ; preds = %389, %386
  %392 = phi i8* [ %390, %389 ], [ null, %386 ]
  %393 = tail call i8* @halide_string_to_string(i8* %387, i8* %392, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %394 = tail call i8* @halide_string_to_string(i8* %393, i8* %392, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0)) #7
  %395 = tail call i8* @halide_string_to_string(i8* %394, i8* %392, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %388, label %396, label %397

396:                                              ; preds = %391
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %384, i8** bitcast (i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL26clGetSupportedImageFormatsE to i8**), align 4, !tbaa !37
  %406 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #7
  %407 = icmp eq i8* %406, null
  br i1 %407, label %408, label %427

408:                                              ; preds = %405
  %409 = tail call i8* @malloc(i32 1024) #7
  %410 = icmp eq i8* %409, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %408
  %412 = getelementptr inbounds i8, i8* %409, i32 1023
  store i8 0, i8* %412, align 1, !tbaa !36
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi i8* [ %412, %411 ], [ null, %408 ]
  %415 = tail call i8* @halide_string_to_string(i8* %409, i8* %414, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %416 = tail call i8* @halide_string_to_string(i8* %415, i8* %414, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #7
  %417 = tail call i8* @halide_string_to_string(i8* %416, i8* %414, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %410, label %418, label %419

418:                                              ; preds = %413
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %406, i8** bitcast (i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE to i8**), align 4, !tbaa !37
  %428 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #7
  %429 = icmp eq i8* %428, null
  br i1 %429, label %430, label %449

430:                                              ; preds = %427
  %431 = tail call i8* @malloc(i32 1024) #7
  %432 = icmp eq i8* %431, null
  br i1 %432, label %435, label %433

433:                                              ; preds = %430
  %434 = getelementptr inbounds i8, i8* %431, i32 1023
  store i8 0, i8* %434, align 1, !tbaa !36
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi i8* [ %434, %433 ], [ null, %430 ]
  %437 = tail call i8* @halide_string_to_string(i8* %431, i8* %436, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %438 = tail call i8* @halide_string_to_string(i8* %437, i8* %436, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #7
  %439 = tail call i8* @halide_string_to_string(i8* %438, i8* %436, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %432, label %440, label %441

440:                                              ; preds = %435
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %428, i8** bitcast (i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetImageInfoE to i8**), align 4, !tbaa !37
  %450 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #7
  %451 = icmp eq i8* %450, null
  br i1 %451, label %452, label %471

452:                                              ; preds = %449
  %453 = tail call i8* @malloc(i32 1024) #7
  %454 = icmp eq i8* %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds i8, i8* %453, i32 1023
  store i8 0, i8* %456, align 1, !tbaa !36
  br label %457

457:                                              ; preds = %455, %452
  %458 = phi i8* [ %456, %455 ], [ null, %452 ]
  %459 = tail call i8* @halide_string_to_string(i8* %453, i8* %458, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %460 = tail call i8* @halide_string_to_string(i8* %459, i8* %458, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #7
  %461 = tail call i8* @halide_string_to_string(i8* %460, i8* %458, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %454, label %462, label %463

462:                                              ; preds = %457
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %450, i8** bitcast (i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL32clSetMemObjectDestructorCallbackE to i8**), align 4, !tbaa !37
  %472 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #7
  %473 = icmp eq i8* %472, null
  br i1 %473, label %474, label %493

474:                                              ; preds = %471
  %475 = tail call i8* @malloc(i32 1024) #7
  %476 = icmp eq i8* %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds i8, i8* %475, i32 1023
  store i8 0, i8* %478, align 1, !tbaa !36
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i8* [ %478, %477 ], [ null, %474 ]
  %481 = tail call i8* @halide_string_to_string(i8* %475, i8* %480, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %482 = tail call i8* @halide_string_to_string(i8* %481, i8* %480, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #7
  %483 = tail call i8* @halide_string_to_string(i8* %482, i8* %480, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %476, label %484, label %485

484:                                              ; preds = %479
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %472, i8** bitcast (%struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE to i8**), align 4, !tbaa !37
  %494 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #7
  %495 = icmp eq i8* %494, null
  br i1 %495, label %496, label %515

496:                                              ; preds = %493
  %497 = tail call i8* @malloc(i32 1024) #7
  %498 = icmp eq i8* %497, null
  br i1 %498, label %501, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds i8, i8* %497, i32 1023
  store i8 0, i8* %500, align 1, !tbaa !36
  br label %501

501:                                              ; preds = %499, %496
  %502 = phi i8* [ %500, %499 ], [ null, %496 ]
  %503 = tail call i8* @halide_string_to_string(i8* %497, i8* %502, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %504 = tail call i8* @halide_string_to_string(i8* %503, i8* %502, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #7
  %505 = tail call i8* @halide_string_to_string(i8* %504, i8* %502, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %498, label %506, label %507

506:                                              ; preds = %501
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %494, i8** bitcast (i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL15clRetainProgramE to i8**), align 4, !tbaa !37
  %516 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #7
  %517 = icmp eq i8* %516, null
  br i1 %517, label %518, label %537

518:                                              ; preds = %515
  %519 = tail call i8* @malloc(i32 1024) #7
  %520 = icmp eq i8* %519, null
  br i1 %520, label %523, label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %519, i32 1023
  store i8 0, i8* %522, align 1, !tbaa !36
  br label %523

523:                                              ; preds = %521, %518
  %524 = phi i8* [ %522, %521 ], [ null, %518 ]
  %525 = tail call i8* @halide_string_to_string(i8* %519, i8* %524, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %526 = tail call i8* @halide_string_to_string(i8* %525, i8* %524, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #7
  %527 = tail call i8* @halide_string_to_string(i8* %526, i8* %524, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %520, label %528, label %529

528:                                              ; preds = %523
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %516, i8** bitcast (i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE to i8**), align 4, !tbaa !37
  %538 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #7
  %539 = icmp eq i8* %538, null
  br i1 %539, label %540, label %559

540:                                              ; preds = %537
  %541 = tail call i8* @malloc(i32 1024) #7
  %542 = icmp eq i8* %541, null
  br i1 %542, label %545, label %543

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, i8* %541, i32 1023
  store i8 0, i8* %544, align 1, !tbaa !36
  br label %545

545:                                              ; preds = %543, %540
  %546 = phi i8* [ %544, %543 ], [ null, %540 ]
  %547 = tail call i8* @halide_string_to_string(i8* %541, i8* %546, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %548 = tail call i8* @halide_string_to_string(i8* %547, i8* %546, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #7
  %549 = tail call i8* @halide_string_to_string(i8* %548, i8* %546, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %542, label %550, label %551

550:                                              ; preds = %545
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %538, i8** bitcast (i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE to i8**), align 4, !tbaa !37
  %560 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #7
  %561 = icmp eq i8* %560, null
  br i1 %561, label %562, label %581

562:                                              ; preds = %559
  %563 = tail call i8* @malloc(i32 1024) #7
  %564 = icmp eq i8* %563, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %562
  %566 = getelementptr inbounds i8, i8* %563, i32 1023
  store i8 0, i8* %566, align 1, !tbaa !36
  br label %567

567:                                              ; preds = %565, %562
  %568 = phi i8* [ %566, %565 ], [ null, %562 ]
  %569 = tail call i8* @halide_string_to_string(i8* %563, i8* %568, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %570 = tail call i8* @halide_string_to_string(i8* %569, i8* %568, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #7
  %571 = tail call i8* @halide_string_to_string(i8* %570, i8* %568, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %564, label %572, label %573

572:                                              ; preds = %567
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %560, i8** bitcast (i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE to i8**), align 4, !tbaa !37
  %582 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0)) #7
  %583 = icmp eq i8* %582, null
  br i1 %583, label %584, label %603

584:                                              ; preds = %581
  %585 = tail call i8* @malloc(i32 1024) #7
  %586 = icmp eq i8* %585, null
  br i1 %586, label %589, label %587

587:                                              ; preds = %584
  %588 = getelementptr inbounds i8, i8* %585, i32 1023
  store i8 0, i8* %588, align 1, !tbaa !36
  br label %589

589:                                              ; preds = %587, %584
  %590 = phi i8* [ %588, %587 ], [ null, %584 ]
  %591 = tail call i8* @halide_string_to_string(i8* %585, i8* %590, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %592 = tail call i8* @halide_string_to_string(i8* %591, i8* %590, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0)) #7
  %593 = tail call i8* @halide_string_to_string(i8* %592, i8* %590, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %586, label %594, label %595

594:                                              ; preds = %589
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %582, i8** bitcast (%struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE to i8**), align 4, !tbaa !37
  %604 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)) #7
  %605 = icmp eq i8* %604, null
  br i1 %605, label %606, label %625

606:                                              ; preds = %603
  %607 = tail call i8* @malloc(i32 1024) #7
  %608 = icmp eq i8* %607, null
  br i1 %608, label %611, label %609

609:                                              ; preds = %606
  %610 = getelementptr inbounds i8, i8* %607, i32 1023
  store i8 0, i8* %610, align 1, !tbaa !36
  br label %611

611:                                              ; preds = %609, %606
  %612 = phi i8* [ %610, %609 ], [ null, %606 ]
  %613 = tail call i8* @halide_string_to_string(i8* %607, i8* %612, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %614 = tail call i8* @halide_string_to_string(i8* %613, i8* %612, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)) #7
  %615 = tail call i8* @halide_string_to_string(i8* %614, i8* %612, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %608, label %616, label %617

616:                                              ; preds = %611
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %604, i8** bitcast (i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL14clRetainKernelE to i8**), align 4, !tbaa !37
  %626 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)) #7
  %627 = icmp eq i8* %626, null
  br i1 %627, label %628, label %647

628:                                              ; preds = %625
  %629 = tail call i8* @malloc(i32 1024) #7
  %630 = icmp eq i8* %629, null
  br i1 %630, label %633, label %631

631:                                              ; preds = %628
  %632 = getelementptr inbounds i8, i8* %629, i32 1023
  store i8 0, i8* %632, align 1, !tbaa !36
  br label %633

633:                                              ; preds = %631, %628
  %634 = phi i8* [ %632, %631 ], [ null, %628 ]
  %635 = tail call i8* @halide_string_to_string(i8* %629, i8* %634, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %636 = tail call i8* @halide_string_to_string(i8* %635, i8* %634, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)) #7
  %637 = tail call i8* @halide_string_to_string(i8* %636, i8* %634, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %630, label %638, label %639

638:                                              ; preds = %633
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %626, i8** bitcast (i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE to i8**), align 4, !tbaa !37
  %648 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)) #7
  %649 = icmp eq i8* %648, null
  br i1 %649, label %650, label %669

650:                                              ; preds = %647
  %651 = tail call i8* @malloc(i32 1024) #7
  %652 = icmp eq i8* %651, null
  br i1 %652, label %655, label %653

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, i8* %651, i32 1023
  store i8 0, i8* %654, align 1, !tbaa !36
  br label %655

655:                                              ; preds = %653, %650
  %656 = phi i8* [ %654, %653 ], [ null, %650 ]
  %657 = tail call i8* @halide_string_to_string(i8* %651, i8* %656, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %658 = tail call i8* @halide_string_to_string(i8* %657, i8* %656, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)) #7
  %659 = tail call i8* @halide_string_to_string(i8* %658, i8* %656, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %652, label %660, label %661

660:                                              ; preds = %655
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %648, i8** bitcast (i32 (%struct._cl_kernel*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE to i8**), align 4, !tbaa !37
  %670 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #7
  %671 = icmp eq i8* %670, null
  br i1 %671, label %672, label %691

672:                                              ; preds = %669
  %673 = tail call i8* @malloc(i32 1024) #7
  %674 = icmp eq i8* %673, null
  br i1 %674, label %677, label %675

675:                                              ; preds = %672
  %676 = getelementptr inbounds i8, i8* %673, i32 1023
  store i8 0, i8* %676, align 1, !tbaa !36
  br label %677

677:                                              ; preds = %675, %672
  %678 = phi i8* [ %676, %675 ], [ null, %672 ]
  %679 = tail call i8* @halide_string_to_string(i8* %673, i8* %678, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %680 = tail call i8* @halide_string_to_string(i8* %679, i8* %678, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #7
  %681 = tail call i8* @halide_string_to_string(i8* %680, i8* %678, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %674, label %682, label %683

682:                                              ; preds = %677
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %670, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL7clFlushE to i8**), align 4, !tbaa !37
  %692 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #7
  %693 = icmp eq i8* %692, null
  br i1 %693, label %694, label %713

694:                                              ; preds = %691
  %695 = tail call i8* @malloc(i32 1024) #7
  %696 = icmp eq i8* %695, null
  br i1 %696, label %699, label %697

697:                                              ; preds = %694
  %698 = getelementptr inbounds i8, i8* %695, i32 1023
  store i8 0, i8* %698, align 1, !tbaa !36
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi i8* [ %698, %697 ], [ null, %694 ]
  %701 = tail call i8* @halide_string_to_string(i8* %695, i8* %700, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %702 = tail call i8* @halide_string_to_string(i8* %701, i8* %700, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #7
  %703 = tail call i8* @halide_string_to_string(i8* %702, i8* %700, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %696, label %704, label %705

704:                                              ; preds = %699
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %692, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE to i8**), align 4, !tbaa !37
  %714 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0)) #7
  %715 = icmp eq i8* %714, null
  br i1 %715, label %716, label %735

716:                                              ; preds = %713
  %717 = tail call i8* @malloc(i32 1024) #7
  %718 = icmp eq i8* %717, null
  br i1 %718, label %721, label %719

719:                                              ; preds = %716
  %720 = getelementptr inbounds i8, i8* %717, i32 1023
  store i8 0, i8* %720, align 1, !tbaa !36
  br label %721

721:                                              ; preds = %719, %716
  %722 = phi i8* [ %720, %719 ], [ null, %716 ]
  %723 = tail call i8* @halide_string_to_string(i8* %717, i8* %722, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %724 = tail call i8* @halide_string_to_string(i8* %723, i8* %722, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0)) #7
  %725 = tail call i8* @halide_string_to_string(i8* %724, i8* %722, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %718, label %726, label %727

726:                                              ; preds = %721
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %714, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE to i8**), align 4, !tbaa !37
  %736 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0)) #7
  %737 = icmp eq i8* %736, null
  br i1 %737, label %738, label %757

738:                                              ; preds = %735
  %739 = tail call i8* @malloc(i32 1024) #7
  %740 = icmp eq i8* %739, null
  br i1 %740, label %743, label %741

741:                                              ; preds = %738
  %742 = getelementptr inbounds i8, i8* %739, i32 1023
  store i8 0, i8* %742, align 1, !tbaa !36
  br label %743

743:                                              ; preds = %741, %738
  %744 = phi i8* [ %742, %741 ], [ null, %738 ]
  %745 = tail call i8* @halide_string_to_string(i8* %739, i8* %744, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %746 = tail call i8* @halide_string_to_string(i8* %745, i8* %744, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0)) #7
  %747 = tail call i8* @halide_string_to_string(i8* %746, i8* %744, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %740, label %748, label %749

748:                                              ; preds = %743
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %736, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueReadBufferRectE to i8**), align 4, !tbaa !37
  %758 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0)) #7
  %759 = icmp eq i8* %758, null
  br i1 %759, label %760, label %779

760:                                              ; preds = %757
  %761 = tail call i8* @malloc(i32 1024) #7
  %762 = icmp eq i8* %761, null
  br i1 %762, label %765, label %763

763:                                              ; preds = %760
  %764 = getelementptr inbounds i8, i8* %761, i32 1023
  store i8 0, i8* %764, align 1, !tbaa !36
  br label %765

765:                                              ; preds = %763, %760
  %766 = phi i8* [ %764, %763 ], [ null, %760 ]
  %767 = tail call i8* @halide_string_to_string(i8* %761, i8* %766, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %768 = tail call i8* @halide_string_to_string(i8* %767, i8* %766, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0)) #7
  %769 = tail call i8* @halide_string_to_string(i8* %768, i8* %766, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %762, label %770, label %771

770:                                              ; preds = %765
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %758, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE to i8**), align 4, !tbaa !37
  %780 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0)) #7
  %781 = icmp eq i8* %780, null
  br i1 %781, label %782, label %801

782:                                              ; preds = %779
  %783 = tail call i8* @malloc(i32 1024) #7
  %784 = icmp eq i8* %783, null
  br i1 %784, label %787, label %785

785:                                              ; preds = %782
  %786 = getelementptr inbounds i8, i8* %783, i32 1023
  store i8 0, i8* %786, align 1, !tbaa !36
  br label %787

787:                                              ; preds = %785, %782
  %788 = phi i8* [ %786, %785 ], [ null, %782 ]
  %789 = tail call i8* @halide_string_to_string(i8* %783, i8* %788, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %790 = tail call i8* @halide_string_to_string(i8* %789, i8* %788, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0)) #7
  %791 = tail call i8* @halide_string_to_string(i8* %790, i8* %788, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %784, label %792, label %793

792:                                              ; preds = %787
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %780, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL24clEnqueueWriteBufferRectE to i8**), align 4, !tbaa !37
  %802 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0)) #7
  %803 = icmp eq i8* %802, null
  br i1 %803, label %804, label %823

804:                                              ; preds = %801
  %805 = tail call i8* @malloc(i32 1024) #7
  %806 = icmp eq i8* %805, null
  br i1 %806, label %809, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds i8, i8* %805, i32 1023
  store i8 0, i8* %808, align 1, !tbaa !36
  br label %809

809:                                              ; preds = %807, %804
  %810 = phi i8* [ %808, %807 ], [ null, %804 ]
  %811 = tail call i8* @halide_string_to_string(i8* %805, i8* %810, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %812 = tail call i8* @halide_string_to_string(i8* %811, i8* %810, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0)) #7
  %813 = tail call i8* @halide_string_to_string(i8* %812, i8* %810, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %806, label %814, label %815

814:                                              ; preds = %809
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %802, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE to i8**), align 4, !tbaa !37
  %824 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0)) #7
  %825 = icmp eq i8* %824, null
  br i1 %825, label %826, label %845

826:                                              ; preds = %823
  %827 = tail call i8* @malloc(i32 1024) #7
  %828 = icmp eq i8* %827, null
  br i1 %828, label %831, label %829

829:                                              ; preds = %826
  %830 = getelementptr inbounds i8, i8* %827, i32 1023
  store i8 0, i8* %830, align 1, !tbaa !36
  br label %831

831:                                              ; preds = %829, %826
  %832 = phi i8* [ %830, %829 ], [ null, %826 ]
  %833 = tail call i8* @halide_string_to_string(i8* %827, i8* %832, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %834 = tail call i8* @halide_string_to_string(i8* %833, i8* %832, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0)) #7
  %835 = tail call i8* @halide_string_to_string(i8* %834, i8* %832, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %828, label %836, label %837

836:                                              ; preds = %831
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %824, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE to i8**), align 4, !tbaa !37
  %846 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0)) #7
  %847 = icmp eq i8* %846, null
  br i1 %847, label %848, label %867

848:                                              ; preds = %845
  %849 = tail call i8* @malloc(i32 1024) #7
  %850 = icmp eq i8* %849, null
  br i1 %850, label %853, label %851

851:                                              ; preds = %848
  %852 = getelementptr inbounds i8, i8* %849, i32 1023
  store i8 0, i8* %852, align 1, !tbaa !36
  br label %853

853:                                              ; preds = %851, %848
  %854 = phi i8* [ %852, %851 ], [ null, %848 ]
  %855 = tail call i8* @halide_string_to_string(i8* %849, i8* %854, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %856 = tail call i8* @halide_string_to_string(i8* %855, i8* %854, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0)) #7
  %857 = tail call i8* @halide_string_to_string(i8* %856, i8* %854, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %850, label %858, label %859

858:                                              ; preds = %853
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %846, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE to i8**), align 4, !tbaa !37
  %868 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0)) #7
  %869 = icmp eq i8* %868, null
  br i1 %869, label %870, label %889

870:                                              ; preds = %867
  %871 = tail call i8* @malloc(i32 1024) #7
  %872 = icmp eq i8* %871, null
  br i1 %872, label %875, label %873

873:                                              ; preds = %870
  %874 = getelementptr inbounds i8, i8* %871, i32 1023
  store i8 0, i8* %874, align 1, !tbaa !36
  br label %875

875:                                              ; preds = %873, %870
  %876 = phi i8* [ %874, %873 ], [ null, %870 ]
  %877 = tail call i8* @halide_string_to_string(i8* %871, i8* %876, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %878 = tail call i8* @halide_string_to_string(i8* %877, i8* %876, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0)) #7
  %879 = tail call i8* @halide_string_to_string(i8* %878, i8* %876, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %872, label %880, label %881

880:                                              ; preds = %875
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %868, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32, i32, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueMapBufferE to i8**), align 4, !tbaa !37
  %890 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0)) #7
  %891 = icmp eq i8* %890, null
  br i1 %891, label %892, label %911

892:                                              ; preds = %889
  %893 = tail call i8* @malloc(i32 1024) #7
  %894 = icmp eq i8* %893, null
  br i1 %894, label %897, label %895

895:                                              ; preds = %892
  %896 = getelementptr inbounds i8, i8* %893, i32 1023
  store i8 0, i8* %896, align 1, !tbaa !36
  br label %897

897:                                              ; preds = %895, %892
  %898 = phi i8* [ %896, %895 ], [ null, %892 ]
  %899 = tail call i8* @halide_string_to_string(i8* %893, i8* %898, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %900 = tail call i8* @halide_string_to_string(i8* %899, i8* %898, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0)) #7
  %901 = tail call i8* @halide_string_to_string(i8* %900, i8* %898, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %894, label %902, label %903

902:                                              ; preds = %897
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %890, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i32*, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clEnqueueMapImageE to i8**), align 4, !tbaa !37
  %912 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0)) #7
  %913 = icmp eq i8* %912, null
  br i1 %913, label %914, label %933

914:                                              ; preds = %911
  %915 = tail call i8* @malloc(i32 1024) #7
  %916 = icmp eq i8* %915, null
  br i1 %916, label %919, label %917

917:                                              ; preds = %914
  %918 = getelementptr inbounds i8, i8* %915, i32 1023
  store i8 0, i8* %918, align 1, !tbaa !36
  br label %919

919:                                              ; preds = %917, %914
  %920 = phi i8* [ %918, %917 ], [ null, %914 ]
  %921 = tail call i8* @halide_string_to_string(i8* %915, i8* %920, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %922 = tail call i8* @halide_string_to_string(i8* %921, i8* %920, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0)) #7
  %923 = tail call i8* @halide_string_to_string(i8* %922, i8* %920, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %916, label %924, label %925

924:                                              ; preds = %919
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %912, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueUnmapMemObjectE to i8**), align 4, !tbaa !37
  %934 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0)) #7
  %935 = icmp eq i8* %934, null
  br i1 %935, label %936, label %955

936:                                              ; preds = %933
  %937 = tail call i8* @malloc(i32 1024) #7
  %938 = icmp eq i8* %937, null
  br i1 %938, label %941, label %939

939:                                              ; preds = %936
  %940 = getelementptr inbounds i8, i8* %937, i32 1023
  store i8 0, i8* %940, align 1, !tbaa !36
  br label %941

941:                                              ; preds = %939, %936
  %942 = phi i8* [ %940, %939 ], [ null, %936 ]
  %943 = tail call i8* @halide_string_to_string(i8* %937, i8* %942, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0)) #7
  %944 = tail call i8* @halide_string_to_string(i8* %943, i8* %942, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0)) #7
  %945 = tail call i8* @halide_string_to_string(i8* %944, i8* %942, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br i1 %938, label %946, label %947

946:                                              ; preds = %941
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  store i8* %934, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE to i8**), align 4, !tbaa !37
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @halide_opencl_set_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 0), i8* nonnull %0, i32 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25platform_name_initializedE, align 1, !tbaa !39
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE release, align 1
  ret void
}

; Function Attrs: nounwind
define weak i8* @halide_opencl_get_platform_name(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal6OpenCL25platform_name_initializedE, align 1, !tbaa !39, !range !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.269, i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 0), i8* nonnull %9, i32 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25platform_name_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i32 0, i32 0)
}

; Function Attrs: nounwind
define weak void @halide_opencl_set_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 0), i8* nonnull %0, i32 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL23device_type_initializedE, align 1, !tbaa !39
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE release, align 1
  ret void
}

; Function Attrs: nounwind
define weak i8* @halide_opencl_get_device_type(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal6OpenCL23device_type_initializedE, align 1, !tbaa !39, !range !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.270, i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 0), i8* nonnull %9, i32 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL23device_type_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i32 0, i32 0)
}

; Function Attrs: nounwind
define weak void @halide_opencl_set_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 0), i8* nonnull %0, i32 1024) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 1023), %7 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 0), %5 ]
  store i8 0, i8* %10, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25build_options_initializedE, align 1, !tbaa !39
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE release, align 1
  ret void
}

; Function Attrs: nounwind
define weak i8* @halide_opencl_get_build_options(i8* %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !38

5:                                                ; preds = %2
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal6OpenCL25build_options_initializedE, align 1, !tbaa !39, !range !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.271, i32 0, i32 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 0), i8* nonnull %9, i32 1024) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 1023), %11 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25build_options_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE release, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i32 0, i32 0)
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct._cl_context** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.55, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.56, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10, %11
  %12 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE, i8 1 acquire
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %11, !llvm.loop !42

14:                                               ; preds = %11
  %15 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 4, !tbaa !37
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = and i1 %16, %3
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call i32 @_ZN6Halide7Runtime8Internal6OpenCL21create_opencl_contextEPvPP11_cl_contextPP17_cl_command_queue(i8* %0, %struct._cl_context** nonnull @_ZN6Halide7Runtime8Internal6OpenCL7contextE, %struct._cl_command_queue** nonnull @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 4, !tbaa !37
  br label %24

23:                                               ; preds = %18
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE release, align 1
  br label %27

24:                                               ; preds = %21, %14
  %25 = phi %struct._cl_context* [ %22, %21 ], [ %15, %14 ]
  store %struct._cl_context* %25, %struct._cl_context** %1, align 4, !tbaa !37
  %26 = load %struct._cl_command_queue*, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 4, !tbaa !37
  store %struct._cl_command_queue* %26, %struct._cl_command_queue** %2, align 4, !tbaa !37
  br label %27

27:                                               ; preds = %23, %24
  %28 = phi i32 [ 0, %24 ], [ %19, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal6OpenCL21create_opencl_contextEPvPP11_cl_contextPP17_cl_command_queue(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2) local_unnamed_addr #4 {
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
  %19 = load %struct._cl_context*, %struct._cl_context** %1, align 4, !tbaa !37
  %20 = icmp eq %struct._cl_context* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.68, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load %struct._cl_command_queue*, %struct._cl_command_queue** %2, align 4, !tbaa !37
  %26 = icmp eq %struct._cl_command_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.69, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32 (i32, %struct._cl_platform_id**, i32*)*, i32 (i32, %struct._cl_platform_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE, align 4, !tbaa !37
  %30 = icmp eq i32 (i32, %struct._cl_platform_id**, i32*)* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = tail call i8* @malloc(i32 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i32 0, i32 0)) #7
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
  br label %387

46:                                               ; preds = %28
  %47 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #9
  store i32 0, i32* %4, align 4, !tbaa !43
  %48 = bitcast [4 x %struct._cl_platform_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #9
  %49 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %49) #9
  store i32 0, i32* %6, align 4, !tbaa !43
  %50 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i32 0, i32 0
  %51 = call i32 %29(i32 4, %struct._cl_platform_id** nonnull %50, i32* nonnull %6) #7
  store i32 %51, i32* %4, align 4, !tbaa !43
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %46
  %54 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %54) #9
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %55, align 4, !tbaa !44
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %56, align 4, !tbaa !46
  %57 = call i8* @malloc(i32 1024) #7
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %57, i8** %58, align 4, !tbaa !47
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  %60 = icmp eq i8* %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %62, align 1, !tbaa !36
  br label %63

63:                                               ; preds = %53, %61
  %64 = phi i8* [ %62, %61 ], [ null, %53 ]
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 2
  store i8* %64, i8** %65, align 4
  %66 = call i8* @halide_string_to_string(i8* %57, i8* %64, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0)) #7
  store i8* %66, i8** %59, align 4, !tbaa !48
  %67 = load i32, i32* %4, align 4, !tbaa !43
  %68 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %67) #8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i8* @halide_string_to_string(i8* %66, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %74

72:                                               ; preds = %63
  %73 = call i8* @halide_string_to_string(i8* %66, i8* %64, i8* nonnull %68) #7
  br label %74

74:                                               ; preds = %70, %72
  %75 = phi i8* [ %73, %72 ], [ %71, %70 ]
  %76 = load i8*, i8** %65, align 4, !tbaa !49
  %77 = call i8* @halide_string_to_string(i8* %75, i8* %76, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0)) #7
  %78 = load i32, i32* %4, align 4, !tbaa !43
  %79 = sext i32 %78 to i64
  %80 = call i8* @halide_int64_to_string(i8* %77, i8* %76, i64 %79, i32 1) #7
  %81 = load i8*, i8** %58, align 4, !tbaa !47
  %82 = icmp eq i8* %81, null
  %83 = load i8*, i8** %55, align 4, !tbaa !44
  br i1 %82, label %84, label %85

84:                                               ; preds = %74
  call void @halide_error(i8* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %94

85:                                               ; preds = %74
  %86 = ptrtoint i8* %80 to i32
  %87 = ptrtoint i8* %81 to i32
  %88 = add i32 %86, 1
  %89 = sub i32 %88, %87
  %90 = sext i32 %89 to i64
  %91 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %83, i8* nonnull %81, i64 %90) #7
  %92 = load i8*, i8** %55, align 4, !tbaa !44
  %93 = load i8*, i8** %58, align 4, !tbaa !47
  call void @halide_error(i8* %92, i8* %93) #7
  br label %94

94:                                               ; preds = %85, %84
  %95 = load i8, i8* %56, align 4, !tbaa !46, !range !41
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %58, align 4, !tbaa !47
  call void @free(i8* %98) #7
  br label %99

99:                                               ; preds = %94, %97
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %54) #9
  %100 = load i32, i32* %4, align 4, !tbaa !43
  br label %385

101:                                              ; preds = %46
  %102 = call i8* @halide_opencl_get_platform_name(i8* %0) #8
  %103 = icmp eq i8* %102, null
  %104 = load i32, i32* %6, align 4, !tbaa !43
  %105 = icmp eq i32 %104, 0
  br i1 %103, label %125, label %106

106:                                              ; preds = %101
  br i1 %105, label %130, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  br label %109

109:                                              ; preds = %107, %121
  %110 = phi i32 [ 0, %107 ], [ %122, %121 ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %108) #9
  %111 = load i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_platform_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE, align 4, !tbaa !37
  %112 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i32 0, i32 %110
  %113 = load %struct._cl_platform_id*, %struct._cl_platform_id** %112, align 4, !tbaa !37
  %114 = call i32 %111(%struct._cl_platform_id* %113, i32 2306, i32 256, i8* nonnull %108, i32* null) #7
  store i32 %114, i32* %4, align 4, !tbaa !43
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = call i8* @strstr(i8* nonnull %108, i8* nonnull %102) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load %struct._cl_platform_id*, %struct._cl_platform_id** %112, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %108) #9
  br label %127

121:                                              ; preds = %109, %116
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %108) #9
  %122 = add nuw i32 %110, 1
  %123 = load i32, i32* %6, align 4, !tbaa !43
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %109, label %130, !llvm.loop !50

125:                                              ; preds = %101
  %126 = load %struct._cl_platform_id*, %struct._cl_platform_id** %50, align 4
  br i1 %105, label %130, label %127

127:                                              ; preds = %125, %119
  %128 = phi %struct._cl_platform_id* [ %120, %119 ], [ %126, %125 ]
  %129 = icmp eq %struct._cl_platform_id* %128, null
  br i1 %129, label %130, label %145

130:                                              ; preds = %121, %106, %125, %127
  %131 = call i8* @malloc(i32 1024) #7
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i8* @halide_string_to_string(i8* %131, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %144

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, i8* %131, i32 1023
  store i8 0, i8* %136, align 1, !tbaa !36
  %137 = call i8* @halide_string_to_string(i8* nonnull %131, i8* nonnull %136, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0)) #7
  %138 = ptrtoint i8* %137 to i32
  %139 = ptrtoint i8* %131 to i32
  %140 = add i32 %138, 1
  %141 = sub i32 %140, %139
  %142 = sext i32 %141 to i64
  %143 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %131, i64 %142) #7
  call void @halide_error(i8* %0, i8* nonnull %131) #7
  br label %144

144:                                              ; preds = %135, %133
  call void @free(i8* %131) #7
  br label %385

145:                                              ; preds = %127
  %146 = call i8* @halide_opencl_get_device_type(i8* %0) #8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %164, label %148

148:                                              ; preds = %145
  %149 = load i8, i8* %146, align 1, !tbaa !36
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = call i8* @strstr(i8* nonnull %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0)) #7
  %153 = icmp eq i8* %152, null
  %154 = select i1 %153, i64 0, i64 2
  %155 = call i8* @strstr(i8* nonnull %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0)) #7
  %156 = icmp eq i8* %155, null
  %157 = or i64 %154, 4
  %158 = select i1 %156, i64 %154, i64 %157
  %159 = call i8* @strstr(i8* nonnull %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0)) #7
  %160 = icmp eq i8* %159, null
  %161 = or i64 %158, 8
  br i1 %160, label %162, label %165

162:                                              ; preds = %151
  %163 = icmp eq i64 %158, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %145, %148, %162
  br label %165

165:                                              ; preds = %151, %162, %164
  %166 = phi i64 [ 4294967295, %164 ], [ %158, %162 ], [ %161, %151 ]
  %167 = bitcast [128 x %struct._cl_device_id*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %167) #9
  %168 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %168) #9
  store i32 0, i32* %10, align 4, !tbaa !43
  %169 = load i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)*, i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE, align 4, !tbaa !37
  %170 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 0
  %171 = call i32 %169(%struct._cl_platform_id* nonnull %128, i64 %166, i32 128, %struct._cl_device_id** nonnull %170, i32* nonnull %10) #7
  store i32 %171, i32* %4, align 4, !tbaa !43
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %215, label %173

173:                                              ; preds = %165
  %174 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %174) #9
  %175 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %175, align 4, !tbaa !44
  %176 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %176, align 4, !tbaa !46
  %177 = call i8* @malloc(i32 1024) #7
  %178 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %177, i8** %178, align 4, !tbaa !47
  %179 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %177, i8** %179, align 4, !tbaa !48
  %180 = icmp eq i8* %177, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds i8, i8* %177, i32 1023
  store i8 0, i8* %182, align 1, !tbaa !36
  br label %183

183:                                              ; preds = %173, %181
  %184 = phi i8* [ %182, %181 ], [ null, %173 ]
  %185 = call i8* @halide_string_to_string(i8* %177, i8* %184, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0)) #7
  %186 = load i32, i32* %4, align 4, !tbaa !43
  %187 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %186) #8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i8* @halide_string_to_string(i8* %185, i8* %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %193

191:                                              ; preds = %183
  %192 = call i8* @halide_string_to_string(i8* %185, i8* %184, i8* nonnull %187) #7
  br label %193

193:                                              ; preds = %189, %191
  %194 = phi i8* [ %192, %191 ], [ %190, %189 ]
  %195 = load i8*, i8** %178, align 4, !tbaa !47
  %196 = icmp eq i8* %195, null
  %197 = load i8*, i8** %175, align 4, !tbaa !44
  br i1 %196, label %198, label %199

198:                                              ; preds = %193
  call void @halide_error(i8* %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %208

199:                                              ; preds = %193
  %200 = ptrtoint i8* %194 to i32
  %201 = ptrtoint i8* %195 to i32
  %202 = sub i32 1, %201
  %203 = add i32 %202, %200
  %204 = sext i32 %203 to i64
  %205 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %197, i8* nonnull %195, i64 %204) #7
  %206 = load i8*, i8** %175, align 4, !tbaa !44
  %207 = load i8*, i8** %178, align 4, !tbaa !47
  call void @halide_error(i8* %206, i8* %207) #7
  br label %208

208:                                              ; preds = %199, %198
  %209 = load i8, i8* %176, align 4, !tbaa !46, !range !41
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %178, align 4, !tbaa !47
  call void @free(i8* %212) #7
  br label %213

213:                                              ; preds = %208, %211
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %174) #9
  %214 = load i32, i32* %4, align 4, !tbaa !43
  br label %383

215:                                              ; preds = %165
  %216 = call i32 @halide_get_gpu_device(i8* %0) #7
  %217 = icmp eq i32 %216, -1
  %218 = load i32, i32* %10, align 4
  %219 = icmp eq i32 %218, 1
  %220 = and i1 %217, %219
  %221 = xor i1 %217, true
  %222 = or i1 %219, %221
  %223 = select i1 %220, i32 0, i32 %216
  br i1 %222, label %246, label %224

224:                                              ; preds = %215
  %225 = icmp eq i32 %218, 0
  br i1 %225, label %252, label %226

226:                                              ; preds = %224
  %227 = bitcast i32* %12 to i8*
  br label %228

228:                                              ; preds = %226, %228
  %229 = phi i32 [ 0, %226 ], [ %243, %228 ]
  %230 = phi i32 [ 0, %226 ], [ %242, %228 ]
  %231 = phi i32 [ -1, %226 ], [ %241, %228 ]
  %232 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 %229
  %233 = load %struct._cl_device_id*, %struct._cl_device_id** %232, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %227) #9
  store i32 0, i32* %12, align 4, !tbaa !43
  %234 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 4, !tbaa !37
  %235 = call i32 %234(%struct._cl_device_id* %233, i32 4098, i32 4, i8* nonnull %227, i32* null) #7
  store i32 %235, i32* %4, align 4, !tbaa !43
  %236 = icmp eq i32 %235, 0
  %237 = load i32, i32* %12, align 4
  %238 = icmp ult i32 %237, %230
  %239 = select i1 %238, i32 %231, i32 %229
  %240 = select i1 %238, i32 %230, i32 %237
  %241 = select i1 %236, i32 %239, i32 %231
  %242 = select i1 %236, i32 %240, i32 %230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %227) #9
  %243 = add nuw i32 %229, 1
  %244 = load i32, i32* %10, align 4, !tbaa !43
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %228, label %246, !llvm.loop !51

246:                                              ; preds = %228, %215
  %247 = phi i32 [ %218, %215 ], [ %244, %228 ]
  %248 = phi i32 [ %223, %215 ], [ %241, %228 ]
  %249 = icmp sgt i32 %248, -1
  %250 = icmp slt i32 %248, %247
  %251 = and i1 %249, %250
  br i1 %251, label %272, label %252

252:                                              ; preds = %224, %246
  %253 = phi i32 [ %248, %246 ], [ -1, %224 ]
  %254 = call i8* @malloc(i32 1024) #7
  %255 = icmp eq i8* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds i8, i8* %254, i32 1023
  store i8 0, i8* %257, align 1, !tbaa !36
  br label %258

258:                                              ; preds = %252, %256
  %259 = phi i8* [ %257, %256 ], [ null, %252 ]
  %260 = call i8* @halide_string_to_string(i8* %254, i8* %259, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0)) #7
  %261 = sext i32 %253 to i64
  %262 = call i8* @halide_int64_to_string(i8* %260, i8* %259, i64 %261, i32 1) #7
  br i1 %255, label %263, label %264

263:                                              ; preds = %258
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %271

264:                                              ; preds = %258
  %265 = ptrtoint i8* %262 to i32
  %266 = ptrtoint i8* %254 to i32
  %267 = add i32 %265, 1
  %268 = sub i32 %267, %266
  %269 = sext i32 %268 to i64
  %270 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %254, i64 %269) #7
  call void @halide_error(i8* %0, i8* nonnull %254) #7
  br label %271

271:                                              ; preds = %264, %263
  call void @free(i8* %254) #7
  br label %383

272:                                              ; preds = %246
  %273 = bitcast %struct._cl_device_id** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %273) #9
  %274 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i32 0, i32 %248
  %275 = load %struct._cl_device_id*, %struct._cl_device_id** %274, align 4, !tbaa !37
  store %struct._cl_device_id* %275, %struct._cl_device_id** %13, align 4, !tbaa !37
  %276 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %276) #9
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 0
  store i32 4228, i32* %277, align 4, !tbaa !43
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 1
  %279 = ptrtoint %struct._cl_platform_id* %128 to i32
  store i32 %279, i32* %278, align 4, !tbaa !43
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 2
  store i32 0, i32* %280, align 4, !tbaa !43
  %281 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %282 = call %struct._cl_context* %281(i32* nonnull %277, i32 1, %struct._cl_device_id** nonnull %13, void (i8*, i8*, i32, i8*)* null, i8* null, i32* nonnull %4) #7
  store %struct._cl_context* %282, %struct._cl_context** %1, align 4, !tbaa !37
  %283 = load i32, i32* %4, align 4, !tbaa !43
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %333, label %285

285:                                              ; preds = %272
  %286 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %283) #8
  %287 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %287) #9
  %288 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 3
  store i8* %0, i8** %288, align 4, !tbaa !44
  %289 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 4
  store i8 1, i8* %289, align 4, !tbaa !46
  %290 = call i8* @malloc(i32 1024) #7
  %291 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 0
  store i8* %290, i8** %291, align 4, !tbaa !47
  %292 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 1
  %293 = icmp eq i8* %290, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %285
  %295 = getelementptr inbounds i8, i8* %290, i32 1023
  store i8 0, i8* %295, align 1, !tbaa !36
  br label %296

296:                                              ; preds = %285, %294
  %297 = phi i8* [ %295, %294 ], [ null, %285 ]
  %298 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 2
  store i8* %297, i8** %298, align 4
  %299 = call i8* @halide_string_to_string(i8* %290, i8* %297, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0)) #7
  store i8* %299, i8** %292, align 4, !tbaa !48
  %300 = load i32, i32* %4, align 4, !tbaa !43
  %301 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %300) #8
  %302 = icmp eq i8* %301, null
  br i1 %302, label %303, label %305

303:                                              ; preds = %296
  %304 = call i8* @halide_string_to_string(i8* %299, i8* %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %307

305:                                              ; preds = %296
  %306 = call i8* @halide_string_to_string(i8* %299, i8* %297, i8* nonnull %301) #7
  br label %307

307:                                              ; preds = %303, %305
  %308 = phi i8* [ %306, %305 ], [ %304, %303 ]
  %309 = load i8*, i8** %298, align 4, !tbaa !49
  %310 = call i8* @halide_string_to_string(i8* %308, i8* %309, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0)) #7
  %311 = load i32, i32* %4, align 4, !tbaa !43
  %312 = sext i32 %311 to i64
  %313 = call i8* @halide_int64_to_string(i8* %310, i8* %309, i64 %312, i32 1) #7
  %314 = load i8*, i8** %291, align 4, !tbaa !47
  %315 = icmp eq i8* %314, null
  %316 = load i8*, i8** %288, align 4, !tbaa !44
  br i1 %315, label %317, label %318

317:                                              ; preds = %307
  call void @halide_error(i8* %316, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %327

318:                                              ; preds = %307
  %319 = ptrtoint i8* %313 to i32
  %320 = ptrtoint i8* %314 to i32
  %321 = add i32 %319, 1
  %322 = sub i32 %321, %320
  %323 = sext i32 %322 to i64
  %324 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %316, i8* nonnull %314, i64 %323) #7
  %325 = load i8*, i8** %288, align 4, !tbaa !44
  %326 = load i8*, i8** %291, align 4, !tbaa !47
  call void @halide_error(i8* %325, i8* %326) #7
  br label %327

327:                                              ; preds = %318, %317
  %328 = load i8, i8* %289, align 4, !tbaa !46, !range !41
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %327
  %331 = load i8*, i8** %291, align 4, !tbaa !47
  call void @free(i8* %331) #7
  br label %332

332:                                              ; preds = %327, %330
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %287) #9
  br label %381

333:                                              ; preds = %272
  %334 = load %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)*, %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE, align 4, !tbaa !37
  %335 = load %struct._cl_device_id*, %struct._cl_device_id** %13, align 4, !tbaa !37
  %336 = call %struct._cl_command_queue* %334(%struct._cl_context* %282, %struct._cl_device_id* %335, i64 0, i32* nonnull %4) #7
  store %struct._cl_command_queue* %336, %struct._cl_command_queue** %2, align 4, !tbaa !37
  %337 = load i32, i32* %4, align 4, !tbaa !43
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %381, label %339

339:                                              ; preds = %333
  %340 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %337) #8
  %341 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %341) #9
  %342 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 3
  store i8* %0, i8** %342, align 4, !tbaa !44
  %343 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 4
  store i8 1, i8* %343, align 4, !tbaa !46
  %344 = call i8* @malloc(i32 1024) #7
  %345 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 0
  store i8* %344, i8** %345, align 4, !tbaa !47
  %346 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 1
  store i8* %344, i8** %346, align 4, !tbaa !48
  %347 = icmp eq i8* %344, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %339
  %349 = getelementptr inbounds i8, i8* %344, i32 1023
  store i8 0, i8* %349, align 1, !tbaa !36
  br label %350

350:                                              ; preds = %339, %348
  %351 = phi i8* [ %349, %348 ], [ null, %339 ]
  %352 = call i8* @halide_string_to_string(i8* %344, i8* %351, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0)) #7
  %353 = load i32, i32* %4, align 4, !tbaa !43
  %354 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %353) #8
  %355 = icmp eq i8* %354, null
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = call i8* @halide_string_to_string(i8* %352, i8* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %360

358:                                              ; preds = %350
  %359 = call i8* @halide_string_to_string(i8* %352, i8* %351, i8* nonnull %354) #7
  br label %360

360:                                              ; preds = %356, %358
  %361 = phi i8* [ %359, %358 ], [ %357, %356 ]
  %362 = load i8*, i8** %345, align 4, !tbaa !47
  %363 = icmp eq i8* %362, null
  %364 = load i8*, i8** %342, align 4, !tbaa !44
  br i1 %363, label %365, label %366

365:                                              ; preds = %360
  call void @halide_error(i8* %364, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %375

366:                                              ; preds = %360
  %367 = ptrtoint i8* %361 to i32
  %368 = ptrtoint i8* %362 to i32
  %369 = sub i32 1, %368
  %370 = add i32 %369, %367
  %371 = sext i32 %370 to i64
  %372 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %364, i8* nonnull %362, i64 %371) #7
  %373 = load i8*, i8** %342, align 4, !tbaa !44
  %374 = load i8*, i8** %345, align 4, !tbaa !47
  call void @halide_error(i8* %373, i8* %374) #7
  br label %375

375:                                              ; preds = %366, %365
  %376 = load i8, i8* %343, align 4, !tbaa !46, !range !41
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %375
  %379 = load i8*, i8** %345, align 4, !tbaa !47
  call void @free(i8* %379) #7
  br label %380

380:                                              ; preds = %375, %378
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %341) #9
  br label %381

381:                                              ; preds = %333, %380, %332
  %382 = load i32, i32* %4, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %276) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %273) #9
  br label %383

383:                                              ; preds = %271, %381, %213
  %384 = phi i32 [ %214, %213 ], [ -1, %271 ], [ %382, %381 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %168) #9
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %167) #9
  br label %385

385:                                              ; preds = %144, %383, %99
  %386 = phi i32 [ %100, %99 ], [ -32, %144 ], [ %384, %383 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %49) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #9
  br label %387

387:                                              ; preds = %385, %45
  %388 = phi i32 [ -1, %45 ], [ %386, %385 ]
  ret i32 %388
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_release_cl_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE release, align 1
  ret i32 0
}

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* %1, i32 %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %82, label %9

9:                                                ; preds = %3
  %10 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 4, !tbaa !37
  %11 = icmp eq i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* %10, null
  %12 = trunc i64 %7 to i32
  br i1 %11, label %13, label %17

13:                                               ; preds = %9
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #8
  %14 = load i64, i64* %6, align 8, !tbaa !22
  %15 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 4, !tbaa !37
  %16 = trunc i64 %14 to i32
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 (%struct._cl_mem*, i32, i32, i8*, i32*)* [ %15, %13 ], [ %10, %9 ]
  %19 = phi i32 [ %16, %13 ], [ %12, %9 ]
  %20 = inttoptr i32 %19 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %20, i32 0, i32 1
  %22 = load %struct._cl_mem*, %struct._cl_mem** %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %20, i32 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !54
  %25 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #9
  %26 = call i32 %18(%struct._cl_mem* %22, i32 4354, i32 4, i8* nonnull %25, i32* null) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %17
  %29 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %29) #9
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %30, align 4, !tbaa !44
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %31, align 4, !tbaa !46
  %32 = call i8* @malloc(i32 1024) #7
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %32, i8** %33, align 4, !tbaa !47
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  %35 = icmp eq i8* %32, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i8* [ %37, %36 ], [ null, %28 ]
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2
  store i8* %39, i8** %40, align 4
  %41 = call i8* @halide_string_to_string(i8* %32, i8* %39, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0)) #7
  store i8* %41, i8** %34, align 4, !tbaa !48
  %42 = bitcast %struct._cl_mem* %22 to i8*
  %43 = call i8* @halide_pointer_to_string(i8* %41, i8* %39, i8* %42) #7
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %39, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0)) #7
  %45 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %26) #8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i8* @halide_string_to_string(i8* %44, i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %51

49:                                               ; preds = %38
  %50 = call i8* @halide_string_to_string(i8* %44, i8* %39, i8* nonnull %45) #7
  br label %51

51:                                               ; preds = %47, %49
  %52 = phi i8* [ %50, %49 ], [ %48, %47 ]
  %53 = load i8*, i8** %33, align 4, !tbaa !47
  %54 = icmp eq i8* %53, null
  %55 = load i8*, i8** %30, align 4, !tbaa !44
  br i1 %54, label %56, label %57

56:                                               ; preds = %51
  call void @halide_error(i8* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %66

57:                                               ; preds = %51
  %58 = ptrtoint i8* %52 to i32
  %59 = ptrtoint i8* %53 to i32
  %60 = sub i32 1, %59
  %61 = add i32 %60, %58
  %62 = sext i32 %61 to i64
  %63 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %55, i8* nonnull %53, i64 %62) #7
  %64 = load i8*, i8** %30, align 4, !tbaa !44
  %65 = load i8*, i8** %33, align 4, !tbaa !47
  call void @halide_error(i8* %64, i8* %65) #7
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i8, i8* %31, align 4, !tbaa !46, !range !41
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %33, align 4, !tbaa !47
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
  %76 = load i32, i32* %4, align 4, !tbaa !43
  %77 = zext i32 %76 to i64
  %78 = add i64 %24, %75
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.66, i32 0, i32 0)) #7
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
define weak i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %0) local_unnamed_addr #5 {
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
  %62 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.242, i32 0, i32 0), %60 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.241, i32 0, i32 0), %59 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.240, i32 0, i32 0), %58 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.239, i32 0, i32 0), %57 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.238, i32 0, i32 0), %56 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i32 0, i32 0), %55 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.236, i32 0, i32 0), %54 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.235, i32 0, i32 0), %53 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.234, i32 0, i32 0), %52 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.233, i32 0, i32 0), %51 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.232, i32 0, i32 0), %50 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0), %49 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.230, i32 0, i32 0), %48 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.229, i32 0, i32 0), %47 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i32 0, i32 0), %46 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.227, i32 0, i32 0), %45 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.226, i32 0, i32 0), %44 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.225, i32 0, i32 0), %43 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.224, i32 0, i32 0), %42 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.223, i32 0, i32 0), %41 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.222, i32 0, i32 0), %40 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i32 0, i32 0), %39 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.220, i32 0, i32 0), %38 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.219, i32 0, i32 0), %37 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.218, i32 0, i32 0), %36 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), %35 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.216, i32 0, i32 0), %34 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.215, i32 0, i32 0), %33 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.214, i32 0, i32 0), %32 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i32 0, i32 0), %31 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.212, i32 0, i32 0), %30 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.211, i32 0, i32 0), %29 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i32 0, i32 0), %28 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.209, i32 0, i32 0), %27 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.208, i32 0, i32 0), %26 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.207, i32 0, i32 0), %25 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.206, i32 0, i32 0), %24 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.205, i32 0, i32 0), %23 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.204, i32 0, i32 0), %22 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0), %21 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.202, i32 0, i32 0), %20 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.201, i32 0, i32 0), %19 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.200, i32 0, i32 0), %18 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.199, i32 0, i32 0), %17 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i32 0, i32 0), %16 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.197, i32 0, i32 0), %15 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.196, i32 0, i32 0), %14 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i32 0, i32 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.194, i32 0, i32 0), %12 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.193, i32 0, i32 0), %11 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i32 0, i32 0), %10 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.191, i32 0, i32 0), %9 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i32 0, i32 0), %8 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.189, i32 0, i32 0), %7 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.188, i32 0, i32 0), %6 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.187, i32 0, i32 0), %5 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i32 0, i32 0), %4 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.185, i32 0, i32 0), %3 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.184, i32 0, i32 0), %2 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), %1 ]
  ret i8* %62
}

declare i8* @strstr(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak %struct._cl_program* @_ZN6Halide7Runtime8Internal6OpenCL14compile_kernelEPvP11_cl_contextPKci(i8* %0, %struct._cl_context* %1, i8* %2, i32 %3) #4 {
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
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", align 4
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #9
  store i32 0, i32* %5, align 4, !tbaa !43
  %18 = bitcast %struct._cl_device_id** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #9
  %19 = load i32 (%struct._cl_context*, i32, i32, i8*, i32*)*, i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE, align 4, !tbaa !37
  %20 = call i32 %19(%struct._cl_context* %1, i32 4225, i32 4, i8* nonnull %18, i32* null) #7
  store i32 %20, i32* %5, align 4, !tbaa !43
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %4
  %23 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %23) #9
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 3
  store i8* %0, i8** %24, align 4, !tbaa !44
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 4
  store i8 1, i8* %25, align 4, !tbaa !46
  %26 = call i8* @malloc(i32 1024) #7
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 0
  store i8* %26, i8** %27, align 4, !tbaa !47
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i32 0, i32 1
  store i8* %26, i8** %28, align 4, !tbaa !48
  %29 = icmp eq i8* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !36
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i8* [ %31, %30 ], [ null, %22 ]
  %34 = call i8* @halide_string_to_string(i8* %26, i8* %33, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.91, i32 0, i32 0)) #7
  %35 = load i32, i32* %5, align 4, !tbaa !43
  %36 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %35) #8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %42

40:                                               ; preds = %32
  %41 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull %36) #7
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %27, align 4, !tbaa !47
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %24, align 4, !tbaa !44
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %57

48:                                               ; preds = %42
  %49 = ptrtoint i8* %43 to i32
  %50 = ptrtoint i8* %44 to i32
  %51 = sub i32 1, %50
  %52 = add i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %53) #7
  %55 = load i8*, i8** %24, align 4, !tbaa !44
  %56 = load i8*, i8** %27, align 4, !tbaa !47
  call void @halide_error(i8* %55, i8* %56) #7
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i8, i8* %25, align 4, !tbaa !46, !range !41
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %27, align 4, !tbaa !47
  call void @free(i8* %61) #7
  br label %62

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %23) #9
  br label %353

63:                                               ; preds = %4
  %64 = bitcast [1 x %struct._cl_device_id*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #9
  %65 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %8, i32 0, i32 0
  %66 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !37
  store %struct._cl_device_id* %66, %struct._cl_device_id** %65, align 4, !tbaa !37
  %67 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #9
  store i64 0, i64* %9, align 8, !tbaa !3
  %68 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 4, !tbaa !37
  %69 = call i32 %68(%struct._cl_device_id* %66, i32 4128, i32 8, i8* nonnull %67, i32* null) #7
  store i32 %69, i32* %5, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %63
  %72 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %72) #9
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 3
  store i8* %0, i8** %73, align 4, !tbaa !44
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 4
  store i8 1, i8* %74, align 4, !tbaa !46
  %75 = call i8* @malloc(i32 1024) #7
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 0
  store i8* %75, i8** %76, align 4, !tbaa !47
  %77 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i32 0, i32 1
  store i8* %75, i8** %77, align 4, !tbaa !48
  %78 = icmp eq i8* %75, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %80, align 1, !tbaa !36
  br label %81

81:                                               ; preds = %71, %79
  %82 = phi i8* [ %80, %79 ], [ null, %71 ]
  %83 = call i8* @halide_string_to_string(i8* %75, i8* %82, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.92, i32 0, i32 0)) #7
  %84 = load i32, i32* %5, align 4, !tbaa !43
  %85 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %84) #8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i8* @halide_string_to_string(i8* %83, i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %91

89:                                               ; preds = %81
  %90 = call i8* @halide_string_to_string(i8* %83, i8* %82, i8* nonnull %85) #7
  br label %91

91:                                               ; preds = %87, %89
  %92 = phi i8* [ %90, %89 ], [ %88, %87 ]
  %93 = load i8*, i8** %76, align 4, !tbaa !47
  %94 = icmp eq i8* %93, null
  %95 = load i8*, i8** %73, align 4, !tbaa !44
  br i1 %94, label %96, label %97

96:                                               ; preds = %91
  call void @halide_error(i8* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %106

97:                                               ; preds = %91
  %98 = ptrtoint i8* %92 to i32
  %99 = ptrtoint i8* %93 to i32
  %100 = sub i32 1, %99
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %95, i8* nonnull %93, i64 %102) #7
  %104 = load i8*, i8** %73, align 4, !tbaa !44
  %105 = load i8*, i8** %76, align 4, !tbaa !47
  call void @halide_error(i8* %104, i8* %105) #7
  br label %106

106:                                              ; preds = %97, %96
  %107 = load i8, i8* %74, align 4, !tbaa !46, !range !41
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %76, align 4, !tbaa !47
  call void @free(i8* %110) #7
  br label %111

111:                                              ; preds = %106, %109
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %72) #9
  br label %351

112:                                              ; preds = %63
  %113 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %113) #9
  store i32 0, i32* %11, align 4, !tbaa !43
  %114 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 4, !tbaa !37
  %115 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !37
  %116 = call i32 %114(%struct._cl_device_id* %115, i32 4129, i32 4, i8* nonnull %113, i32* null) #7
  store i32 %116, i32* %5, align 4, !tbaa !43
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %159, label %118

118:                                              ; preds = %112
  %119 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %119) #9
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 3
  store i8* %0, i8** %120, align 4, !tbaa !44
  %121 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 4
  store i8 1, i8* %121, align 4, !tbaa !46
  %122 = call i8* @malloc(i32 1024) #7
  %123 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 0
  store i8* %122, i8** %123, align 4, !tbaa !47
  %124 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 1
  store i8* %122, i8** %124, align 4, !tbaa !48
  %125 = icmp eq i8* %122, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds i8, i8* %122, i32 1023
  store i8 0, i8* %127, align 1, !tbaa !36
  br label %128

128:                                              ; preds = %118, %126
  %129 = phi i8* [ %127, %126 ], [ null, %118 ]
  %130 = call i8* @halide_string_to_string(i8* %122, i8* %129, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.93, i32 0, i32 0)) #7
  %131 = load i32, i32* %5, align 4, !tbaa !43
  %132 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %131) #8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i8* @halide_string_to_string(i8* %130, i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %138

136:                                              ; preds = %128
  %137 = call i8* @halide_string_to_string(i8* %130, i8* %129, i8* nonnull %132) #7
  br label %138

138:                                              ; preds = %134, %136
  %139 = phi i8* [ %137, %136 ], [ %135, %134 ]
  %140 = load i8*, i8** %123, align 4, !tbaa !47
  %141 = icmp eq i8* %140, null
  %142 = load i8*, i8** %120, align 4, !tbaa !44
  br i1 %141, label %143, label %144

143:                                              ; preds = %138
  call void @halide_error(i8* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %153

144:                                              ; preds = %138
  %145 = ptrtoint i8* %139 to i32
  %146 = ptrtoint i8* %140 to i32
  %147 = sub i32 1, %146
  %148 = add i32 %147, %145
  %149 = sext i32 %148 to i64
  %150 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %142, i8* nonnull %140, i64 %149) #7
  %151 = load i8*, i8** %120, align 4, !tbaa !44
  %152 = load i8*, i8** %123, align 4, !tbaa !47
  call void @halide_error(i8* %151, i8* %152) #7
  br label %153

153:                                              ; preds = %144, %143
  %154 = load i8, i8* %121, align 4, !tbaa !46, !range !41
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %123, align 4, !tbaa !47
  call void @free(i8* %157) #7
  br label %158

158:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %119) #9
  br label %349

159:                                              ; preds = %112
  %160 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %160) #9
  %161 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 3
  store i8* %0, i8** %161, align 4, !tbaa !55
  %162 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 4
  store i8 1, i8* %162, align 4, !tbaa !57
  %163 = call i8* @malloc(i32 1024) #7
  %164 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 0
  store i8* %163, i8** %164, align 4, !tbaa !58
  %165 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 1
  store i8* %163, i8** %165, align 4, !tbaa !59
  %166 = icmp eq i8* %163, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds i8, i8* %163, i32 1023
  store i8 0, i8* %168, align 1, !tbaa !36
  br label %169

169:                                              ; preds = %159, %167
  %170 = phi i8* [ %168, %167 ], [ null, %159 ]
  %171 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i32 0, i32 2
  store i8* %170, i8** %171, align 4
  %172 = call i8* @halide_string_to_string(i8* %163, i8* %170, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i32 0, i32 0)) #7
  store i8* %172, i8** %165, align 4, !tbaa !59
  %173 = load i64, i64* %9, align 8, !tbaa !3
  %174 = call i8* @halide_uint64_to_string(i8* %172, i8* %170, i64 %173, i32 1) #7
  store i8* %174, i8** %165, align 4, !tbaa !59
  %175 = call i8* @halide_string_to_string(i8* %174, i8* %170, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0)) #7
  store i8* %175, i8** %165, align 4, !tbaa !59
  %176 = load i32, i32* %11, align 4, !tbaa !43
  %177 = zext i32 %176 to i64
  %178 = call i8* @halide_uint64_to_string(i8* %175, i8* %170, i64 %177, i32 1) #7
  store i8* %178, i8** %165, align 4, !tbaa !59
  %179 = call i8* @halide_opencl_get_build_options(i8* %0) #8
  %180 = call i8* @halide_string_to_string(i8* %178, i8* %170, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0)) #7
  store i8* %180, i8** %165, align 4, !tbaa !59
  %181 = icmp eq i8* %179, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %169
  %183 = call i8* @halide_string_to_string(i8* %180, i8* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %186

184:                                              ; preds = %169
  %185 = call i8* @halide_string_to_string(i8* %180, i8* %170, i8* nonnull %179) #7
  br label %186

186:                                              ; preds = %182, %184
  %187 = phi i8* [ %185, %184 ], [ %183, %182 ]
  store i8* %187, i8** %165, align 4, !tbaa !59
  %188 = bitcast [1 x i8*]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %188) #9
  %189 = getelementptr inbounds [1 x i8*], [1 x i8*]* %14, i32 0, i32 0
  store i8* %2, i8** %189, align 4, !tbaa !37
  %190 = load %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)*, %struct._cl_program* (%struct._cl_context*, i32, i8**, i32*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE, align 4, !tbaa !37
  %191 = call %struct._cl_program* %190(%struct._cl_context* %1, i32 1, i8** nonnull %189, i32* null, i32* nonnull %5) #7
  %192 = load i32, i32* %5, align 4, !tbaa !43
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %236, label %194

194:                                              ; preds = %186
  %195 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %192) #8
  %196 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %196) #9
  %197 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 3
  store i8* %0, i8** %197, align 4, !tbaa !44
  %198 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 4
  store i8 1, i8* %198, align 4, !tbaa !46
  %199 = call i8* @malloc(i32 1024) #7
  %200 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 0
  store i8* %199, i8** %200, align 4, !tbaa !47
  %201 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i32 0, i32 1
  store i8* %199, i8** %201, align 4, !tbaa !48
  %202 = icmp eq i8* %199, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %194
  %204 = getelementptr inbounds i8, i8* %199, i32 1023
  store i8 0, i8* %204, align 1, !tbaa !36
  br label %205

205:                                              ; preds = %194, %203
  %206 = phi i8* [ %204, %203 ], [ null, %194 ]
  %207 = call i8* @halide_string_to_string(i8* %199, i8* %206, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i32 0, i32 0)) #7
  %208 = load i32, i32* %5, align 4, !tbaa !43
  %209 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %208) #8
  %210 = icmp eq i8* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = call i8* @halide_string_to_string(i8* %207, i8* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %215

213:                                              ; preds = %205
  %214 = call i8* @halide_string_to_string(i8* %207, i8* %206, i8* nonnull %209) #7
  br label %215

215:                                              ; preds = %211, %213
  %216 = phi i8* [ %214, %213 ], [ %212, %211 ]
  %217 = load i8*, i8** %200, align 4, !tbaa !47
  %218 = icmp eq i8* %217, null
  %219 = load i8*, i8** %197, align 4, !tbaa !44
  br i1 %218, label %220, label %221

220:                                              ; preds = %215
  call void @halide_error(i8* %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %230

221:                                              ; preds = %215
  %222 = ptrtoint i8* %216 to i32
  %223 = ptrtoint i8* %217 to i32
  %224 = sub i32 1, %223
  %225 = add i32 %224, %222
  %226 = sext i32 %225 to i64
  %227 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %219, i8* nonnull %217, i64 %226) #7
  %228 = load i8*, i8** %197, align 4, !tbaa !44
  %229 = load i8*, i8** %200, align 4, !tbaa !47
  call void @halide_error(i8* %228, i8* %229) #7
  br label %230

230:                                              ; preds = %221, %220
  %231 = load i8, i8* %198, align 4, !tbaa !46, !range !41
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = load i8*, i8** %200, align 4, !tbaa !47
  call void @free(i8* %234) #7
  br label %235

235:                                              ; preds = %230, %233
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %196) #9
  br label %325

236:                                              ; preds = %186
  %237 = load i8*, i8** %164, align 4, !tbaa !58
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE, align 4, !tbaa !37
  br label %262

241:                                              ; preds = %236
  %242 = load i8*, i8** %161, align 4, !tbaa !55
  %243 = ptrtoint i8* %187 to i32
  %244 = ptrtoint i8* %237 to i32
  %245 = sub i32 1, %244
  %246 = add i32 %245, %243
  %247 = sext i32 %246 to i64
  %248 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %242, i8* nonnull %237, i64 %247) #7
  %249 = load i8*, i8** %164, align 4, !tbaa !58
  %250 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE, align 4, !tbaa !37
  %251 = icmp eq i8* %249, null
  br i1 %251, label %262, label %252

252:                                              ; preds = %241
  %253 = load i8*, i8** %165, align 4, !tbaa !59
  %254 = load i8*, i8** %161, align 4, !tbaa !55
  %255 = ptrtoint i8* %253 to i32
  %256 = ptrtoint i8* %249 to i32
  %257 = sub i32 1, %256
  %258 = add i32 %257, %255
  %259 = sext i32 %258 to i64
  %260 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %254, i8* nonnull %249, i64 %259) #7
  %261 = load i8*, i8** %164, align 4, !tbaa !58
  br label %262

262:                                              ; preds = %239, %241, %252
  %263 = phi i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* [ %250, %252 ], [ %250, %241 ], [ %240, %239 ]
  %264 = phi i8* [ %261, %252 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0), %241 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0), %239 ]
  %265 = call i32 %263(%struct._cl_program* %191, i32 1, %struct._cl_device_id** nonnull %65, i8* %264, void (%struct._cl_program*, i8*)* null, i8* null) #7
  store i32 %265, i32* %5, align 4, !tbaa !43
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %325, label %267

267:                                              ; preds = %262
  %268 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %268) #9
  %269 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i32 0, i32 3
  store i8* %0, i8** %269, align 4, !tbaa !60
  %270 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i32 0, i32 4
  store i8 1, i8* %270, align 4, !tbaa !62
  %271 = call i8* @malloc(i32 16384) #7
  %272 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i32 0, i32 0
  store i8* %271, i8** %272, align 4, !tbaa !63
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i32 0, i32 1
  %274 = icmp eq i8* %271, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %267
  %276 = getelementptr inbounds i8, i8* %271, i32 16383
  store i8 0, i8* %276, align 1, !tbaa !36
  br label %277

277:                                              ; preds = %267, %275
  %278 = phi i8* [ %276, %275 ], [ null, %267 ]
  %279 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i32 0, i32 2
  store i8* %278, i8** %279, align 4
  %280 = call i8* @halide_string_to_string(i8* %271, i8* %278, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0)) #7
  store i8* %280, i8** %273, align 4, !tbaa !64
  %281 = load i32, i32* %5, align 4, !tbaa !43
  %282 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %281) #8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = call i8* @halide_string_to_string(i8* %280, i8* %278, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %288

286:                                              ; preds = %277
  %287 = call i8* @halide_string_to_string(i8* %280, i8* %278, i8* nonnull %282) #7
  br label %288

288:                                              ; preds = %284, %286
  %289 = phi i8* [ %287, %286 ], [ %285, %284 ]
  %290 = load i8*, i8** %279, align 4, !tbaa !65
  %291 = call i8* @halide_string_to_string(i8* %289, i8* %290, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0)) #7
  %292 = load i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE, align 4, !tbaa !37
  %293 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 4, !tbaa !37
  %294 = load i8*, i8** %272, align 4, !tbaa !63
  %295 = ptrtoint i8* %291 to i32
  %296 = ptrtoint i8* %294 to i32
  %297 = sub i32 16383, %295
  %298 = add i32 %297, %296
  %299 = call i32 %292(%struct._cl_program* %191, %struct._cl_device_id* %293, i32 4483, i32 %298, i8* %291, i32* null) #7
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %288
  %302 = call i8* @halide_string_to_string(i8* %291, i8* %290, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.101, i32 0, i32 0)) #7
  %303 = load i8*, i8** %272, align 4, !tbaa !63
  br label %304

304:                                              ; preds = %301, %288
  %305 = phi i8* [ %302, %301 ], [ %291, %288 ]
  %306 = phi i8* [ %303, %301 ], [ %294, %288 ]
  %307 = icmp eq i8* %306, null
  %308 = load i8*, i8** %269, align 4, !tbaa !60
  br i1 %307, label %309, label %310

309:                                              ; preds = %304
  call void @halide_error(i8* %308, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %319

310:                                              ; preds = %304
  %311 = ptrtoint i8* %305 to i32
  %312 = ptrtoint i8* %306 to i32
  %313 = sub i32 1, %312
  %314 = add i32 %313, %311
  %315 = sext i32 %314 to i64
  %316 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %308, i8* nonnull %306, i64 %315) #7
  %317 = load i8*, i8** %269, align 4, !tbaa !60
  %318 = load i8*, i8** %272, align 4, !tbaa !63
  call void @halide_error(i8* %317, i8* %318) #7
  br label %319

319:                                              ; preds = %310, %309
  %320 = load i8, i8* %270, align 4, !tbaa !62, !range !41
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %319
  %323 = load i8*, i8** %272, align 4, !tbaa !63
  call void @free(i8* %323) #7
  br label %324

324:                                              ; preds = %319, %322
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %268) #9
  br label %325

325:                                              ; preds = %262, %324, %235
  %326 = phi %struct._cl_program* [ null, %235 ], [ null, %324 ], [ %191, %262 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %188) #9
  %327 = load i8*, i8** %164, align 4, !tbaa !58
  %328 = icmp eq i8* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i8*, i8** %161, align 4, !tbaa !55
  call void @halide_error(i8* %330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %340

331:                                              ; preds = %325
  %332 = load i8*, i8** %165, align 4, !tbaa !59
  %333 = load i8*, i8** %161, align 4, !tbaa !55
  %334 = ptrtoint i8* %332 to i32
  %335 = ptrtoint i8* %327 to i32
  %336 = sub i32 1, %335
  %337 = add i32 %336, %334
  %338 = sext i32 %337 to i64
  %339 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %333, i8* nonnull %327, i64 %338) #7
  br label %340

340:                                              ; preds = %331, %329
  %341 = load i8, i8* %162, align 4, !tbaa !57, !range !41
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %340
  %344 = load i8*, i8** %164, align 4, !tbaa !58
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
define weak i32 @halide_opencl_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %5 to i32
  %9 = inttoptr i32 %8 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %9, i32 0, i32 1
  %11 = load %struct._cl_mem*, %struct._cl_mem** %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %9, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !54
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.102, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %15, %7
  %17 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #9
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %18, align 4, !tbaa !66
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %19, align 4, !tbaa !68
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %20, align 4, !tbaa !69
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %21, align 4, !tbaa !70
  %22 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %23 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %25

25:                                               ; preds = %24, %16
  %26 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %19, %struct._cl_command_queue** nonnull %20, i1 zeroext true) #7
  store i32 %26, i32* %21, align 4, !tbaa !70
  %27 = load %struct._cl_context*, %struct._cl_context** %19, align 4, !tbaa !68
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
  %36 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %46

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %33, i32 1023
  store i8 0, i8* %38, align 1, !tbaa !36
  %39 = call i8* @halide_string_to_string(i8* nonnull %33, i8* nonnull %38, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %21, align 4, !tbaa !70
  br label %64

47:                                               ; preds = %25
  %48 = icmp eq i32 %26, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  %50 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #8
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.106, i32 0, i32 0)) #7
  call void @abort() #7
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 4, !tbaa !37
  %54 = call i32 %53(%struct._cl_mem* %11) #7
  %55 = load i64, i64* %4, align 8, !tbaa !22
  %56 = trunc i64 %55 to i32
  %57 = inttoptr i32 %56 to i8*
  call void @free(i8* %57) #7
  store i64 0, i64* %4, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %59 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %58, align 8, !tbaa !71
  %60 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %59, i32 0, i32 15
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %60, align 4, !tbaa !72
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i32 0, i32 1
  %63 = load void ()*, void ()** %62, align 4, !tbaa !74
  call void %63() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %58, align 8, !tbaa !71
  br label %64

64:                                               ; preds = %46, %52, %47
  %65 = phi i32 [ %26, %47 ], [ %54, %52 ], [ -1, %46 ]
  %66 = load i8*, i8** %18, align 4, !tbaa !66
  %67 = call i32 @halide_release_cl_context(i8* %66) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #9
  br label %68

68:                                               ; preds = %2, %64
  %69 = phi i32 [ %65, %64 ], [ 0, %2 ]
  ret i32 %69
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_opencl_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %5 = alloca [1 x %struct._cl_device_id*], align 4
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = load i8*, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 4, !tbaa !37
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4, !tbaa !43
  store i32 0, i32* %1, align 4, !tbaa !43
  ret i32 0

15:                                               ; preds = %11, %3
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 0
  store i8* %0, i8** %17, align 4, !tbaa !66
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 4, !tbaa !68
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 4, !tbaa !69
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i32 0, i32 3
  store i32 0, i32* %20, align 4, !tbaa !70
  %21 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %22 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 4, !tbaa !70
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 4, !tbaa !68
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
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %20, align 4, !tbaa !70
  br label %158

46:                                               ; preds = %24
  %47 = icmp eq i32 %25, 0
  br i1 %47, label %48, label %158

48:                                               ; preds = %46
  %49 = bitcast [1 x %struct._cl_device_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %49) #9
  %50 = load i32 (%struct._cl_context*, i32, i32, i8*, i32*)*, i32 (%struct._cl_context*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE, align 4, !tbaa !37
  %51 = call i32 %50(%struct._cl_context* nonnull %26, i32 4225, i32 4, i8* nonnull %49, i32* null) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %48
  %54 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %54) #9
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3
  store i8* %0, i8** %55, align 4, !tbaa !44
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4
  store i8 1, i8* %56, align 4, !tbaa !46
  %57 = call i8* @malloc(i32 1024) #7
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0
  store i8* %57, i8** %58, align 4, !tbaa !47
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1
  store i8* %57, i8** %59, align 4, !tbaa !48
  %60 = icmp eq i8* %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %62, align 1, !tbaa !36
  br label %63

63:                                               ; preds = %53, %61
  %64 = phi i8* [ %62, %61 ], [ null, %53 ]
  %65 = call i8* @halide_string_to_string(i8* %57, i8* %64, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i32 0, i32 0)) #7
  %66 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %51) #8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i8* @halide_string_to_string(i8* %65, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %72

70:                                               ; preds = %63
  %71 = call i8* @halide_string_to_string(i8* %65, i8* %64, i8* nonnull %66) #7
  br label %72

72:                                               ; preds = %68, %70
  %73 = phi i8* [ %71, %70 ], [ %69, %68 ]
  %74 = load i8*, i8** %58, align 4, !tbaa !47
  %75 = icmp eq i8* %74, null
  %76 = load i8*, i8** %55, align 4, !tbaa !44
  br i1 %75, label %77, label %78

77:                                               ; preds = %72
  call void @halide_error(i8* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %87

78:                                               ; preds = %72
  %79 = ptrtoint i8* %73 to i32
  %80 = ptrtoint i8* %74 to i32
  %81 = sub i32 1, %80
  %82 = add i32 %81, %79
  %83 = sext i32 %82 to i64
  %84 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %76, i8* nonnull %74, i64 %83) #7
  %85 = load i8*, i8** %55, align 4, !tbaa !44
  %86 = load i8*, i8** %58, align 4, !tbaa !47
  call void @halide_error(i8* %85, i8* %86) #7
  br label %87

87:                                               ; preds = %78, %77
  %88 = load i8, i8* %56, align 4, !tbaa !46, !range !41
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %58, align 4, !tbaa !47
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
  %96 = load i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)*, i32 (%struct._cl_device_id*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 4, !tbaa !37
  %97 = load %struct._cl_device_id*, %struct._cl_device_id** %94, align 4, !tbaa !37
  %98 = call i32 %96(%struct._cl_device_id* %97, i32 4143, i32 256, i8* nonnull %95, i32* null) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %140, label %100

100:                                              ; preds = %93
  %101 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %101) #9
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3
  store i8* %0, i8** %102, align 4, !tbaa !44
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4
  store i8 1, i8* %103, align 4, !tbaa !46
  %104 = call i8* @malloc(i32 1024) #7
  %105 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0
  store i8* %104, i8** %105, align 4, !tbaa !47
  %106 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1
  store i8* %104, i8** %106, align 4, !tbaa !48
  %107 = icmp eq i8* %104, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds i8, i8* %104, i32 1023
  store i8 0, i8* %109, align 1, !tbaa !36
  br label %110

110:                                              ; preds = %100, %108
  %111 = phi i8* [ %109, %108 ], [ null, %100 ]
  %112 = call i8* @halide_string_to_string(i8* %104, i8* %111, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0)) #7
  %113 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %98) #8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i8* @halide_string_to_string(i8* %112, i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %119

117:                                              ; preds = %110
  %118 = call i8* @halide_string_to_string(i8* %112, i8* %111, i8* nonnull %113) #7
  br label %119

119:                                              ; preds = %115, %117
  %120 = phi i8* [ %118, %117 ], [ %116, %115 ]
  %121 = load i8*, i8** %105, align 4, !tbaa !47
  %122 = icmp eq i8* %121, null
  %123 = load i8*, i8** %102, align 4, !tbaa !44
  br i1 %122, label %124, label %125

124:                                              ; preds = %119
  call void @halide_error(i8* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %134

125:                                              ; preds = %119
  %126 = ptrtoint i8* %120 to i32
  %127 = ptrtoint i8* %121 to i32
  %128 = sub i32 1, %127
  %129 = add i32 %128, %126
  %130 = sext i32 %129 to i64
  %131 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %123, i8* nonnull %121, i64 %130) #7
  %132 = load i8*, i8** %102, align 4, !tbaa !44
  %133 = load i8*, i8** %105, align 4, !tbaa !47
  call void @halide_error(i8* %132, i8* %133) #7
  br label %134

134:                                              ; preds = %125, %124
  %135 = load i8, i8* %103, align 4, !tbaa !46, !range !41
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %105, align 4, !tbaa !47
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
  %145 = load i8, i8* %144, align 1, !tbaa !36
  %146 = sext i8 %145 to i32
  %147 = add nsw i32 %146, -48
  store i32 %147, i32* %1, align 4, !tbaa !43
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 9
  %149 = load i8, i8* %148, align 1, !tbaa !36
  %150 = sext i8 %149 to i32
  %151 = add nsw i32 %150, -48
  store i32 %151, i32* %2, align 4, !tbaa !43
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
  %161 = load i8*, i8** %17, align 4, !tbaa !66
  %162 = call i32 @halide_release_cl_context(i8* %161) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #9
  %163 = icmp eq i32 %160, 0
  %164 = select i1 %163, i32 0, i32 %159
  ret i32 %164
}

declare i32 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_opencl_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %6 = alloca %struct._cl_program*, align 4
  %7 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 0
  store i8* %0, i8** %8, align 4, !tbaa !66
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %9, align 4, !tbaa !68
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %10, align 4, !tbaa !69
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 3
  store i32 0, i32* %11, align 4, !tbaa !70
  %12 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %13 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %9, %struct._cl_command_queue** nonnull %10, i1 zeroext true) #7
  store i32 %16, i32* %11, align 4, !tbaa !70
  %17 = load %struct._cl_context*, %struct._cl_context** %9, align 4, !tbaa !68
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
  %26 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i32 1023
  store i8 0, i8* %28, align 1, !tbaa !36
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %11, align 4, !tbaa !70
  br label %48

37:                                               ; preds = %15
  %38 = icmp eq i32 %16, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = bitcast %struct._cl_program** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40) #9
  %41 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i8* %0, i8** %1, %struct._cl_context* nonnull %17, %struct._cl_program** nonnull align 4 dereferenceable(4) %6, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal6OpenCL14compile_kernelEPvP11_cl_contextPKci, i8* %0, %struct._cl_context* nonnull %17, i8* %2, i32 %3) #8
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct._cl_program*, %struct._cl_program** %6, align 4, !tbaa !37
  %44 = icmp eq %struct._cl_program* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.115, i32 0, i32 0)) #7
  call void @abort() #7
  br label %46

46:                                               ; preds = %42, %45, %39
  %47 = phi i32 [ -1, %39 ], [ 0, %45 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40) #9
  br label %48

48:                                               ; preds = %36, %37, %46
  %49 = phi i32 [ %47, %46 ], [ %16, %37 ], [ -1, %36 ]
  %50 = load i8*, i8** %8, align 4, !tbaa !66
  %51 = call i32 @halide_release_cl_context(i8* %50) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  ret i32 %49
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %struct._cl_context* %3, %struct._cl_program** nonnull align 4 dereferenceable(4) %4, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* %5, i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) local_unnamed_addr #4 comdat align 2 {
  %11 = alloca %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", align 4
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %12) #7
  %13 = bitcast i8** %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4
  %18 = load i32, i32* %17, align 4, !tbaa !76
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !76
  store i32 %18, i32* %13, align 4, !tbaa !43
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !79
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %20
  %26 = ptrtoint %struct._cl_context* %3 to i32
  %27 = add i32 %21, %26
  %28 = mul i32 %27, -1640531527
  %29 = sub i32 32, %23
  %30 = lshr i32 %28, %29
  %31 = shl nuw i32 1, %23
  %32 = icmp eq i32 %23, 31
  br i1 %32, label %59, label %33

33:                                               ; preds = %25
  %34 = add nsw i32 %31, -1
  %35 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %36 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %35, align 4, !tbaa !80
  br label %39

37:                                               ; preds = %46
  %38 = icmp slt i32 %52, %31
  br i1 %38, label %39, label %59, !llvm.loop !81

39:                                               ; preds = %37, %33
  %40 = phi i32 [ 0, %33 ], [ %52, %37 ]
  %41 = add i32 %40, %30
  %42 = and i32 %41, %34
  %43 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %42, i32 2
  %44 = load i32, i32* %43, align 4, !tbaa !82
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %42, i32 0
  %48 = load %struct._cl_context*, %struct._cl_context** %47, align 4, !tbaa !84
  %49 = icmp eq %struct._cl_context* %48, %3
  %50 = icmp eq i32 %44, %21
  %51 = and i1 %50, %49
  %52 = add nuw nsw i32 %40, 1
  br i1 %51, label %53, label %37

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %42, i32 1
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %36, i32 %42, i32 3
  %56 = load i32, i32* %55, align 4, !tbaa !85
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4, !tbaa !85
  %58 = load %struct._cl_program*, %struct._cl_program** %54, align 4, !tbaa !37
  store %struct._cl_program* %58, %struct._cl_program** %4, align 4, !tbaa !37
  br label %71

59:                                               ; preds = %39, %37, %25, %20
  %60 = tail call %struct._cl_program* %5(i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) #7
  %61 = icmp eq %struct._cl_program* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %63) #9
  %64 = load i32, i32* %13, align 4, !tbaa !43
  %65 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 0
  store %struct._cl_context* %3, %struct._cl_context** %65, align 4, !tbaa !84
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 1
  store %struct._cl_program* %60, %struct._cl_program** %66, align 4, !tbaa !86
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 2
  store i32 %64, i32* %67, align 4, !tbaa !82
  %68 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i32 0, i32 3
  store i32 1, i32* %68, align 4, !tbaa !85
  %69 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %11) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #9
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store %struct._cl_program* %60, %struct._cl_program** %4, align 4, !tbaa !37
  br label %71

71:                                               ; preds = %70, %59, %62, %53
  %72 = phi i1 [ true, %53 ], [ true, %70 ], [ false, %59 ], [ false, %62 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %12) #7
  ret i1 %72
}

; Function Attrs: nounwind
define weak void @halide_opencl_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %5, align 4, !tbaa !66
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %6, align 4, !tbaa !68
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %7, align 4, !tbaa !69
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %8, align 4, !tbaa !70
  %9 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %10 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %6, %struct._cl_command_queue** nonnull %7, i1 zeroext true) #7
  store i32 %13, i32* %8, align 4, !tbaa !70
  %14 = load %struct._cl_context*, %struct._cl_context** %6, align 4, !tbaa !68
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
  %23 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i32 1023
  store i8 0, i8* %25, align 1, !tbaa !36
  %26 = call i8* @halide_string_to_string(i8* nonnull %20, i8* nonnull %25, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %8, align 4, !tbaa !70
  br label %72

34:                                               ; preds = %12
  %35 = icmp eq i32 %13, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %34
  %37 = ptrtoint i8* %1 to i32
  %38 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !79
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %36
  %41 = ptrtoint %struct._cl_context* %14 to i32
  %42 = add i32 %41, %37
  %43 = mul i32 %42, -1640531527
  %44 = sub i32 32, %38
  %45 = lshr i32 %43, %44
  %46 = shl nuw i32 1, %38
  %47 = icmp eq i32 %38, 31
  br i1 %47, label %71, label %48

48:                                               ; preds = %40
  %49 = add nsw i32 %46, -1
  %50 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !80
  br label %53

51:                                               ; preds = %60
  %52 = icmp slt i32 %66, %46
  br i1 %52, label %53, label %71, !llvm.loop !81

53:                                               ; preds = %51, %48
  %54 = phi i32 [ 0, %48 ], [ %66, %51 ]
  %55 = add i32 %54, %45
  %56 = and i32 %55, %49
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %56, i32 2
  %58 = load i32, i32* %57, align 4, !tbaa !82
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %56, i32 0
  %62 = load %struct._cl_context*, %struct._cl_context** %61, align 4, !tbaa !84
  %63 = icmp eq %struct._cl_context* %62, %14
  %64 = icmp eq i32 %58, %37
  %65 = and i1 %64, %63
  %66 = add nuw nsw i32 %54, 1
  br i1 %65, label %67, label %51

67:                                               ; preds = %60
  %68 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %50, i32 %56, i32 3
  %69 = load i32, i32* %68, align 4, !tbaa !85
  %70 = add i32 %69, -1
  store i32 %70, i32* %68, align 4, !tbaa !85
  br label %72

71:                                               ; preds = %53, %51, %40, %36
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.281, i32 0, i32 0)) #7
  call void @abort() #7
  br label %72

72:                                               ; preds = %71, %67, %33, %34
  %73 = load i8*, i8** %5, align 4, !tbaa !66
  %74 = call i32 @halide_release_cl_context(i8* %73) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %6, align 4, !tbaa !66
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %7, align 4, !tbaa !68
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %8, align 4, !tbaa !69
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %9, align 4, !tbaa !70
  %10 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %11 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %7, %struct._cl_command_queue** nonnull %8, i1 zeroext true) #7
  store i32 %14, i32* %9, align 4, !tbaa !70
  %15 = load %struct._cl_context*, %struct._cl_context** %7, align 4, !tbaa !68
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
  %24 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %34

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i32 1023
  store i8 0, i8* %26, align 1, !tbaa !36
  %27 = call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %9, align 4, !tbaa !70
  br label %81

35:                                               ; preds = %13
  %36 = icmp eq i32 %14, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %35
  %38 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 4, !tbaa !37
  %39 = call i32 %38(%struct._cl_command_queue* nonnull %17) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %37
  %42 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %42) #9
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3
  store i8* %0, i8** %43, align 4, !tbaa !44
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4
  store i8 1, i8* %44, align 4, !tbaa !46
  %45 = call i8* @malloc(i32 1024) #7
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0
  store i8* %45, i8** %46, align 4, !tbaa !47
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1
  store i8* %45, i8** %47, align 4, !tbaa !48
  %48 = icmp eq i8* %45, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds i8, i8* %45, i32 1023
  store i8 0, i8* %50, align 1, !tbaa !36
  br label %51

51:                                               ; preds = %41, %49
  %52 = phi i8* [ %50, %49 ], [ null, %41 ]
  %53 = call i8* @halide_string_to_string(i8* %45, i8* %52, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.118, i32 0, i32 0)) #7
  %54 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %39) #8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i8* @halide_string_to_string(i8* %53, i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %60

58:                                               ; preds = %51
  %59 = call i8* @halide_string_to_string(i8* %53, i8* %52, i8* nonnull %54) #7
  br label %60

60:                                               ; preds = %56, %58
  %61 = phi i8* [ %59, %58 ], [ %57, %56 ]
  %62 = load i8*, i8** %46, align 4, !tbaa !47
  %63 = icmp eq i8* %62, null
  %64 = load i8*, i8** %43, align 4, !tbaa !44
  br i1 %63, label %65, label %66

65:                                               ; preds = %60
  call void @halide_error(i8* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %75

66:                                               ; preds = %60
  %67 = ptrtoint i8* %61 to i32
  %68 = ptrtoint i8* %62 to i32
  %69 = sub i32 1, %68
  %70 = add i32 %69, %67
  %71 = sext i32 %70 to i64
  %72 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %64, i8* nonnull %62, i64 %71) #7
  %73 = load i8*, i8** %43, align 4, !tbaa !44
  %74 = load i8*, i8** %46, align 4, !tbaa !47
  call void @halide_error(i8* %73, i8* %74) #7
  br label %75

75:                                               ; preds = %66, %65
  %76 = load i8, i8* %44, align 4, !tbaa !46, !range !41
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %46, align 4, !tbaa !47
  call void @free(i8* %79) #7
  br label %80

80:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %42) #9
  br label %81

81:                                               ; preds = %34, %80, %37, %35
  %82 = phi i32 [ %14, %35 ], [ %39, %80 ], [ 0, %37 ], [ -1, %34 ]
  %83 = load i8*, i8** %6, align 4, !tbaa !66
  %84 = call i32 @halide_release_cl_context(i8* %83) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  ret i32 %82
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_release(i8* %0) #4 {
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
  %9 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !37
  %10 = icmp eq %struct._cl_context* %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %8
  %12 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 4, !tbaa !37
  %13 = load %struct._cl_command_queue*, %struct._cl_command_queue** %3, align 4, !tbaa !37
  %14 = call i32 %12(%struct._cl_command_queue* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.120, i32 0, i32 0)) #7
  call void @abort() #7
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  %19 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !87
  %20 = icmp eq i32 %19, 0
  %21 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 1), align 4
  %22 = icmp eq i32 %21, 31
  %23 = or i1 %20, %22
  br i1 %23, label %58, label %24

24:                                               ; preds = %17
  %25 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !80
  br label %26

26:                                               ; preds = %52, %24
  %27 = phi i32 [ %53, %52 ], [ %21, %24 ]
  %28 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %54, %52 ], [ %25, %24 ]
  %29 = phi i32 [ %55, %52 ], [ 0, %24 ]
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 2
  %31 = load i32, i32* %30, align 4, !tbaa !82
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 4, !tbaa !84
  %36 = icmp eq %struct._cl_context* %35, %18
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 3
  %39 = load i32, i32* %38, align 4, !tbaa !85
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE, align 4, !tbaa !37
  %43 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i32 %29, i32 1
  %44 = load %struct._cl_program*, %struct._cl_program** %43, align 4, !tbaa !86
  %45 = call i32 %42(%struct._cl_program* %44) #7
  %46 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !80
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i32 %29, i32 1
  store %struct._cl_program* null, %struct._cl_program** %47, align 4, !tbaa !86
  %48 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i32 %29, i32 2
  store i32 1, i32* %48, align 4, !tbaa !82
  %49 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !87
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !87
  %51 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !79
  br label %52

52:                                               ; preds = %41, %37, %33, %26
  %53 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %27, %37 ], [ %51, %41 ]
  %54 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %28, %26 ], [ %28, %33 ], [ %28, %37 ], [ %46, %41 ]
  %55 = add nuw nsw i32 %29, 1
  %56 = shl nuw i32 1, %53
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %26, label %58, !llvm.loop !88

58:                                               ; preds = %52, %17
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  %59 = load %struct._cl_context*, %struct._cl_context** %2, align 4, !tbaa !37
  %60 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 4, !tbaa !37
  %61 = icmp eq %struct._cl_context* %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE, align 4, !tbaa !37
  %64 = load %struct._cl_command_queue*, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 4, !tbaa !37
  %65 = call i32 %63(%struct._cl_command_queue* %64) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.122, i32 0, i32 0)) #7
  call void @abort() #7
  br label %68

68:                                               ; preds = %67, %62
  store %struct._cl_command_queue* null, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 4, !tbaa !37
  %69 = load i32 (%struct._cl_context*)*, i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE, align 4, !tbaa !37
  %70 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 4, !tbaa !37
  %71 = call i32 %69(%struct._cl_context* %70) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.124, i32 0, i32 0)) #7
  call void @abort() #7
  br label %74

74:                                               ; preds = %73, %68
  store %struct._cl_context* null, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 4, !tbaa !37
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
define weak i32 @halide_opencl_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 4, !tbaa !68
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %10, align 4, !tbaa !70
  %11 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %12 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %2
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 4, !tbaa !70
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !68
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
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i32 1023
  store i8 0, i8* %27, align 1, !tbaa !36
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %10, align 4, !tbaa !70
  br label %189

36:                                               ; preds = %14
  %37 = icmp eq i32 %15, 0
  br i1 %37, label %38, label %189

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %40 = load i32, i32* %39, align 4, !tbaa !24
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %44 = load i8, i8* %43, align 1, !tbaa !23
  br label %83

45:                                               ; preds = %38
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
  br i1 %63, label %48, label %64, !llvm.loop !89

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
  br i1 %82, label %67, label %83, !llvm.loop !90

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
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.126, i32 0, i32 0)) #7
  call void @abort() #7
  br label %95

95:                                               ; preds = %94, %83
  %96 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !22
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %39, align 4, !tbaa !24
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %110

104:                                              ; preds = %95
  %105 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %92) #8
  br i1 %105, label %189, label %106

106:                                              ; preds = %104
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.127, i32 0, i32 0)) #7
  call void @abort() #7
  br label %189

107:                                              ; preds = %119, %99
  %108 = call i8* @malloc(i32 16) #7
  %109 = icmp eq i8* %108, null
  br i1 %109, label %189, label %123

110:                                              ; preds = %102, %119
  %111 = phi i32 [ %100, %102 ], [ %120, %119 ]
  %112 = phi i32 [ 0, %102 ], [ %121, %119 ]
  %113 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %103, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %113, i32 %112, i32 2
  %115 = load i32, i32* %114, align 4, !tbaa !26
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.128, i32 0, i32 0)) #7
  call void @abort() #7
  %118 = load i32, i32* %39, align 4, !tbaa !24
  br label %119

119:                                              ; preds = %110, %117
  %120 = phi i32 [ %111, %110 ], [ %118, %117 ]
  %121 = add nuw nsw i32 %112, 1
  %122 = icmp slt i32 %121, %120
  br i1 %122, label %110, label %107, !llvm.loop !91

123:                                              ; preds = %107
  %124 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124) #9
  %125 = load %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE, align 4, !tbaa !37
  %126 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !68
  %127 = call %struct._cl_mem* %125(%struct._cl_context* %126, i64 1, i32 %92, i8* null, i32* nonnull %4) #7
  %128 = load i32, i32* %4, align 4, !tbaa !43
  %129 = icmp ne i32 %128, 0
  %130 = icmp eq %struct._cl_mem* %127, null
  %131 = or i1 %130, %129
  br i1 %131, label %132, label %175

132:                                              ; preds = %123
  %133 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %128) #8
  %134 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %134) #9
  %135 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %135, align 4, !tbaa !44
  %136 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %136, align 4, !tbaa !46
  %137 = call i8* @malloc(i32 1024) #7
  %138 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %137, i8** %138, align 4, !tbaa !47
  %139 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  store i8* %137, i8** %139, align 4, !tbaa !48
  %140 = icmp eq i8* %137, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds i8, i8* %137, i32 1023
  store i8 0, i8* %142, align 1, !tbaa !36
  br label %143

143:                                              ; preds = %132, %141
  %144 = phi i8* [ %142, %141 ], [ null, %132 ]
  %145 = call i8* @halide_string_to_string(i8* %137, i8* %144, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i32 0, i32 0)) #7
  %146 = load i32, i32* %4, align 4, !tbaa !43
  %147 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %146) #8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i8* @halide_string_to_string(i8* %145, i8* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %153

151:                                              ; preds = %143
  %152 = call i8* @halide_string_to_string(i8* %145, i8* %144, i8* nonnull %147) #7
  br label %153

153:                                              ; preds = %149, %151
  %154 = phi i8* [ %152, %151 ], [ %150, %149 ]
  %155 = load i8*, i8** %138, align 4, !tbaa !47
  %156 = icmp eq i8* %155, null
  %157 = load i8*, i8** %135, align 4, !tbaa !44
  br i1 %156, label %158, label %159

158:                                              ; preds = %153
  call void @halide_error(i8* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %168

159:                                              ; preds = %153
  %160 = ptrtoint i8* %154 to i32
  %161 = ptrtoint i8* %155 to i32
  %162 = sub i32 1, %161
  %163 = add i32 %162, %160
  %164 = sext i32 %163 to i64
  %165 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %157, i8* nonnull %155, i64 %164) #7
  %166 = load i8*, i8** %135, align 4, !tbaa !44
  %167 = load i8*, i8** %138, align 4, !tbaa !47
  call void @halide_error(i8* %166, i8* %167) #7
  br label %168

168:                                              ; preds = %159, %158
  %169 = load i8, i8* %136, align 4, !tbaa !46, !range !41
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %138, align 4, !tbaa !47
  call void @free(i8* %172) #7
  br label %173

173:                                              ; preds = %168, %171
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %134) #9
  call void @free(i8* nonnull %108) #7
  %174 = load i32, i32* %4, align 4, !tbaa !43
  br label %187

175:                                              ; preds = %123
  %176 = getelementptr inbounds i8, i8* %108, i32 8
  %177 = bitcast i8* %176 to %struct._cl_mem**
  store %struct._cl_mem* %127, %struct._cl_mem** %177, align 8, !tbaa !52
  %178 = bitcast i8* %108 to i64*
  store i64 0, i64* %178, align 8, !tbaa !54
  %179 = ptrtoint i8* %108 to i32
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %96, align 8, !tbaa !22
  %181 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, %struct.halide_device_interface_t** %181, align 8, !tbaa !71
  %182 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, i32 0, i32 15), align 4, !tbaa !72
  %183 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %182, i32 0, i32 0
  %184 = load void ()*, void ()** %183, align 4, !tbaa !92
  call void %184() #7
  %185 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %92) #8
  br i1 %185, label %187, label %186

186:                                              ; preds = %175
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.135, i32 0, i32 0)) #7
  call void @abort() #7
  br label %187

187:                                              ; preds = %175, %186, %173
  %188 = phi i32 [ %174, %173 ], [ 0, %186 ], [ 0, %175 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #9
  br label %189

189:                                              ; preds = %35, %106, %104, %107, %187, %36
  %190 = phi i32 [ %15, %36 ], [ 0, %106 ], [ 0, %104 ], [ %188, %187 ], [ -6, %107 ], [ -1, %35 ]
  %191 = load i8*, i8** %7, align 4, !tbaa !66
  %192 = call i32 @halide_release_cl_context(i8* %191) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret i32 %190
}

declare i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %3, i64 %4, i32 %5, i1 zeroext %6, i1 zeroext %7) local_unnamed_addr #4 {
  %9 = icmp sgt i32 %5, 16
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  %11 = tail call i8* @malloc(i32 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.136, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.136, i32 0, i32 0)) #7
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
  %43 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE, align 4, !tbaa !37
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %45 = load %struct._cl_command_queue*, %struct._cl_command_queue** %44, align 4, !tbaa !69
  %46 = load i64, i64* %37, align 8, !tbaa !9
  %47 = trunc i64 %46 to i32
  %48 = inttoptr i32 %47 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %48, i32 0, i32 1
  %50 = load %struct._cl_mem*, %struct._cl_mem** %49, align 8, !tbaa !52
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %48, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !54
  %53 = add i64 %52, %3
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %39, align 8, !tbaa !12
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* %38, align 8, !tbaa !11
  %58 = add i64 %57, %4
  %59 = trunc i64 %58 to i32
  %60 = inttoptr i32 %59 to i8*
  %61 = tail call i32 %43(%struct._cl_command_queue* %45, %struct._cl_mem* %50, i32 0, i32 %54, i32 %56, i8* %60, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

62:                                               ; preds = %36
  %63 = xor i1 %6, true
  %64 = or i1 %63, %7
  br i1 %64, label %85, label %65

65:                                               ; preds = %62
  %66 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE, align 4, !tbaa !37
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %68 = load %struct._cl_command_queue*, %struct._cl_command_queue** %67, align 4, !tbaa !69
  %69 = load i64, i64* %38, align 8, !tbaa !11
  %70 = trunc i64 %69 to i32
  %71 = inttoptr i32 %70 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %71, i32 0, i32 1
  %73 = load %struct._cl_mem*, %struct._cl_mem** %72, align 8, !tbaa !52
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %71, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !54
  %76 = add i64 %75, %4
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %39, align 8, !tbaa !12
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %37, align 8, !tbaa !9
  %81 = add i64 %80, %3
  %82 = trunc i64 %81 to i32
  %83 = inttoptr i32 %82 to i8*
  %84 = tail call i32 %66(%struct._cl_command_queue* %68, %struct._cl_mem* %73, i32 0, i32 %77, i32 %79, i8* %83, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

85:                                               ; preds = %62
  %86 = or i1 %6, %7
  br i1 %86, label %112, label %87

87:                                               ; preds = %85
  %88 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i32, i32, i32, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE, align 4, !tbaa !37
  %89 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i32 0, i32 2
  %90 = load %struct._cl_command_queue*, %struct._cl_command_queue** %89, align 4, !tbaa !69
  %91 = load i64, i64* %37, align 8, !tbaa !9
  %92 = trunc i64 %91 to i32
  %93 = inttoptr i32 %92 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %93, i32 0, i32 1
  %95 = load %struct._cl_mem*, %struct._cl_mem** %94, align 8, !tbaa !52
  %96 = load i64, i64* %38, align 8, !tbaa !11
  %97 = trunc i64 %96 to i32
  %98 = inttoptr i32 %97 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %98, i32 0, i32 1
  %100 = load %struct._cl_mem*, %struct._cl_mem** %99, align 8, !tbaa !52
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %93, i32 0, i32 0
  %102 = load i64, i64* %101, align 8, !tbaa !54
  %103 = add i64 %102, %3
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %98, i32 0, i32 0
  %106 = load i64, i64* %105, align 8, !tbaa !54
  %107 = add i64 %106, %4
  %108 = trunc i64 %107 to i32
  %109 = load i64, i64* %39, align 8, !tbaa !12
  %110 = trunc i64 %109 to i32
  %111 = tail call i32 %88(%struct._cl_command_queue* %90, %struct._cl_mem* %95, %struct._cl_mem* %100, i32 %104, i32 %108, i32 %110, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %126

112:                                              ; preds = %85
  %113 = load i64, i64* %38, align 8, !tbaa !11
  %114 = add i64 %113, %4
  %115 = load i64, i64* %37, align 8, !tbaa !9
  %116 = add i64 %115, %3
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %175, label %118

118:                                              ; preds = %112
  %119 = trunc i64 %114 to i32
  %120 = inttoptr i32 %119 to i8*
  %121 = trunc i64 %116 to i32
  %122 = inttoptr i32 %121 to i8*
  %123 = load i64, i64* %39, align 8, !tbaa !12
  %124 = trunc i64 %123 to i32
  %125 = tail call i8* @memcpy(i8* %120, i8* %122, i32 %124) #7
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
  store i8 0, i8* %133, align 1, !tbaa !36
  br label %134

134:                                              ; preds = %129, %132
  %135 = phi i8* [ %133, %132 ], [ null, %129 ]
  %136 = tail call i8* @halide_string_to_string(i8* %130, i8* %135, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i32 0, i32 0)) #7
  %137 = tail call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %127) #8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = tail call i8* @halide_string_to_string(i8* %136, i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %143

141:                                              ; preds = %134
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %135, i8* nonnull %137) #7
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi i8* [ %142, %141 ], [ %140, %139 ]
  br i1 %131, label %145, label %146

145:                                              ; preds = %143
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
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
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %3
  %160 = sext i32 %156 to i64
  %161 = add nsw i64 %160, %4
  %162 = tail call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %159, i64 %161, i32 %28, i1 zeroext %6, i1 zeroext %7) #8
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
  br i1 %174, label %154, label %175, !llvm.loop !93

175:                                              ; preds = %164, %154, %27, %112, %118, %126, %153, %24
  %176 = phi i32 [ -1, %24 ], [ %127, %153 ], [ 0, %126 ], [ 0, %118 ], [ 0, %112 ], [ 0, %27 ], [ 0, %164 ], [ %162, %154 ]
  ret i32 %176
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %7 = icmp eq %struct.halide_device_interface_t* %2, null
  %8 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.146, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !94
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
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !71
  %23 = icmp eq %struct.halide_device_interface_t* %22, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  br i1 %8, label %96, label %25

25:                                               ; preds = %24
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.147, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %96

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !71
  %29 = icmp eq %struct.halide_device_interface_t* %28, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.149, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %50) #9
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %43, %struct.halide_buffer_t* %3, i1 zeroext %7) #8
  %51 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #9
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 0
  store i8* %0, i8** %52, align 4, !tbaa !66
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %53, align 4, !tbaa !68
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %54, align 4, !tbaa !69
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 3
  store i32 0, i32* %55, align 4, !tbaa !70
  %56 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %57 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %59

59:                                               ; preds = %58, %49
  %60 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %53, %struct._cl_command_queue** nonnull %54, i1 zeroext true) #7
  store i32 %60, i32* %55, align 4, !tbaa !70
  %61 = load %struct._cl_context*, %struct._cl_context** %53, align 4, !tbaa !68
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
  %70 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %80

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i32 1023
  store i8 0, i8* %72, align 1, !tbaa !36
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %55, align 4, !tbaa !70
  br label %92

81:                                               ; preds = %59
  %82 = icmp eq i32 %60, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %81
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 2
  %85 = load i64, i64* %84, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %87 = load i32, i32* %86, align 4, !tbaa !24
  %88 = call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 4 dereferenceable(16) %6, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %85, i64 0, i32 %87, i1 zeroext %43, i1 zeroext %7) #8
  %89 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 4, !tbaa !37
  %90 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 4, !tbaa !69
  %91 = call i32 %89(%struct._cl_command_queue* %90) #7
  br label %92

92:                                               ; preds = %80, %81, %83
  %93 = phi i32 [ %88, %83 ], [ %60, %81 ], [ -1, %80 ]
  %94 = load i8*, i8** %52, align 4, !tbaa !66
  %95 = call i32 @halide_release_cl_context(i8* %94) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %50) #9
  br label %96

96:                                               ; preds = %25, %24, %92
  %97 = phi i32 [ %93, %92 ], [ -42, %24 ], [ -42, %25 ]
  ret i32 %97
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
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
  store i8* %0, i8** %32, align 4, !tbaa !66
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %33, align 4, !tbaa !68
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %34, align 4, !tbaa !69
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i32 0, i32 3
  store i32 0, i32* %35, align 4, !tbaa !70
  %36 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %37 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %39

39:                                               ; preds = %38, %17
  %40 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %33, %struct._cl_command_queue** nonnull %34, i1 zeroext true) #7
  store i32 %40, i32* %35, align 4, !tbaa !70
  %41 = load %struct._cl_context*, %struct._cl_context** %33, align 4, !tbaa !68
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
  %50 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %60

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %47, i32 1023
  store i8 0, i8* %52, align 1, !tbaa !36
  %53 = call i8* @halide_string_to_string(i8* nonnull %47, i8* nonnull %52, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %35, align 4, !tbaa !70
  br label %507

61:                                               ; preds = %39
  %62 = icmp eq i32 %40, 0
  br i1 %62, label %63, label %507

63:                                               ; preds = %61
  %64 = icmp eq i8* %1, null
  br i1 %64, label %97, label %65

65:                                               ; preds = %63
  %66 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 4, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  %67 = ptrtoint i8* %1 to i32
  %68 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !79
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %65
  %71 = ptrtoint %struct._cl_context* %41 to i32
  %72 = add i32 %71, %67
  %73 = mul i32 %72, -1640531527
  %74 = sub i32 32, %68
  %75 = lshr i32 %73, %74
  %76 = shl nuw i32 1, %68
  %77 = icmp eq i32 %68, 31
  br i1 %77, label %103, label %78

78:                                               ; preds = %70
  %79 = add nsw i32 %76, -1
  %80 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !80
  br label %83

81:                                               ; preds = %90
  %82 = icmp slt i32 %96, %76
  br i1 %82, label %83, label %103, !llvm.loop !81

83:                                               ; preds = %81, %78
  %84 = phi i32 [ 0, %78 ], [ %96, %81 ]
  %85 = add i32 %84, %75
  %86 = and i32 %85, %79
  %87 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %86, i32 2
  %88 = load i32, i32* %87, align 4, !tbaa !82
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %86, i32 0
  %92 = load %struct._cl_context*, %struct._cl_context** %91, align 4, !tbaa !84
  %93 = icmp eq %struct._cl_context* %92, %41
  %94 = icmp eq i32 %88, %67
  %95 = and i1 %94, %93
  %96 = add nuw nsw i32 %84, 1
  br i1 %95, label %99, label %81

97:                                               ; preds = %63
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.159, i32 0, i32 0)) #7
  call void @abort() #7
  %98 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %98) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 4, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  br label %103

99:                                               ; preds = %90
  %100 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %80, i32 %86, i32 1
  %101 = load %struct._cl_program*, %struct._cl_program** %100, align 4, !tbaa !37
  store %struct._cl_program* %101, %struct._cl_program** %20, align 4, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  %102 = icmp eq %struct._cl_program* %101, null
  br i1 %102, label %105, label %108

103:                                              ; preds = %83, %81, %70, %65, %97
  %104 = phi i8* [ %98, %97 ], [ %66, %65 ], [ %66, %70 ], [ %66, %81 ], [ %66, %83 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 0)) #7
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi %struct._cl_program* [ %101, %99 ], [ null, %103 ]
  %107 = phi i8* [ %66, %99 ], [ %104, %103 ]
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.160, i32 0, i32 0)) #7
  call void @abort() #7
  br label %108

108:                                              ; preds = %99, %105
  %109 = phi %struct._cl_program* [ %101, %99 ], [ %106, %105 ]
  %110 = phi i8* [ %66, %99 ], [ %107, %105 ]
  %111 = load %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)*, %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE, align 4, !tbaa !37
  %112 = call %struct._cl_kernel* %111(%struct._cl_program* %109, i8* %2, i32* nonnull %18) #7
  %113 = load i32, i32* %18, align 4, !tbaa !43
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %170, label %115

115:                                              ; preds = %108
  %116 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %113) #8
  %117 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %117) #9
  %118 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 3
  store i8* %0, i8** %118, align 4, !tbaa !44
  %119 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 4
  store i8 1, i8* %119, align 4, !tbaa !46
  %120 = call i8* @malloc(i32 1024) #7
  %121 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 0
  store i8* %120, i8** %121, align 4, !tbaa !47
  %122 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 1
  %123 = icmp eq i8* %120, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %115
  %125 = getelementptr inbounds i8, i8* %120, i32 1023
  store i8 0, i8* %125, align 1, !tbaa !36
  br label %126

126:                                              ; preds = %115, %124
  %127 = phi i8* [ %125, %124 ], [ null, %115 ]
  %128 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i32 0, i32 2
  store i8* %127, i8** %128, align 4
  %129 = call i8* @halide_string_to_string(i8* %120, i8* %127, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.162, i32 0, i32 0)) #7
  %130 = icmp eq i8* %2, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i8* @halide_string_to_string(i8* %129, i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %135

133:                                              ; preds = %126
  %134 = call i8* @halide_string_to_string(i8* %129, i8* %127, i8* nonnull %2) #7
  br label %135

135:                                              ; preds = %131, %133
  %136 = phi i8* [ %134, %133 ], [ %132, %131 ]
  store i8* %136, i8** %122, align 4, !tbaa !48
  %137 = load i8*, i8** %128, align 4, !tbaa !49
  %138 = call i8* @halide_string_to_string(i8* %136, i8* %137, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i32 0, i32 0)) #7
  %139 = load i32, i32* %18, align 4, !tbaa !43
  %140 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %139) #8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i8* @halide_string_to_string(i8* %138, i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %146

144:                                              ; preds = %135
  %145 = call i8* @halide_string_to_string(i8* %138, i8* %137, i8* nonnull %140) #7
  br label %146

146:                                              ; preds = %142, %144
  %147 = phi i8* [ %145, %144 ], [ %143, %142 ]
  %148 = load i8*, i8** %128, align 4, !tbaa !49
  %149 = call i8* @halide_string_to_string(i8* %147, i8* %148, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  %150 = load i8*, i8** %121, align 4, !tbaa !47
  %151 = icmp eq i8* %150, null
  %152 = load i8*, i8** %118, align 4, !tbaa !44
  br i1 %151, label %153, label %154

153:                                              ; preds = %146
  call void @halide_error(i8* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %163

154:                                              ; preds = %146
  %155 = ptrtoint i8* %149 to i32
  %156 = ptrtoint i8* %150 to i32
  %157 = add i32 %155, 1
  %158 = sub i32 %157, %156
  %159 = sext i32 %158 to i64
  %160 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %152, i8* nonnull %150, i64 %159) #7
  %161 = load i8*, i8** %118, align 4, !tbaa !44
  %162 = load i8*, i8** %121, align 4, !tbaa !47
  call void @halide_error(i8* %161, i8* %162) #7
  br label %163

163:                                              ; preds = %154, %153
  %164 = load i8, i8* %119, align 4, !tbaa !46, !range !41
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %121, align 4, !tbaa !47
  call void @free(i8* %167) #7
  br label %168

168:                                              ; preds = %163, %166
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %117) #9
  %169 = load i32, i32* %18, align 4, !tbaa !43
  br label %505

170:                                              ; preds = %108
  %171 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %171) #9
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 0
  %173 = mul i32 %6, %3
  store i32 %173, i32* %172, align 4, !tbaa !43
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 1
  %175 = mul i32 %7, %4
  store i32 %175, i32* %174, align 4, !tbaa !43
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i32 0, i32 2
  %177 = mul i32 %8, %5
  store i32 %177, i32* %176, align 4, !tbaa !43
  %178 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %178) #9
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 0
  store i32 %6, i32* %179, align 4, !tbaa !43
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 1
  store i32 %7, i32* %180, align 4, !tbaa !43
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i32 0, i32 2
  store i32 %8, i32* %181, align 4, !tbaa !43
  %182 = load i32, i32* %10, align 4, !tbaa !43
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %218, label %184

184:                                              ; preds = %170, %203
  %185 = phi i32 [ %204, %203 ], [ 0, %170 ]
  %186 = phi i32 [ %205, %203 ], [ 0, %170 ]
  %187 = getelementptr inbounds i8, i8* %12, i32 %186
  %188 = load i8, i8* %187, align 1, !tbaa !36
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds i8*, i8** %11, i32 %186
  %192 = bitcast i8** %191 to %struct.halide_buffer_t**
  %193 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %192, align 4, !tbaa !37
  %194 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8, !tbaa !22
  %196 = trunc i64 %195 to i32
  %197 = inttoptr i32 %196 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8, !tbaa !54
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = add nsw i32 %185, %201
  br label %203

203:                                              ; preds = %190, %184
  %204 = phi i32 [ %185, %184 ], [ %202, %190 ]
  %205 = add nuw nsw i32 %186, 1
  %206 = getelementptr inbounds i32, i32* %10, i32 %205
  %207 = load i32, i32* %206, align 4, !tbaa !43
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %184, !llvm.loop !95

209:                                              ; preds = %203
  %210 = icmp sgt i32 %204, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %209
  %212 = shl i32 %204, 2
  %213 = call i8* @malloc(i32 %212) #7
  %214 = icmp eq i8* %213, null
  br i1 %214, label %503, label %215

215:                                              ; preds = %211
  %216 = bitcast i8* %213 to %struct._cl_mem**
  %217 = call i8* @memset(i8* nonnull %213, i32 0, i32 %212) #7
  br label %218

218:                                              ; preds = %170, %215, %209
  %219 = phi %struct._cl_mem** [ %216, %215 ], [ null, %209 ], [ null, %170 ]
  %220 = bitcast i32* %24 to i8*
  %221 = bitcast %struct._cl_mem** %25 to i8*
  %222 = bitcast %struct._cl_buffer_region* %26 to i8*
  %223 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i32 0, i32 0
  %224 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i32 0, i32 1
  %225 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27 to i8*
  %226 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 3
  %227 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 4
  %228 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 0
  %229 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 1
  %230 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i32 0, i32 2
  %231 = bitcast %struct._cl_mem** %219 to i8*
  br label %232

232:                                              ; preds = %387, %218
  %233 = phi i32 [ 0, %218 ], [ %388, %387 ]
  %234 = phi i32 [ 0, %218 ], [ %334, %387 ]
  %235 = phi i32 [ undef, %218 ], [ %389, %387 ]
  %236 = getelementptr inbounds i32, i32* %10, i32 %233
  %237 = load i32, i32* %236, align 4, !tbaa !43
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %390, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds i8*, i8** %11, i32 %233
  %241 = getelementptr inbounds i8, i8* %12, i32 %233
  %242 = load i8*, i8** %240, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %220) #9
  store i32 0, i32* %24, align 4, !tbaa !43
  %243 = load i8, i8* %241, align 1, !tbaa !36
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %329, label %245

245:                                              ; preds = %239
  %246 = icmp eq i32 %237, 8
  br i1 %246, label %248, label %247

247:                                              ; preds = %245
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.167, i32 0, i32 0)) #7
  call void @abort() #7
  br label %248

248:                                              ; preds = %247, %245
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %221) #9
  %249 = bitcast i8* %242 to i64*
  %250 = load i64, i64* %249, align 8, !tbaa !22
  %251 = trunc i64 %250 to i32
  %252 = inttoptr i32 %251 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %252, i32 0, i32 1
  %254 = load %struct._cl_mem*, %struct._cl_mem** %253, align 8, !tbaa !52
  store %struct._cl_mem* %254, %struct._cl_mem** %25, align 4, !tbaa !37
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %252, i32 0, i32 0
  %256 = load i64, i64* %255, align 8, !tbaa !54
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %320, label %258

258:                                              ; preds = %248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %222) #9
  %259 = trunc i64 %256 to i32
  store i32 %259, i32* %223, align 4, !tbaa !96
  %260 = getelementptr inbounds i8, i8* %242, i32 28
  %261 = bitcast i8* %260 to i32*
  %262 = load i32, i32* %261, align 4, !tbaa !24
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds i8, i8* %242, i32 25
  %266 = load i8, i8* %265, align 1, !tbaa !23
  br label %306

267:                                              ; preds = %258
  %268 = getelementptr inbounds i8, i8* %242, i32 32
  %269 = bitcast i8* %268 to %struct.halide_dimension_t**
  %270 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %269, align 8, !tbaa !25
  br label %271

271:                                              ; preds = %283, %267
  %272 = phi i32 [ 0, %267 ], [ %285, %283 ]
  %273 = phi i32 [ 0, %267 ], [ %284, %283 ]
  %274 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %270, i32 %272, i32 2
  %275 = load i32, i32* %274, align 4, !tbaa !26
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %270, i32 %272, i32 1
  %279 = load i32, i32* %278, align 4, !tbaa !31
  %280 = add nsw i32 %279, -1
  %281 = mul nsw i32 %280, %275
  %282 = add nsw i32 %281, %273
  br label %283

283:                                              ; preds = %277, %271
  %284 = phi i32 [ %282, %277 ], [ %273, %271 ]
  %285 = add nuw nsw i32 %272, 1
  %286 = icmp slt i32 %285, %262
  br i1 %286, label %271, label %287, !llvm.loop !89

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, i8* %242, i32 25
  %289 = load i8, i8* %288, align 1, !tbaa !23
  br label %290

290:                                              ; preds = %302, %287
  %291 = phi i32 [ 0, %287 ], [ %304, %302 ]
  %292 = phi i32 [ 0, %287 ], [ %303, %302 ]
  %293 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %270, i32 %291, i32 2
  %294 = load i32, i32* %293, align 4, !tbaa !26
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %270, i32 %291, i32 1
  %298 = load i32, i32* %297, align 4, !tbaa !31
  %299 = add nsw i32 %298, -1
  %300 = mul nsw i32 %299, %294
  %301 = add nsw i32 %300, %292
  br label %302

302:                                              ; preds = %296, %290
  %303 = phi i32 [ %301, %296 ], [ %292, %290 ]
  %304 = add nuw nsw i32 %291, 1
  %305 = icmp slt i32 %304, %262
  br i1 %305, label %290, label %306, !llvm.loop !90

306:                                              ; preds = %302, %264
  %307 = phi i8 [ %266, %264 ], [ %289, %302 ]
  %308 = phi i32 [ 0, %264 ], [ %284, %302 ]
  %309 = phi i32 [ 0, %264 ], [ %303, %302 ]
  %310 = zext i8 %307 to i32
  %311 = add nuw nsw i32 %310, 7
  %312 = lshr i32 %311, 3
  %313 = add nsw i32 %308, 1
  %314 = sub i32 %313, %309
  %315 = mul i32 %314, %312
  store i32 %315, i32* %224, align 4, !tbaa !98
  %316 = load %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE, align 4, !tbaa !37
  %317 = call %struct._cl_mem* %316(%struct._cl_mem* %254, i64 1, i32 4640, i8* nonnull %222, i32* nonnull %24) #7
  store %struct._cl_mem* %317, %struct._cl_mem** %25, align 4, !tbaa !37
  %318 = add nsw i32 %234, 1
  %319 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %219, i32 %234
  store %struct._cl_mem* %317, %struct._cl_mem** %319, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %222) #9
  br label %320

320:                                              ; preds = %306, %248
  %321 = phi i32 [ %318, %306 ], [ %234, %248 ]
  %322 = load i32, i32* %24, align 4, !tbaa !43
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 4, !tbaa !37
  %326 = call i32 %325(%struct._cl_kernel* %112, i32 %233, i32 4, i8* nonnull %221) #7
  store i32 %326, i32* %24, align 4, !tbaa !43
  br label %327

327:                                              ; preds = %324, %320
  %328 = phi i32 [ %326, %324 ], [ %322, %320 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %221) #9
  br label %332

329:                                              ; preds = %239
  %330 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 4, !tbaa !37
  %331 = call i32 %330(%struct._cl_kernel* %112, i32 %233, i32 %237, i8* %242) #7
  store i32 %331, i32* %24, align 4, !tbaa !43
  br label %332

332:                                              ; preds = %329, %327
  %333 = phi i32 [ %331, %329 ], [ %328, %327 ]
  %334 = phi i32 [ %234, %329 ], [ %321, %327 ]
  %335 = icmp eq i32 %333, 0
  br i1 %335, label %385, label %336

336:                                              ; preds = %332
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %225) #9
  store i8* %0, i8** %226, align 4, !tbaa !44
  store i8 1, i8* %227, align 4, !tbaa !46
  %337 = call i8* @malloc(i32 1024) #7
  store i8* %337, i8** %228, align 4, !tbaa !47
  %338 = icmp eq i8* %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds i8, i8* %337, i32 1023
  store i8* %340, i8** %230, align 4, !tbaa !49
  store i8 0, i8* %340, align 1, !tbaa !36
  br label %342

341:                                              ; preds = %336
  store i8* null, i8** %230, align 4, !tbaa !49
  br label %342

342:                                              ; preds = %339, %341
  %343 = phi i8* [ %340, %339 ], [ null, %341 ]
  %344 = call i8* @halide_string_to_string(i8* %337, i8* %343, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.169, i32 0, i32 0)) #7
  store i8* %344, i8** %229, align 4, !tbaa !48
  %345 = load i32, i32* %24, align 4, !tbaa !43
  %346 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %345) #8
  %347 = icmp eq i8* %346, null
  %348 = load i8*, i8** %230, align 4, !tbaa !49
  br i1 %347, label %349, label %351

349:                                              ; preds = %342
  %350 = call i8* @halide_string_to_string(i8* %344, i8* %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %353

351:                                              ; preds = %342
  %352 = call i8* @halide_string_to_string(i8* %344, i8* %348, i8* nonnull %346) #7
  br label %353

353:                                              ; preds = %349, %351
  %354 = phi i8* [ %352, %351 ], [ %350, %349 ]
  %355 = load i8*, i8** %228, align 4, !tbaa !47
  %356 = icmp eq i8* %355, null
  %357 = load i8*, i8** %226, align 4, !tbaa !44
  br i1 %356, label %358, label %359

358:                                              ; preds = %353
  call void @halide_error(i8* %357, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %368

359:                                              ; preds = %353
  %360 = ptrtoint i8* %354 to i32
  %361 = ptrtoint i8* %355 to i32
  %362 = sub i32 1, %361
  %363 = add i32 %362, %360
  %364 = sext i32 %363 to i64
  %365 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %357, i8* nonnull %355, i64 %364) #7
  %366 = load i8*, i8** %226, align 4, !tbaa !44
  %367 = load i8*, i8** %228, align 4, !tbaa !47
  call void @halide_error(i8* %366, i8* %367) #7
  br label %368

368:                                              ; preds = %359, %358
  %369 = load i8, i8* %227, align 4, !tbaa !46, !range !41
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %368
  %372 = load i8*, i8** %228, align 4
  call void @free(i8* %372) #7
  br label %373

373:                                              ; preds = %368, %371
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %225) #9
  %374 = icmp sgt i32 %334, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %377, %373
  call void @free(i8* %231) #7
  %376 = load i32, i32* %24, align 4, !tbaa !43
  br label %387

377:                                              ; preds = %373, %377
  %378 = phi i32 [ %383, %377 ], [ 0, %373 ]
  %379 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 4, !tbaa !37
  %380 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %219, i32 %378
  %381 = load %struct._cl_mem*, %struct._cl_mem** %380, align 4, !tbaa !37
  %382 = call i32 %379(%struct._cl_mem* %381) #7
  %383 = add nuw nsw i32 %378, 1
  %384 = icmp slt i32 %383, %334
  br i1 %384, label %377, label %375, !llvm.loop !99

385:                                              ; preds = %332
  %386 = add nsw i32 %233, 1
  br label %387

387:                                              ; preds = %385, %375
  %388 = phi i32 [ %233, %375 ], [ %386, %385 ]
  %389 = phi i32 [ %376, %375 ], [ %235, %385 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220) #9
  br i1 %335, label %232, label %503, !llvm.loop !100

390:                                              ; preds = %232
  %391 = load i32 (%struct._cl_kernel*, i32, i32, i8*)*, i32 (%struct._cl_kernel*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 4, !tbaa !37
  %392 = icmp sgt i32 %9, 1
  %393 = select i1 %392, i32 %9, i32 1
  %394 = call i32 %391(%struct._cl_kernel* %112, i32 %233, i32 %393, i8* null) #7
  store i32 %394, i32* %18, align 4, !tbaa !43
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %438, label %396

396:                                              ; preds = %390
  %397 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %397) #9
  %398 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 3
  store i8* %0, i8** %398, align 4, !tbaa !44
  %399 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 4
  store i8 1, i8* %399, align 4, !tbaa !46
  %400 = call i8* @malloc(i32 1024) #7
  %401 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 0
  store i8* %400, i8** %401, align 4, !tbaa !47
  %402 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i32 0, i32 1
  store i8* %400, i8** %402, align 4, !tbaa !48
  %403 = icmp eq i8* %400, null
  br i1 %403, label %406, label %404

404:                                              ; preds = %396
  %405 = getelementptr inbounds i8, i8* %400, i32 1023
  store i8 0, i8* %405, align 1, !tbaa !36
  br label %406

406:                                              ; preds = %396, %404
  %407 = phi i8* [ %405, %404 ], [ null, %396 ]
  %408 = call i8* @halide_string_to_string(i8* %400, i8* %407, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.171, i32 0, i32 0)) #7
  %409 = load i32, i32* %18, align 4, !tbaa !43
  %410 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %409) #8
  %411 = icmp eq i8* %410, null
  br i1 %411, label %412, label %414

412:                                              ; preds = %406
  %413 = call i8* @halide_string_to_string(i8* %408, i8* %407, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %416

414:                                              ; preds = %406
  %415 = call i8* @halide_string_to_string(i8* %408, i8* %407, i8* nonnull %410) #7
  br label %416

416:                                              ; preds = %412, %414
  %417 = phi i8* [ %415, %414 ], [ %413, %412 ]
  %418 = load i8*, i8** %401, align 4, !tbaa !47
  %419 = icmp eq i8* %418, null
  %420 = load i8*, i8** %398, align 4, !tbaa !44
  br i1 %419, label %421, label %422

421:                                              ; preds = %416
  call void @halide_error(i8* %420, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %431

422:                                              ; preds = %416
  %423 = ptrtoint i8* %417 to i32
  %424 = ptrtoint i8* %418 to i32
  %425 = sub i32 1, %424
  %426 = add i32 %425, %423
  %427 = sext i32 %426 to i64
  %428 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %420, i8* nonnull %418, i64 %427) #7
  %429 = load i8*, i8** %398, align 4, !tbaa !44
  %430 = load i8*, i8** %401, align 4, !tbaa !47
  call void @halide_error(i8* %429, i8* %430) #7
  br label %431

431:                                              ; preds = %422, %421
  %432 = load i8, i8* %399, align 4, !tbaa !46, !range !41
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %431
  %435 = load i8*, i8** %401, align 4, !tbaa !47
  call void @free(i8* %435) #7
  br label %436

436:                                              ; preds = %431, %434
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %397) #9
  %437 = load i32, i32* %18, align 4, !tbaa !43
  br label %503

438:                                              ; preds = %390
  %439 = load i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i32*, i32*, i32*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE, align 4, !tbaa !37
  %440 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 4, !tbaa !69
  %441 = call i32 %439(%struct._cl_command_queue* %440, %struct._cl_kernel* %112, i32 3, i32* null, i32* nonnull %172, i32* nonnull %179, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  store i32 %441, i32* %18, align 4, !tbaa !43
  %442 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %441) #8
  %443 = icmp sgt i32 %234, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %447, %438
  call void @free(i8* %231) #7
  %445 = load i32, i32* %18, align 4, !tbaa !43
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %500, label %455

447:                                              ; preds = %438, %447
  %448 = phi i32 [ %453, %447 ], [ 0, %438 ]
  %449 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 4, !tbaa !37
  %450 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %219, i32 %448
  %451 = load %struct._cl_mem*, %struct._cl_mem** %450, align 4, !tbaa !37
  %452 = call i32 %449(%struct._cl_mem* %451) #7
  %453 = add nuw nsw i32 %448, 1
  %454 = icmp slt i32 %453, %234
  br i1 %454, label %447, label %444, !llvm.loop !101

455:                                              ; preds = %444
  %456 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %456) #9
  %457 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 3
  store i8* %0, i8** %457, align 4, !tbaa !44
  %458 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 4
  store i8 1, i8* %458, align 4, !tbaa !46
  %459 = call i8* @malloc(i32 1024) #7
  %460 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 0
  store i8* %459, i8** %460, align 4, !tbaa !47
  %461 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 1
  store i8* %459, i8** %461, align 4, !tbaa !48
  %462 = icmp eq i8* %459, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %455
  %464 = getelementptr inbounds i8, i8* %459, i32 1023
  store i8 0, i8* %464, align 1, !tbaa !36
  br label %465

465:                                              ; preds = %455, %463
  %466 = phi i8* [ %464, %463 ], [ null, %455 ]
  %467 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i32 0, i32 2
  store i8* %466, i8** %467, align 4
  %468 = call i8* @halide_string_to_string(i8* %459, i8* %466, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.173, i32 0, i32 0)) #7
  %469 = load i32, i32* %18, align 4, !tbaa !43
  %470 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %469) #8
  %471 = icmp eq i8* %470, null
  br i1 %471, label %472, label %474

472:                                              ; preds = %465
  %473 = call i8* @halide_string_to_string(i8* %468, i8* %466, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %476

474:                                              ; preds = %465
  %475 = call i8* @halide_string_to_string(i8* %468, i8* %466, i8* nonnull %470) #7
  br label %476

476:                                              ; preds = %472, %474
  %477 = phi i8* [ %475, %474 ], [ %473, %472 ]
  %478 = load i8*, i8** %467, align 4, !tbaa !49
  %479 = call i8* @halide_string_to_string(i8* %477, i8* %478, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  %480 = load i8*, i8** %460, align 4, !tbaa !47
  %481 = icmp eq i8* %480, null
  %482 = load i8*, i8** %457, align 4, !tbaa !44
  br i1 %481, label %483, label %484

483:                                              ; preds = %476
  call void @halide_error(i8* %482, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %493

484:                                              ; preds = %476
  %485 = ptrtoint i8* %479 to i32
  %486 = ptrtoint i8* %480 to i32
  %487 = add i32 %485, 1
  %488 = sub i32 %487, %486
  %489 = sext i32 %488 to i64
  %490 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %482, i8* nonnull %480, i64 %489) #7
  %491 = load i8*, i8** %457, align 4, !tbaa !44
  %492 = load i8*, i8** %460, align 4, !tbaa !47
  call void @halide_error(i8* %491, i8* %492) #7
  br label %493

493:                                              ; preds = %484, %483
  %494 = load i8, i8* %458, align 4, !tbaa !46, !range !41
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %498, label %496

496:                                              ; preds = %493
  %497 = load i8*, i8** %460, align 4, !tbaa !47
  call void @free(i8* %497) #7
  br label %498

498:                                              ; preds = %493, %496
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %456) #9
  %499 = load i32, i32* %18, align 4, !tbaa !43
  br label %503

500:                                              ; preds = %444
  %501 = load i32 (%struct._cl_kernel*)*, i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE, align 4, !tbaa !37
  %502 = call i32 %501(%struct._cl_kernel* %112) #7
  br label %503

503:                                              ; preds = %387, %211, %500, %498, %436
  %504 = phi i32 [ %437, %436 ], [ %499, %498 ], [ 0, %500 ], [ -11, %211 ], [ %389, %387 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %178) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %171) #9
  br label %505

505:                                              ; preds = %503, %168
  %506 = phi i32 [ %169, %168 ], [ %504, %503 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #9
  br label %507

507:                                              ; preds = %60, %61, %505
  %508 = phi i32 [ %506, %505 ], [ %40, %61 ], [ -1, %60 ]
  %509 = load i8*, i8** %32, align 4, !tbaa !66
  %510 = call i32 @halide_release_cl_context(i8* %509) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #9
  ret i32 %508
}

declare i8* @memset(i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_wrap_cl_mem(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.176, i32 0, i32 0)) #7
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
  store %struct._cl_mem* %15, %struct._cl_mem** %17, align 8, !tbaa !52
  %18 = bitcast i8* %11 to i64*
  store i64 0, i64* %18, align 8, !tbaa !54
  %19 = ptrtoint i8* %11 to i32
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %4, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, %struct.halide_device_interface_t** %21, align 8, !tbaa !71
  %22 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, i32 0, i32 15), align 4, !tbaa !72
  %23 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %22, i32 0, i32 0
  %24 = load void ()*, void ()** %23, align 4, !tbaa !92
  tail call void %24() #7
  br label %25

25:                                               ; preds = %13, %10, %7
  %26 = phi i32 [ -2, %7 ], [ 0, %13 ], [ -11, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_detach_cl_mem(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !71
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %10 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %11 = or i1 %9, %10
  %12 = trunc i64 %4 to i32
  br i1 %11, label %16, label %13

13:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.177, i32 0, i32 0)) #7
  tail call void @abort() #7
  %14 = load i64, i64* %3, align 8, !tbaa !22
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %12, %6 ], [ %15, %13 ]
  %18 = inttoptr i32 %17 to i8*
  tail call void @free(i8* %18) #7
  store i64 0, i64* %3, align 8, !tbaa !22
  %19 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %19, i32 0, i32 15
  %21 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %20, align 4, !tbaa !72
  %22 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %21, i32 0, i32 1
  %23 = load void ()*, void ()** %22, align 4, !tbaa !74
  tail call void %23() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !71
  br label %24

24:                                               ; preds = %2, %16
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_get_cl_mem(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !71
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %10 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %11 = or i1 %9, %10
  %12 = trunc i64 %4 to i32
  br i1 %11, label %16, label %13

13:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.178, i32 0, i32 0)) #7
  tail call void @abort() #7
  %14 = load i64, i64* %3, align 8, !tbaa !22
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %12, %6 ], [ %15, %13 ]
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i32 0, i32 1
  %20 = load %struct._cl_mem*, %struct._cl_mem** %19, align 8, !tbaa !52
  %21 = ptrtoint %struct._cl_mem* %20 to i32
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_opencl_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !71
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.179, i32 0, i32 0)) #7
  tail call void @abort() #7
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !54
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %2 ]
  ret i64 %20
}

; Function Attrs: nounwind
define weak i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 0
  store i8* %0, i8** %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 4, !tbaa !68
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i32 0, i32 3
  store i32 0, i32* %10, align 4, !tbaa !70
  %11 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %12 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %4
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 4, !tbaa !70
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 4, !tbaa !68
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
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i32 1023
  store i8 0, i8* %27, align 1, !tbaa !36
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %10, align 4, !tbaa !70
  br label %82

36:                                               ; preds = %14
  %37 = icmp eq i32 %15, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %40 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %39, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1
  store %struct.halide_device_interface_t* %40, %struct.halide_device_interface_t** %41, align 8, !tbaa !71
  %42 = call i8* @malloc(i32 16) #7
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = call i8* @malloc(i32 1024) #7
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i8* @halide_string_to_string(i8* %45, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %58

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %45, i32 1023
  store i8 0, i8* %50, align 1, !tbaa !36
  %51 = call i8* @halide_string_to_string(i8* nonnull %45, i8* nonnull %50, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i32 0, i32 0)) #7
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
  %60 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE, align 4, !tbaa !37
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !22
  %63 = trunc i64 %62 to i32
  %64 = inttoptr i32 %63 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %64, i32 0, i32 1
  %66 = load %struct._cl_mem*, %struct._cl_mem** %65, align 8, !tbaa !52
  %67 = call i32 %60(%struct._cl_mem* %66) #7
  %68 = load i64, i64* %61, align 8, !tbaa !22
  %69 = trunc i64 %68 to i32
  %70 = inttoptr i32 %69 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %70, i32 0, i32 1
  %72 = load %struct._cl_mem*, %struct._cl_mem** %71, align 8, !tbaa !52
  %73 = getelementptr inbounds i8, i8* %42, i32 8
  %74 = bitcast i8* %73 to %struct._cl_mem**
  store %struct._cl_mem* %72, %struct._cl_mem** %74, align 8, !tbaa !52
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %70, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !54
  %77 = add i64 %76, %2
  %78 = bitcast i8* %42 to i64*
  store i64 %77, i64* %78, align 8, !tbaa !54
  %79 = ptrtoint i8* %42 to i32
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  store i64 %80, i64* %81, align 8, !tbaa !22
  br label %82

82:                                               ; preds = %35, %58, %59, %36
  %83 = phi i32 [ %15, %36 ], [ -11, %58 ], [ 0, %59 ], [ -1, %35 ]
  %84 = load i8*, i8** %7, align 4, !tbaa !66
  %85 = call i32 @halide_release_cl_context(i8* %84) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret i32 %83
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %27, label %12, label %28, !llvm.loop !102

28:                                               ; preds = %12, %3
  %29 = phi i64 [ 0, %3 ], [ %25, %12 ]
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %29, %35
  %37 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #8
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #8
  ret i32 %23
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = trunc i64 %5 to i32
  %7 = inttoptr i32 %6 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %7, i32 0, i32 1
  %9 = load %struct._cl_mem*, %struct._cl_mem** %8, align 8, !tbaa !52
  %10 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 0
  store i8* %0, i8** %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 4, !tbaa !68
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 4, !tbaa !69
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %14, align 4, !tbaa !70
  %15 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %16 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 4, !tbaa !70
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !68
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
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !36
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %14, align 4, !tbaa !70
  br label %51

40:                                               ; preds = %18
  %41 = icmp eq i32 %19, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 0) #8
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.182, i32 0, i32 0)) #7
  call void @abort() #7
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 4, !tbaa !37
  %47 = call i32 %46(%struct._cl_mem* %9) #7
  %48 = load i64, i64* %4, align 8, !tbaa !22
  %49 = trunc i64 %48 to i32
  %50 = inttoptr i32 %49 to i8*
  call void @free(i8* %50) #7
  br label %51

51:                                               ; preds = %39, %45, %40
  %52 = phi i32 [ %19, %40 ], [ %47, %45 ], [ -1, %39 ]
  %53 = load i8*, i8** %11, align 4, !tbaa !66
  %54 = call i32 @halide_release_cl_context(i8* %53) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  ret i32 %52
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_opencl_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
}

; Function Attrs: nounwind mustprogress
define weak void @halide_opencl_cleanup() #0 {
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i8* null, i32 (%struct._cl_program*)** nonnull align 4 dereferenceable(4) @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE) #8
  %1 = tail call i32 @halide_opencl_device_release(i8* null) #8
  ret void
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i32 (%struct._cl_program*)** nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !87
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !79
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !80
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %39, %38 ], [ %6, %12 ]
  %17 = phi i32 [ %40, %38 ], [ %10, %12 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %41, %38 ], [ %14, %12 ]
  %19 = phi i32 [ %42, %38 ], [ 0, %12 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !82
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !85
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** %2, align 4, !tbaa !37
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i32 %19, i32 1
  %30 = load %struct._cl_program*, %struct._cl_program** %29, align 4, !tbaa !86
  %31 = tail call i32 %28(%struct._cl_program* %30) #7
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !80
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i32 %19, i32 1
  store %struct._cl_program* null, %struct._cl_program** %33, align 4, !tbaa !86
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i32 %19, i32 2
  store i32 1, i32* %34, align 4, !tbaa !82
  %35 = load i32, i32* %5, align 4, !tbaa !87
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4, !tbaa !87
  %37 = load i32, i32* %9, align 4, !tbaa !79
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i32 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %15, label %45, !llvm.loop !88

45:                                               ; preds = %38
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %3, %45
  %48 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %49 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %48 to i8**
  %50 = load i8*, i8** %49, align 4, !tbaa !80
  tail call void @free(i8* %50) #7
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %48, align 4, !tbaa !80
  %51 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  store i32 0, i32* %51, align 4, !tbaa !79
  br label %52

52:                                               ; preds = %8, %47, %45
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #7
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

; Function Attrs: nounwind
define weak i32 @halide_opencl_image_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
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
  store i8* %0, i8** %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 4, !tbaa !68
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 4, !tbaa !69
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i32 0, i32 3
  store i32 0, i32* %14, align 4, !tbaa !70
  %15 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %16 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 4, !tbaa !70
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !68
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
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !36
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %14, align 4, !tbaa !70
  br label %317

40:                                               ; preds = %18
  %41 = icmp eq i32 %19, 0
  br i1 %41, label %42, label %317

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %44 = load i32, i32* %43, align 4, !tbaa !24
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %48 = load i8, i8* %47, align 1, !tbaa !23
  br label %87

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %51 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %50, align 8, !tbaa !25
  br label %52

52:                                               ; preds = %64, %49
  %53 = phi i32 [ 0, %49 ], [ %66, %64 ]
  %54 = phi i32 [ 0, %49 ], [ %65, %64 ]
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %53, i32 2
  %56 = load i32, i32* %55, align 4, !tbaa !26
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %53, i32 1
  %60 = load i32, i32* %59, align 4, !tbaa !31
  %61 = add nsw i32 %60, -1
  %62 = mul nsw i32 %61, %56
  %63 = add nsw i32 %62, %54
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i32 [ %63, %58 ], [ %54, %52 ]
  %66 = add nuw nsw i32 %53, 1
  %67 = icmp slt i32 %66, %44
  br i1 %67, label %52, label %68, !llvm.loop !89

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %70 = load i8, i8* %69, align 1, !tbaa !23
  br label %71

71:                                               ; preds = %83, %68
  %72 = phi i32 [ 0, %68 ], [ %85, %83 ]
  %73 = phi i32 [ 0, %68 ], [ %84, %83 ]
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %72, i32 2
  %75 = load i32, i32* %74, align 4, !tbaa !26
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 %72, i32 1
  %79 = load i32, i32* %78, align 4, !tbaa !31
  %80 = add nsw i32 %79, -1
  %81 = mul nsw i32 %80, %75
  %82 = add nsw i32 %81, %73
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i32 [ %82, %77 ], [ %73, %71 ]
  %85 = add nuw nsw i32 %72, 1
  %86 = icmp slt i32 %85, %44
  br i1 %86, label %71, label %87, !llvm.loop !90

87:                                               ; preds = %83, %46
  %88 = phi i8 [ %48, %46 ], [ %70, %83 ]
  %89 = phi i32 [ 0, %46 ], [ %65, %83 ]
  %90 = phi i32 [ 0, %46 ], [ %84, %83 ]
  %91 = zext i8 %88 to i32
  %92 = add nuw nsw i32 %91, 7
  %93 = lshr i32 %92, 3
  %94 = add nsw i32 %89, 1
  %95 = sub i32 %94, %90
  %96 = mul i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.244, i32 0, i32 0)) #7
  call void @abort() #7
  br label %99

99:                                               ; preds = %98, %87
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !22
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %43, align 4, !tbaa !24
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %114

108:                                              ; preds = %99
  %109 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %96) #8
  br i1 %109, label %317, label %110

110:                                              ; preds = %108
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.245, i32 0, i32 0)) #7
  call void @abort() #7
  br label %317

111:                                              ; preds = %123, %103
  %112 = call i8* @malloc(i32 16) #7
  %113 = icmp eq i8* %112, null
  br i1 %113, label %317, label %127

114:                                              ; preds = %106, %123
  %115 = phi i32 [ %104, %106 ], [ %124, %123 ]
  %116 = phi i32 [ 0, %106 ], [ %125, %123 ]
  %117 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %107, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %116, i32 2
  %119 = load i32, i32* %118, align 4, !tbaa !26
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.246, i32 0, i32 0)) #7
  call void @abort() #7
  %122 = load i32, i32* %43, align 4, !tbaa !24
  br label %123

123:                                              ; preds = %114, %121
  %124 = phi i32 [ %115, %114 ], [ %122, %121 ]
  %125 = add nuw nsw i32 %116, 1
  %126 = icmp slt i32 %125, %124
  br i1 %126, label %114, label %111, !llvm.loop !103

127:                                              ; preds = %111
  %128 = bitcast %struct._cl_image_format* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %128) #9
  %129 = bitcast %struct._cl_image_desc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %129) #9
  %130 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %130) #9
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %6, align 4
  %134 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i32 0, i32 1
  store i32 65535, i32* %134, align 4, !tbaa !104
  %135 = trunc i32 %133 to i8
  %136 = lshr i32 %133, 8
  %137 = trunc i32 %136 to i8
  switch i8 %135, label %146 [
    i8 0, label %138
    i8 1, label %141
    i8 2, label %144
  ]

138:                                              ; preds = %127
  switch i8 %137, label %146 [
    i8 8, label %164
    i8 16, label %139
    i8 32, label %140
  ]

139:                                              ; preds = %138
  br label %164

140:                                              ; preds = %138
  br label %164

141:                                              ; preds = %127
  switch i8 %137, label %146 [
    i8 8, label %164
    i8 16, label %142
    i8 32, label %143
  ]

142:                                              ; preds = %141
  br label %164

143:                                              ; preds = %141
  br label %164

144:                                              ; preds = %127
  switch i8 %137, label %146 [
    i8 16, label %164
    i8 32, label %145
  ]

145:                                              ; preds = %144
  br label %164

146:                                              ; preds = %138, %141, %127, %144
  %147 = call i8* @malloc(i32 1024) #7
  %148 = icmp eq i8* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds i8, i8* %147, i32 1023
  store i8 0, i8* %150, align 1, !tbaa !36
  br label %151

151:                                              ; preds = %146, %149
  %152 = phi i8* [ %150, %149 ], [ null, %146 ]
  %153 = call i8* @halide_string_to_string(i8* %147, i8* %152, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.247, i32 0, i32 0)) #7
  %154 = call i8* @halide_type_to_string(i8* %153, i8* %152, %struct.halide_type_t* nonnull %7) #7
  br i1 %148, label %155, label %156

155:                                              ; preds = %151
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %163

156:                                              ; preds = %151
  %157 = ptrtoint i8* %154 to i32
  %158 = ptrtoint i8* %147 to i32
  %159 = add i32 %157, 1
  %160 = sub i32 %159, %158
  %161 = sext i32 %160 to i64
  %162 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %147, i64 %161) #7
  call void @halide_error(i8* %0, i8* nonnull %147) #7
  br label %163

163:                                              ; preds = %156, %155
  call void @free(i8* %147) #7
  br label %315

164:                                              ; preds = %144, %141, %138, %142, %143, %145, %140, %139
  %165 = phi i32 [ 4315, %142 ], [ 4316, %143 ], [ 4318, %145 ], [ 4313, %140 ], [ 4312, %139 ], [ 4311, %138 ], [ 4314, %141 ], [ 4317, %144 ]
  store i32 %165, i32* %134, align 4, !tbaa !104
  %166 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i32 0, i32 0
  store i32 4272, i32* %166, align 4, !tbaa !106
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %168 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %167, align 8, !tbaa !25
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4, !tbaa !26
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %190

172:                                              ; preds = %164
  %173 = load i32, i32* %43, align 4, !tbaa !24
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %205

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 1, i32 2
  %177 = load i32, i32* %176, align 4, !tbaa !26
  %178 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 0, i32 1
  %179 = load i32, i32* %178, align 4, !tbaa !31
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = icmp sgt i32 %173, 2
  br i1 %182, label %183, label %208

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 2, i32 2
  %185 = load i32, i32* %184, align 4, !tbaa !26
  %186 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 1, i32 1
  %187 = load i32, i32* %186, align 4, !tbaa !31
  %188 = mul nsw i32 %187, %177
  %189 = icmp eq i32 %185, %188
  br i1 %189, label %205, label %190

190:                                              ; preds = %183, %175, %164
  %191 = call i8* @malloc(i32 1024) #7
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i8* @halide_string_to_string(i8* %191, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.249, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds i8, i8* %191, i32 1023
  store i8 0, i8* %196, align 1, !tbaa !36
  %197 = call i8* @halide_string_to_string(i8* nonnull %191, i8* nonnull %196, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.249, i32 0, i32 0)) #7
  %198 = ptrtoint i8* %197 to i32
  %199 = ptrtoint i8* %191 to i32
  %200 = add i32 %198, 1
  %201 = sub i32 %200, %199
  %202 = sext i32 %201 to i64
  %203 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %191, i64 %202) #7
  call void @halide_error(i8* %0, i8* nonnull %191) #7
  br label %204

204:                                              ; preds = %195, %193
  call void @free(i8* %191) #7
  br label %315

205:                                              ; preds = %172, %183
  switch i32 %173, label %217 [
    i32 1, label %206
    i32 3, label %215
  ]

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4340, i32* %207, align 4, !tbaa !107
  br label %232

208:                                              ; preds = %181
  %209 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4337, i32* %209, align 4, !tbaa !107
  %210 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 0, i32 1
  %211 = load i32, i32* %210, align 4, !tbaa !31
  %212 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 1
  store i32 %211, i32* %212, align 4, !tbaa !109
  %213 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 1, i32 1
  %214 = load i32, i32* %213, align 4, !tbaa !31
  br label %239

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 0
  store i32 4338, i32* %216, align 4, !tbaa !107
  br label %232

217:                                              ; preds = %205
  %218 = call i8* @malloc(i32 1024) #7
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i8* @halide_string_to_string(i8* %218, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.250, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %231

222:                                              ; preds = %217
  %223 = getelementptr inbounds i8, i8* %218, i32 1023
  store i8 0, i8* %223, align 1, !tbaa !36
  %224 = call i8* @halide_string_to_string(i8* nonnull %218, i8* nonnull %223, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.250, i32 0, i32 0)) #7
  %225 = ptrtoint i8* %224 to i32
  %226 = ptrtoint i8* %218 to i32
  %227 = add i32 %225, 1
  %228 = sub i32 %227, %226
  %229 = sext i32 %228 to i64
  %230 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %218, i64 %229) #7
  call void @halide_error(i8* %0, i8* nonnull %218) #7
  br label %231

231:                                              ; preds = %222, %220
  call void @free(i8* %218) #7
  br label %315

232:                                              ; preds = %215, %206
  %233 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 0, i32 1
  %234 = load i32, i32* %233, align 4, !tbaa !31
  %235 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 1
  store i32 %234, i32* %235, align 4, !tbaa !109
  br i1 %174, label %236, label %239

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %168, i32 1, i32 1
  %238 = load i32, i32* %237, align 4, !tbaa !31
  br label %239

239:                                              ; preds = %232, %208, %236
  %240 = phi i32 [ %214, %208 ], [ %238, %236 ], [ 1, %232 ]
  %241 = phi i32 [ 1, %208 ], [ %238, %236 ], [ 1, %232 ]
  %242 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 2
  store i32 %240, i32* %242, align 4, !tbaa !110
  %243 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 3
  store i32 %241, i32* %243, align 4, !tbaa !111
  %244 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 4
  store i32 1, i32* %244, align 4, !tbaa !112
  %245 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 5
  store i32 0, i32* %245, align 4, !tbaa !113
  %246 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 6
  store i32 0, i32* %246, align 4, !tbaa !114
  %247 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 7
  store i32 0, i32* %247, align 4, !tbaa !115
  %248 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 8
  store i32 0, i32* %248, align 4, !tbaa !116
  %249 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i32 0, i32 9
  store %struct._cl_mem* null, %struct._cl_mem** %249, align 4, !tbaa !117
  %250 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #9
  %251 = load %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE, align 4, !tbaa !37
  %252 = load %struct._cl_context*, %struct._cl_context** %12, align 4, !tbaa !68
  %253 = call %struct._cl_mem* %251(%struct._cl_context* %252, i64 1, %struct._cl_image_format* nonnull %4, %struct._cl_image_desc* nonnull %5, i8* null, i32* nonnull %8) #7
  %254 = load i32, i32* %8, align 4, !tbaa !43
  %255 = icmp ne i32 %254, 0
  %256 = icmp eq %struct._cl_mem* %253, null
  %257 = or i1 %256, %255
  br i1 %257, label %258, label %301

258:                                              ; preds = %239
  %259 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %254) #8
  %260 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %260) #9
  %261 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3
  store i8* %0, i8** %261, align 4, !tbaa !44
  %262 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4
  store i8 1, i8* %262, align 4, !tbaa !46
  %263 = call i8* @malloc(i32 1024) #7
  %264 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0
  store i8* %263, i8** %264, align 4, !tbaa !47
  %265 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1
  store i8* %263, i8** %265, align 4, !tbaa !48
  %266 = icmp eq i8* %263, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %258
  %268 = getelementptr inbounds i8, i8* %263, i32 1023
  store i8 0, i8* %268, align 1, !tbaa !36
  br label %269

269:                                              ; preds = %258, %267
  %270 = phi i8* [ %268, %267 ], [ null, %258 ]
  %271 = call i8* @halide_string_to_string(i8* %263, i8* %270, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.253, i32 0, i32 0)) #7
  %272 = load i32, i32* %8, align 4, !tbaa !43
  %273 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %272) #8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = call i8* @halide_string_to_string(i8* %271, i8* %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %279

277:                                              ; preds = %269
  %278 = call i8* @halide_string_to_string(i8* %271, i8* %270, i8* nonnull %273) #7
  br label %279

279:                                              ; preds = %275, %277
  %280 = phi i8* [ %278, %277 ], [ %276, %275 ]
  %281 = load i8*, i8** %264, align 4, !tbaa !47
  %282 = icmp eq i8* %281, null
  %283 = load i8*, i8** %261, align 4, !tbaa !44
  br i1 %282, label %284, label %285

284:                                              ; preds = %279
  call void @halide_error(i8* %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %294

285:                                              ; preds = %279
  %286 = ptrtoint i8* %280 to i32
  %287 = ptrtoint i8* %281 to i32
  %288 = sub i32 1, %287
  %289 = add i32 %288, %286
  %290 = sext i32 %289 to i64
  %291 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %283, i8* nonnull %281, i64 %290) #7
  %292 = load i8*, i8** %261, align 4, !tbaa !44
  %293 = load i8*, i8** %264, align 4, !tbaa !47
  call void @halide_error(i8* %292, i8* %293) #7
  br label %294

294:                                              ; preds = %285, %284
  %295 = load i8, i8* %262, align 4, !tbaa !46, !range !41
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = load i8*, i8** %264, align 4, !tbaa !47
  call void @free(i8* %298) #7
  br label %299

299:                                              ; preds = %294, %297
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %260) #9
  call void @free(i8* nonnull %112) #7
  %300 = load i32, i32* %8, align 4, !tbaa !43
  br label %313

301:                                              ; preds = %239
  %302 = getelementptr inbounds i8, i8* %112, i32 8
  %303 = bitcast i8* %302 to %struct._cl_mem**
  store %struct._cl_mem* %253, %struct._cl_mem** %303, align 8, !tbaa !52
  %304 = bitcast i8* %112 to i64*
  store i64 0, i64* %304, align 8, !tbaa !54
  %305 = ptrtoint i8* %112 to i32
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %100, align 8, !tbaa !22
  %307 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, %struct.halide_device_interface_t** %307, align 8, !tbaa !71
  %308 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, i32 0, i32 15), align 4, !tbaa !72
  %309 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %308, i32 0, i32 0
  %310 = load void ()*, void ()** %309, align 4, !tbaa !92
  call void %310() #7
  %311 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tj(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %96) #8
  br i1 %311, label %313, label %312

312:                                              ; preds = %301
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.254, i32 0, i32 0)) #7
  call void @abort() #7
  br label %313

313:                                              ; preds = %301, %312, %299
  %314 = phi i32 [ %300, %299 ], [ 0, %312 ], [ 0, %301 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #9
  br label %315

315:                                              ; preds = %313, %231, %204, %163
  %316 = phi i32 [ -16, %163 ], [ -16, %204 ], [ %314, %313 ], [ -16, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %130) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %129) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %128) #9
  br label %317

317:                                              ; preds = %39, %110, %108, %111, %315, %40
  %318 = phi i32 [ %19, %40 ], [ 0, %110 ], [ 0, %108 ], [ %316, %315 ], [ -6, %111 ], [ -1, %39 ]
  %319 = load i8*, i8** %11, align 4, !tbaa !66
  %320 = call i32 @halide_release_cl_context(i8* %319) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  ret i32 %318
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %12 = icmp eq %struct.halide_device_interface_t* %2, null
  %13 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.256, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %18 = load i64, i64* %17, align 8, !tbaa !94
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
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !71
  %28 = icmp eq %struct.halide_device_interface_t* %27, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  br i1 %13, label %488, label %30

30:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.257, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %488

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %33 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %32, align 8, !tbaa !71
  %34 = icmp eq %struct.halide_device_interface_t* %33, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.259, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %54

54:                                               ; preds = %53, %49, %47
  %55 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %55) #9
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %48, %struct.halide_buffer_t* %3, i1 zeroext %12) #8
  %56 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #9
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 0
  store i8* %0, i8** %57, align 4, !tbaa !66
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %58, align 4, !tbaa !68
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %59, align 4, !tbaa !69
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i32 0, i32 3
  store i32 0, i32* %60, align 4, !tbaa !70
  %61 = load %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)*, %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 4, !tbaa !37
  %62 = icmp eq %struct._cl_context* (i32*, i32, %struct._cl_device_id**, void (i8*, i8*, i32, i8*)*, i8*, i32*)* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %58, %struct._cl_command_queue** nonnull %59, i1 zeroext true) #7
  store i32 %65, i32* %60, align 4, !tbaa !70
  %66 = load %struct._cl_context*, %struct._cl_context** %58, align 4, !tbaa !68
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
  %75 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %85

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i32 1023
  store i8 0, i8* %77, align 1, !tbaa !36
  %78 = call i8* @halide_string_to_string(i8* nonnull %72, i8* nonnull %77, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i32 0, i32 0)) #7
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
  store i32 -1, i32* %60, align 4, !tbaa !70
  br label %484

86:                                               ; preds = %64
  %87 = icmp eq i32 %65, 0
  br i1 %87, label %88, label %484

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
  br label %135

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %99 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %98, align 8, !tbaa !25
  br label %100

100:                                              ; preds = %112, %97
  %101 = phi i32 [ 0, %97 ], [ %114, %112 ]
  %102 = phi i32 [ 0, %97 ], [ %113, %112 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !26
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %101, i32 1
  %108 = load i32, i32* %107, align 4, !tbaa !31
  %109 = add nsw i32 %108, -1
  %110 = mul nsw i32 %109, %104
  %111 = add nsw i32 %110, %102
  br label %112

112:                                              ; preds = %106, %100
  %113 = phi i32 [ %111, %106 ], [ %102, %100 ]
  %114 = add nuw nsw i32 %101, 1
  %115 = icmp slt i32 %114, %92
  br i1 %115, label %100, label %116, !llvm.loop !89

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %118 = load i8, i8* %117, align 1, !tbaa !23
  br label %119

119:                                              ; preds = %131, %116
  %120 = phi i32 [ 0, %116 ], [ %133, %131 ]
  %121 = phi i32 [ 0, %116 ], [ %132, %131 ]
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %120, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !26
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %99, i32 %120, i32 1
  %127 = load i32, i32* %126, align 4, !tbaa !31
  %128 = add nsw i32 %127, -1
  %129 = mul nsw i32 %128, %123
  %130 = add nsw i32 %129, %121
  br label %131

131:                                              ; preds = %125, %119
  %132 = phi i32 [ %130, %125 ], [ %121, %119 ]
  %133 = add nuw nsw i32 %120, 1
  %134 = icmp slt i32 %133, %92
  br i1 %134, label %119, label %135, !llvm.loop !90

135:                                              ; preds = %131, %94
  %136 = phi i8 [ %96, %94 ], [ %118, %131 ]
  %137 = phi i32 [ 0, %94 ], [ %113, %131 ]
  %138 = phi i32 [ 0, %94 ], [ %132, %131 ]
  %139 = zext i8 %136 to i32
  %140 = add nuw nsw i32 %139, 7
  %141 = lshr i32 %140, 3
  %142 = add nsw i32 %137, 1
  %143 = sub i32 %142, %138
  %144 = mul i32 %143, %141
  %145 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %146 = load i32, i32* %145, align 4, !tbaa !24
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %150 = load i8, i8* %149, align 1, !tbaa !23
  br label %189

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %153 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %152, align 8, !tbaa !25
  br label %154

154:                                              ; preds = %166, %151
  %155 = phi i32 [ 0, %151 ], [ %168, %166 ]
  %156 = phi i32 [ 0, %151 ], [ %167, %166 ]
  %157 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %153, i32 %155, i32 2
  %158 = load i32, i32* %157, align 4, !tbaa !26
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %153, i32 %155, i32 1
  %162 = load i32, i32* %161, align 4, !tbaa !31
  %163 = add nsw i32 %162, -1
  %164 = mul nsw i32 %163, %158
  %165 = add nsw i32 %164, %156
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i32 [ %165, %160 ], [ %156, %154 ]
  %168 = add nuw nsw i32 %155, 1
  %169 = icmp slt i32 %168, %146
  br i1 %169, label %154, label %170, !llvm.loop !89

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %172 = load i8, i8* %171, align 1, !tbaa !23
  br label %173

173:                                              ; preds = %185, %170
  %174 = phi i32 [ 0, %170 ], [ %187, %185 ]
  %175 = phi i32 [ 0, %170 ], [ %186, %185 ]
  %176 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %153, i32 %174, i32 2
  %177 = load i32, i32* %176, align 4, !tbaa !26
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %153, i32 %174, i32 1
  %181 = load i32, i32* %180, align 4, !tbaa !31
  %182 = add nsw i32 %181, -1
  %183 = mul nsw i32 %182, %177
  %184 = add nsw i32 %183, %175
  br label %185

185:                                              ; preds = %179, %173
  %186 = phi i32 [ %184, %179 ], [ %175, %173 ]
  %187 = add nuw nsw i32 %174, 1
  %188 = icmp slt i32 %187, %146
  br i1 %188, label %173, label %189, !llvm.loop !90

189:                                              ; preds = %185, %148
  %190 = phi i8 [ %150, %148 ], [ %172, %185 ]
  %191 = phi i32 [ 0, %148 ], [ %167, %185 ]
  %192 = phi i32 [ 0, %148 ], [ %186, %185 ]
  %193 = zext i8 %190 to i32
  %194 = add nuw nsw i32 %193, 7
  %195 = lshr i32 %194, 3
  %196 = add nsw i32 %191, 1
  %197 = sub i32 %196, %192
  %198 = mul i32 %197, %195
  %199 = icmp eq i32 %144, %198
  br i1 %199, label %200, label %246

200:                                              ; preds = %189
  %201 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 6
  %202 = load i64, i64* %201, align 8, !tbaa !12
  br i1 %93, label %203, label %238

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %205 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %204, align 8, !tbaa !25
  br label %206

206:                                              ; preds = %218, %203
  %207 = phi i32 [ 0, %203 ], [ %220, %218 ]
  %208 = phi i32 [ 0, %203 ], [ %219, %218 ]
  %209 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %205, i32 %207, i32 2
  %210 = load i32, i32* %209, align 4, !tbaa !26
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %205, i32 %207, i32 1
  %214 = load i32, i32* %213, align 4, !tbaa !31
  %215 = add nsw i32 %214, -1
  %216 = mul nsw i32 %215, %210
  %217 = add nsw i32 %216, %208
  br label %218

218:                                              ; preds = %212, %206
  %219 = phi i32 [ %217, %212 ], [ %208, %206 ]
  %220 = add nuw nsw i32 %207, 1
  %221 = icmp slt i32 %220, %92
  br i1 %221, label %206, label %222, !llvm.loop !89

222:                                              ; preds = %218, %234
  %223 = phi i32 [ %236, %234 ], [ 0, %218 ]
  %224 = phi i32 [ %235, %234 ], [ 0, %218 ]
  %225 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %205, i32 %223, i32 2
  %226 = load i32, i32* %225, align 4, !tbaa !26
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %205, i32 %223, i32 1
  %230 = load i32, i32* %229, align 4, !tbaa !31
  %231 = add nsw i32 %230, -1
  %232 = mul nsw i32 %231, %226
  %233 = add nsw i32 %232, %224
  br label %234

234:                                              ; preds = %228, %222
  %235 = phi i32 [ %233, %228 ], [ %224, %222 ]
  %236 = add nuw nsw i32 %223, 1
  %237 = icmp slt i32 %236, %92
  br i1 %237, label %222, label %238, !llvm.loop !90

238:                                              ; preds = %234, %200
  %239 = phi i32 [ 0, %200 ], [ %219, %234 ]
  %240 = phi i32 [ 0, %200 ], [ %235, %234 ]
  %241 = add nsw i32 %239, 1
  %242 = sub i32 %241, %240
  %243 = mul i32 %242, %141
  %244 = zext i32 %243 to i64
  %245 = icmp eq i64 %202, %244
  br i1 %245, label %261, label %246

246:                                              ; preds = %238, %189
  %247 = call i8* @malloc(i32 1024) #7
  %248 = icmp eq i8* %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call i8* @halide_string_to_string(i8* %247, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.260, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %260

251:                                              ; preds = %246
  %252 = getelementptr inbounds i8, i8* %247, i32 1023
  store i8 0, i8* %252, align 1, !tbaa !36
  %253 = call i8* @halide_string_to_string(i8* nonnull %247, i8* nonnull %252, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.260, i32 0, i32 0)) #7
  %254 = ptrtoint i8* %253 to i32
  %255 = ptrtoint i8* %247 to i32
  %256 = add i32 %254, 1
  %257 = sub i32 %256, %255
  %258 = sext i32 %257 to i64
  %259 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %247, i64 %258) #7
  call void @halide_error(i8* %0, i8* nonnull %247) #7
  br label %260

260:                                              ; preds = %251, %249
  call void @free(i8* %247) #7
  br label %484

261:                                              ; preds = %238
  %262 = xor i1 %12, true
  %263 = or i1 %48, %262
  br i1 %263, label %339, label %264

264:                                              ; preds = %261
  %265 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %265) #9
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %265, i8 0, i32 12, i1 false)
  %266 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %266) #9
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 0
  %268 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %269 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %268, align 8, !tbaa !25
  %270 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4, !tbaa !31
  store i32 %271, i32* %267, align 4, !tbaa !43
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 1
  %273 = icmp sgt i32 %146, 1
  br i1 %273, label %274, label %279

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 1, i32 1
  %276 = load i32, i32* %275, align 4, !tbaa !31
  store i32 %276, i32* %272, align 4, !tbaa !43
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 2
  %278 = icmp eq i32 %146, 2
  br i1 %278, label %281, label %286

279:                                              ; preds = %264
  store i32 1, i32* %272, align 4, !tbaa !43
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i32 0, i32 2
  store i32 1, i32* %280, align 4, !tbaa !43
  br label %328

281:                                              ; preds = %274
  store i32 1, i32* %277, align 4, !tbaa !43
  %282 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 1, i32 2
  %283 = load i32, i32* %282, align 4, !tbaa !26
  %284 = load i32, i32* %270, align 4, !tbaa !31
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %328, label %293

286:                                              ; preds = %274
  %287 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 2, i32 1
  %288 = load i32, i32* %287, align 4, !tbaa !31
  store i32 %288, i32* %277, align 4, !tbaa !43
  %289 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 1, i32 2
  %290 = load i32, i32* %289, align 4, !tbaa !26
  %291 = load i32, i32* %270, align 4, !tbaa !31
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %307, label %293

293:                                              ; preds = %286, %281
  %294 = call i8* @malloc(i32 1024) #7
  %295 = icmp eq i8* %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = call i8* @halide_string_to_string(i8* %294, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %326

298:                                              ; preds = %293
  %299 = getelementptr inbounds i8, i8* %294, i32 1023
  store i8 0, i8* %299, align 1, !tbaa !36
  %300 = call i8* @halide_string_to_string(i8* nonnull %294, i8* nonnull %299, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  %301 = ptrtoint i8* %300 to i32
  %302 = ptrtoint i8* %294 to i32
  %303 = add i32 %301, 1
  %304 = sub i32 %303, %302
  %305 = sext i32 %304 to i64
  %306 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %294, i64 %305) #7
  call void @halide_error(i8* %0, i8* nonnull %294) #7
  br label %326

307:                                              ; preds = %286
  %308 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %269, i32 2, i32 2
  %309 = load i32, i32* %308, align 4, !tbaa !26
  %310 = mul nsw i32 %276, %290
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %328, label %312

312:                                              ; preds = %307
  %313 = call i8* @malloc(i32 1024) #7
  %314 = icmp eq i8* %313, null
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = call i8* @halide_string_to_string(i8* %313, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %326

317:                                              ; preds = %312
  %318 = getelementptr inbounds i8, i8* %313, i32 1023
  store i8 0, i8* %318, align 1, !tbaa !36
  %319 = call i8* @halide_string_to_string(i8* nonnull %313, i8* nonnull %318, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  %320 = ptrtoint i8* %319 to i32
  %321 = ptrtoint i8* %313 to i32
  %322 = add i32 %320, 1
  %323 = sub i32 %322, %321
  %324 = sext i32 %323 to i64
  %325 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %313, i64 %324) #7
  call void @halide_error(i8* %0, i8* nonnull %313) #7
  br label %326

326:                                              ; preds = %315, %317, %296, %298
  %327 = phi i8* [ %294, %298 ], [ %294, %296 ], [ %313, %317 ], [ %313, %315 ]
  call void @free(i8* %327) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %266) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %265) #9
  br label %484

328:                                              ; preds = %281, %279, %307
  %329 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE, align 4, !tbaa !37
  %330 = load i64, i64* %89, align 8, !tbaa !9
  %331 = trunc i64 %330 to i32
  %332 = inttoptr i32 %331 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %333 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %332, i32 0, i32 1
  %334 = load %struct._cl_mem*, %struct._cl_mem** %333, align 8, !tbaa !52
  %335 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i32 0, i32 0
  %336 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  %337 = load i8*, i8** %336, align 4, !tbaa !15
  %338 = call i32 %329(%struct._cl_command_queue* %68, %struct._cl_mem* %334, i32 0, i32* nonnull %335, i32* nonnull %267, i32 0, i32 0, i8* %337, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %266) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %265) #9
  br label %434

339:                                              ; preds = %261
  %340 = xor i1 %48, true
  %341 = or i1 %12, %340
  br i1 %341, label %417, label %342

342:                                              ; preds = %339
  %343 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %343) #9
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %343, i8 0, i32 12, i1 false)
  %344 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %344) #9
  %345 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 0
  %346 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %347 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %346, align 8, !tbaa !25
  %348 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4, !tbaa !31
  store i32 %349, i32* %345, align 4, !tbaa !43
  %350 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 1
  %351 = icmp sgt i32 %92, 1
  br i1 %351, label %352, label %357

352:                                              ; preds = %342
  %353 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 1, i32 1
  %354 = load i32, i32* %353, align 4, !tbaa !31
  store i32 %354, i32* %350, align 4, !tbaa !43
  %355 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 2
  %356 = icmp eq i32 %92, 2
  br i1 %356, label %359, label %364

357:                                              ; preds = %342
  store i32 1, i32* %350, align 4, !tbaa !43
  %358 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 2
  store i32 1, i32* %358, align 4, !tbaa !43
  br label %406

359:                                              ; preds = %352
  store i32 1, i32* %355, align 4, !tbaa !43
  %360 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 1, i32 2
  %361 = load i32, i32* %360, align 4, !tbaa !26
  %362 = load i32, i32* %348, align 4, !tbaa !31
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %406, label %371

364:                                              ; preds = %352
  %365 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 2, i32 1
  %366 = load i32, i32* %365, align 4, !tbaa !31
  store i32 %366, i32* %355, align 4, !tbaa !43
  %367 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 1, i32 2
  %368 = load i32, i32* %367, align 4, !tbaa !26
  %369 = load i32, i32* %348, align 4, !tbaa !31
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %385, label %371

371:                                              ; preds = %364, %359
  %372 = call i8* @malloc(i32 1024) #7
  %373 = icmp eq i8* %372, null
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call i8* @halide_string_to_string(i8* %372, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %404

376:                                              ; preds = %371
  %377 = getelementptr inbounds i8, i8* %372, i32 1023
  store i8 0, i8* %377, align 1, !tbaa !36
  %378 = call i8* @halide_string_to_string(i8* nonnull %372, i8* nonnull %377, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  %379 = ptrtoint i8* %378 to i32
  %380 = ptrtoint i8* %372 to i32
  %381 = add i32 %379, 1
  %382 = sub i32 %381, %380
  %383 = sext i32 %382 to i64
  %384 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %372, i64 %383) #7
  call void @halide_error(i8* %0, i8* nonnull %372) #7
  br label %404

385:                                              ; preds = %364
  %386 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %347, i32 2, i32 2
  %387 = load i32, i32* %386, align 4, !tbaa !26
  %388 = mul nsw i32 %354, %368
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %406, label %390

390:                                              ; preds = %385
  %391 = call i8* @malloc(i32 1024) #7
  %392 = icmp eq i8* %391, null
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = call i8* @halide_string_to_string(i8* %391, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %404

395:                                              ; preds = %390
  %396 = getelementptr inbounds i8, i8* %391, i32 1023
  store i8 0, i8* %396, align 1, !tbaa !36
  %397 = call i8* @halide_string_to_string(i8* nonnull %391, i8* nonnull %396, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i32 0, i32 0)) #7
  %398 = ptrtoint i8* %397 to i32
  %399 = ptrtoint i8* %391 to i32
  %400 = add i32 %398, 1
  %401 = sub i32 %400, %399
  %402 = sext i32 %401 to i64
  %403 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %391, i64 %402) #7
  call void @halide_error(i8* %0, i8* nonnull %391) #7
  br label %404

404:                                              ; preds = %393, %395, %374, %376
  %405 = phi i8* [ %372, %376 ], [ %372, %374 ], [ %391, %395 ], [ %391, %393 ]
  call void @free(i8* %405) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %344) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %343) #9
  br label %484

406:                                              ; preds = %359, %357, %385
  %407 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i32*, i32*, i32, i32, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE, align 4, !tbaa !37
  %408 = load i64, i64* %90, align 8, !tbaa !11
  %409 = trunc i64 %408 to i32
  %410 = inttoptr i32 %409 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %411 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %410, i32 0, i32 1
  %412 = load %struct._cl_mem*, %struct._cl_mem** %411, align 8, !tbaa !52
  %413 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i32 0, i32 0
  %414 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %415 = load i8*, i8** %414, align 4, !tbaa !15
  %416 = call i32 %407(%struct._cl_command_queue* %68, %struct._cl_mem* %412, i32 0, i32* nonnull %413, i32* nonnull %345, i32 0, i32 0, i8* %415, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %344) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %343) #9
  br label %434

417:                                              ; preds = %339
  %418 = or i1 %12, %48
  br i1 %418, label %480, label %419

419:                                              ; preds = %417
  %420 = call i8* @malloc(i32 1024) #7
  %421 = icmp eq i8* %420, null
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  %423 = call i8* @halide_string_to_string(i8* %420, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.262, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %433

424:                                              ; preds = %419
  %425 = getelementptr inbounds i8, i8* %420, i32 1023
  store i8 0, i8* %425, align 1, !tbaa !36
  %426 = call i8* @halide_string_to_string(i8* nonnull %420, i8* nonnull %425, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.262, i32 0, i32 0)) #7
  %427 = ptrtoint i8* %426 to i32
  %428 = ptrtoint i8* %420 to i32
  %429 = add i32 %427, 1
  %430 = sub i32 %429, %428
  %431 = sext i32 %430 to i64
  %432 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %420, i64 %431) #7
  call void @halide_error(i8* %0, i8* nonnull %420) #7
  br label %433

433:                                              ; preds = %424, %422
  call void @free(i8* %420) #7
  br label %484

434:                                              ; preds = %406, %328
  %435 = phi i32 [ %416, %406 ], [ %338, %328 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %434
  %438 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 4, !tbaa !69
  br label %480

439:                                              ; preds = %434
  %440 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %435) #8
  %441 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %441) #9
  %442 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 3
  store i8* %0, i8** %442, align 4, !tbaa !44
  %443 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 4
  store i8 1, i8* %443, align 4, !tbaa !46
  %444 = call i8* @malloc(i32 1024) #7
  %445 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 0
  store i8* %444, i8** %445, align 4, !tbaa !47
  %446 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i32 0, i32 1
  store i8* %444, i8** %446, align 4, !tbaa !48
  %447 = icmp eq i8* %444, null
  br i1 %447, label %450, label %448

448:                                              ; preds = %439
  %449 = getelementptr inbounds i8, i8* %444, i32 1023
  store i8 0, i8* %449, align 1, !tbaa !36
  br label %450

450:                                              ; preds = %439, %448
  %451 = phi i8* [ %449, %448 ], [ null, %439 ]
  %452 = call i8* @halide_string_to_string(i8* %444, i8* %451, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.263, i32 0, i32 0)) #7
  %453 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %435) #8
  %454 = icmp eq i8* %453, null
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = call i8* @halide_string_to_string(i8* %452, i8* %451, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %459

457:                                              ; preds = %450
  %458 = call i8* @halide_string_to_string(i8* %452, i8* %451, i8* nonnull %453) #7
  br label %459

459:                                              ; preds = %455, %457
  %460 = phi i8* [ %458, %457 ], [ %456, %455 ]
  %461 = load i8*, i8** %445, align 4, !tbaa !47
  %462 = icmp eq i8* %461, null
  %463 = load i8*, i8** %442, align 4, !tbaa !44
  br i1 %462, label %464, label %465

464:                                              ; preds = %459
  call void @halide_error(i8* %463, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %474

465:                                              ; preds = %459
  %466 = ptrtoint i8* %460 to i32
  %467 = ptrtoint i8* %461 to i32
  %468 = sub i32 1, %467
  %469 = add i32 %468, %466
  %470 = sext i32 %469 to i64
  %471 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %463, i8* nonnull %461, i64 %470) #7
  %472 = load i8*, i8** %442, align 4, !tbaa !44
  %473 = load i8*, i8** %445, align 4, !tbaa !47
  call void @halide_error(i8* %472, i8* %473) #7
  br label %474

474:                                              ; preds = %465, %464
  %475 = load i8, i8* %443, align 4, !tbaa !46, !range !41
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = load i8*, i8** %445, align 4, !tbaa !47
  call void @free(i8* %478) #7
  br label %479

479:                                              ; preds = %474, %477
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %441) #9
  br label %484

480:                                              ; preds = %437, %417
  %481 = phi %struct._cl_command_queue* [ %438, %437 ], [ %68, %417 ]
  %482 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 4, !tbaa !37
  %483 = call i32 %482(%struct._cl_command_queue* %481) #7
  br label %484

484:                                              ; preds = %404, %326, %85, %86, %480, %479, %433, %260
  %485 = phi i32 [ 0, %480 ], [ %435, %479 ], [ -39, %433 ], [ -39, %260 ], [ %65, %86 ], [ -1, %85 ], [ -39, %326 ], [ -39, %404 ]
  %486 = load i8*, i8** %57, align 4, !tbaa !66
  %487 = call i32 @halide_release_cl_context(i8* %486) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %55) #9
  br label %488

488:                                              ; preds = %30, %29, %484
  %489 = phi i32 [ %485, %484 ], [ -42, %29 ], [ -42, %30 ]
  ret i32 %489
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_image_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_image_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_image_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE) #7
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_image_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE) #7
  ret i32 %3
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_image_wrap_cl_mem(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.264, i32 0, i32 0)) #7
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
  store i32 0, i32* %4, align 4, !tbaa !43
  %17 = load i32 (%struct._cl_mem*, i32, i32, i8*, i32*)*, i32 (%struct._cl_mem*, i32, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 4, !tbaa !37
  %18 = trunc i64 %2 to i32
  %19 = inttoptr i32 %18 to %struct._cl_mem*
  %20 = call i32 %17(%struct._cl_mem* %19, i32 4352, i32 4, i8* nonnull %16, i32* null) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4, !tbaa !43
  switch i32 %23, label %24 [
    i32 4340, label %73
    i32 4338, label %73
    i32 4337, label %73
  ]

24:                                               ; preds = %22, %15
  %25 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #9
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3
  store i8* %0, i8** %26, align 4, !tbaa !44
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4
  store i8 1, i8* %27, align 4, !tbaa !46
  %28 = call i8* @malloc(i32 1024) #7
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 4, !tbaa !47
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1
  %31 = icmp eq i8* %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %28, i32 1023
  store i8 0, i8* %33, align 1, !tbaa !36
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i8* [ %33, %32 ], [ null, %24 ]
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2
  store i8* %35, i8** %36, align 4
  %37 = call i8* @halide_string_to_string(i8* %28, i8* %35, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.265, i32 0, i32 0)) #7
  %38 = inttoptr i32 %18 to i8*
  %39 = call i8* @halide_pointer_to_string(i8* %37, i8* %35, i8* %38) #7
  %40 = call i8* @halide_string_to_string(i8* %39, i8* %35, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0)) #7
  store i8* %40, i8** %30, align 4, !tbaa !48
  %41 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %20) #8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i8* @halide_string_to_string(i8* %40, i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0)) #7
  br label %47

45:                                               ; preds = %34
  %46 = call i8* @halide_string_to_string(i8* %40, i8* %35, i8* nonnull %41) #7
  br label %47

47:                                               ; preds = %43, %45
  %48 = phi i8* [ %46, %45 ], [ %44, %43 ]
  %49 = load i8*, i8** %36, align 4, !tbaa !49
  %50 = call i8* @halide_string_to_string(i8* %48, i8* %49, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.266, i32 0, i32 0)) #7
  %51 = load i32, i32* %4, align 4, !tbaa !43
  %52 = sext i32 %51 to i64
  %53 = call i8* @halide_int64_to_string(i8* %50, i8* %49, i64 %52, i32 1) #7
  %54 = load i8*, i8** %29, align 4, !tbaa !47
  %55 = icmp eq i8* %54, null
  %56 = load i8*, i8** %26, align 4, !tbaa !44
  br i1 %55, label %57, label %58

57:                                               ; preds = %47
  call void @halide_error(i8* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %67

58:                                               ; preds = %47
  %59 = ptrtoint i8* %53 to i32
  %60 = ptrtoint i8* %54 to i32
  %61 = add i32 %59, 1
  %62 = sub i32 %61, %60
  %63 = sext i32 %62 to i64
  %64 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %56, i8* nonnull %54, i64 %63) #7
  %65 = load i8*, i8** %26, align 4, !tbaa !44
  %66 = load i8*, i8** %29, align 4, !tbaa !47
  call void @halide_error(i8* %65, i8* %66) #7
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i8, i8* %27, align 4, !tbaa !46, !range !41
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %29, align 4, !tbaa !47
  call void @free(i8* %71) #7
  br label %72

72:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #9
  br label %83

73:                                               ; preds = %22, %22, %22
  %74 = getelementptr inbounds i8, i8* %13, i32 8
  %75 = bitcast i8* %74 to %struct._cl_mem**
  store %struct._cl_mem* %19, %struct._cl_mem** %75, align 8, !tbaa !52
  %76 = bitcast i8* %13 to i64*
  store i64 0, i64* %76, align 8, !tbaa !54
  %77 = ptrtoint i8* %13 to i32
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %6, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, %struct.halide_device_interface_t** %79, align 8, !tbaa !71
  %80 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, i32 0, i32 15), align 4, !tbaa !72
  %81 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %80, i32 0, i32 0
  %82 = load void ()*, void ()** %81, align 4, !tbaa !92
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
define weak i32 @halide_opencl_image_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 {
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
  br i1 %13, label %14, label %55, !llvm.loop !118

14:                                               ; preds = %7, %12
  %15 = phi i32 [ 0, %7 ], [ %39, %12 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !28
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !28
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
  %29 = load i32, i32* %28, align 4, !tbaa !26
  %30 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 2
  %31 = load i32, i32* %30, align 4, !tbaa !26
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %15, i32 3
  %35 = load i32, i32* %34, align 4, !tbaa !119
  %36 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %15, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !119
  %38 = icmp eq i32 %35, %37
  %39 = add nuw nsw i32 %15, 1
  br i1 %38, label %12, label %40

40:                                               ; preds = %14, %21, %27, %33
  %41 = tail call i8* @malloc(i32 1024) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i8* @halide_string_to_string(i8* %41, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, i8* %41, i32 1023
  store i8 0, i8* %46, align 1, !tbaa !36
  %47 = tail call i8* @halide_string_to_string(i8* nonnull %41, i8* nonnull %46, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i32 0, i32 0)) #7
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
define weak i32 @halide_opencl_image_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  %6 = tail call i8* @malloc(i32 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.268, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.268, i32 0, i32 0)) #7
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
define weak i32 @halide_opencl_image_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i32 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i32 0, i32 0)) #7
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i32 0, i32 0)) #7
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
define weak %struct.halide_device_interface_t* @halide_opencl_image_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
}

declare i8* @strncpy(i8*, i8*, i32) local_unnamed_addr #2

declare i8* @getenv(i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !79
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #8
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !tbaa !79
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !87
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #8
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !tbaa !87
  %25 = load i32, i32* %3, align 4, !tbaa !79
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 4, !tbaa !87
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i32 0, i32 0
  %33 = load %struct._cl_context*, %struct._cl_context** %32, align 4, !tbaa !84
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i32 0, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !82
  %36 = ptrtoint %struct._cl_context* %33 to i32
  %37 = add i32 %35, %36
  %38 = mul i32 %37, -1640531527
  %39 = sub i32 32, %31
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %31, 31
  br i1 %41, label %60, label %42

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %44, align 4, !tbaa !80
  br label %48

46:                                               ; preds = %48
  %47 = icmp slt i32 %55, %29
  br i1 %47, label %48, label %60, !llvm.loop !120

48:                                               ; preds = %42, %46
  %49 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %50 = add i32 %49, %40
  %51 = and i32 %50, %43
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %45, i32 %51, i32 2
  %53 = load i32, i32* %52, align 4, !tbaa !82
  %54 = icmp ult i32 %53, 2
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %56, label %46

56:                                               ; preds = %48
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %45, i32 %51
  %58 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %57 to i8*
  %59 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %58, i8* nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !tbaa.struct !121
  br label %61

60:                                               ; preds = %46, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.279, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %61

61:                                               ; preds = %56, %60, %20, %6
  %62 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %56 ], [ false, %60 ]
  ret i1 %62
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !79
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %4
  %8 = shl i32 16, %1
  %9 = tail call i8* @malloc(i32 %8) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i32 %8) #7
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 4, !tbaa !80
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13 to i8**
  store i8* %9, i8** %15, align 4, !tbaa !80
  store i32 %1, i32* %3, align 4, !tbaa !79
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !87
  %18 = icmp sgt i32 %17, 0
  %19 = icmp ne i32 %4, 31
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %11, %30
  %22 = phi i32 [ %31, %30 ], [ 0, %11 ]
  %23 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14, i32 %22, i32 2
  %24 = load i32, i32* %23, align 4, !tbaa !82
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14, i32 %22
  %28 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %27) #8
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.280, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %30

30:                                               ; preds = %21, %26, %29
  %31 = add nuw nsw i32 %22, 1
  %32 = icmp slt i32 %31, %7
  br i1 %32, label %21, label %33, !llvm.loop !122

33:                                               ; preds = %30, %11
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %14 to i8*
  tail call void @free(i8* %34) #7
  br label %35

35:                                               ; preds = %2, %33, %6
  %36 = phi i1 [ false, %6 ], [ true, %33 ], [ true, %2 ]
  ret i1 %36
}

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_opencl.cpp() #6 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE to i8*), align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !79
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !80
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !87
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i32 0, i32 4), align 4, !tbaa !76
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, align 8
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
attributes #6 = { nofree norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!39 = !{!40, !40, i64 0}
!40 = !{!"bool", !5, i64 0}
!41 = !{i8 0, i8 2}
!42 = distinct !{!42, !8}
!43 = !{!21, !21, i64 0}
!44 = !{!45, !17, i64 12}
!45 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !40, i64 16, !5, i64 17}
!46 = !{!45, !40, i64 16}
!47 = !{!45, !17, i64 0}
!48 = !{!45, !17, i64 4}
!49 = !{!45, !17, i64 8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = !{!53, !17, i64 8}
!53 = !{!"_ZTSN6Halide7Runtime8Internal6OpenCL13device_handleE", !4, i64 0, !17, i64 8}
!54 = !{!53, !4, i64 0}
!55 = !{!56, !17, i64 12}
!56 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !40, i64 16, !5, i64 17}
!57 = !{!56, !40, i64 16}
!58 = !{!56, !17, i64 0}
!59 = !{!56, !17, i64 4}
!60 = !{!61, !17, i64 12}
!61 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy16384EEE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !40, i64 16, !5, i64 17}
!62 = !{!61, !40, i64 16}
!63 = !{!61, !17, i64 0}
!64 = !{!61, !17, i64 4}
!65 = !{!61, !17, i64 8}
!66 = !{!67, !17, i64 0}
!67 = !{!"_ZTSN6Halide7Runtime8Internal6OpenCL9ClContextE", !17, i64 0, !17, i64 4, !17, i64 8, !21, i64 12}
!68 = !{!67, !17, i64 4}
!69 = !{!67, !17, i64 8}
!70 = !{!67, !21, i64 12}
!71 = !{!16, !17, i64 8}
!72 = !{!73, !17, i64 60}
!73 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!74 = !{!75, !17, i64 4}
!75 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!76 = !{!77, !21, i64 16}
!77 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programEE", !78, i64 0, !21, i64 4, !17, i64 8, !21, i64 12, !21, i64 16}
!78 = !{!"_ZTS12halide_mutex", !5, i64 0}
!79 = !{!77, !21, i64 4}
!80 = !{!77, !17, i64 8}
!81 = distinct !{!81, !8}
!82 = !{!83, !21, i64 8}
!83 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE17CachedCompilationE", !17, i64 0, !17, i64 4, !21, i64 8, !21, i64 12}
!84 = !{!83, !17, i64 0}
!85 = !{!83, !21, i64 12}
!86 = !{!83, !17, i64 4}
!87 = !{!77, !21, i64 12}
!88 = distinct !{!88, !8}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
!92 = !{!75, !17, i64 0}
!93 = distinct !{!93, !8}
!94 = !{!16, !4, i64 16}
!95 = distinct !{!95, !8}
!96 = !{!97, !21, i64 0}
!97 = !{!"_ZTS17_cl_buffer_region", !21, i64 0, !21, i64 4}
!98 = !{!97, !21, i64 4}
!99 = distinct !{!99, !8}
!100 = distinct !{!100, !8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = distinct !{!103, !8}
!104 = !{!105, !21, i64 4}
!105 = !{!"_ZTS16_cl_image_format", !21, i64 0, !21, i64 4}
!106 = !{!105, !21, i64 0}
!107 = !{!108, !21, i64 0}
!108 = !{!"_ZTS14_cl_image_desc", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !17, i64 36}
!109 = !{!108, !21, i64 4}
!110 = !{!108, !21, i64 8}
!111 = !{!108, !21, i64 12}
!112 = !{!108, !21, i64 16}
!113 = !{!108, !21, i64 20}
!114 = !{!108, !21, i64 24}
!115 = !{!108, !21, i64 28}
!116 = !{!108, !21, i64 32}
!117 = !{!108, !17, i64 36}
!118 = distinct !{!118, !8}
!119 = !{!27, !21, i64 12}
!120 = distinct !{!120, !8}
!121 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !43, i64 12, i64 4, !43}
!122 = distinct !{!122, !8}
