; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opencl.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::OpenCL::device_handle" = type { i64, %struct._cl_mem* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::OpenCL::ClContext" = type <{ i8*, %struct._cl_context*, %struct._cl_command_queue*, i32, [4 x i8] }>
%struct._cl_buffer_region = type { i64, i64 }

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi = comdat any

$_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = comdat any

@_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE = weak local_unnamed_addr global i32 (i32, %struct._cl_platform_id**, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE = weak local_unnamed_addr global i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE = weak local_unnamed_addr global i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE = weak local_unnamed_addr global i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL18clCreateSubDevicesE = weak local_unnamed_addr global i32 (%struct._cl_device_id*, i64*, i32, %struct._cl_device_id**, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clRetainDeviceE = weak local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clReleaseDeviceE = weak local_unnamed_addr global i32 (%struct._cl_device_id*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE = weak local_unnamed_addr global %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL23clCreateContextFromTypeE = weak local_unnamed_addr global %struct._cl_context* (i64*, i64, void (i8*, i8*, i64, i8*)*, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clRetainContextE = weak local_unnamed_addr global i32 (%struct._cl_context*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE = weak local_unnamed_addr global i32 (%struct._cl_context*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE = weak local_unnamed_addr global i32 (%struct._cl_context*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE = weak local_unnamed_addr global %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL20clRetainCommandQueueE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL21clGetCommandQueueInfoE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE = weak local_unnamed_addr global %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_mem*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL26clGetSupportedImageFormatsE = weak local_unnamed_addr global i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE = weak local_unnamed_addr global i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clGetImageInfoE = weak local_unnamed_addr global i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL32clSetMemObjectDestructorCallbackE = weak local_unnamed_addr global i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE = weak local_unnamed_addr global %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clRetainProgramE = weak local_unnamed_addr global i32 (%struct._cl_program*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE = weak global i32 (%struct._cl_program*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE = weak local_unnamed_addr global i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE = weak local_unnamed_addr global i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE = weak local_unnamed_addr global %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clRetainKernelE = weak local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE = weak local_unnamed_addr global i32 (%struct._cl_kernel*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE = weak local_unnamed_addr global i32 (%struct._cl_kernel*, i32, i64, i8*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL7clFlushE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL8clFinishE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueReadBufferRectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL24clEnqueueWriteBufferRectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueMapBufferE = weak local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL17clEnqueueMapImageE = weak local_unnamed_addr global i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64*, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueUnmapMemObjectE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE = weak local_unnamed_addr global i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE = weak local_unnamed_addr global i8* null, align 8
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
@_ZN6Halide7Runtime8Internal6OpenCL7contextE = weak global %struct._cl_context* null, align 8
@_ZN6Halide7Runtime8Internal6OpenCL13command_queueE = weak global %struct._cl_command_queue* null, align 8
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
@_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
@_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 4
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
@_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal6OpenCL28opencl_device_interface_implE }, align 8
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
@_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* @halide_opencl_compute_capability, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal6OpenCL34opencl_image_device_interface_implE }, align 8
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
@_ZN6Halide7Runtime8Internal6OpenCL28opencl_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 8
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
@_ZN6Halide7Runtime8Internal6OpenCL34opencl_image_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_device_sync, i32 (i8*)* @halide_opencl_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_opencl_image_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_opencl_image_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_opencl_image_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_image_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_image_wrap_cl_mem, i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem }, align 8
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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #7
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #8
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
  %3 = load i8*, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 8, !tbaa !37
  %4 = tail call i8* @halide_get_library_symbol(i8* %3, i8* %1) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #7
  store i8* %7, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 8, !tbaa !37
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0)) #7
  store i8* %10, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 8, !tbaa !37
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
  %2 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %3 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = tail call i8* @malloc(i64 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)) #7
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %10, label %18, label %19

18:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %6, i8** bitcast (i32 (i32, %struct._cl_platform_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE to i8**), align 8, !tbaa !37
  %27 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #7
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = tail call i8* @malloc(i64 1024) #7
  %31 = icmp eq i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %33, align 1, !tbaa !36
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i8* [ %33, %32 ], [ null, %29 ]
  %36 = tail call i8* @halide_string_to_string(i8* %30, i8* %35, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %35, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #7
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %35, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %31, label %39, label %40

39:                                               ; preds = %34
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %27, i8** bitcast (i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE to i8**), align 8, !tbaa !37
  %48 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #7
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = tail call i8* @malloc(i64 1024) #7
  %52 = icmp eq i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %51, i64 1023
  store i8 0, i8* %54, align 1, !tbaa !36
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %54, %53 ], [ null, %50 ]
  %57 = tail call i8* @halide_string_to_string(i8* %51, i8* %56, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %56, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #7
  %59 = tail call i8* @halide_string_to_string(i8* %58, i8* %56, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %52, label %60, label %61

60:                                               ; preds = %55
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %48, i8** bitcast (i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE to i8**), align 8, !tbaa !37
  %69 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #7
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = tail call i8* @malloc(i64 1024) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %75, align 1, !tbaa !36
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i8* [ %75, %74 ], [ null, %71 ]
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #7
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %77, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %73, label %81, label %82

81:                                               ; preds = %76
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %69, i8** bitcast (i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE to i8**), align 8, !tbaa !37
  %90 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #7
  store i8* %90, i8** bitcast (i32 (%struct._cl_device_id*, i64*, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clCreateSubDevicesE to i8**), align 8, !tbaa !37
  %91 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #7
  store i8* %91, i8** bitcast (i32 (%struct._cl_device_id*)** @_ZN6Halide7Runtime8Internal6OpenCL14clRetainDeviceE to i8**), align 8, !tbaa !37
  %92 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #7
  store i8* %92, i8** bitcast (i32 (%struct._cl_device_id*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseDeviceE to i8**), align 8, !tbaa !37
  %93 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #7
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = tail call i8* @malloc(i64 1024) #7
  %97 = icmp eq i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, i8* %96, i64 1023
  store i8 0, i8* %99, align 1, !tbaa !36
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i8* [ %99, %98 ], [ null, %95 ]
  %102 = tail call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %103 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #7
  %104 = tail call i8* @halide_string_to_string(i8* %103, i8* %101, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %97, label %105, label %106

105:                                              ; preds = %100
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %93, i8** bitcast (%struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE to i8**), align 8, !tbaa !37
  %114 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = tail call i8* @malloc(i64 1024) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %120, align 1, !tbaa !36
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i8* [ %120, %119 ], [ null, %116 ]
  %123 = tail call i8* @halide_string_to_string(i8* %117, i8* %122, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %124 = tail call i8* @halide_string_to_string(i8* %123, i8* %122, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #7
  %125 = tail call i8* @halide_string_to_string(i8* %124, i8* %122, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %118, label %126, label %127

126:                                              ; preds = %121
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %114, i8** bitcast (%struct._cl_context* (i64*, i64, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL23clCreateContextFromTypeE to i8**), align 8, !tbaa !37
  %135 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #7
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = tail call i8* @malloc(i64 1024) #7
  %139 = icmp eq i8* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, i8* %138, i64 1023
  store i8 0, i8* %141, align 1, !tbaa !36
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i8* [ %141, %140 ], [ null, %137 ]
  %144 = tail call i8* @halide_string_to_string(i8* %138, i8* %143, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %143, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #7
  %146 = tail call i8* @halide_string_to_string(i8* %145, i8* %143, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %139, label %147, label %148

147:                                              ; preds = %142
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %135, i8** bitcast (i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL15clRetainContextE to i8**), align 8, !tbaa !37
  %156 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)) #7
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = tail call i8* @malloc(i64 1024) #7
  %160 = icmp eq i8* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds i8, i8* %159, i64 1023
  store i8 0, i8* %162, align 1, !tbaa !36
  br label %163

163:                                              ; preds = %161, %158
  %164 = phi i8* [ %162, %161 ], [ null, %158 ]
  %165 = tail call i8* @halide_string_to_string(i8* %159, i8* %164, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %166 = tail call i8* @halide_string_to_string(i8* %165, i8* %164, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)) #7
  %167 = tail call i8* @halide_string_to_string(i8* %166, i8* %164, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %160, label %168, label %169

168:                                              ; preds = %163
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %156, i8** bitcast (i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE to i8**), align 8, !tbaa !37
  %177 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0)) #7
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = tail call i8* @malloc(i64 1024) #7
  %181 = icmp eq i8* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 1023
  store i8 0, i8* %183, align 1, !tbaa !36
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i8* [ %183, %182 ], [ null, %179 ]
  %186 = tail call i8* @halide_string_to_string(i8* %180, i8* %185, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %187 = tail call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0)) #7
  %188 = tail call i8* @halide_string_to_string(i8* %187, i8* %185, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %181, label %189, label %190

189:                                              ; preds = %184
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %177, i8** bitcast (i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE to i8**), align 8, !tbaa !37
  %198 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #7
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %197
  %201 = tail call i8* @malloc(i64 1024) #7
  %202 = icmp eq i8* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds i8, i8* %201, i64 1023
  store i8 0, i8* %204, align 1, !tbaa !36
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i8* [ %204, %203 ], [ null, %200 ]
  %207 = tail call i8* @halide_string_to_string(i8* %201, i8* %206, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %208 = tail call i8* @halide_string_to_string(i8* %207, i8* %206, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #7
  %209 = tail call i8* @halide_string_to_string(i8* %208, i8* %206, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %202, label %210, label %211

210:                                              ; preds = %205
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %198, i8** bitcast (%struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE to i8**), align 8, !tbaa !37
  %219 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0)) #7
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %239

221:                                              ; preds = %218
  %222 = tail call i8* @malloc(i64 1024) #7
  %223 = icmp eq i8* %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds i8, i8* %222, i64 1023
  store i8 0, i8* %225, align 1, !tbaa !36
  br label %226

226:                                              ; preds = %224, %221
  %227 = phi i8* [ %225, %224 ], [ null, %221 ]
  %228 = tail call i8* @halide_string_to_string(i8* %222, i8* %227, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %229 = tail call i8* @halide_string_to_string(i8* %228, i8* %227, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0)) #7
  %230 = tail call i8* @halide_string_to_string(i8* %229, i8* %227, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %223, label %231, label %232

231:                                              ; preds = %226
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %219, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL20clRetainCommandQueueE to i8**), align 8, !tbaa !37
  %240 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #7
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = tail call i8* @malloc(i64 1024) #7
  %244 = icmp eq i8* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds i8, i8* %243, i64 1023
  store i8 0, i8* %246, align 1, !tbaa !36
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi i8* [ %246, %245 ], [ null, %242 ]
  %249 = tail call i8* @halide_string_to_string(i8* %243, i8* %248, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %250 = tail call i8* @halide_string_to_string(i8* %249, i8* %248, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #7
  %251 = tail call i8* @halide_string_to_string(i8* %250, i8* %248, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %244, label %252, label %253

252:                                              ; preds = %247
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %240, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE to i8**), align 8, !tbaa !37
  %261 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0)) #7
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %281

263:                                              ; preds = %260
  %264 = tail call i8* @malloc(i64 1024) #7
  %265 = icmp eq i8* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds i8, i8* %264, i64 1023
  store i8 0, i8* %267, align 1, !tbaa !36
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i8* [ %267, %266 ], [ null, %263 ]
  %270 = tail call i8* @halide_string_to_string(i8* %264, i8* %269, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %271 = tail call i8* @halide_string_to_string(i8* %270, i8* %269, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0)) #7
  %272 = tail call i8* @halide_string_to_string(i8* %271, i8* %269, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %265, label %273, label %274

273:                                              ; preds = %268
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %261, i8** bitcast (i32 (%struct._cl_command_queue*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetCommandQueueInfoE to i8**), align 8, !tbaa !37
  %282 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #7
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %302

284:                                              ; preds = %281
  %285 = tail call i8* @malloc(i64 1024) #7
  %286 = icmp eq i8* %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, i8* %285, i64 1023
  store i8 0, i8* %288, align 1, !tbaa !36
  br label %289

289:                                              ; preds = %287, %284
  %290 = phi i8* [ %288, %287 ], [ null, %284 ]
  %291 = tail call i8* @halide_string_to_string(i8* %285, i8* %290, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %292 = tail call i8* @halide_string_to_string(i8* %291, i8* %290, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #7
  %293 = tail call i8* @halide_string_to_string(i8* %292, i8* %290, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %286, label %294, label %295

294:                                              ; preds = %289
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %282, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE to i8**), align 8, !tbaa !37
  %303 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #7
  %304 = icmp eq i8* %303, null
  br i1 %304, label %305, label %323

305:                                              ; preds = %302
  %306 = tail call i8* @malloc(i64 1024) #7
  %307 = icmp eq i8* %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, i8* %306, i64 1023
  store i8 0, i8* %309, align 1, !tbaa !36
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i8* [ %309, %308 ], [ null, %305 ]
  %312 = tail call i8* @halide_string_to_string(i8* %306, i8* %311, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %313 = tail call i8* @halide_string_to_string(i8* %312, i8* %311, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #7
  %314 = tail call i8* @halide_string_to_string(i8* %313, i8* %311, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %307, label %315, label %316

315:                                              ; preds = %310
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %303, i8** bitcast (%struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE to i8**), align 8, !tbaa !37
  %324 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #7
  store i8* %324, i8** bitcast (%struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE to i8**), align 8, !tbaa !37
  %325 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0)) #7
  %326 = icmp eq i8* %325, null
  br i1 %326, label %327, label %345

327:                                              ; preds = %323
  %328 = tail call i8* @malloc(i64 1024) #7
  %329 = icmp eq i8* %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds i8, i8* %328, i64 1023
  store i8 0, i8* %331, align 1, !tbaa !36
  br label %332

332:                                              ; preds = %330, %327
  %333 = phi i8* [ %331, %330 ], [ null, %327 ]
  %334 = tail call i8* @halide_string_to_string(i8* %328, i8* %333, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %335 = tail call i8* @halide_string_to_string(i8* %334, i8* %333, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0)) #7
  %336 = tail call i8* @halide_string_to_string(i8* %335, i8* %333, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %329, label %337, label %338

337:                                              ; preds = %332
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %325, i8** bitcast (i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE to i8**), align 8, !tbaa !37
  %346 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0)) #7
  %347 = icmp eq i8* %346, null
  br i1 %347, label %348, label %366

348:                                              ; preds = %345
  %349 = tail call i8* @malloc(i64 1024) #7
  %350 = icmp eq i8* %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds i8, i8* %349, i64 1023
  store i8 0, i8* %352, align 1, !tbaa !36
  br label %353

353:                                              ; preds = %351, %348
  %354 = phi i8* [ %352, %351 ], [ null, %348 ]
  %355 = tail call i8* @halide_string_to_string(i8* %349, i8* %354, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %356 = tail call i8* @halide_string_to_string(i8* %355, i8* %354, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0)) #7
  %357 = tail call i8* @halide_string_to_string(i8* %356, i8* %354, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %350, label %358, label %359

358:                                              ; preds = %353
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %346, i8** bitcast (i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE to i8**), align 8, !tbaa !37
  %367 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0)) #7
  %368 = icmp eq i8* %367, null
  br i1 %368, label %369, label %387

369:                                              ; preds = %366
  %370 = tail call i8* @malloc(i64 1024) #7
  %371 = icmp eq i8* %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds i8, i8* %370, i64 1023
  store i8 0, i8* %373, align 1, !tbaa !36
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i8* [ %373, %372 ], [ null, %369 ]
  %376 = tail call i8* @halide_string_to_string(i8* %370, i8* %375, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %377 = tail call i8* @halide_string_to_string(i8* %376, i8* %375, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0)) #7
  %378 = tail call i8* @halide_string_to_string(i8* %377, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %371, label %379, label %380

379:                                              ; preds = %374
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %367, i8** bitcast (i32 (%struct._cl_context*, i64, i32, i32, %struct._cl_image_format*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL26clGetSupportedImageFormatsE to i8**), align 8, !tbaa !37
  %388 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #7
  %389 = icmp eq i8* %388, null
  br i1 %389, label %390, label %408

390:                                              ; preds = %387
  %391 = tail call i8* @malloc(i64 1024) #7
  %392 = icmp eq i8* %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %391, i64 1023
  store i8 0, i8* %394, align 1, !tbaa !36
  br label %395

395:                                              ; preds = %393, %390
  %396 = phi i8* [ %394, %393 ], [ null, %390 ]
  %397 = tail call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %398 = tail call i8* @halide_string_to_string(i8* %397, i8* %396, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #7
  %399 = tail call i8* @halide_string_to_string(i8* %398, i8* %396, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %392, label %400, label %401

400:                                              ; preds = %395
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %388, i8** bitcast (i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE to i8**), align 8, !tbaa !37
  %409 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)) #7
  %410 = icmp eq i8* %409, null
  br i1 %410, label %411, label %429

411:                                              ; preds = %408
  %412 = tail call i8* @malloc(i64 1024) #7
  %413 = icmp eq i8* %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds i8, i8* %412, i64 1023
  store i8 0, i8* %415, align 1, !tbaa !36
  br label %416

416:                                              ; preds = %414, %411
  %417 = phi i8* [ %415, %414 ], [ null, %411 ]
  %418 = tail call i8* @halide_string_to_string(i8* %412, i8* %417, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %419 = tail call i8* @halide_string_to_string(i8* %418, i8* %417, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)) #7
  %420 = tail call i8* @halide_string_to_string(i8* %419, i8* %417, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %413, label %421, label %422

421:                                              ; preds = %416
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %409, i8** bitcast (i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetImageInfoE to i8**), align 8, !tbaa !37
  %430 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0)) #7
  %431 = icmp eq i8* %430, null
  br i1 %431, label %432, label %450

432:                                              ; preds = %429
  %433 = tail call i8* @malloc(i64 1024) #7
  %434 = icmp eq i8* %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds i8, i8* %433, i64 1023
  store i8 0, i8* %436, align 1, !tbaa !36
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi i8* [ %436, %435 ], [ null, %432 ]
  %439 = tail call i8* @halide_string_to_string(i8* %433, i8* %438, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %440 = tail call i8* @halide_string_to_string(i8* %439, i8* %438, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0)) #7
  %441 = tail call i8* @halide_string_to_string(i8* %440, i8* %438, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %434, label %442, label %443

442:                                              ; preds = %437
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %430, i8** bitcast (i32 (%struct._cl_mem*, void (%struct._cl_mem*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL32clSetMemObjectDestructorCallbackE to i8**), align 8, !tbaa !37
  %451 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0)) #7
  %452 = icmp eq i8* %451, null
  br i1 %452, label %453, label %471

453:                                              ; preds = %450
  %454 = tail call i8* @malloc(i64 1024) #7
  %455 = icmp eq i8* %454, null
  br i1 %455, label %458, label %456

456:                                              ; preds = %453
  %457 = getelementptr inbounds i8, i8* %454, i64 1023
  store i8 0, i8* %457, align 1, !tbaa !36
  br label %458

458:                                              ; preds = %456, %453
  %459 = phi i8* [ %457, %456 ], [ null, %453 ]
  %460 = tail call i8* @halide_string_to_string(i8* %454, i8* %459, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %461 = tail call i8* @halide_string_to_string(i8* %460, i8* %459, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0)) #7
  %462 = tail call i8* @halide_string_to_string(i8* %461, i8* %459, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %455, label %463, label %464

463:                                              ; preds = %458
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %451, i8** bitcast (%struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE to i8**), align 8, !tbaa !37
  %472 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #7
  %473 = icmp eq i8* %472, null
  br i1 %473, label %474, label %492

474:                                              ; preds = %471
  %475 = tail call i8* @malloc(i64 1024) #7
  %476 = icmp eq i8* %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds i8, i8* %475, i64 1023
  store i8 0, i8* %478, align 1, !tbaa !36
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i8* [ %478, %477 ], [ null, %474 ]
  %481 = tail call i8* @halide_string_to_string(i8* %475, i8* %480, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %482 = tail call i8* @halide_string_to_string(i8* %481, i8* %480, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #7
  %483 = tail call i8* @halide_string_to_string(i8* %482, i8* %480, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %476, label %484, label %485

484:                                              ; preds = %479
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %472, i8** bitcast (i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL15clRetainProgramE to i8**), align 8, !tbaa !37
  %493 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0)) #7
  %494 = icmp eq i8* %493, null
  br i1 %494, label %495, label %513

495:                                              ; preds = %492
  %496 = tail call i8* @malloc(i64 1024) #7
  %497 = icmp eq i8* %496, null
  br i1 %497, label %500, label %498

498:                                              ; preds = %495
  %499 = getelementptr inbounds i8, i8* %496, i64 1023
  store i8 0, i8* %499, align 1, !tbaa !36
  br label %500

500:                                              ; preds = %498, %495
  %501 = phi i8* [ %499, %498 ], [ null, %495 ]
  %502 = tail call i8* @halide_string_to_string(i8* %496, i8* %501, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %503 = tail call i8* @halide_string_to_string(i8* %502, i8* %501, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0)) #7
  %504 = tail call i8* @halide_string_to_string(i8* %503, i8* %501, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %497, label %505, label %506

505:                                              ; preds = %500
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %493, i8** bitcast (i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE to i8**), align 8, !tbaa !37
  %514 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0)) #7
  %515 = icmp eq i8* %514, null
  br i1 %515, label %516, label %534

516:                                              ; preds = %513
  %517 = tail call i8* @malloc(i64 1024) #7
  %518 = icmp eq i8* %517, null
  br i1 %518, label %521, label %519

519:                                              ; preds = %516
  %520 = getelementptr inbounds i8, i8* %517, i64 1023
  store i8 0, i8* %520, align 1, !tbaa !36
  br label %521

521:                                              ; preds = %519, %516
  %522 = phi i8* [ %520, %519 ], [ null, %516 ]
  %523 = tail call i8* @halide_string_to_string(i8* %517, i8* %522, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %524 = tail call i8* @halide_string_to_string(i8* %523, i8* %522, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0)) #7
  %525 = tail call i8* @halide_string_to_string(i8* %524, i8* %522, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %518, label %526, label %527

526:                                              ; preds = %521
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %514, i8** bitcast (i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE to i8**), align 8, !tbaa !37
  %535 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0)) #7
  %536 = icmp eq i8* %535, null
  br i1 %536, label %537, label %555

537:                                              ; preds = %534
  %538 = tail call i8* @malloc(i64 1024) #7
  %539 = icmp eq i8* %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds i8, i8* %538, i64 1023
  store i8 0, i8* %541, align 1, !tbaa !36
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i8* [ %541, %540 ], [ null, %537 ]
  %544 = tail call i8* @halide_string_to_string(i8* %538, i8* %543, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %545 = tail call i8* @halide_string_to_string(i8* %544, i8* %543, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0)) #7
  %546 = tail call i8* @halide_string_to_string(i8* %545, i8* %543, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %539, label %547, label %548

547:                                              ; preds = %542
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %535, i8** bitcast (i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE to i8**), align 8, !tbaa !37
  %556 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #7
  %557 = icmp eq i8* %556, null
  br i1 %557, label %558, label %576

558:                                              ; preds = %555
  %559 = tail call i8* @malloc(i64 1024) #7
  %560 = icmp eq i8* %559, null
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, i8* %559, i64 1023
  store i8 0, i8* %562, align 1, !tbaa !36
  br label %563

563:                                              ; preds = %561, %558
  %564 = phi i8* [ %562, %561 ], [ null, %558 ]
  %565 = tail call i8* @halide_string_to_string(i8* %559, i8* %564, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %566 = tail call i8* @halide_string_to_string(i8* %565, i8* %564, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #7
  %567 = tail call i8* @halide_string_to_string(i8* %566, i8* %564, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %560, label %568, label %569

568:                                              ; preds = %563
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %556, i8** bitcast (%struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE to i8**), align 8, !tbaa !37
  %577 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #7
  %578 = icmp eq i8* %577, null
  br i1 %578, label %579, label %597

579:                                              ; preds = %576
  %580 = tail call i8* @malloc(i64 1024) #7
  %581 = icmp eq i8* %580, null
  br i1 %581, label %584, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds i8, i8* %580, i64 1023
  store i8 0, i8* %583, align 1, !tbaa !36
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i8* [ %583, %582 ], [ null, %579 ]
  %586 = tail call i8* @halide_string_to_string(i8* %580, i8* %585, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %587 = tail call i8* @halide_string_to_string(i8* %586, i8* %585, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #7
  %588 = tail call i8* @halide_string_to_string(i8* %587, i8* %585, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %581, label %589, label %590

589:                                              ; preds = %584
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %577, i8** bitcast (i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL14clRetainKernelE to i8**), align 8, !tbaa !37
  %598 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0)) #7
  %599 = icmp eq i8* %598, null
  br i1 %599, label %600, label %618

600:                                              ; preds = %597
  %601 = tail call i8* @malloc(i64 1024) #7
  %602 = icmp eq i8* %601, null
  br i1 %602, label %605, label %603

603:                                              ; preds = %600
  %604 = getelementptr inbounds i8, i8* %601, i64 1023
  store i8 0, i8* %604, align 1, !tbaa !36
  br label %605

605:                                              ; preds = %603, %600
  %606 = phi i8* [ %604, %603 ], [ null, %600 ]
  %607 = tail call i8* @halide_string_to_string(i8* %601, i8* %606, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %608 = tail call i8* @halide_string_to_string(i8* %607, i8* %606, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0)) #7
  %609 = tail call i8* @halide_string_to_string(i8* %608, i8* %606, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %602, label %610, label %611

610:                                              ; preds = %605
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %598, i8** bitcast (i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE to i8**), align 8, !tbaa !37
  %619 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0)) #7
  %620 = icmp eq i8* %619, null
  br i1 %620, label %621, label %639

621:                                              ; preds = %618
  %622 = tail call i8* @malloc(i64 1024) #7
  %623 = icmp eq i8* %622, null
  br i1 %623, label %626, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds i8, i8* %622, i64 1023
  store i8 0, i8* %625, align 1, !tbaa !36
  br label %626

626:                                              ; preds = %624, %621
  %627 = phi i8* [ %625, %624 ], [ null, %621 ]
  %628 = tail call i8* @halide_string_to_string(i8* %622, i8* %627, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %629 = tail call i8* @halide_string_to_string(i8* %628, i8* %627, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0)) #7
  %630 = tail call i8* @halide_string_to_string(i8* %629, i8* %627, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %623, label %631, label %632

631:                                              ; preds = %626
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %619, i8** bitcast (i32 (%struct._cl_kernel*, i32, i64, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE to i8**), align 8, !tbaa !37
  %640 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)) #7
  %641 = icmp eq i8* %640, null
  br i1 %641, label %642, label %660

642:                                              ; preds = %639
  %643 = tail call i8* @malloc(i64 1024) #7
  %644 = icmp eq i8* %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %642
  %646 = getelementptr inbounds i8, i8* %643, i64 1023
  store i8 0, i8* %646, align 1, !tbaa !36
  br label %647

647:                                              ; preds = %645, %642
  %648 = phi i8* [ %646, %645 ], [ null, %642 ]
  %649 = tail call i8* @halide_string_to_string(i8* %643, i8* %648, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %650 = tail call i8* @halide_string_to_string(i8* %649, i8* %648, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)) #7
  %651 = tail call i8* @halide_string_to_string(i8* %650, i8* %648, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %644, label %652, label %653

652:                                              ; preds = %647
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %640, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL7clFlushE to i8**), align 8, !tbaa !37
  %661 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #7
  %662 = icmp eq i8* %661, null
  br i1 %662, label %663, label %681

663:                                              ; preds = %660
  %664 = tail call i8* @malloc(i64 1024) #7
  %665 = icmp eq i8* %664, null
  br i1 %665, label %668, label %666

666:                                              ; preds = %663
  %667 = getelementptr inbounds i8, i8* %664, i64 1023
  store i8 0, i8* %667, align 1, !tbaa !36
  br label %668

668:                                              ; preds = %666, %663
  %669 = phi i8* [ %667, %666 ], [ null, %663 ]
  %670 = tail call i8* @halide_string_to_string(i8* %664, i8* %669, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %671 = tail call i8* @halide_string_to_string(i8* %670, i8* %669, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #7
  %672 = tail call i8* @halide_string_to_string(i8* %671, i8* %669, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %665, label %673, label %674

673:                                              ; preds = %668
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %661, i8** bitcast (i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE to i8**), align 8, !tbaa !37
  %682 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0)) #7
  %683 = icmp eq i8* %682, null
  br i1 %683, label %684, label %702

684:                                              ; preds = %681
  %685 = tail call i8* @malloc(i64 1024) #7
  %686 = icmp eq i8* %685, null
  br i1 %686, label %689, label %687

687:                                              ; preds = %684
  %688 = getelementptr inbounds i8, i8* %685, i64 1023
  store i8 0, i8* %688, align 1, !tbaa !36
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i8* [ %688, %687 ], [ null, %684 ]
  %691 = tail call i8* @halide_string_to_string(i8* %685, i8* %690, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %692 = tail call i8* @halide_string_to_string(i8* %691, i8* %690, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0)) #7
  %693 = tail call i8* @halide_string_to_string(i8* %692, i8* %690, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %686, label %694, label %695

694:                                              ; preds = %689
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %682, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE to i8**), align 8, !tbaa !37
  %703 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0)) #7
  %704 = icmp eq i8* %703, null
  br i1 %704, label %705, label %723

705:                                              ; preds = %702
  %706 = tail call i8* @malloc(i64 1024) #7
  %707 = icmp eq i8* %706, null
  br i1 %707, label %710, label %708

708:                                              ; preds = %705
  %709 = getelementptr inbounds i8, i8* %706, i64 1023
  store i8 0, i8* %709, align 1, !tbaa !36
  br label %710

710:                                              ; preds = %708, %705
  %711 = phi i8* [ %709, %708 ], [ null, %705 ]
  %712 = tail call i8* @halide_string_to_string(i8* %706, i8* %711, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %713 = tail call i8* @halide_string_to_string(i8* %712, i8* %711, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0)) #7
  %714 = tail call i8* @halide_string_to_string(i8* %713, i8* %711, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %707, label %715, label %716

715:                                              ; preds = %710
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %703, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueReadBufferRectE to i8**), align 8, !tbaa !37
  %724 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0)) #7
  %725 = icmp eq i8* %724, null
  br i1 %725, label %726, label %744

726:                                              ; preds = %723
  %727 = tail call i8* @malloc(i64 1024) #7
  %728 = icmp eq i8* %727, null
  br i1 %728, label %731, label %729

729:                                              ; preds = %726
  %730 = getelementptr inbounds i8, i8* %727, i64 1023
  store i8 0, i8* %730, align 1, !tbaa !36
  br label %731

731:                                              ; preds = %729, %726
  %732 = phi i8* [ %730, %729 ], [ null, %726 ]
  %733 = tail call i8* @halide_string_to_string(i8* %727, i8* %732, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %734 = tail call i8* @halide_string_to_string(i8* %733, i8* %732, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0)) #7
  %735 = tail call i8* @halide_string_to_string(i8* %734, i8* %732, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %728, label %736, label %737

736:                                              ; preds = %731
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %724, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE to i8**), align 8, !tbaa !37
  %745 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0)) #7
  %746 = icmp eq i8* %745, null
  br i1 %746, label %747, label %765

747:                                              ; preds = %744
  %748 = tail call i8* @malloc(i64 1024) #7
  %749 = icmp eq i8* %748, null
  br i1 %749, label %752, label %750

750:                                              ; preds = %747
  %751 = getelementptr inbounds i8, i8* %748, i64 1023
  store i8 0, i8* %751, align 1, !tbaa !36
  br label %752

752:                                              ; preds = %750, %747
  %753 = phi i8* [ %751, %750 ], [ null, %747 ]
  %754 = tail call i8* @halide_string_to_string(i8* %748, i8* %753, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %755 = tail call i8* @halide_string_to_string(i8* %754, i8* %753, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0)) #7
  %756 = tail call i8* @halide_string_to_string(i8* %755, i8* %753, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %749, label %757, label %758

757:                                              ; preds = %752
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %745, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64*, i64, i64, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL24clEnqueueWriteBufferRectE to i8**), align 8, !tbaa !37
  %766 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0)) #7
  %767 = icmp eq i8* %766, null
  br i1 %767, label %768, label %786

768:                                              ; preds = %765
  %769 = tail call i8* @malloc(i64 1024) #7
  %770 = icmp eq i8* %769, null
  br i1 %770, label %773, label %771

771:                                              ; preds = %768
  %772 = getelementptr inbounds i8, i8* %769, i64 1023
  store i8 0, i8* %772, align 1, !tbaa !36
  br label %773

773:                                              ; preds = %771, %768
  %774 = phi i8* [ %772, %771 ], [ null, %768 ]
  %775 = tail call i8* @halide_string_to_string(i8* %769, i8* %774, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %776 = tail call i8* @halide_string_to_string(i8* %775, i8* %774, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0)) #7
  %777 = tail call i8* @halide_string_to_string(i8* %776, i8* %774, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %770, label %778, label %779

778:                                              ; preds = %773
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %766, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE to i8**), align 8, !tbaa !37
  %787 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0)) #7
  %788 = icmp eq i8* %787, null
  br i1 %788, label %789, label %807

789:                                              ; preds = %786
  %790 = tail call i8* @malloc(i64 1024) #7
  %791 = icmp eq i8* %790, null
  br i1 %791, label %794, label %792

792:                                              ; preds = %789
  %793 = getelementptr inbounds i8, i8* %790, i64 1023
  store i8 0, i8* %793, align 1, !tbaa !36
  br label %794

794:                                              ; preds = %792, %789
  %795 = phi i8* [ %793, %792 ], [ null, %789 ]
  %796 = tail call i8* @halide_string_to_string(i8* %790, i8* %795, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %797 = tail call i8* @halide_string_to_string(i8* %796, i8* %795, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0)) #7
  %798 = tail call i8* @halide_string_to_string(i8* %797, i8* %795, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %791, label %799, label %800

799:                                              ; preds = %794
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %787, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE to i8**), align 8, !tbaa !37
  %808 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0)) #7
  %809 = icmp eq i8* %808, null
  br i1 %809, label %810, label %828

810:                                              ; preds = %807
  %811 = tail call i8* @malloc(i64 1024) #7
  %812 = icmp eq i8* %811, null
  br i1 %812, label %815, label %813

813:                                              ; preds = %810
  %814 = getelementptr inbounds i8, i8* %811, i64 1023
  store i8 0, i8* %814, align 1, !tbaa !36
  br label %815

815:                                              ; preds = %813, %810
  %816 = phi i8* [ %814, %813 ], [ null, %810 ]
  %817 = tail call i8* @halide_string_to_string(i8* %811, i8* %816, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %818 = tail call i8* @halide_string_to_string(i8* %817, i8* %816, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0)) #7
  %819 = tail call i8* @halide_string_to_string(i8* %818, i8* %816, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %812, label %820, label %821

820:                                              ; preds = %815
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %808, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE to i8**), align 8, !tbaa !37
  %829 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0)) #7
  %830 = icmp eq i8* %829, null
  br i1 %830, label %831, label %849

831:                                              ; preds = %828
  %832 = tail call i8* @malloc(i64 1024) #7
  %833 = icmp eq i8* %832, null
  br i1 %833, label %836, label %834

834:                                              ; preds = %831
  %835 = getelementptr inbounds i8, i8* %832, i64 1023
  store i8 0, i8* %835, align 1, !tbaa !36
  br label %836

836:                                              ; preds = %834, %831
  %837 = phi i8* [ %835, %834 ], [ null, %831 ]
  %838 = tail call i8* @halide_string_to_string(i8* %832, i8* %837, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %839 = tail call i8* @halide_string_to_string(i8* %838, i8* %837, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0)) #7
  %840 = tail call i8* @halide_string_to_string(i8* %839, i8* %837, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %833, label %841, label %842

841:                                              ; preds = %836
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %829, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueMapBufferE to i8**), align 8, !tbaa !37
  %850 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0)) #7
  %851 = icmp eq i8* %850, null
  br i1 %851, label %852, label %870

852:                                              ; preds = %849
  %853 = tail call i8* @malloc(i64 1024) #7
  %854 = icmp eq i8* %853, null
  br i1 %854, label %857, label %855

855:                                              ; preds = %852
  %856 = getelementptr inbounds i8, i8* %853, i64 1023
  store i8 0, i8* %856, align 1, !tbaa !36
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i8* [ %856, %855 ], [ null, %852 ]
  %859 = tail call i8* @halide_string_to_string(i8* %853, i8* %858, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %860 = tail call i8* @halide_string_to_string(i8* %859, i8* %858, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0)) #7
  %861 = tail call i8* @halide_string_to_string(i8* %860, i8* %858, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %854, label %862, label %863

862:                                              ; preds = %857
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %850, i8** bitcast (i8* (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64*, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clEnqueueMapImageE to i8**), align 8, !tbaa !37
  %871 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0)) #7
  %872 = icmp eq i8* %871, null
  br i1 %872, label %873, label %891

873:                                              ; preds = %870
  %874 = tail call i8* @malloc(i64 1024) #7
  %875 = icmp eq i8* %874, null
  br i1 %875, label %878, label %876

876:                                              ; preds = %873
  %877 = getelementptr inbounds i8, i8* %874, i64 1023
  store i8 0, i8* %877, align 1, !tbaa !36
  br label %878

878:                                              ; preds = %876, %873
  %879 = phi i8* [ %877, %876 ], [ null, %873 ]
  %880 = tail call i8* @halide_string_to_string(i8* %874, i8* %879, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %881 = tail call i8* @halide_string_to_string(i8* %880, i8* %879, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0)) #7
  %882 = tail call i8* @halide_string_to_string(i8* %881, i8* %879, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %875, label %883, label %884

883:                                              ; preds = %878
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %871, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_mem*, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL23clEnqueueUnmapMemObjectE to i8**), align 8, !tbaa !37
  %892 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0)) #7
  %893 = icmp eq i8* %892, null
  br i1 %893, label %894, label %912

894:                                              ; preds = %891
  %895 = tail call i8* @malloc(i64 1024) #7
  %896 = icmp eq i8* %895, null
  br i1 %896, label %899, label %897

897:                                              ; preds = %894
  %898 = getelementptr inbounds i8, i8* %895, i64 1023
  store i8 0, i8* %898, align 1, !tbaa !36
  br label %899

899:                                              ; preds = %897, %894
  %900 = phi i8* [ %898, %897 ], [ null, %894 ]
  %901 = tail call i8* @halide_string_to_string(i8* %895, i8* %900, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0)) #7
  %902 = tail call i8* @halide_string_to_string(i8* %901, i8* %900, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0)) #7
  %903 = tail call i8* @halide_string_to_string(i8* %902, i8* %900, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br i1 %896, label %904, label %905

904:                                              ; preds = %899
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  store i8* %892, i8** bitcast (i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE to i8**), align 8, !tbaa !37
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
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 0), i8* nonnull %0, i64 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 0), %5 ]
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
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.269, i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 0), i8* nonnull %9, i64 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25platform_name_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18platform_name_lockE release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13platform_nameE, i64 0, i64 0)
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
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 0), i8* nonnull %0, i64 256) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 255), %7 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 0), %5 ]
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
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.270, i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 0), i8* nonnull %9, i64 256) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 255), %11 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL23device_type_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL16device_type_lockE release, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL11device_typeE, i64 0, i64 0)
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
  %8 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 0), i8* nonnull %0, i64 1024) #7
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 1023), %7 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 0), %5 ]
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
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.271, i64 0, i64 0)) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 0), i8* nonnull %9, i64 1024) #7
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 1023), %11 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 0), %8 ]
  store i8 0, i8* %14, align 1, !tbaa !36
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenCL25build_options_initializedE, align 1, !tbaa !39
  br label %15

15:                                               ; preds = %5, %13
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL18build_options_lockE release, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZN6Halide7Runtime8Internal6OpenCL13build_optionsE, i64 0, i64 0)
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct._cl_context** %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.55, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.56, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10, %11
  %12 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE, i8 1 acquire
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %11, !llvm.loop !42

14:                                               ; preds = %11
  %15 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 8, !tbaa !37
  %16 = icmp eq %struct._cl_context* %15, null
  %17 = and i1 %16, %3
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call i32 @_ZN6Halide7Runtime8Internal6OpenCL21create_opencl_contextEPvPP11_cl_contextPP17_cl_command_queue(i8* %0, %struct._cl_context** nonnull @_ZN6Halide7Runtime8Internal6OpenCL7contextE, %struct._cl_command_queue** nonnull @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 8, !tbaa !37
  br label %24

23:                                               ; preds = %18
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE release, align 1
  br label %27

24:                                               ; preds = %21, %14
  %25 = phi %struct._cl_context* [ %22, %21 ], [ %15, %14 ]
  store %struct._cl_context* %25, %struct._cl_context** %1, align 8, !tbaa !37
  %26 = load %struct._cl_command_queue*, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 8, !tbaa !37
  store %struct._cl_command_queue* %26, %struct._cl_command_queue** %2, align 8, !tbaa !37
  br label %27

27:                                               ; preds = %23, %24
  %28 = phi i32 [ 0, %24 ], [ %19, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal6OpenCL21create_opencl_contextEPvPP11_cl_contextPP17_cl_command_queue(i8* %0, %struct._cl_context** %1, %struct._cl_command_queue** %2) local_unnamed_addr #4 {
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
  %19 = load %struct._cl_context*, %struct._cl_context** %1, align 8, !tbaa !37
  %20 = icmp eq %struct._cl_context* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.68, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq %struct._cl_command_queue** %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load %struct._cl_command_queue*, %struct._cl_command_queue** %2, align 8, !tbaa !37
  %26 = icmp eq %struct._cl_command_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.69, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32 (i32, %struct._cl_platform_id**, i32*)*, i32 (i32, %struct._cl_platform_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetPlatformIDsE, align 8, !tbaa !37
  %30 = icmp eq i32 (i32, %struct._cl_platform_id**, i32*)* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = tail call i8* @malloc(i64 1024) #7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = add i64 %39, 1
  %42 = sub i64 %41, %40
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  tail call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #7
  br label %380

45:                                               ; preds = %28
  %46 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #9
  store i32 0, i32* %4, align 4, !tbaa !43
  %47 = bitcast [4 x %struct._cl_platform_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %47) #9
  %48 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #9
  store i32 0, i32* %6, align 4, !tbaa !43
  %49 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i64 0, i64 0
  %50 = call i32 %29(i32 4, %struct._cl_platform_id** nonnull %49, i32* nonnull %6) #7
  store i32 %50, i32* %4, align 4, !tbaa !43
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %98, label %52

52:                                               ; preds = %45
  %53 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %53) #9
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %54, align 8, !tbaa !44
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %55, align 8, !tbaa !46
  %56 = call i8* @malloc(i64 1024) #7
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %56, i8** %57, align 8, !tbaa !47
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  %59 = icmp eq i8* %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, i8* %56, i64 1023
  store i8 0, i8* %61, align 1, !tbaa !36
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi i8* [ %61, %60 ], [ null, %52 ]
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = call i8* @halide_string_to_string(i8* %56, i8* %63, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0)) #7
  store i8* %65, i8** %58, align 8, !tbaa !48
  %66 = load i32, i32* %4, align 4, !tbaa !43
  %67 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %66) #8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i8* @halide_string_to_string(i8* %65, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %73

71:                                               ; preds = %62
  %72 = call i8* @halide_string_to_string(i8* %65, i8* %63, i8* nonnull %67) #7
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi i8* [ %72, %71 ], [ %70, %69 ]
  %75 = load i8*, i8** %64, align 8, !tbaa !49
  %76 = call i8* @halide_string_to_string(i8* %74, i8* %75, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #7
  %77 = load i32, i32* %4, align 4, !tbaa !43
  %78 = sext i32 %77 to i64
  %79 = call i8* @halide_int64_to_string(i8* %76, i8* %75, i64 %78, i32 1) #7
  %80 = load i8*, i8** %57, align 8, !tbaa !47
  %81 = icmp eq i8* %80, null
  %82 = load i8*, i8** %54, align 8, !tbaa !44
  br i1 %81, label %90, label %83

83:                                               ; preds = %73
  %84 = ptrtoint i8* %79 to i64
  %85 = ptrtoint i8* %80 to i64
  %86 = add i64 %84, 1
  %87 = sub i64 %86, %85
  %88 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %82, i8* nonnull %80, i64 %87) #7
  %89 = load i8*, i8** %57, align 8, !tbaa !47
  br label %90

90:                                               ; preds = %73, %83
  %91 = phi i8* [ %89, %83 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %73 ]
  call void @halide_error(i8* %82, i8* %91) #7
  %92 = load i8, i8* %55, align 8, !tbaa !46, !range !41
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %57, align 8, !tbaa !47
  call void @free(i8* %95) #7
  br label %96

96:                                               ; preds = %90, %94
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %53) #9
  %97 = load i32, i32* %4, align 4, !tbaa !43
  br label %378

98:                                               ; preds = %45
  %99 = call i8* @halide_opencl_get_platform_name(i8* %0) #8
  %100 = icmp eq i8* %99, null
  %101 = load i32, i32* %6, align 4, !tbaa !43
  %102 = icmp eq i32 %101, 0
  br i1 %100, label %123, label %103

103:                                              ; preds = %98
  br i1 %102, label %128, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  br label %106

106:                                              ; preds = %104, %118
  %107 = phi i64 [ 0, %104 ], [ %119, %118 ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %105) #9
  %108 = load i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_platform_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL17clGetPlatformInfoE, align 8, !tbaa !37
  %109 = getelementptr inbounds [4 x %struct._cl_platform_id*], [4 x %struct._cl_platform_id*]* %5, i64 0, i64 %107
  %110 = load %struct._cl_platform_id*, %struct._cl_platform_id** %109, align 8, !tbaa !37
  %111 = call i32 %108(%struct._cl_platform_id* %110, i32 2306, i64 256, i8* nonnull %105, i64* null) #7
  store i32 %111, i32* %4, align 4, !tbaa !43
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = call i8* @strstr(i8* nonnull %105, i8* nonnull %99) #7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load %struct._cl_platform_id*, %struct._cl_platform_id** %109, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %105) #9
  br label %125

118:                                              ; preds = %106, %113
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %105) #9
  %119 = add nuw nsw i64 %107, 1
  %120 = load i32, i32* %6, align 4, !tbaa !43
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %106, label %128, !llvm.loop !50

123:                                              ; preds = %98
  %124 = load %struct._cl_platform_id*, %struct._cl_platform_id** %49, align 8
  br i1 %102, label %128, label %125

125:                                              ; preds = %123, %116
  %126 = phi %struct._cl_platform_id* [ %117, %116 ], [ %124, %123 ]
  %127 = icmp eq %struct._cl_platform_id* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %118, %103, %123, %125
  %129 = call i8* @malloc(i64 1024) #7
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i8* @halide_string_to_string(i8* %129, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %141

133:                                              ; preds = %128
  %134 = getelementptr inbounds i8, i8* %129, i64 1023
  store i8 0, i8* %134, align 1, !tbaa !36
  %135 = call i8* @halide_string_to_string(i8* nonnull %129, i8* nonnull %134, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0)) #7
  %136 = ptrtoint i8* %135 to i64
  %137 = ptrtoint i8* %129 to i64
  %138 = add i64 %136, 1
  %139 = sub i64 %138, %137
  %140 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %129, i64 %139) #7
  call void @halide_error(i8* %0, i8* nonnull %129) #7
  br label %141

141:                                              ; preds = %133, %131
  call void @free(i8* %129) #7
  br label %378

142:                                              ; preds = %125
  %143 = call i8* @halide_opencl_get_device_type(i8* %0) #8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %161, label %145

145:                                              ; preds = %142
  %146 = load i8, i8* %143, align 1, !tbaa !36
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %145
  %149 = call i8* @strstr(i8* nonnull %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #7
  %150 = icmp eq i8* %149, null
  %151 = select i1 %150, i64 0, i64 2
  %152 = call i8* @strstr(i8* nonnull %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #7
  %153 = icmp eq i8* %152, null
  %154 = or i64 %151, 4
  %155 = select i1 %153, i64 %151, i64 %154
  %156 = call i8* @strstr(i8* nonnull %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #7
  %157 = icmp eq i8* %156, null
  %158 = or i64 %155, 8
  br i1 %157, label %159, label %162

159:                                              ; preds = %148
  %160 = icmp eq i64 %155, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %142, %145, %159
  br label %162

162:                                              ; preds = %148, %159, %161
  %163 = phi i64 [ 4294967295, %161 ], [ %155, %159 ], [ %158, %148 ]
  %164 = bitcast [128 x %struct._cl_device_id*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %164) #9
  %165 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %165) #9
  store i32 0, i32* %10, align 4, !tbaa !43
  %166 = load i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)*, i32 (%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clGetDeviceIDsE, align 8, !tbaa !37
  %167 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 0
  %168 = call i32 %166(%struct._cl_platform_id* nonnull %126, i64 %163, i32 128, %struct._cl_device_id** nonnull %167, i32* nonnull %10) #7
  store i32 %168, i32* %4, align 4, !tbaa !43
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %210, label %170

170:                                              ; preds = %162
  %171 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %171) #9
  %172 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %172, align 8, !tbaa !44
  %173 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %173, align 8, !tbaa !46
  %174 = call i8* @malloc(i64 1024) #7
  %175 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %174, i8** %175, align 8, !tbaa !47
  %176 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %174, i8** %176, align 8, !tbaa !48
  %177 = icmp eq i8* %174, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds i8, i8* %174, i64 1023
  store i8 0, i8* %179, align 1, !tbaa !36
  br label %180

180:                                              ; preds = %170, %178
  %181 = phi i8* [ %179, %178 ], [ null, %170 ]
  %182 = call i8* @halide_string_to_string(i8* %174, i8* %181, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i64 0, i64 0)) #7
  %183 = load i32, i32* %4, align 4, !tbaa !43
  %184 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %183) #8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i8* @halide_string_to_string(i8* %182, i8* %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %190

188:                                              ; preds = %180
  %189 = call i8* @halide_string_to_string(i8* %182, i8* %181, i8* nonnull %184) #7
  br label %190

190:                                              ; preds = %186, %188
  %191 = phi i8* [ %189, %188 ], [ %187, %186 ]
  %192 = load i8*, i8** %175, align 8, !tbaa !47
  %193 = icmp eq i8* %192, null
  %194 = load i8*, i8** %172, align 8, !tbaa !44
  br i1 %193, label %202, label %195

195:                                              ; preds = %190
  %196 = ptrtoint i8* %191 to i64
  %197 = ptrtoint i8* %192 to i64
  %198 = sub i64 1, %197
  %199 = add i64 %198, %196
  %200 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %194, i8* nonnull %192, i64 %199) #7
  %201 = load i8*, i8** %175, align 8, !tbaa !47
  br label %202

202:                                              ; preds = %190, %195
  %203 = phi i8* [ %201, %195 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %190 ]
  call void @halide_error(i8* %194, i8* %203) #7
  %204 = load i8, i8* %173, align 8, !tbaa !46, !range !41
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = load i8*, i8** %175, align 8, !tbaa !47
  call void @free(i8* %207) #7
  br label %208

208:                                              ; preds = %202, %206
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %171) #9
  %209 = load i32, i32* %4, align 4, !tbaa !43
  br label %376

210:                                              ; preds = %162
  %211 = call i32 @halide_get_gpu_device(i8* %0) #7
  %212 = icmp eq i32 %211, -1
  %213 = load i32, i32* %10, align 4
  %214 = icmp eq i32 %213, 1
  %215 = and i1 %212, %214
  %216 = xor i1 %212, true
  %217 = or i1 %214, %216
  %218 = select i1 %215, i32 0, i32 %211
  br i1 %217, label %243, label %219

219:                                              ; preds = %210
  %220 = icmp eq i32 %213, 0
  br i1 %220, label %249, label %221

221:                                              ; preds = %219
  %222 = bitcast i32* %12 to i8*
  br label %223

223:                                              ; preds = %221, %223
  %224 = phi i64 [ 0, %221 ], [ %239, %223 ]
  %225 = phi i32 [ 0, %221 ], [ %238, %223 ]
  %226 = phi i32 [ -1, %221 ], [ %237, %223 ]
  %227 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 %224
  %228 = load %struct._cl_device_id*, %struct._cl_device_id** %227, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %222) #9
  store i32 0, i32* %12, align 4, !tbaa !43
  %229 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 8, !tbaa !37
  %230 = call i32 %229(%struct._cl_device_id* %228, i32 4098, i64 4, i8* nonnull %222, i64* null) #7
  store i32 %230, i32* %4, align 4, !tbaa !43
  %231 = icmp eq i32 %230, 0
  %232 = load i32, i32* %12, align 4
  %233 = icmp ult i32 %232, %225
  %234 = trunc i64 %224 to i32
  %235 = select i1 %233, i32 %226, i32 %234
  %236 = select i1 %233, i32 %225, i32 %232
  %237 = select i1 %231, i32 %235, i32 %226
  %238 = select i1 %231, i32 %236, i32 %225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %222) #9
  %239 = add nuw nsw i64 %224, 1
  %240 = load i32, i32* %10, align 4, !tbaa !43
  %241 = zext i32 %240 to i64
  %242 = icmp ult i64 %239, %241
  br i1 %242, label %223, label %243, !llvm.loop !51

243:                                              ; preds = %223, %210
  %244 = phi i32 [ %213, %210 ], [ %240, %223 ]
  %245 = phi i32 [ %218, %210 ], [ %237, %223 ]
  %246 = icmp sgt i32 %245, -1
  %247 = icmp slt i32 %245, %244
  %248 = and i1 %246, %247
  br i1 %248, label %268, label %249

249:                                              ; preds = %219, %243
  %250 = phi i32 [ %245, %243 ], [ -1, %219 ]
  %251 = call i8* @malloc(i64 1024) #7
  %252 = icmp eq i8* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, i8* %251, i64 1023
  store i8 0, i8* %254, align 1, !tbaa !36
  br label %255

255:                                              ; preds = %249, %253
  %256 = phi i8* [ %254, %253 ], [ null, %249 ]
  %257 = call i8* @halide_string_to_string(i8* %251, i8* %256, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i64 0, i64 0)) #7
  %258 = sext i32 %250 to i64
  %259 = call i8* @halide_int64_to_string(i8* %257, i8* %256, i64 %258, i32 1) #7
  br i1 %252, label %260, label %261

260:                                              ; preds = %255
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %267

261:                                              ; preds = %255
  %262 = ptrtoint i8* %259 to i64
  %263 = ptrtoint i8* %251 to i64
  %264 = add i64 %262, 1
  %265 = sub i64 %264, %263
  %266 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %251, i64 %265) #7
  call void @halide_error(i8* %0, i8* nonnull %251) #7
  br label %267

267:                                              ; preds = %261, %260
  call void @free(i8* %251) #7
  br label %376

268:                                              ; preds = %243
  %269 = bitcast %struct._cl_device_id** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %269) #9
  %270 = zext i32 %245 to i64
  %271 = getelementptr inbounds [128 x %struct._cl_device_id*], [128 x %struct._cl_device_id*]* %9, i64 0, i64 %270
  %272 = load %struct._cl_device_id*, %struct._cl_device_id** %271, align 8, !tbaa !37
  store %struct._cl_device_id* %272, %struct._cl_device_id** %13, align 8, !tbaa !37
  %273 = bitcast [3 x i64]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %273) #9
  %274 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 4228, i64* %274, align 8, !tbaa !3
  %275 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %276 = ptrtoint %struct._cl_platform_id* %126 to i64
  store i64 %276, i64* %275, align 8, !tbaa !3
  %277 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 0, i64* %277, align 8, !tbaa !3
  %278 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %279 = call %struct._cl_context* %278(i64* nonnull %274, i32 1, %struct._cl_device_id** nonnull %13, void (i8*, i8*, i64, i8*)* null, i8* null, i32* nonnull %4) #7
  store %struct._cl_context* %279, %struct._cl_context** %1, align 8, !tbaa !37
  %280 = load i32, i32* %4, align 4, !tbaa !43
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %328, label %282

282:                                              ; preds = %268
  %283 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %280) #8
  %284 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %284) #9
  %285 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 3
  store i8* %0, i8** %285, align 8, !tbaa !44
  %286 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 4
  store i8 1, i8* %286, align 8, !tbaa !46
  %287 = call i8* @malloc(i64 1024) #7
  %288 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 0
  store i8* %287, i8** %288, align 8, !tbaa !47
  %289 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 1
  %290 = icmp eq i8* %287, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %282
  %292 = getelementptr inbounds i8, i8* %287, i64 1023
  store i8 0, i8* %292, align 1, !tbaa !36
  br label %293

293:                                              ; preds = %282, %291
  %294 = phi i8* [ %292, %291 ], [ null, %282 ]
  %295 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 2
  store i8* %294, i8** %295, align 8
  %296 = call i8* @halide_string_to_string(i8* %287, i8* %294, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0)) #7
  store i8* %296, i8** %289, align 8, !tbaa !48
  %297 = load i32, i32* %4, align 4, !tbaa !43
  %298 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %297) #8
  %299 = icmp eq i8* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = call i8* @halide_string_to_string(i8* %296, i8* %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %304

302:                                              ; preds = %293
  %303 = call i8* @halide_string_to_string(i8* %296, i8* %294, i8* nonnull %298) #7
  br label %304

304:                                              ; preds = %300, %302
  %305 = phi i8* [ %303, %302 ], [ %301, %300 ]
  %306 = load i8*, i8** %295, align 8, !tbaa !49
  %307 = call i8* @halide_string_to_string(i8* %305, i8* %306, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0)) #7
  %308 = load i32, i32* %4, align 4, !tbaa !43
  %309 = sext i32 %308 to i64
  %310 = call i8* @halide_int64_to_string(i8* %307, i8* %306, i64 %309, i32 1) #7
  %311 = load i8*, i8** %288, align 8, !tbaa !47
  %312 = icmp eq i8* %311, null
  %313 = load i8*, i8** %285, align 8, !tbaa !44
  br i1 %312, label %321, label %314

314:                                              ; preds = %304
  %315 = ptrtoint i8* %310 to i64
  %316 = ptrtoint i8* %311 to i64
  %317 = add i64 %315, 1
  %318 = sub i64 %317, %316
  %319 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %313, i8* nonnull %311, i64 %318) #7
  %320 = load i8*, i8** %288, align 8, !tbaa !47
  br label %321

321:                                              ; preds = %304, %314
  %322 = phi i8* [ %320, %314 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %304 ]
  call void @halide_error(i8* %313, i8* %322) #7
  %323 = load i8, i8* %286, align 8, !tbaa !46, !range !41
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %321
  %326 = load i8*, i8** %288, align 8, !tbaa !47
  call void @free(i8* %326) #7
  br label %327

327:                                              ; preds = %321, %325
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %284) #9
  br label %374

328:                                              ; preds = %268
  %329 = load %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)*, %struct._cl_command_queue* (%struct._cl_context*, %struct._cl_device_id*, i64, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL20clCreateCommandQueueE, align 8, !tbaa !37
  %330 = load %struct._cl_device_id*, %struct._cl_device_id** %13, align 8, !tbaa !37
  %331 = call %struct._cl_command_queue* %329(%struct._cl_context* %279, %struct._cl_device_id* %330, i64 0, i32* nonnull %4) #7
  store %struct._cl_command_queue* %331, %struct._cl_command_queue** %2, align 8, !tbaa !37
  %332 = load i32, i32* %4, align 4, !tbaa !43
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %374, label %334

334:                                              ; preds = %328
  %335 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %332) #8
  %336 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %336) #9
  %337 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 3
  store i8* %0, i8** %337, align 8, !tbaa !44
  %338 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 4
  store i8 1, i8* %338, align 8, !tbaa !46
  %339 = call i8* @malloc(i64 1024) #7
  %340 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 0
  store i8* %339, i8** %340, align 8, !tbaa !47
  %341 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 1
  store i8* %339, i8** %341, align 8, !tbaa !48
  %342 = icmp eq i8* %339, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %334
  %344 = getelementptr inbounds i8, i8* %339, i64 1023
  store i8 0, i8* %344, align 1, !tbaa !36
  br label %345

345:                                              ; preds = %334, %343
  %346 = phi i8* [ %344, %343 ], [ null, %334 ]
  %347 = call i8* @halide_string_to_string(i8* %339, i8* %346, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i64 0, i64 0)) #7
  %348 = load i32, i32* %4, align 4, !tbaa !43
  %349 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %348) #8
  %350 = icmp eq i8* %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %345
  %352 = call i8* @halide_string_to_string(i8* %347, i8* %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %355

353:                                              ; preds = %345
  %354 = call i8* @halide_string_to_string(i8* %347, i8* %346, i8* nonnull %349) #7
  br label %355

355:                                              ; preds = %351, %353
  %356 = phi i8* [ %354, %353 ], [ %352, %351 ]
  %357 = load i8*, i8** %340, align 8, !tbaa !47
  %358 = icmp eq i8* %357, null
  %359 = load i8*, i8** %337, align 8, !tbaa !44
  br i1 %358, label %367, label %360

360:                                              ; preds = %355
  %361 = ptrtoint i8* %356 to i64
  %362 = ptrtoint i8* %357 to i64
  %363 = sub i64 1, %362
  %364 = add i64 %363, %361
  %365 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %359, i8* nonnull %357, i64 %364) #7
  %366 = load i8*, i8** %340, align 8, !tbaa !47
  br label %367

367:                                              ; preds = %355, %360
  %368 = phi i8* [ %366, %360 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %355 ]
  call void @halide_error(i8* %359, i8* %368) #7
  %369 = load i8, i8* %338, align 8, !tbaa !46, !range !41
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %367
  %372 = load i8*, i8** %340, align 8, !tbaa !47
  call void @free(i8* %372) #7
  br label %373

373:                                              ; preds = %367, %371
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %336) #9
  br label %374

374:                                              ; preds = %328, %373, %327
  %375 = load i32, i32* %4, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %273) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %269) #9
  br label %376

376:                                              ; preds = %267, %374, %208
  %377 = phi i32 [ %209, %208 ], [ -1, %267 ], [ %375, %374 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %165) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %164) #9
  br label %378

378:                                              ; preds = %141, %376, %96
  %379 = phi i32 [ %97, %96 ], [ -32, %141 ], [ %377, %376 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %47) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #9
  br label %380

380:                                              ; preds = %378, %44
  %381 = phi i32 [ -1, %44 ], [ %379, %378 ]
  ret i32 %381
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_release_cl_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal6OpenCL11thread_lockE release, align 1
  ret i32 0
}

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #4 {
  %4 = alloca i64, align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %3
  %10 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 8, !tbaa !37
  %11 = icmp eq i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #8
  %13 = load i64, i64* %6, align 8, !tbaa !22
  %14 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 8, !tbaa !37
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 (%struct._cl_mem*, i32, i64, i8*, i64*)* [ %14, %12 ], [ %10, %9 ]
  %17 = phi i64 [ %13, %12 ], [ %7, %9 ]
  %18 = inttoptr i64 %17 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i64 0, i32 1
  %20 = load %struct._cl_mem*, %struct._cl_mem** %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %18, i64 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !54
  %23 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #9
  %24 = call i32 %16(%struct._cl_mem* %20, i32 4354, i64 8, i8* nonnull %23, i64* null) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %15
  %27 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %27) #9
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %28, align 8, !tbaa !44
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %29, align 8, !tbaa !46
  %30 = call i8* @malloc(i64 1024) #7
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %30, i8** %31, align 8, !tbaa !47
  %32 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %33 = icmp eq i8* %30, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, i8* %30, i64 1023
  store i8 0, i8* %35, align 1, !tbaa !36
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi i8* [ %35, %34 ], [ null, %26 ]
  %38 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = call i8* @halide_string_to_string(i8* %30, i8* %37, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0)) #7
  store i8* %39, i8** %32, align 8, !tbaa !48
  %40 = bitcast %struct._cl_mem* %20 to i8*
  %41 = call i8* @halide_pointer_to_string(i8* %39, i8* %37, i8* %40) #7
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %37, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0)) #7
  %43 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %24) #8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i8* @halide_string_to_string(i8* %42, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %49

47:                                               ; preds = %36
  %48 = call i8* @halide_string_to_string(i8* %42, i8* %37, i8* nonnull %43) #7
  br label %49

49:                                               ; preds = %45, %47
  %50 = phi i8* [ %48, %47 ], [ %46, %45 ]
  %51 = load i8*, i8** %31, align 8, !tbaa !47
  %52 = icmp eq i8* %51, null
  %53 = load i8*, i8** %28, align 8, !tbaa !44
  br i1 %52, label %61, label %54

54:                                               ; preds = %49
  %55 = ptrtoint i8* %50 to i64
  %56 = ptrtoint i8* %51 to i64
  %57 = sub i64 1, %56
  %58 = add i64 %57, %55
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %53, i8* nonnull %51, i64 %58) #7
  %60 = load i8*, i8** %31, align 8, !tbaa !47
  br label %61

61:                                               ; preds = %49, %54
  %62 = phi i8* [ %60, %54 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %49 ]
  call void @halide_error(i8* %53, i8* %62) #7
  %63 = load i8, i8* %29, align 8, !tbaa !46, !range !41
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %31, align 8, !tbaa !47
  call void @free(i8* %66) #7
  br label %67

67:                                               ; preds = %61, %65
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %27) #9
  br label %75

68:                                               ; preds = %15
  %69 = icmp eq i64 %2, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* %4, align 8, !tbaa !55
  %72 = add i64 %22, %2
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.66, i64 0, i64 0)) #7
  call void @abort() #7
  br label %75

75:                                               ; preds = %68, %74, %70, %67
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9
  br label %76

76:                                               ; preds = %3, %75
  %77 = phi i1 [ %25, %75 ], [ true, %3 ]
  ret i1 %77
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
  %62 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.242, i64 0, i64 0), %60 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.241, i64 0, i64 0), %59 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.240, i64 0, i64 0), %58 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.239, i64 0, i64 0), %57 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.238, i64 0, i64 0), %56 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i64 0, i64 0), %55 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.236, i64 0, i64 0), %54 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.235, i64 0, i64 0), %53 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.234, i64 0, i64 0), %52 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.233, i64 0, i64 0), %51 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.232, i64 0, i64 0), %50 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i64 0, i64 0), %49 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.230, i64 0, i64 0), %48 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.229, i64 0, i64 0), %47 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i64 0, i64 0), %46 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.227, i64 0, i64 0), %45 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.226, i64 0, i64 0), %44 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.225, i64 0, i64 0), %43 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.224, i64 0, i64 0), %42 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.223, i64 0, i64 0), %41 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.222, i64 0, i64 0), %40 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i64 0, i64 0), %39 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.220, i64 0, i64 0), %38 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.219, i64 0, i64 0), %37 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.218, i64 0, i64 0), %36 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i64 0, i64 0), %35 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.216, i64 0, i64 0), %34 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.215, i64 0, i64 0), %33 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.214, i64 0, i64 0), %32 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i64 0, i64 0), %31 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.212, i64 0, i64 0), %30 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.211, i64 0, i64 0), %29 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i64 0, i64 0), %28 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.209, i64 0, i64 0), %27 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.208, i64 0, i64 0), %26 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.207, i64 0, i64 0), %25 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.206, i64 0, i64 0), %24 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.205, i64 0, i64 0), %23 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.204, i64 0, i64 0), %22 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i64 0, i64 0), %21 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.202, i64 0, i64 0), %20 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.201, i64 0, i64 0), %19 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.200, i64 0, i64 0), %18 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.199, i64 0, i64 0), %17 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i64 0, i64 0), %16 ], [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.197, i64 0, i64 0), %15 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.196, i64 0, i64 0), %14 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i64 0, i64 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.194, i64 0, i64 0), %12 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.193, i64 0, i64 0), %11 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i64 0, i64 0), %10 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.191, i64 0, i64 0), %9 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i64 0, i64 0), %8 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.189, i64 0, i64 0), %7 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.188, i64 0, i64 0), %6 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.187, i64 0, i64 0), %5 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i64 0, i64 0), %4 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.185, i64 0, i64 0), %3 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.184, i64 0, i64 0), %2 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i64 0, i64 0), %1 ]
  ret i8* %62
}

declare i8* @strstr(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_get_gpu_device(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak %struct._cl_program* @_ZN6Halide7Runtime8Internal6OpenCL14compile_kernelEPvP11_cl_contextPKci(i8* %0, %struct._cl_context* %1, i8* %2, i32 %3) #4 {
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
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", align 8
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #9
  store i32 0, i32* %5, align 4, !tbaa !43
  %18 = bitcast %struct._cl_device_id** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9
  %19 = load i32 (%struct._cl_context*, i32, i64, i8*, i64*)*, i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE, align 8, !tbaa !37
  %20 = call i32 %19(%struct._cl_context* %1, i32 4225, i64 8, i8* nonnull %18, i64* null) #7
  store i32 %20, i32* %5, align 4, !tbaa !43
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %4
  %23 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #9
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* %0, i8** %24, align 8, !tbaa !44
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %25, align 8, !tbaa !46
  %26 = call i8* @malloc(i64 1024) #7
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %26, i8** %27, align 8, !tbaa !47
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  store i8* %26, i8** %28, align 8, !tbaa !48
  %29 = icmp eq i8* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i64 1023
  store i8 0, i8* %31, align 1, !tbaa !36
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i8* [ %31, %30 ], [ null, %22 ]
  %34 = call i8* @halide_string_to_string(i8* %26, i8* %33, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.91, i64 0, i64 0)) #7
  %35 = load i32, i32* %5, align 4, !tbaa !43
  %36 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %35) #8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %42

40:                                               ; preds = %32
  %41 = call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull %36) #7
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i8* [ %41, %40 ], [ %39, %38 ]
  %44 = load i8*, i8** %27, align 8, !tbaa !47
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %24, align 8, !tbaa !44
  br i1 %45, label %54, label %47

47:                                               ; preds = %42
  %48 = ptrtoint i8* %43 to i64
  %49 = ptrtoint i8* %44 to i64
  %50 = sub i64 1, %49
  %51 = add i64 %50, %48
  %52 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %51) #7
  %53 = load i8*, i8** %27, align 8, !tbaa !47
  br label %54

54:                                               ; preds = %42, %47
  %55 = phi i8* [ %53, %47 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %42 ]
  call void @halide_error(i8* %46, i8* %55) #7
  %56 = load i8, i8* %25, align 8, !tbaa !46, !range !41
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %27, align 8, !tbaa !47
  call void @free(i8* %59) #7
  br label %60

60:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #9
  br label %340

61:                                               ; preds = %4
  %62 = bitcast [1 x %struct._cl_device_id*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #9
  %63 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %8, i64 0, i64 0
  %64 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !37
  store %struct._cl_device_id* %64, %struct._cl_device_id** %63, align 8, !tbaa !37
  %65 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #9
  store i64 0, i64* %9, align 8, !tbaa !3
  %66 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 8, !tbaa !37
  %67 = call i32 %66(%struct._cl_device_id* %64, i32 4128, i64 8, i8* nonnull %65, i64* null) #7
  store i32 %67, i32* %5, align 4, !tbaa !43
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %108, label %69

69:                                               ; preds = %61
  %70 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %70) #9
  %71 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 3
  store i8* %0, i8** %71, align 8, !tbaa !44
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 4
  store i8 1, i8* %72, align 8, !tbaa !46
  %73 = call i8* @malloc(i64 1024) #7
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 0
  store i8* %73, i8** %74, align 8, !tbaa !47
  %75 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 1
  store i8* %73, i8** %75, align 8, !tbaa !48
  %76 = icmp eq i8* %73, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds i8, i8* %73, i64 1023
  store i8 0, i8* %78, align 1, !tbaa !36
  br label %79

79:                                               ; preds = %69, %77
  %80 = phi i8* [ %78, %77 ], [ null, %69 ]
  %81 = call i8* @halide_string_to_string(i8* %73, i8* %80, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.92, i64 0, i64 0)) #7
  %82 = load i32, i32* %5, align 4, !tbaa !43
  %83 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %82) #8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i8* @halide_string_to_string(i8* %81, i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %89

87:                                               ; preds = %79
  %88 = call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull %83) #7
  br label %89

89:                                               ; preds = %85, %87
  %90 = phi i8* [ %88, %87 ], [ %86, %85 ]
  %91 = load i8*, i8** %74, align 8, !tbaa !47
  %92 = icmp eq i8* %91, null
  %93 = load i8*, i8** %71, align 8, !tbaa !44
  br i1 %92, label %101, label %94

94:                                               ; preds = %89
  %95 = ptrtoint i8* %90 to i64
  %96 = ptrtoint i8* %91 to i64
  %97 = sub i64 1, %96
  %98 = add i64 %97, %95
  %99 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %93, i8* nonnull %91, i64 %98) #7
  %100 = load i8*, i8** %74, align 8, !tbaa !47
  br label %101

101:                                              ; preds = %89, %94
  %102 = phi i8* [ %100, %94 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %89 ]
  call void @halide_error(i8* %93, i8* %102) #7
  %103 = load i8, i8* %72, align 8, !tbaa !46, !range !41
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %74, align 8, !tbaa !47
  call void @free(i8* %106) #7
  br label %107

107:                                              ; preds = %101, %105
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %70) #9
  br label %338

108:                                              ; preds = %61
  %109 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %109) #9
  store i32 0, i32* %11, align 4, !tbaa !43
  %110 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 8, !tbaa !37
  %111 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !37
  %112 = call i32 %110(%struct._cl_device_id* %111, i32 4129, i64 4, i8* nonnull %109, i64* null) #7
  store i32 %112, i32* %5, align 4, !tbaa !43
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %153, label %114

114:                                              ; preds = %108
  %115 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %115) #9
  %116 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 3
  store i8* %0, i8** %116, align 8, !tbaa !44
  %117 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 4
  store i8 1, i8* %117, align 8, !tbaa !46
  %118 = call i8* @malloc(i64 1024) #7
  %119 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 0
  store i8* %118, i8** %119, align 8, !tbaa !47
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 1
  store i8* %118, i8** %120, align 8, !tbaa !48
  %121 = icmp eq i8* %118, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds i8, i8* %118, i64 1023
  store i8 0, i8* %123, align 1, !tbaa !36
  br label %124

124:                                              ; preds = %114, %122
  %125 = phi i8* [ %123, %122 ], [ null, %114 ]
  %126 = call i8* @halide_string_to_string(i8* %118, i8* %125, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.93, i64 0, i64 0)) #7
  %127 = load i32, i32* %5, align 4, !tbaa !43
  %128 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %127) #8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i8* @halide_string_to_string(i8* %126, i8* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %134

132:                                              ; preds = %124
  %133 = call i8* @halide_string_to_string(i8* %126, i8* %125, i8* nonnull %128) #7
  br label %134

134:                                              ; preds = %130, %132
  %135 = phi i8* [ %133, %132 ], [ %131, %130 ]
  %136 = load i8*, i8** %119, align 8, !tbaa !47
  %137 = icmp eq i8* %136, null
  %138 = load i8*, i8** %116, align 8, !tbaa !44
  br i1 %137, label %146, label %139

139:                                              ; preds = %134
  %140 = ptrtoint i8* %135 to i64
  %141 = ptrtoint i8* %136 to i64
  %142 = sub i64 1, %141
  %143 = add i64 %142, %140
  %144 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %138, i8* nonnull %136, i64 %143) #7
  %145 = load i8*, i8** %119, align 8, !tbaa !47
  br label %146

146:                                              ; preds = %134, %139
  %147 = phi i8* [ %145, %139 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %134 ]
  call void @halide_error(i8* %138, i8* %147) #7
  %148 = load i8, i8* %117, align 8, !tbaa !46, !range !41
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %119, align 8, !tbaa !47
  call void @free(i8* %151) #7
  br label %152

152:                                              ; preds = %146, %150
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %115) #9
  br label %336

153:                                              ; preds = %108
  %154 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %154) #9
  %155 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 3
  store i8* %0, i8** %155, align 8, !tbaa !57
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 4
  store i8 1, i8* %156, align 8, !tbaa !59
  %157 = call i8* @malloc(i64 1024) #7
  %158 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 0
  store i8* %157, i8** %158, align 8, !tbaa !60
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 1
  store i8* %157, i8** %159, align 8, !tbaa !61
  %160 = icmp eq i8* %157, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = getelementptr inbounds i8, i8* %157, i64 1023
  store i8 0, i8* %162, align 1, !tbaa !36
  br label %163

163:                                              ; preds = %153, %161
  %164 = phi i8* [ %162, %161 ], [ null, %153 ]
  %165 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 2
  store i8* %164, i8** %165, align 8
  %166 = call i8* @halide_string_to_string(i8* %157, i8* %164, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i64 0, i64 0)) #7
  store i8* %166, i8** %159, align 8, !tbaa !61
  %167 = load i64, i64* %9, align 8, !tbaa !3
  %168 = call i8* @halide_uint64_to_string(i8* %166, i8* %164, i64 %167, i32 1) #7
  store i8* %168, i8** %159, align 8, !tbaa !61
  %169 = call i8* @halide_string_to_string(i8* %168, i8* %164, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0)) #7
  store i8* %169, i8** %159, align 8, !tbaa !61
  %170 = load i32, i32* %11, align 4, !tbaa !43
  %171 = zext i32 %170 to i64
  %172 = call i8* @halide_uint64_to_string(i8* %169, i8* %164, i64 %171, i32 1) #7
  store i8* %172, i8** %159, align 8, !tbaa !61
  %173 = call i8* @halide_opencl_get_build_options(i8* %0) #8
  %174 = call i8* @halide_string_to_string(i8* %172, i8* %164, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #7
  store i8* %174, i8** %159, align 8, !tbaa !61
  %175 = icmp eq i8* %173, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %163
  %177 = call i8* @halide_string_to_string(i8* %174, i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %180

178:                                              ; preds = %163
  %179 = call i8* @halide_string_to_string(i8* %174, i8* %164, i8* nonnull %173) #7
  br label %180

180:                                              ; preds = %176, %178
  %181 = phi i8* [ %179, %178 ], [ %177, %176 ]
  store i8* %181, i8** %159, align 8, !tbaa !61
  %182 = bitcast [1 x i8*]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %182) #9
  %183 = getelementptr inbounds [1 x i8*], [1 x i8*]* %14, i64 0, i64 0
  store i8* %2, i8** %183, align 8, !tbaa !37
  %184 = load %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)*, %struct._cl_program* (%struct._cl_context*, i32, i8**, i64*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL25clCreateProgramWithSourceE, align 8, !tbaa !37
  %185 = call %struct._cl_program* %184(%struct._cl_context* %1, i32 1, i8** nonnull %183, i64* null, i32* nonnull %5) #7
  %186 = load i32, i32* %5, align 4, !tbaa !43
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %228, label %188

188:                                              ; preds = %180
  %189 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %186) #8
  %190 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %190) #9
  %191 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 3
  store i8* %0, i8** %191, align 8, !tbaa !44
  %192 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 4
  store i8 1, i8* %192, align 8, !tbaa !46
  %193 = call i8* @malloc(i64 1024) #7
  %194 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 0
  store i8* %193, i8** %194, align 8, !tbaa !47
  %195 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 1
  store i8* %193, i8** %195, align 8, !tbaa !48
  %196 = icmp eq i8* %193, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %193, i64 1023
  store i8 0, i8* %198, align 1, !tbaa !36
  br label %199

199:                                              ; preds = %188, %197
  %200 = phi i8* [ %198, %197 ], [ null, %188 ]
  %201 = call i8* @halide_string_to_string(i8* %193, i8* %200, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i64 0, i64 0)) #7
  %202 = load i32, i32* %5, align 4, !tbaa !43
  %203 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %202) #8
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = call i8* @halide_string_to_string(i8* %201, i8* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %209

207:                                              ; preds = %199
  %208 = call i8* @halide_string_to_string(i8* %201, i8* %200, i8* nonnull %203) #7
  br label %209

209:                                              ; preds = %205, %207
  %210 = phi i8* [ %208, %207 ], [ %206, %205 ]
  %211 = load i8*, i8** %194, align 8, !tbaa !47
  %212 = icmp eq i8* %211, null
  %213 = load i8*, i8** %191, align 8, !tbaa !44
  br i1 %212, label %221, label %214

214:                                              ; preds = %209
  %215 = ptrtoint i8* %210 to i64
  %216 = ptrtoint i8* %211 to i64
  %217 = sub i64 1, %216
  %218 = add i64 %217, %215
  %219 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %213, i8* nonnull %211, i64 %218) #7
  %220 = load i8*, i8** %194, align 8, !tbaa !47
  br label %221

221:                                              ; preds = %209, %214
  %222 = phi i8* [ %220, %214 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %209 ]
  call void @halide_error(i8* %213, i8* %222) #7
  %223 = load i8, i8* %192, align 8, !tbaa !46, !range !41
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = load i8*, i8** %194, align 8, !tbaa !47
  call void @free(i8* %226) #7
  br label %227

227:                                              ; preds = %221, %225
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %190) #9
  br label %313

228:                                              ; preds = %180
  %229 = load i8*, i8** %158, align 8, !tbaa !60
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE, align 8, !tbaa !37
  br label %252

233:                                              ; preds = %228
  %234 = load i8*, i8** %155, align 8, !tbaa !57
  %235 = ptrtoint i8* %181 to i64
  %236 = ptrtoint i8* %229 to i64
  %237 = sub i64 1, %236
  %238 = add i64 %237, %235
  %239 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %234, i8* nonnull %229, i64 %238) #7
  %240 = load i8*, i8** %158, align 8, !tbaa !60
  %241 = load i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)*, i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clBuildProgramE, align 8, !tbaa !37
  %242 = icmp eq i8* %240, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %233
  %244 = load i8*, i8** %159, align 8, !tbaa !61
  %245 = load i8*, i8** %155, align 8, !tbaa !57
  %246 = ptrtoint i8* %244 to i64
  %247 = ptrtoint i8* %240 to i64
  %248 = sub i64 1, %247
  %249 = add i64 %248, %246
  %250 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %245, i8* nonnull %240, i64 %249) #7
  %251 = load i8*, i8** %158, align 8, !tbaa !60
  br label %252

252:                                              ; preds = %231, %233, %243
  %253 = phi i32 (%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*)* [ %241, %243 ], [ %241, %233 ], [ %232, %231 ]
  %254 = phi i8* [ %251, %243 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %233 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %231 ]
  %255 = call i32 %253(%struct._cl_program* %185, i32 1, %struct._cl_device_id** nonnull %63, i8* %254, void (%struct._cl_program*, i8*)* null, i8* null) #7
  store i32 %255, i32* %5, align 4, !tbaa !43
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %313, label %257

257:                                              ; preds = %252
  %258 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %258) #9
  %259 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i64 0, i32 3
  store i8* %0, i8** %259, align 8, !tbaa !62
  %260 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i64 0, i32 4
  store i8 1, i8* %260, align 8, !tbaa !64
  %261 = call i8* @malloc(i64 16384) #7
  %262 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i64 0, i32 0
  store i8* %261, i8** %262, align 8, !tbaa !65
  %263 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i64 0, i32 1
  %264 = icmp eq i8* %261, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %257
  %266 = getelementptr inbounds i8, i8* %261, i64 16383
  store i8 0, i8* %266, align 1, !tbaa !36
  br label %267

267:                                              ; preds = %257, %265
  %268 = phi i8* [ %266, %265 ], [ null, %257 ]
  %269 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %16, i64 0, i32 2
  store i8* %268, i8** %269, align 8
  %270 = call i8* @halide_string_to_string(i8* %261, i8* %268, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i64 0, i64 0)) #7
  store i8* %270, i8** %263, align 8, !tbaa !66
  %271 = load i32, i32* %5, align 4, !tbaa !43
  %272 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %271) #8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = call i8* @halide_string_to_string(i8* %270, i8* %268, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %278

276:                                              ; preds = %267
  %277 = call i8* @halide_string_to_string(i8* %270, i8* %268, i8* nonnull %272) #7
  br label %278

278:                                              ; preds = %274, %276
  %279 = phi i8* [ %277, %276 ], [ %275, %274 ]
  %280 = load i8*, i8** %269, align 8, !tbaa !67
  %281 = call i8* @halide_string_to_string(i8* %279, i8* %280, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i64 0, i64 0)) #7
  %282 = load i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL21clGetProgramBuildInfoE, align 8, !tbaa !37
  %283 = load %struct._cl_device_id*, %struct._cl_device_id** %6, align 8, !tbaa !37
  %284 = load i8*, i8** %262, align 8, !tbaa !65
  %285 = ptrtoint i8* %281 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 16383, %285
  %288 = add i64 %287, %286
  %289 = call i32 %282(%struct._cl_program* %185, %struct._cl_device_id* %283, i32 4483, i64 %288, i8* %281, i64* null) #7
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %278
  %292 = call i8* @halide_string_to_string(i8* %281, i8* %280, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.101, i64 0, i64 0)) #7
  %293 = load i8*, i8** %262, align 8, !tbaa !65
  br label %294

294:                                              ; preds = %291, %278
  %295 = phi i8* [ %292, %291 ], [ %281, %278 ]
  %296 = phi i8* [ %293, %291 ], [ %284, %278 ]
  %297 = icmp eq i8* %296, null
  %298 = load i8*, i8** %259, align 8, !tbaa !62
  br i1 %297, label %306, label %299

299:                                              ; preds = %294
  %300 = ptrtoint i8* %295 to i64
  %301 = ptrtoint i8* %296 to i64
  %302 = sub i64 1, %301
  %303 = add i64 %302, %300
  %304 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %298, i8* nonnull %296, i64 %303) #7
  %305 = load i8*, i8** %262, align 8, !tbaa !65
  br label %306

306:                                              ; preds = %294, %299
  %307 = phi i8* [ %305, %299 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %294 ]
  call void @halide_error(i8* %298, i8* %307) #7
  %308 = load i8, i8* %260, align 8, !tbaa !64, !range !41
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = load i8*, i8** %262, align 8, !tbaa !65
  call void @free(i8* %311) #7
  br label %312

312:                                              ; preds = %306, %310
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %258) #9
  br label %313

313:                                              ; preds = %252, %312, %227
  %314 = phi %struct._cl_program* [ null, %227 ], [ null, %312 ], [ %185, %252 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %182) #9
  %315 = load i8*, i8** %158, align 8, !tbaa !60
  %316 = icmp eq i8* %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load i8*, i8** %155, align 8, !tbaa !57
  call void @halide_error(i8* %318, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %327

319:                                              ; preds = %313
  %320 = load i8*, i8** %159, align 8, !tbaa !61
  %321 = load i8*, i8** %155, align 8, !tbaa !57
  %322 = ptrtoint i8* %320 to i64
  %323 = ptrtoint i8* %315 to i64
  %324 = sub i64 1, %323
  %325 = add i64 %324, %322
  %326 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %321, i8* nonnull %315, i64 %325) #7
  br label %327

327:                                              ; preds = %319, %317
  %328 = load i8, i8* %156, align 8, !tbaa !59, !range !41
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %327
  %331 = load i8*, i8** %158, align 8, !tbaa !60
  %332 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %13, i64 0, i32 5, i64 0
  %333 = icmp eq i8* %331, %332
  br i1 %333, label %335, label %334

334:                                              ; preds = %330
  call void @free(i8* %331) #7
  br label %335

335:                                              ; preds = %327, %330, %334
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %154) #9
  br label %336

336:                                              ; preds = %335, %152
  %337 = phi %struct._cl_program* [ null, %152 ], [ %314, %335 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %109) #9
  br label %338

338:                                              ; preds = %336, %107
  %339 = phi %struct._cl_program* [ null, %107 ], [ %337, %336 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #9
  br label %340

340:                                              ; preds = %338, %60
  %341 = phi %struct._cl_program* [ null, %60 ], [ %339, %338 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #9
  ret %struct._cl_program* %341
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = inttoptr i64 %5 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %8, i64 0, i32 1
  %10 = load %struct._cl_mem*, %struct._cl_mem** %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %8, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !54
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.102, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %15

15:                                               ; preds = %14, %7
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 8, !tbaa !70
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %20, align 8, !tbaa !72
  %21 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %22 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 8, !tbaa !72
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 8, !tbaa !70
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
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = sub i64 1, %40
  %42 = add i64 %41, %39
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %34, %36
  call void @free(i8* %32) #7
  store i32 -1, i32* %20, align 8, !tbaa !72
  br label %61

45:                                               ; preds = %24
  %46 = icmp eq i32 %25, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #8
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.106, i64 0, i64 0)) #7
  call void @abort() #7
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 8, !tbaa !37
  %52 = call i32 %51(%struct._cl_mem* %10) #7
  %53 = load i64, i64* %4, align 8, !tbaa !22
  %54 = inttoptr i64 %53 to i8*
  call void @free(i8* %54) #7
  store i64 0, i64* %4, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %56 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %55, align 8, !tbaa !73
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %56, i64 0, i32 15
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !tbaa !74
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 1
  %60 = load void ()*, void ()** %59, align 8, !tbaa !76
  call void %60() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %55, align 8, !tbaa !73
  br label %61

61:                                               ; preds = %44, %50, %45
  %62 = phi i32 [ %25, %45 ], [ %52, %50 ], [ -1, %44 ]
  %63 = load i8*, i8** %17, align 8, !tbaa !68
  %64 = call i32 @halide_release_cl_context(i8* %63) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #9
  br label %65

65:                                               ; preds = %2, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %2 ]
  ret i32 %66
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_opencl_compute_capability(i8* %0, i32* %1, i32* %2) #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %5 = alloca [1 x %struct._cl_device_id*], align 8
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %7 = alloca [256 x i8], align 1
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = load i8*, i8** @_ZN6Halide7Runtime8Internal6OpenCL10lib_openclE, align 8, !tbaa !37
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i8* @halide_opencl_get_symbol(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4, !tbaa !43
  store i32 0, i32* %1, align 4, !tbaa !43
  ret i32 0

15:                                               ; preds = %11, %3
  %16 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #9
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 0
  store i8* %0, i8** %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %18, align 8, !tbaa !70
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %4, i64 0, i32 3
  store i32 0, i32* %20, align 8, !tbaa !72
  %21 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %22 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %18, %struct._cl_command_queue** nonnull %19, i1 zeroext true) #7
  store i32 %25, i32* %20, align 8, !tbaa !72
  %26 = load %struct._cl_context*, %struct._cl_context** %18, align 8, !tbaa !70
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
  %35 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = sub i64 1, %40
  %42 = add i64 %41, %39
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7
  call void @halide_error(i8* %0, i8* nonnull %32) #7
  br label %44

44:                                               ; preds = %34, %36
  call void @free(i8* %32) #7
  store i32 -1, i32* %20, align 8, !tbaa !72
  br label %153

45:                                               ; preds = %24
  %46 = icmp eq i32 %25, 0
  br i1 %46, label %47, label %153

47:                                               ; preds = %45
  %48 = bitcast [1 x %struct._cl_device_id*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #9
  %49 = load i32 (%struct._cl_context*, i32, i64, i8*, i64*)*, i32 (%struct._cl_context*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL16clGetContextInfoE, align 8, !tbaa !37
  %50 = call i32 %49(%struct._cl_context* nonnull %26, i32 4225, i64 8, i8* nonnull %48, i64* null) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %90, label %52

52:                                               ; preds = %47
  %53 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %53) #9
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3
  store i8* %0, i8** %54, align 8, !tbaa !44
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4
  store i8 1, i8* %55, align 8, !tbaa !46
  %56 = call i8* @malloc(i64 1024) #7
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0
  store i8* %56, i8** %57, align 8, !tbaa !47
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1
  store i8* %56, i8** %58, align 8, !tbaa !48
  %59 = icmp eq i8* %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, i8* %56, i64 1023
  store i8 0, i8* %61, align 1, !tbaa !36
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi i8* [ %61, %60 ], [ null, %52 ]
  %64 = call i8* @halide_string_to_string(i8* %56, i8* %63, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i64 0, i64 0)) #7
  %65 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %50) #8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %71

69:                                               ; preds = %62
  %70 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* nonnull %65) #7
  br label %71

71:                                               ; preds = %67, %69
  %72 = phi i8* [ %70, %69 ], [ %68, %67 ]
  %73 = load i8*, i8** %57, align 8, !tbaa !47
  %74 = icmp eq i8* %73, null
  %75 = load i8*, i8** %54, align 8, !tbaa !44
  br i1 %74, label %83, label %76

76:                                               ; preds = %71
  %77 = ptrtoint i8* %72 to i64
  %78 = ptrtoint i8* %73 to i64
  %79 = sub i64 1, %78
  %80 = add i64 %79, %77
  %81 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %75, i8* nonnull %73, i64 %80) #7
  %82 = load i8*, i8** %57, align 8, !tbaa !47
  br label %83

83:                                               ; preds = %71, %76
  %84 = phi i8* [ %82, %76 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %71 ]
  call void @halide_error(i8* %75, i8* %84) #7
  %85 = load i8, i8* %55, align 8, !tbaa !46, !range !41
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %57, align 8, !tbaa !47
  call void @free(i8* %88) #7
  br label %89

89:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %53) #9
  br label %150

90:                                               ; preds = %47
  %91 = getelementptr inbounds [1 x %struct._cl_device_id*], [1 x %struct._cl_device_id*]* %5, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %92) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(256) %92, i8 0, i64 256, i1 false)
  %93 = load i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)*, i32 (%struct._cl_device_id*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL15clGetDeviceInfoE, align 8, !tbaa !37
  %94 = load %struct._cl_device_id*, %struct._cl_device_id** %91, align 8, !tbaa !37
  %95 = call i32 %93(%struct._cl_device_id* %94, i32 4143, i64 256, i8* nonnull %92, i64* null) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %135, label %97

97:                                               ; preds = %90
  %98 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %98) #9
  %99 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* %0, i8** %99, align 8, !tbaa !44
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %100, align 8, !tbaa !46
  %101 = call i8* @malloc(i64 1024) #7
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %101, i8** %102, align 8, !tbaa !47
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %101, i8** %103, align 8, !tbaa !48
  %104 = icmp eq i8* %101, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds i8, i8* %101, i64 1023
  store i8 0, i8* %106, align 1, !tbaa !36
  br label %107

107:                                              ; preds = %97, %105
  %108 = phi i8* [ %106, %105 ], [ null, %97 ]
  %109 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0)) #7
  %110 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %95) #8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i8* @halide_string_to_string(i8* %109, i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %116

114:                                              ; preds = %107
  %115 = call i8* @halide_string_to_string(i8* %109, i8* %108, i8* nonnull %110) #7
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi i8* [ %115, %114 ], [ %113, %112 ]
  %118 = load i8*, i8** %102, align 8, !tbaa !47
  %119 = icmp eq i8* %118, null
  %120 = load i8*, i8** %99, align 8, !tbaa !44
  br i1 %119, label %128, label %121

121:                                              ; preds = %116
  %122 = ptrtoint i8* %117 to i64
  %123 = ptrtoint i8* %118 to i64
  %124 = sub i64 1, %123
  %125 = add i64 %124, %122
  %126 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %120, i8* nonnull %118, i64 %125) #7
  %127 = load i8*, i8** %102, align 8, !tbaa !47
  br label %128

128:                                              ; preds = %116, %121
  %129 = phi i8* [ %127, %121 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %116 ]
  call void @halide_error(i8* %120, i8* %129) #7
  %130 = load i8, i8* %100, align 8, !tbaa !46, !range !41
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %102, align 8, !tbaa !47
  call void @free(i8* %133) #7
  br label %134

134:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %98) #9
  br label %147

135:                                              ; preds = %90
  %136 = call i64 @strlen(i8* nonnull %92) #7
  %137 = icmp ult i64 %136, 10
  br i1 %137, label %147, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 7
  %140 = load i8, i8* %139, align 1, !tbaa !36
  %141 = sext i8 %140 to i32
  %142 = add nsw i32 %141, -48
  store i32 %142, i32* %1, align 4, !tbaa !43
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 9
  %144 = load i8, i8* %143, align 1, !tbaa !36
  %145 = sext i8 %144 to i32
  %146 = add nsw i32 %145, -48
  store i32 %146, i32* %2, align 4, !tbaa !43
  br label %147

147:                                              ; preds = %135, %138, %134
  %148 = phi i32 [ %95, %134 ], [ 0, %138 ], [ -1, %135 ]
  %149 = phi i32 [ 1, %134 ], [ 0, %138 ], [ 1, %135 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %92) #9
  br label %150

150:                                              ; preds = %147, %89
  %151 = phi i32 [ %50, %89 ], [ %148, %147 ]
  %152 = phi i32 [ 1, %89 ], [ %149, %147 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #9
  br label %153

153:                                              ; preds = %44, %45, %150
  %154 = phi i32 [ %151, %150 ], [ %25, %45 ], [ -1, %44 ]
  %155 = phi i32 [ %152, %150 ], [ 1, %45 ], [ 1, %44 ]
  %156 = load i8*, i8** %17, align 8, !tbaa !68
  %157 = call i32 @halide_release_cl_context(i8* %156) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #9
  %158 = icmp eq i32 %155, 0
  %159 = select i1 %158, i32 0, i32 %154
  ret i32 %159
}

declare i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_opencl_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %6 = alloca %struct._cl_program*, align 8
  %7 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #9
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 0
  store i8* %0, i8** %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 3
  store i32 0, i32* %11, align 8, !tbaa !72
  %12 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %13 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %9, %struct._cl_command_queue** nonnull %10, i1 zeroext true) #7
  store i32 %16, i32* %11, align 8, !tbaa !72
  %17 = load %struct._cl_context*, %struct._cl_context** %9, align 8, !tbaa !70
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
  %26 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i64 1023
  store i8 0, i8* %28, align 1, !tbaa !36
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %30 = ptrtoint i8* %29 to i64
  %31 = ptrtoint i8* %23 to i64
  %32 = sub i64 1, %31
  %33 = add i64 %32, %30
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %33) #7
  call void @halide_error(i8* %0, i8* nonnull %23) #7
  br label %35

35:                                               ; preds = %25, %27
  call void @free(i8* %23) #7
  store i32 -1, i32* %11, align 8, !tbaa !72
  br label %47

36:                                               ; preds = %15
  %37 = icmp eq i32 %16, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = bitcast %struct._cl_program** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #9
  %40 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i8* %0, i8** %1, %struct._cl_context* nonnull %17, %struct._cl_program** nonnull align 8 dereferenceable(8) %6, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal6OpenCL14compile_kernelEPvP11_cl_contextPKci, i8* %0, %struct._cl_context* nonnull %17, i8* %2, i32 %3) #8
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct._cl_program*, %struct._cl_program** %6, align 8, !tbaa !37
  %43 = icmp eq %struct._cl_program* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.115, i64 0, i64 0)) #7
  call void @abort() #7
  br label %45

45:                                               ; preds = %41, %44, %38
  %46 = phi i32 [ -1, %38 ], [ 0, %44 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #9
  br label %47

47:                                               ; preds = %35, %36, %45
  %48 = phi i32 [ %46, %45 ], [ %16, %36 ], [ -1, %35 ]
  %49 = load i8*, i8** %8, align 8, !tbaa !68
  %50 = call i32 @halide_release_cl_context(i8* %49) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #9
  ret i32 %48
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE18kernel_state_setupIPFS5_PvS3_PKciEJS8_S3_SA_iEEEbS8_PS8_S3_RS5_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %struct._cl_context* %3, %struct._cl_program** nonnull align 8 dereferenceable(8) %4, %struct._cl_program* (i8*, %struct._cl_context*, i8*, i32)* %5, i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) local_unnamed_addr #4 comdat align 2 {
  %11 = alloca %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", align 8
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %12) #7
  %13 = bitcast i8** %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %18 = load i32, i32* %17, align 4, !tbaa !78
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !78
  store i32 %18, i32* %13, align 4, !tbaa !43
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !81
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
  %39 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %38, align 8, !tbaa !82
  %40 = sext i32 %33 to i64
  %41 = icmp sgt i32 %33, 1
  %42 = select i1 %41, i32 %33, i32 1
  %43 = zext i32 %42 to i64
  br label %47

44:                                               ; preds = %55
  %45 = icmp slt i64 %61, %40
  %46 = icmp eq i64 %61, %43
  br i1 %46, label %69, label %47, !llvm.loop !83

47:                                               ; preds = %44, %35
  %48 = phi i64 [ 0, %35 ], [ %61, %44 ]
  %49 = phi i1 [ true, %35 ], [ %45, %44 ]
  %50 = add i64 %48, %32
  %51 = and i64 %50, %37
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 2
  %53 = load i32, i32* %52, align 8, !tbaa !84
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 0
  %57 = load %struct._cl_context*, %struct._cl_context** %56, align 8, !tbaa !86
  %58 = icmp eq %struct._cl_context* %57, %3
  %59 = icmp eq i32 %53, %21
  %60 = and i1 %59, %58
  %61 = add nuw nsw i64 %48, 1
  br i1 %60, label %62, label %44

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 3
  %64 = load i32, i32* %63, align 4, !tbaa !87
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4, !tbaa !87
  br i1 %49, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %39, i64 %51, i32 1
  %68 = load %struct._cl_program*, %struct._cl_program** %67, align 8, !tbaa !37
  store %struct._cl_program* %68, %struct._cl_program** %4, align 8, !tbaa !37
  br label %81

69:                                               ; preds = %47, %44, %25, %20, %62
  %70 = tail call %struct._cl_program* %5(i8* %6, %struct._cl_context* %7, i8* %8, i32 %9) #7
  %71 = icmp eq %struct._cl_program* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #9
  %74 = load i32, i32* %13, align 4, !tbaa !43
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 0
  store %struct._cl_context* %3, %struct._cl_context** %75, align 8, !tbaa !86
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 1
  store %struct._cl_program* %70, %struct._cl_program** %76, align 8, !tbaa !88
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 2
  store i32 %74, i32* %77, align 8, !tbaa !84
  %78 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %11, i64 0, i32 3
  store i32 1, i32* %78, align 4, !tbaa !87
  %79 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %11) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #9
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store %struct._cl_program* %70, %struct._cl_program** %4, align 8, !tbaa !37
  br label %81

81:                                               ; preds = %80, %69, %72, %66
  %82 = phi i1 [ true, %66 ], [ true, %80 ], [ false, %69 ], [ false, %72 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %12) #7
  ret i1 %82
}

; Function Attrs: nounwind
define weak void @halide_opencl_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %8, align 8, !tbaa !72
  %9 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %10 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %6, %struct._cl_command_queue** nonnull %7, i1 zeroext true) #7
  store i32 %13, i32* %8, align 8, !tbaa !72
  %14 = load %struct._cl_context*, %struct._cl_context** %6, align 8, !tbaa !70
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
  %23 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i64 1023
  store i8 0, i8* %25, align 1, !tbaa !36
  %26 = call i8* @halide_string_to_string(i8* nonnull %20, i8* nonnull %25, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %20 to i64
  %29 = sub i64 1, %28
  %30 = add i64 %29, %27
  %31 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %30) #7
  call void @halide_error(i8* %0, i8* nonnull %20) #7
  br label %32

32:                                               ; preds = %22, %24
  call void @free(i8* %20) #7
  store i32 -1, i32* %8, align 8, !tbaa !72
  br label %81

33:                                               ; preds = %12
  %34 = icmp eq i32 %13, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %33
  %36 = ptrtoint i8* %1 to i64
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !81
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
  %53 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !82
  %54 = sext i32 %48 to i64
  %55 = icmp sgt i32 %48, 1
  %56 = select i1 %55, i32 %48, i32 1
  %57 = zext i32 %56 to i64
  br label %61

58:                                               ; preds = %69
  %59 = icmp slt i64 %75, %54
  %60 = icmp eq i64 %75, %57
  br i1 %60, label %80, label %61, !llvm.loop !83

61:                                               ; preds = %58, %50
  %62 = phi i64 [ 0, %50 ], [ %75, %58 ]
  %63 = phi i1 [ true, %50 ], [ %59, %58 ]
  %64 = add i64 %62, %47
  %65 = and i64 %64, %52
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !84
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 0
  %71 = load %struct._cl_context*, %struct._cl_context** %70, align 8, !tbaa !86
  %72 = icmp eq %struct._cl_context* %71, %14
  %73 = icmp eq i32 %67, %37
  %74 = and i1 %73, %72
  %75 = add nuw nsw i64 %62, 1
  br i1 %74, label %76, label %58

76:                                               ; preds = %69
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %53, i64 %65, i32 3
  %78 = load i32, i32* %77, align 4, !tbaa !87
  %79 = add i32 %78, -1
  store i32 %79, i32* %77, align 4, !tbaa !87
  br i1 %63, label %81, label %80

80:                                               ; preds = %61, %58, %76, %40, %35
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.281, i64 0, i64 0)) #7
  call void @abort() #7
  br label %81

81:                                               ; preds = %80, %76, %32, %33
  %82 = load i8*, i8** %5, align 8, !tbaa !68
  %83 = call i32 @halide_release_cl_context(i8* %82) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %8, align 8, !tbaa !71
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %9, align 8, !tbaa !72
  %10 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %11 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %7, %struct._cl_command_queue** nonnull %8, i1 zeroext true) #7
  store i32 %14, i32* %9, align 8, !tbaa !72
  %15 = load %struct._cl_context*, %struct._cl_context** %7, align 8, !tbaa !70
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
  %24 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i64 1023
  store i8 0, i8* %26, align 1, !tbaa !36
  %27 = call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %28 = ptrtoint i8* %27 to i64
  %29 = ptrtoint i8* %21 to i64
  %30 = sub i64 1, %29
  %31 = add i64 %30, %28
  %32 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %31) #7
  call void @halide_error(i8* %0, i8* nonnull %21) #7
  br label %33

33:                                               ; preds = %23, %25
  call void @free(i8* %21) #7
  store i32 -1, i32* %9, align 8, !tbaa !72
  br label %78

34:                                               ; preds = %13
  %35 = icmp eq i32 %14, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %34
  %37 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 8, !tbaa !37
  %38 = call i32 %37(%struct._cl_command_queue* nonnull %17) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %78, label %40

40:                                               ; preds = %36
  %41 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %41) #9
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %42, align 8, !tbaa !44
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %43, align 8, !tbaa !46
  %44 = call i8* @malloc(i64 1024) #7
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %44, i8** %45, align 8, !tbaa !47
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %44, i8** %46, align 8, !tbaa !48
  %47 = icmp eq i8* %44, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds i8, i8* %44, i64 1023
  store i8 0, i8* %49, align 1, !tbaa !36
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi i8* [ %49, %48 ], [ null, %40 ]
  %52 = call i8* @halide_string_to_string(i8* %44, i8* %51, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.118, i64 0, i64 0)) #7
  %53 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %38) #8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i8* @halide_string_to_string(i8* %52, i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %59

57:                                               ; preds = %50
  %58 = call i8* @halide_string_to_string(i8* %52, i8* %51, i8* nonnull %53) #7
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi i8* [ %58, %57 ], [ %56, %55 ]
  %61 = load i8*, i8** %45, align 8, !tbaa !47
  %62 = icmp eq i8* %61, null
  %63 = load i8*, i8** %42, align 8, !tbaa !44
  br i1 %62, label %71, label %64

64:                                               ; preds = %59
  %65 = ptrtoint i8* %60 to i64
  %66 = ptrtoint i8* %61 to i64
  %67 = sub i64 1, %66
  %68 = add i64 %67, %65
  %69 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %63, i8* nonnull %61, i64 %68) #7
  %70 = load i8*, i8** %45, align 8, !tbaa !47
  br label %71

71:                                               ; preds = %59, %64
  %72 = phi i8* [ %70, %64 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %59 ]
  call void @halide_error(i8* %63, i8* %72) #7
  %73 = load i8, i8* %43, align 8, !tbaa !46, !range !41
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %45, align 8, !tbaa !47
  call void @free(i8* %76) #7
  br label %77

77:                                               ; preds = %71, %75
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %41) #9
  br label %78

78:                                               ; preds = %33, %77, %36, %34
  %79 = phi i32 [ %14, %34 ], [ %38, %77 ], [ 0, %36 ], [ -1, %33 ]
  %80 = load i8*, i8** %6, align 8, !tbaa !68
  %81 = call i32 @halide_release_cl_context(i8* %80) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #9
  ret i32 %79
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_release(i8* %0) #4 {
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
  %9 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !37
  %10 = icmp eq %struct._cl_context* %9, null
  br i1 %10, label %76, label %11

11:                                               ; preds = %8
  %12 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 8, !tbaa !37
  %13 = load %struct._cl_command_queue*, %struct._cl_command_queue** %3, align 8, !tbaa !37
  %14 = call i32 %12(%struct._cl_command_queue* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.120, i64 0, i64 0)) #7
  call void @abort() #7
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  %19 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !89
  %20 = icmp eq i32 %19, 0
  %21 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 1), align 8
  %22 = icmp eq i32 %21, 31
  %23 = or i1 %20, %22
  br i1 %23, label %59, label %24

24:                                               ; preds = %17
  %25 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !82
  br label %26

26:                                               ; preds = %52, %24
  %27 = phi i32 [ %21, %24 ], [ %53, %52 ]
  %28 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %25, %24 ], [ %54, %52 ]
  %29 = phi i64 [ 0, %24 ], [ %55, %52 ]
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 2
  %31 = load i32, i32* %30, align 8, !tbaa !84
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 0
  %35 = load %struct._cl_context*, %struct._cl_context** %34, align 8, !tbaa !86
  %36 = icmp eq %struct._cl_context* %35, %18
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 3
  %39 = load i32, i32* %38, align 4, !tbaa !87
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE, align 8, !tbaa !37
  %43 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %28, i64 %29, i32 1
  %44 = load %struct._cl_program*, %struct._cl_program** %43, align 8, !tbaa !88
  %45 = call i32 %42(%struct._cl_program* %44) #7
  %46 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !82
  %47 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i64 %29, i32 1
  store %struct._cl_program* null, %struct._cl_program** %47, align 8, !tbaa !88
  %48 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %46, i64 %29, i32 2
  store i32 1, i32* %48, align 8, !tbaa !84
  %49 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !89
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !89
  %51 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !81
  br label %52

52:                                               ; preds = %41, %37, %33, %26
  %53 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %27, %37 ], [ %51, %41 ]
  %54 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %28, %26 ], [ %28, %33 ], [ %28, %37 ], [ %46, %41 ]
  %55 = add nuw nsw i64 %29, 1
  %56 = shl nuw i32 1, %53
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %26, label %59, !llvm.loop !90

59:                                               ; preds = %52, %17
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  %60 = load %struct._cl_context*, %struct._cl_context** %2, align 8, !tbaa !37
  %61 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 8, !tbaa !37
  %62 = icmp eq %struct._cl_context* %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL21clReleaseCommandQueueE, align 8, !tbaa !37
  %65 = load %struct._cl_command_queue*, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 8, !tbaa !37
  %66 = call i32 %64(%struct._cl_command_queue* %65) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.122, i64 0, i64 0)) #7
  call void @abort() #7
  br label %69

69:                                               ; preds = %68, %63
  store %struct._cl_command_queue* null, %struct._cl_command_queue** @_ZN6Halide7Runtime8Internal6OpenCL13command_queueE, align 8, !tbaa !37
  %70 = load i32 (%struct._cl_context*)*, i32 (%struct._cl_context*)** @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseContextE, align 8, !tbaa !37
  %71 = load %struct._cl_context*, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 8, !tbaa !37
  %72 = call i32 %70(%struct._cl_context* %71) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.124, i64 0, i64 0)) #7
  call void @abort() #7
  br label %75

75:                                               ; preds = %74, %69
  store %struct._cl_context* null, %struct._cl_context** @_ZN6Halide7Runtime8Internal6OpenCL7contextE, align 8, !tbaa !37
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
define weak i32 @halide_opencl_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %10, align 8, !tbaa !72
  %11 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %12 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %2
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 8, !tbaa !72
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !70
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
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023
  store i8 0, i8* %27, align 1, !tbaa !36
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %29 = ptrtoint i8* %28 to i64
  %30 = ptrtoint i8* %22 to i64
  %31 = sub i64 1, %30
  %32 = add i64 %31, %29
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %34

34:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 8, !tbaa !72
  br label %191

35:                                               ; preds = %14
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %37, label %191

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %39 = load i32, i32* %38, align 4, !tbaa !24
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %43 = load i8, i8* %42, align 1, !tbaa !23
  br label %87

44:                                               ; preds = %37
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
  br i1 %65, label %66, label %48, !llvm.loop !91

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
  br i1 %86, label %87, label %69, !llvm.loop !92

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
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.126, i64 0, i64 0)) #7
  call void @abort() #7
  br label %99

99:                                               ; preds = %98, %87
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !22
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %38, align 4, !tbaa !24
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %114

108:                                              ; preds = %99
  %109 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %96) #8
  br i1 %109, label %191, label %110

110:                                              ; preds = %108
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.127, i64 0, i64 0)) #7
  call void @abort() #7
  br label %191

111:                                              ; preds = %123, %103
  %112 = call i8* @malloc(i64 16) #7
  %113 = icmp eq i8* %112, null
  br i1 %113, label %191, label %128

114:                                              ; preds = %106, %123
  %115 = phi i32 [ %104, %106 ], [ %124, %123 ]
  %116 = phi i64 [ 0, %106 ], [ %125, %123 ]
  %117 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %107, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i64 %116, i32 2
  %119 = load i32, i32* %118, align 4, !tbaa !26
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.128, i64 0, i64 0)) #7
  call void @abort() #7
  %122 = load i32, i32* %38, align 4, !tbaa !24
  br label %123

123:                                              ; preds = %114, %121
  %124 = phi i32 [ %115, %114 ], [ %122, %121 ]
  %125 = add nuw nsw i64 %116, 1
  %126 = sext i32 %124 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %114, label %111, !llvm.loop !93

128:                                              ; preds = %111
  %129 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %129) #9
  %130 = load %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, i64, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateBufferE, align 8, !tbaa !37
  %131 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !70
  %132 = call %struct._cl_mem* %130(%struct._cl_context* %131, i64 1, i64 %96, i8* null, i32* nonnull %4) #7
  %133 = load i32, i32* %4, align 4, !tbaa !43
  %134 = icmp ne i32 %133, 0
  %135 = icmp eq %struct._cl_mem* %132, null
  %136 = or i1 %135, %134
  br i1 %136, label %137, label %178

137:                                              ; preds = %128
  %138 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %133) #8
  %139 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %139) #9
  %140 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %140, align 8, !tbaa !44
  %141 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %141, align 8, !tbaa !46
  %142 = call i8* @malloc(i64 1024) #7
  %143 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %142, i8** %143, align 8, !tbaa !47
  %144 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  store i8* %142, i8** %144, align 8, !tbaa !48
  %145 = icmp eq i8* %142, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = getelementptr inbounds i8, i8* %142, i64 1023
  store i8 0, i8* %147, align 1, !tbaa !36
  br label %148

148:                                              ; preds = %137, %146
  %149 = phi i8* [ %147, %146 ], [ null, %137 ]
  %150 = call i8* @halide_string_to_string(i8* %142, i8* %149, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i64 0, i64 0)) #7
  %151 = load i32, i32* %4, align 4, !tbaa !43
  %152 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %151) #8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i8* @halide_string_to_string(i8* %150, i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %158

156:                                              ; preds = %148
  %157 = call i8* @halide_string_to_string(i8* %150, i8* %149, i8* nonnull %152) #7
  br label %158

158:                                              ; preds = %154, %156
  %159 = phi i8* [ %157, %156 ], [ %155, %154 ]
  %160 = load i8*, i8** %143, align 8, !tbaa !47
  %161 = icmp eq i8* %160, null
  %162 = load i8*, i8** %140, align 8, !tbaa !44
  br i1 %161, label %170, label %163

163:                                              ; preds = %158
  %164 = ptrtoint i8* %159 to i64
  %165 = ptrtoint i8* %160 to i64
  %166 = sub i64 1, %165
  %167 = add i64 %166, %164
  %168 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %162, i8* nonnull %160, i64 %167) #7
  %169 = load i8*, i8** %143, align 8, !tbaa !47
  br label %170

170:                                              ; preds = %158, %163
  %171 = phi i8* [ %169, %163 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %158 ]
  call void @halide_error(i8* %162, i8* %171) #7
  %172 = load i8, i8* %141, align 8, !tbaa !46, !range !41
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %143, align 8, !tbaa !47
  call void @free(i8* %175) #7
  br label %176

176:                                              ; preds = %170, %174
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %139) #9
  call void @free(i8* nonnull %112) #7
  %177 = load i32, i32* %4, align 4, !tbaa !43
  br label %189

178:                                              ; preds = %128
  %179 = getelementptr inbounds i8, i8* %112, i64 8
  %180 = bitcast i8* %179 to %struct._cl_mem**
  store %struct._cl_mem* %132, %struct._cl_mem** %180, align 8, !tbaa !52
  %181 = bitcast i8* %112 to i64*
  store i64 0, i64* %181, align 8, !tbaa !54
  %182 = ptrtoint i8* %112 to i64
  store i64 %182, i64* %100, align 8, !tbaa !22
  %183 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, %struct.halide_device_interface_t** %183, align 8, !tbaa !73
  %184 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, i64 0, i32 15), align 8, !tbaa !74
  %185 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %184, i64 0, i32 0
  %186 = load void ()*, void ()** %185, align 8, !tbaa !94
  call void %186() #7
  %187 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %96) #8
  br i1 %187, label %189, label %188

188:                                              ; preds = %178
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.135, i64 0, i64 0)) #7
  call void @abort() #7
  br label %189

189:                                              ; preds = %178, %188, %176
  %190 = phi i32 [ %177, %176 ], [ 0, %188 ], [ 0, %178 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %129) #9
  br label %191

191:                                              ; preds = %34, %110, %108, %111, %189, %35
  %192 = phi i32 [ %15, %35 ], [ 0, %110 ], [ 0, %108 ], [ %190, %189 ], [ -6, %111 ], [ -1, %34 ]
  %193 = load i8*, i8** %7, align 8, !tbaa !68
  %194 = call i32 @halide_release_cl_context(i8* %193) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #9
  ret i32 %192
}

declare i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(28) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %3, i64 %4, i32 %5, i1 zeroext %6, i1 zeroext %7) local_unnamed_addr #4 {
  %9 = icmp sgt i32 %5, 16
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = tail call i8* @malloc(i64 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.136, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.136, i64 0, i64 0)) #7
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
  %30 = load i64, i64* %29, align 8, !tbaa !3
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
  %43 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueReadBufferE, align 8, !tbaa !37
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %45 = load %struct._cl_command_queue*, %struct._cl_command_queue** %44, align 8, !tbaa !71
  %46 = load i64, i64* %37, align 8, !tbaa !9
  %47 = inttoptr i64 %46 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %47, i64 0, i32 1
  %49 = load %struct._cl_mem*, %struct._cl_mem** %48, align 8, !tbaa !52
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %47, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !54
  %52 = add i64 %51, %3
  %53 = load i64, i64* %39, align 8, !tbaa !12
  %54 = load i64, i64* %38, align 8, !tbaa !11
  %55 = add i64 %54, %4
  %56 = inttoptr i64 %55 to i8*
  %57 = tail call i32 %43(%struct._cl_command_queue* %45, %struct._cl_mem* %49, i32 0, i64 %52, i64 %53, i8* %56, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

58:                                               ; preds = %36
  %59 = xor i1 %6, true
  %60 = or i1 %59, %7
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL20clEnqueueWriteBufferE, align 8, !tbaa !37
  %63 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %64 = load %struct._cl_command_queue*, %struct._cl_command_queue** %63, align 8, !tbaa !71
  %65 = load i64, i64* %38, align 8, !tbaa !11
  %66 = inttoptr i64 %65 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 1
  %68 = load %struct._cl_mem*, %struct._cl_mem** %67, align 8, !tbaa !52
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !54
  %71 = add i64 %70, %4
  %72 = load i64, i64* %39, align 8, !tbaa !12
  %73 = load i64, i64* %37, align 8, !tbaa !9
  %74 = add i64 %73, %3
  %75 = inttoptr i64 %74 to i8*
  %76 = tail call i32 %62(%struct._cl_command_queue* %64, %struct._cl_mem* %68, i32 0, i64 %71, i64 %72, i8* %75, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

77:                                               ; preds = %58
  %78 = or i1 %6, %7
  br i1 %78, label %99, label %79

79:                                               ; preds = %77
  %80 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, %struct._cl_mem*, i64, i64, i64, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueCopyBufferE, align 8, !tbaa !37
  %81 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %1, i64 0, i32 2
  %82 = load %struct._cl_command_queue*, %struct._cl_command_queue** %81, align 8, !tbaa !71
  %83 = load i64, i64* %37, align 8, !tbaa !9
  %84 = inttoptr i64 %83 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %84, i64 0, i32 1
  %86 = load %struct._cl_mem*, %struct._cl_mem** %85, align 8, !tbaa !52
  %87 = load i64, i64* %38, align 8, !tbaa !11
  %88 = inttoptr i64 %87 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %88, i64 0, i32 1
  %90 = load %struct._cl_mem*, %struct._cl_mem** %89, align 8, !tbaa !52
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %84, i64 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !54
  %93 = add i64 %92, %3
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %88, i64 0, i32 0
  %95 = load i64, i64* %94, align 8, !tbaa !54
  %96 = add i64 %95, %4
  %97 = load i64, i64* %39, align 8, !tbaa !12
  %98 = tail call i32 %80(%struct._cl_command_queue* %82, %struct._cl_mem* %86, %struct._cl_mem* %90, i64 %93, i64 %96, i64 %97, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  br label %110

99:                                               ; preds = %77
  %100 = load i64, i64* %38, align 8, !tbaa !11
  %101 = add i64 %100, %4
  %102 = load i64, i64* %37, align 8, !tbaa !9
  %103 = add i64 %102, %3
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %154, label %105

105:                                              ; preds = %99
  %106 = inttoptr i64 %101 to i8*
  %107 = inttoptr i64 %103 to i8*
  %108 = load i64, i64* %39, align 8, !tbaa !12
  %109 = tail call i8* @memcpy(i8* %106, i8* %107, i64 %108) #7
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
  store i8 0, i8* %117, align 1, !tbaa !36
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i8* [ %117, %116 ], [ null, %113 ]
  %120 = tail call i8* @halide_string_to_string(i8* %114, i8* %119, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i64 0, i64 0)) #7
  %121 = tail call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %111) #8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %127

125:                                              ; preds = %118
  %126 = tail call i8* @halide_string_to_string(i8* %120, i8* %119, i8* nonnull %121) #7
  br label %127

127:                                              ; preds = %123, %125
  %128 = phi i8* [ %126, %125 ], [ %124, %123 ]
  br i1 %115, label %129, label %130

129:                                              ; preds = %127
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  %141 = add nsw i64 %140, %3
  %142 = add nsw i64 %139, %4
  %143 = tail call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(28) %1, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %2, i64 %141, i64 %142, i32 %27, i1 zeroext %6, i1 zeroext %7) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = load i64, i64* %34, align 8, !tbaa !3
  %147 = add i64 %146, %140
  %148 = load i64, i64* %35, align 8, !tbaa !3
  %149 = add i64 %148, %139
  %150 = add nuw nsw i32 %138, 1
  %151 = load i64, i64* %29, align 8, !tbaa !3
  %152 = trunc i64 %151 to i32
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %137, label %154, !llvm.loop !95

154:                                              ; preds = %145, %137, %26, %99, %105, %110, %136, %23
  %155 = phi i32 [ -1, %23 ], [ %111, %136 ], [ 0, %110 ], [ 0, %105 ], [ 0, %99 ], [ 0, %26 ], [ 0, %145 ], [ %143, %137 ]
  ret i32 %155
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %7 = icmp eq %struct.halide_device_interface_t* %2, null
  %8 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.146, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !96
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8, !tbaa !15
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !73
  %23 = icmp eq %struct.halide_device_interface_t* %22, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  br i1 %8, label %95, label %25

25:                                               ; preds = %24
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.147, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %95

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !73
  %29 = icmp eq %struct.halide_device_interface_t* %28, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  br i1 %29, label %30, label %42

30:                                               ; preds = %20, %26
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !22
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = and i64 %13, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8, !tbaa !15
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %37
  br label %42

42:                                               ; preds = %41, %26, %30, %37
  %43 = phi i1 [ true, %37 ], [ false, %41 ], [ true, %30 ], [ true, %26 ]
  br i1 %7, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !22
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.149, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %50) #9
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %43, %struct.halide_buffer_t* %3, i1 zeroext %7) #8
  %51 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %51) #9
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 0
  store i8* %0, i8** %52, align 8, !tbaa !68
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %53, align 8, !tbaa !70
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %54, align 8, !tbaa !71
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 3
  store i32 0, i32* %55, align 8, !tbaa !72
  %56 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %57 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %59

59:                                               ; preds = %58, %49
  %60 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %53, %struct._cl_command_queue** nonnull %54, i1 zeroext true) #7
  store i32 %60, i32* %55, align 8, !tbaa !72
  %61 = load %struct._cl_context*, %struct._cl_context** %53, align 8, !tbaa !70
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
  %70 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i64 1023
  store i8 0, i8* %72, align 1, !tbaa !36
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %74 = ptrtoint i8* %73 to i64
  %75 = ptrtoint i8* %67 to i64
  %76 = sub i64 1, %75
  %77 = add i64 %76, %74
  %78 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %77) #7
  call void @halide_error(i8* %0, i8* nonnull %67) #7
  br label %79

79:                                               ; preds = %69, %71
  call void @free(i8* %67) #7
  store i32 -1, i32* %55, align 8, !tbaa !72
  br label %91

80:                                               ; preds = %59
  %81 = icmp eq i32 %60, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 2
  %84 = load i64, i64* %83, align 8, !tbaa !14
  %85 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %86 = load i32, i32* %85, align 4, !tbaa !24
  %87 = call i32 @opencl_do_multidimensional_copy(i8* %0, %"class.Halide::Runtime::Internal::OpenCL::ClContext"* nonnull align 8 dereferenceable(28) %6, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %84, i64 0, i32 %86, i1 zeroext %43, i1 zeroext %7) #8
  %88 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 8, !tbaa !37
  %89 = load %struct._cl_command_queue*, %struct._cl_command_queue** %54, align 8, !tbaa !71
  %90 = call i32 %88(%struct._cl_command_queue* %89) #7
  br label %91

91:                                               ; preds = %79, %80, %82
  %92 = phi i32 [ %87, %82 ], [ %60, %80 ], [ -1, %79 ]
  %93 = load i8*, i8** %52, align 8, !tbaa !68
  %94 = call i32 @halide_release_cl_context(i8* %93) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %51) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %50) #9
  br label %95

95:                                               ; preds = %25, %24, %91
  %96 = phi i32 [ %92, %91 ], [ -42, %24 ], [ -42, %25 ]
  ret i32 %96
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
define weak i32 @halide_opencl_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
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
  store i8* %0, i8** %32, align 8, !tbaa !68
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %33, align 8, !tbaa !70
  %34 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %34, align 8, !tbaa !71
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %19, i64 0, i32 3
  store i32 0, i32* %35, align 8, !tbaa !72
  %36 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %37 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %39

39:                                               ; preds = %38, %17
  %40 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %33, %struct._cl_command_queue** nonnull %34, i1 zeroext true) #7
  store i32 %40, i32* %35, align 8, !tbaa !72
  %41 = load %struct._cl_context*, %struct._cl_context** %33, align 8, !tbaa !70
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
  %50 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %47, i64 1023
  store i8 0, i8* %52, align 1, !tbaa !36
  %53 = call i8* @halide_string_to_string(i8* nonnull %47, i8* nonnull %52, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %54 = ptrtoint i8* %53 to i64
  %55 = ptrtoint i8* %47 to i64
  %56 = sub i64 1, %55
  %57 = add i64 %56, %54
  %58 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %57) #7
  call void @halide_error(i8* %0, i8* nonnull %47) #7
  br label %59

59:                                               ; preds = %49, %51
  call void @free(i8* %47) #7
  store i32 -1, i32* %35, align 8, !tbaa !72
  br label %525

60:                                               ; preds = %39
  %61 = icmp eq i32 %40, 0
  br i1 %61, label %62, label %525

62:                                               ; preds = %60
  %63 = icmp eq i8* %1, null
  br i1 %63, label %107, label %64

64:                                               ; preds = %62
  %65 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 8, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  %66 = ptrtoint i8* %1 to i64
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !81
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
  %83 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !82
  %84 = sext i32 %78 to i64
  %85 = icmp sgt i32 %78, 1
  %86 = select i1 %85, i32 %78, i32 1
  %87 = zext i32 %86 to i64
  br label %91

88:                                               ; preds = %99
  %89 = icmp slt i64 %105, %84
  %90 = icmp eq i64 %105, %87
  br i1 %90, label %113, label %91, !llvm.loop !83

91:                                               ; preds = %88, %80
  %92 = phi i64 [ 0, %80 ], [ %105, %88 ]
  %93 = phi i1 [ true, %80 ], [ %89, %88 ]
  %94 = add i64 %92, %77
  %95 = and i64 %94, %82
  %96 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 2
  %97 = load i32, i32* %96, align 8, !tbaa !84
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 0
  %101 = load %struct._cl_context*, %struct._cl_context** %100, align 8, !tbaa !86
  %102 = icmp eq %struct._cl_context* %101, %41
  %103 = icmp eq i32 %97, %67
  %104 = and i1 %103, %102
  %105 = add nuw nsw i64 %92, 1
  br i1 %104, label %106, label %88

106:                                              ; preds = %99
  br i1 %93, label %109, label %113

107:                                              ; preds = %62
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.159, i64 0, i64 0)) #7
  call void @abort() #7
  %108 = bitcast %struct._cl_program** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #9
  store %struct._cl_program* null, %struct._cl_program** %20, align 8, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  br label %113

109:                                              ; preds = %106
  %110 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %83, i64 %95, i32 1
  %111 = load %struct._cl_program*, %struct._cl_program** %110, align 8, !tbaa !37
  store %struct._cl_program* %111, %struct._cl_program** %20, align 8, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  %112 = icmp eq %struct._cl_program* %111, null
  br i1 %112, label %115, label %118

113:                                              ; preds = %91, %88, %70, %64, %106, %107
  %114 = phi i8* [ %108, %107 ], [ %65, %106 ], [ %65, %64 ], [ %65, %70 ], [ %65, %88 ], [ %65, %91 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 0)) #7
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi %struct._cl_program* [ %111, %109 ], [ null, %113 ]
  %117 = phi i8* [ %65, %109 ], [ %114, %113 ]
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.160, i64 0, i64 0)) #7
  call void @abort() #7
  br label %118

118:                                              ; preds = %109, %115
  %119 = phi %struct._cl_program* [ %111, %109 ], [ %116, %115 ]
  %120 = phi i8* [ %65, %109 ], [ %117, %115 ]
  %121 = load %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)*, %struct._cl_kernel* (%struct._cl_program*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL14clCreateKernelE, align 8, !tbaa !37
  %122 = call %struct._cl_kernel* %121(%struct._cl_program* %119, i8* %2, i32* nonnull %18) #7
  %123 = load i32, i32* %18, align 4, !tbaa !43
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %178, label %125

125:                                              ; preds = %118
  %126 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %123) #8
  %127 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %127) #9
  %128 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 3
  store i8* %0, i8** %128, align 8, !tbaa !44
  %129 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 4
  store i8 1, i8* %129, align 8, !tbaa !46
  %130 = call i8* @malloc(i64 1024) #7
  %131 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 0
  store i8* %130, i8** %131, align 8, !tbaa !47
  %132 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 1
  %133 = icmp eq i8* %130, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds i8, i8* %130, i64 1023
  store i8 0, i8* %135, align 1, !tbaa !36
  br label %136

136:                                              ; preds = %125, %134
  %137 = phi i8* [ %135, %134 ], [ null, %125 ]
  %138 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = call i8* @halide_string_to_string(i8* %130, i8* %137, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.162, i64 0, i64 0)) #7
  %140 = icmp eq i8* %2, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i8* @halide_string_to_string(i8* %139, i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %145

143:                                              ; preds = %136
  %144 = call i8* @halide_string_to_string(i8* %139, i8* %137, i8* nonnull %2) #7
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ]
  store i8* %146, i8** %132, align 8, !tbaa !48
  %147 = load i8*, i8** %138, align 8, !tbaa !49
  %148 = call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i64 0, i64 0)) #7
  %149 = load i32, i32* %18, align 4, !tbaa !43
  %150 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %149) #8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i8* @halide_string_to_string(i8* %148, i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %156

154:                                              ; preds = %145
  %155 = call i8* @halide_string_to_string(i8* %148, i8* %147, i8* nonnull %150) #7
  br label %156

156:                                              ; preds = %152, %154
  %157 = phi i8* [ %155, %154 ], [ %153, %152 ]
  %158 = load i8*, i8** %138, align 8, !tbaa !49
  %159 = call i8* @halide_string_to_string(i8* %157, i8* %158, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  %160 = load i8*, i8** %131, align 8, !tbaa !47
  %161 = icmp eq i8* %160, null
  %162 = load i8*, i8** %128, align 8, !tbaa !44
  br i1 %161, label %170, label %163

163:                                              ; preds = %156
  %164 = ptrtoint i8* %159 to i64
  %165 = ptrtoint i8* %160 to i64
  %166 = add i64 %164, 1
  %167 = sub i64 %166, %165
  %168 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %162, i8* nonnull %160, i64 %167) #7
  %169 = load i8*, i8** %131, align 8, !tbaa !47
  br label %170

170:                                              ; preds = %156, %163
  %171 = phi i8* [ %169, %163 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %156 ]
  call void @halide_error(i8* %162, i8* %171) #7
  %172 = load i8, i8* %129, align 8, !tbaa !46, !range !41
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %131, align 8, !tbaa !47
  call void @free(i8* %175) #7
  br label %176

176:                                              ; preds = %170, %174
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %127) #9
  %177 = load i32, i32* %18, align 4, !tbaa !43
  br label %523

178:                                              ; preds = %118
  %179 = bitcast [3 x i64]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %179) #9
  %180 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 0
  %181 = sext i32 %3 to i64
  %182 = sext i32 %6 to i64
  %183 = mul nsw i64 %182, %181
  store i64 %183, i64* %180, align 8, !tbaa !55
  %184 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 1
  %185 = sext i32 %4 to i64
  %186 = sext i32 %7 to i64
  %187 = mul nsw i64 %186, %185
  store i64 %187, i64* %184, align 8, !tbaa !55
  %188 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 2
  %189 = sext i32 %5 to i64
  %190 = sext i32 %8 to i64
  %191 = mul nsw i64 %190, %189
  store i64 %191, i64* %188, align 8, !tbaa !55
  %192 = bitcast [3 x i64]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %192) #9
  %193 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 %182, i64* %193, align 8, !tbaa !55
  %194 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 %186, i64* %194, align 8, !tbaa !55
  %195 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 %190, i64* %195, align 8, !tbaa !55
  %196 = load i64, i64* %10, align 8, !tbaa !55
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %232, label %198

198:                                              ; preds = %178, %216
  %199 = phi i64 [ %218, %216 ], [ 0, %178 ]
  %200 = phi i32 [ %217, %216 ], [ 0, %178 ]
  %201 = getelementptr inbounds i8, i8* %12, i64 %199
  %202 = load i8, i8* %201, align 1, !tbaa !36
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds i8*, i8** %11, i64 %199
  %206 = bitcast i8** %205 to %struct.halide_buffer_t**
  %207 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %206, align 8, !tbaa !37
  %208 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %207, i64 0, i32 0
  %209 = load i64, i64* %208, align 8, !tbaa !22
  %210 = inttoptr i64 %209 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %211 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %210, i64 0, i32 0
  %212 = load i64, i64* %211, align 8, !tbaa !54
  %213 = icmp ne i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = add nsw i32 %200, %214
  br label %216

216:                                              ; preds = %204, %198
  %217 = phi i32 [ %200, %198 ], [ %215, %204 ]
  %218 = add nuw i64 %199, 1
  %219 = getelementptr inbounds i64, i64* %10, i64 %218
  %220 = load i64, i64* %219, align 8, !tbaa !55
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %198, !llvm.loop !97

222:                                              ; preds = %216
  %223 = icmp sgt i32 %217, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %222
  %225 = zext i32 %217 to i64
  %226 = shl nuw nsw i64 %225, 3
  %227 = call i8* @malloc(i64 %226) #7
  %228 = icmp eq i8* %227, null
  br i1 %228, label %521, label %229

229:                                              ; preds = %224
  %230 = bitcast i8* %227 to %struct._cl_mem**
  %231 = call i8* @memset(i8* nonnull %227, i32 0, i64 %226) #7
  br label %232

232:                                              ; preds = %178, %229, %222
  %233 = phi %struct._cl_mem** [ %230, %229 ], [ null, %222 ], [ null, %178 ]
  %234 = bitcast i32* %24 to i8*
  %235 = bitcast %struct._cl_mem** %25 to i8*
  %236 = bitcast %struct._cl_buffer_region* %26 to i8*
  %237 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i64 0, i32 0
  %238 = getelementptr inbounds %struct._cl_buffer_region, %struct._cl_buffer_region* %26, i64 0, i32 1
  %239 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27 to i8*
  %240 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 3
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 4
  %242 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 0
  %243 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 1
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %27, i64 0, i32 2
  %245 = bitcast %struct._cl_mem** %233 to i8*
  br label %246

246:                                              ; preds = %406, %232
  %247 = phi i32 [ 0, %232 ], [ %407, %406 ]
  %248 = phi i32 [ 0, %232 ], [ %353, %406 ]
  %249 = phi i32 [ undef, %232 ], [ %408, %406 ]
  %250 = sext i32 %247 to i64
  %251 = getelementptr inbounds i64, i64* %10, i64 %250
  %252 = load i64, i64* %251, align 8, !tbaa !55
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %409, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds i8*, i8** %11, i64 %250
  %256 = getelementptr inbounds i8, i8* %12, i64 %250
  %257 = load i8*, i8** %255, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %234) #9
  store i32 0, i32* %24, align 4, !tbaa !43
  %258 = load i8, i8* %256, align 1, !tbaa !36
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %348, label %260

260:                                              ; preds = %254
  %261 = icmp eq i64 %252, 8
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.167, i64 0, i64 0)) #7
  call void @abort() #7
  br label %263

263:                                              ; preds = %262, %260
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %235) #9
  %264 = bitcast i8* %257 to i64*
  %265 = load i64, i64* %264, align 8, !tbaa !22
  %266 = inttoptr i64 %265 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %267 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %266, i64 0, i32 1
  %268 = load %struct._cl_mem*, %struct._cl_mem** %267, align 8, !tbaa !52
  store %struct._cl_mem* %268, %struct._cl_mem** %25, align 8, !tbaa !37
  %269 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %266, i64 0, i32 0
  %270 = load i64, i64* %269, align 8, !tbaa !54
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %339, label %272

272:                                              ; preds = %263
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %236) #9
  store i64 %270, i64* %237, align 8, !tbaa !98
  %273 = getelementptr inbounds i8, i8* %257, i64 36
  %274 = bitcast i8* %273 to i32*
  %275 = load i32, i32* %274, align 4, !tbaa !24
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds i8, i8* %257, i64 33
  %279 = load i8, i8* %278, align 1, !tbaa !23
  br label %324

280:                                              ; preds = %272
  %281 = getelementptr inbounds i8, i8* %257, i64 40
  %282 = bitcast i8* %281 to %struct.halide_dimension_t**
  %283 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %282, align 8, !tbaa !25
  %284 = zext i32 %275 to i64
  br label %285

285:                                              ; preds = %299, %280
  %286 = phi i64 [ 0, %280 ], [ %301, %299 ]
  %287 = phi i64 [ 0, %280 ], [ %300, %299 ]
  %288 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %283, i64 %286, i32 2
  %289 = load i32, i32* %288, align 4, !tbaa !26
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %285
  %292 = zext i32 %289 to i64
  %293 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %283, i64 %286, i32 1
  %294 = load i32, i32* %293, align 4, !tbaa !31
  %295 = add nsw i32 %294, -1
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %296, %292
  %298 = add nsw i64 %297, %287
  br label %299

299:                                              ; preds = %291, %285
  %300 = phi i64 [ %298, %291 ], [ %287, %285 ]
  %301 = add nuw nsw i64 %286, 1
  %302 = icmp eq i64 %301, %284
  br i1 %302, label %303, label %285, !llvm.loop !91

303:                                              ; preds = %299
  %304 = getelementptr inbounds i8, i8* %257, i64 33
  %305 = load i8, i8* %304, align 1, !tbaa !23
  br label %306

306:                                              ; preds = %320, %303
  %307 = phi i64 [ 0, %303 ], [ %322, %320 ]
  %308 = phi i64 [ 0, %303 ], [ %321, %320 ]
  %309 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %283, i64 %307, i32 2
  %310 = load i32, i32* %309, align 4, !tbaa !26
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %306
  %313 = sext i32 %310 to i64
  %314 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %283, i64 %307, i32 1
  %315 = load i32, i32* %314, align 4, !tbaa !31
  %316 = add nsw i32 %315, -1
  %317 = sext i32 %316 to i64
  %318 = mul nsw i64 %317, %313
  %319 = add nsw i64 %318, %308
  br label %320

320:                                              ; preds = %312, %306
  %321 = phi i64 [ %319, %312 ], [ %308, %306 ]
  %322 = add nuw nsw i64 %307, 1
  %323 = icmp eq i64 %322, %284
  br i1 %323, label %324, label %306, !llvm.loop !92

324:                                              ; preds = %320, %277
  %325 = phi i8 [ %279, %277 ], [ %305, %320 ]
  %326 = phi i64 [ 0, %277 ], [ %300, %320 ]
  %327 = phi i64 [ 0, %277 ], [ %321, %320 ]
  %328 = zext i8 %325 to i64
  %329 = add nuw nsw i64 %328, 7
  %330 = lshr i64 %329, 3
  %331 = add nsw i64 %326, 1
  %332 = sub i64 %331, %327
  %333 = mul i64 %332, %330
  store i64 %333, i64* %238, align 8, !tbaa !100
  %334 = load %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)*, %struct._cl_mem* (%struct._cl_mem*, i64, i32, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL17clCreateSubBufferE, align 8, !tbaa !37
  %335 = call %struct._cl_mem* %334(%struct._cl_mem* %268, i64 1, i32 4640, i8* nonnull %236, i32* nonnull %24) #7
  store %struct._cl_mem* %335, %struct._cl_mem** %25, align 8, !tbaa !37
  %336 = add nsw i32 %248, 1
  %337 = sext i32 %248 to i64
  %338 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %233, i64 %337
  store %struct._cl_mem* %335, %struct._cl_mem** %338, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %236) #9
  br label %339

339:                                              ; preds = %324, %263
  %340 = phi i32 [ %336, %324 ], [ %248, %263 ]
  %341 = load i32, i32* %24, align 4, !tbaa !43
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %339
  %344 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 8, !tbaa !37
  %345 = call i32 %344(%struct._cl_kernel* %122, i32 %247, i64 8, i8* nonnull %235) #7
  store i32 %345, i32* %24, align 4, !tbaa !43
  br label %346

346:                                              ; preds = %343, %339
  %347 = phi i32 [ %345, %343 ], [ %341, %339 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235) #9
  br label %351

348:                                              ; preds = %254
  %349 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 8, !tbaa !37
  %350 = call i32 %349(%struct._cl_kernel* %122, i32 %247, i64 %252, i8* %257) #7
  store i32 %350, i32* %24, align 4, !tbaa !43
  br label %351

351:                                              ; preds = %348, %346
  %352 = phi i32 [ %350, %348 ], [ %347, %346 ]
  %353 = phi i32 [ %248, %348 ], [ %340, %346 ]
  %354 = icmp eq i32 %352, 0
  br i1 %354, label %404, label %355

355:                                              ; preds = %351
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %239) #9
  store i8* %0, i8** %240, align 8, !tbaa !44
  store i8 1, i8* %241, align 8, !tbaa !46
  %356 = call i8* @malloc(i64 1024) #7
  store i8* %356, i8** %242, align 8, !tbaa !47
  %357 = icmp eq i8* %356, null
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds i8, i8* %356, i64 1023
  store i8* %359, i8** %244, align 8, !tbaa !49
  store i8 0, i8* %359, align 1, !tbaa !36
  br label %361

360:                                              ; preds = %355
  store i8* null, i8** %244, align 8, !tbaa !49
  br label %361

361:                                              ; preds = %358, %360
  %362 = phi i8* [ %359, %358 ], [ null, %360 ]
  %363 = call i8* @halide_string_to_string(i8* %356, i8* %362, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.169, i64 0, i64 0)) #7
  store i8* %363, i8** %243, align 8, !tbaa !48
  %364 = load i32, i32* %24, align 4, !tbaa !43
  %365 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %364) #8
  %366 = icmp eq i8* %365, null
  %367 = load i8*, i8** %244, align 8, !tbaa !49
  br i1 %366, label %368, label %370

368:                                              ; preds = %361
  %369 = call i8* @halide_string_to_string(i8* %363, i8* %367, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %372

370:                                              ; preds = %361
  %371 = call i8* @halide_string_to_string(i8* %363, i8* %367, i8* nonnull %365) #7
  br label %372

372:                                              ; preds = %368, %370
  %373 = phi i8* [ %371, %370 ], [ %369, %368 ]
  %374 = load i8*, i8** %242, align 8, !tbaa !47
  %375 = icmp eq i8* %374, null
  %376 = load i8*, i8** %240, align 8, !tbaa !44
  br i1 %375, label %384, label %377

377:                                              ; preds = %372
  %378 = ptrtoint i8* %373 to i64
  %379 = ptrtoint i8* %374 to i64
  %380 = sub i64 1, %379
  %381 = add i64 %380, %378
  %382 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %376, i8* nonnull %374, i64 %381) #7
  %383 = load i8*, i8** %242, align 8, !tbaa !47
  br label %384

384:                                              ; preds = %372, %377
  %385 = phi i8* [ %383, %377 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %372 ]
  call void @halide_error(i8* %376, i8* %385) #7
  %386 = load i8, i8* %241, align 8, !tbaa !46, !range !41
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %384
  %389 = load i8*, i8** %242, align 8
  call void @free(i8* %389) #7
  br label %390

390:                                              ; preds = %384, %388
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %239) #9
  %391 = icmp sgt i32 %353, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %390
  %393 = zext i32 %353 to i64
  br label %396

394:                                              ; preds = %396, %390
  call void @free(i8* %245) #7
  %395 = load i32, i32* %24, align 4, !tbaa !43
  br label %406

396:                                              ; preds = %392, %396
  %397 = phi i64 [ 0, %392 ], [ %402, %396 ]
  %398 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 8, !tbaa !37
  %399 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %233, i64 %397
  %400 = load %struct._cl_mem*, %struct._cl_mem** %399, align 8, !tbaa !37
  %401 = call i32 %398(%struct._cl_mem* %400) #7
  %402 = add nuw nsw i64 %397, 1
  %403 = icmp eq i64 %402, %393
  br i1 %403, label %394, label %396, !llvm.loop !101

404:                                              ; preds = %351
  %405 = add nsw i32 %247, 1
  br label %406

406:                                              ; preds = %404, %394
  %407 = phi i32 [ %247, %394 ], [ %405, %404 ]
  %408 = phi i32 [ %395, %394 ], [ %249, %404 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %234) #9
  br i1 %354, label %246, label %521, !llvm.loop !102

409:                                              ; preds = %246
  %410 = load i32 (%struct._cl_kernel*, i32, i64, i8*)*, i32 (%struct._cl_kernel*, i32, i64, i8*)** @_ZN6Halide7Runtime8Internal6OpenCL14clSetKernelArgE, align 8, !tbaa !37
  %411 = icmp sgt i32 %9, 1
  %412 = select i1 %411, i32 %9, i32 1
  %413 = zext i32 %412 to i64
  %414 = call i32 %410(%struct._cl_kernel* %122, i32 %247, i64 %413, i8* null) #7
  store i32 %414, i32* %18, align 4, !tbaa !43
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %456, label %416

416:                                              ; preds = %409
  %417 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %417) #9
  %418 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 3
  store i8* %0, i8** %418, align 8, !tbaa !44
  %419 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 4
  store i8 1, i8* %419, align 8, !tbaa !46
  %420 = call i8* @malloc(i64 1024) #7
  %421 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 0
  store i8* %420, i8** %421, align 8, !tbaa !47
  %422 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %28, i64 0, i32 1
  store i8* %420, i8** %422, align 8, !tbaa !48
  %423 = icmp eq i8* %420, null
  br i1 %423, label %426, label %424

424:                                              ; preds = %416
  %425 = getelementptr inbounds i8, i8* %420, i64 1023
  store i8 0, i8* %425, align 1, !tbaa !36
  br label %426

426:                                              ; preds = %416, %424
  %427 = phi i8* [ %425, %424 ], [ null, %416 ]
  %428 = call i8* @halide_string_to_string(i8* %420, i8* %427, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.171, i64 0, i64 0)) #7
  %429 = load i32, i32* %18, align 4, !tbaa !43
  %430 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %429) #8
  %431 = icmp eq i8* %430, null
  br i1 %431, label %432, label %434

432:                                              ; preds = %426
  %433 = call i8* @halide_string_to_string(i8* %428, i8* %427, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %436

434:                                              ; preds = %426
  %435 = call i8* @halide_string_to_string(i8* %428, i8* %427, i8* nonnull %430) #7
  br label %436

436:                                              ; preds = %432, %434
  %437 = phi i8* [ %435, %434 ], [ %433, %432 ]
  %438 = load i8*, i8** %421, align 8, !tbaa !47
  %439 = icmp eq i8* %438, null
  %440 = load i8*, i8** %418, align 8, !tbaa !44
  br i1 %439, label %448, label %441

441:                                              ; preds = %436
  %442 = ptrtoint i8* %437 to i64
  %443 = ptrtoint i8* %438 to i64
  %444 = sub i64 1, %443
  %445 = add i64 %444, %442
  %446 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %440, i8* nonnull %438, i64 %445) #7
  %447 = load i8*, i8** %421, align 8, !tbaa !47
  br label %448

448:                                              ; preds = %436, %441
  %449 = phi i8* [ %447, %441 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %436 ]
  call void @halide_error(i8* %440, i8* %449) #7
  %450 = load i8, i8* %419, align 8, !tbaa !46, !range !41
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %448
  %453 = load i8*, i8** %421, align 8, !tbaa !47
  call void @free(i8* %453) #7
  br label %454

454:                                              ; preds = %448, %452
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %417) #9
  %455 = load i32, i32* %18, align 4, !tbaa !43
  br label %521

456:                                              ; preds = %409
  %457 = load i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL22clEnqueueNDRangeKernelE, align 8, !tbaa !37
  %458 = load %struct._cl_command_queue*, %struct._cl_command_queue** %34, align 8, !tbaa !71
  %459 = call i32 %457(%struct._cl_command_queue* %458, %struct._cl_kernel* %122, i32 3, i64* null, i64* nonnull %180, i64* nonnull %193, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  store i32 %459, i32* %18, align 4, !tbaa !43
  %460 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %459) #8
  %461 = icmp sgt i32 %248, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %456
  %463 = zext i32 %248 to i64
  br label %467

464:                                              ; preds = %467, %456
  call void @free(i8* %245) #7
  %465 = load i32, i32* %18, align 4, !tbaa !43
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %518, label %475

467:                                              ; preds = %462, %467
  %468 = phi i64 [ 0, %462 ], [ %473, %467 ]
  %469 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 8, !tbaa !37
  %470 = getelementptr inbounds %struct._cl_mem*, %struct._cl_mem** %233, i64 %468
  %471 = load %struct._cl_mem*, %struct._cl_mem** %470, align 8, !tbaa !37
  %472 = call i32 %469(%struct._cl_mem* %471) #7
  %473 = add nuw nsw i64 %468, 1
  %474 = icmp eq i64 %473, %463
  br i1 %474, label %464, label %467, !llvm.loop !103

475:                                              ; preds = %464
  %476 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %476) #9
  %477 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 3
  store i8* %0, i8** %477, align 8, !tbaa !44
  %478 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 4
  store i8 1, i8* %478, align 8, !tbaa !46
  %479 = call i8* @malloc(i64 1024) #7
  %480 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 0
  store i8* %479, i8** %480, align 8, !tbaa !47
  %481 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 1
  store i8* %479, i8** %481, align 8, !tbaa !48
  %482 = icmp eq i8* %479, null
  br i1 %482, label %485, label %483

483:                                              ; preds = %475
  %484 = getelementptr inbounds i8, i8* %479, i64 1023
  store i8 0, i8* %484, align 1, !tbaa !36
  br label %485

485:                                              ; preds = %475, %483
  %486 = phi i8* [ %484, %483 ], [ null, %475 ]
  %487 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 2
  store i8* %486, i8** %487, align 8
  %488 = call i8* @halide_string_to_string(i8* %479, i8* %486, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.173, i64 0, i64 0)) #7
  %489 = load i32, i32* %18, align 4, !tbaa !43
  %490 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %489) #8
  %491 = icmp eq i8* %490, null
  br i1 %491, label %492, label %494

492:                                              ; preds = %485
  %493 = call i8* @halide_string_to_string(i8* %488, i8* %486, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %496

494:                                              ; preds = %485
  %495 = call i8* @halide_string_to_string(i8* %488, i8* %486, i8* nonnull %490) #7
  br label %496

496:                                              ; preds = %492, %494
  %497 = phi i8* [ %495, %494 ], [ %493, %492 ]
  %498 = load i8*, i8** %487, align 8, !tbaa !49
  %499 = call i8* @halide_string_to_string(i8* %497, i8* %498, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  %500 = load i8*, i8** %480, align 8, !tbaa !47
  %501 = icmp eq i8* %500, null
  %502 = load i8*, i8** %477, align 8, !tbaa !44
  br i1 %501, label %510, label %503

503:                                              ; preds = %496
  %504 = ptrtoint i8* %499 to i64
  %505 = ptrtoint i8* %500 to i64
  %506 = add i64 %504, 1
  %507 = sub i64 %506, %505
  %508 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %502, i8* nonnull %500, i64 %507) #7
  %509 = load i8*, i8** %480, align 8, !tbaa !47
  br label %510

510:                                              ; preds = %496, %503
  %511 = phi i8* [ %509, %503 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %496 ]
  call void @halide_error(i8* %502, i8* %511) #7
  %512 = load i8, i8* %478, align 8, !tbaa !46, !range !41
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %516, label %514

514:                                              ; preds = %510
  %515 = load i8*, i8** %480, align 8, !tbaa !47
  call void @free(i8* %515) #7
  br label %516

516:                                              ; preds = %510, %514
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %476) #9
  %517 = load i32, i32* %18, align 4, !tbaa !43
  br label %521

518:                                              ; preds = %464
  %519 = load i32 (%struct._cl_kernel*)*, i32 (%struct._cl_kernel*)** @_ZN6Halide7Runtime8Internal6OpenCL15clReleaseKernelE, align 8, !tbaa !37
  %520 = call i32 %519(%struct._cl_kernel* %122) #7
  br label %521

521:                                              ; preds = %406, %224, %518, %516, %454
  %522 = phi i32 [ %455, %454 ], [ %517, %516 ], [ 0, %518 ], [ -11, %224 ], [ %408, %406 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %192) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %179) #9
  br label %523

523:                                              ; preds = %521, %176
  %524 = phi i32 [ %177, %176 ], [ %522, %521 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %120) #9
  br label %525

525:                                              ; preds = %59, %60, %523
  %526 = phi i32 [ %524, %523 ], [ %40, %60 ], [ -1, %59 ]
  %527 = load i8*, i8** %32, align 8, !tbaa !68
  %528 = call i32 @halide_release_cl_context(i8* %527) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #9
  ret i32 %526
}

declare i8* @memset(i8*, i32, i64) local_unnamed_addr #2

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
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.176, i64 0, i64 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %4, align 8, !tbaa !22
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
  store %struct._cl_mem* %14, %struct._cl_mem** %16, align 8, !tbaa !52
  %17 = bitcast i8* %11 to i64*
  store i64 0, i64* %17, align 8, !tbaa !54
  %18 = ptrtoint i8* %11 to i64
  store i64 %18, i64* %4, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, %struct.halide_device_interface_t** %19, align 8, !tbaa !73
  %20 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE, i64 0, i32 15), align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %20, i64 0, i32 0
  %22 = load void ()*, void ()** %21, align 8, !tbaa !94
  tail call void %22() #7
  br label %23

23:                                               ; preds = %13, %10, %7
  %24 = phi i32 [ -2, %7 ], [ 0, %13 ], [ -11, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_detach_cl_mem(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !73
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %10 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.177, i64 0, i64 0)) #7
  tail call void @abort() #7
  %13 = load i64, i64* %3, align 8, !tbaa !22
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i64 [ %4, %6 ], [ %13, %12 ]
  %16 = inttoptr i64 %15 to i8*
  tail call void @free(i8* %16) #7
  store i64 0, i64* %3, align 8, !tbaa !22
  %17 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %17, i64 0, i32 15
  %19 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %19, i64 0, i32 1
  %21 = load void ()*, void ()** %20, align 8, !tbaa !76
  tail call void %21() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %2, %14
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_opencl_get_cl_mem(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !73
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  %10 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.178, i64 0, i64 0)) #7
  tail call void @abort() #7
  %13 = load i64, i64* %3, align 8, !tbaa !22
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i64 [ %4, %6 ], [ %13, %12 ]
  %16 = inttoptr i64 %15 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %16, i64 0, i32 1
  %18 = load %struct._cl_mem*, %struct._cl_mem** %17, align 8, !tbaa !52
  %19 = ptrtoint %struct._cl_mem* %18 to i64
  br label %20

20:                                               ; preds = %2, %14
  %21 = phi i64 [ %19, %14 ], [ 0, %2 ]
  ret i64 %21
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_opencl_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !73
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.179, i64 0, i64 0)) #7
  tail call void @abort() #7
  %11 = load i64, i64* %3, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %14, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i64 [ %16, %12 ], [ 0, %2 ]
  ret i64 %18
}

; Function Attrs: nounwind
define weak i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #9
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 0
  store i8* %0, i8** %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %5, i64 0, i32 3
  store i32 0, i32* %10, align 8, !tbaa !72
  %11 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %12 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %14

14:                                               ; preds = %13, %4
  %15 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %8, %struct._cl_command_queue** nonnull %9, i1 zeroext true) #7
  store i32 %15, i32* %10, align 8, !tbaa !72
  %16 = load %struct._cl_context*, %struct._cl_context** %8, align 8, !tbaa !70
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
  %25 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023
  store i8 0, i8* %27, align 1, !tbaa !36
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %29 = ptrtoint i8* %28 to i64
  %30 = ptrtoint i8* %22 to i64
  %31 = sub i64 1, %30
  %32 = add i64 %31, %29
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #7
  call void @halide_error(i8* %0, i8* nonnull %22) #7
  br label %34

34:                                               ; preds = %24, %26
  call void @free(i8* %22) #7
  store i32 -1, i32* %10, align 8, !tbaa !72
  br label %77

35:                                               ; preds = %14
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  store %struct.halide_device_interface_t* %39, %struct.halide_device_interface_t** %40, align 8, !tbaa !73
  %41 = call i8* @malloc(i64 16) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = call i8* @malloc(i64 1024) #7
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i8* @halide_string_to_string(i8* %44, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %56

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %44, i64 1023
  store i8 0, i8* %49, align 1, !tbaa !36
  %50 = call i8* @halide_string_to_string(i8* nonnull %44, i8* nonnull %49, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i64 0, i64 0)) #7
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
  %58 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL17clRetainMemObjectE, align 8, !tbaa !37
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !22
  %61 = inttoptr i64 %60 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %61, i64 0, i32 1
  %63 = load %struct._cl_mem*, %struct._cl_mem** %62, align 8, !tbaa !52
  %64 = call i32 %58(%struct._cl_mem* %63) #7
  %65 = load i64, i64* %59, align 8, !tbaa !22
  %66 = inttoptr i64 %65 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 1
  %68 = load %struct._cl_mem*, %struct._cl_mem** %67, align 8, !tbaa !52
  %69 = getelementptr inbounds i8, i8* %41, i64 8
  %70 = bitcast i8* %69 to %struct._cl_mem**
  store %struct._cl_mem* %68, %struct._cl_mem** %70, align 8, !tbaa !52
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %66, i64 0, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !54
  %73 = add i64 %72, %2
  %74 = bitcast i8* %41 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !54
  %75 = ptrtoint i8* %41 to i64
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  store i64 %75, i64* %76, align 8, !tbaa !22
  br label %77

77:                                               ; preds = %34, %56, %57, %35
  %78 = phi i32 [ %15, %35 ], [ -11, %56 ], [ 0, %57 ], [ -1, %34 ]
  %79 = load i8*, i8** %7, align 8, !tbaa !68
  %80 = call i32 @halide_release_cl_context(i8* %79) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #9
  ret i32 %78
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %28, label %29, label %13, !llvm.loop !104

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #8
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opencl_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @opencl_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #8
  ret i32 %23
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = inttoptr i64 %5 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %6, i64 0, i32 1
  %8 = load %struct._cl_mem*, %struct._cl_mem** %7, align 8, !tbaa !52
  %9 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #9
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 0
  store i8* %0, i8** %10, align 8, !tbaa !68
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %12, align 8, !tbaa !71
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %13, align 8, !tbaa !72
  %14 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %15 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %17

17:                                               ; preds = %16, %2
  %18 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %11, %struct._cl_command_queue** nonnull %12, i1 zeroext true) #7
  store i32 %18, i32* %13, align 8, !tbaa !72
  %19 = load %struct._cl_context*, %struct._cl_context** %11, align 8, !tbaa !70
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
  %28 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, i8* %25, i64 1023
  store i8 0, i8* %30, align 1, !tbaa !36
  %31 = call i8* @halide_string_to_string(i8* nonnull %25, i8* nonnull %30, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %32 = ptrtoint i8* %31 to i64
  %33 = ptrtoint i8* %25 to i64
  %34 = sub i64 1, %33
  %35 = add i64 %34, %32
  %36 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %25, i64 %35) #7
  call void @halide_error(i8* %0, i8* nonnull %25) #7
  br label %37

37:                                               ; preds = %27, %29
  call void @free(i8* %25) #7
  store i32 -1, i32* %13, align 8, !tbaa !72
  br label %48

38:                                               ; preds = %17
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 0) #8
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.182, i64 0, i64 0)) #7
  call void @abort() #7
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32 (%struct._cl_mem*)*, i32 (%struct._cl_mem*)** @_ZN6Halide7Runtime8Internal6OpenCL18clReleaseMemObjectE, align 8, !tbaa !37
  %45 = call i32 %44(%struct._cl_mem* %8) #7
  %46 = load i64, i64* %4, align 8, !tbaa !22
  %47 = inttoptr i64 %46 to i8*
  call void @free(i8* %47) #7
  br label %48

48:                                               ; preds = %37, %43, %38
  %49 = phi i32 [ %18, %38 ], [ %45, %43 ], [ -1, %37 ]
  %50 = load i8*, i8** %10, align 8, !tbaa !68
  %51 = call i32 @halide_release_cl_context(i8* %50) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #9
  ret i32 %49
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_opencl_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL23opencl_device_interfaceE
}

; Function Attrs: nounwind mustprogress
define weak void @halide_opencl_cleanup() #0 {
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i8* null, i32 (%struct._cl_program*)** nonnull align 8 dereferenceable(8) @_ZN6Halide7Runtime8Internal6OpenCL16clReleaseProgramE) #8
  %1 = tail call i32 @halide_opencl_device_release(i8* null) #8
  ret void
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE11release_allIPFiS5_EEEvPvRT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i32 (%struct._cl_program*)** nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !89
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !81
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 8, !tbaa !82
  br label %15

15:                                               ; preds = %38, %12
  %16 = phi i32 [ %6, %12 ], [ %39, %38 ]
  %17 = phi i32 [ %10, %12 ], [ %40, %38 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %14, %12 ], [ %41, %38 ]
  %19 = phi i64 [ 0, %12 ], [ %42, %38 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !84
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !87
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32 (%struct._cl_program*)*, i32 (%struct._cl_program*)** %2, align 8, !tbaa !37
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %18, i64 %19, i32 1
  %30 = load %struct._cl_program*, %struct._cl_program** %29, align 8, !tbaa !88
  %31 = tail call i32 %28(%struct._cl_program* %30) #7
  %32 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %13, align 8, !tbaa !82
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i64 %19, i32 1
  store %struct._cl_program* null, %struct._cl_program** %33, align 8, !tbaa !88
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %32, i64 %19, i32 2
  store i32 1, i32* %34, align 8, !tbaa !84
  %35 = load i32, i32* %5, align 8, !tbaa !89
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 8, !tbaa !89
  %37 = load i32, i32* %9, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %27, %23, %15
  %39 = phi i32 [ %36, %27 ], [ %16, %23 ], [ %16, %15 ]
  %40 = phi i32 [ %37, %27 ], [ %17, %23 ], [ %17, %15 ]
  %41 = phi %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* [ %32, %27 ], [ %18, %23 ], [ %18, %15 ]
  %42 = add nuw nsw i64 %19, 1
  %43 = shl nuw i32 1, %40
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %15, label %46, !llvm.loop !90

46:                                               ; preds = %38
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3, %46
  %49 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %50 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !82
  tail call void @free(i8* %51) #7
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %49, align 8, !tbaa !82
  %52 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  store i32 0, i32* %52, align 8, !tbaa !81
  br label %53

53:                                               ; preds = %8, %48, %46
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
  store i8* %0, i8** %11, align 8, !tbaa !68
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %3, i64 0, i32 3
  store i32 0, i32* %14, align 8, !tbaa !72
  %15 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %16 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %12, %struct._cl_command_queue** nonnull %13, i1 zeroext true) #7
  store i32 %19, i32* %14, align 8, !tbaa !72
  %20 = load %struct._cl_context*, %struct._cl_context** %12, align 8, !tbaa !70
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
  %29 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023
  store i8 0, i8* %31, align 1, !tbaa !36
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %33 = ptrtoint i8* %32 to i64
  %34 = ptrtoint i8* %26 to i64
  %35 = sub i64 1, %34
  %36 = add i64 %35, %33
  %37 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #7
  call void @halide_error(i8* %0, i8* nonnull %26) #7
  br label %38

38:                                               ; preds = %28, %30
  call void @free(i8* %26) #7
  store i32 -1, i32* %14, align 8, !tbaa !72
  br label %325

39:                                               ; preds = %18
  %40 = icmp eq i32 %19, 0
  br i1 %40, label %41, label %325

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %43 = load i32, i32* %42, align 4, !tbaa !24
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %47 = load i8, i8* %46, align 1, !tbaa !23
  br label %91

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %50 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %49, align 8, !tbaa !25
  %51 = zext i32 %43 to i64
  br label %52

52:                                               ; preds = %66, %48
  %53 = phi i64 [ 0, %48 ], [ %68, %66 ]
  %54 = phi i64 [ 0, %48 ], [ %67, %66 ]
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %53, i32 2
  %56 = load i32, i32* %55, align 4, !tbaa !26
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %53, i32 1
  %61 = load i32, i32* %60, align 4, !tbaa !31
  %62 = add nsw i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %59
  %65 = add nsw i64 %64, %54
  br label %66

66:                                               ; preds = %58, %52
  %67 = phi i64 [ %65, %58 ], [ %54, %52 ]
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %51
  br i1 %69, label %70, label %52, !llvm.loop !91

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %72 = load i8, i8* %71, align 1, !tbaa !23
  br label %73

73:                                               ; preds = %87, %70
  %74 = phi i64 [ 0, %70 ], [ %89, %87 ]
  %75 = phi i64 [ 0, %70 ], [ %88, %87 ]
  %76 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %74, i32 2
  %77 = load i32, i32* %76, align 4, !tbaa !26
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i64 %74, i32 1
  %82 = load i32, i32* %81, align 4, !tbaa !31
  %83 = add nsw i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %80
  %86 = add nsw i64 %85, %75
  br label %87

87:                                               ; preds = %79, %73
  %88 = phi i64 [ %86, %79 ], [ %75, %73 ]
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %51
  br i1 %90, label %91, label %73, !llvm.loop !92

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
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.244, i64 0, i64 0)) #7
  call void @abort() #7
  br label %103

103:                                              ; preds = %102, %91
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %105 = load i64, i64* %104, align 8, !tbaa !22
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %42, align 4, !tbaa !24
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %118

112:                                              ; preds = %103
  %113 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #8
  br i1 %113, label %325, label %114

114:                                              ; preds = %112
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.245, i64 0, i64 0)) #7
  call void @abort() #7
  br label %325

115:                                              ; preds = %127, %107
  %116 = call i8* @malloc(i64 16) #7
  %117 = icmp eq i8* %116, null
  br i1 %117, label %325, label %132

118:                                              ; preds = %110, %127
  %119 = phi i32 [ %108, %110 ], [ %128, %127 ]
  %120 = phi i64 [ 0, %110 ], [ %129, %127 ]
  %121 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %111, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %121, i64 %120, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !26
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.246, i64 0, i64 0)) #7
  call void @abort() #7
  %126 = load i32, i32* %42, align 4, !tbaa !24
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi i32 [ %119, %118 ], [ %126, %125 ]
  %129 = add nuw nsw i64 %120, 1
  %130 = sext i32 %128 to i64
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %118, label %115, !llvm.loop !105

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
  store i32 65535, i32* %139, align 4, !tbaa !106
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
  store i8 0, i8* %155, align 1, !tbaa !36
  br label %156

156:                                              ; preds = %151, %154
  %157 = phi i8* [ %155, %154 ], [ null, %151 ]
  %158 = call i8* @halide_string_to_string(i8* %152, i8* %157, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.247, i64 0, i64 0)) #7
  %159 = call i8* @halide_type_to_string(i8* %158, i8* %157, %struct.halide_type_t* nonnull %7) #7
  br i1 %153, label %160, label %161

160:                                              ; preds = %156
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
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
  br label %323

168:                                              ; preds = %149, %146, %143, %147, %148, %150, %145, %144
  %169 = phi i32 [ 4315, %147 ], [ 4316, %148 ], [ 4318, %150 ], [ 4313, %145 ], [ 4312, %144 ], [ 4311, %143 ], [ 4314, %146 ], [ 4317, %149 ]
  store i32 %169, i32* %139, align 4, !tbaa !106
  %170 = getelementptr inbounds %struct._cl_image_format, %struct._cl_image_format* %4, i64 0, i32 0
  store i32 4272, i32* %170, align 4, !tbaa !108
  %171 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %172 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %171, align 8, !tbaa !25
  %173 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 2
  %174 = load i32, i32* %173, align 4, !tbaa !26
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %194

176:                                              ; preds = %168
  %177 = load i32, i32* %42, align 4, !tbaa !24
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %208

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 2
  %181 = load i32, i32* %180, align 4, !tbaa !26
  %182 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %183 = load i32, i32* %182, align 4, !tbaa !31
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = icmp sgt i32 %177, 2
  br i1 %186, label %187, label %211

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 2, i32 2
  %189 = load i32, i32* %188, align 4, !tbaa !26
  %190 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %191 = load i32, i32* %190, align 4, !tbaa !31
  %192 = mul nsw i32 %191, %181
  %193 = icmp eq i32 %189, %192
  br i1 %193, label %208, label %194

194:                                              ; preds = %187, %179, %168
  %195 = call i8* @malloc(i64 1024) #7
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i8* @halide_string_to_string(i8* %195, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.249, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %207

199:                                              ; preds = %194
  %200 = getelementptr inbounds i8, i8* %195, i64 1023
  store i8 0, i8* %200, align 1, !tbaa !36
  %201 = call i8* @halide_string_to_string(i8* nonnull %195, i8* nonnull %200, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.249, i64 0, i64 0)) #7
  %202 = ptrtoint i8* %201 to i64
  %203 = ptrtoint i8* %195 to i64
  %204 = add i64 %202, 1
  %205 = sub i64 %204, %203
  %206 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %195, i64 %205) #7
  call void @halide_error(i8* %0, i8* nonnull %195) #7
  br label %207

207:                                              ; preds = %199, %197
  call void @free(i8* %195) #7
  br label %323

208:                                              ; preds = %176, %187
  switch i32 %177, label %223 [
    i32 1, label %209
    i32 3, label %221
  ]

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4340, i32* %210, align 8, !tbaa !109
  br label %237

211:                                              ; preds = %185
  %212 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4337, i32* %212, align 8, !tbaa !109
  %213 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %214 = load i32, i32* %213, align 4, !tbaa !31
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 2
  store i64 %215, i64* %216, align 8, !tbaa !111
  %217 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %218 = load i32, i32* %217, align 4, !tbaa !31
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 %219, i64* %220, align 8, !tbaa !112
  br label %252

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 0
  store i32 4338, i32* %222, align 8, !tbaa !109
  br label %237

223:                                              ; preds = %208
  %224 = call i8* @malloc(i64 1024) #7
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i8* @halide_string_to_string(i8* %224, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.250, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %236

228:                                              ; preds = %223
  %229 = getelementptr inbounds i8, i8* %224, i64 1023
  store i8 0, i8* %229, align 1, !tbaa !36
  %230 = call i8* @halide_string_to_string(i8* nonnull %224, i8* nonnull %229, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.250, i64 0, i64 0)) #7
  %231 = ptrtoint i8* %230 to i64
  %232 = ptrtoint i8* %224 to i64
  %233 = add i64 %231, 1
  %234 = sub i64 %233, %232
  %235 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %224, i64 %234) #7
  call void @halide_error(i8* %0, i8* nonnull %224) #7
  br label %236

236:                                              ; preds = %228, %226
  call void @free(i8* %224) #7
  br label %323

237:                                              ; preds = %221, %209
  %238 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 0, i32 1
  %239 = load i32, i32* %238, align 4, !tbaa !31
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 2
  store i64 %240, i64* %241, align 8, !tbaa !111
  br i1 %178, label %242, label %250

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %244 = load i32, i32* %243, align 4, !tbaa !31
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 %245, i64* %246, align 8, !tbaa !112
  %247 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 1
  %248 = load i32, i32* %247, align 4, !tbaa !31
  %249 = sext i32 %248 to i64
  br label %252

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 3
  store i64 1, i64* %251, align 8, !tbaa !112
  br label %252

252:                                              ; preds = %250, %211, %242
  %253 = phi i64 [ %249, %242 ], [ 1, %250 ], [ 1, %211 ]
  %254 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 4
  store i64 %253, i64* %254, align 8, !tbaa !113
  %255 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 5
  store i64 1, i64* %255, align 8, !tbaa !114
  %256 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 6
  store i64 0, i64* %256, align 8, !tbaa !115
  %257 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 7
  store i64 0, i64* %257, align 8, !tbaa !116
  %258 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 8
  store i32 0, i32* %258, align 8, !tbaa !117
  %259 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 9
  store i32 0, i32* %259, align 4, !tbaa !118
  %260 = getelementptr inbounds %struct._cl_image_desc, %struct._cl_image_desc* %5, i64 0, i32 10
  store %struct._cl_mem* null, %struct._cl_mem** %260, align 8, !tbaa !119
  %261 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %261) #9
  %262 = load %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)*, %struct._cl_mem* (%struct._cl_context*, i64, %struct._cl_image_format*, %struct._cl_image_desc*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL13clCreateImageE, align 8, !tbaa !37
  %263 = load %struct._cl_context*, %struct._cl_context** %12, align 8, !tbaa !70
  %264 = call %struct._cl_mem* %262(%struct._cl_context* %263, i64 1, %struct._cl_image_format* nonnull %4, %struct._cl_image_desc* nonnull %5, i8* null, i32* nonnull %8) #7
  %265 = load i32, i32* %8, align 4, !tbaa !43
  %266 = icmp ne i32 %265, 0
  %267 = icmp eq %struct._cl_mem* %264, null
  %268 = or i1 %267, %266
  br i1 %268, label %269, label %310

269:                                              ; preds = %252
  %270 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %265) #8
  %271 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %271) #9
  %272 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3
  store i8* %0, i8** %272, align 8, !tbaa !44
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4
  store i8 1, i8* %273, align 8, !tbaa !46
  %274 = call i8* @malloc(i64 1024) #7
  %275 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0
  store i8* %274, i8** %275, align 8, !tbaa !47
  %276 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1
  store i8* %274, i8** %276, align 8, !tbaa !48
  %277 = icmp eq i8* %274, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %269
  %279 = getelementptr inbounds i8, i8* %274, i64 1023
  store i8 0, i8* %279, align 1, !tbaa !36
  br label %280

280:                                              ; preds = %269, %278
  %281 = phi i8* [ %279, %278 ], [ null, %269 ]
  %282 = call i8* @halide_string_to_string(i8* %274, i8* %281, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.253, i64 0, i64 0)) #7
  %283 = load i32, i32* %8, align 4, !tbaa !43
  %284 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %283) #8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = call i8* @halide_string_to_string(i8* %282, i8* %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %290

288:                                              ; preds = %280
  %289 = call i8* @halide_string_to_string(i8* %282, i8* %281, i8* nonnull %284) #7
  br label %290

290:                                              ; preds = %286, %288
  %291 = phi i8* [ %289, %288 ], [ %287, %286 ]
  %292 = load i8*, i8** %275, align 8, !tbaa !47
  %293 = icmp eq i8* %292, null
  %294 = load i8*, i8** %272, align 8, !tbaa !44
  br i1 %293, label %302, label %295

295:                                              ; preds = %290
  %296 = ptrtoint i8* %291 to i64
  %297 = ptrtoint i8* %292 to i64
  %298 = sub i64 1, %297
  %299 = add i64 %298, %296
  %300 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %294, i8* nonnull %292, i64 %299) #7
  %301 = load i8*, i8** %275, align 8, !tbaa !47
  br label %302

302:                                              ; preds = %290, %295
  %303 = phi i8* [ %301, %295 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %290 ]
  call void @halide_error(i8* %294, i8* %303) #7
  %304 = load i8, i8* %273, align 8, !tbaa !46, !range !41
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = load i8*, i8** %275, align 8, !tbaa !47
  call void @free(i8* %307) #7
  br label %308

308:                                              ; preds = %302, %306
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %271) #9
  call void @free(i8* nonnull %116) #7
  %309 = load i32, i32* %8, align 4, !tbaa !43
  br label %321

310:                                              ; preds = %252
  %311 = getelementptr inbounds i8, i8* %116, i64 8
  %312 = bitcast i8* %311 to %struct._cl_mem**
  store %struct._cl_mem* %264, %struct._cl_mem** %312, align 8, !tbaa !52
  %313 = bitcast i8* %116 to i64*
  store i64 0, i64* %313, align 8, !tbaa !54
  %314 = ptrtoint i8* %116 to i64
  store i64 %314, i64* %104, align 8, !tbaa !22
  %315 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, %struct.halide_device_interface_t** %315, align 8, !tbaa !73
  %316 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, i64 0, i32 15), align 8, !tbaa !74
  %317 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %316, i64 0, i32 0
  %318 = load void ()*, void ()** %317, align 8, !tbaa !94
  call void %318() #7
  %319 = call zeroext i1 @_ZN6Halide7Runtime8Internal6OpenCL23validate_device_pointerEPvP15halide_buffer_tm(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %100) #8
  br i1 %319, label %321, label %320

320:                                              ; preds = %310
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.254, i64 0, i64 0)) #7
  call void @abort() #7
  br label %321

321:                                              ; preds = %310, %320, %308
  %322 = phi i32 [ %309, %308 ], [ 0, %320 ], [ 0, %310 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %261) #9
  br label %323

323:                                              ; preds = %321, %236, %207, %167
  %324 = phi i32 [ -16, %167 ], [ -16, %207 ], [ %322, %321 ], [ -16, %236 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %135) #9
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %134) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #9
  br label %325

325:                                              ; preds = %38, %114, %112, %115, %323, %39
  %326 = phi i32 [ %19, %39 ], [ 0, %114 ], [ 0, %112 ], [ %324, %323 ], [ -6, %115 ], [ -1, %38 ]
  %327 = load i8*, i8** %11, align 8, !tbaa !68
  %328 = call i32 @halide_release_cl_context(i8* %327) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #9
  ret i32 %326
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_image_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::OpenCL::ClContext", align 8
  %7 = alloca [3 x i64], align 8
  %8 = alloca [3 x i64], align 8
  %9 = alloca [3 x i64], align 8
  %10 = alloca [3 x i64], align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %12 = icmp eq %struct.halide_device_interface_t* %2, null
  %13 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.256, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %18 = load i64, i64* %17, align 8, !tbaa !96
  %19 = and i64 %18, 2
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8, !tbaa !15
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !73
  %28 = icmp eq %struct.halide_device_interface_t* %27, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  br i1 %13, label %493, label %30

30:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.257, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %493

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %33 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %32, align 8, !tbaa !73
  %34 = icmp eq %struct.halide_device_interface_t* %33, @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
  br i1 %34, label %35, label %47

35:                                               ; preds = %25, %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !22
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = and i64 %18, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %44 = load i8*, i8** %43, align 8, !tbaa !15
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %42
  br label %47

47:                                               ; preds = %46, %31, %35, %42
  %48 = phi i1 [ true, %42 ], [ false, %46 ], [ true, %35 ], [ true, %31 ]
  br i1 %12, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.259, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %54

54:                                               ; preds = %53, %49, %47
  %55 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %55) #9
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %48, %struct.halide_buffer_t* %3, i1 zeroext %12) #8
  %56 = bitcast %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %56) #9
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 0
  store i8* %0, i8** %57, align 8, !tbaa !68
  %58 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 1
  store %struct._cl_context* null, %struct._cl_context** %58, align 8, !tbaa !70
  %59 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 2
  store %struct._cl_command_queue* null, %struct._cl_command_queue** %59, align 8, !tbaa !71
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::OpenCL::ClContext", %"class.Halide::Runtime::Internal::OpenCL::ClContext"* %6, i64 0, i32 3
  store i32 0, i32* %60, align 8, !tbaa !72
  %61 = load %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)*, %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)** @_ZN6Halide7Runtime8Internal6OpenCL15clCreateContextE, align 8, !tbaa !37
  %62 = icmp eq %struct._cl_context* (i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*)* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  call void @_ZN6Halide7Runtime8Internal6OpenCL14load_libopenclEPv(i8* %0) #7
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32 @halide_acquire_cl_context(i8* %0, %struct._cl_context** nonnull %58, %struct._cl_command_queue** nonnull %59, i1 zeroext true) #7
  store i32 %65, i32* %60, align 8, !tbaa !72
  %66 = load %struct._cl_context*, %struct._cl_context** %58, align 8, !tbaa !70
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
  %75 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %77, align 1, !tbaa !36
  %78 = call i8* @halide_string_to_string(i8* nonnull %72, i8* nonnull %77, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.272, i64 0, i64 0)) #7
  %79 = ptrtoint i8* %78 to i64
  %80 = ptrtoint i8* %72 to i64
  %81 = sub i64 1, %80
  %82 = add i64 %81, %79
  %83 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %82) #7
  call void @halide_error(i8* %0, i8* nonnull %72) #7
  br label %84

84:                                               ; preds = %74, %76
  call void @free(i8* %72) #7
  store i32 -1, i32* %60, align 8, !tbaa !72
  br label %489

85:                                               ; preds = %64
  %86 = icmp eq i32 %65, 0
  br i1 %86, label %87, label %489

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %91 = load i32, i32* %90, align 4, !tbaa !24
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %95 = load i8, i8* %94, align 1, !tbaa !23
  br label %139

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %98 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %97, align 8, !tbaa !25
  %99 = zext i32 %91 to i64
  br label %100

100:                                              ; preds = %114, %96
  %101 = phi i64 [ 0, %96 ], [ %116, %114 ]
  %102 = phi i64 [ 0, %96 ], [ %115, %114 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !26
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = zext i32 %104 to i64
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %101, i32 1
  %109 = load i32, i32* %108, align 4, !tbaa !31
  %110 = add nsw i32 %109, -1
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %107
  %113 = add nsw i64 %112, %102
  br label %114

114:                                              ; preds = %106, %100
  %115 = phi i64 [ %113, %106 ], [ %102, %100 ]
  %116 = add nuw nsw i64 %101, 1
  %117 = icmp eq i64 %116, %99
  br i1 %117, label %118, label %100, !llvm.loop !91

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %120 = load i8, i8* %119, align 1, !tbaa !23
  br label %121

121:                                              ; preds = %135, %118
  %122 = phi i64 [ 0, %118 ], [ %137, %135 ]
  %123 = phi i64 [ 0, %118 ], [ %136, %135 ]
  %124 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %122, i32 2
  %125 = load i32, i32* %124, align 4, !tbaa !26
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = sext i32 %125 to i64
  %129 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %98, i64 %122, i32 1
  %130 = load i32, i32* %129, align 4, !tbaa !31
  %131 = add nsw i32 %130, -1
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %128
  %134 = add nsw i64 %133, %123
  br label %135

135:                                              ; preds = %127, %121
  %136 = phi i64 [ %134, %127 ], [ %123, %121 ]
  %137 = add nuw nsw i64 %122, 1
  %138 = icmp eq i64 %137, %99
  br i1 %138, label %139, label %121, !llvm.loop !92

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
  %150 = load i32, i32* %149, align 4, !tbaa !24
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %154 = load i8, i8* %153, align 1, !tbaa !23
  br label %198

155:                                              ; preds = %139
  %156 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %157 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %156, align 8, !tbaa !25
  %158 = zext i32 %150 to i64
  br label %159

159:                                              ; preds = %173, %155
  %160 = phi i64 [ 0, %155 ], [ %175, %173 ]
  %161 = phi i64 [ 0, %155 ], [ %174, %173 ]
  %162 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 2
  %163 = load i32, i32* %162, align 4, !tbaa !26
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = zext i32 %163 to i64
  %167 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 1
  %168 = load i32, i32* %167, align 4, !tbaa !31
  %169 = add nsw i32 %168, -1
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %166
  %172 = add nsw i64 %171, %161
  br label %173

173:                                              ; preds = %165, %159
  %174 = phi i64 [ %172, %165 ], [ %161, %159 ]
  %175 = add nuw nsw i64 %160, 1
  %176 = icmp eq i64 %175, %158
  br i1 %176, label %177, label %159, !llvm.loop !91

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %179 = load i8, i8* %178, align 1, !tbaa !23
  br label %180

180:                                              ; preds = %194, %177
  %181 = phi i64 [ 0, %177 ], [ %196, %194 ]
  %182 = phi i64 [ 0, %177 ], [ %195, %194 ]
  %183 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 2
  %184 = load i32, i32* %183, align 4, !tbaa !26
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 1
  %189 = load i32, i32* %188, align 4, !tbaa !31
  %190 = add nsw i32 %189, -1
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %187
  %193 = add nsw i64 %192, %182
  br label %194

194:                                              ; preds = %186, %180
  %195 = phi i64 [ %193, %186 ], [ %182, %180 ]
  %196 = add nuw nsw i64 %181, 1
  %197 = icmp eq i64 %196, %158
  br i1 %197, label %198, label %180, !llvm.loop !92

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
  %211 = load i64, i64* %210, align 8, !tbaa !12
  br i1 %92, label %212, label %252

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %214 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %213, align 8, !tbaa !25
  %215 = zext i32 %91 to i64
  br label %216

216:                                              ; preds = %230, %212
  %217 = phi i64 [ 0, %212 ], [ %232, %230 ]
  %218 = phi i64 [ 0, %212 ], [ %231, %230 ]
  %219 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %217, i32 2
  %220 = load i32, i32* %219, align 4, !tbaa !26
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = zext i32 %220 to i64
  %224 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %217, i32 1
  %225 = load i32, i32* %224, align 4, !tbaa !31
  %226 = add nsw i32 %225, -1
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %227, %223
  %229 = add nsw i64 %228, %218
  br label %230

230:                                              ; preds = %222, %216
  %231 = phi i64 [ %229, %222 ], [ %218, %216 ]
  %232 = add nuw nsw i64 %217, 1
  %233 = icmp eq i64 %232, %215
  br i1 %233, label %234, label %216, !llvm.loop !91

234:                                              ; preds = %230, %248
  %235 = phi i64 [ %250, %248 ], [ 0, %230 ]
  %236 = phi i64 [ %249, %248 ], [ 0, %230 ]
  %237 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %235, i32 2
  %238 = load i32, i32* %237, align 4, !tbaa !26
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = sext i32 %238 to i64
  %242 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %214, i64 %235, i32 1
  %243 = load i32, i32* %242, align 4, !tbaa !31
  %244 = add nsw i32 %243, -1
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, %241
  %247 = add nsw i64 %246, %236
  br label %248

248:                                              ; preds = %240, %234
  %249 = phi i64 [ %247, %240 ], [ %236, %234 ]
  %250 = add nuw nsw i64 %235, 1
  %251 = icmp eq i64 %250, %215
  br i1 %251, label %252, label %234, !llvm.loop !92

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
  %263 = call i8* @halide_string_to_string(i8* %260, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.260, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %272

264:                                              ; preds = %259
  %265 = getelementptr inbounds i8, i8* %260, i64 1023
  store i8 0, i8* %265, align 1, !tbaa !36
  %266 = call i8* @halide_string_to_string(i8* nonnull %260, i8* nonnull %265, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.260, i64 0, i64 0)) #7
  %267 = ptrtoint i8* %266 to i64
  %268 = ptrtoint i8* %260 to i64
  %269 = add i64 %267, 1
  %270 = sub i64 %269, %268
  %271 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %260, i64 %270) #7
  call void @halide_error(i8* %0, i8* nonnull %260) #7
  br label %272

272:                                              ; preds = %264, %262
  call void @free(i8* %260) #7
  br label %489

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
  %281 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %280, align 8, !tbaa !25
  %282 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 0, i32 1
  %283 = load i32, i32* %282, align 4, !tbaa !31
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %279, align 8, !tbaa !55
  %285 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %286 = icmp sgt i32 %150, 1
  br i1 %286, label %287, label %293

287:                                              ; preds = %276
  %288 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 1
  %289 = load i32, i32* %288, align 4, !tbaa !31
  %290 = sext i32 %289 to i64
  store i64 %290, i64* %285, align 8, !tbaa !55
  %291 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %292 = icmp eq i32 %150, 2
  br i1 %292, label %295, label %299

293:                                              ; preds = %276
  store i64 1, i64* %285, align 8, !tbaa !55
  %294 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 1, i64* %294, align 8, !tbaa !55
  br label %339

295:                                              ; preds = %287
  store i64 1, i64* %291, align 8, !tbaa !55
  %296 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 2
  %297 = load i32, i32* %296, align 4, !tbaa !26
  %298 = icmp eq i32 %297, %283
  br i1 %298, label %339, label %306

299:                                              ; preds = %287
  %300 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 2, i32 1
  %301 = load i32, i32* %300, align 4, !tbaa !31
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %291, align 8, !tbaa !55
  %303 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 1, i32 2
  %304 = load i32, i32* %303, align 4, !tbaa !26
  %305 = icmp eq i32 %304, %283
  br i1 %305, label %319, label %306

306:                                              ; preds = %299, %295
  %307 = call i8* @malloc(i64 1024) #7
  %308 = icmp eq i8* %307, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = call i8* @halide_string_to_string(i8* %307, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %337

311:                                              ; preds = %306
  %312 = getelementptr inbounds i8, i8* %307, i64 1023
  store i8 0, i8* %312, align 1, !tbaa !36
  %313 = call i8* @halide_string_to_string(i8* nonnull %307, i8* nonnull %312, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  %314 = ptrtoint i8* %313 to i64
  %315 = ptrtoint i8* %307 to i64
  %316 = add i64 %314, 1
  %317 = sub i64 %316, %315
  %318 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %307, i64 %317) #7
  call void @halide_error(i8* %0, i8* nonnull %307) #7
  br label %337

319:                                              ; preds = %299
  %320 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %281, i64 2, i32 2
  %321 = load i32, i32* %320, align 4, !tbaa !26
  %322 = mul nsw i32 %289, %283
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %339, label %324

324:                                              ; preds = %319
  %325 = call i8* @malloc(i64 1024) #7
  %326 = icmp eq i8* %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = call i8* @halide_string_to_string(i8* %325, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %337

329:                                              ; preds = %324
  %330 = getelementptr inbounds i8, i8* %325, i64 1023
  store i8 0, i8* %330, align 1, !tbaa !36
  %331 = call i8* @halide_string_to_string(i8* nonnull %325, i8* nonnull %330, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
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
  br label %489

339:                                              ; preds = %295, %293, %319
  %340 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL18clEnqueueReadImageE, align 8, !tbaa !37
  %341 = load i64, i64* %88, align 8, !tbaa !9
  %342 = inttoptr i64 %341 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %342, i64 0, i32 1
  %344 = load %struct._cl_mem*, %struct._cl_mem** %343, align 8, !tbaa !52
  %345 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %346 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %347 = load i8*, i8** %346, align 8, !tbaa !15
  %348 = call i32 %340(%struct._cl_command_queue* %68, %struct._cl_mem* %344, i32 0, i64* nonnull %345, i64* nonnull %279, i64 0, i64 0, i8* %347, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
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
  %357 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %356, align 8, !tbaa !25
  %358 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 0, i32 1
  %359 = load i32, i32* %358, align 4, !tbaa !31
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %355, align 8, !tbaa !55
  %361 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %362 = icmp sgt i32 %91, 1
  br i1 %362, label %363, label %369

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 1
  %365 = load i32, i32* %364, align 4, !tbaa !31
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %361, align 8, !tbaa !55
  %367 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %368 = icmp eq i32 %91, 2
  br i1 %368, label %371, label %375

369:                                              ; preds = %352
  store i64 1, i64* %361, align 8, !tbaa !55
  %370 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 1, i64* %370, align 8, !tbaa !55
  br label %415

371:                                              ; preds = %363
  store i64 1, i64* %367, align 8, !tbaa !55
  %372 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 2
  %373 = load i32, i32* %372, align 4, !tbaa !26
  %374 = icmp eq i32 %373, %359
  br i1 %374, label %415, label %382

375:                                              ; preds = %363
  %376 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 2, i32 1
  %377 = load i32, i32* %376, align 4, !tbaa !31
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %367, align 8, !tbaa !55
  %379 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 1, i32 2
  %380 = load i32, i32* %379, align 4, !tbaa !26
  %381 = icmp eq i32 %380, %359
  br i1 %381, label %395, label %382

382:                                              ; preds = %375, %371
  %383 = call i8* @malloc(i64 1024) #7
  %384 = icmp eq i8* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = call i8* @halide_string_to_string(i8* %383, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %413

387:                                              ; preds = %382
  %388 = getelementptr inbounds i8, i8* %383, i64 1023
  store i8 0, i8* %388, align 1, !tbaa !36
  %389 = call i8* @halide_string_to_string(i8* nonnull %383, i8* nonnull %388, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  %390 = ptrtoint i8* %389 to i64
  %391 = ptrtoint i8* %383 to i64
  %392 = add i64 %390, 1
  %393 = sub i64 %392, %391
  %394 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %383, i64 %393) #7
  call void @halide_error(i8* %0, i8* nonnull %383) #7
  br label %413

395:                                              ; preds = %375
  %396 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %357, i64 2, i32 2
  %397 = load i32, i32* %396, align 4, !tbaa !26
  %398 = mul nsw i32 %365, %359
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %415, label %400

400:                                              ; preds = %395
  %401 = call i8* @malloc(i64 1024) #7
  %402 = icmp eq i8* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = call i8* @halide_string_to_string(i8* %401, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %413

405:                                              ; preds = %400
  %406 = getelementptr inbounds i8, i8* %401, i64 1023
  store i8 0, i8* %406, align 1, !tbaa !36
  %407 = call i8* @halide_string_to_string(i8* nonnull %401, i8* nonnull %406, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.261, i64 0, i64 0)) #7
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
  br label %489

415:                                              ; preds = %371, %369, %395
  %416 = load i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)*, i32 (%struct._cl_command_queue*, %struct._cl_mem*, i32, i64*, i64*, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**)** @_ZN6Halide7Runtime8Internal6OpenCL19clEnqueueWriteImageE, align 8, !tbaa !37
  %417 = load i64, i64* %89, align 8, !tbaa !11
  %418 = inttoptr i64 %417 to %"struct.Halide::Runtime::Internal::OpenCL::device_handle"*
  %419 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenCL::device_handle", %"struct.Halide::Runtime::Internal::OpenCL::device_handle"* %418, i64 0, i32 1
  %420 = load %struct._cl_mem*, %struct._cl_mem** %419, align 8, !tbaa !52
  %421 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %422 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %423 = load i8*, i8** %422, align 8, !tbaa !15
  %424 = call i32 %416(%struct._cl_command_queue* %68, %struct._cl_mem* %420, i32 0, i64* nonnull %421, i64* nonnull %355, i64 0, i64 0, i8* %423, i32 0, %struct._cl_event** null, %struct._cl_event** null) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %354) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %353) #9
  br label %441

425:                                              ; preds = %349
  %426 = or i1 %12, %48
  br i1 %426, label %485, label %427

427:                                              ; preds = %425
  %428 = call i8* @malloc(i64 1024) #7
  %429 = icmp eq i8* %428, null
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = call i8* @halide_string_to_string(i8* %428, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.262, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %440

432:                                              ; preds = %427
  %433 = getelementptr inbounds i8, i8* %428, i64 1023
  store i8 0, i8* %433, align 1, !tbaa !36
  %434 = call i8* @halide_string_to_string(i8* nonnull %428, i8* nonnull %433, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.262, i64 0, i64 0)) #7
  %435 = ptrtoint i8* %434 to i64
  %436 = ptrtoint i8* %428 to i64
  %437 = add i64 %435, 1
  %438 = sub i64 %437, %436
  %439 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %428, i64 %438) #7
  call void @halide_error(i8* %0, i8* nonnull %428) #7
  br label %440

440:                                              ; preds = %432, %430
  call void @free(i8* %428) #7
  br label %489

441:                                              ; preds = %415, %339
  %442 = phi i32 [ %424, %415 ], [ %348, %339 ]
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %441
  %445 = load %struct._cl_command_queue*, %struct._cl_command_queue** %59, align 8, !tbaa !71
  br label %485

446:                                              ; preds = %441
  %447 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %442) #8
  %448 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %448) #9
  %449 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* %0, i8** %449, align 8, !tbaa !44
  %450 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %450, align 8, !tbaa !46
  %451 = call i8* @malloc(i64 1024) #7
  %452 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %451, i8** %452, align 8, !tbaa !47
  %453 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  store i8* %451, i8** %453, align 8, !tbaa !48
  %454 = icmp eq i8* %451, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %446
  %456 = getelementptr inbounds i8, i8* %451, i64 1023
  store i8 0, i8* %456, align 1, !tbaa !36
  br label %457

457:                                              ; preds = %446, %455
  %458 = phi i8* [ %456, %455 ], [ null, %446 ]
  %459 = call i8* @halide_string_to_string(i8* %451, i8* %458, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.263, i64 0, i64 0)) #7
  %460 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %442) #8
  %461 = icmp eq i8* %460, null
  br i1 %461, label %462, label %464

462:                                              ; preds = %457
  %463 = call i8* @halide_string_to_string(i8* %459, i8* %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %466

464:                                              ; preds = %457
  %465 = call i8* @halide_string_to_string(i8* %459, i8* %458, i8* nonnull %460) #7
  br label %466

466:                                              ; preds = %462, %464
  %467 = phi i8* [ %465, %464 ], [ %463, %462 ]
  %468 = load i8*, i8** %452, align 8, !tbaa !47
  %469 = icmp eq i8* %468, null
  %470 = load i8*, i8** %449, align 8, !tbaa !44
  br i1 %469, label %478, label %471

471:                                              ; preds = %466
  %472 = ptrtoint i8* %467 to i64
  %473 = ptrtoint i8* %468 to i64
  %474 = sub i64 1, %473
  %475 = add i64 %474, %472
  %476 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %470, i8* nonnull %468, i64 %475) #7
  %477 = load i8*, i8** %452, align 8, !tbaa !47
  br label %478

478:                                              ; preds = %466, %471
  %479 = phi i8* [ %477, %471 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %466 ]
  call void @halide_error(i8* %470, i8* %479) #7
  %480 = load i8, i8* %450, align 8, !tbaa !46, !range !41
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %478
  %483 = load i8*, i8** %452, align 8, !tbaa !47
  call void @free(i8* %483) #7
  br label %484

484:                                              ; preds = %478, %482
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %448) #9
  br label %489

485:                                              ; preds = %444, %425
  %486 = phi %struct._cl_command_queue* [ %445, %444 ], [ %68, %425 ]
  %487 = load i32 (%struct._cl_command_queue*)*, i32 (%struct._cl_command_queue*)** @_ZN6Halide7Runtime8Internal6OpenCL8clFinishE, align 8, !tbaa !37
  %488 = call i32 %487(%struct._cl_command_queue* %486) #7
  br label %489

489:                                              ; preds = %413, %337, %84, %85, %485, %484, %440, %272
  %490 = phi i32 [ 0, %485 ], [ %442, %484 ], [ -39, %440 ], [ -39, %272 ], [ %65, %85 ], [ -1, %84 ], [ -39, %337 ], [ -39, %413 ]
  %491 = load i8*, i8** %57, align 8, !tbaa !68
  %492 = call i32 @halide_release_cl_context(i8* %491) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %56) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %55) #9
  br label %493

493:                                              ; preds = %30, %29, %489
  %494 = phi i32 [ %490, %489 ], [ -42, %29 ], [ -42, %30 ]
  ret i32 %494
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
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.264, i64 0, i64 0)) #7
  tail call void @abort() #7
  %10 = load i64, i64* %6, align 8, !tbaa !22
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %3, %9
  %13 = tail call i8* @malloc(i64 16) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %12
  %16 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9
  store i32 0, i32* %4, align 4, !tbaa !43
  %17 = load i32 (%struct._cl_mem*, i32, i64, i8*, i64*)*, i32 (%struct._cl_mem*, i32, i64, i8*, i64*)** @_ZN6Halide7Runtime8Internal6OpenCL18clGetMemObjectInfoE, align 8, !tbaa !37
  %18 = inttoptr i64 %2 to %struct._cl_mem*
  %19 = call i32 %17(%struct._cl_mem* %18, i32 4352, i64 4, i8* nonnull %16, i64* null) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4, !tbaa !43
  switch i32 %22, label %23 [
    i32 4340, label %70
    i32 4338, label %70
    i32 4337, label %70
  ]

23:                                               ; preds = %21, %15
  %24 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #9
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* %0, i8** %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %26, align 8, !tbaa !46
  %27 = call i8* @malloc(i64 1024) #7
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %27, i8** %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %30 = icmp eq i8* %27, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, i8* %27, i64 1023
  store i8 0, i8* %32, align 1, !tbaa !36
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi i8* [ %32, %31 ], [ null, %23 ]
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = call i8* @halide_string_to_string(i8* %27, i8* %34, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.265, i64 0, i64 0)) #7
  %37 = inttoptr i64 %2 to i8*
  %38 = call i8* @halide_pointer_to_string(i8* %36, i8* %34, i8* %37) #7
  %39 = call i8* @halide_string_to_string(i8* %38, i8* %34, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0)) #7
  store i8* %39, i8** %29, align 8, !tbaa !48
  %40 = call i8* @_ZN6Halide7Runtime8Internal6OpenCL21get_opencl_error_nameEi(i32 %19) #8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i8* @halide_string_to_string(i8* %39, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i64 0, i64 0)) #7
  br label %46

44:                                               ; preds = %33
  %45 = call i8* @halide_string_to_string(i8* %39, i8* %34, i8* nonnull %40) #7
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi i8* [ %45, %44 ], [ %43, %42 ]
  %48 = load i8*, i8** %35, align 8, !tbaa !49
  %49 = call i8* @halide_string_to_string(i8* %47, i8* %48, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.266, i64 0, i64 0)) #7
  %50 = load i32, i32* %4, align 4, !tbaa !43
  %51 = sext i32 %50 to i64
  %52 = call i8* @halide_int64_to_string(i8* %49, i8* %48, i64 %51, i32 1) #7
  %53 = load i8*, i8** %28, align 8, !tbaa !47
  %54 = icmp eq i8* %53, null
  %55 = load i8*, i8** %25, align 8, !tbaa !44
  br i1 %54, label %63, label %56

56:                                               ; preds = %46
  %57 = ptrtoint i8* %52 to i64
  %58 = ptrtoint i8* %53 to i64
  %59 = add i64 %57, 1
  %60 = sub i64 %59, %58
  %61 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %55, i8* nonnull %53, i64 %60) #7
  %62 = load i8*, i8** %28, align 8, !tbaa !47
  br label %63

63:                                               ; preds = %46, %56
  %64 = phi i8* [ %62, %56 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0), %46 ]
  call void @halide_error(i8* %55, i8* %64) #7
  %65 = load i8, i8* %26, align 8, !tbaa !46, !range !41
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %28, align 8, !tbaa !47
  call void @free(i8* %68) #7
  br label %69

69:                                               ; preds = %63, %67
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #9
  br label %79

70:                                               ; preds = %21, %21, %21
  %71 = getelementptr inbounds i8, i8* %13, i64 8
  %72 = bitcast i8* %71 to %struct._cl_mem**
  store %struct._cl_mem* %18, %struct._cl_mem** %72, align 8, !tbaa !52
  %73 = bitcast i8* %13 to i64*
  store i64 0, i64* %73, align 8, !tbaa !54
  %74 = ptrtoint i8* %13 to i64
  store i64 %74, i64* %6, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, %struct.halide_device_interface_t** %75, align 8, !tbaa !73
  %76 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE, i64 0, i32 15), align 8, !tbaa !74
  %77 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %76, i64 0, i32 0
  %78 = load void ()*, void ()** %77, align 8, !tbaa !94
  call void %78() #7
  br label %79

79:                                               ; preds = %70, %69
  %80 = phi i32 [ -32, %69 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %81

81:                                               ; preds = %79, %12, %9
  %82 = phi i32 [ -2, %9 ], [ %80, %79 ], [ -11, %12 ]
  ret i32 %82
}

; Function Attrs: nounwind
define weak i32 @halide_opencl_image_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !25
  %12 = sext i32 %5 to i64
  br label %15

13:                                               ; preds = %34
  %14 = icmp slt i64 %40, %12
  br i1 %14, label %15, label %55, !llvm.loop !120

15:                                               ; preds = %7, %13
  %16 = phi i64 [ 0, %7 ], [ %40, %13 ]
  %17 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !28
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 0
  %20 = load i32, i32* %19, align 4, !tbaa !28
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 1
  %24 = load i32, i32* %23, align 4, !tbaa !31
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !31
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 2
  %30 = load i32, i32* %29, align 4, !tbaa !26
  %31 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !26
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %16, i32 3
  %36 = load i32, i32* %35, align 4, !tbaa !121
  %37 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %16, i32 3
  %38 = load i32, i32* %37, align 4, !tbaa !121
  %39 = icmp eq i32 %36, %38
  %40 = add nuw nsw i64 %16, 1
  br i1 %39, label %13, label %41

41:                                               ; preds = %15, %22, %28, %34
  %42 = tail call i8* @malloc(i64 1024) #7
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call i8* @halide_string_to_string(i8* %42, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, i8* %42, i64 1023
  store i8 0, i8* %47, align 1, !tbaa !36
  %48 = tail call i8* @halide_string_to_string(i8* nonnull %42, i8* nonnull %47, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i64 0, i64 0)) #7
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
define weak i32 @halide_opencl_image_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  %6 = tail call i8* @malloc(i64 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.268, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.268, i64 0, i64 0)) #7
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
define weak i32 @halide_opencl_image_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i64 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.274, i64 0, i64 0)) #7
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i64 0, i64 0)) #7
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
define weak %struct.halide_device_interface_t* @halide_opencl_image_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal6OpenCL29opencl_image_device_interfaceE
}

declare i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #2

declare i8* @getenv(i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #8
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !81
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !89
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #8
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !89
  %25 = load i32, i32* %3, align 8, !tbaa !81
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !89
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i64 0, i32 0
  %33 = load %struct._cl_context*, %struct._cl_context** %32, align 8, !tbaa !86
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !84
  %36 = ptrtoint %struct._cl_context* %33 to i64
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
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %47, align 8, !tbaa !82
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !122

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !84
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !123
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.279, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !81
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
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %15, align 8, !tbaa !82
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !82
  store i32 %1, i32* %3, align 8, !tbaa !81
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !89
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
  %30 = load i32, i32* %29, align 8, !tbaa !84
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %16, i64 %28
  %34 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE6insertERKNS6_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #8
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.280, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !124

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #7
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_opencl.cpp() #6 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE to i8*), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !81
  store %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<_cl_context *, _cl_program *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !82
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !89
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, i64 0, i32 4), align 4, !tbaa !78
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal6OpenCL17compilation_cacheE, align 4
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
!39 = !{!40, !40, i64 0}
!40 = !{!"bool", !5, i64 0}
!41 = !{i8 0, i8 2}
!42 = distinct !{!42, !8}
!43 = !{!21, !21, i64 0}
!44 = !{!45, !17, i64 24}
!45 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !40, i64 32, !5, i64 33}
!46 = !{!45, !40, i64 32}
!47 = !{!45, !17, i64 0}
!48 = !{!45, !17, i64 8}
!49 = !{!45, !17, i64 16}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = !{!53, !17, i64 8}
!53 = !{!"_ZTSN6Halide7Runtime8Internal6OpenCL13device_handleE", !4, i64 0, !17, i64 8}
!54 = !{!53, !4, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !5, i64 0}
!57 = !{!58, !17, i64 24}
!58 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !40, i64 32, !5, i64 33}
!59 = !{!58, !40, i64 32}
!60 = !{!58, !17, i64 0}
!61 = !{!58, !17, i64 8}
!62 = !{!63, !17, i64 24}
!63 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy16384EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !40, i64 32, !5, i64 33}
!64 = !{!63, !40, i64 32}
!65 = !{!63, !17, i64 0}
!66 = !{!63, !17, i64 8}
!67 = !{!63, !17, i64 16}
!68 = !{!69, !17, i64 0}
!69 = !{!"_ZTSN6Halide7Runtime8Internal6OpenCL9ClContextE", !17, i64 0, !17, i64 8, !17, i64 16, !21, i64 24}
!70 = !{!69, !17, i64 8}
!71 = !{!69, !17, i64 16}
!72 = !{!69, !21, i64 24}
!73 = !{!16, !17, i64 8}
!74 = !{!75, !17, i64 120}
!75 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!76 = !{!77, !17, i64 8}
!77 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!78 = !{!79, !21, i64 28}
!79 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programEE", !80, i64 0, !21, i64 8, !17, i64 16, !21, i64 24, !21, i64 28}
!80 = !{!"_ZTS12halide_mutex", !5, i64 0}
!81 = !{!79, !21, i64 8}
!82 = !{!79, !17, i64 16}
!83 = distinct !{!83, !8}
!84 = !{!85, !21, i64 16}
!85 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP11_cl_contextP11_cl_programE17CachedCompilationE", !17, i64 0, !17, i64 8, !21, i64 16, !21, i64 20}
!86 = !{!85, !17, i64 0}
!87 = !{!85, !21, i64 20}
!88 = !{!85, !17, i64 8}
!89 = !{!79, !21, i64 24}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
!92 = distinct !{!92, !8}
!93 = distinct !{!93, !8}
!94 = !{!77, !17, i64 0}
!95 = distinct !{!95, !8}
!96 = !{!16, !4, i64 24}
!97 = distinct !{!97, !8}
!98 = !{!99, !56, i64 0}
!99 = !{!"_ZTS17_cl_buffer_region", !56, i64 0, !56, i64 8}
!100 = !{!99, !56, i64 8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = distinct !{!103, !8}
!104 = distinct !{!104, !8}
!105 = distinct !{!105, !8}
!106 = !{!107, !21, i64 4}
!107 = !{!"_ZTS16_cl_image_format", !21, i64 0, !21, i64 4}
!108 = !{!107, !21, i64 0}
!109 = !{!110, !21, i64 0}
!110 = !{!"_ZTS14_cl_image_desc", !21, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !21, i64 56, !21, i64 60, !17, i64 64}
!111 = !{!110, !56, i64 8}
!112 = !{!110, !56, i64 16}
!113 = !{!110, !56, i64 24}
!114 = !{!110, !56, i64 32}
!115 = !{!110, !56, i64 40}
!116 = !{!110, !56, i64 48}
!117 = !{!110, !21, i64 56}
!118 = !{!110, !21, i64 60}
!119 = !{!110, !17, i64 64}
!120 = distinct !{!120, !8}
!121 = !{!27, !21, i64 12}
!122 = distinct !{!122, !8}
!123 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 4, !43, i64 20, i64 4, !43}
!124 = distinct !{!124, !8}
