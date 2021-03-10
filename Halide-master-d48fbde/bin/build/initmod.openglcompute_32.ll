; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" = type { i8, void (i32, i32)*, void (i32, i32)*, void (i32, i32, i32)*, void (i32, i32, i8*, i32)*, i32 ()*, void (i32)*, i32 (i32)*, void (i32, i32*)*, void (i32)*, void (i32)*, void (i32, i32, i32)*, void ()*, void (i32, i32*)*, i32 ()*, void (i32, i32, i32*, i8*)*, void (i32, i32, i32*)*, void (i32, i32, i32*, i8*)*, void (i32, i32, i32*)*, i8* (i32)*, void (i32)*, i8* (i32, i32, i32, i32)*, void (i32)*, void (i32, i32, i8**, i32*)*, void (i32, i32)*, void (i32, i32)*, void (i32, float)*, void (i32)*, void (i32)*, void (i32, i32, i32, i32*, i32*, i32*, i8*)*, i32 (i32, i8*)* }
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE = weak global %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* null, align 4
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE }, align 4
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_sync, i32 (i8*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_default_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_default_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_default_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 4
@.str.133 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

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
  %12 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %10 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), %9 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %8 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), %7 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), %6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %5 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %4 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %3 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %2 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %1 ]
  ret i8* %12
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %0, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, i32 0, i32 0
  %4 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %3, align 4, !tbaa !37
  %5 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %12
  %7 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %14, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !tbaa !38
  %10 = tail call i32 @strcmp(i8* %0, i8* %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i32 0, i32 2
  %14 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %13, align 4, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, null
  br i1 %15, label %16, label %6, !llvm.loop !40

16:                                               ; preds = %6, %12, %2
  %17 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ null, %2 ], [ null, %12 ], [ %7, %6 ]
  ret %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %17
}

declare i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) %0, i8* %1, i8* %2) local_unnamed_addr #5 align 2 {
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 14
  %5 = load i32 ()*, i32 ()** %4, align 4, !tbaa !41
  %6 = tail call i32 %5() #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = tail call i8* @malloc(i32 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #7
  %16 = tail call i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %6) #8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0)) #7
  br label %22

20:                                               ; preds = %13
  %21 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %16) #7
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  %25 = sext i32 %6 to i64
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %14, i64 %25, i32 1) #7
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #7
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #7
  %29 = icmp eq i8* %2, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0)) #7
  br label %34

32:                                               ; preds = %22
  %33 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* nonnull %2) #7
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i8* [ %33, %32 ], [ %31, %30 ]
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #7
  br i1 %10, label %37, label %38

37:                                               ; preds = %34
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %45

38:                                               ; preds = %34
  %39 = ptrtoint i8* %36 to i32
  %40 = ptrtoint i8* %9 to i32
  %41 = add i32 %39, 1
  %42 = sub i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %9, i64 %43) #7
  tail call void @halide_error(i8* %1, i8* nonnull %9) #7
  br label %45

45:                                               ; preds = %37, %38
  call void @free(i8* %9) #7
  br label %46

46:                                               ; preds = %3, %45
  %47 = xor i1 %7, true
  ret i1 %47
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) %0) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 0
  store i8 0, i8* %2, align 4, !tbaa !44
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 1
  store void (i32, i32)* null, void (i32, i32)** %3, align 4, !tbaa !45
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 2
  store void (i32, i32)* null, void (i32, i32)** %4, align 4, !tbaa !46
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 3
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %5, align 4, !tbaa !47
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 4
  store void (i32, i32, i8*, i32)* null, void (i32, i32, i8*, i32)** %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 5
  store i32 ()* null, i32 ()** %7, align 4, !tbaa !49
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 6
  store void (i32)* null, void (i32)** %8, align 4, !tbaa !50
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 7
  store i32 (i32)* null, i32 (i32)** %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 8
  store void (i32, i32*)* null, void (i32, i32*)** %10, align 4, !tbaa !52
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 9
  store void (i32)* null, void (i32)** %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 10
  store void (i32)* null, void (i32)** %12, align 4, !tbaa !54
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 11
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %13, align 4, !tbaa !55
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 12
  store void ()* null, void ()** %14, align 4, !tbaa !56
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 13
  store void (i32, i32*)* null, void (i32, i32*)** %15, align 4, !tbaa !57
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 14
  store i32 ()* null, i32 ()** %16, align 4, !tbaa !41
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 15
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %17, align 4, !tbaa !58
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 16
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 17
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 18
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %20, align 4, !tbaa !61
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 19
  store i8* (i32)* null, i8* (i32)** %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 20
  store void (i32)* null, void (i32)** %22, align 4, !tbaa !63
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 21
  store i8* (i32, i32, i32, i32)* null, i8* (i32, i32, i32, i32)** %23, align 4, !tbaa !64
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 22
  store void (i32)* null, void (i32)** %24, align 4, !tbaa !65
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 23
  store void (i32, i32, i8**, i32*)* null, void (i32, i32, i8**, i32*)** %25, align 4, !tbaa !66
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 24
  store void (i32, i32)* null, void (i32, i32)** %26, align 4, !tbaa !67
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 25
  store void (i32, i32)* null, void (i32, i32)** %27, align 4, !tbaa !68
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 26
  store void (i32, float)* null, void (i32, float)** %28, align 4, !tbaa !69
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 27
  store void (i32)* null, void (i32)** %29, align 4, !tbaa !70
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 28
  store void (i32)* null, void (i32)** %30, align 4, !tbaa !71
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 29
  store void (i32, i32, i32, i32*, i32*, i32*, i8*)* null, void (i32, i32, i32, i32*, i32*, i32*, i8*)** %31, align 4, !tbaa !72
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 30
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %32, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* %1, i8** %2, i1 zeroext %3) local_unnamed_addr #5 {
  %5 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) #7
  %6 = icmp eq i8* %5, null
  %7 = and i1 %6, %3
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = tail call i8* @malloc(i32 1024) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0)) #7
  %16 = icmp eq i8* %1, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0)) #7
  br label %21

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %1) #7
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ]
  br i1 %10, label %23, label %24

23:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %31

24:                                               ; preds = %21
  %25 = ptrtoint i8* %22 to i32
  %26 = ptrtoint i8* %9 to i32
  %27 = sub i32 1, %26
  %28 = add i32 %27, %25
  %29 = sext i32 %28 to i64
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %29) #7
  tail call void @halide_error(i8* %0, i8* nonnull %9) #7
  br label %31

31:                                               ; preds = %24, %23
  tail call void @free(i8* %9) #7
  br label %33

32:                                               ; preds = %4
  store i8* %5, i8** %2, align 4, !tbaa !37
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i32 [ 0, %32 ], [ -1, %31 ]
  ret i32 %34
}

declare i8* @halide_opengl_get_proc_address(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) local_unnamed_addr #5 {
  %2 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %115

4:                                                ; preds = %1
  tail call void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE) #8
  %5 = tail call i32 @halide_opengl_create_context(i8* %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i32 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #7
  %15 = ptrtoint i8* %14 to i32
  %16 = ptrtoint i8* %8 to i32
  %17 = add i32 %15, 1
  %18 = sub i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %19) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %21

21:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %115

22:                                               ; preds = %4
  %23 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 1) to i8**), i1 zeroext true) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %115, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2) to i8**), i1 zeroext true) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %115, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 3) to i8**), i1 zeroext true) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %115, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8** bitcast (void (i32, i32, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 4) to i8**), i1 zeroext true) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %115, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 5) to i8**), i1 zeroext true) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %115, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 6) to i8**), i1 zeroext true) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %115, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8** bitcast (i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 7) to i8**), i1 zeroext true) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %115, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 8) to i8**), i1 zeroext true) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %115, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9) to i8**), i1 zeroext true) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %115, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10) to i8**), i1 zeroext true) #8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %115, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 11) to i8**), i1 zeroext true) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8** bitcast (void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 12) to i8**), i1 zeroext true) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 13) to i8**), i1 zeroext true) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %115, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 14) to i8**), i1 zeroext true) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %115, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 15) to i8**), i1 zeroext true) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16) to i8**), i1 zeroext true) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %115, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 17) to i8**), i1 zeroext true) #8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %115, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18) to i8**), i1 zeroext true) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %115, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8** bitcast (i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 19) to i8**), i1 zeroext true) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %115, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 20) to i8**), i1 zeroext true) #8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8** bitcast (i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21) to i8**), i1 zeroext true) #8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 22) to i8**), i1 zeroext true) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %115, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8** bitcast (void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 23) to i8**), i1 zeroext true) #8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 24) to i8**), i1 zeroext true) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %91
  %95 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 25) to i8**), i1 zeroext true) #8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8** bitcast (void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 26) to i8**), i1 zeroext true) #8
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27) to i8**), i1 zeroext true) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 28) to i8**), i1 zeroext true) #8
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i8** bitcast (void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 29) to i8**), i1 zeroext true) #8
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8** bitcast (i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 30) to i8**), i1 zeroext true) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 19), align 4, !tbaa !62
  %114 = tail call i8* %113(i32 7938) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44
  br label %115

115:                                              ; preds = %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %1, %112, %21
  %116 = phi i32 [ -1, %21 ], [ 0, %112 ], [ 0, %1 ], [ -1, %22 ], [ -1, %25 ], [ -1, %28 ], [ -1, %31 ], [ -1, %34 ], [ -1, %37 ], [ -1, %40 ], [ -1, %43 ], [ -1, %46 ], [ -1, %49 ], [ -1, %52 ], [ -1, %55 ], [ -1, %58 ], [ -1, %61 ], [ -1, %64 ], [ -1, %67 ], [ -1, %70 ], [ -1, %73 ], [ -1, %76 ], [ -1, %79 ], [ -1, %82 ], [ -1, %85 ], [ -1, %88 ], [ -1, %91 ], [ -1, %94 ], [ -1, %97 ], [ -1, %100 ], [ -1, %103 ], [ -1, %106 ], [ -1, %109 ]
  ret i32 %116
}

declare i32 @halide_opengl_create_context(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv(i8* %0) #0 {
  %2 = alloca %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", align 4
  %3 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 4, !tbaa !37
  %4 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %21
  %6 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %23, %21 ], [ %3, %1 ]
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %6, i32 0, i32 0
  %8 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %7, align 4, !tbaa !75
  %9 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5, %10
  %11 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i32 0, i32 2
  %13 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %12, align 4, !tbaa !77
  %14 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9), align 4, !tbaa !53
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i32 0, i32 1
  %16 = load i32, i32* %15, align 4, !tbaa !78
  tail call void %14(i32 %16) #7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11, i32 0, i32 0
  %18 = load i8*, i8** %17, align 4, !tbaa !38
  tail call void @free(i8* %18) #7
  %19 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %11 to i8*
  tail call void @free(i8* nonnull %19) #7
  %20 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %13, null
  br i1 %20, label %21, label %10, !llvm.loop !79

21:                                               ; preds = %10, %5
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %7, align 4, !tbaa !75
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %6, i32 0, i32 1
  %23 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %22, align 4, !tbaa !37
  %24 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %23, null
  br i1 %24, label %25, label %5, !llvm.loop !80

25:                                               ; preds = %21, %1
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 124, i8* nonnull %26)
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(124) %26, i8 0, i32 124, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(124) getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), i8* nonnull align 4 dereferenceable(124) %26, i32 124, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0i8(i64 124, i8* nonnull %26)
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %120

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !24
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %12 = load i8, i8* %11, align 1, !tbaa !23
  br label %51

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !25
  br label %16

16:                                               ; preds = %28, %13
  %17 = phi i32 [ 0, %13 ], [ %30, %28 ]
  %18 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %17, i32 2
  %20 = load i32, i32* %19, align 4, !tbaa !26
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %17, i32 1
  %24 = load i32, i32* %23, align 4, !tbaa !31
  %25 = add nsw i32 %24, -1
  %26 = mul nsw i32 %25, %20
  %27 = add nsw i32 %26, %18
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %27, %22 ], [ %18, %16 ]
  %30 = add nuw nsw i32 %17, 1
  %31 = icmp slt i32 %30, %8
  br i1 %31, label %16, label %32, !llvm.loop !83

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %34 = load i8, i8* %33, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %47, %32
  %36 = phi i32 [ 0, %32 ], [ %49, %47 ]
  %37 = phi i32 [ 0, %32 ], [ %48, %47 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %36, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %36, i32 1
  %43 = load i32, i32* %42, align 4, !tbaa !31
  %44 = add nsw i32 %43, -1
  %45 = mul nsw i32 %44, %39
  %46 = add nsw i32 %45, %37
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ %46, %41 ], [ %37, %35 ]
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp slt i32 %49, %8
  br i1 %50, label %35, label %51, !llvm.loop !84

51:                                               ; preds = %47, %10
  %52 = phi i8 [ %12, %10 ], [ %34, %47 ]
  %53 = phi i32 [ 0, %10 ], [ %29, %47 ]
  %54 = phi i32 [ 0, %10 ], [ %48, %47 ]
  %55 = zext i8 %52 to i32
  %56 = add nuw nsw i32 %55, 7
  %57 = lshr i32 %56, 3
  %58 = add nsw i32 %53, 1
  %59 = sub i32 %58, %54
  %60 = mul i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.64, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %63

63:                                               ; preds = %62, %51
  %64 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !22
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4, !tbaa !24
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %75

72:                                               ; preds = %84, %67
  %73 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %120

75:                                               ; preds = %70, %84
  %76 = phi i32 [ %68, %70 ], [ %85, %84 ]
  %77 = phi i32 [ 0, %70 ], [ %86, %84 ]
  %78 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %79 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %78, i32 %77, i32 2
  %80 = load i32, i32* %79, align 4, !tbaa !26
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.66, i32 0, i32 0)) #7
  tail call void @abort() #7
  %83 = load i32, i32* %7, align 4, !tbaa !24
  br label %84

84:                                               ; preds = %75, %82
  %85 = phi i32 [ %76, %75 ], [ %83, %82 ]
  %86 = add nuw nsw i32 %77, 1
  %87 = icmp slt i32 %86, %85
  br i1 %87, label %75, label %72, !llvm.loop !85

88:                                               ; preds = %72
  %89 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #9
  %90 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 13), align 4, !tbaa !57
  call void %90(i32 1, i32* nonnull %3) #7
  %91 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0)) #8
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !tbaa !46
  %94 = load i32, i32* %3, align 4, !tbaa !86
  call void %93(i32 34962, i32 %94) #7
  %95 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0)) #8
  br i1 %95, label %118, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %98 = load i8, i8* %97, align 1, !tbaa !23
  %99 = zext i8 %98 to i16
  %100 = add nuw nsw i16 %99, 7
  %101 = lshr i16 %100, 3
  %102 = trunc i16 %101 to i8
  %103 = udiv i8 4, %102
  %104 = zext i8 %103 to i32
  %105 = mul i32 %60, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.76, i32 0, i32 0)) #7
  call void @abort() #7
  br label %108

108:                                              ; preds = %107, %96
  %109 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 4), align 4, !tbaa !48
  call void %109(i32 34962, i32 %105, i8* null, i32 35050) #7
  %110 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #8
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4, !tbaa !86
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %64, align 8, !tbaa !22
  %114 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, %struct.halide_device_interface_t** %114, align 8, !tbaa !87
  %115 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, i32 0, i32 15), align 4, !tbaa !88
  %116 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %115, i32 0, i32 0
  %117 = load void ()*, void ()** %116, align 4, !tbaa !90
  call void %117() #7
  br label %118

118:                                              ; preds = %108, %92, %88, %111
  %119 = phi i32 [ 0, %111 ], [ 1, %88 ], [ 1, %92 ], [ 1, %108 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #9
  br label %120

120:                                              ; preds = %63, %118, %72, %2
  %121 = phi i32 [ %4, %2 ], [ %119, %118 ], [ %73, %72 ], [ 0, %63 ]
  ret i32 %121
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca i32, align 4
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = tail call i8* @malloc(i32 1024) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.79, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.79, i32 0, i32 0)) #7
  %14 = ptrtoint i8* %13 to i32
  %15 = ptrtoint i8* %7 to i32
  %16 = add i32 %14, 1
  %17 = sub i32 %16, %15
  %18 = sext i32 %17 to i64
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %18) #7
  tail call void @halide_error(i8* %0, i8* nonnull %7) #7
  br label %20

20:                                               ; preds = %11, %9
  tail call void @free(i8* %7) #7
  br label %35

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8, !tbaa !22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #9
  %27 = trunc i64 %23 to i32
  store i32 %27, i32* %3, align 4, !tbaa !86
  %28 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 8), align 4, !tbaa !52
  call void %28(i32 1, i32* nonnull %3) #7
  store i64 0, i64* %22, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %30 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %29, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %30, i32 0, i32 15
  %32 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %31, align 4, !tbaa !88
  %33 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %32, i32 0, i32 1
  %34 = load void ()*, void ()** %33, align 4, !tbaa !92
  call void %34() #7
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %29, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9
  br label %35

35:                                               ; preds = %21, %25, %20
  %36 = phi i32 [ 0, %25 ], [ 1, %20 ], [ 0, %21 ]
  ret i32 %36
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = tail call i8* @malloc(i32 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.83, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.83, i32 0, i32 0)) #7
  %15 = ptrtoint i8* %14 to i32
  %16 = ptrtoint i8* %8 to i32
  %17 = add i32 %15, 1
  %18 = sub i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %19) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %21

21:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %148

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !22
  %25 = trunc i64 %24 to i32
  %26 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !tbaa !46
  tail call void %26(i32 34962, i32 %25) #7
  %27 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0)) #8
  br i1 %27, label %148, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %30 = load i32, i32* %29, align 4, !tbaa !24
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %34 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %33, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ 0, %32 ], [ %41, %35 ]
  %37 = phi i32 [ 1, %32 ], [ %40, %35 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %36, i32 1
  %39 = load i32, i32* %38, align 4, !tbaa !31
  %40 = mul i32 %39, %37
  %41 = add nuw nsw i32 %36, 1
  %42 = icmp slt i32 %41, %30
  br i1 %42, label %35, label %43, !llvm.loop !93

43:                                               ; preds = %35
  %44 = shl i32 %40, 2
  br label %45

45:                                               ; preds = %43, %28
  %46 = phi i32 [ 4, %28 ], [ %44, %43 ]
  %47 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !tbaa !46
  tail call void %47(i32 34962, i32 %25) #7
  %48 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0)) #8
  br i1 %48, label %148, label %49

49:                                               ; preds = %45
  %50 = load i8* (i32, i32, i32, i32)*, i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21), align 4, !tbaa !64
  %51 = tail call i8* %50(i32 34962, i32 0, i32 %46, i32 3) #7
  %52 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0)) #8
  br i1 %52, label %148, label %53

53:                                               ; preds = %49
  %54 = bitcast %struct.halide_buffer_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %54) #9
  %55 = bitcast %struct.halide_buffer_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %54, i8* nonnull align 8 dereferenceable(40) %55, i32 40, i1 false), !tbaa.struct !94
  %56 = ptrtoint i8* %51 to i32
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  store i64 %57, i64* %58, align 8, !tbaa !22
  %59 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %59) #9
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #8
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0
  %61 = load i8, i8* %60, align 8, !tbaa !97
  switch i8 %61, label %144 [
    i8 0, label %62
    i8 1, label %92
    i8 2, label %122
  ]

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %64 = load i8, i8* %63, align 1, !tbaa !98
  switch i8 %64, label %77 [
    i8 8, label %65
    i8 16, label %68
    i8 32, label %74
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %67 = load i64, i64* %66, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %67, i64 0) #8
  br label %144

68:                                               ; preds = %62
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6
  %70 = load i64, i64* %69, align 8, !tbaa !12
  %71 = lshr i64 %70, 1
  store i64 %71, i64* %69, align 8, !tbaa !12
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %73 = load i64, i64* %72, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %73, i64 0) #8
  br label %144

74:                                               ; preds = %62
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %76 = load i64, i64* %75, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %76, i64 0) #8
  br label %144

77:                                               ; preds = %62
  %78 = call i8* @malloc(i32 1024) #7
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i8* @halide_string_to_string(i8* %78, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %91

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, i8* %78, i32 1023
  store i8 0, i8* %83, align 1, !tbaa !36
  %84 = call i8* @halide_string_to_string(i8* nonnull %78, i8* nonnull %83, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  %85 = ptrtoint i8* %84 to i32
  %86 = ptrtoint i8* %78 to i32
  %87 = add i32 %85, 1
  %88 = sub i32 %87, %86
  %89 = sext i32 %88 to i64
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %78, i64 %89) #7
  call void @halide_error(i8* %0, i8* nonnull %78) #7
  br label %91

91:                                               ; preds = %82, %80
  call void @free(i8* %78) #7
  br label %146

92:                                               ; preds = %53
  %93 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %94 = load i8, i8* %93, align 1, !tbaa !98
  switch i8 %94, label %107 [
    i8 8, label %95
    i8 16, label %98
    i8 32, label %104
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %97 = load i64, i64* %96, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %97, i64 0) #8
  br label %144

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6
  %100 = load i64, i64* %99, align 8, !tbaa !12
  %101 = lshr i64 %100, 1
  store i64 %101, i64* %99, align 8, !tbaa !12
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %103 = load i64, i64* %102, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %103, i64 0) #8
  br label %144

104:                                              ; preds = %92
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %106 = load i64, i64* %105, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %106, i64 0) #8
  br label %144

107:                                              ; preds = %92
  %108 = call i8* @malloc(i32 1024) #7
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i8* @halide_string_to_string(i8* %108, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %121

112:                                              ; preds = %107
  %113 = getelementptr inbounds i8, i8* %108, i32 1023
  store i8 0, i8* %113, align 1, !tbaa !36
  %114 = call i8* @halide_string_to_string(i8* nonnull %108, i8* nonnull %113, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  %115 = ptrtoint i8* %114 to i32
  %116 = ptrtoint i8* %108 to i32
  %117 = add i32 %115, 1
  %118 = sub i32 %117, %116
  %119 = sext i32 %118 to i64
  %120 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %108, i64 %119) #7
  call void @halide_error(i8* %0, i8* nonnull %108) #7
  br label %121

121:                                              ; preds = %112, %110
  call void @free(i8* %108) #7
  br label %146

122:                                              ; preds = %53
  %123 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %124 = load i8, i8* %123, align 1, !tbaa !98
  %125 = icmp eq i8 %124, 32
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %128 = load i64, i64* %127, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %128, i64 0) #8
  br label %144

129:                                              ; preds = %122
  %130 = call i8* @malloc(i32 1024) #7
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i8* @halide_string_to_string(i8* %130, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %143

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, i8* %130, i32 1023
  store i8 0, i8* %135, align 1, !tbaa !36
  %136 = call i8* @halide_string_to_string(i8* nonnull %130, i8* nonnull %135, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0)) #7
  %137 = ptrtoint i8* %136 to i32
  %138 = ptrtoint i8* %130 to i32
  %139 = add i32 %137, 1
  %140 = sub i32 %139, %138
  %141 = sext i32 %140 to i64
  %142 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %130, i64 %141) #7
  call void @halide_error(i8* %0, i8* nonnull %130) #7
  br label %143

143:                                              ; preds = %134, %132
  call void @free(i8* %130) #7
  br label %144

144:                                              ; preds = %53, %98, %104, %95, %126, %143, %65, %74, %68
  %145 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27), align 4, !tbaa !70
  call void %145(i32 34962) #7
  br label %146

146:                                              ; preds = %144, %121, %91
  %147 = phi i32 [ 0, %144 ], [ -1, %91 ], [ -1, %121 ]
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %59) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %54) #9
  br label %148

148:                                              ; preds = %22, %146, %49, %45, %21
  %149 = phi i32 [ 1, %21 ], [ 1, %22 ], [ 1, %45 ], [ %147, %146 ], [ 1, %49 ]
  ret i32 %149
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !99

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i32*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i8*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  %45 = load i8, i8* %43, align 1, !tbaa !36
  %46 = sext i8 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i32 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !100

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !101

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !102

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i32*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i16*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i16, i16* %43, i32 1
  %45 = load i16, i16* %43, align 2, !tbaa !96
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i32 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !103

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !104

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !105

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i32*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i8*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  %45 = load i8, i8* %43, align 1, !tbaa !36
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i32 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !106

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !107

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !108

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i32*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i16*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i16, i16* %43, i32 1
  %45 = load i16, i16* %43, align 2, !tbaa !96
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds i32, i32* %42, i32 1
  store i32 %46, i32* %42, align 4, !tbaa !86
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !109

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !110

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = tail call i8* @malloc(i32 1024) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %13, align 1, !tbaa !36
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i32 0, i32 0)) #7
  %15 = ptrtoint i8* %14 to i32
  %16 = ptrtoint i8* %8 to i32
  %17 = add i32 %15, 1
  %18 = sub i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %19) #7
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7
  br label %21

21:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #7
  br label %184

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !22
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %27 = load i32, i32* %26, align 4, !tbaa !24
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  br label %70

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %34 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %33, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %47, %32
  %36 = phi i32 [ 0, %32 ], [ %49, %47 ]
  %37 = phi i32 [ 0, %32 ], [ %48, %47 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %36, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %36, i32 1
  %43 = load i32, i32* %42, align 4, !tbaa !31
  %44 = add nsw i32 %43, -1
  %45 = mul nsw i32 %44, %39
  %46 = add nsw i32 %45, %37
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ %46, %41 ], [ %37, %35 ]
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp slt i32 %49, %27
  br i1 %50, label %35, label %51, !llvm.loop !83

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %53 = load i8, i8* %52, align 1, !tbaa !23
  br label %54

54:                                               ; preds = %66, %51
  %55 = phi i32 [ 0, %51 ], [ %68, %66 ]
  %56 = phi i32 [ 0, %51 ], [ %67, %66 ]
  %57 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %55, i32 2
  %58 = load i32, i32* %57, align 4, !tbaa !26
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %55, i32 1
  %62 = load i32, i32* %61, align 4, !tbaa !31
  %63 = add nsw i32 %62, -1
  %64 = mul nsw i32 %63, %58
  %65 = add nsw i32 %64, %56
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i32 [ %65, %60 ], [ %56, %54 ]
  %68 = add nuw nsw i32 %55, 1
  %69 = icmp slt i32 %68, %27
  br i1 %69, label %54, label %70, !llvm.loop !84

70:                                               ; preds = %66, %29
  %71 = phi i8 [ %31, %29 ], [ %53, %66 ]
  %72 = phi i32 [ 0, %29 ], [ %48, %66 ]
  %73 = phi i32 [ 0, %29 ], [ %67, %66 ]
  %74 = zext i8 %71 to i32
  %75 = add nuw nsw i32 %74, 7
  %76 = lshr i32 %75, 3
  %77 = add nsw i32 %72, 1
  %78 = sub i32 %77, %73
  %79 = mul i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.94, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %82

82:                                               ; preds = %81, %70
  %83 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !tbaa !46
  tail call void %83(i32 34962, i32 %25) #7
  %84 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0)) #8
  br i1 %84, label %184, label %85

85:                                               ; preds = %82
  %86 = load i8* (i32, i32, i32, i32)*, i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21), align 4, !tbaa !64
  %87 = tail call i8* %86(i32 34962, i32 0, i32 %79, i32 1) #7
  %88 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0)) #8
  br i1 %88, label %184, label %89

89:                                               ; preds = %85
  %90 = bitcast %struct.halide_buffer_t* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %90) #9
  %91 = bitcast %struct.halide_buffer_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %90, i8* nonnull align 8 dereferenceable(40) %91, i32 40, i1 false), !tbaa.struct !94
  %92 = ptrtoint i8* %87 to i32
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  store i64 %93, i64* %94, align 8, !tbaa !22
  %95 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %95) #9
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #8
  %96 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0
  %97 = load i8, i8* %96, align 8, !tbaa !97
  switch i8 %97, label %180 [
    i8 0, label %98
    i8 1, label %128
    i8 2, label %158
  ]

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %100 = load i8, i8* %99, align 1, !tbaa !98
  switch i8 %100, label %113 [
    i8 8, label %101
    i8 16, label %104
    i8 32, label %110
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %103 = load i64, i64* %102, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %103) #8
  br label %180

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6
  %106 = load i64, i64* %105, align 8, !tbaa !12
  %107 = lshr i64 %106, 1
  store i64 %107, i64* %105, align 8, !tbaa !12
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %109 = load i64, i64* %108, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %109) #8
  br label %180

110:                                              ; preds = %98
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %112 = load i64, i64* %111, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %112) #8
  br label %180

113:                                              ; preds = %98
  %114 = call i8* @malloc(i32 1024) #7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i8* @halide_string_to_string(i8* %114, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %127

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, i8* %114, i32 1023
  store i8 0, i8* %119, align 1, !tbaa !36
  %120 = call i8* @halide_string_to_string(i8* nonnull %114, i8* nonnull %119, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  %121 = ptrtoint i8* %120 to i32
  %122 = ptrtoint i8* %114 to i32
  %123 = add i32 %121, 1
  %124 = sub i32 %123, %122
  %125 = sext i32 %124 to i64
  %126 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %114, i64 %125) #7
  call void @halide_error(i8* %0, i8* nonnull %114) #7
  br label %127

127:                                              ; preds = %118, %116
  call void @free(i8* %114) #7
  br label %182

128:                                              ; preds = %89
  %129 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %130 = load i8, i8* %129, align 1, !tbaa !98
  switch i8 %130, label %143 [
    i8 8, label %131
    i8 16, label %134
    i8 32, label %140
  ]

131:                                              ; preds = %128
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %133 = load i64, i64* %132, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %133) #8
  br label %180

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6
  %136 = load i64, i64* %135, align 8, !tbaa !12
  %137 = lshr i64 %136, 1
  store i64 %137, i64* %135, align 8, !tbaa !12
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %139 = load i64, i64* %138, align 8, !tbaa !14
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %139) #8
  br label %180

140:                                              ; preds = %128
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %142 = load i64, i64* %141, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %142) #8
  br label %180

143:                                              ; preds = %128
  %144 = call i8* @malloc(i32 1024) #7
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i8* @halide_string_to_string(i8* %144, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %157

148:                                              ; preds = %143
  %149 = getelementptr inbounds i8, i8* %144, i32 1023
  store i8 0, i8* %149, align 1, !tbaa !36
  %150 = call i8* @halide_string_to_string(i8* nonnull %144, i8* nonnull %149, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #7
  %151 = ptrtoint i8* %150 to i32
  %152 = ptrtoint i8* %144 to i32
  %153 = add i32 %151, 1
  %154 = sub i32 %153, %152
  %155 = sext i32 %154 to i64
  %156 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %144, i64 %155) #7
  call void @halide_error(i8* %0, i8* nonnull %144) #7
  br label %157

157:                                              ; preds = %148, %146
  call void @free(i8* %144) #7
  br label %182

158:                                              ; preds = %89
  %159 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %160 = load i8, i8* %159, align 1, !tbaa !98
  %161 = icmp eq i8 %160, 32
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2
  %164 = load i64, i64* %163, align 8, !tbaa !14
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %164) #8
  br label %180

165:                                              ; preds = %158
  %166 = call i8* @malloc(i32 1024) #7
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i8* @halide_string_to_string(i8* %166, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %179

170:                                              ; preds = %165
  %171 = getelementptr inbounds i8, i8* %166, i32 1023
  store i8 0, i8* %171, align 1, !tbaa !36
  %172 = call i8* @halide_string_to_string(i8* nonnull %166, i8* nonnull %171, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0)) #7
  %173 = ptrtoint i8* %172 to i32
  %174 = ptrtoint i8* %166 to i32
  %175 = add i32 %173, 1
  %176 = sub i32 %175, %174
  %177 = sext i32 %176 to i64
  %178 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %166, i64 %177) #7
  call void @halide_error(i8* %0, i8* nonnull %166) #7
  br label %179

179:                                              ; preds = %170, %168
  call void @free(i8* %166) #7
  br label %180

180:                                              ; preds = %89, %134, %140, %131, %162, %179, %101, %110, %104
  %181 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27), align 4, !tbaa !70
  call void %181(i32 34962) #7
  br label %182

182:                                              ; preds = %180, %157, %127
  %183 = phi i32 [ 0, %180 ], [ -1, %127 ], [ -1, %157 ]
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %95) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %90) #9
  br label %184

184:                                              ; preds = %82, %85, %182, %21
  %185 = phi i32 [ 1, %21 ], [ 1, %82 ], [ %183, %182 ], [ 1, %85 ]
  ret i32 %185
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !111

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %51

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i8*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i32*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %29 ]
  %42 = phi i8* [ %47, %40 ], [ %34, %29 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %29 ]
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8 %46, i8* %42, align 1, !tbaa !36
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %26, align 8, !tbaa !12
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %62, !llvm.loop !112

51:                                               ; preds = %21, %51
  %52 = phi i64 [ 0, %21 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %21 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %21 ], [ %56, %51 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %54, i64 %53) #8
  %55 = load i64, i64* %23, align 8, !tbaa !3
  %56 = add i64 %55, %54
  %57 = load i64, i64* %24, align 8, !tbaa !3
  %58 = add i64 %57, %53
  %59 = add nuw i64 %52, 1
  %60 = load i64, i64* %18, align 8, !tbaa !3
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %51, label %62, !llvm.loop !113

62:                                               ; preds = %51, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !114

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i16*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i32*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i16* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds i16, i16* %42, i32 1
  store i16 %46, i16* %42, align 2, !tbaa !96
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !115

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !116

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !117

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %51

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i8*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i32*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %29 ]
  %42 = phi i8* [ %47, %40 ], [ %34, %29 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %29 ]
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8 %46, i8* %42, align 1, !tbaa !36
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %26, align 8, !tbaa !12
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %62, !llvm.loop !118

51:                                               ; preds = %21, %51
  %52 = phi i64 [ 0, %21 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %21 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %21 ], [ %56, %51 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %54, i64 %53) #8
  %55 = load i64, i64* %23, align 8, !tbaa !3
  %56 = add i64 %55, %54
  %57 = load i64, i64* %24, align 8, !tbaa !3
  %58 = add i64 %57, %53
  %59 = add nuw i64 %52, 1
  %60 = load i64, i64* %18, align 8, !tbaa !3
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %51, label %62, !llvm.loop !119

62:                                               ; preds = %51, %40, %17, %25
  ret void
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #6 {
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
  br i1 %13, label %6, label %25, !llvm.loop !120

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !11
  %32 = add i64 %31, %3
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i16*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = add i64 %36, %2
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to i32*
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i16* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %29 ], [ %44, %40 ]
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  %45 = load i32, i32* %43, align 4, !tbaa !86
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds i16, i16* %42, i32 1
  store i16 %46, i16* %42, align 2, !tbaa !96
  %48 = add nuw i64 %41, 1
  %49 = icmp ult i64 %48, %27
  br i1 %49, label %40, label %61, !llvm.loop !121

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #8
  %54 = load i64, i64* %23, align 8, !tbaa !3
  %55 = add i64 %54, %53
  %56 = load i64, i64* %24, align 8, !tbaa !3
  %57 = add i64 %56, %52
  %58 = add nuw i64 %51, 1
  %59 = load i64, i64* %18, align 8, !tbaa !3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !122

61:                                               ; preds = %50, %40, %17, %25
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.halide_type_t* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #5 {
  %18 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = tail call i8* @malloc(i32 1024) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i8* @halide_string_to_string(i8* %21, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.107, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %34

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i32 1023
  store i8 0, i8* %26, align 1, !tbaa !36
  %27 = tail call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.107, i32 0, i32 0)) #7
  %28 = ptrtoint i8* %27 to i32
  %29 = ptrtoint i8* %21 to i32
  %30 = add i32 %28, 1
  %31 = sub i32 %30, %29
  %32 = sext i32 %31 to i64
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %32) #7
  tail call void @halide_error(i8* %0, i8* nonnull %21) #7
  br label %34

34:                                               ; preds = %25, %23
  tail call void @free(i8* %21) #7
  br label %242

35:                                               ; preds = %17
  %36 = icmp eq i8* %1, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %35
  %38 = tail call i8* @malloc(i32 1024) #7
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i8* @halide_string_to_string(i8* %38, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.108, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, i8* %38, i32 1023
  store i8 0, i8* %43, align 1, !tbaa !36
  %44 = tail call i8* @halide_string_to_string(i8* nonnull %38, i8* nonnull %43, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.108, i32 0, i32 0)) #7
  %45 = ptrtoint i8* %44 to i32
  %46 = ptrtoint i8* %38 to i32
  %47 = add i32 %45, 1
  %48 = sub i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %38, i64 %49) #7
  tail call void @halide_error(i8* %0, i8* nonnull %38) #7
  br label %51

51:                                               ; preds = %42, %40
  tail call void @free(i8* %38) #7
  br label %242

52:                                               ; preds = %35
  %53 = bitcast i8* %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*
  %54 = tail call %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %2, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* nonnull %53) #8
  %55 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = tail call i8* @malloc(i32 1024) #7
  %58 = icmp eq i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %57, i32 1023
  store i8 0, i8* %60, align 1, !tbaa !36
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0)) #7
  %64 = icmp eq i8* %2, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = tail call i8* @halide_string_to_string(i8* %63, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0)) #7
  br label %69

67:                                               ; preds = %61
  %68 = tail call i8* @halide_string_to_string(i8* %63, i8* %62, i8* nonnull %2) #7
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi i8* [ %68, %67 ], [ %66, %65 ]
  %71 = tail call i8* @halide_string_to_string(i8* %70, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0)) #7
  br i1 %58, label %72, label %73

72:                                               ; preds = %69
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %80

73:                                               ; preds = %69
  %74 = ptrtoint i8* %71 to i32
  %75 = ptrtoint i8* %57 to i32
  %76 = add i32 %74, 1
  %77 = sub i32 %76, %75
  %78 = sext i32 %77 to i64
  %79 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %57, i64 %78) #7
  tail call void @halide_error(i8* %0, i8* nonnull %57) #7
  br label %80

80:                                               ; preds = %73, %72
  tail call void @free(i8* %57) #7
  br label %242

81:                                               ; preds = %52
  %82 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 28), align 4, !tbaa !71
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %54, i32 0, i32 1
  %84 = load i32, i32* %83, align 4, !tbaa !78
  tail call void %82(i32 %84) #7
  %85 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0)) #8
  br i1 %85, label %242, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 0, i32 1
  %88 = load i8, i8* %87, align 1, !tbaa !23
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %235, label %90

90:                                               ; preds = %86, %229
  %91 = phi i8 [ %233, %229 ], [ %88, %86 ]
  %92 = phi %struct.halide_type_t* [ %231, %229 ], [ %10, %86 ]
  %93 = phi i32 [ %230, %229 ], [ 0, %86 ]
  %94 = getelementptr inbounds i8*, i8** %11, i32 %93
  %95 = getelementptr inbounds i8, i8* %12, i32 %93
  %96 = load i8, i8* %95, align 1, !tbaa !36
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %221

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %92, i32 0, i32 0
  %100 = load i8, i8* %99, align 2, !tbaa !123
  switch i8 %100, label %202 [
    i8 0, label %101
    i8 1, label %138
    i8 2, label %175
  ]

101:                                              ; preds = %98
  switch i8 %91, label %115 [
    i8 8, label %102
    i8 16, label %106
    i8 32, label %111
  ]

102:                                              ; preds = %101
  %103 = load i8*, i8** %94, align 4, !tbaa !37
  %104 = load i8, i8* %103, align 1, !tbaa !36
  %105 = sext i8 %104 to i32
  br label %134

106:                                              ; preds = %101
  %107 = bitcast i8** %94 to i16**
  %108 = load i16*, i16** %107, align 4, !tbaa !37
  %109 = load i16, i16* %108, align 2, !tbaa !96
  %110 = sext i16 %109 to i32
  br label %134

111:                                              ; preds = %101
  %112 = bitcast i8** %94 to i32**
  %113 = load i32*, i32** %112, align 4, !tbaa !37
  %114 = load i32, i32* %113, align 4, !tbaa !86
  br label %134

115:                                              ; preds = %101
  %116 = tail call i8* @malloc(i32 1024) #7
  %117 = icmp eq i8* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds i8, i8* %116, i32 1023
  store i8 0, i8* %119, align 1, !tbaa !36
  br label %120

120:                                              ; preds = %115, %118
  %121 = phi i8* [ %119, %118 ], [ null, %115 ]
  %122 = tail call i8* @halide_string_to_string(i8* %116, i8* %121, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0)) #7
  %123 = tail call i8* @halide_type_to_string(i8* %122, i8* %121, %struct.halide_type_t* nonnull %92) #7
  %124 = tail call i8* @halide_string_to_string(i8* %123, i8* %121, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #7
  br i1 %117, label %125, label %126

125:                                              ; preds = %120
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %133

126:                                              ; preds = %120
  %127 = ptrtoint i8* %124 to i32
  %128 = ptrtoint i8* %116 to i32
  %129 = add i32 %127, 1
  %130 = sub i32 %129, %128
  %131 = sext i32 %130 to i64
  %132 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %116, i64 %131) #7
  tail call void @halide_error(i8* %0, i8* nonnull %116) #7
  br label %133

133:                                              ; preds = %126, %125
  tail call void @free(i8* %116) #7
  br label %242

134:                                              ; preds = %106, %111, %102
  %135 = phi i32 [ %105, %102 ], [ %110, %106 ], [ %114, %111 ]
  %136 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 24), align 4, !tbaa !67
  tail call void %136(i32 %93, i32 %135) #7
  %137 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.117, i32 0, i32 0)) #8
  br i1 %137, label %242, label %229

138:                                              ; preds = %98
  switch i8 %91, label %152 [
    i8 8, label %139
    i8 1, label %139
    i8 16, label %143
    i8 32, label %148
  ]

139:                                              ; preds = %138, %138
  %140 = load i8*, i8** %94, align 4, !tbaa !37
  %141 = load i8, i8* %140, align 1, !tbaa !36
  %142 = zext i8 %141 to i32
  br label %171

143:                                              ; preds = %138
  %144 = bitcast i8** %94 to i16**
  %145 = load i16*, i16** %144, align 4, !tbaa !37
  %146 = load i16, i16* %145, align 2, !tbaa !96
  %147 = zext i16 %146 to i32
  br label %171

148:                                              ; preds = %138
  %149 = bitcast i8** %94 to i32**
  %150 = load i32*, i32** %149, align 4, !tbaa !37
  %151 = load i32, i32* %150, align 4, !tbaa !86
  br label %171

152:                                              ; preds = %138
  %153 = tail call i8* @malloc(i32 1024) #7
  %154 = icmp eq i8* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, i8* %153, i32 1023
  store i8 0, i8* %156, align 1, !tbaa !36
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi i8* [ %156, %155 ], [ null, %152 ]
  %159 = tail call i8* @halide_string_to_string(i8* %153, i8* %158, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0)) #7
  %160 = tail call i8* @halide_type_to_string(i8* %159, i8* %158, %struct.halide_type_t* nonnull %92) #7
  %161 = tail call i8* @halide_string_to_string(i8* %160, i8* %158, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #7
  br i1 %154, label %162, label %163

162:                                              ; preds = %157
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %170

163:                                              ; preds = %157
  %164 = ptrtoint i8* %161 to i32
  %165 = ptrtoint i8* %153 to i32
  %166 = add i32 %164, 1
  %167 = sub i32 %166, %165
  %168 = sext i32 %167 to i64
  %169 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %153, i64 %168) #7
  tail call void @halide_error(i8* %0, i8* nonnull %153) #7
  br label %170

170:                                              ; preds = %163, %162
  tail call void @free(i8* %153) #7
  br label %242

171:                                              ; preds = %143, %148, %139
  %172 = phi i32 [ %142, %139 ], [ %147, %143 ], [ %151, %148 ]
  %173 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 25), align 4, !tbaa !68
  tail call void %173(i32 %93, i32 %172) #7
  %174 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i32 0, i32 0)) #8
  br i1 %174, label %242, label %229

175:                                              ; preds = %98
  %176 = icmp eq i8 %91, 32
  br i1 %176, label %177, label %183

177:                                              ; preds = %175
  %178 = bitcast i8** %94 to float**
  %179 = load float*, float** %178, align 4, !tbaa !37
  %180 = load float, float* %179, align 4, !tbaa !124
  %181 = load void (i32, float)*, void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 26), align 4, !tbaa !69
  tail call void %181(i32 %93, float %180) #7
  %182 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i32 0, i32 0)) #8
  br i1 %182, label %242, label %229

183:                                              ; preds = %175
  %184 = tail call i8* @malloc(i32 1024) #7
  %185 = icmp eq i8* %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, i8* %184, i32 1023
  store i8 0, i8* %187, align 1, !tbaa !36
  br label %188

188:                                              ; preds = %183, %186
  %189 = phi i8* [ %187, %186 ], [ null, %183 ]
  %190 = tail call i8* @halide_string_to_string(i8* %184, i8* %189, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0)) #7
  %191 = tail call i8* @halide_type_to_string(i8* %190, i8* %189, %struct.halide_type_t* nonnull %92) #7
  %192 = tail call i8* @halide_string_to_string(i8* %191, i8* %189, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #7
  br i1 %185, label %193, label %194

193:                                              ; preds = %188
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %201

194:                                              ; preds = %188
  %195 = ptrtoint i8* %192 to i32
  %196 = ptrtoint i8* %184 to i32
  %197 = add i32 %195, 1
  %198 = sub i32 %197, %196
  %199 = sext i32 %198 to i64
  %200 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %184, i64 %199) #7
  tail call void @halide_error(i8* %0, i8* nonnull %184) #7
  br label %201

201:                                              ; preds = %194, %193
  tail call void @free(i8* %184) #7
  br label %242

202:                                              ; preds = %98
  %203 = tail call i8* @malloc(i32 1024) #7
  %204 = icmp eq i8* %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, i8* %203, i32 1023
  store i8 0, i8* %206, align 1, !tbaa !36
  br label %207

207:                                              ; preds = %202, %205
  %208 = phi i8* [ %206, %205 ], [ null, %202 ]
  %209 = tail call i8* @halide_string_to_string(i8* %203, i8* %208, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0)) #7
  %210 = tail call i8* @halide_type_to_string(i8* %209, i8* %208, %struct.halide_type_t* nonnull %92) #7
  %211 = tail call i8* @halide_string_to_string(i8* %210, i8* %208, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #7
  br i1 %204, label %212, label %213

212:                                              ; preds = %207
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %220

213:                                              ; preds = %207
  %214 = ptrtoint i8* %211 to i32
  %215 = ptrtoint i8* %203 to i32
  %216 = add i32 %214, 1
  %217 = sub i32 %216, %215
  %218 = sext i32 %217 to i64
  %219 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %203, i64 %218) #7
  tail call void @halide_error(i8* %0, i8* nonnull %203) #7
  br label %220

220:                                              ; preds = %213, %212
  tail call void @free(i8* %203) #7
  br label %242

221:                                              ; preds = %90
  %222 = bitcast i8** %94 to %struct.halide_buffer_t**
  %223 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %222, align 4, !tbaa !37
  %224 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8, !tbaa !22
  %226 = trunc i64 %225 to i32
  %227 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 3), align 4, !tbaa !47
  tail call void %227(i32 37074, i32 %93, i32 %226) #7
  %228 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i32 0, i32 0)) #8
  br i1 %228, label %242, label %229

229:                                              ; preds = %177, %171, %134, %221
  %230 = add nuw nsw i32 %93, 1
  %231 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 %230
  %232 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 %230, i32 1
  %233 = load i8, i8* %232, align 1, !tbaa !23
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %90, !llvm.loop !126

235:                                              ; preds = %229, %86
  %236 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 11), align 4, !tbaa !55
  tail call void %236(i32 %3, i32 %4, i32 %5) #7
  %237 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.121, i32 0, i32 0)) #8
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 22), align 4, !tbaa !65
  tail call void %239(i32 1) #7
  %240 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.122, i32 0, i32 0)) #8
  %241 = sext i1 %240 to i32
  ret i32 %241

242:                                              ; preds = %221, %134, %171, %177, %51, %220, %133, %170, %201, %235, %81, %80, %34
  ret i32 -1
}

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_device_sync(i8* %0, %struct.halide_buffer_t* %1) #5 {
  %3 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !tbaa !44, !range !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call i8* @malloc(i32 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.123, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.123, i32 0, i32 0)) #7
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
  br label %22

20:                                               ; preds = %2
  %21 = load void ()*, void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 12), align 4, !tbaa !56
  tail call void %21() #7
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %20 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i8* @get_kernel_name(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = ptrtoint i8* %1 to i32
  %4 = ptrtoint i8* %0 to i32
  %5 = sub i32 %3, %4
  %6 = add i32 %5, 1
  %7 = tail call i8* @malloc(i32 %6) #7
  %8 = tail call i8* @memcpy(i8* %7, i8* %0, i32 %5) #7
  %9 = getelementptr inbounds i8, i8* %7, i32 %5
  store i8 0, i8* %9, align 1, !tbaa !36
  ret i8* %7
}

declare i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_openglcompute_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #5 {
  %5 = alloca i8*, align 4
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
  %15 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %14, align 4, !tbaa !37
  %16 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call i8* @malloc(i32 8) #7
  %19 = bitcast i8* %18 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*
  %20 = bitcast i8* %18 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %20, align 4, !tbaa !75
  %21 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 4, !tbaa !37
  %22 = getelementptr inbounds i8, i8* %18, i32 4
  %23 = bitcast i8* %22 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %21, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %23, align 4, !tbaa !127
  store i8* %18, i8** bitcast (%"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE to i8**), align 4, !tbaa !37
  store i8* %18, i8** %1, align 4, !tbaa !37
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %15, %13 ], [ %19, %17 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %25, i32 0, i32 0
  %27 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 4, !tbaa !75
  %28 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %27, null
  br i1 %28, label %29, label %159

29:                                               ; preds = %24
  %30 = tail call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i32 0, i32 0)) #7
  %31 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i32 0, i32 0)) #7
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
  %42 = getelementptr inbounds i8, i8* %40, i32 %30
  %43 = call i8* @strstr(i8* nonnull %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #7
  %44 = icmp eq i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i8* @get_kernel_name(i8* nonnull %42, i8* nonnull %43) #8
  br label %63

47:                                               ; preds = %39
  %48 = call i8* @malloc(i32 1024) #7
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @halide_string_to_string(i8* %48, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %48, i32 1023
  store i8 0, i8* %53, align 1, !tbaa !36
  %54 = call i8* @halide_string_to_string(i8* nonnull %48, i8* nonnull %53, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i32 0, i32 0)) #7
  %55 = ptrtoint i8* %54 to i32
  %56 = ptrtoint i8* %48 to i32
  %57 = add i32 %55, 1
  %58 = sub i32 %57, %56
  %59 = sext i32 %58 to i64
  %60 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %48, i64 %59) #7
  call void @halide_error(i8* %0, i8* nonnull %48) #7
  br label %61

61:                                               ; preds = %52, %50
  call void @free(i8* %48) #7
  %62 = call i8* @get_kernel_name(i8* nonnull %42, i8* null) #8
  br label %63

63:                                               ; preds = %45, %61
  %64 = phi i8* [ %46, %45 ], [ %62, %61 ]
  %65 = call i8* @malloc(i32 12) #7
  %66 = bitcast i8* %65 to i8**
  store i8* %64, i8** %66, align 4, !tbaa !38
  %67 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 4, !tbaa !75
  %68 = getelementptr inbounds i8, i8* %65, i32 8
  %69 = bitcast i8* %68 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %67, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %69, align 4, !tbaa !77
  store i8* %65, i8** %34, align 4, !tbaa !75
  %70 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 7), align 4, !tbaa !51
  %71 = call i32 %70(i32 37305) #7
  %72 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0)) #8
  br i1 %72, label %159, label %73

73:                                               ; preds = %63
  %74 = ptrtoint i8* %43 to i32
  %75 = ptrtoint i8* %41 to i32
  %76 = sub i32 %74, %75
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #9
  store i8* %41, i8** %5, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #9
  store i32 %76, i32* %6, align 4, !tbaa !86
  %77 = load void (i32, i32, i8**, i32*)*, void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 23), align 4, !tbaa !66
  call void %77(i32 %71, i32 1, i8** nonnull %5, i32* nonnull %6) #7
  %78 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0)) #8
  br i1 %78, label %152, label %79

79:                                               ; preds = %73
  %80 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 6), align 4, !tbaa !50
  call void %80(i32 %71) #7
  %81 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0)) #8
  br i1 %81, label %152, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #9
  store i32 0, i32* %7, align 4, !tbaa !86
  %83 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18), align 4, !tbaa !61
  call void %83(i32 %71, i32 35713, i32* nonnull %7) #7
  %84 = load i32, i32* %7, align 4, !tbaa !86
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %128, label %86

86:                                               ; preds = %82
  %87 = call i8* @malloc(i32 1024) #7
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i8* @halide_string_to_string(i8* %87, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %100

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, i8* %87, i32 1023
  store i8 0, i8* %92, align 1, !tbaa !36
  %93 = call i8* @halide_string_to_string(i8* nonnull %87, i8* nonnull %92, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i32 0, i32 0)) #7
  %94 = ptrtoint i8* %93 to i32
  %95 = ptrtoint i8* %87 to i32
  %96 = add i32 %94, 1
  %97 = sub i32 %96, %95
  %98 = sext i32 %97 to i64
  %99 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %87, i64 %98) #7
  call void @halide_print(i8* %0, i8* nonnull %87) #7
  br label %100

100:                                              ; preds = %91, %89
  call void @free(i8* %87) #7
  %101 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101) #9
  %102 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18), align 4, !tbaa !61
  call void %102(i32 %71, i32 35716, i32* nonnull %8) #7
  %103 = load i32, i32* %8, align 4, !tbaa !86
  %104 = call i8* @halide_malloc(i8* %0, i32 %103) #7
  %105 = icmp eq i8* %104, null
  br i1 %105, label %126, label %106

106:                                              ; preds = %100
  %107 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 17), align 4, !tbaa !60
  %108 = load i32, i32* %8, align 4, !tbaa !86
  call void %107(i32 %71, i32 %108, i32* null, i8* nonnull %104) #7
  %109 = call i8* @malloc(i32 1024) #7
  %110 = icmp eq i8* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %109, i32 1023
  store i8 0, i8* %112, align 1, !tbaa !36
  br label %113

113:                                              ; preds = %106, %111
  %114 = phi i8* [ %112, %111 ], [ null, %106 ]
  %115 = call i8* @halide_string_to_string(i8* %109, i8* %114, i8* nonnull %104) #7
  %116 = call i8* @halide_string_to_string(i8* %115, i8* %114, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #7
  br i1 %110, label %117, label %118

117:                                              ; preds = %113
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %125

118:                                              ; preds = %113
  %119 = ptrtoint i8* %116 to i32
  %120 = ptrtoint i8* %109 to i32
  %121 = add i32 %119, 1
  %122 = sub i32 %121, %120
  %123 = sext i32 %122 to i64
  %124 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %123) #7
  call void @halide_print(i8* %0, i8* nonnull %109) #7
  br label %125

125:                                              ; preds = %118, %117
  call void @free(i8* %109) #7
  br label %126

126:                                              ; preds = %125, %100
  %127 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10), align 4, !tbaa !54
  call void %127(i32 %71) #7
  call void @halide_free(i8* %0, i8* %104) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #9
  br label %153

128:                                              ; preds = %82
  %129 = load i32 ()*, i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 5), align 4, !tbaa !49
  %130 = call i32 %129() #7
  %131 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 1), align 4, !tbaa !45
  call void %131(i32 %130, i32 %71) #7
  %132 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0)) #8
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 20), align 4, !tbaa !63
  call void %134(i32 %130) #7
  %135 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0)) #8
  br i1 %135, label %153, label %136

136:                                              ; preds = %133
  %137 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10), align 4, !tbaa !54
  call void %137(i32 %71) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #9
  %138 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16), align 4, !tbaa !59
  call void %138(i32 %130, i32 35714, i32* nonnull %9) #7
  %139 = load i32, i32* %9, align 4, !tbaa !86
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #9
  %143 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16), align 4, !tbaa !59
  call void %143(i32 %130, i32 35716, i32* nonnull %10) #7
  %144 = load i32, i32* %10, align 4, !tbaa !86
  %145 = call i8* @halide_malloc(i8* %0, i32 %144) #7
  %146 = icmp eq i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 15), align 4, !tbaa !58
  %149 = load i32, i32* %10, align 4, !tbaa !86
  call void %148(i32 %130, i32 %149, i32* null, i8* nonnull %145) #7
  br label %150

150:                                              ; preds = %141, %147
  %151 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9), align 4, !tbaa !53
  call void %151(i32 %130) #7
  call void @halide_free(i8* %0, i8* %145) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #9
  br label %159

152:                                              ; preds = %73, %79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #9
  br label %159

153:                                              ; preds = %128, %133, %126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #9
  br label %159

154:                                              ; preds = %136
  %155 = getelementptr inbounds i8, i8* %65, i32 4
  %156 = bitcast i8* %155 to i32*
  store i32 %130, i32* %156, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #9
  %157 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i32 0, i32 0)) #7
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %39

159:                                              ; preds = %154, %63, %29, %150, %153, %152, %24, %4
  %160 = phi i32 [ %11, %4 ], [ 0, %24 ], [ -1, %152 ], [ -1, %153 ], [ -1, %150 ], [ 0, %29 ], [ 0, %154 ], [ -1, %63 ]
  ret i32 %160
}

declare i32 @strlen(i8*) local_unnamed_addr #2

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

declare i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

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
!38 = !{!39, !17, i64 0}
!39 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE", !17, i64 0, !21, i64 4, !17, i64 8}
!40 = distinct !{!40, !8}
!41 = !{!42, !17, i64 56}
!42 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE", !43, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120}
!43 = !{!"bool", !5, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!42, !17, i64 4}
!46 = !{!42, !17, i64 8}
!47 = !{!42, !17, i64 12}
!48 = !{!42, !17, i64 16}
!49 = !{!42, !17, i64 20}
!50 = !{!42, !17, i64 24}
!51 = !{!42, !17, i64 28}
!52 = !{!42, !17, i64 32}
!53 = !{!42, !17, i64 36}
!54 = !{!42, !17, i64 40}
!55 = !{!42, !17, i64 44}
!56 = !{!42, !17, i64 48}
!57 = !{!42, !17, i64 52}
!58 = !{!42, !17, i64 60}
!59 = !{!42, !17, i64 64}
!60 = !{!42, !17, i64 68}
!61 = !{!42, !17, i64 72}
!62 = !{!42, !17, i64 76}
!63 = !{!42, !17, i64 80}
!64 = !{!42, !17, i64 84}
!65 = !{!42, !17, i64 88}
!66 = !{!42, !17, i64 92}
!67 = !{!42, !17, i64 96}
!68 = !{!42, !17, i64 100}
!69 = !{!42, !17, i64 104}
!70 = !{!42, !17, i64 108}
!71 = !{!42, !17, i64 112}
!72 = !{!42, !17, i64 116}
!73 = !{!42, !17, i64 120}
!74 = !{i8 0, i8 2}
!75 = !{!76, !17, i64 0}
!76 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE", !17, i64 0, !17, i64 4}
!77 = !{!39, !17, i64 8}
!78 = !{!39, !21, i64 4}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = !{i64 0, i64 1, !82, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37, i64 20, i64 4, !37, i64 24, i64 4, !37, i64 28, i64 4, !37, i64 32, i64 4, !37, i64 36, i64 4, !37, i64 40, i64 4, !37, i64 44, i64 4, !37, i64 48, i64 4, !37, i64 52, i64 4, !37, i64 56, i64 4, !37, i64 60, i64 4, !37, i64 64, i64 4, !37, i64 68, i64 4, !37, i64 72, i64 4, !37, i64 76, i64 4, !37, i64 80, i64 4, !37, i64 84, i64 4, !37, i64 88, i64 4, !37, i64 92, i64 4, !37, i64 96, i64 4, !37, i64 100, i64 4, !37, i64 104, i64 4, !37, i64 108, i64 4, !37, i64 112, i64 4, !37, i64 116, i64 4, !37, i64 120, i64 4, !37}
!82 = !{!43, !43, i64 0}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = !{!21, !21, i64 0}
!87 = !{!16, !17, i64 8}
!88 = !{!89, !17, i64 60}
!89 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!90 = !{!91, !17, i64 0}
!91 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!92 = !{!91, !17, i64 4}
!93 = distinct !{!93, !8}
!94 = !{i64 0, i64 8, !3, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 8, !3, i64 24, i64 1, !95, i64 25, i64 1, !36, i64 26, i64 2, !96, i64 28, i64 4, !86, i64 32, i64 4, !37, i64 36, i64 4, !37}
!95 = !{!19, !19, i64 0}
!96 = !{!20, !20, i64 0}
!97 = !{!16, !19, i64 24}
!98 = !{!16, !5, i64 25}
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
!127 = !{!76, !17, i64 4}
