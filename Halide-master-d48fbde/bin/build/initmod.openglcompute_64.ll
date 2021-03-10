; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" = type { i8, void (i32, i32)*, void (i32, i32)*, void (i32, i32, i32)*, void (i32, i64, i8*, i32)*, i32 ()*, void (i32)*, i32 (i32)*, void (i32, i32*)*, void (i32)*, void (i32)*, void (i32, i32, i32)*, void ()*, void (i32, i32*)*, i32 ()*, void (i32, i32, i32*, i8*)*, void (i32, i32, i32*)*, void (i32, i32, i32*, i8*)*, void (i32, i32, i32*)*, i8* (i32)*, void (i32)*, i8* (i32, i64, i64, i32)*, void (i32)*, void (i32, i32, i8**, i32*)*, void (i32, i32)*, void (i32, i32)*, void (i32, float)*, void (i32)*, void (i32)*, void (i32, i32, i32, i32*, i32*, i32*, i8*)*, i32 (i32, i8*)* }
%"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState" = type { %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* }
%"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo" = type { i8*, i32, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }

@.str.1 = private unnamed_addr constant [16 x i8] c"GL_INVALID_ENUM\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GL_INVALID_VALUE\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"GL_INVALID_OPERATION\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"GL_STACK_OVERFLOW\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"GL_STACK_UNDERFLOW\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"GL_OUT_OF_MEMORY\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"GL_INVALID_FRAMEBUFFER_OPERATION\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"GL_CONTEXT_LOST\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"GL_TABLE_TOO_LARGE\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"<unknown GL error>\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"OpenGL error \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE = weak global %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* null, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Could not load function pointer for \00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Failed to make OpenGL context\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"glAttachShader\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"glBindBufferBase\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"glBufferData\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"glCreateProgram\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"glCompileShader\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"glCreateShader\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"glDeleteBuffers\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"glDeleteProgram\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"glDeleteShader\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"glDispatchCompute\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"glFinish\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"glGenBuffers\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"glGetError\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"glGetProgramInfoLog\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"glGetProgramiv\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"glGetShaderInfoLog\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"glGetShaderiv\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"glLinkProgram\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"glMapBufferRange\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"glMemoryBarrier\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"glShaderSource\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"glUniform1i\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"glUniform1ui\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"glUniform1f\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"glUnmapBuffer\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"glGetActiveUniform\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"glGetUniformLocation\00", align 1
@.str.64 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:271 Assert failed: size != 0\0A\00", align 1
@.str.66 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:281 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"oglc: GenBuffers\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"oglc: BindBuffer\00", align 1
@.str.76 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:317 Assert failed: size != 0\0A\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"oglc: BufferData\00", align 1
@_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE }, align 8
@.str.79 = private unnamed_addr constant [76 x i8] c"OpenGL runtime not initialized in call to halide_openglcompute_device_free.\00", align 1
@.str.83 = private unnamed_addr constant [70 x i8] c"OpenGL runtime not initialized (halide_openglcompute_copy_to_device).\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"oglc: MapBufferRange\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"OpenGLCompute does not support 64-bit integers.\0A\00", align 1
@.str.89 = private unnamed_addr constant [55 x i8] c"OpenGLCompute does not support 64-bit floating-point.\0A\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"OpenGL runtime not initialized (halide_openglcompute_copy_to_host).\00", align 1
@.str.94 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:502 Assert failed: size != 0\0A\00", align 1
@.str.107 = private unnamed_addr constant [59 x i8] c"OpenGL runtime not initialized (halide_openglcompute_run).\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"Internal error: module state is nullptr\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"Internal error: unknown kernel named '\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"halide_openglcompute_run UseProgram\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"Cannot pass argument of type \00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c" to GL shader\0A\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"halide_openglcompute_run Uniform1i\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"halide_openglcompute_run Uniform1ui\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"halide_openglcompute_run Uniform1f\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"halide_openglcompute_run BindBufferBase\00", align 1
@.str.121 = private unnamed_addr constant [41 x i8] c"halide_openglcompute_run DispatchCompute\00", align 1
@.str.122 = private unnamed_addr constant [39 x i8] c"halide_openglcompute_run MemoryBarrier\00", align 1
@.str.123 = private unnamed_addr constant [75 x i8] c"OpenGL Compute runtime not initialized (halide_openglcompute_device_sync).\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"\0A// end of kernel \00", align 1
@.str.125 = private unnamed_addr constant [29 x i8] c"Failed to find kernel name.\0A\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"create shader\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"shader source\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"compile shader\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"Could not compile shader:\0A\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"attach shader\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"link program\00", align 1
@_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_sync, i32 (i8*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_default_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_default_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_default_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 8
@.str.133 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

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

; Function Attrs: nounwind willreturn mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %0) local_unnamed_addr #4 {
  switch i32 %0, label %10 [
    i32 1280, label %11
    i32 1281, label %2
    i32 1282, label %3
    i32 1283, label %4
    i32 1284, label %5
    i32 1285, label %6
    i32 1286, label %7
    i32 1287, label %8
    i32 32817, label %9
  ]

2:                                                ; preds = %1
  br label %11

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %12 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), %10 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %9 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %8 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %7 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %5 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %4 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %3 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %2 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %1 ]
  ret i8* %12
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %0, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, i64 0, i32 0
  %4 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %3, align 8, !tbaa !37
  %5 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %12
  %7 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %14, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !38
  %10 = tail call i32 @strcmp(i8* %0, i8* %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i64 0, i32 2
  %14 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %13, align 8, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, null
  br i1 %15, label %16, label %6, !llvm.loop !40

16:                                               ; preds = %6, %12, %2
  %17 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ null, %2 ], [ null, %12 ], [ %7, %6 ]
  ret %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %17
}

declare i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) %0, i8* %1, i8* %2) local_unnamed_addr #5 align 2 {
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 14
  %5 = load i32 ()*, i32 ()** %4, align 8, !tbaa !41
  %6 = tail call i32 %5() #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = tail call i8* @malloc(i64 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #7
  %16 = tail call i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %6) #8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0)) #7
  br label %22

20:                                               ; preds = %13
  %21 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %16) #7
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  %25 = sext i32 %6 to i64
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %14, i64 %25, i32 1) #7
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #7
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #7
  %29 = icmp eq i8* %2, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0)) #7
  br label %34

32:                                               ; preds = %22
  %33 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* nonnull %2) #7
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i8* [ %33, %32 ], [ %31, %30 ]
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #7
  br i1 %10, label %37, label %38

37:                                               ; preds = %34
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %44

38:                                               ; preds = %34
  %39 = ptrtoint i8* %36 to i64
  %40 = ptrtoint i8* %9 to i64
  %41 = add i64 %39, 1
  %42 = sub i64 %41, %40
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %9, i64 %42) #7
  tail call void @halide_error(i8* %1, i8* nonnull %9) #7
  br label %44

44:                                               ; preds = %37, %38
  call void @free(i8* %9) #7
  br label %45

45:                                               ; preds = %3, %44
  %46 = xor i1 %7, true
  ret i1 %46
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) %0) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 0
  store i8 0, i8* %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 1
  store void (i32, i32)* null, void (i32, i32)** %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 2
  store void (i32, i32)* null, void (i32, i32)** %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 3
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 4
  store void (i32, i64, i8*, i32)* null, void (i32, i64, i8*, i32)** %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 5
  store i32 ()* null, i32 ()** %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 6
  store void (i32)* null, void (i32)** %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 7
  store i32 (i32)* null, i32 (i32)** %9, align 8, !tbaa !51
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 8
  store void (i32, i32*)* null, void (i32, i32*)** %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 9
  store void (i32)* null, void (i32)** %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 10
  store void (i32)* null, void (i32)** %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 11
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 12
  store void ()* null, void ()** %14, align 8, !tbaa !56
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 13
  store void (i32, i32*)* null, void (i32, i32*)** %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 14
  store i32 ()* null, i32 ()** %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 15
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 16
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %18, align 8, !tbaa !59
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 17
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 18
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 19
  store i8* (i32)* null, i8* (i32)** %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 20
  store void (i32)* null, void (i32)** %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 21
  store i8* (i32, i64, i64, i32)* null, i8* (i32, i64, i64, i32)** %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 22
  store void (i32)* null, void (i32)** %24, align 8, !tbaa !65
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 23
  store void (i32, i32, i8**, i32*)* null, void (i32, i32, i8**, i32*)** %25, align 8, !tbaa !66
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 24
  store void (i32, i32)* null, void (i32, i32)** %26, align 8, !tbaa !67
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 25
  store void (i32, i32)* null, void (i32, i32)** %27, align 8, !tbaa !68
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 26
  store void (i32, float)* null, void (i32, float)** %28, align 8, !tbaa !69
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 27
  store void (i32)* null, void (i32)** %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 28
  store void (i32)* null, void (i32)** %30, align 8, !tbaa !71
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 29
  store void (i32, i32, i32, i32*, i32*, i32*, i8*)* null, void (i32, i32, i32, i32*, i32*, i32*, i8*)** %31, align 8, !tbaa !72
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 30
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %32, align 8, !tbaa !73
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* %1, i8** %2, i1 zeroext %3) local_unnamed_addr #5 {
  %5 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) #7
  %6 = icmp eq i8* %5, null
  %7 = and i1 %6, %3
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = tail call i8* @malloc(i64 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0)) #7
  %16 = icmp eq i8* %1, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0)) #7
  br label %21

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %1) #7
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ]
  br i1 %10, label %23, label %24

23:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %30

24:                                               ; preds = %21
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %9 to i64
  %27 = sub i64 1, %26
  %28 = add i64 %27, %25
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %28) #7
  tail call void @halide_error(i8* %0, i8* nonnull %9) #7
  br label %30

30:                                               ; preds = %24, %23
  tail call void @free(i8* %9) #7
  br label %32

31:                                               ; preds = %4
  store i8* %5, i8** %2, align 8, !tbaa !37
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32 [ 0, %31 ], [ -1, %30 ]
  ret i32 %33
}

declare i8* @halide_opengl_get_proc_address(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) local_unnamed_addr #5 {
  %2 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %114

4:                                                ; preds = %1
  tail call void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE) #8
  %5 = tail call i32 @halide_opengl_create_context(i8* %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i64 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #7
  %15 = ptrtoint i8* %14 to i64
  %16 = ptrtoint i8* %8 to i64
  %17 = add i64 %15, 1
  %18 = sub i64 %17, %16
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %18) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %20

20:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %114

21:                                               ; preds = %4
  %22 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 1) to i8**), i1 zeroext true) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %114, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2) to i8**), i1 zeroext true) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %114, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 3) to i8**), i1 zeroext true) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** bitcast (void (i32, i64, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 4) to i8**), i1 zeroext true) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %114, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 5) to i8**), i1 zeroext true) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %114, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 6) to i8**), i1 zeroext true) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %114, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8** bitcast (i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 7) to i8**), i1 zeroext true) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %114, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 8) to i8**), i1 zeroext true) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %114, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9) to i8**), i1 zeroext true) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10) to i8**), i1 zeroext true) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %114, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 11) to i8**), i1 zeroext true) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %114, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8** bitcast (void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 12) to i8**), i1 zeroext true) #8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %114, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 13) to i8**), i1 zeroext true) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %114, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 14) to i8**), i1 zeroext true) #8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %114, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 15) to i8**), i1 zeroext true) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %114, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16) to i8**), i1 zeroext true) #8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %114, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 17) to i8**), i1 zeroext true) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %114, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18) to i8**), i1 zeroext true) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %114, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8** bitcast (i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 19) to i8**), i1 zeroext true) #8
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 20) to i8**), i1 zeroext true) #8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8** bitcast (i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21) to i8**), i1 zeroext true) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 22) to i8**), i1 zeroext true) #8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8** bitcast (void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 23) to i8**), i1 zeroext true) #8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 24) to i8**), i1 zeroext true) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 25) to i8**), i1 zeroext true) #8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8** bitcast (void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 26) to i8**), i1 zeroext true) #8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27) to i8**), i1 zeroext true) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 28) to i8**), i1 zeroext true) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8** bitcast (void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 29) to i8**), i1 zeroext true) #8
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i8** bitcast (i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 30) to i8**), i1 zeroext true) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 19), align 8, !tbaa !62
  %113 = tail call i8* %112(i32 7938) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44
  br label %114

114:                                              ; preds = %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %1, %111, %20
  %115 = phi i32 [ -1, %20 ], [ 0, %111 ], [ 0, %1 ], [ -1, %21 ], [ -1, %24 ], [ -1, %27 ], [ -1, %30 ], [ -1, %33 ], [ -1, %36 ], [ -1, %39 ], [ -1, %42 ], [ -1, %45 ], [ -1, %48 ], [ -1, %51 ], [ -1, %54 ], [ -1, %57 ], [ -1, %60 ], [ -1, %63 ], [ -1, %66 ], [ -1, %69 ], [ -1, %72 ], [ -1, %75 ], [ -1, %78 ], [ -1, %81 ], [ -1, %84 ], [ -1, %87 ], [ -1, %90 ], [ -1, %93 ], [ -1, %96 ], [ -1, %99 ], [ -1, %102 ], [ -1, %105 ], [ -1, %108 ]
  ret i32 %115
}

declare i32 @halide_opengl_create_context(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv(i8* %0) #0 {
  %2 = alloca %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", align 8
  %3 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 8, !tbaa !37
  %4 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %21
  %6 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %23, %21 ], [ %3, %1 ]
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %6, i64 0, i32 0
  %8 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %7, align 8, !tbaa !75
  %9 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5, %10
  %11 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i64 0, i32 2
  %13 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %12, align 8, !tbaa !77
  %14 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9), align 8, !tbaa !53
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i64 0, i32 1
  %16 = load i32, i32* %15, align 8, !tbaa !78
  tail call void %14(i32 %16) #7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !38
  tail call void @free(i8* %18) #7
  %19 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11 to i8*
  tail call void @free(i8* nonnull %19) #7
  %20 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %13, null
  br i1 %20, label %21, label %10, !llvm.loop !79

21:                                               ; preds = %10, %5
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %7, align 8, !tbaa !75
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %6, i64 0, i32 1
  %23 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %22, align 8, !tbaa !37
  %24 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %23, null
  br i1 %24, label %25, label %5, !llvm.loop !80

25:                                               ; preds = %21, %1
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 248, i8* nonnull %26)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(248) %26, i8 0, i64 248, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(248) getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), i8* nonnull align 8 dereferenceable(248) %26, i64 248, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0i8(i64 248, i8* nonnull %26)
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %126

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !24
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %12 = load i8, i8* %11, align 1, !tbaa !23
  br label %56

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !25
  %16 = zext i32 %8 to i64
  br label %17

17:                                               ; preds = %31, %13
  %18 = phi i64 [ 0, %13 ], [ %33, %31 ]
  %19 = phi i64 [ 0, %13 ], [ %32, %31 ]
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %18, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !26
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %18, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !31
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %24
  %30 = add nsw i64 %29, %19
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi i64 [ %30, %23 ], [ %19, %17 ]
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %17, !llvm.loop !83

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %37 = load i8, i8* %36, align 1, !tbaa !23
  br label %38

38:                                               ; preds = %52, %35
  %39 = phi i64 [ 0, %35 ], [ %54, %52 ]
  %40 = phi i64 [ 0, %35 ], [ %53, %52 ]
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %39, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !26
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %39, i32 1
  %47 = load i32, i32* %46, align 4, !tbaa !31
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %45
  %51 = add nsw i64 %50, %40
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i64 [ %51, %44 ], [ %40, %38 ]
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %56, label %38, !llvm.loop !84

56:                                               ; preds = %52, %10
  %57 = phi i8 [ %12, %10 ], [ %37, %52 ]
  %58 = phi i64 [ 0, %10 ], [ %32, %52 ]
  %59 = phi i64 [ 0, %10 ], [ %53, %52 ]
  %60 = zext i8 %57 to i64
  %61 = add nuw nsw i64 %60, 7
  %62 = lshr i64 %61, 3
  %63 = add nsw i64 %58, 1
  %64 = sub i64 %63, %59
  %65 = mul i64 %64, %62
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.64, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %68

68:                                               ; preds = %67, %56
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !22
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %126

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4, !tbaa !24
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %80

77:                                               ; preds = %89, %72
  %78 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %126

80:                                               ; preds = %75, %89
  %81 = phi i32 [ %73, %75 ], [ %90, %89 ]
  %82 = phi i64 [ 0, %75 ], [ %91, %89 ]
  %83 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %76, align 8, !tbaa !25
  %84 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %83, i64 %82, i32 2
  %85 = load i32, i32* %84, align 4, !tbaa !26
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.66, i64 0, i64 0)) #7
  tail call void @abort() #7
  %88 = load i32, i32* %7, align 4, !tbaa !24
  br label %89

89:                                               ; preds = %80, %87
  %90 = phi i32 [ %81, %80 ], [ %88, %87 ]
  %91 = add nuw nsw i64 %82, 1
  %92 = sext i32 %90 to i64
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %80, label %77, !llvm.loop !85

94:                                               ; preds = %77
  %95 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %95) #9
  %96 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 13), align 8, !tbaa !57
  call void %96(i32 1, i32* nonnull %3) #7
  %97 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0)) #8
  br i1 %97, label %124, label %98

98:                                               ; preds = %94
  %99 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !tbaa !46
  %100 = load i32, i32* %3, align 4, !tbaa !86
  call void %99(i32 34962, i32 %100) #7
  %101 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0)) #8
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %104 = load i8, i8* %103, align 1, !tbaa !23
  %105 = zext i8 %104 to i16
  %106 = add nuw nsw i16 %105, 7
  %107 = lshr i16 %106, 3
  %108 = trunc i16 %107 to i8
  %109 = udiv i8 4, %108
  %110 = zext i8 %109 to i64
  %111 = mul i64 %65, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.76, i64 0, i64 0)) #7
  call void @abort() #7
  br label %114

114:                                              ; preds = %113, %102
  %115 = load void (i32, i64, i8*, i32)*, void (i32, i64, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 4), align 8, !tbaa !48
  call void %115(i32 34962, i64 %111, i8* null, i32 35050) #7
  %116 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0)) #8
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4, !tbaa !86
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %69, align 8, !tbaa !22
  %120 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, %struct.halide_device_interface_t** %120, align 8, !tbaa !87
  %121 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, i64 0, i32 15), align 8, !tbaa !88
  %122 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %121, i64 0, i32 0
  %123 = load void ()*, void ()** %122, align 8, !tbaa !90
  call void %123() #7
  br label %124

124:                                              ; preds = %114, %98, %94, %117
  %125 = phi i32 [ 0, %117 ], [ 1, %94 ], [ 1, %98 ], [ 1, %114 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #9
  br label %126

126:                                              ; preds = %68, %124, %77, %2
  %127 = phi i32 [ %4, %2 ], [ %125, %124 ], [ %78, %77 ], [ 0, %68 ]
  ret i32 %127
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca i32, align 4
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = tail call i8* @malloc(i64 1024) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.79, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.79, i64 0, i64 0)) #7
  %14 = ptrtoint i8* %13 to i64
  %15 = ptrtoint i8* %7 to i64
  %16 = add i64 %14, 1
  %17 = sub i64 %16, %15
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %17) #7
  tail call void @halide_error(i8* %0, i8* nonnull %7) #7
  br label %19

19:                                               ; preds = %11, %9
  tail call void @free(i8* %7) #7
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !22
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #9
  %26 = trunc i64 %22 to i32
  store i32 %26, i32* %3, align 4, !tbaa !86
  %27 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 8), align 8, !tbaa !52
  call void %27(i32 1, i32* nonnull %3) #7
  store i64 0, i64* %21, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !tbaa !87
  %30 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %29, i64 0, i32 15
  %31 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %30, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %31, i64 0, i32 1
  %33 = load void ()*, void ()** %32, align 8, !tbaa !92
  call void %33() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %28, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #9
  br label %34

34:                                               ; preds = %20, %24, %19
  %35 = phi i32 [ 0, %24 ], [ 1, %19 ], [ 0, %20 ]
  ret i32 %35
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = tail call i8* @malloc(i64 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.83, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.83, i64 0, i64 0)) #7
  %15 = ptrtoint i8* %14 to i64
  %16 = ptrtoint i8* %8 to i64
  %17 = add i64 %15, 1
  %18 = sub i64 %17, %16
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %18) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %20

20:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %145

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %23 = load i64, i64* %22, align 8, !tbaa !22
  %24 = trunc i64 %23 to i32
  %25 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !tbaa !46
  tail call void %25(i32 34962, i32 %24) #7
  %26 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0)) #8
  br i1 %26, label %145, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %33 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !25
  %34 = zext i32 %29 to i64
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i64 [ 0, %31 ], [ %42, %35 ]
  %37 = phi i64 [ 1, %31 ], [ %41, %35 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 %36, i32 1
  %39 = load i32, i32* %38, align 4, !tbaa !31
  %40 = sext i32 %39 to i64
  %41 = mul i64 %37, %40
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !93

44:                                               ; preds = %35
  %45 = shl i64 %41, 2
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i64 [ 4, %27 ], [ %45, %44 ]
  %48 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !tbaa !46
  tail call void %48(i32 34962, i32 %24) #7
  %49 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0)) #8
  br i1 %49, label %145, label %50

50:                                               ; preds = %46
  %51 = load i8* (i32, i64, i64, i32)*, i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21), align 8, !tbaa !64
  %52 = tail call i8* %51(i32 34962, i64 0, i64 %47, i32 3) #7
  %53 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0)) #8
  br i1 %53, label %145, label %54

54:                                               ; preds = %50
  %55 = bitcast %struct.halide_buffer_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %55) #9
  %56 = bitcast %struct.halide_buffer_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %55, i8* nonnull align 8 dereferenceable(56) %56, i64 56, i1 false), !tbaa.struct !94
  %57 = ptrtoint i8* %52 to i64
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  store i64 %57, i64* %58, align 8, !tbaa !22
  %59 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %59) #9
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #8
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0
  %61 = load i8, i8* %60, align 8, !tbaa !97
  switch i8 %61, label %141 [
    i8 0, label %62
    i8 1, label %91
    i8 2, label %120
  ]

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %64 = load i8, i8* %63, align 1, !tbaa !98
  switch i8 %64, label %77 [
    i8 8, label %65
    i8 16, label %68
    i8 32, label %74
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %67 = load i64, i64* %66, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %67, i64 0) #8
  br label %141

68:                                               ; preds = %62
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6
  %70 = load i64, i64* %69, align 8, !tbaa !12
  %71 = lshr i64 %70, 1
  store i64 %71, i64* %69, align 8, !tbaa !12
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %73 = load i64, i64* %72, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %73, i64 0) #8
  br label %141

74:                                               ; preds = %62
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %76 = load i64, i64* %75, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %76, i64 0) #8
  br label %141

77:                                               ; preds = %62
  %78 = call i8* @malloc(i64 1024) #7
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i8* @halide_string_to_string(i8* %78, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %90

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, i8* %78, i64 1023
  store i8 0, i8* %83, align 1, !tbaa !36
  %84 = call i8* @halide_string_to_string(i8* nonnull %78, i8* nonnull %83, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  %85 = ptrtoint i8* %84 to i64
  %86 = ptrtoint i8* %78 to i64
  %87 = add i64 %85, 1
  %88 = sub i64 %87, %86
  %89 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %78, i64 %88) #7
  call void @halide_error(i8* %0, i8* nonnull %78) #7
  br label %90

90:                                               ; preds = %82, %80
  call void @free(i8* %78) #7
  br label %143

91:                                               ; preds = %54
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %93 = load i8, i8* %92, align 1, !tbaa !98
  switch i8 %93, label %106 [
    i8 8, label %94
    i8 16, label %97
    i8 32, label %103
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %96 = load i64, i64* %95, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %96, i64 0) #8
  br label %141

97:                                               ; preds = %91
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6
  %99 = load i64, i64* %98, align 8, !tbaa !12
  %100 = lshr i64 %99, 1
  store i64 %100, i64* %98, align 8, !tbaa !12
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %102 = load i64, i64* %101, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %102, i64 0) #8
  br label %141

103:                                              ; preds = %91
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %105 = load i64, i64* %104, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %105, i64 0) #8
  br label %141

106:                                              ; preds = %91
  %107 = call i8* @malloc(i64 1024) #7
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i8* @halide_string_to_string(i8* %107, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %119

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %107, i64 1023
  store i8 0, i8* %112, align 1, !tbaa !36
  %113 = call i8* @halide_string_to_string(i8* nonnull %107, i8* nonnull %112, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  %114 = ptrtoint i8* %113 to i64
  %115 = ptrtoint i8* %107 to i64
  %116 = add i64 %114, 1
  %117 = sub i64 %116, %115
  %118 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %107, i64 %117) #7
  call void @halide_error(i8* %0, i8* nonnull %107) #7
  br label %119

119:                                              ; preds = %111, %109
  call void @free(i8* %107) #7
  br label %143

120:                                              ; preds = %54
  %121 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %122 = load i8, i8* %121, align 1, !tbaa !98
  %123 = icmp eq i8 %122, 32
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %126 = load i64, i64* %125, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %126, i64 0) #8
  br label %141

127:                                              ; preds = %120
  %128 = call i8* @malloc(i64 1024) #7
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i8* @halide_string_to_string(i8* %128, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %140

132:                                              ; preds = %127
  %133 = getelementptr inbounds i8, i8* %128, i64 1023
  store i8 0, i8* %133, align 1, !tbaa !36
  %134 = call i8* @halide_string_to_string(i8* nonnull %128, i8* nonnull %133, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0)) #7
  %135 = ptrtoint i8* %134 to i64
  %136 = ptrtoint i8* %128 to i64
  %137 = add i64 %135, 1
  %138 = sub i64 %137, %136
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %128, i64 %138) #7
  call void @halide_error(i8* %0, i8* nonnull %128) #7
  br label %140

140:                                              ; preds = %132, %130
  call void @free(i8* %128) #7
  br label %141

141:                                              ; preds = %54, %97, %103, %94, %124, %140, %65, %74, %68
  %142 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27), align 8, !tbaa !70
  call void %142(i32 34962) #7
  br label %143

143:                                              ; preds = %141, %119, %90
  %144 = phi i32 [ 0, %141 ], [ -1, %90 ], [ -1, %119 ]
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %59) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %55) #9
  br label %145

145:                                              ; preds = %21, %143, %50, %46, %20
  %146 = phi i32 [ 1, %20 ], [ 1, %21 ], [ 1, %46 ], [ %144, %143 ], [ 1, %50 ]
  ret i32 %146
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !99

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i8*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %43, align 1, !tbaa !36
  %46 = sext i8 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !100

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !101

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !102

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i16*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i16, i16* %43, i64 1
  %45 = load i16, i16* %43, align 2, !tbaa !96
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !103

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !104

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !105

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i8*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %43, align 1, !tbaa !36
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !106

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !107

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !108

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i16*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i16, i16* %43, i64 1
  %45 = load i16, i16* %43, align 2, !tbaa !96
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !109

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !110

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = tail call i8* @malloc(i64 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i64 0, i64 0)) #7
  %15 = ptrtoint i8* %14 to i64
  %16 = ptrtoint i8* %8 to i64
  %17 = add i64 %15, 1
  %18 = sub i64 %17, %16
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %18) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %20

20:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %184

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %23 = load i64, i64* %22, align 8, !tbaa !22
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %26 = load i32, i32* %25, align 4, !tbaa !24
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %30 = load i8, i8* %29, align 1, !tbaa !23
  br label %74

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %33 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !25
  %34 = zext i32 %26 to i64
  br label %35

35:                                               ; preds = %49, %31
  %36 = phi i64 [ 0, %31 ], [ %51, %49 ]
  %37 = phi i64 [ 0, %31 ], [ %50, %49 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 %36, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = zext i32 %39 to i64
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 %36, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !31
  %45 = add nsw i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %42
  %48 = add nsw i64 %47, %37
  br label %49

49:                                               ; preds = %41, %35
  %50 = phi i64 [ %48, %41 ], [ %37, %35 ]
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, %34
  br i1 %52, label %53, label %35, !llvm.loop !83

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %55 = load i8, i8* %54, align 1, !tbaa !23
  br label %56

56:                                               ; preds = %70, %53
  %57 = phi i64 [ 0, %53 ], [ %72, %70 ]
  %58 = phi i64 [ 0, %53 ], [ %71, %70 ]
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 %57, i32 2
  %60 = load i32, i32* %59, align 4, !tbaa !26
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 %57, i32 1
  %65 = load i32, i32* %64, align 4, !tbaa !31
  %66 = add nsw i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %63
  %69 = add nsw i64 %68, %58
  br label %70

70:                                               ; preds = %62, %56
  %71 = phi i64 [ %69, %62 ], [ %58, %56 ]
  %72 = add nuw nsw i64 %57, 1
  %73 = icmp eq i64 %72, %34
  br i1 %73, label %74, label %56, !llvm.loop !84

74:                                               ; preds = %70, %28
  %75 = phi i8 [ %30, %28 ], [ %55, %70 ]
  %76 = phi i64 [ 0, %28 ], [ %50, %70 ]
  %77 = phi i64 [ 0, %28 ], [ %71, %70 ]
  %78 = zext i8 %75 to i64
  %79 = add nuw nsw i64 %78, 7
  %80 = lshr i64 %79, 3
  %81 = add nsw i64 %76, 1
  %82 = sub i64 %81, %77
  %83 = mul i64 %82, %80
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.94, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %86

86:                                               ; preds = %85, %74
  %87 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !tbaa !46
  tail call void %87(i32 34962, i32 %24) #7
  %88 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0)) #8
  br i1 %88, label %184, label %89

89:                                               ; preds = %86
  %90 = load i8* (i32, i64, i64, i32)*, i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21), align 8, !tbaa !64
  %91 = tail call i8* %90(i32 34962, i64 0, i64 %83, i32 1) #7
  %92 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0)) #8
  br i1 %92, label %184, label %93

93:                                               ; preds = %89
  %94 = bitcast %struct.halide_buffer_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %94) #9
  %95 = bitcast %struct.halide_buffer_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %94, i8* nonnull align 8 dereferenceable(56) %95, i64 56, i1 false), !tbaa.struct !94
  %96 = ptrtoint i8* %91 to i64
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  store i64 %96, i64* %97, align 8, !tbaa !22
  %98 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %98) #9
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #8
  %99 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0
  %100 = load i8, i8* %99, align 8, !tbaa !97
  switch i8 %100, label %180 [
    i8 0, label %101
    i8 1, label %130
    i8 2, label %159
  ]

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %103 = load i8, i8* %102, align 1, !tbaa !98
  switch i8 %103, label %116 [
    i8 8, label %104
    i8 16, label %107
    i8 32, label %113
  ]

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %106 = load i64, i64* %105, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %106) #8
  br label %180

107:                                              ; preds = %101
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6
  %109 = load i64, i64* %108, align 8, !tbaa !12
  %110 = lshr i64 %109, 1
  store i64 %110, i64* %108, align 8, !tbaa !12
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %112 = load i64, i64* %111, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %112) #8
  br label %180

113:                                              ; preds = %101
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %115 = load i64, i64* %114, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %115) #8
  br label %180

116:                                              ; preds = %101
  %117 = call i8* @malloc(i64 1024) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i8* @halide_string_to_string(i8* %117, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %129

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %122, align 1, !tbaa !36
  %123 = call i8* @halide_string_to_string(i8* nonnull %117, i8* nonnull %122, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  %124 = ptrtoint i8* %123 to i64
  %125 = ptrtoint i8* %117 to i64
  %126 = add i64 %124, 1
  %127 = sub i64 %126, %125
  %128 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %127) #7
  call void @halide_error(i8* %0, i8* nonnull %117) #7
  br label %129

129:                                              ; preds = %121, %119
  call void @free(i8* %117) #7
  br label %182

130:                                              ; preds = %93
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %132 = load i8, i8* %131, align 1, !tbaa !98
  switch i8 %132, label %145 [
    i8 8, label %133
    i8 16, label %136
    i8 32, label %142
  ]

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %135 = load i64, i64* %134, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %135) #8
  br label %180

136:                                              ; preds = %130
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6
  %138 = load i64, i64* %137, align 8, !tbaa !12
  %139 = lshr i64 %138, 1
  store i64 %139, i64* %137, align 8, !tbaa !12
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %141 = load i64, i64* %140, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %141) #8
  br label %180

142:                                              ; preds = %130
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %144 = load i64, i64* %143, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %144) #8
  br label %180

145:                                              ; preds = %130
  %146 = call i8* @malloc(i64 1024) #7
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i8* @halide_string_to_string(i8* %146, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %158

150:                                              ; preds = %145
  %151 = getelementptr inbounds i8, i8* %146, i64 1023
  store i8 0, i8* %151, align 1, !tbaa !36
  %152 = call i8* @halide_string_to_string(i8* nonnull %146, i8* nonnull %151, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0)) #7
  %153 = ptrtoint i8* %152 to i64
  %154 = ptrtoint i8* %146 to i64
  %155 = add i64 %153, 1
  %156 = sub i64 %155, %154
  %157 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %146, i64 %156) #7
  call void @halide_error(i8* %0, i8* nonnull %146) #7
  br label %158

158:                                              ; preds = %150, %148
  call void @free(i8* %146) #7
  br label %182

159:                                              ; preds = %93
  %160 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %161 = load i8, i8* %160, align 1, !tbaa !98
  %162 = icmp eq i8 %161, 32
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2
  %165 = load i64, i64* %164, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %165) #8
  br label %180

166:                                              ; preds = %159
  %167 = call i8* @malloc(i64 1024) #7
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i8* @halide_string_to_string(i8* %167, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %179

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, i8* %167, i64 1023
  store i8 0, i8* %172, align 1, !tbaa !36
  %173 = call i8* @halide_string_to_string(i8* nonnull %167, i8* nonnull %172, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0)) #7
  %174 = ptrtoint i8* %173 to i64
  %175 = ptrtoint i8* %167 to i64
  %176 = add i64 %174, 1
  %177 = sub i64 %176, %175
  %178 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %167, i64 %177) #7
  call void @halide_error(i8* %0, i8* nonnull %167) #7
  br label %179

179:                                              ; preds = %171, %169
  call void @free(i8* %167) #7
  br label %180

180:                                              ; preds = %93, %136, %142, %133, %163, %179, %104, %113, %107
  %181 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27), align 8, !tbaa !70
  call void %181(i32 34962) #7
  br label %182

182:                                              ; preds = %180, %158, %129
  %183 = phi i32 [ 0, %180 ], [ -1, %129 ], [ -1, %158 ]
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %98) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %94) #9
  br label %184

184:                                              ; preds = %86, %89, %182, %20
  %185 = phi i32 [ 1, %20 ], [ 1, %86 ], [ %183, %182 ], [ 1, %89 ]
  ret i32 %185
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !111

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %51

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i32*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %31 ]
  %42 = phi i8* [ %47, %40 ], [ %35, %31 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %31 ]
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %46, i8* %42, align 1, !tbaa !36
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %28, align 8, !tbaa !12
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %62, !llvm.loop !112

51:                                               ; preds = %23, %51
  %52 = phi i64 [ 0, %23 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %23 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %23 ], [ %56, %51 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %54, i64 %53) #8
  %55 = load i64, i64* %25, align 8, !tbaa !3
  %56 = add i64 %55, %54
  %57 = load i64, i64* %26, align 8, !tbaa !3
  %58 = add i64 %57, %53
  %59 = add nuw i64 %52, 1
  %60 = load i64, i64* %20, align 8, !tbaa !3
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %51, label %62, !llvm.loop !113

62:                                               ; preds = %51, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !114

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i16*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i32*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i16* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds i16, i16* %42, i64 1
  store i16 %46, i16* %42, align 2, !tbaa !96
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !115

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !116

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !117

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %51

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i32*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %31 ]
  %42 = phi i8* [ %47, %40 ], [ %35, %31 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %31 ]
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %46, i8* %42, align 1, !tbaa !36
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %28, align 8, !tbaa !12
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %62, !llvm.loop !118

51:                                               ; preds = %23, %51
  %52 = phi i64 [ 0, %23 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %23 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %23 ], [ %56, %51 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %54, i64 %53) #8
  %55 = load i64, i64* %25, align 8, !tbaa !3
  %56 = add i64 %55, %54
  %57 = load i64, i64* %26, align 8, !tbaa !3
  %58 = add i64 %57, %53
  %59 = add nuw i64 %52, 1
  %60 = load i64, i64* %20, align 8, !tbaa !3
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %51, label %62, !llvm.loop !119

62:                                               ; preds = %51, %40, %18, %27
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %14, label %6, label %27, !llvm.loop !120

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i16*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !9
  %38 = add i64 %37, %2
  %39 = inttoptr i64 %38 to i32*
  br label %40

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i16* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %31 ], [ %44, %40 ]
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds i16, i16* %42, i64 1
  store i16 %46, i16* %42, align 2, !tbaa !96
  %48 = add nuw i64 %41, 1
  %49 = icmp eq i64 %48, %29
  br i1 %49, label %61, label %40, !llvm.loop !121

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #8
  %54 = load i64, i64* %25, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %26, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %20, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !122

61:                                               ; preds = %50, %40, %18, %27
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.halide_type_t* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #5 {
  %18 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = tail call i8* @malloc(i64 1024) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i8* @halide_string_to_string(i8* %21, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.107, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i64 1023
  store i8 0, i8* %26, align 1, !tbaa !36
  %27 = tail call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.107, i64 0, i64 0)) #7
  %28 = ptrtoint i8* %27 to i64
  %29 = ptrtoint i8* %21 to i64
  %30 = add i64 %28, 1
  %31 = sub i64 %30, %29
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %31) #7
  tail call void @halide_error(i8* %0, i8* nonnull %21) #7
  br label %33

33:                                               ; preds = %25, %23
  tail call void @free(i8* %21) #7
  br label %239

34:                                               ; preds = %17
  %35 = icmp eq i8* %1, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = tail call i8* @malloc(i64 1024) #7
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call i8* @halide_string_to_string(i8* %37, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.108, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %49

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, i8* %37, i64 1023
  store i8 0, i8* %42, align 1, !tbaa !36
  %43 = tail call i8* @halide_string_to_string(i8* nonnull %37, i8* nonnull %42, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.108, i64 0, i64 0)) #7
  %44 = ptrtoint i8* %43 to i64
  %45 = ptrtoint i8* %37 to i64
  %46 = add i64 %44, 1
  %47 = sub i64 %46, %45
  %48 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %47) #7
  tail call void @halide_error(i8* %0, i8* nonnull %37) #7
  br label %49

49:                                               ; preds = %41, %39
  tail call void @free(i8* %37) #7
  br label %239

50:                                               ; preds = %34
  %51 = bitcast i8* %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*
  %52 = tail call %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %2, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* nonnull %51) #8
  %53 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = tail call i8* @malloc(i64 1024) #7
  %56 = icmp eq i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, i8* %55, i64 1023
  store i8 0, i8* %58, align 1, !tbaa !36
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i8* [ %58, %57 ], [ null, %54 ]
  %61 = tail call i8* @halide_string_to_string(i8* %55, i8* %60, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i64 0, i64 0)) #7
  %62 = icmp eq i8* %2, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i8* @halide_string_to_string(i8* %61, i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0)) #7
  br label %67

65:                                               ; preds = %59
  %66 = tail call i8* @halide_string_to_string(i8* %61, i8* %60, i8* nonnull %2) #7
  br label %67

67:                                               ; preds = %63, %65
  %68 = phi i8* [ %66, %65 ], [ %64, %63 ]
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %60, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0)) #7
  br i1 %56, label %70, label %71

70:                                               ; preds = %67
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %77

71:                                               ; preds = %67
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %55 to i64
  %74 = add i64 %72, 1
  %75 = sub i64 %74, %73
  %76 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %55, i64 %75) #7
  tail call void @halide_error(i8* %0, i8* nonnull %55) #7
  br label %77

77:                                               ; preds = %71, %70
  tail call void @free(i8* %55) #7
  br label %239

78:                                               ; preds = %50
  %79 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 28), align 8, !tbaa !71
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %52, i64 0, i32 1
  %81 = load i32, i32* %80, align 8, !tbaa !78
  tail call void %79(i32 %81) #7
  %82 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i64 0, i64 0)) #8
  br i1 %82, label %239, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 0, i32 1
  %85 = load i8, i8* %84, align 1, !tbaa !23
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %232, label %87

87:                                               ; preds = %83, %226
  %88 = phi i64 [ %227, %226 ], [ 0, %83 ]
  %89 = phi i8 [ %230, %226 ], [ %85, %83 ]
  %90 = phi %struct.halide_type_t* [ %228, %226 ], [ %10, %83 ]
  %91 = getelementptr inbounds i8*, i8** %11, i64 %88
  %92 = getelementptr inbounds i8, i8* %12, i64 %88
  %93 = load i8, i8* %92, align 1, !tbaa !36
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %217

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %90, i64 0, i32 0
  %97 = load i8, i8* %96, align 2, !tbaa !123
  switch i8 %97, label %199 [
    i8 0, label %98
    i8 1, label %135
    i8 2, label %172
  ]

98:                                               ; preds = %95
  switch i8 %89, label %112 [
    i8 8, label %99
    i8 16, label %103
    i8 32, label %108
  ]

99:                                               ; preds = %98
  %100 = load i8*, i8** %91, align 8, !tbaa !37
  %101 = load i8, i8* %100, align 1, !tbaa !36
  %102 = sext i8 %101 to i32
  br label %130

103:                                              ; preds = %98
  %104 = bitcast i8** %91 to i16**
  %105 = load i16*, i16** %104, align 8, !tbaa !37
  %106 = load i16, i16* %105, align 2, !tbaa !96
  %107 = sext i16 %106 to i32
  br label %130

108:                                              ; preds = %98
  %109 = bitcast i8** %91 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !37
  %111 = load i32, i32* %110, align 4, !tbaa !86
  br label %130

112:                                              ; preds = %98
  %113 = tail call i8* @malloc(i64 1024) #7
  %114 = icmp eq i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds i8, i8* %113, i64 1023
  store i8 0, i8* %116, align 1, !tbaa !36
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi i8* [ %116, %115 ], [ null, %112 ]
  %119 = tail call i8* @halide_string_to_string(i8* %113, i8* %118, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0)) #7
  %120 = tail call i8* @halide_type_to_string(i8* %119, i8* %118, %struct.halide_type_t* nonnull %90) #7
  %121 = tail call i8* @halide_string_to_string(i8* %120, i8* %118, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0)) #7
  br i1 %114, label %122, label %123

122:                                              ; preds = %117
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %129

123:                                              ; preds = %117
  %124 = ptrtoint i8* %121 to i64
  %125 = ptrtoint i8* %113 to i64
  %126 = add i64 %124, 1
  %127 = sub i64 %126, %125
  %128 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %113, i64 %127) #7
  tail call void @halide_error(i8* %0, i8* nonnull %113) #7
  br label %129

129:                                              ; preds = %123, %122
  tail call void @free(i8* %113) #7
  br label %239

130:                                              ; preds = %103, %108, %99
  %131 = phi i32 [ %102, %99 ], [ %107, %103 ], [ %111, %108 ]
  %132 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 24), align 8, !tbaa !67
  %133 = trunc i64 %88 to i32
  tail call void %132(i32 %133, i32 %131) #7
  %134 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.117, i64 0, i64 0)) #8
  br i1 %134, label %239, label %226

135:                                              ; preds = %95
  switch i8 %89, label %149 [
    i8 8, label %136
    i8 1, label %136
    i8 16, label %140
    i8 32, label %145
  ]

136:                                              ; preds = %135, %135
  %137 = load i8*, i8** %91, align 8, !tbaa !37
  %138 = load i8, i8* %137, align 1, !tbaa !36
  %139 = zext i8 %138 to i32
  br label %167

140:                                              ; preds = %135
  %141 = bitcast i8** %91 to i16**
  %142 = load i16*, i16** %141, align 8, !tbaa !37
  %143 = load i16, i16* %142, align 2, !tbaa !96
  %144 = zext i16 %143 to i32
  br label %167

145:                                              ; preds = %135
  %146 = bitcast i8** %91 to i32**
  %147 = load i32*, i32** %146, align 8, !tbaa !37
  %148 = load i32, i32* %147, align 4, !tbaa !86
  br label %167

149:                                              ; preds = %135
  %150 = tail call i8* @malloc(i64 1024) #7
  %151 = icmp eq i8* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds i8, i8* %150, i64 1023
  store i8 0, i8* %153, align 1, !tbaa !36
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i8* [ %153, %152 ], [ null, %149 ]
  %156 = tail call i8* @halide_string_to_string(i8* %150, i8* %155, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0)) #7
  %157 = tail call i8* @halide_type_to_string(i8* %156, i8* %155, %struct.halide_type_t* nonnull %90) #7
  %158 = tail call i8* @halide_string_to_string(i8* %157, i8* %155, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0)) #7
  br i1 %151, label %159, label %160

159:                                              ; preds = %154
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %166

160:                                              ; preds = %154
  %161 = ptrtoint i8* %158 to i64
  %162 = ptrtoint i8* %150 to i64
  %163 = add i64 %161, 1
  %164 = sub i64 %163, %162
  %165 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %150, i64 %164) #7
  tail call void @halide_error(i8* %0, i8* nonnull %150) #7
  br label %166

166:                                              ; preds = %160, %159
  tail call void @free(i8* %150) #7
  br label %239

167:                                              ; preds = %140, %145, %136
  %168 = phi i32 [ %139, %136 ], [ %144, %140 ], [ %148, %145 ]
  %169 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 25), align 8, !tbaa !68
  %170 = trunc i64 %88 to i32
  tail call void %169(i32 %170, i32 %168) #7
  %171 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0)) #8
  br i1 %171, label %239, label %226

172:                                              ; preds = %95
  %173 = icmp eq i8 %89, 32
  br i1 %173, label %174, label %181

174:                                              ; preds = %172
  %175 = bitcast i8** %91 to float**
  %176 = load float*, float** %175, align 8, !tbaa !37
  %177 = load float, float* %176, align 4, !tbaa !124
  %178 = load void (i32, float)*, void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 26), align 8, !tbaa !69
  %179 = trunc i64 %88 to i32
  tail call void %178(i32 %179, float %177) #7
  %180 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0)) #8
  br i1 %180, label %239, label %226

181:                                              ; preds = %172
  %182 = tail call i8* @malloc(i64 1024) #7
  %183 = icmp eq i8* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %182, i64 1023
  store i8 0, i8* %185, align 1, !tbaa !36
  br label %186

186:                                              ; preds = %181, %184
  %187 = phi i8* [ %185, %184 ], [ null, %181 ]
  %188 = tail call i8* @halide_string_to_string(i8* %182, i8* %187, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0)) #7
  %189 = tail call i8* @halide_type_to_string(i8* %188, i8* %187, %struct.halide_type_t* nonnull %90) #7
  %190 = tail call i8* @halide_string_to_string(i8* %189, i8* %187, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0)) #7
  br i1 %183, label %191, label %192

191:                                              ; preds = %186
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %198

192:                                              ; preds = %186
  %193 = ptrtoint i8* %190 to i64
  %194 = ptrtoint i8* %182 to i64
  %195 = add i64 %193, 1
  %196 = sub i64 %195, %194
  %197 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %182, i64 %196) #7
  tail call void @halide_error(i8* %0, i8* nonnull %182) #7
  br label %198

198:                                              ; preds = %192, %191
  tail call void @free(i8* %182) #7
  br label %239

199:                                              ; preds = %95
  %200 = tail call i8* @malloc(i64 1024) #7
  %201 = icmp eq i8* %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds i8, i8* %200, i64 1023
  store i8 0, i8* %203, align 1, !tbaa !36
  br label %204

204:                                              ; preds = %199, %202
  %205 = phi i8* [ %203, %202 ], [ null, %199 ]
  %206 = tail call i8* @halide_string_to_string(i8* %200, i8* %205, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0)) #7
  %207 = tail call i8* @halide_type_to_string(i8* %206, i8* %205, %struct.halide_type_t* nonnull %90) #7
  %208 = tail call i8* @halide_string_to_string(i8* %207, i8* %205, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0)) #7
  br i1 %201, label %209, label %210

209:                                              ; preds = %204
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %216

210:                                              ; preds = %204
  %211 = ptrtoint i8* %208 to i64
  %212 = ptrtoint i8* %200 to i64
  %213 = add i64 %211, 1
  %214 = sub i64 %213, %212
  %215 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %200, i64 %214) #7
  tail call void @halide_error(i8* %0, i8* nonnull %200) #7
  br label %216

216:                                              ; preds = %210, %209
  tail call void @free(i8* %200) #7
  br label %239

217:                                              ; preds = %87
  %218 = bitcast i8** %91 to %struct.halide_buffer_t**
  %219 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %218, align 8, !tbaa !37
  %220 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %219, i64 0, i32 0
  %221 = load i64, i64* %220, align 8, !tbaa !22
  %222 = trunc i64 %221 to i32
  %223 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 3), align 8, !tbaa !47
  %224 = trunc i64 %88 to i32
  tail call void %223(i32 37074, i32 %224, i32 %222) #7
  %225 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i64 0, i64 0)) #8
  br i1 %225, label %239, label %226

226:                                              ; preds = %174, %167, %130, %217
  %227 = add nuw i64 %88, 1
  %228 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %227
  %229 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %227, i32 1
  %230 = load i8, i8* %229, align 1, !tbaa !23
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %87, !llvm.loop !126

232:                                              ; preds = %226, %83
  %233 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 11), align 8, !tbaa !55
  tail call void %233(i32 %3, i32 %4, i32 %5) #7
  %234 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.121, i64 0, i64 0)) #8
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 22), align 8, !tbaa !65
  tail call void %236(i32 1) #7
  %237 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.122, i64 0, i64 0)) #8
  %238 = sext i1 %237 to i32
  ret i32 %238

239:                                              ; preds = %217, %130, %167, %174, %49, %216, %129, %166, %198, %232, %78, %77, %33
  ret i32 -1
}

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_device_sync(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !tbaa !44, !range !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = tail call i8* @malloc(i64 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.123, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.123, i64 0, i64 0)) #7
  %13 = ptrtoint i8* %12 to i64
  %14 = ptrtoint i8* %6 to i64
  %15 = add i64 %13, 1
  %16 = sub i64 %15, %14
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %16) #7
  tail call void @halide_error(i8* %0, i8* nonnull %6) #7
  br label %18

18:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7
  br label %21

19:                                               ; preds = %2
  %20 = load void ()*, void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 12), align 8, !tbaa !56
  tail call void %20() #7
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %19 ], [ 1, %18 ]
  ret i32 %22
}

; Function Attrs: nounwind mustprogress
define weak i8* @get_kernel_name(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = ptrtoint i8* %1 to i64
  %4 = ptrtoint i8* %0 to i64
  %5 = sub i64 %3, %4
  %6 = add i64 %5, 1
  %7 = tail call i8* @malloc(i64 %6) #7
  %8 = tail call i8* @memcpy(i8* %7, i8* %0, i64 %5) #7
  %9 = getelementptr inbounds i8, i8* %7, i64 %5
  store i8 0, i8* %9, align 1, !tbaa !36
  ret i8* %7
}

declare i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #5 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %159

13:                                               ; preds = %4
  %14 = bitcast i8** %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**
  %15 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %14, align 8, !tbaa !37
  %16 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call i8* @malloc(i64 16) #7
  %19 = bitcast i8* %18 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*
  %20 = bitcast i8* %18 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %20, align 8, !tbaa !75
  %21 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 8, !tbaa !37
  %22 = getelementptr inbounds i8, i8* %18, i64 8
  %23 = bitcast i8* %22 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %21, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %23, align 8, !tbaa !127
  store i8* %18, i8** bitcast (%"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE to i8**), align 8, !tbaa !37
  store i8* %18, i8** %1, align 8, !tbaa !37
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %15, %13 ], [ %19, %17 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %25, i64 0, i32 0
  %27 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 8, !tbaa !75
  %28 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %27, null
  br i1 %28, label %29, label %159

29:                                               ; preds = %24
  %30 = tail call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i64 0, i64 0)) #7
  %31 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i64 0, i64 0)) #7
  %32 = icmp eq i8* %31, null
  br i1 %32, label %159, label %33

33:                                               ; preds = %29
  %34 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %25 to i8**
  %35 = bitcast i8** %5 to i8*
  %36 = bitcast i32* %6 to i8*
  %37 = bitcast i32* %7 to i8*
  %38 = bitcast i32* %9 to i8*
  br label %39

39:                                               ; preds = %33, %154
  %40 = phi i8* [ %31, %33 ], [ %157, %154 ]
  %41 = phi i8* [ %2, %33 ], [ %43, %154 ]
  %42 = getelementptr inbounds i8, i8* %40, i64 %30
  %43 = call i8* @strstr(i8* nonnull %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #7
  %44 = icmp eq i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i8* @get_kernel_name(i8* nonnull %42, i8* nonnull %43) #8
  br label %62

47:                                               ; preds = %39
  %48 = call i8* @malloc(i64 1024) #7
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @halide_string_to_string(i8* %48, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %48, i64 1023
  store i8 0, i8* %53, align 1, !tbaa !36
  %54 = call i8* @halide_string_to_string(i8* nonnull %48, i8* nonnull %53, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i64 0, i64 0)) #7
  %55 = ptrtoint i8* %54 to i64
  %56 = ptrtoint i8* %48 to i64
  %57 = add i64 %55, 1
  %58 = sub i64 %57, %56
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %48, i64 %58) #7
  call void @halide_error(i8* %0, i8* nonnull %48) #7
  br label %60

60:                                               ; preds = %52, %50
  call void @free(i8* %48) #7
  %61 = call i8* @get_kernel_name(i8* nonnull %42, i8* null) #8
  br label %62

62:                                               ; preds = %45, %60
  %63 = phi i8* [ %46, %45 ], [ %61, %60 ]
  %64 = call i8* @malloc(i64 24) #7
  %65 = bitcast i8* %64 to i8**
  store i8* %63, i8** %65, align 8, !tbaa !38
  %66 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 8, !tbaa !75
  %67 = getelementptr inbounds i8, i8* %64, i64 16
  %68 = bitcast i8* %67 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %66, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %68, align 8, !tbaa !77
  store i8* %64, i8** %34, align 8, !tbaa !75
  %69 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 7), align 8, !tbaa !51
  %70 = call i32 %69(i32 37305) #7
  %71 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i64 0, i64 0)) #8
  br i1 %71, label %159, label %72

72:                                               ; preds = %62
  %73 = ptrtoint i8* %43 to i64
  %74 = ptrtoint i8* %41 to i64
  %75 = sub i64 %73, %74
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #9
  store i8* %41, i8** %5, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #9
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4, !tbaa !86
  %77 = load void (i32, i32, i8**, i32*)*, void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 23), align 8, !tbaa !66
  call void %77(i32 %70, i32 1, i8** nonnull %5, i32* nonnull %6) #7
  %78 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i64 0, i64 0)) #8
  br i1 %78, label %152, label %79

79:                                               ; preds = %72
  %80 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 6), align 8, !tbaa !50
  call void %80(i32 %70) #7
  %81 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i64 0, i64 0)) #8
  br i1 %81, label %152, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #9
  store i32 0, i32* %7, align 4, !tbaa !86
  %83 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18), align 8, !tbaa !61
  call void %83(i32 %70, i32 35713, i32* nonnull %7) #7
  %84 = load i32, i32* %7, align 4, !tbaa !86
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %127, label %86

86:                                               ; preds = %82
  %87 = call i8* @malloc(i64 1024) #7
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i8* @halide_string_to_string(i8* %87, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %99

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, i8* %87, i64 1023
  store i8 0, i8* %92, align 1, !tbaa !36
  %93 = call i8* @halide_string_to_string(i8* nonnull %87, i8* nonnull %92, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i64 0, i64 0)) #7
  %94 = ptrtoint i8* %93 to i64
  %95 = ptrtoint i8* %87 to i64
  %96 = add i64 %94, 1
  %97 = sub i64 %96, %95
  %98 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %87, i64 %97) #7
  call void @halide_print(i8* %0, i8* nonnull %87) #7
  br label %99

99:                                               ; preds = %91, %89
  call void @free(i8* %87) #7
  %100 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100) #9
  %101 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18), align 8, !tbaa !61
  call void %101(i32 %70, i32 35716, i32* nonnull %8) #7
  %102 = load i32, i32* %8, align 4, !tbaa !86
  %103 = sext i32 %102 to i64
  %104 = call i8* @halide_malloc(i8* %0, i64 %103) #7
  %105 = icmp eq i8* %104, null
  br i1 %105, label %125, label %106

106:                                              ; preds = %99
  %107 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 17), align 8, !tbaa !60
  %108 = load i32, i32* %8, align 4, !tbaa !86
  call void %107(i32 %70, i32 %108, i32* null, i8* nonnull %104) #7
  %109 = call i8* @malloc(i64 1024) #7
  %110 = icmp eq i8* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %109, i64 1023
  store i8 0, i8* %112, align 1, !tbaa !36
  br label %113

113:                                              ; preds = %106, %111
  %114 = phi i8* [ %112, %111 ], [ null, %106 ]
  %115 = call i8* @halide_string_to_string(i8* %109, i8* %114, i8* nonnull %104) #7
  %116 = call i8* @halide_string_to_string(i8* %115, i8* %114, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #7
  br i1 %110, label %117, label %118

117:                                              ; preds = %113
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %124

118:                                              ; preds = %113
  %119 = ptrtoint i8* %116 to i64
  %120 = ptrtoint i8* %109 to i64
  %121 = add i64 %119, 1
  %122 = sub i64 %121, %120
  %123 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %122) #7
  call void @halide_print(i8* %0, i8* nonnull %109) #7
  br label %124

124:                                              ; preds = %118, %117
  call void @free(i8* %109) #7
  br label %125

125:                                              ; preds = %124, %99
  %126 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10), align 8, !tbaa !54
  call void %126(i32 %70) #7
  call void @halide_free(i8* %0, i8* %104) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #9
  br label %153

127:                                              ; preds = %82
  %128 = load i32 ()*, i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 5), align 8, !tbaa !49
  %129 = call i32 %128() #7
  %130 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 1), align 8, !tbaa !45
  call void %130(i32 %129, i32 %70) #7
  %131 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i64 0, i64 0)) #8
  br i1 %131, label %153, label %132

132:                                              ; preds = %127
  %133 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 20), align 8, !tbaa !63
  call void %133(i32 %129) #7
  %134 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i64 0, i64 0)) #8
  br i1 %134, label %153, label %135

135:                                              ; preds = %132
  %136 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10), align 8, !tbaa !54
  call void %136(i32 %70) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #9
  %137 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16), align 8, !tbaa !59
  call void %137(i32 %129, i32 35714, i32* nonnull %9) #7
  %138 = load i32, i32* %9, align 4, !tbaa !86
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %141) #9
  %142 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16), align 8, !tbaa !59
  call void %142(i32 %129, i32 35716, i32* nonnull %10) #7
  %143 = load i32, i32* %10, align 4, !tbaa !86
  %144 = sext i32 %143 to i64
  %145 = call i8* @halide_malloc(i8* %0, i64 %144) #7
  %146 = icmp eq i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %140
  %148 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 15), align 8, !tbaa !58
  %149 = load i32, i32* %10, align 4, !tbaa !86
  call void %148(i32 %129, i32 %149, i32* null, i8* nonnull %145) #7
  br label %150

150:                                              ; preds = %140, %147
  %151 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9), align 8, !tbaa !53
  call void %151(i32 %129) #7
  call void @halide_free(i8* %0, i8* %145) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %141) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #9
  br label %159

152:                                              ; preds = %72, %79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #9
  br label %159

153:                                              ; preds = %127, %132, %125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #9
  br label %159

154:                                              ; preds = %135
  %155 = getelementptr inbounds i8, i8* %64, i64 8
  %156 = bitcast i8* %155 to i32*
  store i32 %129, i32* %156, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #9
  %157 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i64 0, i64 0)) #7
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %39

159:                                              ; preds = %154, %62, %29, %150, %153, %152, %24, %4
  %160 = phi i32 [ %11, %4 ], [ 0, %24 ], [ -1, %152 ], [ -1, %153 ], [ -1, %150 ], [ 0, %29 ], [ 0, %154 ], [ -1, %62 ]
  ret i32 %160
}

declare i64 @strlen(i8*) local_unnamed_addr #2

declare i8* @strstr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_openglcompute_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_openglcompute_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_openglcompute_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_openglcompute_device_interface() local_unnamed_addr #4 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE
}

declare extern_weak void @halide_use_jit_module() #2

declare extern_weak void @halide_release_jit_module() #2

declare extern_weak i32 @halide_default_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #2

declare extern_weak i32 @halide_default_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #2

declare extern_weak i32 @halide_default_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #2

declare extern_weak i32 @halide_default_device_release_crop(i8*, %struct.halide_buffer_t*) #2

declare extern_weak i32 @halide_default_device_wrap_native(i8*, %struct.halide_buffer_t*, i64) #2

declare extern_weak i32 @halide_default_device_detach_native(i8*, %struct.halide_buffer_t*) #2

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

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nofree nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!38 = !{!39, !17, i64 0}
!39 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE", !17, i64 0, !21, i64 8, !17, i64 16}
!40 = distinct !{!40, !8}
!41 = !{!42, !17, i64 112}
!42 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE", !43, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240}
!43 = !{!"bool", !5, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!42, !17, i64 8}
!46 = !{!42, !17, i64 16}
!47 = !{!42, !17, i64 24}
!48 = !{!42, !17, i64 32}
!49 = !{!42, !17, i64 40}
!50 = !{!42, !17, i64 48}
!51 = !{!42, !17, i64 56}
!52 = !{!42, !17, i64 64}
!53 = !{!42, !17, i64 72}
!54 = !{!42, !17, i64 80}
!55 = !{!42, !17, i64 88}
!56 = !{!42, !17, i64 96}
!57 = !{!42, !17, i64 104}
!58 = !{!42, !17, i64 120}
!59 = !{!42, !17, i64 128}
!60 = !{!42, !17, i64 136}
!61 = !{!42, !17, i64 144}
!62 = !{!42, !17, i64 152}
!63 = !{!42, !17, i64 160}
!64 = !{!42, !17, i64 168}
!65 = !{!42, !17, i64 176}
!66 = !{!42, !17, i64 184}
!67 = !{!42, !17, i64 192}
!68 = !{!42, !17, i64 200}
!69 = !{!42, !17, i64 208}
!70 = !{!42, !17, i64 216}
!71 = !{!42, !17, i64 224}
!72 = !{!42, !17, i64 232}
!73 = !{!42, !17, i64 240}
!74 = !{i8 0, i8 2}
!75 = !{!76, !17, i64 0}
!76 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE", !17, i64 0, !17, i64 8}
!77 = !{!39, !17, i64 16}
!78 = !{!39, !21, i64 8}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = !{i64 0, i64 1, !82, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 8, !37, i64 40, i64 8, !37, i64 48, i64 8, !37, i64 56, i64 8, !37, i64 64, i64 8, !37, i64 72, i64 8, !37, i64 80, i64 8, !37, i64 88, i64 8, !37, i64 96, i64 8, !37, i64 104, i64 8, !37, i64 112, i64 8, !37, i64 120, i64 8, !37, i64 128, i64 8, !37, i64 136, i64 8, !37, i64 144, i64 8, !37, i64 152, i64 8, !37, i64 160, i64 8, !37, i64 168, i64 8, !37, i64 176, i64 8, !37, i64 184, i64 8, !37, i64 192, i64 8, !37, i64 200, i64 8, !37, i64 208, i64 8, !37, i64 216, i64 8, !37, i64 224, i64 8, !37, i64 232, i64 8, !37, i64 240, i64 8, !37}
!82 = !{!43, !43, i64 0}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = !{!21, !21, i64 0}
!87 = !{!16, !17, i64 8}
!88 = !{!89, !17, i64 120}
!89 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!90 = !{!91, !17, i64 0}
!91 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!92 = !{!91, !17, i64 8}
!93 = distinct !{!93, !8}
!94 = !{i64 0, i64 8, !3, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !3, i64 32, i64 1, !95, i64 33, i64 1, !36, i64 34, i64 2, !96, i64 36, i64 4, !86, i64 40, i64 8, !37, i64 48, i64 8, !37}
!95 = !{!19, !19, i64 0}
!96 = !{!20, !20, i64 0}
!97 = !{!16, !19, i64 32}
!98 = !{!16, !5, i64 33}
!99 = distinct !{!99, !8}
!100 = distinct !{!100, !8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = distinct !{!103, !8}
!104 = distinct !{!104, !8}
!105 = distinct !{!105, !8}
!106 = distinct !{!106, !8}
!107 = distinct !{!107, !8}
!108 = distinct !{!108, !8}
!109 = distinct !{!109, !8}
!110 = distinct !{!110, !8}
!111 = distinct !{!111, !8}
!112 = distinct !{!112, !8}
!113 = distinct !{!113, !8}
!114 = distinct !{!114, !8}
!115 = distinct !{!115, !8}
!116 = distinct !{!116, !8}
!117 = distinct !{!117, !8}
!118 = distinct !{!118, !8}
!119 = distinct !{!119, !8}
!120 = distinct !{!120, !8}
!121 = distinct !{!121, !8}
!122 = distinct !{!122, !8}
!123 = !{!18, !19, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !5, i64 0}
!126 = distinct !{!126, !8}
!127 = !{!76, !17, i64 8}
