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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc" = type { i8*, i8* }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE = weak dso_local global %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" zeroinitializer, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* null, align 8, !dbg !185
@.str.16 = private unnamed_addr constant [11 x i8] c"  device: \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"  texture_id: \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"  host: \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"  extent: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"  stride: \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"  min: \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"  type: \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"  host_dirty: \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"  device_dirty: \00", align 1
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
@.str.59 = private unnamed_addr constant [19 x i8] c"Halide running on \00", align 1
@.str.60 = private unnamed_addr constant [66 x i8] c"OpenGLCompute: halide_openglcompute_device_release(user_context: \00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"    Time: \00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c" ms\0A\00", align 1
@.str.64 = private unnamed_addr constant [66 x i8] c"OpenGLCompute: halide_openglcompute_device_malloc (user_context: \00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c", buf: \00", align 1
@.str.66 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:271 Assert failed: size != 0\0A\00", align 1
@.str.67 = private unnamed_addr constant [74 x i8] c"openglcompute_device_malloc: This buffer already has a device allocation\0A\00", align 1
@.str.68 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:281 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"    allocating buffer, \00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"extents: \00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"strides: \00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"(type: \00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"openglcompute_device_malloc: initialization completed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"oglc: GenBuffers\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"oglc: BindBuffer\00", align 1
@.str.78 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:317 Assert failed: size != 0\0A\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"oglc: BufferData\00", align 1
@_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE }, align 8, !dbg !199
@.str.80 = private unnamed_addr constant [32 x i8] c"Allocated dev_buffer(i.e. vbo) \00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c" ms for malloc\0A\00", align 1
@.str.82 = private unnamed_addr constant [76 x i8] c"OpenGL runtime not initialized in call to halide_openglcompute_device_free.\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"OGLC: halide_openglcompute_device_free (\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"user_context: \00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c", the_buffer:\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c" ms for free\0A\00", align 1
@.str.87 = private unnamed_addr constant [70 x i8] c"OpenGL runtime not initialized (halide_openglcompute_copy_to_device).\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"OGLC: halide_openglcompute_copy_to_device (\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"Calling global_state.MapBufferRange(GL_ARRAY_BUFFER, 0, \00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c", GL_MAP_READ_BIT|GL_MAP_WRITE_BIT)\0A\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"oglc: MapBufferRange\00", align 1
@.str.92 = private unnamed_addr constant [49 x i8] c"OpenGLCompute does not support 64-bit integers.\0A\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"OpenGLCompute does not support 64-bit floating-point.\0A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"  copied \00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c" bytes from \00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c" to the device.\0A\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c" ms for copy to dev\0A\00", align 1
@.str.98 = private unnamed_addr constant [68 x i8] c"OpenGL runtime not initialized (halide_openglcompute_copy_to_host).\00", align 1
@.str.99 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp:502 Assert failed: size != 0\0A\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"OGLC: halide_openglcompute_copy_to_host (\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c", size=\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c" bytes to the host.\0A\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c" ms for copy to host\0A\00", align 1
@.str.104 = private unnamed_addr constant [56 x i8] c"OpenGLCompute: halide_openglcompute_run (user_context: \00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"entry: \00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"blocks: \00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"threads: \00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"shmem: \00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"num_attributes: \00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"num_coords_dim0: \00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"num_coords_dim1: \00", align 1
@.str.113 = private unnamed_addr constant [59 x i8] c"OpenGL runtime not initialized (halide_openglcompute_run).\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"Internal error: module state is nullptr\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"Internal error: unknown kernel named '\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"halide_openglcompute_run UseProgram\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"    args \00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c" ...] \00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"Cannot pass argument of type \00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c" to GL shader\0A\00", align 1
@.str.123 = private unnamed_addr constant [35 x i8] c"halide_openglcompute_run Uniform1i\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"halide_openglcompute_run Uniform1ui\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"halide_openglcompute_run Uniform1f\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"halide_openglcompute_run BindBufferBase\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"halide_openglcompute_run DispatchCompute\00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"halide_openglcompute_run MemoryBarrier\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c" ms for run\0A\00", align 1
@.str.130 = private unnamed_addr constant [75 x i8] c"OpenGL Compute runtime not initialized (halide_openglcompute_device_sync).\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c" ms for sync\0A\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"\0A// end of kernel \00", align 1
@.str.133 = private unnamed_addr constant [29 x i8] c"Failed to find kernel name.\0A\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"create shader\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"Compute shader source for: \00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"shader source\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"compile shader\00", align 1
@.str.138 = private unnamed_addr constant [27 x i8] c"Could not compile shader:\0A\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"attach shader\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"link program\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"Could not link GLSL program:\0A\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"Active Uniforms: \00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"Uniform \00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c" Type: \00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c" Name: \00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c" location: \00", align 1
@_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_sync, i32 (i8*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_default_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_default_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_default_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 8, !dbg !394
@.str.147 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !577 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !596, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %1, metadata !597, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %2, metadata !598, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %3, metadata !599, metadata !DIExpression()), !dbg !607
  %5 = icmp sgt i32 %1, -1, !dbg !608
  br i1 %5, label %6, label %15, !dbg !609

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !597, metadata !DIExpression()), !dbg !607
  %8 = zext i32 %7 to i64, !dbg !610
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !610
  %10 = load i64, i64* %9, align 8, !dbg !610, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !615
  br i1 %11, label %12, label %15, !dbg !616

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !617
  call void @llvm.dbg.value(metadata i32 %13, metadata !597, metadata !DIExpression()), !dbg !607
  %14 = icmp sgt i32 %7, 0, !dbg !608
  br i1 %14, label %6, label %27, !dbg !609, !llvm.loop !619

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !622
  br i1 %17, label %27, label %18, !dbg !623

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !604, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64 %2, metadata !598, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %3, metadata !599, metadata !DIExpression()), !dbg !607
  %19 = sext i32 %16 to i64, !dbg !625
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !625
  %21 = load i64, i64* %20, align 8, !dbg !625, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !627
  br i1 %22, label %50, label %23, !dbg !628

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !628

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !629
  %29 = load i64, i64* %28, align 8, !dbg !629, !tbaa !630
  %30 = add i64 %29, %2, !dbg !632
  %31 = inttoptr i64 %30 to i8*, !dbg !633
  call void @llvm.dbg.value(metadata i8* %31, metadata !600, metadata !DIExpression()), !dbg !634
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !635
  %33 = load i64, i64* %32, align 8, !dbg !635, !tbaa !636
  %34 = add i64 %33, %3, !dbg !637
  %35 = inttoptr i64 %34 to i8*, !dbg !638
  call void @llvm.dbg.value(metadata i8* %35, metadata !603, metadata !DIExpression()), !dbg !634
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !639
  %37 = load i64, i64* %36, align 8, !dbg !639, !tbaa !640
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #8, !dbg !641
  br label %50, !dbg !642

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !604, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64 %41, metadata !598, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %42, metadata !599, metadata !DIExpression()), !dbg !607
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #9, !dbg !643
  %43 = load i64, i64* %25, align 8, !dbg !645, !tbaa !611
  %44 = add i64 %43, %41, !dbg !646
  call void @llvm.dbg.value(metadata i64 %44, metadata !598, metadata !DIExpression()), !dbg !607
  %45 = load i64, i64* %26, align 8, !dbg !647, !tbaa !611
  %46 = add i64 %45, %42, !dbg !648
  call void @llvm.dbg.value(metadata i64 %46, metadata !599, metadata !DIExpression()), !dbg !607
  %47 = add nuw i64 %40, 1, !dbg !649
  call void @llvm.dbg.value(metadata i64 %47, metadata !604, metadata !DIExpression()), !dbg !624
  %48 = load i64, i64* %20, align 8, !dbg !625, !tbaa !611
  %49 = icmp ult i64 %47, %48, !dbg !627
  br i1 %49, label %39, label %50, !dbg !628, !llvm.loop !650

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !652
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !653 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !657 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* %1, metadata !662, metadata !DIExpression()), !dbg !663
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !664
  %4 = load i64, i64* %3, align 8, !dbg !664, !tbaa !630
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !666
  %6 = load i64, i64* %5, align 8, !dbg !666, !tbaa !636
  %7 = icmp eq i64 %4, %6, !dbg !667
  br i1 %7, label %11, label %8, !dbg !668

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !669
  %10 = load i64, i64* %9, align 8, !dbg !669, !tbaa !671
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !672
  br label %25, !dbg !673

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !680
  call void @llvm.dbg.value(metadata i8* %1, metadata !677, metadata !DIExpression()) #10, !dbg !680
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !680
  %12 = tail call i8* @malloc(i64 1024) #8, !dbg !683
  %13 = icmp eq i8* %12, null, !dbg !688
  br i1 %13, label %14, label %16, !dbg !690

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !695
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !697
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !703
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !705
  br label %24, !dbg !709

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !710
  store i8 0, i8* %17, align 1, !dbg !712, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !695
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !697
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !717
  %19 = ptrtoint i8* %18 to i64, !dbg !720
  %20 = ptrtoint i8* %12 to i64, !dbg !720
  %21 = add i64 %19, 1, !dbg !720
  %22 = sub i64 %21, %20, !dbg !721
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #8, !dbg !722
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !723
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !727
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !730
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !731 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !736, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i1 %2, metadata !737, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !763
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !738, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i1 %4, metadata !739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !763
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !764
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10, !dbg !764
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !740, metadata !DIExpression()), !dbg !765
  br i1 %2, label %8, label %12, !dbg !766

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !767
  %10 = load i8*, i8** %9, align 8, !dbg !767, !tbaa !768
  %11 = ptrtoint i8* %10 to i64, !dbg !775
  br label %15, !dbg !766

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !776
  %14 = load i64, i64* %13, align 8, !dbg !776, !tbaa !777
  br label %15, !dbg !766

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !766
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !778
  store i64 %16, i64* %17, align 8, !dbg !779, !tbaa !630
  br i1 %4, label %18, label %22, !dbg !780

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !781
  %20 = load i8*, i8** %19, align 8, !dbg !781, !tbaa !768
  %21 = ptrtoint i8* %20 to i64, !dbg !782
  br label %25, !dbg !780

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !783
  %24 = load i64, i64* %23, align 8, !dbg !783, !tbaa !777
  br label %25, !dbg !780

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !780
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !784
  store i64 %26, i64* %27, align 8, !dbg !785, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !790
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !792
  %29 = load i8, i8* %28, align 1, !dbg !792, !tbaa !793
  %30 = zext i8 %29 to i32, !dbg !792
  %31 = add nuw nsw i32 %30, 7, !dbg !794
  %32 = lshr i32 %31, 3, !dbg !795
  %33 = zext i32 %32 to i64, !dbg !796
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !797
  store i64 %33, i64* %34, align 8, !dbg !798, !tbaa !640
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()), !dbg !799
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !800
  store i64 1, i64* %35, align 8, !dbg !803, !tbaa !611
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !804
  store i64 0, i64* %36, align 8, !dbg !805, !tbaa !611
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !806
  store i64 0, i64* %37, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 1, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 1, metadata !741, metadata !DIExpression()), !dbg !799
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !800
  store i64 1, i64* %38, align 8, !dbg !803, !tbaa !611
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !804
  store i64 0, i64* %39, align 8, !dbg !805, !tbaa !611
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !806
  store i64 0, i64* %40, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 2, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 2, metadata !741, metadata !DIExpression()), !dbg !799
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !800
  store i64 1, i64* %41, align 8, !dbg !803, !tbaa !611
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !804
  store i64 0, i64* %42, align 8, !dbg !805, !tbaa !611
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !806
  store i64 0, i64* %43, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 3, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 3, metadata !741, metadata !DIExpression()), !dbg !799
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !800
  store i64 1, i64* %44, align 8, !dbg !803, !tbaa !611
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !804
  store i64 0, i64* %45, align 8, !dbg !805, !tbaa !611
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !806
  store i64 0, i64* %46, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 4, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 4, metadata !741, metadata !DIExpression()), !dbg !799
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !800
  store i64 1, i64* %47, align 8, !dbg !803, !tbaa !611
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !804
  store i64 0, i64* %48, align 8, !dbg !805, !tbaa !611
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !806
  store i64 0, i64* %49, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 5, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 5, metadata !741, metadata !DIExpression()), !dbg !799
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !800
  store i64 1, i64* %50, align 8, !dbg !803, !tbaa !611
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !804
  store i64 0, i64* %51, align 8, !dbg !805, !tbaa !611
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !806
  store i64 0, i64* %52, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 6, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 6, metadata !741, metadata !DIExpression()), !dbg !799
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !800
  store i64 1, i64* %53, align 8, !dbg !803, !tbaa !611
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !804
  store i64 0, i64* %54, align 8, !dbg !805, !tbaa !611
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !806
  store i64 0, i64* %55, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 7, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 7, metadata !741, metadata !DIExpression()), !dbg !799
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !800
  store i64 1, i64* %56, align 8, !dbg !803, !tbaa !611
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !804
  store i64 0, i64* %57, align 8, !dbg !805, !tbaa !611
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !806
  store i64 0, i64* %58, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 8, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 8, metadata !741, metadata !DIExpression()), !dbg !799
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !800
  store i64 1, i64* %59, align 8, !dbg !803, !tbaa !611
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !804
  store i64 0, i64* %60, align 8, !dbg !805, !tbaa !611
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !806
  store i64 0, i64* %61, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 9, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 9, metadata !741, metadata !DIExpression()), !dbg !799
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !800
  store i64 1, i64* %62, align 8, !dbg !803, !tbaa !611
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !804
  store i64 0, i64* %63, align 8, !dbg !805, !tbaa !611
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !806
  store i64 0, i64* %64, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 10, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 10, metadata !741, metadata !DIExpression()), !dbg !799
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !800
  store i64 1, i64* %65, align 8, !dbg !803, !tbaa !611
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !804
  store i64 0, i64* %66, align 8, !dbg !805, !tbaa !611
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !806
  store i64 0, i64* %67, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 11, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 11, metadata !741, metadata !DIExpression()), !dbg !799
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !800
  store i64 1, i64* %68, align 8, !dbg !803, !tbaa !611
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !804
  store i64 0, i64* %69, align 8, !dbg !805, !tbaa !611
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !806
  store i64 0, i64* %70, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 12, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 12, metadata !741, metadata !DIExpression()), !dbg !799
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !800
  store i64 1, i64* %71, align 8, !dbg !803, !tbaa !611
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !804
  store i64 0, i64* %72, align 8, !dbg !805, !tbaa !611
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !806
  store i64 0, i64* %73, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 13, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 13, metadata !741, metadata !DIExpression()), !dbg !799
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !800
  store i64 1, i64* %74, align 8, !dbg !803, !tbaa !611
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !804
  store i64 0, i64* %75, align 8, !dbg !805, !tbaa !611
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !806
  store i64 0, i64* %76, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 14, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 14, metadata !741, metadata !DIExpression()), !dbg !799
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !800
  store i64 1, i64* %77, align 8, !dbg !803, !tbaa !611
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !804
  store i64 0, i64* %78, align 8, !dbg !805, !tbaa !611
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !806
  store i64 0, i64* %79, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 15, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 15, metadata !741, metadata !DIExpression()), !dbg !799
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !800
  store i64 1, i64* %80, align 8, !dbg !803, !tbaa !611
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !804
  store i64 0, i64* %81, align 8, !dbg !805, !tbaa !611
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !806
  store i64 0, i64* %82, align 8, !dbg !807, !tbaa !611
  call void @llvm.dbg.value(metadata i64 16, metadata !741, metadata !DIExpression()), !dbg !799
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !808
  call void @llvm.dbg.value(metadata i32 0, metadata !743, metadata !DIExpression()), !dbg !809
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !810
  %85 = load i32, i32* %84, align 4, !dbg !810, !tbaa !812
  %86 = icmp sgt i32 %85, 0, !dbg !813
  br i1 %86, label %87, label %93, !dbg !814

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !815
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !815
  %92 = zext i32 %85 to i64, !dbg !813
  br label %100, !dbg !814

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !816
  %95 = load i64, i64* %34, align 8, !dbg !817, !tbaa !640
  %96 = mul i64 %94, %95, !dbg !816
  store i64 %96, i64* %83, align 8, !dbg !816, !tbaa !671
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !818
  %98 = load i32, i32* %97, align 4, !dbg !818, !tbaa !812
  %99 = icmp eq i32 %85, %98, !dbg !819
  br i1 %99, label %116, label %125, !dbg !820

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !809
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !809
  call void @llvm.dbg.value(metadata i64 %101, metadata !743, metadata !DIExpression()), !dbg !809
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !821
  %104 = load i32, i32* %103, align 4, !dbg !821, !tbaa !823
  %105 = sext i32 %104 to i64, !dbg !825
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !826
  %107 = load i32, i32* %106, align 4, !dbg !826, !tbaa !827
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !828
  %109 = load i32, i32* %108, align 4, !dbg !828, !tbaa !827
  %110 = sub nsw i32 %107, %109, !dbg !829
  %111 = sext i32 %110 to i64, !dbg !830
  %112 = mul nsw i64 %111, %105, !dbg !831
  %113 = add i64 %112, %102, !dbg !832
  %114 = add nuw nsw i64 %101, 1, !dbg !833
  call void @llvm.dbg.value(metadata i64 %114, metadata !743, metadata !DIExpression()), !dbg !809
  %115 = icmp eq i64 %114, %92, !dbg !813
  br i1 %115, label %93, label %100, !dbg !814, !llvm.loop !834

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !836
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !838
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !840
  %118 = load i8, i8* %117, align 1, !dbg !840, !tbaa !793
  %119 = zext i8 %118 to i32, !dbg !840
  %120 = add nuw nsw i32 %119, 7, !dbg !841
  %121 = lshr i32 %120, 3, !dbg !842
  %122 = icmp ne i32 %32, %121, !dbg !843
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !844
  br i1 %124, label %125, label %127, !dbg !844

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !745, metadata !DIExpression()), !dbg !845
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !845
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !845
  br label %253, !dbg !846

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !847
  br i1 %128, label %136, label %129, !dbg !848

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !751, metadata !DIExpression()), !dbg !849
  br i1 %86, label %130, label %251, !dbg !850

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !815
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !815
  %135 = zext i32 %85 to i64, !dbg !851
  br label %144, !dbg !850

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !748, metadata !DIExpression()), !dbg !852
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !852
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !852
  br label %253, !dbg !853

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !854, !tbaa !640
  %140 = load i64, i64* %36, align 8, !dbg !855, !tbaa !611
  %141 = icmp eq i64 %139, %140, !dbg !856
  br i1 %141, label %142, label %251, !dbg !857

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !858, !tbaa !611
  br label %198, !dbg !857

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !751, metadata !DIExpression()), !dbg !849
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !859
  %147 = load i32, i32* %146, align 4, !dbg !859, !tbaa !823
  %148 = sext i32 %147 to i64, !dbg !860
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !861
  %149 = mul nsw i64 %148, %33, !dbg !863
  call void @llvm.dbg.value(metadata i64 %149, metadata !753, metadata !DIExpression()), !dbg !864
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !865
  %151 = load i32, i32* %150, align 4, !dbg !865, !tbaa !823
  %152 = sext i32 %151 to i64, !dbg !866
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !867
  %153 = mul nsw i64 %152, %33, !dbg !869
  call void @llvm.dbg.value(metadata i64 %153, metadata !756, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i32 0, metadata !757, metadata !DIExpression()), !dbg !864
  %154 = icmp eq i64 %145, 0, !dbg !870
  br i1 %154, label %170, label %155, !dbg !873

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !873

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !864
  %158 = trunc i64 %145 to i32, !dbg !874
  br label %170, !dbg !874

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !757, metadata !DIExpression()), !dbg !864
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !876
  %162 = load i64, i64* %161, align 8, !dbg !876, !tbaa !611
  %163 = icmp ult i64 %149, %162, !dbg !879
  br i1 %163, label %167, label %164, !dbg !880

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !881
  call void @llvm.dbg.value(metadata i64 %165, metadata !757, metadata !DIExpression()), !dbg !864
  %166 = icmp eq i64 %165, %145, !dbg !870
  br i1 %166, label %167, label %159, !dbg !873, !llvm.loop !882

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !884
  br label %170, !dbg !874

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !884
  call void @llvm.dbg.value(metadata i64 %145, metadata !758, metadata !DIExpression()), !dbg !885
  %172 = zext i32 %171 to i64, !dbg !874
  %173 = icmp ugt i64 %145, %172, !dbg !874
  br i1 %173, label %174, label %176, !dbg !886

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !886
  br label %185, !dbg !886

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !887
  %178 = load i32, i32* %177, align 4, !dbg !887, !tbaa !888
  %179 = sext i32 %178 to i64, !dbg !889
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !890
  store i64 %179, i64* %180, align 8, !dbg !891, !tbaa !611
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !892
  store i64 %149, i64* %181, align 8, !dbg !893, !tbaa !611
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !894
  store i64 %153, i64* %182, align 8, !dbg !895, !tbaa !611
  %183 = add nuw nsw i64 %145, 1, !dbg !896
  call void @llvm.dbg.value(metadata i64 %183, metadata !751, metadata !DIExpression()), !dbg !849
  %184 = icmp eq i64 %183, %135, !dbg !851
  br i1 %184, label %138, label %144, !dbg !850, !llvm.loop !897

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !758, metadata !DIExpression()), !dbg !885
  %187 = add nsw i64 %186, -1, !dbg !899
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !901
  %189 = load i64, i64* %188, align 8, !dbg !901, !tbaa !611
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !902
  store i64 %189, i64* %190, align 8, !dbg !903, !tbaa !611
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !904
  %192 = load i64, i64* %191, align 8, !dbg !904, !tbaa !611
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !905
  store i64 %192, i64* %193, align 8, !dbg !906, !tbaa !611
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !907
  %195 = load i64, i64* %194, align 8, !dbg !907, !tbaa !611
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !908
  store i64 %195, i64* %196, align 8, !dbg !909, !tbaa !611
  call void @llvm.dbg.value(metadata i64 %187, metadata !758, metadata !DIExpression()), !dbg !885
  %197 = icmp sgt i64 %187, %175, !dbg !874
  br i1 %197, label %185, label %176, !dbg !886, !llvm.loop !910

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !858
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !912
  br i1 %201, label %202, label %251, !dbg !913

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !914, !tbaa !611
  %204 = mul i64 %203, %199, !dbg !915
  store i64 %204, i64* %34, align 8, !dbg !915, !tbaa !640
  call void @llvm.dbg.value(metadata i64 1, metadata !760, metadata !DIExpression()), !dbg !916
  %205 = load i64, i64* %38, align 8, !dbg !917, !tbaa !611
  store i64 %205, i64* %35, align 8, !dbg !920, !tbaa !611
  %206 = load i64, i64* %39, align 8, !dbg !921, !tbaa !611
  store i64 %206, i64* %36, align 8, !dbg !922, !tbaa !611
  %207 = load i64, i64* %40, align 8, !dbg !923, !tbaa !611
  store i64 %207, i64* %37, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 2, metadata !760, metadata !DIExpression()), !dbg !916
  %208 = load i64, i64* %41, align 8, !dbg !917, !tbaa !611
  store i64 %208, i64* %38, align 8, !dbg !920, !tbaa !611
  %209 = load i64, i64* %42, align 8, !dbg !921, !tbaa !611
  store i64 %209, i64* %39, align 8, !dbg !922, !tbaa !611
  %210 = load i64, i64* %43, align 8, !dbg !923, !tbaa !611
  store i64 %210, i64* %40, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 3, metadata !760, metadata !DIExpression()), !dbg !916
  %211 = load i64, i64* %44, align 8, !dbg !917, !tbaa !611
  store i64 %211, i64* %41, align 8, !dbg !920, !tbaa !611
  %212 = load i64, i64* %45, align 8, !dbg !921, !tbaa !611
  store i64 %212, i64* %42, align 8, !dbg !922, !tbaa !611
  %213 = load i64, i64* %46, align 8, !dbg !923, !tbaa !611
  store i64 %213, i64* %43, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 4, metadata !760, metadata !DIExpression()), !dbg !916
  %214 = load i64, i64* %47, align 8, !dbg !917, !tbaa !611
  store i64 %214, i64* %44, align 8, !dbg !920, !tbaa !611
  %215 = load i64, i64* %48, align 8, !dbg !921, !tbaa !611
  store i64 %215, i64* %45, align 8, !dbg !922, !tbaa !611
  %216 = load i64, i64* %49, align 8, !dbg !923, !tbaa !611
  store i64 %216, i64* %46, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 5, metadata !760, metadata !DIExpression()), !dbg !916
  %217 = load i64, i64* %50, align 8, !dbg !917, !tbaa !611
  store i64 %217, i64* %47, align 8, !dbg !920, !tbaa !611
  %218 = load i64, i64* %51, align 8, !dbg !921, !tbaa !611
  store i64 %218, i64* %48, align 8, !dbg !922, !tbaa !611
  %219 = load i64, i64* %52, align 8, !dbg !923, !tbaa !611
  store i64 %219, i64* %49, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 6, metadata !760, metadata !DIExpression()), !dbg !916
  %220 = load i64, i64* %53, align 8, !dbg !917, !tbaa !611
  store i64 %220, i64* %50, align 8, !dbg !920, !tbaa !611
  %221 = load i64, i64* %54, align 8, !dbg !921, !tbaa !611
  store i64 %221, i64* %51, align 8, !dbg !922, !tbaa !611
  %222 = load i64, i64* %55, align 8, !dbg !923, !tbaa !611
  store i64 %222, i64* %52, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 7, metadata !760, metadata !DIExpression()), !dbg !916
  %223 = load i64, i64* %56, align 8, !dbg !917, !tbaa !611
  store i64 %223, i64* %53, align 8, !dbg !920, !tbaa !611
  %224 = load i64, i64* %57, align 8, !dbg !921, !tbaa !611
  store i64 %224, i64* %54, align 8, !dbg !922, !tbaa !611
  %225 = load i64, i64* %58, align 8, !dbg !923, !tbaa !611
  store i64 %225, i64* %55, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 8, metadata !760, metadata !DIExpression()), !dbg !916
  %226 = load i64, i64* %59, align 8, !dbg !917, !tbaa !611
  store i64 %226, i64* %56, align 8, !dbg !920, !tbaa !611
  %227 = load i64, i64* %60, align 8, !dbg !921, !tbaa !611
  store i64 %227, i64* %57, align 8, !dbg !922, !tbaa !611
  %228 = load i64, i64* %61, align 8, !dbg !923, !tbaa !611
  store i64 %228, i64* %58, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 9, metadata !760, metadata !DIExpression()), !dbg !916
  %229 = load i64, i64* %62, align 8, !dbg !917, !tbaa !611
  store i64 %229, i64* %59, align 8, !dbg !920, !tbaa !611
  %230 = load i64, i64* %63, align 8, !dbg !921, !tbaa !611
  store i64 %230, i64* %60, align 8, !dbg !922, !tbaa !611
  %231 = load i64, i64* %64, align 8, !dbg !923, !tbaa !611
  store i64 %231, i64* %61, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 10, metadata !760, metadata !DIExpression()), !dbg !916
  %232 = load i64, i64* %65, align 8, !dbg !917, !tbaa !611
  store i64 %232, i64* %62, align 8, !dbg !920, !tbaa !611
  %233 = load i64, i64* %66, align 8, !dbg !921, !tbaa !611
  store i64 %233, i64* %63, align 8, !dbg !922, !tbaa !611
  %234 = load i64, i64* %67, align 8, !dbg !923, !tbaa !611
  store i64 %234, i64* %64, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 11, metadata !760, metadata !DIExpression()), !dbg !916
  %235 = load i64, i64* %68, align 8, !dbg !917, !tbaa !611
  store i64 %235, i64* %65, align 8, !dbg !920, !tbaa !611
  %236 = load i64, i64* %69, align 8, !dbg !921, !tbaa !611
  store i64 %236, i64* %66, align 8, !dbg !922, !tbaa !611
  %237 = load i64, i64* %70, align 8, !dbg !923, !tbaa !611
  store i64 %237, i64* %67, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 12, metadata !760, metadata !DIExpression()), !dbg !916
  %238 = load i64, i64* %71, align 8, !dbg !917, !tbaa !611
  store i64 %238, i64* %68, align 8, !dbg !920, !tbaa !611
  %239 = load i64, i64* %72, align 8, !dbg !921, !tbaa !611
  store i64 %239, i64* %69, align 8, !dbg !922, !tbaa !611
  %240 = load i64, i64* %73, align 8, !dbg !923, !tbaa !611
  store i64 %240, i64* %70, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 13, metadata !760, metadata !DIExpression()), !dbg !916
  %241 = load i64, i64* %74, align 8, !dbg !917, !tbaa !611
  store i64 %241, i64* %71, align 8, !dbg !920, !tbaa !611
  %242 = load i64, i64* %75, align 8, !dbg !921, !tbaa !611
  store i64 %242, i64* %72, align 8, !dbg !922, !tbaa !611
  %243 = load i64, i64* %76, align 8, !dbg !923, !tbaa !611
  store i64 %243, i64* %73, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 14, metadata !760, metadata !DIExpression()), !dbg !916
  %244 = load i64, i64* %77, align 8, !dbg !917, !tbaa !611
  store i64 %244, i64* %74, align 8, !dbg !920, !tbaa !611
  %245 = load i64, i64* %78, align 8, !dbg !921, !tbaa !611
  store i64 %245, i64* %75, align 8, !dbg !922, !tbaa !611
  %246 = load i64, i64* %79, align 8, !dbg !923, !tbaa !611
  store i64 %246, i64* %76, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 15, metadata !760, metadata !DIExpression()), !dbg !916
  %247 = load i64, i64* %80, align 8, !dbg !917, !tbaa !611
  store i64 %247, i64* %77, align 8, !dbg !920, !tbaa !611
  %248 = load i64, i64* %81, align 8, !dbg !921, !tbaa !611
  store i64 %248, i64* %78, align 8, !dbg !922, !tbaa !611
  %249 = load i64, i64* %82, align 8, !dbg !923, !tbaa !611
  store i64 %249, i64* %79, align 8, !dbg !924, !tbaa !611
  call void @llvm.dbg.value(metadata i64 16, metadata !760, metadata !DIExpression()), !dbg !916
  store i64 1, i64* %80, align 8, !dbg !925, !tbaa !611
  store i64 0, i64* %81, align 8, !dbg !926, !tbaa !611
  store i64 0, i64* %82, align 8, !dbg !927, !tbaa !611
  %250 = icmp eq i64 %204, %206, !dbg !856
  br i1 %250, label %198, label %251, !dbg !857, !llvm.loop !928

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !930, !tbaa.struct !931
  br label %253, !dbg !932

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !933
  ret void, !dbg !933
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !934 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !938, metadata !DIExpression()), !dbg !939
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9, !dbg !940
  ret void, !dbg !941
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !942 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !944, metadata !DIExpression()), !dbg !945
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9, !dbg !946
  ret void, !dbg !947
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %0) local_unnamed_addr #6 !dbg !948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !952, metadata !DIExpression()), !dbg !953
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
  ], !dbg !954

2:                                                ; preds = %1
  br label %11, !dbg !955

3:                                                ; preds = %1
  br label %11, !dbg !957

4:                                                ; preds = %1
  br label %11, !dbg !958

5:                                                ; preds = %1
  br label %11, !dbg !959

6:                                                ; preds = %1
  br label %11, !dbg !960

7:                                                ; preds = %1
  br label %11, !dbg !961

8:                                                ; preds = %1
  br label %11, !dbg !962

9:                                                ; preds = %1
  br label %11, !dbg !963

10:                                               ; preds = %1
  br label %11, !dbg !964

11:                                               ; preds = %1, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %12 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), %10 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %9 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %8 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %7 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %5 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %4 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %3 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %2 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %1 ], !dbg !953
  ret i8* %12, !dbg !965
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %0, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1) local_unnamed_addr #0 !dbg !966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, metadata !973, metadata !DIExpression()), !dbg !975
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, i64 0, i32 0, !dbg !976
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* undef, metadata !974, metadata !DIExpression()), !dbg !975
  %4 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %3, align 8, !dbg !975, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, metadata !974, metadata !DIExpression()), !dbg !975
  %5 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, null, !dbg !978
  br i1 %5, label %16, label %6, !dbg !979

6:                                                ; preds = %2, %12
  %7 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %14, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i64 0, i32 0, !dbg !980
  %9 = load i8*, i8** %8, align 8, !dbg !980, !tbaa !981
  %10 = tail call i32 @strcmp(i8* %0, i8* %9) #8, !dbg !983
  %11 = icmp eq i32 %10, 0, !dbg !984
  br i1 %11, label %16, label %12, !dbg !985

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i64 0, i32 2, !dbg !986
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* undef, metadata !974, metadata !DIExpression()), !dbg !975
  %14 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %13, align 8, !dbg !975, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, metadata !974, metadata !DIExpression()), !dbg !975
  %15 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, null, !dbg !978
  br i1 %15, label %16, label %6, !dbg !979, !llvm.loop !988

16:                                               ; preds = %6, %12, %2
  %17 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ null, %2 ], [ null, %12 ], [ %7, %6 ], !dbg !975
  ret %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %17, !dbg !990
}

declare !dbg !991 dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) %0, i8* %1, i8* %2) local_unnamed_addr #4 align 2 !dbg !994 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %1, metadata !998, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %2, metadata !999, metadata !DIExpression()), !dbg !1001
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 14, !dbg !1002
  %5 = load i32 ()*, i32 ()** %4, align 8, !dbg !1002, !tbaa !1003
  %6 = tail call i32 %5() #8, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %6, metadata !1000, metadata !DIExpression()), !dbg !1001
  %7 = icmp eq i32 %6, 0, !dbg !1006
  br i1 %7, label %45, label %8, !dbg !1008

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %1, metadata !1012, metadata !DIExpression()) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1015
  %9 = tail call i8* @malloc(i64 1024) #8, !dbg !1018
  %10 = icmp eq i8* %9, null, !dbg !1023
  br i1 %10, label %13, label %11, !dbg !1025

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023, !dbg !1026
  store i8 0, i8* %12, align 1, !dbg !1028, !tbaa !713
  br label %13, !dbg !1029

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1035
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1037
  %16 = tail call i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %6) #9, !dbg !1040
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %16, metadata !1034, metadata !DIExpression()) #10, !dbg !1041
  %17 = icmp eq i8* %16, null, !dbg !1043
  br i1 %17, label %18, label %20, !dbg !1044

18:                                               ; preds = %13
  %19 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !1045
  br label %22, !dbg !1047

20:                                               ; preds = %13
  %21 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %16) #8, !dbg !1048
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1049
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1050
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1050
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1052
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1053, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %6, metadata !1056, metadata !DIExpression()) #10, !dbg !1057
  %25 = sext i32 %6 to i64, !dbg !1059
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %14, i64 %25, i32 1) #8, !dbg !1060
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1061
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1063
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1064
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #10, !dbg !1067
  %29 = icmp eq i8* %2, null, !dbg !1069
  br i1 %29, label %30, label %32, !dbg !1070

30:                                               ; preds = %22
  %31 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !1071
  br label %34, !dbg !1072

32:                                               ; preds = %22
  %33 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* nonnull %2) #8, !dbg !1073
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i8* [ %33, %32 ], [ %31, %30 ], !dbg !1074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1075
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1075
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1077
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1081
  br i1 %10, label %37, label %38, !dbg !1083

37:                                               ; preds = %34
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1085
  br label %44, !dbg !1088

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1092
  %39 = ptrtoint i8* %36 to i64, !dbg !1095
  %40 = ptrtoint i8* %9 to i64, !dbg !1095
  %41 = add i64 %39, 1, !dbg !1095
  %42 = sub i64 %41, %40, !dbg !1096
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %9, i64 %42) #8, !dbg !1097
  tail call void @halide_error(i8* %1, i8* nonnull %9) #8, !dbg !1098
  br label %44

44:                                               ; preds = %37, %38
  call void @free(i8* %9) #8, !dbg !1101
  br label %45, !dbg !1104

45:                                               ; preds = %3, %44
  %46 = xor i1 %7, true, !dbg !1105
  ret i1 %46, !dbg !1105
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1106 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1110, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1111, metadata !DIExpression()), !dbg !1112
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #10, !dbg !1113
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !674, metadata !DIExpression()) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1114
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3, !dbg !1116
  store i8* %0, i8** %5, align 8, !dbg !1116, !tbaa !1117
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4, !dbg !1119
  store i8 1, i8* %6, align 8, !dbg !1119, !tbaa !1120
  %7 = tail call i8* @malloc(i64 1024) #8, !dbg !1121
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0, !dbg !1122
  store i8* %7, i8** %8, align 8, !dbg !1123, !tbaa !1124
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1, !dbg !1125
  %10 = icmp eq i8* %7, null, !dbg !1126
  br i1 %10, label %13, label %11, !dbg !1127

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !1128
  store i8 0, i8* %12, align 1, !dbg !1129, !tbaa !713
  br label %13, !dbg !1130

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ], !dbg !1131
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2, !dbg !1132
  store i8* %14, i8** %15, align 8, !dbg !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1135
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1135
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1137
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1138
  %18 = load i64, i64* %17, align 8, !dbg !1138, !tbaa !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1139, metadata !DIExpression()) #10, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %18, metadata !1142, metadata !DIExpression()) #10, !dbg !1143
  %19 = tail call i8* @halide_uint64_to_string(i8* %16, i8* %14, i64 %18, i32 1) #8, !dbg !1145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1146
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1149
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1149
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %14, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1151
  %22 = load i64, i64* %17, align 8, !dbg !1152, !tbaa !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1153, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %22, metadata !1156, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1157
  %23 = and i64 %22, 4294967295, !dbg !1159
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %14, i64 %23, i32 1) #8, !dbg !1160
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1161
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1161
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1163
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1164
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %14, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1166
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !1167
  %28 = load i8*, i8** %27, align 8, !dbg !1167, !tbaa !768
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1168, metadata !DIExpression()) #10, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %28, metadata !1171, metadata !DIExpression()) #10, !dbg !1172
  %29 = tail call i8* @halide_pointer_to_string(i8* %26, i8* %14, i8* %28) #8, !dbg !1174
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1175
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1177
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1178
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1178
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1180
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !1181
  %33 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1181, !tbaa !815
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i64 0, i32 1, !dbg !1182
  %35 = load i32, i32* %34, align 4, !dbg !1182, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %35, metadata !1186, metadata !DIExpression()) #10, !dbg !1187
  %36 = sext i32 %35 to i64, !dbg !1189
  %37 = tail call i8* @halide_int64_to_string(i8* %31, i8* %14, i64 %36, i32 1) #8, !dbg !1190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1191
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1193
  %39 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1194, !tbaa !815
  %40 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %39, i64 1, i32 1, !dbg !1195
  %41 = load i32, i32* %40, align 4, !dbg !1195, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %41, metadata !1186, metadata !DIExpression()) #10, !dbg !1196
  %42 = sext i32 %41 to i64, !dbg !1198
  %43 = tail call i8* @halide_int64_to_string(i8* %38, i8* %14, i64 %42, i32 1) #8, !dbg !1199
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1200
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1202
  %45 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1203, !tbaa !815
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i64 2, i32 1, !dbg !1204
  %47 = load i32, i32* %46, align 4, !dbg !1204, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %47, metadata !1186, metadata !DIExpression()) #10, !dbg !1205
  %48 = sext i32 %47 to i64, !dbg !1207
  %49 = tail call i8* @halide_int64_to_string(i8* %44, i8* %14, i64 %48, i32 1) #8, !dbg !1208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1209
  %50 = tail call i8* @halide_string_to_string(i8* %49, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1211
  %51 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1212, !tbaa !815
  %52 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i64 3, i32 1, !dbg !1213
  %53 = load i32, i32* %52, align 4, !dbg !1213, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %53, metadata !1186, metadata !DIExpression()) #10, !dbg !1214
  %54 = sext i32 %53 to i64, !dbg !1216
  %55 = tail call i8* @halide_int64_to_string(i8* %50, i8* %14, i64 %54, i32 1) #8, !dbg !1217
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1218
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1218
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1220
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1221
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1223
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1224, !tbaa !815
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i64 0, i32 2, !dbg !1225
  %60 = load i32, i32* %59, align 4, !dbg !1225, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %60, metadata !1186, metadata !DIExpression()) #10, !dbg !1226
  %61 = sext i32 %60 to i64, !dbg !1228
  %62 = tail call i8* @halide_int64_to_string(i8* %57, i8* %14, i64 %61, i32 1) #8, !dbg !1229
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1230
  %63 = tail call i8* @halide_string_to_string(i8* %62, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1232
  %64 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1233, !tbaa !815
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %64, i64 1, i32 2, !dbg !1234
  %66 = load i32, i32* %65, align 4, !dbg !1234, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %66, metadata !1186, metadata !DIExpression()) #10, !dbg !1235
  %67 = sext i32 %66 to i64, !dbg !1237
  %68 = tail call i8* @halide_int64_to_string(i8* %63, i8* %14, i64 %67, i32 1) #8, !dbg !1238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1239
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1239
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1241
  %70 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1242, !tbaa !815
  %71 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %70, i64 2, i32 2, !dbg !1243
  %72 = load i32, i32* %71, align 4, !dbg !1243, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %72, metadata !1186, metadata !DIExpression()) #10, !dbg !1244
  %73 = sext i32 %72 to i64, !dbg !1246
  %74 = tail call i8* @halide_int64_to_string(i8* %69, i8* %14, i64 %73, i32 1) #8, !dbg !1247
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1248
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1248
  %75 = tail call i8* @halide_string_to_string(i8* %74, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1250
  %76 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1251, !tbaa !815
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %76, i64 3, i32 2, !dbg !1252
  %78 = load i32, i32* %77, align 4, !dbg !1252, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %78, metadata !1186, metadata !DIExpression()) #10, !dbg !1253
  %79 = sext i32 %78 to i64, !dbg !1255
  %80 = tail call i8* @halide_int64_to_string(i8* %75, i8* %14, i64 %79, i32 1) #8, !dbg !1256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1257
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1260
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1260
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %14, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1262
  %83 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1263, !tbaa !815
  %84 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %83, i64 0, i32 0, !dbg !1264
  %85 = load i32, i32* %84, align 4, !dbg !1264, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %85, metadata !1186, metadata !DIExpression()) #10, !dbg !1265
  %86 = sext i32 %85 to i64, !dbg !1267
  %87 = tail call i8* @halide_int64_to_string(i8* %82, i8* %14, i64 %86, i32 1) #8, !dbg !1268
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1269
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1271
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1272, !tbaa !815
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 1, i32 0, !dbg !1273
  %91 = load i32, i32* %90, align 4, !dbg !1273, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %91, metadata !1186, metadata !DIExpression()) #10, !dbg !1274
  %92 = load i8*, i8** %15, align 8, !dbg !1276, !tbaa !1277
  %93 = sext i32 %91 to i64, !dbg !1278
  %94 = tail call i8* @halide_int64_to_string(i8* %88, i8* %92, i64 %93, i32 1) #8, !dbg !1279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1280
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1282
  %96 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1283, !tbaa !815
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %96, i64 2, i32 0, !dbg !1284
  %98 = load i32, i32* %97, align 4, !dbg !1284, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %98, metadata !1186, metadata !DIExpression()) #10, !dbg !1285
  %99 = sext i32 %98 to i64, !dbg !1287
  %100 = tail call i8* @halide_int64_to_string(i8* %95, i8* %92, i64 %99, i32 1) #8, !dbg !1288
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1289
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1289
  %101 = tail call i8* @halide_string_to_string(i8* %100, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1291
  %102 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1292, !tbaa !815
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %102, i64 3, i32 0, !dbg !1293
  %104 = load i32, i32* %103, align 4, !dbg !1293, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %104, metadata !1186, metadata !DIExpression()) #10, !dbg !1294
  %105 = sext i32 %104 to i64, !dbg !1296
  %106 = tail call i8* @halide_int64_to_string(i8* %101, i8* %92, i64 %105, i32 1) #8, !dbg !1297
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1298
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1298
  %107 = tail call i8* @halide_string_to_string(i8* %106, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1301
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1301
  %108 = tail call i8* @halide_string_to_string(i8* %107, i8* %92, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1303
  %109 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, !dbg !1304
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1305, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %109, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  %110 = tail call i8* @halide_type_to_string(i8* %108, i8* %92, %struct.halide_type_t* nonnull %109) #8, !dbg !1311
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1312
  %111 = tail call i8* @halide_string_to_string(i8* %110, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1314
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1315
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1315
  %112 = tail call i8* @halide_string_to_string(i8* %111, i8* %92, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1317
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1318, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1323, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 1, metadata !1326, metadata !DIExpression()), !dbg !1327
  %113 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1329
  %114 = load i64, i64* %113, align 8, !dbg !1329, !tbaa !1330
  %115 = and i64 %114, 1, !dbg !1331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %114, metadata !1186, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #10, !dbg !1332
  %116 = tail call i8* @halide_int64_to_string(i8* %112, i8* %92, i64 %115, i32 1) #8, !dbg !1334
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1335
  %117 = tail call i8* @halide_string_to_string(i8* %116, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1337
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1338
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1338
  %118 = tail call i8* @halide_string_to_string(i8* %117, i8* %92, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !1340
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1341, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1323, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 2, metadata !1326, metadata !DIExpression()), !dbg !1346
  %119 = load i64, i64* %113, align 8, !dbg !1348, !tbaa !1330
  %120 = lshr i64 %119, 1, !dbg !1349
  %121 = and i64 %120, 1, !dbg !1349
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %120, metadata !1186, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #10, !dbg !1350
  %122 = tail call i8* @halide_int64_to_string(i8* %118, i8* %92, i64 %121, i32 1) #8, !dbg !1352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1353
  %123 = tail call i8* @halide_string_to_string(i8* %122, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1355
  store i8* %123, i8** %9, align 8, !dbg !1356, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !700, metadata !DIExpression()) #10, !dbg !1358
  %124 = load i8*, i8** %8, align 8, !dbg !1360, !tbaa !1124
  %125 = icmp eq i8* %124, null, !dbg !1360
  %126 = load i8*, i8** %5, align 8, !dbg !1361, !tbaa !1117
  br i1 %125, label %127, label %128, !dbg !1362

127:                                              ; preds = %13
  tail call void @halide_error(i8* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1363
  br label %134, !dbg !1364

128:                                              ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1365
  %129 = ptrtoint i8* %123 to i64, !dbg !1367
  %130 = ptrtoint i8* %124 to i64, !dbg !1367
  %131 = add i64 %129, 1, !dbg !1367
  %132 = sub i64 %131, %130, !dbg !1368
  %133 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %126, i8* nonnull %124, i64 %132) #8, !dbg !1369
  tail call void @halide_print(i8* %126, i8* nonnull %124) #8, !dbg !1370
  br label %134

134:                                              ; preds = %128, %127
  %135 = load i8, i8* %6, align 8, !dbg !1371, !tbaa !1120, !range !1372
  %136 = icmp eq i8 %135, 0, !dbg !1371
  br i1 %136, label %138, label %137, !dbg !1373

137:                                              ; preds = %134
  call void @free(i8* %124) #8, !dbg !1374
  br label %138, !dbg !1375

138:                                              ; preds = %134, %137
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #10, !dbg !1113
  ret void, !dbg !1376
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) %0) local_unnamed_addr #6 align 2 !dbg !1377 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, metadata !1379, metadata !DIExpression()), !dbg !1380
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 0, !dbg !1381
  store i8 0, i8* %2, align 8, !dbg !1382, !tbaa !1383
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 1, !dbg !1384
  store void (i32, i32)* null, void (i32, i32)** %3, align 8, !dbg !1384, !tbaa !1385
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 2, !dbg !1384
  store void (i32, i32)* null, void (i32, i32)** %4, align 8, !dbg !1384, !tbaa !1386
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 3, !dbg !1384
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %5, align 8, !dbg !1384, !tbaa !1387
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 4, !dbg !1384
  store void (i32, i64, i8*, i32)* null, void (i32, i64, i8*, i32)** %6, align 8, !dbg !1384, !tbaa !1388
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 5, !dbg !1384
  store i32 ()* null, i32 ()** %7, align 8, !dbg !1384, !tbaa !1389
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 6, !dbg !1384
  store void (i32)* null, void (i32)** %8, align 8, !dbg !1384, !tbaa !1390
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 7, !dbg !1384
  store i32 (i32)* null, i32 (i32)** %9, align 8, !dbg !1384, !tbaa !1391
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 8, !dbg !1384
  store void (i32, i32*)* null, void (i32, i32*)** %10, align 8, !dbg !1384, !tbaa !1392
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 9, !dbg !1384
  store void (i32)* null, void (i32)** %11, align 8, !dbg !1384, !tbaa !1393
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 10, !dbg !1384
  store void (i32)* null, void (i32)** %12, align 8, !dbg !1384, !tbaa !1394
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 11, !dbg !1384
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %13, align 8, !dbg !1384, !tbaa !1395
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 12, !dbg !1384
  store void ()* null, void ()** %14, align 8, !dbg !1384, !tbaa !1396
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 13, !dbg !1384
  store void (i32, i32*)* null, void (i32, i32*)** %15, align 8, !dbg !1384, !tbaa !1397
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 14, !dbg !1384
  store i32 ()* null, i32 ()** %16, align 8, !dbg !1384, !tbaa !1003
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 15, !dbg !1384
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %17, align 8, !dbg !1384, !tbaa !1398
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 16, !dbg !1384
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %18, align 8, !dbg !1384, !tbaa !1399
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 17, !dbg !1384
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %19, align 8, !dbg !1384, !tbaa !1400
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 18, !dbg !1384
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %20, align 8, !dbg !1384, !tbaa !1401
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 19, !dbg !1384
  store i8* (i32)* null, i8* (i32)** %21, align 8, !dbg !1384, !tbaa !1402
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 20, !dbg !1384
  store void (i32)* null, void (i32)** %22, align 8, !dbg !1384, !tbaa !1403
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 21, !dbg !1384
  store i8* (i32, i64, i64, i32)* null, i8* (i32, i64, i64, i32)** %23, align 8, !dbg !1384, !tbaa !1404
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 22, !dbg !1384
  store void (i32)* null, void (i32)** %24, align 8, !dbg !1384, !tbaa !1405
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 23, !dbg !1384
  store void (i32, i32, i8**, i32*)* null, void (i32, i32, i8**, i32*)** %25, align 8, !dbg !1384, !tbaa !1406
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 24, !dbg !1384
  store void (i32, i32)* null, void (i32, i32)** %26, align 8, !dbg !1384, !tbaa !1407
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 25, !dbg !1384
  store void (i32, i32)* null, void (i32, i32)** %27, align 8, !dbg !1384, !tbaa !1408
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 26, !dbg !1384
  store void (i32, float)* null, void (i32, float)** %28, align 8, !dbg !1384, !tbaa !1409
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 27, !dbg !1384
  store void (i32)* null, void (i32)** %29, align 8, !dbg !1384, !tbaa !1410
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 28, !dbg !1384
  store void (i32)* null, void (i32)** %30, align 8, !dbg !1384, !tbaa !1411
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 29, !dbg !1384
  store void (i32, i32, i32, i32*, i32*, i32*, i8*)* null, void (i32, i32, i32, i32*, i32*, i32*, i8*)** %31, align 8, !dbg !1384, !tbaa !1412
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i64 0, i32 30, !dbg !1384
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %32, align 8, !dbg !1384, !tbaa !1413
  ret void, !dbg !1414
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* %1, i8** %2, i1 zeroext %3) local_unnamed_addr #4 !dbg !1415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1419, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %1, metadata !1420, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8** %2, metadata !1421, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i1 %3, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1424
  %5 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) #8, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %5, metadata !1423, metadata !DIExpression()), !dbg !1424
  %6 = icmp eq i8* %5, null, !dbg !1426
  %7 = and i1 %6, %3, !dbg !1428
  br i1 %7, label %8, label %31, !dbg !1428

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !1429
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1429
  %9 = tail call i8* @malloc(i64 1024) #8, !dbg !1432
  %10 = icmp eq i8* %9, null, !dbg !1433
  br i1 %10, label %13, label %11, !dbg !1434

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023, !dbg !1435
  store i8 0, i8* %12, align 1, !dbg !1436, !tbaa !713
  br label %13, !dbg !1437

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1438
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1439
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1439
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1441
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %1, metadata !1034, metadata !DIExpression()) #10, !dbg !1442
  %16 = icmp eq i8* %1, null, !dbg !1444
  br i1 %16, label %17, label %19, !dbg !1445

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !1446
  br label %21, !dbg !1447

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %1) #8, !dbg !1448
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ], !dbg !1449
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1450
  br i1 %10, label %23, label %24, !dbg !1452

23:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1453
  br label %30, !dbg !1454

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1455
  %25 = ptrtoint i8* %22 to i64, !dbg !1457
  %26 = ptrtoint i8* %9 to i64, !dbg !1457
  %27 = sub i64 1, %26, !dbg !1457
  %28 = add i64 %27, %25, !dbg !1458
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %28) #8, !dbg !1459
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8, !dbg !1460
  br label %30

30:                                               ; preds = %24, %23
  tail call void @free(i8* %9) #8, !dbg !1461
  br label %32, !dbg !1462

31:                                               ; preds = %4
  store i8* %5, i8** %2, align 8, !dbg !1463, !tbaa !977
  br label %32, !dbg !1464

32:                                               ; preds = %31, %30
  %33 = phi i32 [ 0, %31 ], [ -1, %30 ], !dbg !1424
  ret i32 %33, !dbg !1465
}

declare !dbg !1466 dso_local i8* @halide_opengl_get_proc_address(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) local_unnamed_addr #4 !dbg !1470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1472, metadata !DIExpression()), !dbg !1473
  %2 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !1474, !tbaa !1383, !range !1372
  %3 = icmp eq i8 %2, 0, !dbg !1474
  br i1 %3, label %4, label %131, !dbg !1476

4:                                                ; preds = %1
  tail call void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE) #9, !dbg !1477
  %5 = tail call i32 @halide_opengl_create_context(i8* %0) #8, !dbg !1478
  %6 = icmp eq i32 %5, 0, !dbg !1478
  br i1 %6, label %21, label %7, !dbg !1480

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1481
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !1481
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1481
  %8 = tail call i8* @malloc(i64 1024) #8, !dbg !1484
  %9 = icmp eq i8* %8, null, !dbg !1485
  br i1 %9, label %10, label %12, !dbg !1486

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1487
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1487
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !1489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1490
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1492
  br label %20, !dbg !1493

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1494
  store i8 0, i8* %13, align 1, !dbg !1495, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1487
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1487
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !1489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1490
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1496
  %15 = ptrtoint i8* %14 to i64, !dbg !1498
  %16 = ptrtoint i8* %8 to i64, !dbg !1498
  %17 = add i64 %15, 1, !dbg !1498
  %18 = sub i64 %17, %16, !dbg !1499
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %18) #8, !dbg !1500
  tail call void @halide_error(i8* %0, i8* nonnull %8) #8, !dbg !1501
  br label %20

20:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #8, !dbg !1502
  br label %131, !dbg !1503

21:                                               ; preds = %4
  %22 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 1) to i8**), i1 zeroext true) #9, !dbg !1504
  %23 = icmp slt i32 %22, 0, !dbg !1504
  br i1 %23, label %131, label %24, !dbg !1506

24:                                               ; preds = %21
  %25 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2) to i8**), i1 zeroext true) #9, !dbg !1507
  %26 = icmp slt i32 %25, 0, !dbg !1507
  br i1 %26, label %131, label %27, !dbg !1506

27:                                               ; preds = %24
  %28 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 3) to i8**), i1 zeroext true) #9, !dbg !1509
  %29 = icmp slt i32 %28, 0, !dbg !1509
  br i1 %29, label %131, label %30, !dbg !1506

30:                                               ; preds = %27
  %31 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** bitcast (void (i32, i64, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 4) to i8**), i1 zeroext true) #9, !dbg !1511
  %32 = icmp slt i32 %31, 0, !dbg !1511
  br i1 %32, label %131, label %33, !dbg !1506

33:                                               ; preds = %30
  %34 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 5) to i8**), i1 zeroext true) #9, !dbg !1513
  %35 = icmp slt i32 %34, 0, !dbg !1513
  br i1 %35, label %131, label %36, !dbg !1506

36:                                               ; preds = %33
  %37 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 6) to i8**), i1 zeroext true) #9, !dbg !1515
  %38 = icmp slt i32 %37, 0, !dbg !1515
  br i1 %38, label %131, label %39, !dbg !1506

39:                                               ; preds = %36
  %40 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8** bitcast (i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 7) to i8**), i1 zeroext true) #9, !dbg !1517
  %41 = icmp slt i32 %40, 0, !dbg !1517
  br i1 %41, label %131, label %42, !dbg !1506

42:                                               ; preds = %39
  %43 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 8) to i8**), i1 zeroext true) #9, !dbg !1519
  %44 = icmp slt i32 %43, 0, !dbg !1519
  br i1 %44, label %131, label %45, !dbg !1506

45:                                               ; preds = %42
  %46 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9) to i8**), i1 zeroext true) #9, !dbg !1521
  %47 = icmp slt i32 %46, 0, !dbg !1521
  br i1 %47, label %131, label %48, !dbg !1506

48:                                               ; preds = %45
  %49 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10) to i8**), i1 zeroext true) #9, !dbg !1523
  %50 = icmp slt i32 %49, 0, !dbg !1523
  br i1 %50, label %131, label %51, !dbg !1506

51:                                               ; preds = %48
  %52 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 11) to i8**), i1 zeroext true) #9, !dbg !1525
  %53 = icmp slt i32 %52, 0, !dbg !1525
  br i1 %53, label %131, label %54, !dbg !1506

54:                                               ; preds = %51
  %55 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8** bitcast (void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 12) to i8**), i1 zeroext true) #9, !dbg !1527
  %56 = icmp slt i32 %55, 0, !dbg !1527
  br i1 %56, label %131, label %57, !dbg !1506

57:                                               ; preds = %54
  %58 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 13) to i8**), i1 zeroext true) #9, !dbg !1529
  %59 = icmp slt i32 %58, 0, !dbg !1529
  br i1 %59, label %131, label %60, !dbg !1506

60:                                               ; preds = %57
  %61 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 14) to i8**), i1 zeroext true) #9, !dbg !1531
  %62 = icmp slt i32 %61, 0, !dbg !1531
  br i1 %62, label %131, label %63, !dbg !1506

63:                                               ; preds = %60
  %64 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 15) to i8**), i1 zeroext true) #9, !dbg !1533
  %65 = icmp slt i32 %64, 0, !dbg !1533
  br i1 %65, label %131, label %66, !dbg !1506

66:                                               ; preds = %63
  %67 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16) to i8**), i1 zeroext true) #9, !dbg !1535
  %68 = icmp slt i32 %67, 0, !dbg !1535
  br i1 %68, label %131, label %69, !dbg !1506

69:                                               ; preds = %66
  %70 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 17) to i8**), i1 zeroext true) #9, !dbg !1537
  %71 = icmp slt i32 %70, 0, !dbg !1537
  br i1 %71, label %131, label %72, !dbg !1506

72:                                               ; preds = %69
  %73 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18) to i8**), i1 zeroext true) #9, !dbg !1539
  %74 = icmp slt i32 %73, 0, !dbg !1539
  br i1 %74, label %131, label %75, !dbg !1506

75:                                               ; preds = %72
  %76 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8** bitcast (i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 19) to i8**), i1 zeroext true) #9, !dbg !1541
  %77 = icmp slt i32 %76, 0, !dbg !1541
  br i1 %77, label %131, label %78, !dbg !1506

78:                                               ; preds = %75
  %79 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 20) to i8**), i1 zeroext true) #9, !dbg !1543
  %80 = icmp slt i32 %79, 0, !dbg !1543
  br i1 %80, label %131, label %81, !dbg !1506

81:                                               ; preds = %78
  %82 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8** bitcast (i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21) to i8**), i1 zeroext true) #9, !dbg !1545
  %83 = icmp slt i32 %82, 0, !dbg !1545
  br i1 %83, label %131, label %84, !dbg !1506

84:                                               ; preds = %81
  %85 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 22) to i8**), i1 zeroext true) #9, !dbg !1547
  %86 = icmp slt i32 %85, 0, !dbg !1547
  br i1 %86, label %131, label %87, !dbg !1506

87:                                               ; preds = %84
  %88 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8** bitcast (void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 23) to i8**), i1 zeroext true) #9, !dbg !1549
  %89 = icmp slt i32 %88, 0, !dbg !1549
  br i1 %89, label %131, label %90, !dbg !1506

90:                                               ; preds = %87
  %91 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 24) to i8**), i1 zeroext true) #9, !dbg !1551
  %92 = icmp slt i32 %91, 0, !dbg !1551
  br i1 %92, label %131, label %93, !dbg !1506

93:                                               ; preds = %90
  %94 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 25) to i8**), i1 zeroext true) #9, !dbg !1553
  %95 = icmp slt i32 %94, 0, !dbg !1553
  br i1 %95, label %131, label %96, !dbg !1506

96:                                               ; preds = %93
  %97 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8** bitcast (void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 26) to i8**), i1 zeroext true) #9, !dbg !1555
  %98 = icmp slt i32 %97, 0, !dbg !1555
  br i1 %98, label %131, label %99, !dbg !1506

99:                                               ; preds = %96
  %100 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27) to i8**), i1 zeroext true) #9, !dbg !1557
  %101 = icmp slt i32 %100, 0, !dbg !1557
  br i1 %101, label %131, label %102, !dbg !1506

102:                                              ; preds = %99
  %103 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 28) to i8**), i1 zeroext true) #9, !dbg !1559
  %104 = icmp slt i32 %103, 0, !dbg !1559
  br i1 %104, label %131, label %105, !dbg !1506

105:                                              ; preds = %102
  %106 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8** bitcast (void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 29) to i8**), i1 zeroext true) #9, !dbg !1561
  %107 = icmp slt i32 %106, 0, !dbg !1561
  br i1 %107, label %131, label %108, !dbg !1506

108:                                              ; preds = %105
  %109 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i8** bitcast (i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 30) to i8**), i1 zeroext true) #9, !dbg !1563
  %110 = icmp slt i32 %109, 0, !dbg !1563
  br i1 %110, label %131, label %111, !dbg !1506

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1565
  %112 = tail call i8* @malloc(i64 1024) #8, !dbg !1567
  %113 = icmp eq i8* %112, null, !dbg !1568
  br i1 %113, label %116, label %114, !dbg !1569

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %112, i64 1023, !dbg !1570
  store i8 0, i8* %115, align 1, !dbg !1571, !tbaa !713
  br label %116, !dbg !1572

116:                                              ; preds = %111, %114
  %117 = phi i8* [ %115, %114 ], [ null, %111 ], !dbg !1573
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1574
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1574
  %118 = tail call i8* @halide_string_to_string(i8* %112, i8* %117, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0)) #8, !dbg !1576
  %119 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 19), align 8, !dbg !1577, !tbaa !1402
  %120 = tail call i8* %119(i32 7938) #8, !dbg !1578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %120, metadata !1171, metadata !DIExpression()) #10, !dbg !1579
  %121 = tail call i8* @halide_pointer_to_string(i8* %118, i8* %117, i8* %120) #8, !dbg !1581
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1582
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1582
  %122 = tail call i8* @halide_string_to_string(i8* %121, i8* %117, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1584
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1585
  br i1 %113, label %123, label %124, !dbg !1587

123:                                              ; preds = %116
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1588
  br label %130, !dbg !1589

124:                                              ; preds = %116
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1590
  %125 = ptrtoint i8* %122 to i64, !dbg !1592
  %126 = ptrtoint i8* %112 to i64, !dbg !1592
  %127 = add i64 %125, 1, !dbg !1592
  %128 = sub i64 %127, %126, !dbg !1593
  %129 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %112, i64 %128) #8, !dbg !1594
  tail call void @halide_print(i8* %0, i8* nonnull %112) #8, !dbg !1595
  br label %130

130:                                              ; preds = %124, %123
  tail call void @free(i8* %112) #8, !dbg !1596
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !1597, !tbaa !1383
  br label %131, !dbg !1598

131:                                              ; preds = %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %1, %130, %20
  %132 = phi i32 [ -1, %20 ], [ 0, %130 ], [ 0, %1 ], [ -1, %21 ], [ -1, %24 ], [ -1, %27 ], [ -1, %30 ], [ -1, %33 ], [ -1, %36 ], [ -1, %39 ], [ -1, %42 ], [ -1, %45 ], [ -1, %48 ], [ -1, %51 ], [ -1, %54 ], [ -1, %57 ], [ -1, %60 ], [ -1, %63 ], [ -1, %66 ], [ -1, %69 ], [ -1, %72 ], [ -1, %75 ], [ -1, %78 ], [ -1, %81 ], [ -1, %84 ], [ -1, %87 ], [ -1, %90 ], [ -1, %93 ], [ -1, %96 ], [ -1, %99 ], [ -1, %102 ], [ -1, %105 ], [ -1, %108 ], !dbg !1473
  ret i32 %132, !dbg !1599
}

declare !dbg !1600 dso_local i32 @halide_opengl_create_context(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv(i8* %0) #4 !dbg !1601 {
  %2 = alloca %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1612
  %3 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %3, metadata !1604, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1614
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1614
  %4 = tail call i8* @malloc(i64 1024) #8, !dbg !1616
  %5 = icmp eq i8* %4, null, !dbg !1617
  br i1 %5, label %8, label %6, !dbg !1618

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1619
  store i8 0, i8* %7, align 1, !dbg !1620, !tbaa !713
  br label %8, !dbg !1621

8:                                                ; preds = %1, %6
  %9 = phi i8* [ %7, %6 ], [ null, %1 ], !dbg !1622
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1623
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i64 0, i64 0)) #8, !dbg !1625
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !1626
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1628
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1629
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !1631
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1632
  br i1 %5, label %13, label %14, !dbg !1634

13:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1635
  br label %20, !dbg !1636

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1637
  %15 = ptrtoint i8* %12 to i64, !dbg !1639
  %16 = ptrtoint i8* %4 to i64, !dbg !1639
  %17 = add i64 %15, 1, !dbg !1639
  %18 = sub i64 %17, %16, !dbg !1640
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %18) #8, !dbg !1641
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1642
  br label %20

20:                                               ; preds = %14, %13
  tail call void @free(i8* %4) #8, !dbg !1643
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1605, metadata !DIExpression()), !dbg !1612
  %21 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 8, !dbg !1612, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %21, metadata !1605, metadata !DIExpression()), !dbg !1612
  %22 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %21, null, !dbg !1644
  br i1 %22, label %43, label %23, !dbg !1645

23:                                               ; preds = %20, %39
  %24 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %41, %39 ], [ %21, %20 ]
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %24, i64 0, i32 0, !dbg !1646
  %26 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %25, align 8, !dbg !1646, !tbaa !1647
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %26, metadata !1606, metadata !DIExpression()), !dbg !1649
  %27 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %26, null, !dbg !1650
  br i1 %27, label %39, label %28, !dbg !1651

28:                                               ; preds = %23, %28
  %29 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %31, %28 ], [ %26, %23 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %29, metadata !1606, metadata !DIExpression()), !dbg !1649
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %29, i64 0, i32 2, !dbg !1652
  %31 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %30, align 8, !dbg !1652, !tbaa !1653
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %31, metadata !1608, metadata !DIExpression()), !dbg !1654
  %32 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9), align 8, !dbg !1655, !tbaa !1393
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %29, i64 0, i32 1, !dbg !1656
  %34 = load i32, i32* %33, align 8, !dbg !1656, !tbaa !1657
  tail call void %32(i32 %34) #8, !dbg !1658
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %29, i64 0, i32 0, !dbg !1659
  %36 = load i8*, i8** %35, align 8, !dbg !1659, !tbaa !981
  tail call void @free(i8* %36) #8, !dbg !1660
  %37 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %29 to i8*, !dbg !1661
  tail call void @free(i8* nonnull %37) #8, !dbg !1662
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %31, metadata !1606, metadata !DIExpression()), !dbg !1649
  %38 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %31, null, !dbg !1650
  br i1 %38, label %39, label %28, !dbg !1651, !llvm.loop !1663

39:                                               ; preds = %28, %23
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %25, align 8, !dbg !1665, !tbaa !1647
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %24, i64 0, i32 1, !dbg !1666
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1610, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1605, metadata !DIExpression()), !dbg !1612
  %41 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %40, align 8, !dbg !1612, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %41, metadata !1605, metadata !DIExpression()), !dbg !1612
  %42 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %41, null, !dbg !1644
  br i1 %42, label %43, label %23, !dbg !1645, !llvm.loop !1667

43:                                               ; preds = %39, %20
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %2, i64 0, i32 0, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 248, i8* nonnull %44), !dbg !1669
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(248) %44, i8 0, i64 248, i1 false), !dbg !1669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(248) getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), i8* nonnull align 8 dereferenceable(248) %44, i64 248, i1 false), !dbg !1670, !tbaa.struct !1671
  call void @llvm.lifetime.end.p0i8(i64 248, i8* nonnull %44), !dbg !1673
  %45 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %45, metadata !1611, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1675
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1675
  %46 = tail call i8* @malloc(i64 1024) #8, !dbg !1677
  %47 = icmp eq i8* %46, null, !dbg !1678
  br i1 %47, label %50, label %48, !dbg !1679

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %46, i64 1023, !dbg !1680
  store i8 0, i8* %49, align 1, !dbg !1681, !tbaa !713
  br label %50, !dbg !1682

50:                                               ; preds = %43, %48
  %51 = phi i8* [ %49, %48 ], [ null, %43 ], !dbg !1683
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1684
  %52 = tail call i8* @halide_string_to_string(i8* %46, i8* %51, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !1686
  %53 = sub i64 %45, %3, !dbg !1687
  %54 = uitofp i64 %53 to double, !dbg !1688
  %55 = fdiv double %54, 1.000000e+06, !dbg !1689
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !1694
  call void @llvm.dbg.value(metadata double %55, metadata !1693, metadata !DIExpression()) #10, !dbg !1694
  %56 = tail call i8* @halide_double_to_string(i8* %52, i8* %51, double %55, i32 1) #8, !dbg !1696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1697
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1697
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %51, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !1699
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1700
  br i1 %47, label %58, label %59, !dbg !1702

58:                                               ; preds = %50
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1703
  br label %65, !dbg !1704

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1705
  %60 = ptrtoint i8* %57 to i64, !dbg !1707
  %61 = ptrtoint i8* %46 to i64, !dbg !1707
  %62 = add i64 %60, 1, !dbg !1707
  %63 = sub i64 %62, %61, !dbg !1708
  %64 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %46, i64 %63) #8, !dbg !1709
  tail call void @halide_print(i8* %0, i8* nonnull %46) #8, !dbg !1710
  br label %65

65:                                               ; preds = %59, %58
  tail call void @free(i8* %46) #8, !dbg !1711
  ret i32 0, !dbg !1712
}

declare !dbg !1713 extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare !dbg !1716 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1719 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1723, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1724, metadata !DIExpression()), !dbg !1735
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %5, metadata !1725, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1737
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1737
  %6 = tail call i8* @malloc(i64 1024) #8, !dbg !1739
  %7 = icmp eq i8* %6, null, !dbg !1740
  br i1 %7, label %10, label %8, !dbg !1741

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !1742
  store i8 0, i8* %9, align 1, !dbg !1743, !tbaa !713
  br label %10, !dbg !1744

10:                                               ; preds = %2, %8
  %11 = phi i8* [ %9, %8 ], [ null, %2 ], !dbg !1745
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.64, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1746
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !1748
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !1749
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1751
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1752
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1752
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !1754
  %15 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1755
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %15, metadata !1171, metadata !DIExpression()) #10, !dbg !1756
  %16 = tail call i8* @halide_pointer_to_string(i8* %14, i8* %11, i8* %15) #8, !dbg !1758
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1759
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !1761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1762
  br i1 %7, label %18, label %19, !dbg !1764

18:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1765
  br label %25, !dbg !1766

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1767
  %20 = ptrtoint i8* %17 to i64, !dbg !1769
  %21 = ptrtoint i8* %6 to i64, !dbg !1769
  %22 = add i64 %20, 1, !dbg !1769
  %23 = sub i64 %22, %21, !dbg !1770
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %23) #8, !dbg !1771
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1772
  br label %25

25:                                               ; preds = %18, %19
  call void @free(i8* %6) #8, !dbg !1773
  %26 = call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %26, metadata !1726, metadata !DIExpression()), !dbg !1775
  %27 = icmp eq i32 %26, 0, !dbg !1776
  br i1 %27, label %28, label %325

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1777, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 0, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1786, metadata !DIExpression()), !dbg !1790
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !1791
  %30 = load i32, i32* %29, align 4, !dbg !1791, !tbaa !812
  %31 = icmp sgt i32 %30, 0, !dbg !1793
  br i1 %31, label %35, label %32, !dbg !1794

32:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1795
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !1797
  %34 = load i8, i8* %33, align 1, !dbg !1797, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1798, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !1806
  br label %78, !dbg !1807

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %37 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %36, align 8, !tbaa !815
  %38 = zext i32 %30 to i64, !dbg !1793
  br label %39, !dbg !1794

39:                                               ; preds = %53, %35
  %40 = phi i64 [ 0, %35 ], [ %55, %53 ]
  %41 = phi i64 [ 0, %35 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1786, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %41, metadata !1785, metadata !DIExpression()), !dbg !1788
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %40, i32 2, !dbg !1808
  %43 = load i32, i32* %42, align 4, !dbg !1808, !tbaa !823
  %44 = icmp sgt i32 %43, 0, !dbg !1811
  br i1 %44, label %45, label %53, !dbg !1812

45:                                               ; preds = %39
  %46 = zext i32 %43 to i64, !dbg !1813
  %47 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %40, i32 1, !dbg !1815
  %48 = load i32, i32* %47, align 4, !dbg !1815, !tbaa !888
  %49 = add nsw i32 %48, -1, !dbg !1816
  %50 = sext i32 %49 to i64, !dbg !1817
  %51 = mul nsw i64 %50, %46, !dbg !1818
  %52 = add nsw i64 %51, %41, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %52, metadata !1785, metadata !DIExpression()), !dbg !1788
  br label %53, !dbg !1820

53:                                               ; preds = %45, %39
  %54 = phi i64 [ %52, %45 ], [ %41, %39 ], !dbg !1788
  call void @llvm.dbg.value(metadata i64 %54, metadata !1785, metadata !DIExpression()), !dbg !1788
  %55 = add nuw nsw i64 %40, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %55, metadata !1786, metadata !DIExpression()), !dbg !1790
  %56 = icmp eq i64 %55, %38, !dbg !1793
  br i1 %56, label %57, label %39, !dbg !1794, !llvm.loop !1822

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1785, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1795
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !1797
  %59 = load i8, i8* %58, align 1, !dbg !1797, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1798, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !1806
  br label %60, !dbg !1807

60:                                               ; preds = %74, %57
  %61 = phi i64 [ 0, %57 ], [ %76, %74 ]
  %62 = phi i64 [ 0, %57 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i64 %61, metadata !1802, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %62, metadata !1801, metadata !DIExpression()), !dbg !1804
  %63 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %61, i32 2, !dbg !1824
  %64 = load i32, i32* %63, align 4, !dbg !1824, !tbaa !823
  %65 = icmp slt i32 %64, 0, !dbg !1828
  br i1 %65, label %66, label %74, !dbg !1829

66:                                               ; preds = %60
  %67 = sext i32 %64 to i64, !dbg !1830
  %68 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %61, i32 1, !dbg !1832
  %69 = load i32, i32* %68, align 4, !dbg !1832, !tbaa !888
  %70 = add nsw i32 %69, -1, !dbg !1833
  %71 = sext i32 %70 to i64, !dbg !1834
  %72 = mul nsw i64 %71, %67, !dbg !1835
  %73 = add nsw i64 %72, %62, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %73, metadata !1801, metadata !DIExpression()), !dbg !1804
  br label %74, !dbg !1837

74:                                               ; preds = %66, %60
  %75 = phi i64 [ %73, %66 ], [ %62, %60 ], !dbg !1804
  call void @llvm.dbg.value(metadata i64 %75, metadata !1801, metadata !DIExpression()), !dbg !1804
  %76 = add nuw nsw i64 %61, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %76, metadata !1802, metadata !DIExpression()), !dbg !1806
  %77 = icmp eq i64 %76, %38, !dbg !1839
  br i1 %77, label %78, label %60, !dbg !1807, !llvm.loop !1840

78:                                               ; preds = %74, %32
  %79 = phi i8 [ %34, %32 ], [ %59, %74 ]
  %80 = phi i64 [ 0, %32 ], [ %54, %74 ]
  %81 = phi i64 [ 0, %32 ], [ %75, %74 ], !dbg !1804
  %82 = zext i8 %79 to i64, !dbg !1797
  %83 = add nuw nsw i64 %82, 7, !dbg !1842
  %84 = lshr i64 %83, 3, !dbg !1843
  %85 = add nsw i64 %80, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %85, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1845
  %86 = sub i64 %85, %81, !dbg !1847
  %87 = mul i64 %86, %84, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %87, metadata !1728, metadata !DIExpression()), !dbg !1735
  %88 = icmp eq i64 %87, 0, !dbg !1848
  br i1 %88, label %89, label %90, !dbg !1851

89:                                               ; preds = %78
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !1852
  call void @abort() #8, !dbg !1852
  br label %90, !dbg !1852

90:                                               ; preds = %89, %78
  %91 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1854
  %92 = load i64, i64* %91, align 8, !dbg !1854, !tbaa !777
  %93 = icmp eq i64 %92, 0, !dbg !1856
  br i1 %93, label %94, label %99, !dbg !1857

94:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i32 0, metadata !1729, metadata !DIExpression()), !dbg !1858
  %95 = load i32, i32* %29, align 4, !dbg !1859, !tbaa !812
  %96 = icmp sgt i32 %95, 0, !dbg !1861
  br i1 %96, label %97, label %113, !dbg !1862

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %226, !dbg !1862

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1863
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1863
  %100 = call i8* @malloc(i64 1024) #8, !dbg !1866
  %101 = icmp eq i8* %100, null, !dbg !1867
  br i1 %101, label %102, label %104, !dbg !1868

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1869
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1869
  %103 = call i8* @halide_string_to_string(i8* %100, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !1871
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1872
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1874
  br label %112, !dbg !1875

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, i8* %100, i64 1023, !dbg !1876
  store i8 0, i8* %105, align 1, !dbg !1877, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !1869
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1869
  %106 = call i8* @halide_string_to_string(i8* nonnull %100, i8* nonnull %105, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !1871
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !1872
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !1878
  %107 = ptrtoint i8* %106 to i64, !dbg !1880
  %108 = ptrtoint i8* %100 to i64, !dbg !1880
  %109 = add i64 %107, 1, !dbg !1880
  %110 = sub i64 %109, %108, !dbg !1881
  %111 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %100, i64 %110) #8, !dbg !1882
  call void @halide_print(i8* %0, i8* nonnull %100) #8, !dbg !1883
  br label %112

112:                                              ; preds = %104, %102
  call void @free(i8* %100) #8, !dbg !1884
  br label %325, !dbg !1885

113:                                              ; preds = %235, %94
  %114 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !1886
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %114) #10, !dbg !1886
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !674, metadata !DIExpression()) #10, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !1887
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !1887
  %115 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3, !dbg !1889
  store i8* %0, i8** %115, align 8, !dbg !1889, !tbaa !1117
  %116 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4, !dbg !1890
  store i8 1, i8* %116, align 8, !dbg !1890, !tbaa !1120
  %117 = call i8* @malloc(i64 1024) #8, !dbg !1891
  %118 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0, !dbg !1892
  store i8* %117, i8** %118, align 8, !dbg !1893, !tbaa !1124
  %119 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1, !dbg !1894
  store i8* %117, i8** %119, align 8, !dbg !1895, !tbaa !1357
  %120 = icmp eq i8* %117, null, !dbg !1896
  br i1 %120, label %123, label %121, !dbg !1897

121:                                              ; preds = %113
  %122 = getelementptr inbounds i8, i8* %117, i64 1023, !dbg !1898
  store i8 0, i8* %122, align 1, !dbg !1899, !tbaa !713
  br label %123, !dbg !1900

123:                                              ; preds = %113, %121
  %124 = phi i8* [ %122, %121 ], [ null, %113 ], !dbg !1901
  %125 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2, !dbg !1902
  store i8* %124, i8** %125, align 8, !dbg !1903
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1904
  %126 = call i8* @halide_string_to_string(i8* %117, i8* %124, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !1906
  store i8* %126, i8** %119, align 8, !dbg !1907, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1908
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1908
  %127 = load i8*, i8** %125, align 8, !dbg !1910, !tbaa !1277
  %128 = call i8* @halide_string_to_string(i8* %126, i8* %127, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !1911
  store i8* %128, i8** %119, align 8, !dbg !1912, !tbaa !1357
  %129 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !1913
  %130 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1913, !tbaa !815
  %131 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %130, i64 0, i32 1, !dbg !1914
  %132 = load i32, i32* %131, align 4, !dbg !1914, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %132, metadata !1186, metadata !DIExpression()) #10, !dbg !1915
  %133 = load i8*, i8** %125, align 8, !dbg !1917, !tbaa !1277
  %134 = sext i32 %132 to i64, !dbg !1918
  %135 = call i8* @halide_int64_to_string(i8* %128, i8* %133, i64 %134, i32 1) #8, !dbg !1919
  store i8* %135, i8** %119, align 8, !dbg !1920, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1921
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1921
  %136 = load i8*, i8** %125, align 8, !dbg !1923, !tbaa !1277
  %137 = call i8* @halide_string_to_string(i8* %135, i8* %136, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1924
  store i8* %137, i8** %119, align 8, !dbg !1925, !tbaa !1357
  %138 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1926, !tbaa !815
  %139 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %138, i64 1, i32 1, !dbg !1927
  %140 = load i32, i32* %139, align 4, !dbg !1927, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %140, metadata !1186, metadata !DIExpression()) #10, !dbg !1928
  %141 = load i8*, i8** %125, align 8, !dbg !1930, !tbaa !1277
  %142 = sext i32 %140 to i64, !dbg !1931
  %143 = call i8* @halide_int64_to_string(i8* %137, i8* %141, i64 %142, i32 1) #8, !dbg !1932
  store i8* %143, i8** %119, align 8, !dbg !1933, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1934
  %144 = load i8*, i8** %125, align 8, !dbg !1936, !tbaa !1277
  %145 = call i8* @halide_string_to_string(i8* %143, i8* %144, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1937
  store i8* %145, i8** %119, align 8, !dbg !1938, !tbaa !1357
  %146 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1939, !tbaa !815
  %147 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %146, i64 2, i32 1, !dbg !1940
  %148 = load i32, i32* %147, align 4, !dbg !1940, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %148, metadata !1186, metadata !DIExpression()) #10, !dbg !1941
  %149 = load i8*, i8** %125, align 8, !dbg !1943, !tbaa !1277
  %150 = sext i32 %148 to i64, !dbg !1944
  %151 = call i8* @halide_int64_to_string(i8* %145, i8* %149, i64 %150, i32 1) #8, !dbg !1945
  store i8* %151, i8** %119, align 8, !dbg !1946, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1947
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1947
  %152 = load i8*, i8** %125, align 8, !dbg !1949, !tbaa !1277
  %153 = call i8* @halide_string_to_string(i8* %151, i8* %152, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1950
  store i8* %153, i8** %119, align 8, !dbg !1951, !tbaa !1357
  %154 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1952, !tbaa !815
  %155 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %154, i64 3, i32 1, !dbg !1953
  %156 = load i32, i32* %155, align 4, !dbg !1953, !tbaa !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %156, metadata !1186, metadata !DIExpression()) #10, !dbg !1954
  %157 = load i8*, i8** %125, align 8, !dbg !1956, !tbaa !1277
  %158 = sext i32 %156 to i64, !dbg !1957
  %159 = call i8* @halide_int64_to_string(i8* %153, i8* %157, i64 %158, i32 1) #8, !dbg !1958
  store i8* %159, i8** %119, align 8, !dbg !1959, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1960
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1960
  %160 = load i8*, i8** %125, align 8, !dbg !1962, !tbaa !1277
  %161 = call i8* @halide_string_to_string(i8* %159, i8* %160, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1963
  store i8* %161, i8** %119, align 8, !dbg !1964, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1965
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1965
  %162 = load i8*, i8** %125, align 8, !dbg !1967, !tbaa !1277
  %163 = call i8* @halide_string_to_string(i8* %161, i8* %162, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !1968
  store i8* %163, i8** %119, align 8, !dbg !1969, !tbaa !1357
  %164 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1970, !tbaa !815
  %165 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %164, i64 0, i32 2, !dbg !1971
  %166 = load i32, i32* %165, align 4, !dbg !1971, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %166, metadata !1186, metadata !DIExpression()) #10, !dbg !1972
  %167 = load i8*, i8** %125, align 8, !dbg !1974, !tbaa !1277
  %168 = sext i32 %166 to i64, !dbg !1975
  %169 = call i8* @halide_int64_to_string(i8* %163, i8* %167, i64 %168, i32 1) #8, !dbg !1976
  store i8* %169, i8** %119, align 8, !dbg !1977, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1978
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1978
  %170 = load i8*, i8** %125, align 8, !dbg !1980, !tbaa !1277
  %171 = call i8* @halide_string_to_string(i8* %169, i8* %170, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1981
  store i8* %171, i8** %119, align 8, !dbg !1982, !tbaa !1357
  %172 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1983, !tbaa !815
  %173 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %172, i64 1, i32 2, !dbg !1984
  %174 = load i32, i32* %173, align 4, !dbg !1984, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %174, metadata !1186, metadata !DIExpression()) #10, !dbg !1985
  %175 = load i8*, i8** %125, align 8, !dbg !1987, !tbaa !1277
  %176 = sext i32 %174 to i64, !dbg !1988
  %177 = call i8* @halide_int64_to_string(i8* %171, i8* %175, i64 %176, i32 1) #8, !dbg !1989
  store i8* %177, i8** %119, align 8, !dbg !1990, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !1991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !1991
  %178 = load i8*, i8** %125, align 8, !dbg !1993, !tbaa !1277
  %179 = call i8* @halide_string_to_string(i8* %177, i8* %178, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1994
  store i8* %179, i8** %119, align 8, !dbg !1995, !tbaa !1357
  %180 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !1996, !tbaa !815
  %181 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %180, i64 2, i32 2, !dbg !1997
  %182 = load i32, i32* %181, align 4, !dbg !1997, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %182, metadata !1186, metadata !DIExpression()) #10, !dbg !1998
  %183 = load i8*, i8** %125, align 8, !dbg !2000, !tbaa !1277
  %184 = sext i32 %182 to i64, !dbg !2001
  %185 = call i8* @halide_int64_to_string(i8* %179, i8* %183, i64 %184, i32 1) #8, !dbg !2002
  store i8* %185, i8** %119, align 8, !dbg !2003, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !2004
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2004
  %186 = load i8*, i8** %125, align 8, !dbg !2006, !tbaa !1277
  %187 = call i8* @halide_string_to_string(i8* %185, i8* %186, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2007
  store i8* %187, i8** %119, align 8, !dbg !2008, !tbaa !1357
  %188 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %129, align 8, !dbg !2009, !tbaa !815
  %189 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %188, i64 3, i32 2, !dbg !2010
  %190 = load i32, i32* %189, align 4, !dbg !2010, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1183, metadata !DIExpression()) #10, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %190, metadata !1186, metadata !DIExpression()) #10, !dbg !2011
  %191 = load i8*, i8** %125, align 8, !dbg !2013, !tbaa !1277
  %192 = sext i32 %190 to i64, !dbg !2014
  %193 = call i8* @halide_int64_to_string(i8* %187, i8* %191, i64 %192, i32 1) #8, !dbg !2015
  store i8* %193, i8** %119, align 8, !dbg !2016, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !2017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2017
  %194 = load i8*, i8** %125, align 8, !dbg !2019, !tbaa !1277
  %195 = call i8* @halide_string_to_string(i8* %193, i8* %194, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !2020
  store i8* %195, i8** %119, align 8, !dbg !2021, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2022
  %196 = load i8*, i8** %125, align 8, !dbg !2024, !tbaa !1277
  %197 = call i8* @halide_string_to_string(i8* %195, i8* %196, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !2025
  store i8* %197, i8** %119, align 8, !dbg !2026, !tbaa !1357
  %198 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, !dbg !2027
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1305, metadata !DIExpression()) #10, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %198, metadata !1308, metadata !DIExpression()) #10, !dbg !2028
  %199 = load i8*, i8** %125, align 8, !dbg !2030, !tbaa !1277
  %200 = call i8* @halide_type_to_string(i8* %197, i8* %199, %struct.halide_type_t* nonnull %198) #8, !dbg !2031
  store i8* %200, i8** %119, align 8, !dbg !2032, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !691, metadata !DIExpression()) #10, !dbg !2033
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2033
  %201 = load i8*, i8** %125, align 8, !dbg !2035, !tbaa !1277
  %202 = call i8* @halide_string_to_string(i8* %200, i8* %201, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !2036
  store i8* %202, i8** %119, align 8, !dbg !2037, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !700, metadata !DIExpression()) #10, !dbg !2038
  %203 = load i8*, i8** %118, align 8, !dbg !2040, !tbaa !1124
  %204 = icmp eq i8* %203, null, !dbg !2040
  %205 = load i8*, i8** %115, align 8, !dbg !2041, !tbaa !1117
  br i1 %204, label %206, label %207, !dbg !2042

206:                                              ; preds = %123
  call void @halide_error(i8* %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2043
  br label %215, !dbg !2044

207:                                              ; preds = %123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2045
  %208 = ptrtoint i8* %202 to i64, !dbg !2047
  %209 = ptrtoint i8* %203 to i64, !dbg !2047
  %210 = add i64 %208, 1, !dbg !2047
  %211 = sub i64 %210, %209, !dbg !2048
  %212 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %205, i8* nonnull %203, i64 %211) #8, !dbg !2049
  %213 = load i8*, i8** %115, align 8, !dbg !2050, !tbaa !1117
  %214 = load i8*, i8** %118, align 8, !dbg !2051, !tbaa !1124
  call void @halide_print(i8* %213, i8* %214) #8, !dbg !2052
  br label %215

215:                                              ; preds = %207, %206
  %216 = load i8, i8* %116, align 8, !dbg !2053, !tbaa !1120, !range !1372
  %217 = icmp eq i8 %216, 0, !dbg !2053
  br i1 %217, label %223, label %218, !dbg !2054

218:                                              ; preds = %215
  %219 = load i8*, i8** %118, align 8, !dbg !2055, !tbaa !1124
  %220 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0, !dbg !2056
  %221 = icmp eq i8* %219, %220, !dbg !2057
  br i1 %221, label %223, label %222, !dbg !2058

222:                                              ; preds = %218
  call void @free(i8* %219) #8, !dbg !2059
  br label %223, !dbg !2060

223:                                              ; preds = %215, %218, %222
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %114) #10, !dbg !1886
  %224 = call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %224, metadata !1731, metadata !DIExpression()), !dbg !2062
  %225 = icmp eq i32 %224, 0, !dbg !2063
  br i1 %225, label %240, label %325

226:                                              ; preds = %97, %235
  %227 = phi i32 [ %95, %97 ], [ %236, %235 ]
  %228 = phi i64 [ 0, %97 ], [ %237, %235 ]
  call void @llvm.dbg.value(metadata i64 %228, metadata !1729, metadata !DIExpression()), !dbg !1858
  %229 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %98, align 8, !dbg !2064, !tbaa !815
  %230 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %229, i64 %228, i32 2, !dbg !2064
  %231 = load i32, i32* %230, align 4, !dbg !2064, !tbaa !823
  %232 = icmp sgt i32 %231, -1, !dbg !2064
  br i1 %232, label %235, label %233, !dbg !2068

233:                                              ; preds = %226
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2069
  call void @abort() #8, !dbg !2069
  %234 = load i32, i32* %29, align 4, !dbg !1859, !tbaa !812
  br label %235, !dbg !2069

235:                                              ; preds = %226, %233
  %236 = phi i32 [ %227, %226 ], [ %234, %233 ], !dbg !1859
  %237 = add nuw nsw i64 %228, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %237, metadata !1729, metadata !DIExpression()), !dbg !1858
  %238 = sext i32 %236 to i64, !dbg !1861
  %239 = icmp slt i64 %237, %238, !dbg !1861
  br i1 %239, label %226, label %113, !dbg !1862, !llvm.loop !2072

240:                                              ; preds = %223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2074
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2074
  %241 = call i8* @malloc(i64 1024) #8, !dbg !2076
  %242 = icmp eq i8* %241, null, !dbg !2077
  br i1 %242, label %243, label %245, !dbg !2078

243:                                              ; preds = %240
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2079
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2079
  %244 = call i8* @halide_string_to_string(i8* %241, i8* null, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !2081
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2082
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2084
  br label %253, !dbg !2085

245:                                              ; preds = %240
  %246 = getelementptr inbounds i8, i8* %241, i64 1023, !dbg !2086
  store i8 0, i8* %246, align 1, !dbg !2087, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2079
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2079
  %247 = call i8* @halide_string_to_string(i8* nonnull %241, i8* nonnull %246, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !2081
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2082
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2088
  %248 = ptrtoint i8* %247 to i64, !dbg !2090
  %249 = ptrtoint i8* %241 to i64, !dbg !2090
  %250 = add i64 %248, 1, !dbg !2090
  %251 = sub i64 %250, %249, !dbg !2091
  %252 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %241, i64 %251) #8, !dbg !2092
  call void @halide_print(i8* %0, i8* nonnull %241) #8, !dbg !2093
  br label %253

253:                                              ; preds = %245, %243
  call void @free(i8* %241) #8, !dbg !2094
  %254 = bitcast i32* %4 to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %254) #10, !dbg !2095
  %255 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 13), align 8, !dbg !2096, !tbaa !1397
  call void @llvm.dbg.value(metadata i32* %4, metadata !1733, metadata !DIExpression(DW_OP_deref)), !dbg !1735
  call void %255(i32 1, i32* nonnull %4) #8, !dbg !2097
  %256 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !2098
  br i1 %256, label %323, label %257, !dbg !2100

257:                                              ; preds = %253
  %258 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !dbg !2101, !tbaa !1386
  %259 = load i32, i32* %4, align 4, !dbg !2102, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %259, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void %258(i32 34962, i32 %259) #8, !dbg !2104
  %260 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !2105
  br i1 %260, label %323, label %261, !dbg !2107

261:                                              ; preds = %257
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %198, metadata !786, metadata !DIExpression()), !dbg !2108
  %262 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2110
  %263 = load i8, i8* %262, align 1, !dbg !2110, !tbaa !793
  %264 = zext i8 %263 to i16, !dbg !2110
  %265 = add nuw nsw i16 %264, 7, !dbg !2111
  %266 = lshr i16 %265, 3, !dbg !2112
  %267 = trunc i16 %266 to i8, !dbg !2113
  %268 = udiv i8 4, %267, !dbg !2113
  %269 = zext i8 %268 to i64, !dbg !2114
  %270 = mul i64 %87, %269, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %270, metadata !1728, metadata !DIExpression()), !dbg !1735
  %271 = icmp eq i64 %270, 0, !dbg !2116
  br i1 %271, label %272, label %273, !dbg !2119

272:                                              ; preds = %261
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !2120
  call void @abort() #8, !dbg !2120
  br label %273, !dbg !2120

273:                                              ; preds = %272, %261
  %274 = load void (i32, i64, i8*, i32)*, void (i32, i64, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 4), align 8, !dbg !2122, !tbaa !1388
  call void %274(i32 34962, i64 %270, i8* null, i32 35050) #8, !dbg !2123
  %275 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !2124
  br i1 %275, label %323, label %276, !dbg !2126

276:                                              ; preds = %273
  %277 = load i32, i32* %4, align 4, !dbg !2127, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %277, metadata !1733, metadata !DIExpression()), !dbg !1735
  %278 = zext i32 %277 to i64, !dbg !2127
  store i64 %278, i64* %91, align 8, !dbg !2128, !tbaa !777
  %279 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2129
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, %struct.halide_device_interface_t** %279, align 8, !dbg !2130, !tbaa !2131
  %280 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, i64 0, i32 15), align 8, !dbg !2132, !tbaa !2133
  %281 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %280, i64 0, i32 0, !dbg !2135
  %282 = load void ()*, void ()** %281, align 8, !dbg !2135, !tbaa !2136
  call void %282() #8, !dbg !2138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2139
  %283 = call i8* @malloc(i64 1024) #8, !dbg !2141
  %284 = icmp eq i8* %283, null, !dbg !2142
  br i1 %284, label %287, label %285, !dbg !2143

285:                                              ; preds = %276
  %286 = getelementptr inbounds i8, i8* %283, i64 1023, !dbg !2144
  store i8 0, i8* %286, align 1, !dbg !2145, !tbaa !713
  br label %287, !dbg !2146

287:                                              ; preds = %276, %285
  %288 = phi i8* [ %286, %285 ], [ null, %276 ], !dbg !2147
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2148
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2148
  %289 = call i8* @halide_string_to_string(i8* %283, i8* %288, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !2150
  %290 = load i32, i32* %4, align 4, !dbg !2151, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %290, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !2152
  call void @llvm.dbg.value(metadata i32 %290, metadata !1156, metadata !DIExpression()) #10, !dbg !2152
  %291 = zext i32 %290 to i64, !dbg !2154
  %292 = call i8* @halide_uint64_to_string(i8* %289, i8* %288, i64 %291, i32 1) #8, !dbg !2155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2156
  %293 = call i8* @halide_string_to_string(i8* %292, i8* %288, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2159
  br i1 %284, label %294, label %295, !dbg !2161

294:                                              ; preds = %287
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2162
  br label %301, !dbg !2163

295:                                              ; preds = %287
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2164
  %296 = ptrtoint i8* %293 to i64, !dbg !2166
  %297 = ptrtoint i8* %283 to i64, !dbg !2166
  %298 = add i64 %296, 1, !dbg !2166
  %299 = sub i64 %298, %297, !dbg !2167
  %300 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %283, i64 %299) #8, !dbg !2168
  call void @halide_print(i8* %0, i8* nonnull %283) #8, !dbg !2169
  br label %301

301:                                              ; preds = %295, %294
  call void @free(i8* %283) #8, !dbg !2170
  %302 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %302, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2172
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2172
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2172
  %303 = call i8* @malloc(i64 1024) #8, !dbg !2174
  %304 = icmp eq i8* %303, null, !dbg !2175
  br i1 %304, label %307, label %305, !dbg !2176

305:                                              ; preds = %301
  %306 = getelementptr inbounds i8, i8* %303, i64 1023, !dbg !2177
  store i8 0, i8* %306, align 1, !dbg !2178, !tbaa !713
  br label %307, !dbg !2179

307:                                              ; preds = %301, %305
  %308 = phi i8* [ %306, %305 ], [ null, %301 ], !dbg !2180
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2181
  %309 = call i8* @halide_string_to_string(i8* %303, i8* %308, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !2183
  %310 = sub i64 %302, %5, !dbg !2184
  %311 = uitofp i64 %310 to double, !dbg !2185
  %312 = fdiv double %311, 1.000000e+06, !dbg !2186
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !2187
  call void @llvm.dbg.value(metadata double %312, metadata !1693, metadata !DIExpression()) #10, !dbg !2187
  %313 = call i8* @halide_double_to_string(i8* %309, i8* %308, double %312, i32 1) #8, !dbg !2189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2190
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2190
  %314 = call i8* @halide_string_to_string(i8* %313, i8* %308, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !2192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2193
  br i1 %304, label %315, label %316, !dbg !2195

315:                                              ; preds = %307
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2196
  br label %322, !dbg !2197

316:                                              ; preds = %307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2198
  %317 = ptrtoint i8* %314 to i64, !dbg !2200
  %318 = ptrtoint i8* %303 to i64, !dbg !2200
  %319 = add i64 %317, 1, !dbg !2200
  %320 = sub i64 %319, %318, !dbg !2201
  %321 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %303, i64 %320) #8, !dbg !2202
  call void @halide_print(i8* %0, i8* nonnull %303) #8, !dbg !2203
  br label %322

322:                                              ; preds = %316, %315
  call void @free(i8* %303) #8, !dbg !2204
  br label %323

323:                                              ; preds = %273, %257, %253, %322
  %324 = phi i32 [ 0, %322 ], [ 1, %253 ], [ 1, %257 ], [ 1, %273 ], !dbg !1735
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %254) #10, !dbg !2205
  br label %325

325:                                              ; preds = %112, %323, %223, %25
  %326 = phi i32 [ %26, %25 ], [ 0, %112 ], [ %324, %323 ], [ %224, %223 ], !dbg !1735
  ret i32 %326, !dbg !2205
}

declare !dbg !2206 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !2209 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2210 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2213, metadata !DIExpression()), !dbg !2217
  %4 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %4, metadata !2214, metadata !DIExpression()), !dbg !2217
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !2219, !tbaa !1383, !range !1372
  %6 = icmp eq i8 %5, 0, !dbg !2219
  br i1 %6, label %7, label %21, !dbg !2221

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2222
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2222
  %8 = tail call i8* @malloc(i64 1024) #8, !dbg !2225
  %9 = icmp eq i8* %8, null, !dbg !2226
  br i1 %9, label %10, label %12, !dbg !2227

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2228
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2228
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !2230
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2231
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2233
  br label %20, !dbg !2234

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !2235
  store i8 0, i8* %13, align 1, !dbg !2236, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2228
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2228
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !2230
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2237
  %15 = ptrtoint i8* %14 to i64, !dbg !2239
  %16 = ptrtoint i8* %8 to i64, !dbg !2239
  %17 = add i64 %15, 1, !dbg !2239
  %18 = sub i64 %17, %16, !dbg !2240
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %18) #8, !dbg !2241
  tail call void @halide_error(i8* %0, i8* nonnull %8) #8, !dbg !2242
  br label %20

20:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #8, !dbg !2243
  br label %77, !dbg !2244

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2245
  %23 = load i64, i64* %22, align 8, !dbg !2245, !tbaa !777
  %24 = icmp eq i64 %23, 0, !dbg !2247
  br i1 %24, label %77, label %25, !dbg !2248

25:                                               ; preds = %21
  %26 = bitcast i32* %3 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2249
  %27 = trunc i64 %23 to i32, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %27, metadata !2215, metadata !DIExpression()), !dbg !2217
  store i32 %27, i32* %3, align 4, !dbg !2251, !tbaa !2103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2252
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2252
  %28 = tail call i8* @malloc(i64 1024) #8, !dbg !2254
  %29 = icmp eq i8* %28, null, !dbg !2255
  br i1 %29, label %32, label %30, !dbg !2256

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %28, i64 1023, !dbg !2257
  store i8 0, i8* %31, align 1, !dbg !2258, !tbaa !713
  br label %32, !dbg !2259

32:                                               ; preds = %25, %30
  %33 = phi i8* [ %31, %30 ], [ null, %25 ], !dbg !2260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.83, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2261
  %34 = tail call i8* @halide_string_to_string(i8* %28, i8* %33, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !2263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2264
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2264
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !2267
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !2267
  %36 = tail call i8* @halide_pointer_to_string(i8* %35, i8* %33, i8* %0) #8, !dbg !2269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2270
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2270
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %33, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %27, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %27, metadata !1156, metadata !DIExpression()) #10, !dbg !2273
  %38 = and i64 %23, 4294967295, !dbg !2275
  %39 = tail call i8* @halide_uint64_to_string(i8* %37, i8* %33, i64 %38, i32 1) #8, !dbg !2276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2277
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2277
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %33, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !2279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2280
  br i1 %29, label %41, label %42, !dbg !2282

41:                                               ; preds = %32
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2283
  br label %48, !dbg !2284

42:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2285
  %43 = ptrtoint i8* %40 to i64, !dbg !2287
  %44 = ptrtoint i8* %28 to i64, !dbg !2287
  %45 = add i64 %43, 1, !dbg !2287
  %46 = sub i64 %45, %44, !dbg !2288
  %47 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %28, i64 %46) #8, !dbg !2289
  tail call void @halide_print(i8* %0, i8* nonnull %28) #8, !dbg !2290
  br label %48

48:                                               ; preds = %41, %42
  call void @free(i8* %28) #8, !dbg !2291
  %49 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 8), align 8, !dbg !2292, !tbaa !1392
  call void @llvm.dbg.value(metadata i32* %3, metadata !2215, metadata !DIExpression(DW_OP_deref)), !dbg !2217
  call void %49(i32 1, i32* nonnull %3) #8, !dbg !2293
  store i64 0, i64* %22, align 8, !dbg !2294, !tbaa !777
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2295
  %51 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %50, align 8, !dbg !2295, !tbaa !2131
  %52 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %51, i64 0, i32 15, !dbg !2296
  %53 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %52, align 8, !dbg !2296, !tbaa !2133
  %54 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %53, i64 0, i32 1, !dbg !2297
  %55 = load void ()*, void ()** %54, align 8, !dbg !2297, !tbaa !2298
  call void %55() #8, !dbg !2299
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %50, align 8, !dbg !2300, !tbaa !2131
  %56 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %56, metadata !2216, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2302
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2302
  %57 = call i8* @malloc(i64 1024) #8, !dbg !2304
  %58 = icmp eq i8* %57, null, !dbg !2305
  br i1 %58, label %61, label %59, !dbg !2306

59:                                               ; preds = %48
  %60 = getelementptr inbounds i8, i8* %57, i64 1023, !dbg !2307
  store i8 0, i8* %60, align 1, !dbg !2308, !tbaa !713
  br label %61, !dbg !2309

61:                                               ; preds = %48, %59
  %62 = phi i8* [ %60, %59 ], [ null, %48 ], !dbg !2310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2311
  %63 = call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !2313
  %64 = sub i64 %56, %4, !dbg !2314
  %65 = uitofp i64 %64 to double, !dbg !2315
  %66 = fdiv double %65, 1.000000e+06, !dbg !2316
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !2317
  call void @llvm.dbg.value(metadata double %66, metadata !1693, metadata !DIExpression()) #10, !dbg !2317
  %67 = call i8* @halide_double_to_string(i8* %63, i8* %62, double %66, i32 1) #8, !dbg !2319
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2320
  %68 = call i8* @halide_string_to_string(i8* %67, i8* %62, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2322
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2323
  br i1 %58, label %69, label %70, !dbg !2325

69:                                               ; preds = %61
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2326
  br label %76, !dbg !2327

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2328
  %71 = ptrtoint i8* %68 to i64, !dbg !2330
  %72 = ptrtoint i8* %57 to i64, !dbg !2330
  %73 = add i64 %71, 1, !dbg !2330
  %74 = sub i64 %73, %72, !dbg !2331
  %75 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %57, i64 %74) #8, !dbg !2332
  call void @halide_print(i8* %0, i8* nonnull %57) #8, !dbg !2333
  br label %76

76:                                               ; preds = %70, %69
  call void @free(i8* %57) #8, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2335
  br label %77

77:                                               ; preds = %21, %76, %20
  %78 = phi i32 [ 0, %76 ], [ 1, %20 ], [ 0, %21 ], !dbg !2217
  ret i32 %78, !dbg !2335
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2336 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2338, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2339, metadata !DIExpression()), !dbg !2347
  %6 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %6, metadata !2340, metadata !DIExpression()), !dbg !2347
  %7 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !2349, !tbaa !1383, !range !1372
  %8 = icmp eq i8 %7, 0, !dbg !2349
  br i1 %8, label %9, label %23, !dbg !2351

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2352
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2352
  %10 = tail call i8* @malloc(i64 1024) #8, !dbg !2355
  %11 = icmp eq i8* %10, null, !dbg !2356
  br i1 %11, label %12, label %14, !dbg !2357

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2358
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2358
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2360
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2361
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2363
  br label %22, !dbg !2364

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i64 1023, !dbg !2365
  store i8 0, i8* %15, align 1, !dbg !2366, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2358
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2358
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2360
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2367
  %17 = ptrtoint i8* %16 to i64, !dbg !2369
  %18 = ptrtoint i8* %10 to i64, !dbg !2369
  %19 = add i64 %17, 1, !dbg !2369
  %20 = sub i64 %19, %18, !dbg !2370
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %20) #8, !dbg !2371
  tail call void @halide_error(i8* %0, i8* nonnull %10) #8, !dbg !2372
  br label %22

22:                                               ; preds = %14, %12
  tail call void @free(i8* %10) #8, !dbg !2373
  br label %240, !dbg !2374

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2375
  %25 = load i64, i64* %24, align 8, !dbg !2375, !tbaa !777
  %26 = trunc i64 %25 to i32, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %26, metadata !2341, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2377
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2377
  %27 = tail call i8* @malloc(i64 1024) #8, !dbg !2379
  %28 = icmp eq i8* %27, null, !dbg !2380
  br i1 %28, label %31, label %29, !dbg !2381

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, i8* %27, i64 1023, !dbg !2382
  store i8 0, i8* %30, align 1, !dbg !2383, !tbaa !713
  br label %31, !dbg !2384

31:                                               ; preds = %23, %29
  %32 = phi i8* [ %30, %29 ], [ null, %23 ], !dbg !2385
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2386
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2386
  %33 = tail call i8* @halide_string_to_string(i8* %27, i8* %32, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !2388
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2389
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2389
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %32, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2391
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !2392
  %35 = tail call i8* @halide_pointer_to_string(i8* %34, i8* %32, i8* %0) #8, !dbg !2394
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2395
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2395
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %32, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2397
  %37 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !2398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %37, metadata !1171, metadata !DIExpression()) #10, !dbg !2399
  %38 = tail call i8* @halide_pointer_to_string(i8* %36, i8* %32, i8* %37) #8, !dbg !2401
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2402
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %32, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2404
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %26, metadata !1156, metadata !DIExpression()) #10, !dbg !2405
  %40 = and i64 %25, 4294967295, !dbg !2407
  %41 = tail call i8* @halide_uint64_to_string(i8* %39, i8* %32, i64 %40, i32 1) #8, !dbg !2408
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2409
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2409
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %32, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !2411
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2412
  br i1 %28, label %43, label %44, !dbg !2414

43:                                               ; preds = %31
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2415
  br label %50, !dbg !2416

44:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2417
  %45 = ptrtoint i8* %42 to i64, !dbg !2419
  %46 = ptrtoint i8* %27 to i64, !dbg !2419
  %47 = add i64 %45, 1, !dbg !2419
  %48 = sub i64 %47, %46, !dbg !2420
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %48) #8, !dbg !2421
  tail call void @halide_print(i8* %0, i8* nonnull %27) #8, !dbg !2422
  br label %50

50:                                               ; preds = %43, %44
  call void @free(i8* %27) #8, !dbg !2423
  %51 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !dbg !2424, !tbaa !1386
  call void %51(i32 34962, i32 %26) #8, !dbg !2425
  %52 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !2426
  br i1 %52, label %240, label %53, !dbg !2428

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2429, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 1, metadata !2432, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()), !dbg !2437
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !2438
  %55 = load i32, i32* %54, align 4, !dbg !2438, !tbaa !812
  %56 = icmp sgt i32 %55, 0, !dbg !2440
  br i1 %56, label %57, label %70, !dbg !2441

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %59 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %58, align 8, !tbaa !815
  %60 = zext i32 %55 to i64, !dbg !2440
  br label %61, !dbg !2441

61:                                               ; preds = %61, %57
  %62 = phi i64 [ 0, %57 ], [ %68, %61 ]
  %63 = phi i64 [ 1, %57 ], [ %67, %61 ]
  call void @llvm.dbg.value(metadata i64 %62, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %63, metadata !2432, metadata !DIExpression()), !dbg !2435
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %59, i64 %62, i32 1, !dbg !2442
  %65 = load i32, i32* %64, align 4, !dbg !2442, !tbaa !888
  %66 = sext i32 %65 to i64, !dbg !2444
  %67 = mul i64 %63, %66, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %67, metadata !2432, metadata !DIExpression()), !dbg !2435
  %68 = add nuw nsw i64 %62, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %68, metadata !2433, metadata !DIExpression()), !dbg !2437
  %69 = icmp eq i64 %68, %60, !dbg !2440
  br i1 %69, label %70, label %61, !dbg !2441, !llvm.loop !2447

70:                                               ; preds = %61, %53
  %71 = phi i64 [ 1, %53 ], [ %67, %61 ], !dbg !2435
  %72 = shl i64 %71, 2, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %72, metadata !2342, metadata !DIExpression()), !dbg !2347
  %73 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !dbg !2450, !tbaa !1386
  call void %73(i32 34962, i32 %26) #8, !dbg !2451
  %74 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !2452
  br i1 %74, label %240, label %75, !dbg !2454

75:                                               ; preds = %70
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2455
  %76 = call i8* @malloc(i64 1024) #8, !dbg !2457
  %77 = icmp eq i8* %76, null, !dbg !2458
  br i1 %77, label %80, label %78, !dbg !2459

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, i8* %76, i64 1023, !dbg !2460
  store i8 0, i8* %79, align 1, !dbg !2461, !tbaa !713
  br label %80, !dbg !2462

80:                                               ; preds = %75, %78
  %81 = phi i8* [ %79, %78 ], [ null, %75 ], !dbg !2463
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2464
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2464
  %82 = call i8* @halide_string_to_string(i8* %76, i8* %81, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !2466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1139, metadata !DIExpression()) #10, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %72, metadata !1142, metadata !DIExpression()) #10, !dbg !2467
  %83 = call i8* @halide_uint64_to_string(i8* %82, i8* %81, i64 %72, i32 1) #8, !dbg !2469
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2470
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.90, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2470
  %84 = call i8* @halide_string_to_string(i8* %83, i8* %81, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !2472
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2473
  br i1 %77, label %85, label %86, !dbg !2475

85:                                               ; preds = %80
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2476
  br label %92, !dbg !2477

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2478
  %87 = ptrtoint i8* %84 to i64, !dbg !2480
  %88 = ptrtoint i8* %76 to i64, !dbg !2480
  %89 = add i64 %87, 1, !dbg !2480
  %90 = sub i64 %89, %88, !dbg !2481
  %91 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %76, i64 %90) #8, !dbg !2482
  call void @halide_print(i8* %0, i8* nonnull %76) #8, !dbg !2483
  br label %92

92:                                               ; preds = %86, %85
  call void @free(i8* %76) #8, !dbg !2484
  %93 = load i8* (i32, i64, i64, i32)*, i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21), align 8, !dbg !2485, !tbaa !1404
  %94 = call i8* %93(i32 34962, i64 0, i64 %72, i32 3) #8, !dbg !2486
  call void @llvm.dbg.value(metadata i8* %94, metadata !2343, metadata !DIExpression()), !dbg !2347
  %95 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i64 0, i64 0)) #9, !dbg !2487
  br i1 %95, label %240, label %96, !dbg !2489

96:                                               ; preds = %92
  %97 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !2490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %97) #10, !dbg !2490
  call void @llvm.dbg.declare(metadata %struct.halide_buffer_t* %3, metadata !2344, metadata !DIExpression()), !dbg !2491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %97, i8* nonnull align 8 dereferenceable(56) %37, i64 56, i1 false), !dbg !2492, !tbaa.struct !2493
  %98 = ptrtoint i8* %94 to i64, !dbg !2496
  %99 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !2497
  store i64 %98, i64* %99, align 8, !dbg !2498, !tbaa !777
  %100 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %100) #10, !dbg !2499
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !2345, metadata !DIExpression()), !dbg !2500
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #9, !dbg !2501
  %101 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0, !dbg !2502
  %102 = load i8, i8* %101, align 8, !dbg !2502, !tbaa !2504
  switch i8 %102, label %180 [
    i8 0, label %103
    i8 1, label %131
    i8 2, label %159
  ], !dbg !2505

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2506
  %105 = load i8, i8* %104, align 1, !dbg !2506, !tbaa !2509
  switch i8 %105, label %118 [
    i8 8, label %106
    i8 16, label %109
    i8 32, label %115
  ], !dbg !2510

106:                                              ; preds = %103
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2511
  %108 = load i64, i64* %107, align 8, !dbg !2511, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %108, i64 0) #9, !dbg !2513
  br label %180, !dbg !2514

109:                                              ; preds = %103
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6, !dbg !2515
  %111 = load i64, i64* %110, align 8, !dbg !2518, !tbaa !640
  %112 = lshr i64 %111, 1, !dbg !2518
  store i64 %112, i64* %110, align 8, !dbg !2518, !tbaa !640
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2519
  %114 = load i64, i64* %113, align 8, !dbg !2519, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %114, i64 0) #9, !dbg !2520
  br label %180, !dbg !2521

115:                                              ; preds = %103
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2522
  %117 = load i64, i64* %116, align 8, !dbg !2522, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %117, i64 0) #9, !dbg !2525
  br label %180

118:                                              ; preds = %103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2526
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2526
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2526
  %119 = call i8* @malloc(i64 1024) #8, !dbg !2529
  %120 = icmp eq i8* %119, null, !dbg !2530
  br i1 %120, label %121, label %123, !dbg !2531

121:                                              ; preds = %118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2532
  %122 = call i8* @halide_string_to_string(i8* %119, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !2534
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2535
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2537
  br label %237, !dbg !2538

123:                                              ; preds = %118
  %124 = getelementptr inbounds i8, i8* %119, i64 1023, !dbg !2539
  store i8 0, i8* %124, align 1, !dbg !2540, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2532
  %125 = call i8* @halide_string_to_string(i8* nonnull %119, i8* nonnull %124, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !2534
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2541
  %126 = ptrtoint i8* %125 to i64, !dbg !2543
  %127 = ptrtoint i8* %119 to i64, !dbg !2543
  %128 = add i64 %126, 1, !dbg !2543
  %129 = sub i64 %128, %127, !dbg !2544
  %130 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %119, i64 %129) #8, !dbg !2545
  call void @halide_error(i8* %0, i8* nonnull %119) #8, !dbg !2546
  br label %237

131:                                              ; preds = %96
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2547
  %133 = load i8, i8* %132, align 1, !dbg !2547, !tbaa !2509
  switch i8 %133, label %146 [
    i8 8, label %134
    i8 16, label %137
    i8 32, label %143
  ], !dbg !2551

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2552
  %136 = load i64, i64* %135, align 8, !dbg !2552, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %136, i64 0) #9, !dbg !2554
  br label %180, !dbg !2555

137:                                              ; preds = %131
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6, !dbg !2556
  %139 = load i64, i64* %138, align 8, !dbg !2559, !tbaa !640
  %140 = lshr i64 %139, 1, !dbg !2559
  store i64 %140, i64* %138, align 8, !dbg !2559, !tbaa !640
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2560
  %142 = load i64, i64* %141, align 8, !dbg !2560, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %142, i64 0) #9, !dbg !2561
  br label %180, !dbg !2562

143:                                              ; preds = %131
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2563
  %145 = load i64, i64* %144, align 8, !dbg !2563, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %145, i64 0) #9, !dbg !2566
  br label %180

146:                                              ; preds = %131
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2567
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2567
  %147 = call i8* @malloc(i64 1024) #8, !dbg !2570
  %148 = icmp eq i8* %147, null, !dbg !2571
  br i1 %148, label %149, label %151, !dbg !2572

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2573
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2573
  %150 = call i8* @halide_string_to_string(i8* %147, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !2575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2576
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2578
  br label %237, !dbg !2579

151:                                              ; preds = %146
  %152 = getelementptr inbounds i8, i8* %147, i64 1023, !dbg !2580
  store i8 0, i8* %152, align 1, !dbg !2581, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2573
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2573
  %153 = call i8* @halide_string_to_string(i8* nonnull %147, i8* nonnull %152, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !2575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2582
  %154 = ptrtoint i8* %153 to i64, !dbg !2584
  %155 = ptrtoint i8* %147 to i64, !dbg !2584
  %156 = add i64 %154, 1, !dbg !2584
  %157 = sub i64 %156, %155, !dbg !2585
  %158 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %147, i64 %157) #8, !dbg !2586
  call void @halide_error(i8* %0, i8* nonnull %147) #8, !dbg !2587
  br label %237

159:                                              ; preds = %96
  %160 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2588
  %161 = load i8, i8* %160, align 1, !dbg !2588, !tbaa !2509
  %162 = icmp eq i8 %161, 32, !dbg !2592
  br i1 %162, label %163, label %166, !dbg !2593

163:                                              ; preds = %159
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !2594
  %165 = load i64, i64* %164, align 8, !dbg !2594, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %165, i64 0) #9, !dbg !2596
  br label %180, !dbg !2597

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2598
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2598
  %167 = call i8* @malloc(i64 1024) #8, !dbg !2601
  %168 = icmp eq i8* %167, null, !dbg !2602
  br i1 %168, label %169, label %171, !dbg !2603

169:                                              ; preds = %166
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2604
  %170 = call i8* @halide_string_to_string(i8* %167, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !2606
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2607
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2609
  br label %179, !dbg !2610

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, i8* %167, i64 1023, !dbg !2611
  store i8 0, i8* %172, align 1, !dbg !2612, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2604
  %173 = call i8* @halide_string_to_string(i8* nonnull %167, i8* nonnull %172, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !2606
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2607
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2613
  %174 = ptrtoint i8* %173 to i64, !dbg !2615
  %175 = ptrtoint i8* %167 to i64, !dbg !2615
  %176 = add i64 %174, 1, !dbg !2615
  %177 = sub i64 %176, %175, !dbg !2616
  %178 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %167, i64 %177) #8, !dbg !2617
  call void @halide_error(i8* %0, i8* nonnull %167) #8, !dbg !2618
  br label %179

179:                                              ; preds = %171, %169
  call void @free(i8* %167) #8, !dbg !2619
  br label %180

180:                                              ; preds = %96, %137, %143, %134, %163, %179, %106, %115, %109
  %181 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27), align 8, !dbg !2620, !tbaa !1410
  call void %181(i32 34962) #8, !dbg !2621
  %182 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %182) #10, !dbg !2622
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !674, metadata !DIExpression()) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2623
  %183 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3, !dbg !2625
  store i8* %0, i8** %183, align 8, !dbg !2625, !tbaa !1117
  %184 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4, !dbg !2626
  store i8 1, i8* %184, align 8, !dbg !2626, !tbaa !1120
  %185 = call i8* @malloc(i64 1024) #8, !dbg !2627
  %186 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0, !dbg !2628
  store i8* %185, i8** %186, align 8, !dbg !2629, !tbaa !1124
  %187 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1, !dbg !2630
  %188 = icmp eq i8* %185, null, !dbg !2631
  br i1 %188, label %191, label %189, !dbg !2632

189:                                              ; preds = %180
  %190 = getelementptr inbounds i8, i8* %185, i64 1023, !dbg !2633
  store i8 0, i8* %190, align 1, !dbg !2634, !tbaa !713
  br label %191, !dbg !2635

191:                                              ; preds = %180, %189
  %192 = phi i8* [ %190, %189 ], [ null, %180 ], !dbg !2636
  %193 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2, !dbg !2637
  store i8* %192, i8** %193, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !691, metadata !DIExpression()) #10, !dbg !2639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2639
  %194 = call i8* @halide_string_to_string(i8* %185, i8* %192, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !2641
  store i8* %194, i8** %187, align 8, !dbg !2642, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1153, metadata !DIExpression()) #10, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %72, metadata !1156, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2643
  %195 = and i64 %72, 4294967292, !dbg !2645
  %196 = call i8* @halide_uint64_to_string(i8* %194, i8* %192, i64 %195, i32 1) #8, !dbg !2646
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !691, metadata !DIExpression()) #10, !dbg !2647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2647
  %197 = call i8* @halide_string_to_string(i8* %196, i8* %192, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !2649
  %198 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !2650
  %199 = load i8*, i8** %198, align 8, !dbg !2650, !tbaa !768
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1168, metadata !DIExpression()) #10, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %199, metadata !1171, metadata !DIExpression()) #10, !dbg !2651
  %200 = call i8* @halide_pointer_to_string(i8* %197, i8* %192, i8* %199) #8, !dbg !2653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !691, metadata !DIExpression()) #10, !dbg !2654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2654
  %201 = call i8* @halide_string_to_string(i8* %200, i8* %192, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0)) #8, !dbg !2656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !700, metadata !DIExpression()) #10, !dbg !2657
  br i1 %188, label %202, label %203, !dbg !2659

202:                                              ; preds = %191
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2660
  br label %211, !dbg !2661

203:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2662
  %204 = ptrtoint i8* %201 to i64, !dbg !2664
  %205 = ptrtoint i8* %185 to i64, !dbg !2664
  %206 = add i64 %204, 1, !dbg !2664
  %207 = sub i64 %206, %205, !dbg !2665
  %208 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %185, i64 %207) #8, !dbg !2666
  %209 = load i8*, i8** %183, align 8, !dbg !2667, !tbaa !1117
  %210 = load i8*, i8** %186, align 8, !dbg !2668, !tbaa !1124
  call void @halide_print(i8* %209, i8* %210) #8, !dbg !2669
  br label %211

211:                                              ; preds = %203, %202
  %212 = load i8, i8* %184, align 8, !dbg !2670, !tbaa !1120, !range !1372
  %213 = icmp eq i8 %212, 0, !dbg !2670
  br i1 %213, label %216, label %214, !dbg !2671

214:                                              ; preds = %211
  %215 = load i8*, i8** %186, align 8, !dbg !2672, !tbaa !1124
  call void @free(i8* %215) #8, !dbg !2673
  br label %216, !dbg !2674

216:                                              ; preds = %211, %214
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %182) #10, !dbg !2622
  %217 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %217, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !2676
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !2676
  %218 = call i8* @malloc(i64 1024) #8, !dbg !2678
  %219 = icmp eq i8* %218, null, !dbg !2679
  br i1 %219, label %222, label %220, !dbg !2680

220:                                              ; preds = %216
  %221 = getelementptr inbounds i8, i8* %218, i64 1023, !dbg !2681
  store i8 0, i8* %221, align 1, !dbg !2682, !tbaa !713
  br label %222, !dbg !2683

222:                                              ; preds = %216, %220
  %223 = phi i8* [ %221, %220 ], [ null, %216 ], !dbg !2684
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2685
  %224 = call i8* @halide_string_to_string(i8* %218, i8* %223, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !2687
  %225 = sub i64 %217, %6, !dbg !2688
  %226 = uitofp i64 %225 to double, !dbg !2689
  %227 = fdiv double %226, 1.000000e+06, !dbg !2690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !2691
  call void @llvm.dbg.value(metadata double %227, metadata !1693, metadata !DIExpression()) #10, !dbg !2691
  %228 = call i8* @halide_double_to_string(i8* %224, i8* %223, double %227, i32 1) #8, !dbg !2693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !2694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !2694
  %229 = call i8* @halide_string_to_string(i8* %228, i8* %223, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0)) #8, !dbg !2696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !2697
  br i1 %219, label %230, label %231, !dbg !2699

230:                                              ; preds = %222
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !2700
  br label %237, !dbg !2701

231:                                              ; preds = %222
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !2702
  %232 = ptrtoint i8* %229 to i64, !dbg !2704
  %233 = ptrtoint i8* %218 to i64, !dbg !2704
  %234 = add i64 %232, 1, !dbg !2704
  %235 = sub i64 %234, %233, !dbg !2705
  %236 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %218, i64 %235) #8, !dbg !2706
  call void @halide_print(i8* %0, i8* nonnull %218) #8, !dbg !2707
  br label %237

237:                                              ; preds = %230, %231, %149, %151, %121, %123
  %238 = phi i8* [ %119, %123 ], [ %119, %121 ], [ %147, %151 ], [ %147, %149 ], [ %218, %231 ], [ %218, %230 ]
  %239 = phi i32 [ -1, %123 ], [ -1, %121 ], [ -1, %151 ], [ -1, %149 ], [ 0, %231 ], [ 0, %230 ], !dbg !2347
  call void @free(i8* %238) #8, !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %100) #10, !dbg !2708
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %97) #10, !dbg !2708
  br label %240

240:                                              ; preds = %50, %237, %92, %70, %22
  %241 = phi i32 [ 1, %22 ], [ 1, %50 ], [ 1, %70 ], [ %239, %237 ], [ 1, %92 ], !dbg !2347
  ret i32 %241, !dbg !2708
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2709 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2712, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %1, metadata !2713, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %2, metadata !2714, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %3, metadata !2715, metadata !DIExpression()), !dbg !2730
  %5 = icmp sgt i32 %1, -1, !dbg !2731
  br i1 %5, label %6, label %15, !dbg !2732

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2713, metadata !DIExpression()), !dbg !2730
  %8 = zext i32 %7 to i64, !dbg !2733
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !2733
  %10 = load i64, i64* %9, align 8, !dbg !2733, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !2734
  br i1 %11, label %12, label %15, !dbg !2735

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %13, metadata !2713, metadata !DIExpression()), !dbg !2730
  %14 = icmp sgt i32 %7, 0, !dbg !2731
  br i1 %14, label %6, label %27, !dbg !2732, !llvm.loop !2738

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !2740
  br i1 %17, label %27, label %18, !dbg !2741

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !2724, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %3, metadata !2715, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %2, metadata !2714, metadata !DIExpression()), !dbg !2730
  %19 = sext i32 %16 to i64, !dbg !2743
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !2743
  %21 = load i64, i64* %20, align 8, !dbg !2743, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !2745
  br i1 %22, label %61, label %23, !dbg !2746

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !2746

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !2721, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 0, metadata !2722, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 undef, metadata !2716, metadata !DIExpression()), !dbg !2747
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !2749
  %29 = load i64, i64* %28, align 8, !dbg !2749, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !2751
  br i1 %30, label %61, label %31, !dbg !2752

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !2753
  %33 = load i64, i64* %32, align 8, !dbg !2753, !tbaa !636
  %34 = add i64 %33, %3, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %34, metadata !2721, metadata !DIExpression()), !dbg !2747
  %35 = inttoptr i64 %34 to i32*, !dbg !2755
  call void @llvm.dbg.value(metadata i32* %35, metadata !2721, metadata !DIExpression()), !dbg !2747
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !2756
  %37 = load i64, i64* %36, align 8, !dbg !2756, !tbaa !630
  %38 = add i64 %37, %2, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %38, metadata !2716, metadata !DIExpression()), !dbg !2747
  %39 = inttoptr i64 %38 to i8*, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %39, metadata !2716, metadata !DIExpression()), !dbg !2747
  br label %40, !dbg !2752

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2722, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32* %42, metadata !2721, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %43, metadata !2716, metadata !DIExpression()), !dbg !2747
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %44, metadata !2716, metadata !DIExpression()), !dbg !2747
  %45 = load i8, i8* %43, align 1, !dbg !2761, !tbaa !713
  %46 = sext i8 %45 to i32, !dbg !2761
  %47 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !2762
  call void @llvm.dbg.value(metadata i32* %47, metadata !2721, metadata !DIExpression()), !dbg !2747
  store i32 %46, i32* %42, align 4, !dbg !2763, !tbaa !2103
  %48 = add nuw i64 %41, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %48, metadata !2722, metadata !DIExpression()), !dbg !2748
  %49 = icmp eq i64 %48, %29, !dbg !2751
  br i1 %49, label %61, label %40, !dbg !2752, !llvm.loop !2765

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2724, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %52, metadata !2715, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %53, metadata !2714, metadata !DIExpression()), !dbg !2730
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !2767
  %54 = load i64, i64* %25, align 8, !dbg !2769, !tbaa !611
  %55 = add i64 %54, %53, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %55, metadata !2714, metadata !DIExpression()), !dbg !2730
  %56 = load i64, i64* %26, align 8, !dbg !2771, !tbaa !611
  %57 = add i64 %56, %52, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %57, metadata !2715, metadata !DIExpression()), !dbg !2730
  %58 = add nuw i64 %51, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %58, metadata !2724, metadata !DIExpression()), !dbg !2742
  %59 = load i64, i64* %20, align 8, !dbg !2743, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !2745
  br i1 %60, label %50, label %61, !dbg !2746, !llvm.loop !2774

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !2776
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2777 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2779, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 %1, metadata !2780, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %2, metadata !2781, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %3, metadata !2782, metadata !DIExpression()), !dbg !2796
  %5 = icmp sgt i32 %1, -1, !dbg !2797
  br i1 %5, label %6, label %15, !dbg !2798

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2780, metadata !DIExpression()), !dbg !2796
  %8 = zext i32 %7 to i64, !dbg !2799
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !2799
  %10 = load i64, i64* %9, align 8, !dbg !2799, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !2800
  br i1 %11, label %12, label %15, !dbg !2801

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %13, metadata !2780, metadata !DIExpression()), !dbg !2796
  %14 = icmp sgt i32 %7, 0, !dbg !2797
  br i1 %14, label %6, label %27, !dbg !2798, !llvm.loop !2804

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !2806
  br i1 %17, label %27, label %18, !dbg !2807

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !2791, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %3, metadata !2782, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %2, metadata !2781, metadata !DIExpression()), !dbg !2796
  %19 = sext i32 %16 to i64, !dbg !2809
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !2809
  %21 = load i64, i64* %20, align 8, !dbg !2809, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !2811
  br i1 %22, label %61, label %23, !dbg !2812

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !2812

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !2788, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 0, metadata !2789, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 undef, metadata !2783, metadata !DIExpression()), !dbg !2813
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !2815
  %29 = load i64, i64* %28, align 8, !dbg !2815, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !2817
  br i1 %30, label %61, label %31, !dbg !2818

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !2819
  %33 = load i64, i64* %32, align 8, !dbg !2819, !tbaa !636
  %34 = add i64 %33, %3, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %34, metadata !2788, metadata !DIExpression()), !dbg !2813
  %35 = inttoptr i64 %34 to i32*, !dbg !2821
  call void @llvm.dbg.value(metadata i32* %35, metadata !2788, metadata !DIExpression()), !dbg !2813
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !2822
  %37 = load i64, i64* %36, align 8, !dbg !2822, !tbaa !630
  %38 = add i64 %37, %2, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %38, metadata !2783, metadata !DIExpression()), !dbg !2813
  %39 = inttoptr i64 %38 to i16*, !dbg !2824
  call void @llvm.dbg.value(metadata i16* %39, metadata !2783, metadata !DIExpression()), !dbg !2813
  br label %40, !dbg !2818

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2789, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32* %42, metadata !2788, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i16* %43, metadata !2783, metadata !DIExpression()), !dbg !2813
  %44 = getelementptr inbounds i16, i16* %43, i64 1, !dbg !2825
  call void @llvm.dbg.value(metadata i16* %44, metadata !2783, metadata !DIExpression()), !dbg !2813
  %45 = load i16, i16* %43, align 2, !dbg !2827, !tbaa !2495
  %46 = sext i16 %45 to i32, !dbg !2827
  %47 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !2828
  call void @llvm.dbg.value(metadata i32* %47, metadata !2788, metadata !DIExpression()), !dbg !2813
  store i32 %46, i32* %42, align 4, !dbg !2829, !tbaa !2103
  %48 = add nuw i64 %41, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %48, metadata !2789, metadata !DIExpression()), !dbg !2814
  %49 = icmp eq i64 %48, %29, !dbg !2817
  br i1 %49, label %61, label %40, !dbg !2818, !llvm.loop !2831

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2791, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %52, metadata !2782, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %53, metadata !2781, metadata !DIExpression()), !dbg !2796
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !2833
  %54 = load i64, i64* %25, align 8, !dbg !2835, !tbaa !611
  %55 = add i64 %54, %53, !dbg !2836
  call void @llvm.dbg.value(metadata i64 %55, metadata !2781, metadata !DIExpression()), !dbg !2796
  %56 = load i64, i64* %26, align 8, !dbg !2837, !tbaa !611
  %57 = add i64 %56, %52, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %57, metadata !2782, metadata !DIExpression()), !dbg !2796
  %58 = add nuw i64 %51, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %58, metadata !2791, metadata !DIExpression()), !dbg !2808
  %59 = load i64, i64* %20, align 8, !dbg !2809, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !2811
  br i1 %60, label %50, label %61, !dbg !2812, !llvm.loop !2840

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !2842
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2843 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2845, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %1, metadata !2846, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %3, metadata !2848, metadata !DIExpression()), !dbg !2863
  %5 = icmp sgt i32 %1, -1, !dbg !2864
  br i1 %5, label %6, label %15, !dbg !2865

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2846, metadata !DIExpression()), !dbg !2863
  %8 = zext i32 %7 to i64, !dbg !2866
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !2866
  %10 = load i64, i64* %9, align 8, !dbg !2866, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !2867
  br i1 %11, label %12, label %15, !dbg !2868

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %13, metadata !2846, metadata !DIExpression()), !dbg !2863
  %14 = icmp sgt i32 %7, 0, !dbg !2864
  br i1 %14, label %6, label %27, !dbg !2865, !llvm.loop !2871

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !2873
  br i1 %17, label %27, label %18, !dbg !2874

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %3, metadata !2848, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2863
  %19 = sext i32 %16 to i64, !dbg !2876
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !2876
  %21 = load i64, i64* %20, align 8, !dbg !2876, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !2878
  br i1 %22, label %61, label %23, !dbg !2879

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !2879

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !2854, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 0, metadata !2855, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 undef, metadata !2849, metadata !DIExpression()), !dbg !2880
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !2882
  %29 = load i64, i64* %28, align 8, !dbg !2882, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !2884
  br i1 %30, label %61, label %31, !dbg !2885

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !2886
  %33 = load i64, i64* %32, align 8, !dbg !2886, !tbaa !636
  %34 = add i64 %33, %3, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %34, metadata !2854, metadata !DIExpression()), !dbg !2880
  %35 = inttoptr i64 %34 to i32*, !dbg !2888
  call void @llvm.dbg.value(metadata i32* %35, metadata !2854, metadata !DIExpression()), !dbg !2880
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !2889
  %37 = load i64, i64* %36, align 8, !dbg !2889, !tbaa !630
  %38 = add i64 %37, %2, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %38, metadata !2849, metadata !DIExpression()), !dbg !2880
  %39 = inttoptr i64 %38 to i8*, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %39, metadata !2849, metadata !DIExpression()), !dbg !2880
  br label %40, !dbg !2885

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2855, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32* %42, metadata !2854, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %43, metadata !2849, metadata !DIExpression()), !dbg !2880
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %44, metadata !2849, metadata !DIExpression()), !dbg !2880
  %45 = load i8, i8* %43, align 1, !dbg !2894, !tbaa !713
  %46 = zext i8 %45 to i32, !dbg !2894
  %47 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !2895
  call void @llvm.dbg.value(metadata i32* %47, metadata !2854, metadata !DIExpression()), !dbg !2880
  store i32 %46, i32* %42, align 4, !dbg !2896, !tbaa !2103
  %48 = add nuw i64 %41, 1, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %48, metadata !2855, metadata !DIExpression()), !dbg !2881
  %49 = icmp eq i64 %48, %29, !dbg !2884
  br i1 %49, label %61, label %40, !dbg !2885, !llvm.loop !2898

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2857, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %52, metadata !2848, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %53, metadata !2847, metadata !DIExpression()), !dbg !2863
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !2900
  %54 = load i64, i64* %25, align 8, !dbg !2902, !tbaa !611
  %55 = add i64 %54, %53, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %55, metadata !2847, metadata !DIExpression()), !dbg !2863
  %56 = load i64, i64* %26, align 8, !dbg !2904, !tbaa !611
  %57 = add i64 %56, %52, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %57, metadata !2848, metadata !DIExpression()), !dbg !2863
  %58 = add nuw i64 %51, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %58, metadata !2857, metadata !DIExpression()), !dbg !2875
  %59 = load i64, i64* %20, align 8, !dbg !2876, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !2878
  br i1 %60, label %50, label %61, !dbg !2879, !llvm.loop !2907

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !2909
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2910 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2912, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %1, metadata !2913, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %2, metadata !2914, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %3, metadata !2915, metadata !DIExpression()), !dbg !2929
  %5 = icmp sgt i32 %1, -1, !dbg !2930
  br i1 %5, label %6, label %15, !dbg !2931

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2913, metadata !DIExpression()), !dbg !2929
  %8 = zext i32 %7 to i64, !dbg !2932
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !2932
  %10 = load i64, i64* %9, align 8, !dbg !2932, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !2933
  br i1 %11, label %12, label %15, !dbg !2934

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %13, metadata !2913, metadata !DIExpression()), !dbg !2929
  %14 = icmp sgt i32 %7, 0, !dbg !2930
  br i1 %14, label %6, label %27, !dbg !2931, !llvm.loop !2937

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !2939
  br i1 %17, label %27, label %18, !dbg !2940

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !2924, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %3, metadata !2915, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %2, metadata !2914, metadata !DIExpression()), !dbg !2929
  %19 = sext i32 %16 to i64, !dbg !2942
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !2942
  %21 = load i64, i64* %20, align 8, !dbg !2942, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !2944
  br i1 %22, label %61, label %23, !dbg !2945

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !2945

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !2921, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 0, metadata !2922, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 undef, metadata !2916, metadata !DIExpression()), !dbg !2946
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !2948
  %29 = load i64, i64* %28, align 8, !dbg !2948, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !2950
  br i1 %30, label %61, label %31, !dbg !2951

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !2952
  %33 = load i64, i64* %32, align 8, !dbg !2952, !tbaa !636
  %34 = add i64 %33, %3, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %34, metadata !2921, metadata !DIExpression()), !dbg !2946
  %35 = inttoptr i64 %34 to i32*, !dbg !2954
  call void @llvm.dbg.value(metadata i32* %35, metadata !2921, metadata !DIExpression()), !dbg !2946
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !2955
  %37 = load i64, i64* %36, align 8, !dbg !2955, !tbaa !630
  %38 = add i64 %37, %2, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %38, metadata !2916, metadata !DIExpression()), !dbg !2946
  %39 = inttoptr i64 %38 to i16*, !dbg !2957
  call void @llvm.dbg.value(metadata i16* %39, metadata !2916, metadata !DIExpression()), !dbg !2946
  br label %40, !dbg !2951

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i32* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2922, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32* %42, metadata !2921, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i16* %43, metadata !2916, metadata !DIExpression()), !dbg !2946
  %44 = getelementptr inbounds i16, i16* %43, i64 1, !dbg !2958
  call void @llvm.dbg.value(metadata i16* %44, metadata !2916, metadata !DIExpression()), !dbg !2946
  %45 = load i16, i16* %43, align 2, !dbg !2960, !tbaa !2495
  %46 = zext i16 %45 to i32, !dbg !2960
  %47 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !2961
  call void @llvm.dbg.value(metadata i32* %47, metadata !2921, metadata !DIExpression()), !dbg !2946
  store i32 %46, i32* %42, align 4, !dbg !2962, !tbaa !2103
  %48 = add nuw i64 %41, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %48, metadata !2922, metadata !DIExpression()), !dbg !2947
  %49 = icmp eq i64 %48, %29, !dbg !2950
  br i1 %49, label %61, label %40, !dbg !2951, !llvm.loop !2964

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2924, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %52, metadata !2915, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %53, metadata !2914, metadata !DIExpression()), !dbg !2929
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !2966
  %54 = load i64, i64* %25, align 8, !dbg !2968, !tbaa !611
  %55 = add i64 %54, %53, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %55, metadata !2914, metadata !DIExpression()), !dbg !2929
  %56 = load i64, i64* %26, align 8, !dbg !2970, !tbaa !611
  %57 = add i64 %56, %52, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %57, metadata !2915, metadata !DIExpression()), !dbg !2929
  %58 = add nuw i64 %51, 1, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %58, metadata !2924, metadata !DIExpression()), !dbg !2941
  %59 = load i64, i64* %20, align 8, !dbg !2942, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !2944
  br i1 %60, label %50, label %61, !dbg !2945, !llvm.loop !2973

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !2975
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2976 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2979, metadata !DIExpression()), !dbg !2987
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %5, metadata !2980, metadata !DIExpression()), !dbg !2987
  %6 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !2989, !tbaa !1383, !range !1372
  %7 = icmp eq i8 %6, 0, !dbg !2989
  br i1 %7, label %8, label %22, !dbg !2991

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2992
  %9 = tail call i8* @malloc(i64 1024) #8, !dbg !2995
  %10 = icmp eq i8* %9, null, !dbg !2996
  br i1 %10, label %11, label %13, !dbg !2997

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2998
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3000
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3001
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3003
  br label %21, !dbg !3004

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %9, i64 1023, !dbg !3005
  store i8 0, i8* %14, align 1, !dbg !3006, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2998
  %15 = tail call i8* @halide_string_to_string(i8* nonnull %9, i8* nonnull %14, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3000
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3007
  %16 = ptrtoint i8* %15 to i64, !dbg !3009
  %17 = ptrtoint i8* %9 to i64, !dbg !3009
  %18 = add i64 %16, 1, !dbg !3009
  %19 = sub i64 %18, %17, !dbg !3010
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %19) #8, !dbg !3011
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8, !dbg !3012
  br label %21

21:                                               ; preds = %13, %11
  tail call void @free(i8* %9) #8, !dbg !3013
  br label %247, !dbg !3014

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3015
  %24 = load i64, i64* %23, align 8, !dbg !3015, !tbaa !777
  %25 = trunc i64 %24 to i32, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %25, metadata !2981, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1777, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1782, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 0, metadata !1785, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !1786, metadata !DIExpression()), !dbg !3021
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !3022
  %27 = load i32, i32* %26, align 4, !dbg !3022, !tbaa !812
  %28 = icmp sgt i32 %27, 0, !dbg !3023
  br i1 %28, label %32, label %29, !dbg !3024

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3025
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3027
  %31 = load i8, i8* %30, align 1, !dbg !3027, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1798, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !3030
  br label %75, !dbg !3031

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %34 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %33, align 8, !tbaa !815
  %35 = zext i32 %27 to i64, !dbg !3023
  br label %36, !dbg !3024

36:                                               ; preds = %50, %32
  %37 = phi i64 [ 0, %32 ], [ %52, %50 ]
  %38 = phi i64 [ 0, %32 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !1786, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %38, metadata !1785, metadata !DIExpression()), !dbg !3019
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i64 %37, i32 2, !dbg !3032
  %40 = load i32, i32* %39, align 4, !dbg !3032, !tbaa !823
  %41 = icmp sgt i32 %40, 0, !dbg !3033
  br i1 %41, label %42, label %50, !dbg !3034

42:                                               ; preds = %36
  %43 = zext i32 %40 to i64, !dbg !3035
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i64 %37, i32 1, !dbg !3036
  %45 = load i32, i32* %44, align 4, !dbg !3036, !tbaa !888
  %46 = add nsw i32 %45, -1, !dbg !3037
  %47 = sext i32 %46 to i64, !dbg !3038
  %48 = mul nsw i64 %47, %43, !dbg !3039
  %49 = add nsw i64 %48, %38, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %49, metadata !1785, metadata !DIExpression()), !dbg !3019
  br label %50, !dbg !3041

50:                                               ; preds = %42, %36
  %51 = phi i64 [ %49, %42 ], [ %38, %36 ], !dbg !3019
  call void @llvm.dbg.value(metadata i64 %51, metadata !1785, metadata !DIExpression()), !dbg !3019
  %52 = add nuw nsw i64 %37, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %52, metadata !1786, metadata !DIExpression()), !dbg !3021
  %53 = icmp eq i64 %52, %35, !dbg !3023
  br i1 %53, label %54, label %36, !dbg !3024, !llvm.loop !3043

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %51, metadata !1785, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3025
  %55 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3027
  %56 = load i8, i8* %55, align 1, !dbg !3027, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1798, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !3030
  br label %57, !dbg !3031

57:                                               ; preds = %71, %54
  %58 = phi i64 [ 0, %54 ], [ %73, %71 ]
  %59 = phi i64 [ 0, %54 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1802, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %59, metadata !1801, metadata !DIExpression()), !dbg !3028
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i64 %58, i32 2, !dbg !3045
  %61 = load i32, i32* %60, align 4, !dbg !3045, !tbaa !823
  %62 = icmp slt i32 %61, 0, !dbg !3046
  br i1 %62, label %63, label %71, !dbg !3047

63:                                               ; preds = %57
  %64 = sext i32 %61 to i64, !dbg !3048
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i64 %58, i32 1, !dbg !3049
  %66 = load i32, i32* %65, align 4, !dbg !3049, !tbaa !888
  %67 = add nsw i32 %66, -1, !dbg !3050
  %68 = sext i32 %67 to i64, !dbg !3051
  %69 = mul nsw i64 %68, %64, !dbg !3052
  %70 = add nsw i64 %69, %59, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %70, metadata !1801, metadata !DIExpression()), !dbg !3028
  br label %71, !dbg !3054

71:                                               ; preds = %63, %57
  %72 = phi i64 [ %70, %63 ], [ %59, %57 ], !dbg !3028
  call void @llvm.dbg.value(metadata i64 %72, metadata !1801, metadata !DIExpression()), !dbg !3028
  %73 = add nuw nsw i64 %58, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %73, metadata !1802, metadata !DIExpression()), !dbg !3030
  %74 = icmp eq i64 %73, %35, !dbg !3056
  br i1 %74, label %75, label %57, !dbg !3031, !llvm.loop !3057

75:                                               ; preds = %71, %29
  %76 = phi i8 [ %31, %29 ], [ %56, %71 ]
  %77 = phi i64 [ 0, %29 ], [ %51, %71 ]
  %78 = phi i64 [ 0, %29 ], [ %72, %71 ], !dbg !3028
  %79 = zext i8 %76 to i64, !dbg !3027
  %80 = add nuw nsw i64 %79, 7, !dbg !3059
  %81 = lshr i64 %80, 3, !dbg !3060
  %82 = add nsw i64 %77, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %82, metadata !1785, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3062
  %83 = sub i64 %82, %78, !dbg !3064
  %84 = mul i64 %83, %81, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %84, metadata !2982, metadata !DIExpression()), !dbg !2987
  %85 = icmp eq i64 %84, 0, !dbg !3065
  br i1 %85, label %86, label %87, !dbg !3068

86:                                               ; preds = %75
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.99, i64 0, i64 0)) #8, !dbg !3069
  tail call void @abort() #8, !dbg !3069
  br label %87, !dbg !3069

87:                                               ; preds = %86, %75
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !3071
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !3071
  %88 = tail call i8* @malloc(i64 1024) #8, !dbg !3073
  %89 = icmp eq i8* %88, null, !dbg !3074
  br i1 %89, label %92, label %90, !dbg !3075

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, i8* %88, i64 1023, !dbg !3076
  store i8 0, i8* %91, align 1, !dbg !3077, !tbaa !713
  br label %92, !dbg !3078

92:                                               ; preds = %87, %90
  %93 = phi i8* [ %91, %90 ], [ null, %87 ], !dbg !3079
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3080
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3080
  %94 = tail call i8* @halide_string_to_string(i8* %88, i8* %93, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !3082
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3083
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3083
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %93, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !3085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !3086
  %96 = tail call i8* @halide_pointer_to_string(i8* %95, i8* %93, i8* %0) #8, !dbg !3088
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3089
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3089
  %97 = tail call i8* @halide_string_to_string(i8* %96, i8* %93, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !3091
  %98 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !3092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %98, metadata !1171, metadata !DIExpression()) #10, !dbg !3093
  %99 = tail call i8* @halide_pointer_to_string(i8* %97, i8* %93, i8* %98) #8, !dbg !3095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3096
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3096
  %100 = tail call i8* @halide_string_to_string(i8* %99, i8* %93, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !3098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %25, metadata !1156, metadata !DIExpression()) #10, !dbg !3099
  %101 = and i64 %24, 4294967295, !dbg !3101
  %102 = tail call i8* @halide_uint64_to_string(i8* %100, i8* %93, i64 %101, i32 1) #8, !dbg !3102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3103
  %103 = tail call i8* @halide_string_to_string(i8* %102, i8* %93, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %84, metadata !1156, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3106
  %104 = and i64 %84, 4294967295, !dbg !3108
  %105 = tail call i8* @halide_uint64_to_string(i8* %103, i8* %93, i64 %104, i32 1) #8, !dbg !3109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3110
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3110
  %106 = tail call i8* @halide_string_to_string(i8* %105, i8* %93, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !3112
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !3113
  br i1 %89, label %107, label %108, !dbg !3115

107:                                              ; preds = %92
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3116
  br label %114, !dbg !3117

108:                                              ; preds = %92
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !3118
  %109 = ptrtoint i8* %106 to i64, !dbg !3120
  %110 = ptrtoint i8* %88 to i64, !dbg !3120
  %111 = add i64 %109, 1, !dbg !3120
  %112 = sub i64 %111, %110, !dbg !3121
  %113 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %88, i64 %112) #8, !dbg !3122
  tail call void @halide_print(i8* %0, i8* nonnull %88) #8, !dbg !3123
  br label %114

114:                                              ; preds = %107, %108
  call void @free(i8* %88) #8, !dbg !3124
  %115 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 2), align 8, !dbg !3125, !tbaa !1386
  call void %115(i32 34962, i32 %25) #8, !dbg !3126
  %116 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3127
  br i1 %116, label %247, label %117, !dbg !3129

117:                                              ; preds = %114
  %118 = load i8* (i32, i64, i64, i32)*, i8* (i32, i64, i64, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 21), align 8, !dbg !3130, !tbaa !1404
  %119 = call i8* %118(i32 34962, i64 0, i64 %84, i32 1) #8, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %119, metadata !2983, metadata !DIExpression()), !dbg !2987
  %120 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i64 0, i64 0)) #9, !dbg !3132
  br i1 %120, label %247, label %121, !dbg !3134

121:                                              ; preds = %117
  %122 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !3135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %122) #10, !dbg !3135
  call void @llvm.dbg.declare(metadata %struct.halide_buffer_t* %3, metadata !2984, metadata !DIExpression()), !dbg !3136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %122, i8* nonnull align 8 dereferenceable(56) %98, i64 56, i1 false), !dbg !3137, !tbaa.struct !2493
  %123 = ptrtoint i8* %119 to i64, !dbg !3138
  %124 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !3139
  store i64 %123, i64* %124, align 8, !dbg !3140, !tbaa !777
  %125 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %125) #10, !dbg !3141
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !2985, metadata !DIExpression()), !dbg !3142
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #9, !dbg !3143
  %126 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0, !dbg !3144
  %127 = load i8, i8* %126, align 8, !dbg !3144, !tbaa !2504
  switch i8 %127, label %205 [
    i8 0, label %128
    i8 1, label %156
    i8 2, label %184
  ], !dbg !3146

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3147
  %130 = load i8, i8* %129, align 1, !dbg !3147, !tbaa !2509
  switch i8 %130, label %143 [
    i8 8, label %131
    i8 16, label %134
    i8 32, label %140
  ], !dbg !3150

131:                                              ; preds = %128
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3151
  %133 = load i64, i64* %132, align 8, !dbg !3151, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %133) #9, !dbg !3153
  br label %205, !dbg !3154

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6, !dbg !3155
  %136 = load i64, i64* %135, align 8, !dbg !3158, !tbaa !640
  %137 = lshr i64 %136, 1, !dbg !3158
  store i64 %137, i64* %135, align 8, !dbg !3158, !tbaa !640
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3159
  %139 = load i64, i64* %138, align 8, !dbg !3159, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %139) #9, !dbg !3160
  br label %205, !dbg !3161

140:                                              ; preds = %128
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3162
  %142 = load i64, i64* %141, align 8, !dbg !3162, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %142) #9, !dbg !3165
  br label %205

143:                                              ; preds = %128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3166
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3166
  %144 = call i8* @malloc(i64 1024) #8, !dbg !3169
  %145 = icmp eq i8* %144, null, !dbg !3170
  br i1 %145, label %146, label %148, !dbg !3171

146:                                              ; preds = %143
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3172
  %147 = call i8* @halide_string_to_string(i8* %144, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3174
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3175
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3177
  br label %244, !dbg !3178

148:                                              ; preds = %143
  %149 = getelementptr inbounds i8, i8* %144, i64 1023, !dbg !3179
  store i8 0, i8* %149, align 1, !dbg !3180, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3172
  %150 = call i8* @halide_string_to_string(i8* nonnull %144, i8* nonnull %149, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3174
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3181
  %151 = ptrtoint i8* %150 to i64, !dbg !3183
  %152 = ptrtoint i8* %144 to i64, !dbg !3183
  %153 = add i64 %151, 1, !dbg !3183
  %154 = sub i64 %153, %152, !dbg !3184
  %155 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %144, i64 %154) #8, !dbg !3185
  call void @halide_error(i8* %0, i8* nonnull %144) #8, !dbg !3186
  br label %244

156:                                              ; preds = %121
  %157 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3187
  %158 = load i8, i8* %157, align 1, !dbg !3187, !tbaa !2509
  switch i8 %158, label %171 [
    i8 8, label %159
    i8 16, label %162
    i8 32, label %168
  ], !dbg !3191

159:                                              ; preds = %156
  %160 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3192
  %161 = load i64, i64* %160, align 8, !dbg !3192, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %161) #9, !dbg !3194
  br label %205, !dbg !3195

162:                                              ; preds = %156
  %163 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6, !dbg !3196
  %164 = load i64, i64* %163, align 8, !dbg !3199, !tbaa !640
  %165 = lshr i64 %164, 1, !dbg !3199
  store i64 %165, i64* %163, align 8, !dbg !3199, !tbaa !640
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3200
  %167 = load i64, i64* %166, align 8, !dbg !3200, !tbaa !671
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %167) #9, !dbg !3201
  br label %205, !dbg !3202

168:                                              ; preds = %156
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3203
  %170 = load i64, i64* %169, align 8, !dbg !3203, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %170) #9, !dbg !3206
  br label %205

171:                                              ; preds = %156
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3207
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3207
  %172 = call i8* @malloc(i64 1024) #8, !dbg !3210
  %173 = icmp eq i8* %172, null, !dbg !3211
  br i1 %173, label %174, label %176, !dbg !3212

174:                                              ; preds = %171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3213
  %175 = call i8* @halide_string_to_string(i8* %172, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3215
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3216
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3218
  br label %244, !dbg !3219

176:                                              ; preds = %171
  %177 = getelementptr inbounds i8, i8* %172, i64 1023, !dbg !3220
  store i8 0, i8* %177, align 1, !dbg !3221, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3213
  %178 = call i8* @halide_string_to_string(i8* nonnull %172, i8* nonnull %177, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3215
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3216
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3222
  %179 = ptrtoint i8* %178 to i64, !dbg !3224
  %180 = ptrtoint i8* %172 to i64, !dbg !3224
  %181 = add i64 %179, 1, !dbg !3224
  %182 = sub i64 %181, %180, !dbg !3225
  %183 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %172, i64 %182) #8, !dbg !3226
  call void @halide_error(i8* %0, i8* nonnull %172) #8, !dbg !3227
  br label %244

184:                                              ; preds = %121
  %185 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3228
  %186 = load i8, i8* %185, align 1, !dbg !3228, !tbaa !2509
  %187 = icmp eq i8 %186, 32, !dbg !3232
  br i1 %187, label %188, label %191, !dbg !3233

188:                                              ; preds = %184
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 2, !dbg !3234
  %190 = load i64, i64* %189, align 8, !dbg !3234, !tbaa !671
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %190) #9, !dbg !3236
  br label %205, !dbg !3237

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3238
  %192 = call i8* @malloc(i64 1024) #8, !dbg !3241
  %193 = icmp eq i8* %192, null, !dbg !3242
  br i1 %193, label %194, label %196, !dbg !3243

194:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3244
  %195 = call i8* @halide_string_to_string(i8* %192, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3247
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3249
  br label %204, !dbg !3250

196:                                              ; preds = %191
  %197 = getelementptr inbounds i8, i8* %192, i64 1023, !dbg !3251
  store i8 0, i8* %197, align 1, !dbg !3252, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3244
  %198 = call i8* @halide_string_to_string(i8* nonnull %192, i8* nonnull %197, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3247
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3253
  %199 = ptrtoint i8* %198 to i64, !dbg !3255
  %200 = ptrtoint i8* %192 to i64, !dbg !3255
  %201 = add i64 %199, 1, !dbg !3255
  %202 = sub i64 %201, %200, !dbg !3256
  %203 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %192, i64 %202) #8, !dbg !3257
  call void @halide_error(i8* %0, i8* nonnull %192) #8, !dbg !3258
  br label %204

204:                                              ; preds = %196, %194
  call void @free(i8* %192) #8, !dbg !3259
  br label %205

205:                                              ; preds = %121, %162, %168, %159, %188, %204, %131, %140, %134
  %206 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 27), align 8, !dbg !3260, !tbaa !1410
  call void %206(i32 34962) #8, !dbg !3261
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !3262
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !3262
  %207 = call i8* @malloc(i64 1024) #8, !dbg !3264
  %208 = icmp eq i8* %207, null, !dbg !3265
  br i1 %208, label %211, label %209, !dbg !3266

209:                                              ; preds = %205
  %210 = getelementptr inbounds i8, i8* %207, i64 1023, !dbg !3267
  store i8 0, i8* %210, align 1, !dbg !3268, !tbaa !713
  br label %211, !dbg !3269

211:                                              ; preds = %205, %209
  %212 = phi i8* [ %210, %209 ], [ null, %205 ], !dbg !3270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3271
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3271
  %213 = call i8* @halide_string_to_string(i8* %207, i8* %212, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !3273
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %84, metadata !1156, metadata !DIExpression()) #10, !dbg !3274
  %214 = call i8* @halide_uint64_to_string(i8* %213, i8* %212, i64 %104, i32 1) #8, !dbg !3276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3277
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3277
  %215 = call i8* @halide_string_to_string(i8* %214, i8* %212, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !3279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !3280
  br i1 %208, label %216, label %217, !dbg !3282

216:                                              ; preds = %211
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3283
  br label %223, !dbg !3284

217:                                              ; preds = %211
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !3285
  %218 = ptrtoint i8* %215 to i64, !dbg !3287
  %219 = ptrtoint i8* %207 to i64, !dbg !3287
  %220 = add i64 %218, 1, !dbg !3287
  %221 = sub i64 %220, %219, !dbg !3288
  %222 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %207, i64 %221) #8, !dbg !3289
  call void @halide_print(i8* %0, i8* nonnull %207) #8, !dbg !3290
  br label %223

223:                                              ; preds = %217, %216
  call void @free(i8* %207) #8, !dbg !3291
  %224 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %224, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !3293
  %225 = call i8* @malloc(i64 1024) #8, !dbg !3295
  %226 = icmp eq i8* %225, null, !dbg !3296
  br i1 %226, label %229, label %227, !dbg !3297

227:                                              ; preds = %223
  %228 = getelementptr inbounds i8, i8* %225, i64 1023, !dbg !3298
  store i8 0, i8* %228, align 1, !dbg !3299, !tbaa !713
  br label %229, !dbg !3300

229:                                              ; preds = %223, %227
  %230 = phi i8* [ %228, %227 ], [ null, %223 ], !dbg !3301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3302
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3302
  %231 = call i8* @halide_string_to_string(i8* %225, i8* %230, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !3304
  %232 = sub i64 %224, %5, !dbg !3305
  %233 = uitofp i64 %232 to double, !dbg !3306
  %234 = fdiv double %233, 1.000000e+06, !dbg !3307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !3308
  call void @llvm.dbg.value(metadata double %234, metadata !1693, metadata !DIExpression()) #10, !dbg !3308
  %235 = call i8* @halide_double_to_string(i8* %231, i8* %230, double %234, i32 1) #8, !dbg !3310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3311
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.103, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3311
  %236 = call i8* @halide_string_to_string(i8* %235, i8* %230, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !3313
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !3314
  br i1 %226, label %237, label %238, !dbg !3316

237:                                              ; preds = %229
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3317
  br label %244, !dbg !3318

238:                                              ; preds = %229
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !3319
  %239 = ptrtoint i8* %236 to i64, !dbg !3321
  %240 = ptrtoint i8* %225 to i64, !dbg !3321
  %241 = add i64 %239, 1, !dbg !3321
  %242 = sub i64 %241, %240, !dbg !3322
  %243 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %225, i64 %242) #8, !dbg !3323
  call void @halide_print(i8* %0, i8* nonnull %225) #8, !dbg !3324
  br label %244

244:                                              ; preds = %237, %238, %174, %176, %146, %148
  %245 = phi i8* [ %144, %148 ], [ %144, %146 ], [ %172, %176 ], [ %172, %174 ], [ %225, %238 ], [ %225, %237 ]
  %246 = phi i32 [ -1, %148 ], [ -1, %146 ], [ -1, %176 ], [ -1, %174 ], [ 0, %238 ], [ 0, %237 ], !dbg !2987
  call void @free(i8* %245) #8, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %125) #10, !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %122) #10, !dbg !3325
  br label %247

247:                                              ; preds = %114, %117, %244, %21
  %248 = phi i32 [ 1, %21 ], [ 1, %114 ], [ %246, %244 ], [ 1, %117 ], !dbg !2987
  ret i32 %248, !dbg !3325
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3326 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3328, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %2, metadata !3330, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %3, metadata !3331, metadata !DIExpression()), !dbg !3344
  %5 = icmp sgt i32 %1, -1, !dbg !3345
  br i1 %5, label %6, label %15, !dbg !3346

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3329, metadata !DIExpression()), !dbg !3344
  %8 = zext i32 %7 to i64, !dbg !3347
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !3347
  %10 = load i64, i64* %9, align 8, !dbg !3347, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !3348
  br i1 %11, label %12, label %15, !dbg !3349

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !3350
  call void @llvm.dbg.value(metadata i32 %13, metadata !3329, metadata !DIExpression()), !dbg !3344
  %14 = icmp sgt i32 %7, 0, !dbg !3345
  br i1 %14, label %6, label %27, !dbg !3346, !llvm.loop !3352

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !3354
  br i1 %17, label %27, label %18, !dbg !3355

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !3338, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3331, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %2, metadata !3330, metadata !DIExpression()), !dbg !3344
  %19 = sext i32 %16 to i64, !dbg !3357
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !3357
  %21 = load i64, i64* %20, align 8, !dbg !3357, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !3359
  br i1 %22, label %62, label %23, !dbg !3360

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %51, !dbg !3360

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !3335, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 0, metadata !3336, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 undef, metadata !3332, metadata !DIExpression()), !dbg !3361
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !3363
  %29 = load i64, i64* %28, align 8, !dbg !3363, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !3365
  br i1 %30, label %62, label %31, !dbg !3366

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !3367
  %33 = load i64, i64* %32, align 8, !dbg !3367, !tbaa !636
  %34 = add i64 %33, %3, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %34, metadata !3335, metadata !DIExpression()), !dbg !3361
  %35 = inttoptr i64 %34 to i8*, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %35, metadata !3335, metadata !DIExpression()), !dbg !3361
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !3370
  %37 = load i64, i64* %36, align 8, !dbg !3370, !tbaa !630
  %38 = add i64 %37, %2, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %38, metadata !3332, metadata !DIExpression()), !dbg !3361
  %39 = inttoptr i64 %38 to i32*, !dbg !3372
  call void @llvm.dbg.value(metadata i32* %39, metadata !3332, metadata !DIExpression()), !dbg !3361
  br label %40, !dbg !3366

40:                                               ; preds = %31, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %31 ]
  %42 = phi i8* [ %47, %40 ], [ %35, %31 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %31 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3336, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %42, metadata !3335, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32* %43, metadata !3332, metadata !DIExpression()), !dbg !3361
  %44 = getelementptr inbounds i32, i32* %43, i64 1, !dbg !3373
  call void @llvm.dbg.value(metadata i32* %44, metadata !3332, metadata !DIExpression()), !dbg !3361
  %45 = load i32, i32* %43, align 4, !dbg !3375, !tbaa !2103
  %46 = trunc i32 %45 to i8, !dbg !3375
  %47 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %47, metadata !3335, metadata !DIExpression()), !dbg !3361
  store i8 %46, i8* %42, align 1, !dbg !3377, !tbaa !713
  %48 = add nuw i64 %41, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %48, metadata !3336, metadata !DIExpression()), !dbg !3362
  %49 = load i64, i64* %28, align 8, !dbg !3363, !tbaa !640
  %50 = icmp ult i64 %48, %49, !dbg !3365
  br i1 %50, label %40, label %62, !dbg !3366, !llvm.loop !3379

51:                                               ; preds = %23, %51
  %52 = phi i64 [ 0, %23 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %23 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %23 ], [ %56, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !3338, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %53, metadata !3331, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %54, metadata !3330, metadata !DIExpression()), !dbg !3344
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %54, i64 %53) #9, !dbg !3381
  %55 = load i64, i64* %25, align 8, !dbg !3383, !tbaa !611
  %56 = add i64 %55, %54, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %56, metadata !3330, metadata !DIExpression()), !dbg !3344
  %57 = load i64, i64* %26, align 8, !dbg !3385, !tbaa !611
  %58 = add i64 %57, %53, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %58, metadata !3331, metadata !DIExpression()), !dbg !3344
  %59 = add nuw i64 %52, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %59, metadata !3338, metadata !DIExpression()), !dbg !3356
  %60 = load i64, i64* %20, align 8, !dbg !3357, !tbaa !611
  %61 = icmp ult i64 %59, %60, !dbg !3359
  br i1 %61, label %51, label %62, !dbg !3360, !llvm.loop !3388

62:                                               ; preds = %51, %40, %18, %27
  ret void, !dbg !3390
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3391 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3393, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %1, metadata !3394, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %2, metadata !3395, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3408
  %5 = icmp sgt i32 %1, -1, !dbg !3409
  br i1 %5, label %6, label %15, !dbg !3410

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3394, metadata !DIExpression()), !dbg !3408
  %8 = zext i32 %7 to i64, !dbg !3411
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !3411
  %10 = load i64, i64* %9, align 8, !dbg !3411, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !3412
  br i1 %11, label %12, label %15, !dbg !3413

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %13, metadata !3394, metadata !DIExpression()), !dbg !3408
  %14 = icmp sgt i32 %7, 0, !dbg !3409
  br i1 %14, label %6, label %27, !dbg !3410, !llvm.loop !3416

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !3418
  br i1 %17, label %27, label %18, !dbg !3419

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !3403, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %2, metadata !3395, metadata !DIExpression()), !dbg !3408
  %19 = sext i32 %16 to i64, !dbg !3421
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !3421
  %21 = load i64, i64* %20, align 8, !dbg !3421, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !3423
  br i1 %22, label %61, label %23, !dbg !3424

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !3424

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !3400, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 0, metadata !3401, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 undef, metadata !3397, metadata !DIExpression()), !dbg !3425
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !3427
  %29 = load i64, i64* %28, align 8, !dbg !3427, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !3429
  br i1 %30, label %61, label %31, !dbg !3430

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !3431
  %33 = load i64, i64* %32, align 8, !dbg !3431, !tbaa !636
  %34 = add i64 %33, %3, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %34, metadata !3400, metadata !DIExpression()), !dbg !3425
  %35 = inttoptr i64 %34 to i16*, !dbg !3433
  call void @llvm.dbg.value(metadata i16* %35, metadata !3400, metadata !DIExpression()), !dbg !3425
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !3434
  %37 = load i64, i64* %36, align 8, !dbg !3434, !tbaa !630
  %38 = add i64 %37, %2, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %38, metadata !3397, metadata !DIExpression()), !dbg !3425
  %39 = inttoptr i64 %38 to i32*, !dbg !3436
  call void @llvm.dbg.value(metadata i32* %39, metadata !3397, metadata !DIExpression()), !dbg !3425
  br label %40, !dbg !3430

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i16* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3401, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i16* %42, metadata !3400, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32* %43, metadata !3397, metadata !DIExpression()), !dbg !3425
  %44 = getelementptr inbounds i32, i32* %43, i64 1, !dbg !3437
  call void @llvm.dbg.value(metadata i32* %44, metadata !3397, metadata !DIExpression()), !dbg !3425
  %45 = load i32, i32* %43, align 4, !dbg !3439, !tbaa !2103
  %46 = trunc i32 %45 to i16, !dbg !3439
  %47 = getelementptr inbounds i16, i16* %42, i64 1, !dbg !3440
  call void @llvm.dbg.value(metadata i16* %47, metadata !3400, metadata !DIExpression()), !dbg !3425
  store i16 %46, i16* %42, align 2, !dbg !3441, !tbaa !2495
  %48 = add nuw i64 %41, 1, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %48, metadata !3401, metadata !DIExpression()), !dbg !3426
  %49 = icmp eq i64 %48, %29, !dbg !3429
  br i1 %49, label %61, label %40, !dbg !3430, !llvm.loop !3443

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !3403, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %52, metadata !3396, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %53, metadata !3395, metadata !DIExpression()), !dbg !3408
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !3445
  %54 = load i64, i64* %25, align 8, !dbg !3447, !tbaa !611
  %55 = add i64 %54, %53, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %55, metadata !3395, metadata !DIExpression()), !dbg !3408
  %56 = load i64, i64* %26, align 8, !dbg !3449, !tbaa !611
  %57 = add i64 %56, %52, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %57, metadata !3396, metadata !DIExpression()), !dbg !3408
  %58 = add nuw i64 %51, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %58, metadata !3403, metadata !DIExpression()), !dbg !3420
  %59 = load i64, i64* %20, align 8, !dbg !3421, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !3423
  br i1 %60, label %50, label %61, !dbg !3424, !llvm.loop !3452

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !3454
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3455 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3457, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 %1, metadata !3458, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %2, metadata !3459, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %3, metadata !3460, metadata !DIExpression()), !dbg !3475
  %5 = icmp sgt i32 %1, -1, !dbg !3476
  br i1 %5, label %6, label %15, !dbg !3477

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3458, metadata !DIExpression()), !dbg !3475
  %8 = zext i32 %7 to i64, !dbg !3478
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !3478
  %10 = load i64, i64* %9, align 8, !dbg !3478, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !3479
  br i1 %11, label %12, label %15, !dbg !3480

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %13, metadata !3458, metadata !DIExpression()), !dbg !3475
  %14 = icmp sgt i32 %7, 0, !dbg !3476
  br i1 %14, label %6, label %27, !dbg !3477, !llvm.loop !3483

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !3485
  br i1 %17, label %27, label %18, !dbg !3486

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %3, metadata !3460, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %2, metadata !3459, metadata !DIExpression()), !dbg !3475
  %19 = sext i32 %16 to i64, !dbg !3488
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !3488
  %21 = load i64, i64* %20, align 8, !dbg !3488, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !3490
  br i1 %22, label %62, label %23, !dbg !3491

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %51, !dbg !3491

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !3466, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 0, metadata !3467, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 undef, metadata !3461, metadata !DIExpression()), !dbg !3492
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !3494
  %29 = load i64, i64* %28, align 8, !dbg !3494, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !3496
  br i1 %30, label %62, label %31, !dbg !3497

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !3498
  %33 = load i64, i64* %32, align 8, !dbg !3498, !tbaa !636
  %34 = add i64 %33, %3, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %34, metadata !3466, metadata !DIExpression()), !dbg !3492
  %35 = inttoptr i64 %34 to i8*, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %35, metadata !3466, metadata !DIExpression()), !dbg !3492
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !3501
  %37 = load i64, i64* %36, align 8, !dbg !3501, !tbaa !630
  %38 = add i64 %37, %2, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %38, metadata !3461, metadata !DIExpression()), !dbg !3492
  %39 = inttoptr i64 %38 to i32*, !dbg !3503
  call void @llvm.dbg.value(metadata i32* %39, metadata !3461, metadata !DIExpression()), !dbg !3492
  br label %40, !dbg !3497

40:                                               ; preds = %31, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %31 ]
  %42 = phi i8* [ %47, %40 ], [ %35, %31 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %31 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3467, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %42, metadata !3466, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32* %43, metadata !3461, metadata !DIExpression()), !dbg !3492
  %44 = getelementptr inbounds i32, i32* %43, i64 1, !dbg !3504
  call void @llvm.dbg.value(metadata i32* %44, metadata !3461, metadata !DIExpression()), !dbg !3492
  %45 = load i32, i32* %43, align 4, !dbg !3506, !tbaa !2103
  %46 = trunc i32 %45 to i8, !dbg !3506
  %47 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %47, metadata !3466, metadata !DIExpression()), !dbg !3492
  store i8 %46, i8* %42, align 1, !dbg !3508, !tbaa !713
  %48 = add nuw i64 %41, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %48, metadata !3467, metadata !DIExpression()), !dbg !3493
  %49 = load i64, i64* %28, align 8, !dbg !3494, !tbaa !640
  %50 = icmp ult i64 %48, %49, !dbg !3496
  br i1 %50, label %40, label %62, !dbg !3497, !llvm.loop !3510

51:                                               ; preds = %23, %51
  %52 = phi i64 [ 0, %23 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %23 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %23 ], [ %56, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %53, metadata !3460, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %54, metadata !3459, metadata !DIExpression()), !dbg !3475
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %54, i64 %53) #9, !dbg !3512
  %55 = load i64, i64* %25, align 8, !dbg !3514, !tbaa !611
  %56 = add i64 %55, %54, !dbg !3515
  call void @llvm.dbg.value(metadata i64 %56, metadata !3459, metadata !DIExpression()), !dbg !3475
  %57 = load i64, i64* %26, align 8, !dbg !3516, !tbaa !611
  %58 = add i64 %57, %53, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %58, metadata !3460, metadata !DIExpression()), !dbg !3475
  %59 = add nuw i64 %52, 1, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %59, metadata !3469, metadata !DIExpression()), !dbg !3487
  %60 = load i64, i64* %20, align 8, !dbg !3488, !tbaa !611
  %61 = icmp ult i64 %59, %60, !dbg !3490
  br i1 %61, label %51, label %62, !dbg !3491, !llvm.loop !3519

62:                                               ; preds = %51, %40, %18, %27
  ret void, !dbg !3521
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3522 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3524, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %1, metadata !3525, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %2, metadata !3526, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %3, metadata !3527, metadata !DIExpression()), !dbg !3539
  %5 = icmp sgt i32 %1, -1, !dbg !3540
  br i1 %5, label %6, label %15, !dbg !3541

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3525, metadata !DIExpression()), !dbg !3539
  %8 = zext i32 %7 to i64, !dbg !3542
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !3542
  %10 = load i64, i64* %9, align 8, !dbg !3542, !tbaa !611
  %11 = icmp eq i64 %10, 1, !dbg !3543
  br i1 %11, label %12, label %15, !dbg !3544

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %13, metadata !3525, metadata !DIExpression()), !dbg !3539
  %14 = icmp sgt i32 %7, 0, !dbg !3540
  br i1 %14, label %6, label %27, !dbg !3541, !llvm.loop !3547

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !3549
  br i1 %17, label %27, label %18, !dbg !3550

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !3534, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %3, metadata !3527, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %2, metadata !3526, metadata !DIExpression()), !dbg !3539
  %19 = sext i32 %16 to i64, !dbg !3552
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !3552
  %21 = load i64, i64* %20, align 8, !dbg !3552, !tbaa !611
  %22 = icmp eq i64 %21, 0, !dbg !3554
  br i1 %22, label %61, label %23, !dbg !3555

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %50, !dbg !3555

27:                                               ; preds = %12, %15
  call void @llvm.dbg.value(metadata i64 undef, metadata !3531, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 0, metadata !3532, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 undef, metadata !3528, metadata !DIExpression()), !dbg !3556
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !3558
  %29 = load i64, i64* %28, align 8, !dbg !3558, !tbaa !640
  %30 = icmp eq i64 %29, 0, !dbg !3560
  br i1 %30, label %61, label %31, !dbg !3561

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !3562
  %33 = load i64, i64* %32, align 8, !dbg !3562, !tbaa !636
  %34 = add i64 %33, %3, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %34, metadata !3531, metadata !DIExpression()), !dbg !3556
  %35 = inttoptr i64 %34 to i16*, !dbg !3564
  call void @llvm.dbg.value(metadata i16* %35, metadata !3531, metadata !DIExpression()), !dbg !3556
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !3565
  %37 = load i64, i64* %36, align 8, !dbg !3565, !tbaa !630
  %38 = add i64 %37, %2, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %38, metadata !3528, metadata !DIExpression()), !dbg !3556
  %39 = inttoptr i64 %38 to i32*, !dbg !3567
  call void @llvm.dbg.value(metadata i32* %39, metadata !3528, metadata !DIExpression()), !dbg !3556
  br label %40, !dbg !3561

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %48, %40 ]
  %42 = phi i16* [ %35, %31 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %31 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3532, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i16* %42, metadata !3531, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32* %43, metadata !3528, metadata !DIExpression()), !dbg !3556
  %44 = getelementptr inbounds i32, i32* %43, i64 1, !dbg !3568
  call void @llvm.dbg.value(metadata i32* %44, metadata !3528, metadata !DIExpression()), !dbg !3556
  %45 = load i32, i32* %43, align 4, !dbg !3570, !tbaa !2103
  %46 = trunc i32 %45 to i16, !dbg !3570
  %47 = getelementptr inbounds i16, i16* %42, i64 1, !dbg !3571
  call void @llvm.dbg.value(metadata i16* %47, metadata !3531, metadata !DIExpression()), !dbg !3556
  store i16 %46, i16* %42, align 2, !dbg !3572, !tbaa !2495
  %48 = add nuw i64 %41, 1, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %48, metadata !3532, metadata !DIExpression()), !dbg !3557
  %49 = icmp eq i64 %48, %29, !dbg !3560
  br i1 %49, label %61, label %40, !dbg !3561, !llvm.loop !3574

50:                                               ; preds = %23, %50
  %51 = phi i64 [ 0, %23 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %23 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %23 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !3534, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %52, metadata !3527, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %53, metadata !3526, metadata !DIExpression()), !dbg !3539
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %53, i64 %52) #9, !dbg !3576
  %54 = load i64, i64* %25, align 8, !dbg !3578, !tbaa !611
  %55 = add i64 %54, %53, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %55, metadata !3526, metadata !DIExpression()), !dbg !3539
  %56 = load i64, i64* %26, align 8, !dbg !3580, !tbaa !611
  %57 = add i64 %56, %52, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %57, metadata !3527, metadata !DIExpression()), !dbg !3539
  %58 = add nuw i64 %51, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %58, metadata !3534, metadata !DIExpression()), !dbg !3551
  %59 = load i64, i64* %20, align 8, !dbg !3552, !tbaa !611
  %60 = icmp ult i64 %58, %59, !dbg !3554
  br i1 %60, label %50, label %61, !dbg !3555, !llvm.loop !3583

61:                                               ; preds = %50, %40, %18, %27
  ret void, !dbg !3585
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.halide_type_t* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 !dbg !3586 {
  %18 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3591, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !3592, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %2, metadata !3593, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %3, metadata !3594, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %4, metadata !3595, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %5, metadata !3596, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %6, metadata !3597, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %7, metadata !3598, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %8, metadata !3599, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %9, metadata !3600, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %10, metadata !3601, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8** %11, metadata !3602, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %12, metadata !3603, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %13, metadata !3604, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata float* %14, metadata !3605, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %15, metadata !3606, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %16, metadata !3607, metadata !DIExpression()), !dbg !3628
  %19 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %19, metadata !3608, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !3630
  %20 = tail call i8* @malloc(i64 1024) #8, !dbg !3632
  %21 = icmp eq i8* %20, null, !dbg !3633
  br i1 %21, label %24, label %22, !dbg !3634

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %20, i64 1023, !dbg !3635
  store i8 0, i8* %23, align 1, !dbg !3636, !tbaa !713
  br label %24, !dbg !3637

24:                                               ; preds = %17, %22
  %25 = phi i8* [ %23, %22 ], [ null, %17 ], !dbg !3638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.104, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3639
  %26 = tail call i8* @halide_string_to_string(i8* %20, i8* %25, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1168, metadata !DIExpression()) #10, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()) #10, !dbg !3642
  %27 = tail call i8* @halide_pointer_to_string(i8* %26, i8* %25, i8* %0) #8, !dbg !3644
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3645
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3647
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3648
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %25, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !3650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %2, metadata !694, metadata !DIExpression()) #10, !dbg !3651
  %30 = icmp eq i8* %2, null, !dbg !3653
  br i1 %30, label %31, label %33, !dbg !3654

31:                                               ; preds = %24
  %32 = tail call i8* @halide_string_to_string(i8* %29, i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !3655
  br label %35, !dbg !3657

33:                                               ; preds = %24
  %34 = tail call i8* @halide_string_to_string(i8* %29, i8* %25, i8* nonnull %2) #8, !dbg !3658
  br label %35

35:                                               ; preds = %31, %33
  %36 = phi i8* [ %34, %33 ], [ %32, %31 ], !dbg !3659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3660
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3663
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %25, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !3665
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %3, metadata !1186, metadata !DIExpression()) #10, !dbg !3666
  %39 = sext i32 %3 to i64, !dbg !3668
  %40 = tail call i8* @halide_int64_to_string(i8* %38, i8* %25, i64 %39, i32 1) #8, !dbg !3669
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3670
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !3672
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %4, metadata !1186, metadata !DIExpression()) #10, !dbg !3673
  %42 = sext i32 %4 to i64, !dbg !3675
  %43 = tail call i8* @halide_int64_to_string(i8* %41, i8* %25, i64 %42, i32 1) #8, !dbg !3676
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3677
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !3679
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %5, metadata !1186, metadata !DIExpression()) #10, !dbg !3680
  %45 = sext i32 %5 to i64, !dbg !3682
  %46 = tail call i8* @halide_int64_to_string(i8* %44, i8* %25, i64 %45, i32 1) #8, !dbg !3683
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3684
  %47 = tail call i8* @halide_string_to_string(i8* %46, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3687
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3687
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %25, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i64 0, i64 0)) #8, !dbg !3689
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %6, metadata !1186, metadata !DIExpression()) #10, !dbg !3690
  %49 = sext i32 %6 to i64, !dbg !3692
  %50 = tail call i8* @halide_int64_to_string(i8* %48, i8* %25, i64 %49, i32 1) #8, !dbg !3693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3694
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !3696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %7, metadata !1186, metadata !DIExpression()) #10, !dbg !3697
  %52 = sext i32 %7 to i64, !dbg !3699
  %53 = tail call i8* @halide_int64_to_string(i8* %51, i8* %25, i64 %52, i32 1) #8, !dbg !3700
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3701
  %54 = tail call i8* @halide_string_to_string(i8* %53, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !3703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %8, metadata !1186, metadata !DIExpression()) #10, !dbg !3704
  %55 = sext i32 %8 to i64, !dbg !3706
  %56 = tail call i8* @halide_int64_to_string(i8* %54, i8* %25, i64 %55, i32 1) #8, !dbg !3707
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3708
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3710
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3711
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %25, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0)) #8, !dbg !3713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3714
  call void @llvm.dbg.value(metadata i32 %9, metadata !1186, metadata !DIExpression()) #10, !dbg !3714
  %59 = sext i32 %9 to i64, !dbg !3716
  %60 = tail call i8* @halide_int64_to_string(i8* %58, i8* %25, i64 %59, i32 1) #8, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3718
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3721
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %25, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i64 0, i64 0)) #8, !dbg !3723
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %13, metadata !1186, metadata !DIExpression()) #10, !dbg !3724
  %63 = sext i32 %13 to i64, !dbg !3726
  %64 = tail call i8* @halide_int64_to_string(i8* %62, i8* %25, i64 %63, i32 1) #8, !dbg !3727
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3728
  %65 = tail call i8* @halide_string_to_string(i8* %64, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3731
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %25, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i64 0, i64 0)) #8, !dbg !3733
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %15, metadata !1186, metadata !DIExpression()) #10, !dbg !3734
  %67 = sext i32 %15 to i64, !dbg !3736
  %68 = tail call i8* @halide_int64_to_string(i8* %66, i8* %25, i64 %67, i32 1) #8, !dbg !3737
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3738
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3741
  %70 = tail call i8* @halide_string_to_string(i8* %69, i8* %25, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i64 0, i64 0)) #8, !dbg !3743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %16, metadata !1186, metadata !DIExpression()) #10, !dbg !3744
  %71 = sext i32 %16 to i64, !dbg !3746
  %72 = tail call i8* @halide_int64_to_string(i8* %70, i8* %25, i64 %71, i32 1) #8, !dbg !3747
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3748
  %73 = tail call i8* @halide_string_to_string(i8* %72, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !3750
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !3751
  br i1 %21, label %74, label %75, !dbg !3753

74:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3754
  br label %81, !dbg !3755

75:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !3756
  %76 = ptrtoint i8* %73 to i64, !dbg !3758
  %77 = ptrtoint i8* %20 to i64, !dbg !3758
  %78 = add i64 %76, 1, !dbg !3758
  %79 = sub i64 %78, %77, !dbg !3759
  %80 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %79) #8, !dbg !3760
  tail call void @halide_print(i8* %0, i8* nonnull %20) #8, !dbg !3761
  br label %81

81:                                               ; preds = %75, %74
  call void @free(i8* %20) #8, !dbg !3762
  %82 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !3763, !tbaa !1383, !range !1372
  %83 = icmp eq i8 %82, 0, !dbg !3763
  br i1 %83, label %84, label %98, !dbg !3765

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3766
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3766
  %85 = call i8* @malloc(i64 1024) #8, !dbg !3769
  %86 = icmp eq i8* %85, null, !dbg !3770
  br i1 %86, label %87, label %89, !dbg !3771

87:                                               ; preds = %84
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3772
  %88 = call i8* @halide_string_to_string(i8* %85, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !3774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3775
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3777
  br label %97, !dbg !3778

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, i8* %85, i64 1023, !dbg !3779
  store i8 0, i8* %90, align 1, !dbg !3780, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3772
  %91 = call i8* @halide_string_to_string(i8* nonnull %85, i8* nonnull %90, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !3774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3775
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3781
  %92 = ptrtoint i8* %91 to i64, !dbg !3783
  %93 = ptrtoint i8* %85 to i64, !dbg !3783
  %94 = add i64 %92, 1, !dbg !3783
  %95 = sub i64 %94, %93, !dbg !3784
  %96 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %85, i64 %95) #8, !dbg !3785
  call void @halide_error(i8* %0, i8* nonnull %85) #8, !dbg !3786
  br label %97

97:                                               ; preds = %89, %87
  call void @free(i8* %85) #8, !dbg !3787
  br label %383, !dbg !3788

98:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8* %1, metadata !3609, metadata !DIExpression()), !dbg !3628
  %99 = icmp eq i8* %1, null, !dbg !3789
  br i1 %99, label %100, label %114, !dbg !3791

100:                                              ; preds = %98
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3792
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3792
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3792
  %101 = call i8* @malloc(i64 1024) #8, !dbg !3795
  %102 = icmp eq i8* %101, null, !dbg !3796
  br i1 %102, label %103, label %105, !dbg !3797

103:                                              ; preds = %100
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3798
  %104 = call i8* @halide_string_to_string(i8* %101, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i64 0, i64 0)) #8, !dbg !3800
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3801
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3803
  br label %113, !dbg !3804

105:                                              ; preds = %100
  %106 = getelementptr inbounds i8, i8* %101, i64 1023, !dbg !3805
  store i8 0, i8* %106, align 1, !dbg !3806, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3798
  %107 = call i8* @halide_string_to_string(i8* nonnull %101, i8* nonnull %106, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i64 0, i64 0)) #8, !dbg !3800
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3807
  %108 = ptrtoint i8* %107 to i64, !dbg !3809
  %109 = ptrtoint i8* %101 to i64, !dbg !3809
  %110 = add i64 %108, 1, !dbg !3809
  %111 = sub i64 %110, %109, !dbg !3810
  %112 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %101, i64 %111) #8, !dbg !3811
  call void @halide_error(i8* %0, i8* nonnull %101) #8, !dbg !3812
  br label %113

113:                                              ; preds = %105, %103
  call void @free(i8* %101) #8, !dbg !3813
  br label %383, !dbg !3814

114:                                              ; preds = %98
  %115 = bitcast i8* %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, !dbg !3815
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %115, metadata !3609, metadata !DIExpression()), !dbg !3628
  %116 = call %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %2, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* nonnull %115) #9, !dbg !3816
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %116, metadata !3610, metadata !DIExpression()), !dbg !3628
  %117 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %116, null, !dbg !3817
  br i1 %117, label %118, label %141, !dbg !3819

118:                                              ; preds = %114
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3820
  %119 = call i8* @malloc(i64 1024) #8, !dbg !3823
  %120 = icmp eq i8* %119, null, !dbg !3824
  br i1 %120, label %123, label %121, !dbg !3825

121:                                              ; preds = %118
  %122 = getelementptr inbounds i8, i8* %119, i64 1023, !dbg !3826
  store i8 0, i8* %122, align 1, !dbg !3827, !tbaa !713
  br label %123, !dbg !3828

123:                                              ; preds = %118, %121
  %124 = phi i8* [ %122, %121 ], [ null, %118 ], !dbg !3829
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3830
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3830
  %125 = call i8* @halide_string_to_string(i8* %119, i8* %124, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i64 0, i64 0)) #8, !dbg !3832
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #10, !dbg !3833
  br i1 %30, label %126, label %128, !dbg !3835

126:                                              ; preds = %123
  %127 = call i8* @halide_string_to_string(i8* %125, i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !3836
  br label %130, !dbg !3837

128:                                              ; preds = %123
  %129 = call i8* @halide_string_to_string(i8* %125, i8* %124, i8* nonnull %2) #8, !dbg !3838
  br label %130

130:                                              ; preds = %126, %128
  %131 = phi i8* [ %129, %128 ], [ %127, %126 ], !dbg !3839
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3840
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3840
  %132 = call i8* @halide_string_to_string(i8* %131, i8* %124, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #8, !dbg !3842
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3843
  br i1 %120, label %133, label %134, !dbg !3845

133:                                              ; preds = %130
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3846
  br label %140, !dbg !3847

134:                                              ; preds = %130
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3848
  %135 = ptrtoint i8* %132 to i64, !dbg !3850
  %136 = ptrtoint i8* %119 to i64, !dbg !3850
  %137 = add i64 %135, 1, !dbg !3850
  %138 = sub i64 %137, %136, !dbg !3851
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %119, i64 %138) #8, !dbg !3852
  call void @halide_error(i8* %0, i8* nonnull %119) #8, !dbg !3853
  br label %140

140:                                              ; preds = %134, %133
  call void @free(i8* %119) #8, !dbg !3854
  br label %383, !dbg !3855

141:                                              ; preds = %114
  %142 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 28), align 8, !dbg !3856, !tbaa !1411
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %116, i64 0, i32 1, !dbg !3857
  %144 = load i32, i32* %143, align 8, !dbg !3857, !tbaa !1657
  call void %142(i32 %144) #8, !dbg !3858
  %145 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.117, i64 0, i64 0)) #9, !dbg !3859
  br i1 %145, label %383, label %146, !dbg !3861

146:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i32 0, metadata !3611, metadata !DIExpression()), !dbg !3628
  %147 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 0, i32 1, !dbg !3862
  %148 = load i8, i8* %147, align 1, !dbg !3862, !tbaa !793
  %149 = icmp eq i8 %148, 0, !dbg !3863
  br i1 %149, label %355, label %150, !dbg !3864

150:                                              ; preds = %146
  %151 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18 to i8*
  %152 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 3
  %153 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 4
  %154 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 0
  %155 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 1
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 2
  %157 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i64 0, i32 5, i64 0
  br label %158, !dbg !3864

158:                                              ; preds = %150, %349
  %159 = phi i64 [ 0, %150 ], [ %350, %349 ]
  %160 = phi i8* [ %147, %150 ], [ %352, %349 ]
  %161 = phi %struct.halide_type_t* [ %10, %150 ], [ %351, %349 ]
  call void @llvm.dbg.value(metadata i64 %159, metadata !3611, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %151) #10, !dbg !3865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !674, metadata !DIExpression()) #10, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !3866
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !3866
  store i8* %0, i8** %152, align 8, !dbg !3868, !tbaa !1117
  store i8 1, i8* %153, align 8, !dbg !3869, !tbaa !1120
  %162 = call i8* @malloc(i64 1024) #8, !dbg !3870
  store i8* %162, i8** %154, align 8, !dbg !3871, !tbaa !1124
  store i8* %162, i8** %155, align 8, !dbg !3872, !tbaa !1357
  %163 = icmp eq i8* %162, null, !dbg !3873
  br i1 %163, label %166, label %164, !dbg !3874

164:                                              ; preds = %158
  %165 = getelementptr inbounds i8, i8* %162, i64 1023, !dbg !3875
  store i8* %165, i8** %156, align 8, !dbg !3876, !tbaa !1277
  store i8 0, i8* %165, align 1, !dbg !3877, !tbaa !713
  br label %167, !dbg !3878

166:                                              ; preds = %158
  store i8* null, i8** %156, align 8, !dbg !3879, !tbaa !1277
  br label %167

167:                                              ; preds = %164, %166
  %168 = phi i8* [ %165, %164 ], [ null, %166 ], !dbg !3880
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !691, metadata !DIExpression()) #10, !dbg !3882
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3882
  %169 = call i8* @halide_string_to_string(i8* %162, i8* %168, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0)) #8, !dbg !3883
  store i8* %169, i8** %155, align 8, !dbg !3884, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1183, metadata !DIExpression()) #10, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %159, metadata !1186, metadata !DIExpression()) #10, !dbg !3885
  %170 = load i8*, i8** %156, align 8, !dbg !3887, !tbaa !1277
  %171 = call i8* @halide_int64_to_string(i8* %169, i8* %170, i64 %159, i32 1) #8, !dbg !3888
  store i8* %171, i8** %155, align 8, !dbg !3889, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !691, metadata !DIExpression()) #10, !dbg !3890
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3890
  %172 = load i8*, i8** %156, align 8, !dbg !3892, !tbaa !1277
  %173 = call i8* @halide_string_to_string(i8* %171, i8* %172, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !3893
  store i8* %173, i8** %155, align 8, !dbg !3894, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1305, metadata !DIExpression()) #10, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %161, metadata !1308, metadata !DIExpression()) #10, !dbg !3895
  %174 = load i8*, i8** %156, align 8, !dbg !3897, !tbaa !1277
  %175 = call i8* @halide_type_to_string(i8* %173, i8* %174, %struct.halide_type_t* nonnull %161) #8, !dbg !3898
  store i8* %175, i8** %155, align 8, !dbg !3899, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !691, metadata !DIExpression()) #10, !dbg !3900
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3900
  %176 = load i8*, i8** %156, align 8, !dbg !3902, !tbaa !1277
  %177 = call i8* @halide_string_to_string(i8* %175, i8* %176, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0)) #8, !dbg !3903
  store i8* %177, i8** %155, align 8, !dbg !3904, !tbaa !1357
  %178 = getelementptr inbounds i8*, i8** %11, i64 %159, !dbg !3905
  %179 = bitcast i8** %178 to i8***, !dbg !3905
  %180 = load i8**, i8*** %179, align 8, !dbg !3905, !tbaa !977
  %181 = load i8*, i8** %180, align 8, !dbg !3906, !tbaa !977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1168, metadata !DIExpression()) #10, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %181, metadata !1171, metadata !DIExpression()) #10, !dbg !3907
  %182 = load i8*, i8** %156, align 8, !dbg !3909, !tbaa !1277
  %183 = call i8* @halide_pointer_to_string(i8* %177, i8* %182, i8* %181) #8, !dbg !3910
  store i8* %183, i8** %155, align 8, !dbg !3911, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !691, metadata !DIExpression()) #10, !dbg !3912
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3912
  %184 = load i8*, i8** %156, align 8, !dbg !3914, !tbaa !1277
  %185 = call i8* @halide_string_to_string(i8* %183, i8* %184, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i64 0, i64 0)) #8, !dbg !3915
  store i8* %185, i8** %155, align 8, !dbg !3916, !tbaa !1357
  %186 = getelementptr inbounds i8, i8* %12, i64 %159, !dbg !3917
  %187 = load i8, i8* %186, align 1, !dbg !3917, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1183, metadata !DIExpression()) #10, !dbg !3918
  call void @llvm.dbg.value(metadata i8 %187, metadata !1186, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #10, !dbg !3918
  %188 = load i8*, i8** %156, align 8, !dbg !3920, !tbaa !1277
  %189 = sext i8 %187 to i64, !dbg !3921
  %190 = call i8* @halide_int64_to_string(i8* %185, i8* %188, i64 %189, i32 1) #8, !dbg !3922
  store i8* %190, i8** %155, align 8, !dbg !3923, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !691, metadata !DIExpression()) #10, !dbg !3924
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !3924
  %191 = load i8*, i8** %156, align 8, !dbg !3926, !tbaa !1277
  %192 = call i8* @halide_string_to_string(i8* %190, i8* %191, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !3927
  store i8* %192, i8** %155, align 8, !dbg !3928, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !700, metadata !DIExpression()) #10, !dbg !3929
  %193 = load i8*, i8** %154, align 8, !dbg !3931, !tbaa !1124
  %194 = icmp eq i8* %193, null, !dbg !3931
  %195 = load i8*, i8** %152, align 8, !dbg !3932, !tbaa !1117
  br i1 %194, label %196, label %197, !dbg !3933

196:                                              ; preds = %167
  call void @halide_error(i8* %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3934
  br label %205, !dbg !3935

197:                                              ; preds = %167
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !3936
  %198 = ptrtoint i8* %192 to i64, !dbg !3938
  %199 = ptrtoint i8* %193 to i64, !dbg !3938
  %200 = add i64 %198, 1, !dbg !3938
  %201 = sub i64 %200, %199, !dbg !3939
  %202 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %195, i8* nonnull %193, i64 %201) #8, !dbg !3940
  %203 = load i8*, i8** %152, align 8, !dbg !3941, !tbaa !1117
  %204 = load i8*, i8** %154, align 8, !dbg !3942, !tbaa !1124
  call void @halide_print(i8* %203, i8* %204) #8, !dbg !3943
  br label %205

205:                                              ; preds = %197, %196
  %206 = load i8, i8* %153, align 8, !dbg !3944, !tbaa !1120, !range !1372
  %207 = icmp eq i8 %206, 0, !dbg !3944
  %208 = load i8*, i8** %154, align 8
  %209 = icmp eq i8* %208, %157
  %210 = or i1 %207, %209, !dbg !3945
  br i1 %210, label %212, label %211, !dbg !3945

211:                                              ; preds = %205
  call void @free(i8* %208) #8, !dbg !3946
  br label %212, !dbg !3947

212:                                              ; preds = %205, %211
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %151) #10, !dbg !3865
  %213 = load i8, i8* %186, align 1, !dbg !3948, !tbaa !713
  %214 = icmp eq i8 %213, 0, !dbg !3949
  br i1 %214, label %215, label %340, !dbg !3950

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %161, i64 0, i32 0, !dbg !3951
  %217 = load i8, i8* %216, align 2, !dbg !3951, !tbaa !3952
  switch i8 %217, label %322 [
    i8 0, label %218
    i8 1, label %256
    i8 2, label %294
  ], !dbg !3953

218:                                              ; preds = %215
  %219 = load i8, i8* %160, align 1, !dbg !3954, !tbaa !793
  switch i8 %219, label %233 [
    i8 8, label %220
    i8 16, label %224
    i8 32, label %229
  ], !dbg !3956

220:                                              ; preds = %218
  %221 = load i8*, i8** %178, align 8, !dbg !3957, !tbaa !977
  %222 = load i8, i8* %221, align 1, !dbg !3959, !tbaa !713
  %223 = sext i8 %222 to i32, !dbg !3959
  call void @llvm.dbg.value(metadata i32 %223, metadata !3612, metadata !DIExpression()), !dbg !3960
  br label %251, !dbg !3961

224:                                              ; preds = %218
  %225 = bitcast i8** %178 to i16**, !dbg !3962
  %226 = load i16*, i16** %225, align 8, !dbg !3962, !tbaa !977
  %227 = load i16, i16* %226, align 2, !dbg !3965, !tbaa !2495
  %228 = sext i16 %227 to i32, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %228, metadata !3612, metadata !DIExpression()), !dbg !3960
  br label %251, !dbg !3966

229:                                              ; preds = %218
  %230 = bitcast i8** %178 to i32**, !dbg !3967
  %231 = load i32*, i32** %230, align 8, !dbg !3967, !tbaa !977
  %232 = load i32, i32* %231, align 4, !dbg !3970, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %232, metadata !3612, metadata !DIExpression()), !dbg !3960
  br label %251

233:                                              ; preds = %218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3971
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3971
  %234 = call i8* @malloc(i64 1024) #8, !dbg !3974
  %235 = icmp eq i8* %234, null, !dbg !3975
  br i1 %235, label %238, label %236, !dbg !3976

236:                                              ; preds = %233
  %237 = getelementptr inbounds i8, i8* %234, i64 1023, !dbg !3977
  store i8 0, i8* %237, align 1, !dbg !3978, !tbaa !713
  br label %238, !dbg !3979

238:                                              ; preds = %233, %236
  %239 = phi i8* [ %237, %236 ], [ null, %233 ], !dbg !3980
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3981
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3981
  %240 = call i8* @halide_string_to_string(i8* %234, i8* %239, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !3983
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3984, metadata !DIExpression()) #10, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %161, metadata !3987, metadata !DIExpression()) #10, !dbg !3988
  %241 = call i8* @halide_type_to_string(i8* %240, i8* %239, %struct.halide_type_t* nonnull %161) #8, !dbg !3990
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3991
  %242 = call i8* @halide_string_to_string(i8* %241, i8* %239, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0)) #8, !dbg !3993
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3994
  br i1 %235, label %243, label %244, !dbg !3996

243:                                              ; preds = %238
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !3997
  br label %250, !dbg !3998

244:                                              ; preds = %238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3999
  %245 = ptrtoint i8* %242 to i64, !dbg !4001
  %246 = ptrtoint i8* %234 to i64, !dbg !4001
  %247 = add i64 %245, 1, !dbg !4001
  %248 = sub i64 %247, %246, !dbg !4002
  %249 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %234, i64 %248) #8, !dbg !4003
  call void @halide_error(i8* %0, i8* nonnull %234) #8, !dbg !4004
  br label %250

250:                                              ; preds = %244, %243
  call void @free(i8* %234) #8, !dbg !4005
  br label %383, !dbg !4006

251:                                              ; preds = %224, %229, %220
  %252 = phi i32 [ %223, %220 ], [ %228, %224 ], [ %232, %229 ], !dbg !4007
  call void @llvm.dbg.value(metadata i32 %252, metadata !3612, metadata !DIExpression()), !dbg !3960
  %253 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 24), align 8, !dbg !4008, !tbaa !1407
  %254 = trunc i64 %159 to i32, !dbg !4009
  call void %253(i32 %254, i32 %252) #8, !dbg !4009
  %255 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.123, i64 0, i64 0)) #9, !dbg !4010
  br i1 %255, label %383, label %349, !dbg !4012

256:                                              ; preds = %215
  %257 = load i8, i8* %160, align 1, !dbg !4013, !tbaa !793
  switch i8 %257, label %271 [
    i8 8, label %258
    i8 1, label %258
    i8 16, label %262
    i8 32, label %267
  ], !dbg !4015

258:                                              ; preds = %256, %256
  %259 = load i8*, i8** %178, align 8, !dbg !4016, !tbaa !977
  %260 = load i8, i8* %259, align 1, !dbg !4018, !tbaa !713
  %261 = zext i8 %260 to i32, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %261, metadata !3618, metadata !DIExpression()), !dbg !4019
  br label %289, !dbg !4020

262:                                              ; preds = %256
  %263 = bitcast i8** %178 to i16**, !dbg !4021
  %264 = load i16*, i16** %263, align 8, !dbg !4021, !tbaa !977
  %265 = load i16, i16* %264, align 2, !dbg !4024, !tbaa !2495
  %266 = zext i16 %265 to i32, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %266, metadata !3618, metadata !DIExpression()), !dbg !4019
  br label %289, !dbg !4025

267:                                              ; preds = %256
  %268 = bitcast i8** %178 to i32**, !dbg !4026
  %269 = load i32*, i32** %268, align 8, !dbg !4026, !tbaa !977
  %270 = load i32, i32* %269, align 4, !dbg !4029, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %270, metadata !3618, metadata !DIExpression()), !dbg !4019
  br label %289

271:                                              ; preds = %256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4030
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4030
  %272 = call i8* @malloc(i64 1024) #8, !dbg !4033
  %273 = icmp eq i8* %272, null, !dbg !4034
  br i1 %273, label %276, label %274, !dbg !4035

274:                                              ; preds = %271
  %275 = getelementptr inbounds i8, i8* %272, i64 1023, !dbg !4036
  store i8 0, i8* %275, align 1, !dbg !4037, !tbaa !713
  br label %276, !dbg !4038

276:                                              ; preds = %271, %274
  %277 = phi i8* [ %275, %274 ], [ null, %271 ], !dbg !4039
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4040
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4040
  %278 = call i8* @halide_string_to_string(i8* %272, i8* %277, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4042
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3984, metadata !DIExpression()) #10, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %161, metadata !3987, metadata !DIExpression()) #10, !dbg !4043
  %279 = call i8* @halide_type_to_string(i8* %278, i8* %277, %struct.halide_type_t* nonnull %161) #8, !dbg !4045
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4046
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4046
  %280 = call i8* @halide_string_to_string(i8* %279, i8* %277, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0)) #8, !dbg !4048
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4049
  br i1 %273, label %281, label %282, !dbg !4051

281:                                              ; preds = %276
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4052
  br label %288, !dbg !4053

282:                                              ; preds = %276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4054
  %283 = ptrtoint i8* %280 to i64, !dbg !4056
  %284 = ptrtoint i8* %272 to i64, !dbg !4056
  %285 = add i64 %283, 1, !dbg !4056
  %286 = sub i64 %285, %284, !dbg !4057
  %287 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %272, i64 %286) #8, !dbg !4058
  call void @halide_error(i8* %0, i8* nonnull %272) #8, !dbg !4059
  br label %288

288:                                              ; preds = %282, %281
  call void @free(i8* %272) #8, !dbg !4060
  br label %383, !dbg !4061

289:                                              ; preds = %262, %267, %258
  %290 = phi i32 [ %261, %258 ], [ %266, %262 ], [ %270, %267 ], !dbg !4062
  call void @llvm.dbg.value(metadata i32 %290, metadata !3618, metadata !DIExpression()), !dbg !4019
  %291 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 25), align 8, !dbg !4063, !tbaa !1408
  %292 = trunc i64 %159 to i32, !dbg !4064
  call void %291(i32 %292, i32 %290) #8, !dbg !4064
  %293 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.124, i64 0, i64 0)) #9, !dbg !4065
  br i1 %293, label %383, label %349, !dbg !4067

294:                                              ; preds = %215
  %295 = load i8, i8* %160, align 1, !dbg !4068, !tbaa !793
  %296 = icmp eq i8 %295, 32, !dbg !4070
  br i1 %296, label %297, label %304, !dbg !4071

297:                                              ; preds = %294
  %298 = bitcast i8** %178 to float**, !dbg !4072
  %299 = load float*, float** %298, align 8, !dbg !4072, !tbaa !977
  %300 = load float, float* %299, align 4, !dbg !4074, !tbaa !4075
  call void @llvm.dbg.value(metadata float %300, metadata !3621, metadata !DIExpression()), !dbg !4077
  %301 = load void (i32, float)*, void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 26), align 8, !dbg !4078, !tbaa !1409
  %302 = trunc i64 %159 to i32, !dbg !4079
  call void %301(i32 %302, float %300) #8, !dbg !4079
  %303 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i64 0, i64 0)) #9, !dbg !4080
  br i1 %303, label %383, label %349, !dbg !4082

304:                                              ; preds = %294
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4083
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4083
  %305 = call i8* @malloc(i64 1024) #8, !dbg !4086
  %306 = icmp eq i8* %305, null, !dbg !4087
  br i1 %306, label %309, label %307, !dbg !4088

307:                                              ; preds = %304
  %308 = getelementptr inbounds i8, i8* %305, i64 1023, !dbg !4089
  store i8 0, i8* %308, align 1, !dbg !4090, !tbaa !713
  br label %309, !dbg !4091

309:                                              ; preds = %304, %307
  %310 = phi i8* [ %308, %307 ], [ null, %304 ], !dbg !4092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4093
  %311 = call i8* @halide_string_to_string(i8* %305, i8* %310, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3984, metadata !DIExpression()) #10, !dbg !4096
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %161, metadata !3987, metadata !DIExpression()) #10, !dbg !4096
  %312 = call i8* @halide_type_to_string(i8* %311, i8* %310, %struct.halide_type_t* nonnull %161) #8, !dbg !4098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4099
  %313 = call i8* @halide_string_to_string(i8* %312, i8* %310, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0)) #8, !dbg !4101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4102
  br i1 %306, label %314, label %315, !dbg !4104

314:                                              ; preds = %309
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4105
  br label %321, !dbg !4106

315:                                              ; preds = %309
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4107
  %316 = ptrtoint i8* %313 to i64, !dbg !4109
  %317 = ptrtoint i8* %305 to i64, !dbg !4109
  %318 = add i64 %316, 1, !dbg !4109
  %319 = sub i64 %318, %317, !dbg !4110
  %320 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %305, i64 %319) #8, !dbg !4111
  call void @halide_error(i8* %0, i8* nonnull %305) #8, !dbg !4112
  br label %321

321:                                              ; preds = %315, %314
  call void @free(i8* %305) #8, !dbg !4113
  br label %383, !dbg !4114

322:                                              ; preds = %215
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4115
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4115
  %323 = call i8* @malloc(i64 1024) #8, !dbg !4118
  %324 = icmp eq i8* %323, null, !dbg !4119
  br i1 %324, label %327, label %325, !dbg !4120

325:                                              ; preds = %322
  %326 = getelementptr inbounds i8, i8* %323, i64 1023, !dbg !4121
  store i8 0, i8* %326, align 1, !dbg !4122, !tbaa !713
  br label %327, !dbg !4123

327:                                              ; preds = %322, %325
  %328 = phi i8* [ %326, %325 ], [ null, %322 ], !dbg !4124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4125
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4125
  %329 = call i8* @halide_string_to_string(i8* %323, i8* %328, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3984, metadata !DIExpression()) #10, !dbg !4128
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %161, metadata !3987, metadata !DIExpression()) #10, !dbg !4128
  %330 = call i8* @halide_type_to_string(i8* %329, i8* %328, %struct.halide_type_t* nonnull %161) #8, !dbg !4130
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4131
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4131
  %331 = call i8* @halide_string_to_string(i8* %330, i8* %328, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i64 0, i64 0)) #8, !dbg !4133
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4134
  br i1 %324, label %332, label %333, !dbg !4136

332:                                              ; preds = %327
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4137
  br label %339, !dbg !4138

333:                                              ; preds = %327
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4139
  %334 = ptrtoint i8* %331 to i64, !dbg !4141
  %335 = ptrtoint i8* %323 to i64, !dbg !4141
  %336 = add i64 %334, 1, !dbg !4141
  %337 = sub i64 %336, %335, !dbg !4142
  %338 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %323, i64 %337) #8, !dbg !4143
  call void @halide_error(i8* %0, i8* nonnull %323) #8, !dbg !4144
  br label %339

339:                                              ; preds = %333, %332
  call void @free(i8* %323) #8, !dbg !4145
  br label %383, !dbg !4146

340:                                              ; preds = %212
  %341 = bitcast i8** %178 to %struct.halide_buffer_t**, !dbg !4147
  %342 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %341, align 8, !dbg !4147, !tbaa !977
  %343 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %342, i64 0, i32 0, !dbg !4148
  %344 = load i64, i64* %343, align 8, !dbg !4148, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %344, metadata !3624, metadata !DIExpression()), !dbg !4149
  %345 = trunc i64 %344 to i32, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %345, metadata !3626, metadata !DIExpression()), !dbg !4149
  %346 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 3), align 8, !dbg !4151, !tbaa !1387
  %347 = trunc i64 %159 to i32, !dbg !4152
  call void %346(i32 37074, i32 %347, i32 %345) #8, !dbg !4152
  %348 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i64 0, i64 0)) #9, !dbg !4153
  br i1 %348, label %383, label %349

349:                                              ; preds = %297, %289, %251, %340
  %350 = add nuw i64 %159, 1, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %350, metadata !3611, metadata !DIExpression()), !dbg !3628
  %351 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %350, !dbg !4156
  %352 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %350, i32 1, !dbg !3862
  %353 = load i8, i8* %352, align 1, !dbg !3862, !tbaa !793
  %354 = icmp eq i8 %353, 0, !dbg !3863
  br i1 %354, label %355, label %158, !dbg !3864, !llvm.loop !4157

355:                                              ; preds = %349, %146
  %356 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 11), align 8, !dbg !4159, !tbaa !1395
  call void %356(i32 %3, i32 %4, i32 %5) #8, !dbg !4160
  %357 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.127, i64 0, i64 0)) #9, !dbg !4161
  br i1 %357, label %383, label %358, !dbg !4163

358:                                              ; preds = %355
  %359 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 22), align 8, !dbg !4164, !tbaa !1405
  call void %359(i32 1) #8, !dbg !4165
  %360 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.128, i64 0, i64 0)) #9, !dbg !4166
  br i1 %360, label %383, label %361, !dbg !4168

361:                                              ; preds = %358
  %362 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %362, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4170
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4170
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4170
  %363 = call i8* @malloc(i64 1024) #8, !dbg !4172
  %364 = icmp eq i8* %363, null, !dbg !4173
  br i1 %364, label %367, label %365, !dbg !4174

365:                                              ; preds = %361
  %366 = getelementptr inbounds i8, i8* %363, i64 1023, !dbg !4175
  store i8 0, i8* %366, align 1, !dbg !4176, !tbaa !713
  br label %367, !dbg !4177

367:                                              ; preds = %361, %365
  %368 = phi i8* [ %366, %365 ], [ null, %361 ], !dbg !4178
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4179
  %369 = call i8* @halide_string_to_string(i8* %363, i8* %368, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !4181
  %370 = sub i64 %362, %19, !dbg !4182
  %371 = uitofp i64 %370 to double, !dbg !4183
  %372 = fdiv double %371, 1.000000e+06, !dbg !4184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !4185
  call void @llvm.dbg.value(metadata double %372, metadata !1693, metadata !DIExpression()) #10, !dbg !4185
  %373 = call i8* @halide_double_to_string(i8* %369, i8* %368, double %372, i32 1) #8, !dbg !4187
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4188
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4188
  %374 = call i8* @halide_string_to_string(i8* %373, i8* %368, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0)) #8, !dbg !4190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4191
  br i1 %364, label %375, label %376, !dbg !4193

375:                                              ; preds = %367
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4194
  br label %382, !dbg !4195

376:                                              ; preds = %367
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4196
  %377 = ptrtoint i8* %374 to i64, !dbg !4198
  %378 = ptrtoint i8* %363 to i64, !dbg !4198
  %379 = add i64 %377, 1, !dbg !4198
  %380 = sub i64 %379, %378, !dbg !4199
  %381 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %363, i64 %380) #8, !dbg !4200
  call void @halide_print(i8* %0, i8* nonnull %363) #8, !dbg !4201
  br label %382

382:                                              ; preds = %376, %375
  call void @free(i8* %363) #8, !dbg !4202
  br label %383

383:                                              ; preds = %340, %251, %289, %297, %113, %339, %382, %250, %288, %321, %355, %358, %141, %140, %97
  %384 = phi i32 [ -1, %97 ], [ -1, %113 ], [ -1, %140 ], [ -1, %141 ], [ -1, %339 ], [ 0, %382 ], [ -1, %250 ], [ -1, %288 ], [ -1, %321 ], [ -1, %355 ], [ -1, %358 ], [ -1, %297 ], [ -1, %289 ], [ -1, %251 ], [ -1, %340 ], !dbg !3628
  ret i32 %384, !dbg !4203
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4206, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4207, metadata !DIExpression()), !dbg !4210
  %3 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %3, metadata !4208, metadata !DIExpression()), !dbg !4210
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 0), align 8, !dbg !4212, !tbaa !1383, !range !1372
  %5 = icmp eq i8 %4, 0, !dbg !4212
  br i1 %5, label %6, label %19, !dbg !4214

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4215
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4215
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4215
  %7 = tail call i8* @malloc(i64 1024) #8, !dbg !4218
  %8 = icmp eq i8* %7, null, !dbg !4219
  br i1 %8, label %9, label %11, !dbg !4220

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4221
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i64 0, i64 0)) #8, !dbg !4223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4224
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4226
  br label %41, !dbg !4227

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !4228
  store i8 0, i8* %12, align 1, !dbg !4229, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4221
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i64 0, i64 0)) #8, !dbg !4223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4224
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4230
  %14 = ptrtoint i8* %13 to i64, !dbg !4232
  %15 = ptrtoint i8* %7 to i64, !dbg !4232
  %16 = add i64 %14, 1, !dbg !4232
  %17 = sub i64 %16, %15, !dbg !4233
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %17) #8, !dbg !4234
  tail call void @halide_error(i8* %0, i8* nonnull %7) #8, !dbg !4235
  br label %41

19:                                               ; preds = %2
  %20 = load void ()*, void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 12), align 8, !dbg !4236, !tbaa !1396
  tail call void %20() #8, !dbg !4237
  %21 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %21, metadata !4209, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4239
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4239
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4239
  %22 = tail call i8* @malloc(i64 1024) #8, !dbg !4241
  %23 = icmp eq i8* %22, null, !dbg !4242
  br i1 %23, label %26, label %24, !dbg !4243

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %22, i64 1023, !dbg !4244
  store i8 0, i8* %25, align 1, !dbg !4245, !tbaa !713
  br label %26, !dbg !4246

26:                                               ; preds = %19, %24
  %27 = phi i8* [ %25, %24 ], [ null, %19 ], !dbg !4247
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4248
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4248
  %28 = tail call i8* @halide_string_to_string(i8* %22, i8* %27, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !4250
  %29 = sub i64 %21, %3, !dbg !4251
  %30 = uitofp i64 %29 to double, !dbg !4252
  %31 = fdiv double %30, 1.000000e+06, !dbg !4253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !4254
  call void @llvm.dbg.value(metadata double %31, metadata !1693, metadata !DIExpression()) #10, !dbg !4254
  %32 = tail call i8* @halide_double_to_string(i8* %28, i8* %27, double %31, i32 1) #8, !dbg !4256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4257
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %27, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i64 0, i64 0)) #8, !dbg !4259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4260
  br i1 %23, label %34, label %35, !dbg !4262

34:                                               ; preds = %26
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4263
  br label %41, !dbg !4264

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4265
  %36 = ptrtoint i8* %33 to i64, !dbg !4267
  %37 = ptrtoint i8* %22 to i64, !dbg !4267
  %38 = add i64 %36, 1, !dbg !4267
  %39 = sub i64 %38, %37, !dbg !4268
  %40 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %39) #8, !dbg !4269
  tail call void @halide_print(i8* %0, i8* nonnull %22) #8, !dbg !4270
  br label %41

41:                                               ; preds = %34, %35, %9, %11
  %42 = phi i8* [ %7, %11 ], [ %7, %9 ], [ %22, %35 ], [ %22, %34 ]
  %43 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 0, %35 ], [ 0, %34 ], !dbg !4210
  tail call void @free(i8* %42) #8, !dbg !4210
  ret i32 %43, !dbg !4271
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @get_kernel_name(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !4272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %1, metadata !4278, metadata !DIExpression()), !dbg !4282
  %3 = ptrtoint i8* %1 to i64, !dbg !4283
  %4 = ptrtoint i8* %0 to i64, !dbg !4283
  %5 = sub i64 %3, %4, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %5, metadata !4279, metadata !DIExpression()), !dbg !4282
  %6 = add i64 %5, 1, !dbg !4284
  %7 = tail call i8* @malloc(i64 %6) #8, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %7, metadata !4281, metadata !DIExpression()), !dbg !4282
  %8 = tail call i8* @memcpy(i8* %7, i8* %0, i64 %5) #8, !dbg !4286
  %9 = getelementptr inbounds i8, i8* %7, i64 %5, !dbg !4287
  store i8 0, i8* %9, align 1, !dbg !4288, !tbaa !713
  ret i8* %7, !dbg !4289
}

declare !dbg !4290 dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 !dbg !4293 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8** %1, metadata !4298, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %2, metadata !4299, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i32 %3, metadata !4300, metadata !DIExpression()), !dbg !4363
  %17 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %17, metadata !4301, metadata !DIExpression()), !dbg !4363
  %18 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %18, metadata !4302, metadata !DIExpression()), !dbg !4366
  %19 = icmp eq i32 %18, 0, !dbg !4367
  br i1 %19, label %20, label %319

20:                                               ; preds = %4
  %21 = bitcast i8** %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**, !dbg !4368
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %21, metadata !4304, metadata !DIExpression()), !dbg !4363
  %22 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %21, align 8, !dbg !4369, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, metadata !4305, metadata !DIExpression()), !dbg !4363
  %23 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, null, !dbg !4370
  br i1 %23, label %24, label %31, !dbg !4372

24:                                               ; preds = %20
  %25 = tail call i8* @malloc(i64 16) #8, !dbg !4373
  %26 = bitcast i8* %25 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, !dbg !4375
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %26, metadata !4305, metadata !DIExpression()), !dbg !4363
  %27 = bitcast i8* %25 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**, !dbg !4376
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %27, align 8, !dbg !4377, !tbaa !1647
  %28 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 8, !dbg !4378, !tbaa !977
  %29 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !4379
  %30 = bitcast i8* %29 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**, !dbg !4379
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %28, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %30, align 8, !dbg !4380, !tbaa !4381
  store i8* %25, i8** bitcast (%"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE to i8**), align 8, !dbg !4382, !tbaa !977
  store i8* %25, i8** %1, align 8, !dbg !4383, !tbaa !977
  br label %31, !dbg !4384

31:                                               ; preds = %24, %20
  %32 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %22, %20 ], [ %26, %24 ], !dbg !4363
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32, metadata !4305, metadata !DIExpression()), !dbg !4363
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32, i64 0, i32 0, !dbg !4385
  %34 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %33, align 8, !dbg !4385, !tbaa !1647
  %35 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %34, null, !dbg !4387
  br i1 %35, label %36, label %319, !dbg !4388

36:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i64 0, i64 0), metadata !4306, metadata !DIExpression()), !dbg !4363
  %37 = tail call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !4389
  call void @llvm.dbg.value(metadata i64 %37, metadata !4307, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %2, metadata !4299, metadata !DIExpression()), !dbg !4363
  %38 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %38, metadata !4308, metadata !DIExpression()), !dbg !4391
  %39 = icmp eq i8* %38, null, !dbg !4392
  br i1 %39, label %297, label %40, !dbg !4394

40:                                               ; preds = %36
  %41 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32 to i8**
  %42 = bitcast i8** %5 to i8*
  %43 = bitcast i32* %6 to i8*
  %44 = bitcast i32* %7 to i8*
  %45 = bitcast i32* %9 to i8*
  %46 = bitcast i32* %11 to i8*
  %47 = bitcast i32* %12 to i8*
  %48 = bitcast i32* %13 to i8*
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %50 = bitcast i32* %15 to i8*
  %51 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 3
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 4
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 0
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 1
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 2
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 5, i64 0
  br label %58, !dbg !4394

58:                                               ; preds = %40, %294
  %59 = phi i8* [ %38, %40 ], [ %295, %294 ]
  %60 = phi i8* [ %2, %40 ], [ %62, %294 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !4299, metadata !DIExpression()), !dbg !4363
  %61 = getelementptr inbounds i8, i8* %59, i64 %37, !dbg !4395
  call void @llvm.dbg.value(metadata i8* %61, metadata !4310, metadata !DIExpression()), !dbg !4391
  %62 = call i8* @strstr(i8* nonnull %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %62, metadata !4311, metadata !DIExpression()), !dbg !4391
  %63 = icmp eq i8* %62, null, !dbg !4397
  br i1 %63, label %66, label %64, !dbg !4399

64:                                               ; preds = %58
  %65 = call i8* @get_kernel_name(i8* nonnull %61, i8* nonnull %62) #9, !dbg !4400
  br label %81, !dbg !4399

66:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4401
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4401
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4401
  %67 = call i8* @malloc(i64 1024) #8, !dbg !4404
  %68 = icmp eq i8* %67, null, !dbg !4405
  br i1 %68, label %69, label %71, !dbg !4406

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4407
  %70 = call i8* @halide_string_to_string(i8* %67, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i64 0, i64 0)) #8, !dbg !4409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4410
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4412
  br label %79, !dbg !4413

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i64 1023, !dbg !4414
  store i8 0, i8* %72, align 1, !dbg !4415, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i64 0, i64 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4407
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i64 0, i64 0)) #8, !dbg !4409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4410
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4416
  %74 = ptrtoint i8* %73 to i64, !dbg !4418
  %75 = ptrtoint i8* %67 to i64, !dbg !4418
  %76 = add i64 %74, 1, !dbg !4418
  %77 = sub i64 %76, %75, !dbg !4419
  %78 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %77) #8, !dbg !4420
  call void @halide_error(i8* %0, i8* nonnull %67) #8, !dbg !4421
  br label %79

79:                                               ; preds = %71, %69
  call void @free(i8* %67) #8, !dbg !4422
  %80 = call i8* @get_kernel_name(i8* nonnull %61, i8* null) #9, !dbg !4400
  br label %81, !dbg !4423

81:                                               ; preds = %64, %79
  %82 = phi i8* [ %65, %64 ], [ %80, %79 ], !dbg !4400
  call void @llvm.dbg.value(metadata i8* %82, metadata !4312, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 undef, metadata !4313, metadata !DIExpression()), !dbg !4391
  %83 = call i8* @malloc(i64 24) #8, !dbg !4424
  call void @llvm.dbg.value(metadata i8* %83, metadata !4314, metadata !DIExpression()), !dbg !4391
  %84 = bitcast i8* %83 to i8**, !dbg !4425
  store i8* %82, i8** %84, align 8, !dbg !4426, !tbaa !981
  %85 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %33, align 8, !dbg !4427, !tbaa !1647
  %86 = getelementptr inbounds i8, i8* %83, i64 16, !dbg !4428
  %87 = bitcast i8* %86 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**, !dbg !4428
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %85, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %87, align 8, !dbg !4429, !tbaa !1653
  store i8* %83, i8** %41, align 8, !dbg !4430, !tbaa !1647
  %88 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 7), align 8, !dbg !4431, !tbaa !1391
  %89 = call i32 %88(i32 37305) #8, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %89, metadata !4315, metadata !DIExpression()), !dbg !4391
  %90 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.134, i64 0, i64 0)) #9, !dbg !4433
  br i1 %90, label %319, label %91, !dbg !4435

91:                                               ; preds = %81
  %92 = ptrtoint i8* %62 to i64, !dbg !4436
  %93 = ptrtoint i8* %60 to i64, !dbg !4436
  %94 = sub i64 %92, %93, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %94, metadata !4313, metadata !DIExpression()), !dbg !4391
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #10, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %60, metadata !4316, metadata !DIExpression()), !dbg !4391
  store i8* %60, i8** %5, align 8, !dbg !4438, !tbaa !977
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4439
  %95 = trunc i64 %94 to i32, !dbg !4440
  call void @llvm.dbg.value(metadata i32 %95, metadata !4317, metadata !DIExpression()), !dbg !4391
  store i32 %95, i32* %6, align 4, !dbg !4441, !tbaa !2103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4442
  %96 = call i8* @malloc(i64 1024) #8, !dbg !4444
  %97 = icmp eq i8* %96, null, !dbg !4445
  br i1 %97, label %100, label %98, !dbg !4446

98:                                               ; preds = %91
  %99 = getelementptr inbounds i8, i8* %96, i64 1023, !dbg !4447
  store i8 0, i8* %99, align 1, !dbg !4448, !tbaa !713
  br label %100, !dbg !4449

100:                                              ; preds = %91, %98
  %101 = phi i8* [ %99, %98 ], [ null, %91 ], !dbg !4450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4451
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4451
  %102 = call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i64 0, i64 0)) #8, !dbg !4453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4454
  call void @llvm.dbg.value(metadata i8* %82, metadata !694, metadata !DIExpression()) #10, !dbg !4454
  %103 = icmp eq i8* %82, null, !dbg !4456
  br i1 %103, label %104, label %106, !dbg !4457

104:                                              ; preds = %100
  %105 = call i8* @halide_string_to_string(i8* %102, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !4458
  br label %108, !dbg !4459

106:                                              ; preds = %100
  %107 = call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull %82) #8, !dbg !4460
  br label %108

108:                                              ; preds = %104, %106
  %109 = phi i8* [ %107, %106 ], [ %105, %104 ], !dbg !4461
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4462
  br i1 %97, label %110, label %111, !dbg !4464

110:                                              ; preds = %108
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4465
  br label %117, !dbg !4466

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4467
  %112 = ptrtoint i8* %109 to i64, !dbg !4469
  %113 = ptrtoint i8* %96 to i64, !dbg !4469
  %114 = sub i64 1, %113, !dbg !4469
  %115 = add i64 %114, %112, !dbg !4470
  %116 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %115) #8, !dbg !4471
  call void @halide_print(i8* %0, i8* nonnull %96) #8, !dbg !4472
  br label %117

117:                                              ; preds = %111, %110
  call void @free(i8* %96) #8, !dbg !4473
  call void @halide_print(i8* %0, i8* %60) #8, !dbg !4474
  %118 = load void (i32, i32, i8**, i32*)*, void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 23), align 8, !dbg !4475, !tbaa !1406
  call void @llvm.dbg.value(metadata i8** %5, metadata !4316, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void @llvm.dbg.value(metadata i32* %6, metadata !4317, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void %118(i32 %89, i32 1, i8** nonnull %5, i32* nonnull %6) #8, !dbg !4476
  %119 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i64 0, i64 0)) #9, !dbg !4477
  br i1 %119, label %292, label %120, !dbg !4479

120:                                              ; preds = %117
  %121 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 6), align 8, !dbg !4480, !tbaa !1390
  call void %121(i32 %89) #8, !dbg !4481
  %122 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i64 0, i64 0)) #9, !dbg !4482
  br i1 %122, label %292, label %123, !dbg !4484

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4485
  call void @llvm.dbg.value(metadata i32 0, metadata !4318, metadata !DIExpression()), !dbg !4391
  store i32 0, i32* %7, align 4, !dbg !4486, !tbaa !2103
  %124 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18), align 8, !dbg !4487, !tbaa !1401
  call void @llvm.dbg.value(metadata i32* %7, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void %124(i32 %89, i32 35713, i32* nonnull %7) #8, !dbg !4488
  %125 = load i32, i32* %7, align 4, !dbg !4489, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %125, metadata !4318, metadata !DIExpression()), !dbg !4391
  %126 = icmp eq i32 %125, 1, !dbg !4490
  br i1 %126, label %168, label %127, !dbg !4491

127:                                              ; preds = %123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4492
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4492
  %128 = call i8* @malloc(i64 1024) #8, !dbg !4494
  %129 = icmp eq i8* %128, null, !dbg !4495
  br i1 %129, label %130, label %132, !dbg !4496

130:                                              ; preds = %127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4497
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4497
  %131 = call i8* @halide_string_to_string(i8* %128, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !4499
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4500
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4502
  br label %140, !dbg !4503

132:                                              ; preds = %127
  %133 = getelementptr inbounds i8, i8* %128, i64 1023, !dbg !4504
  store i8 0, i8* %133, align 1, !dbg !4505, !tbaa !713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4497
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4497
  %134 = call i8* @halide_string_to_string(i8* nonnull %128, i8* nonnull %133, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !4499
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4500
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4506
  %135 = ptrtoint i8* %134 to i64, !dbg !4508
  %136 = ptrtoint i8* %128 to i64, !dbg !4508
  %137 = add i64 %135, 1, !dbg !4508
  %138 = sub i64 %137, %136, !dbg !4509
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %128, i64 %138) #8, !dbg !4510
  call void @halide_print(i8* %0, i8* nonnull %128) #8, !dbg !4511
  br label %140

140:                                              ; preds = %132, %130
  call void @free(i8* %128) #8, !dbg !4512
  %141 = bitcast i32* %8 to i8*, !dbg !4513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %141) #10, !dbg !4513
  %142 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 18), align 8, !dbg !4514, !tbaa !1401
  call void @llvm.dbg.value(metadata i32* %8, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4515
  call void %142(i32 %89, i32 35716, i32* nonnull %8) #8, !dbg !4516
  %143 = load i32, i32* %8, align 4, !dbg !4517, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %143, metadata !4319, metadata !DIExpression()), !dbg !4515
  %144 = sext i32 %143 to i64, !dbg !4517
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4518, metadata !DIExpression()) #10, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %0, metadata !4521, metadata !DIExpression()) #10, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %144, metadata !4522, metadata !DIExpression()) #10, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %0, metadata !4322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4515
  %145 = call i8* @halide_malloc(i8* %0, i64 %144) #8, !dbg !4526
  call void @llvm.dbg.value(metadata i8* %145, metadata !4322, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4515
  %146 = icmp eq i8* %145, null, !dbg !4527
  br i1 %146, label %166, label %147, !dbg !4528

147:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i8* %145, metadata !4335, metadata !DIExpression()), !dbg !4529
  %148 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 17), align 8, !dbg !4530, !tbaa !1400
  %149 = load i32, i32* %8, align 4, !dbg !4531, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %149, metadata !4319, metadata !DIExpression()), !dbg !4515
  call void %148(i32 %89, i32 %149, i32* null, i8* nonnull %145) #8, !dbg !4532
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4533
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4533
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4533
  %150 = call i8* @malloc(i64 1024) #8, !dbg !4535
  %151 = icmp eq i8* %150, null, !dbg !4536
  br i1 %151, label %154, label %152, !dbg !4537

152:                                              ; preds = %147
  %153 = getelementptr inbounds i8, i8* %150, i64 1023, !dbg !4538
  store i8 0, i8* %153, align 1, !dbg !4539, !tbaa !713
  br label %154, !dbg !4540

154:                                              ; preds = %147, %152
  %155 = phi i8* [ %153, %152 ], [ null, %147 ], !dbg !4541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %145, metadata !694, metadata !DIExpression()) #10, !dbg !4542
  %156 = call i8* @halide_string_to_string(i8* %150, i8* %155, i8* nonnull %145) #8, !dbg !4544
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4545
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4545
  %157 = call i8* @halide_string_to_string(i8* %156, i8* %155, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4547
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4548
  br i1 %151, label %158, label %159, !dbg !4550

158:                                              ; preds = %154
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4551
  br label %165, !dbg !4552

159:                                              ; preds = %154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4553
  %160 = ptrtoint i8* %157 to i64, !dbg !4555
  %161 = ptrtoint i8* %150 to i64, !dbg !4555
  %162 = add i64 %160, 1, !dbg !4555
  %163 = sub i64 %162, %161, !dbg !4556
  %164 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %150, i64 %163) #8, !dbg !4557
  call void @halide_print(i8* %0, i8* nonnull %150) #8, !dbg !4558
  br label %165

165:                                              ; preds = %159, %158
  call void @free(i8* %150) #8, !dbg !4559
  br label %166, !dbg !4560

166:                                              ; preds = %165, %140
  %167 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10), align 8, !dbg !4561, !tbaa !1394
  call void %167(i32 %89) #8, !dbg !4562
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4563, metadata !DIExpression()) #10, !dbg !4566
  call void @halide_free(i8* %0, i8* %145) #8, !dbg !4568
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %141) #10, !dbg !4570
  br label %293

168:                                              ; preds = %123
  %169 = load i32 ()*, i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 5), align 8, !dbg !4571, !tbaa !1389
  %170 = call i32 %169() #8, !dbg !4572
  call void @llvm.dbg.value(metadata i32 %170, metadata !4338, metadata !DIExpression()), !dbg !4391
  %171 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 1), align 8, !dbg !4573, !tbaa !1385
  call void %171(i32 %170, i32 %89) #8, !dbg !4574
  %172 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i64 0, i64 0)) #9, !dbg !4575
  br i1 %172, label %293, label %173, !dbg !4577

173:                                              ; preds = %168
  %174 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 20), align 8, !dbg !4578, !tbaa !1403
  call void %174(i32 %170) #8, !dbg !4579
  %175 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(248) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i64 0, i64 0)) #9, !dbg !4580
  br i1 %175, label %293, label %176, !dbg !4582

176:                                              ; preds = %173
  %177 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 10), align 8, !dbg !4583, !tbaa !1394
  call void %177(i32 %89) #8, !dbg !4584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4585
  %178 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16), align 8, !dbg !4586, !tbaa !1399
  call void @llvm.dbg.value(metadata i32* %9, metadata !4339, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void %178(i32 %170, i32 35714, i32* nonnull %9) #8, !dbg !4587
  %179 = load i32, i32* %9, align 4, !dbg !4588, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %179, metadata !4339, metadata !DIExpression()), !dbg !4391
  %180 = icmp eq i32 %179, 0, !dbg !4588
  br i1 %180, label %181, label %210, !dbg !4589

181:                                              ; preds = %176
  %182 = bitcast i32* %10 to i8*, !dbg !4590
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %182) #10, !dbg !4590
  %183 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16), align 8, !dbg !4591, !tbaa !1399
  call void @llvm.dbg.value(metadata i32* %10, metadata !4340, metadata !DIExpression(DW_OP_deref)), !dbg !4592
  call void %183(i32 %170, i32 35716, i32* nonnull %10) #8, !dbg !4593
  %184 = load i32, i32* %10, align 4, !dbg !4594, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %184, metadata !4340, metadata !DIExpression()), !dbg !4592
  %185 = sext i32 %184 to i64, !dbg !4594
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4518, metadata !DIExpression()) #10, !dbg !4595
  call void @llvm.dbg.value(metadata i8* %0, metadata !4521, metadata !DIExpression()) #10, !dbg !4595
  call void @llvm.dbg.value(metadata i64 %185, metadata !4522, metadata !DIExpression()) #10, !dbg !4595
  call void @llvm.dbg.value(metadata i8* %0, metadata !4343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4592
  %186 = call i8* @halide_malloc(i8* %0, i64 %185) #8, !dbg !4597
  call void @llvm.dbg.value(metadata i8* %186, metadata !4343, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4592
  %187 = icmp eq i8* %186, null, !dbg !4598
  br i1 %187, label %208, label %188, !dbg !4599

188:                                              ; preds = %181
  call void @llvm.dbg.value(metadata i8* %186, metadata !4344, metadata !DIExpression()), !dbg !4600
  %189 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 15), align 8, !dbg !4601, !tbaa !1398
  %190 = load i32, i32* %10, align 4, !dbg !4602, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %190, metadata !4340, metadata !DIExpression()), !dbg !4592
  call void %189(i32 %170, i32 %190, i32* null, i8* nonnull %186) #8, !dbg !4603
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4604
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4604
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4604
  %191 = call i8* @malloc(i64 1024) #8, !dbg !4606
  %192 = icmp eq i8* %191, null, !dbg !4607
  br i1 %192, label %195, label %193, !dbg !4608

193:                                              ; preds = %188
  %194 = getelementptr inbounds i8, i8* %191, i64 1023, !dbg !4609
  store i8 0, i8* %194, align 1, !dbg !4610, !tbaa !713
  br label %195, !dbg !4611

195:                                              ; preds = %188, %193
  %196 = phi i8* [ %194, %193 ], [ null, %188 ], !dbg !4612
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4613
  %197 = call i8* @halide_string_to_string(i8* %191, i8* %196, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0)) #8, !dbg !4615
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4616
  call void @llvm.dbg.value(metadata i8* %186, metadata !694, metadata !DIExpression()) #10, !dbg !4616
  %198 = call i8* @halide_string_to_string(i8* %197, i8* %196, i8* nonnull %186) #8, !dbg !4618
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4619
  %199 = call i8* @halide_string_to_string(i8* %198, i8* %196, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4621
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4622
  br i1 %192, label %200, label %201, !dbg !4624

200:                                              ; preds = %195
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4625
  br label %207, !dbg !4626

201:                                              ; preds = %195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4627
  %202 = ptrtoint i8* %199 to i64, !dbg !4629
  %203 = ptrtoint i8* %191 to i64, !dbg !4629
  %204 = add i64 %202, 1, !dbg !4629
  %205 = sub i64 %204, %203, !dbg !4630
  %206 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %191, i64 %205) #8, !dbg !4631
  call void @halide_print(i8* %0, i8* nonnull %191) #8, !dbg !4632
  br label %207

207:                                              ; preds = %201, %200
  call void @free(i8* %191) #8, !dbg !4633
  br label %208, !dbg !4634

208:                                              ; preds = %181, %207
  %209 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 9), align 8, !dbg !4635, !tbaa !1393
  call void %209(i32 %170) #8, !dbg !4636
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4563, metadata !DIExpression()) #10, !dbg !4637
  call void @halide_free(i8* %0, i8* %186) #8, !dbg !4639
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %182) #10, !dbg !4640
  call void @llvm.dbg.value(metadata i8* %62, metadata !4299, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #10, !dbg !4641
  br label %319

210:                                              ; preds = %176
  %211 = getelementptr inbounds i8, i8* %83, i64 8, !dbg !4642
  %212 = bitcast i8* %211 to i32*, !dbg !4642
  store i32 %170, i32* %212, align 8, !dbg !4643, !tbaa !1657
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #10, !dbg !4644
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #10, !dbg !4645
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #10, !dbg !4646
  call void @llvm.dbg.value(metadata i32 64, metadata !4351, metadata !DIExpression()), !dbg !4391
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %49) #10, !dbg !4647
  call void @llvm.dbg.declare(metadata [64 x i8]* %14, metadata !4353, metadata !DIExpression()), !dbg !4648
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #10, !dbg !4649
  %213 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 16), align 8, !dbg !4650, !tbaa !1399
  call void @llvm.dbg.value(metadata i32* %11, metadata !4348, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void %213(i32 %170, i32 35718, i32* nonnull %11) #8, !dbg !4651
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4652
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4652
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4652
  %214 = call i8* @malloc(i64 1024) #8, !dbg !4654
  %215 = icmp eq i8* %214, null, !dbg !4655
  br i1 %215, label %218, label %216, !dbg !4656

216:                                              ; preds = %210
  %217 = getelementptr inbounds i8, i8* %214, i64 1023, !dbg !4657
  store i8 0, i8* %217, align 1, !dbg !4658, !tbaa !713
  br label %218, !dbg !4659

218:                                              ; preds = %210, %216
  %219 = phi i8* [ %217, %216 ], [ null, %210 ], !dbg !4660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.142, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4661
  %220 = call i8* @halide_string_to_string(i8* %214, i8* %219, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.142, i64 0, i64 0)) #8, !dbg !4663
  %221 = load i32, i32* %11, align 4, !dbg !4664, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %221, metadata !4348, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1183, metadata !DIExpression()) #10, !dbg !4665
  call void @llvm.dbg.value(metadata i32 %221, metadata !1186, metadata !DIExpression()) #10, !dbg !4665
  %222 = sext i32 %221 to i64, !dbg !4667
  %223 = call i8* @halide_int64_to_string(i8* %220, i8* %219, i64 %222, i32 1) #8, !dbg !4668
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4669
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4669
  %224 = call i8* @halide_string_to_string(i8* %223, i8* %219, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4671
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4672
  br i1 %215, label %225, label %226, !dbg !4674

225:                                              ; preds = %218
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4675
  br label %232, !dbg !4676

226:                                              ; preds = %218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4677
  %227 = ptrtoint i8* %224 to i64, !dbg !4679
  %228 = ptrtoint i8* %214 to i64, !dbg !4679
  %229 = add i64 %227, 1, !dbg !4679
  %230 = sub i64 %229, %228, !dbg !4680
  %231 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %214, i64 %230) #8, !dbg !4681
  call void @halide_print(i8* %0, i8* nonnull %214) #8, !dbg !4682
  br label %232

232:                                              ; preds = %226, %225
  call void @free(i8* %214) #8, !dbg !4683
  call void @llvm.dbg.value(metadata i32 0, metadata !4347, metadata !DIExpression()), !dbg !4391
  %233 = load i32, i32* %11, align 4, !dbg !4684, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %233, metadata !4348, metadata !DIExpression()), !dbg !4391
  %234 = icmp sgt i32 %233, 0, !dbg !4685
  br i1 %234, label %235, label %294, !dbg !4686

235:                                              ; preds = %232, %287
  %236 = phi i64 [ %288, %287 ], [ 0, %232 ]
  call void @llvm.dbg.value(metadata i64 %236, metadata !4347, metadata !DIExpression()), !dbg !4391
  %237 = load void (i32, i32, i32, i32*, i32*, i32*, i8*)*, void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 29), align 8, !dbg !4687, !tbaa !1412
  call void @llvm.dbg.value(metadata i32* %12, metadata !4349, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void @llvm.dbg.value(metadata i32* %13, metadata !4350, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  call void @llvm.dbg.value(metadata i32* %15, metadata !4357, metadata !DIExpression(DW_OP_deref)), !dbg !4391
  %238 = trunc i64 %236 to i32, !dbg !4688
  call void %237(i32 %170, i32 %238, i32 64, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i8* nonnull %49) #8, !dbg !4688
  %239 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i64 0, i32 30), align 8, !dbg !4689, !tbaa !1413
  %240 = call i32 %239(i32 %170, i8* nonnull %49) #8, !dbg !4690
  call void @llvm.dbg.value(metadata i32 %240, metadata !4358, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %51) #10, !dbg !4692
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !674, metadata !DIExpression()) #10, !dbg !4693
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4693
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4693
  store i8* %0, i8** %52, align 8, !dbg !4695, !tbaa !1117
  store i8 1, i8* %53, align 8, !dbg !4696, !tbaa !1120
  %241 = call i8* @malloc(i64 1024) #8, !dbg !4697
  store i8* %241, i8** %54, align 8, !dbg !4698, !tbaa !1124
  store i8* %241, i8** %55, align 8, !dbg !4699, !tbaa !1357
  %242 = icmp eq i8* %241, null, !dbg !4700
  br i1 %242, label %245, label %243, !dbg !4701

243:                                              ; preds = %235
  %244 = getelementptr inbounds i8, i8* %241, i64 1023, !dbg !4702
  store i8* %244, i8** %56, align 8, !dbg !4703, !tbaa !1277
  store i8 0, i8* %244, align 1, !dbg !4704, !tbaa !713
  br label %246, !dbg !4705

245:                                              ; preds = %235
  store i8* null, i8** %56, align 8, !dbg !4706, !tbaa !1277
  br label %246

246:                                              ; preds = %243, %245
  %247 = phi i8* [ %244, %243 ], [ null, %245 ], !dbg !4707
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4709
  %248 = call i8* @halide_string_to_string(i8* %241, i8* %247, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0)) #8, !dbg !4710
  store i8* %248, i8** %55, align 8, !dbg !4711, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1183, metadata !DIExpression()) #10, !dbg !4712
  call void @llvm.dbg.value(metadata i64 %236, metadata !1186, metadata !DIExpression()) #10, !dbg !4712
  %249 = load i8*, i8** %56, align 8, !dbg !4714, !tbaa !1277
  %250 = call i8* @halide_int64_to_string(i8* %248, i8* %249, i64 %236, i32 1) #8, !dbg !4715
  store i8* %250, i8** %55, align 8, !dbg !4716, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4717
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4717
  %251 = load i8*, i8** %56, align 8, !dbg !4719, !tbaa !1277
  %252 = call i8* @halide_string_to_string(i8* %250, i8* %251, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i64 0, i64 0)) #8, !dbg !4720
  store i8* %252, i8** %55, align 8, !dbg !4721, !tbaa !1357
  %253 = load i32, i32* %13, align 4, !dbg !4722, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %253, metadata !4350, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1153, metadata !DIExpression()) #10, !dbg !4723
  call void @llvm.dbg.value(metadata i32 %253, metadata !1156, metadata !DIExpression()) #10, !dbg !4723
  %254 = load i8*, i8** %56, align 8, !dbg !4725, !tbaa !1277
  %255 = zext i32 %253 to i64, !dbg !4726
  %256 = call i8* @halide_uint64_to_string(i8* %252, i8* %254, i64 %255, i32 1) #8, !dbg !4727
  store i8* %256, i8** %55, align 8, !dbg !4728, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4729
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4729
  %257 = load i8*, i8** %56, align 8, !dbg !4731, !tbaa !1277
  %258 = call i8* @halide_string_to_string(i8* %256, i8* %257, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i64 0, i64 0)) #8, !dbg !4732
  store i8* %258, i8** %55, align 8, !dbg !4733, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4734
  call void @llvm.dbg.value(metadata i8* %49, metadata !694, metadata !DIExpression()) #10, !dbg !4734
  %259 = load i8*, i8** %56, align 8, !dbg !4736, !tbaa !1277
  %260 = call i8* @halide_string_to_string(i8* %258, i8* %259, i8* nonnull %49) #8, !dbg !4737
  store i8* %260, i8** %55, align 8, !dbg !4738, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4739
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4739
  %261 = load i8*, i8** %56, align 8, !dbg !4741, !tbaa !1277
  %262 = call i8* @halide_string_to_string(i8* %260, i8* %261, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0)) #8, !dbg !4742
  store i8* %262, i8** %55, align 8, !dbg !4743, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1183, metadata !DIExpression()) #10, !dbg !4744
  call void @llvm.dbg.value(metadata i32 %240, metadata !1186, metadata !DIExpression()) #10, !dbg !4744
  %263 = load i8*, i8** %56, align 8, !dbg !4746, !tbaa !1277
  %264 = sext i32 %240 to i64, !dbg !4747
  %265 = call i8* @halide_int64_to_string(i8* %262, i8* %263, i64 %264, i32 1) #8, !dbg !4748
  store i8* %265, i8** %55, align 8, !dbg !4749, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !691, metadata !DIExpression()) #10, !dbg !4750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4750
  %266 = load i8*, i8** %56, align 8, !dbg !4752, !tbaa !1277
  %267 = call i8* @halide_string_to_string(i8* %265, i8* %266, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4753
  store i8* %267, i8** %55, align 8, !dbg !4754, !tbaa !1357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !700, metadata !DIExpression()) #10, !dbg !4755
  %268 = load i8*, i8** %54, align 8, !dbg !4757, !tbaa !1124
  %269 = icmp eq i8* %268, null, !dbg !4757
  %270 = load i8*, i8** %52, align 8, !dbg !4758, !tbaa !1117
  br i1 %269, label %271, label %272, !dbg !4759

271:                                              ; preds = %246
  call void @halide_error(i8* %270, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4760
  br label %280, !dbg !4761

272:                                              ; preds = %246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4762
  %273 = ptrtoint i8* %267 to i64, !dbg !4764
  %274 = ptrtoint i8* %268 to i64, !dbg !4764
  %275 = add i64 %273, 1, !dbg !4764
  %276 = sub i64 %275, %274, !dbg !4765
  %277 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %270, i8* nonnull %268, i64 %276) #8, !dbg !4766
  %278 = load i8*, i8** %52, align 8, !dbg !4767, !tbaa !1117
  %279 = load i8*, i8** %54, align 8, !dbg !4768, !tbaa !1124
  call void @halide_print(i8* %278, i8* %279) #8, !dbg !4769
  br label %280

280:                                              ; preds = %272, %271
  %281 = load i8, i8* %53, align 8, !dbg !4770, !tbaa !1120, !range !1372
  %282 = icmp eq i8 %281, 0, !dbg !4770
  %283 = load i8*, i8** %54, align 8
  %284 = icmp eq i8* %283, %57
  %285 = or i1 %282, %284, !dbg !4771
  br i1 %285, label %287, label %286, !dbg !4771

286:                                              ; preds = %280
  call void @free(i8* %283) #8, !dbg !4772
  br label %287, !dbg !4773

287:                                              ; preds = %280, %286
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %51) #10, !dbg !4692
  %288 = add nuw nsw i64 %236, 1, !dbg !4774
  call void @llvm.dbg.value(metadata i64 %288, metadata !4347, metadata !DIExpression()), !dbg !4391
  %289 = load i32, i32* %11, align 4, !dbg !4684, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %289, metadata !4348, metadata !DIExpression()), !dbg !4391
  %290 = sext i32 %289 to i64, !dbg !4685
  %291 = icmp slt i64 %288, %290, !dbg !4685
  br i1 %291, label %235, label %294, !dbg !4686, !llvm.loop !4775

292:                                              ; preds = %117, %120
  call void @llvm.dbg.value(metadata i8* %62, metadata !4299, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #10, !dbg !4641
  br label %319

293:                                              ; preds = %168, %173, %166
  call void @llvm.dbg.value(metadata i8* %62, metadata !4299, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #10, !dbg !4641
  br label %319

294:                                              ; preds = %287, %232
  call void @llvm.dbg.value(metadata i8* %62, metadata !4299, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %49) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #10, !dbg !4641
  %295 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %295, metadata !4308, metadata !DIExpression()), !dbg !4391
  %296 = icmp eq i8* %295, null, !dbg !4392
  br i1 %296, label %297, label %58, !dbg !4394

297:                                              ; preds = %294, %36
  call void @llvm.dbg.value(metadata i8* %62, metadata !4299, metadata !DIExpression()), !dbg !4363
  %298 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4777
  call void @llvm.dbg.value(metadata i64 %298, metadata !4362, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !674, metadata !DIExpression()) #10, !dbg !4778
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()) #10, !dbg !4778
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()) #10, !dbg !4778
  %299 = call i8* @malloc(i64 1024) #8, !dbg !4780
  %300 = icmp eq i8* %299, null, !dbg !4781
  br i1 %300, label %303, label %301, !dbg !4782

301:                                              ; preds = %297
  %302 = getelementptr inbounds i8, i8* %299, i64 1023, !dbg !4783
  store i8 0, i8* %302, align 1, !dbg !4784, !tbaa !713
  br label %303, !dbg !4785

303:                                              ; preds = %297, %301
  %304 = phi i8* [ %302, %301 ], [ null, %297 ], !dbg !4786
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4787
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4787
  %305 = call i8* @halide_string_to_string(i8* %299, i8* %304, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !4789
  %306 = sub i64 %298, %17, !dbg !4790
  %307 = uitofp i64 %306 to double, !dbg !4791
  %308 = fdiv double %307, 1.000000e+06, !dbg !4792
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1690, metadata !DIExpression()) #10, !dbg !4793
  call void @llvm.dbg.value(metadata double %308, metadata !1693, metadata !DIExpression()) #10, !dbg !4793
  %309 = call i8* @halide_double_to_string(i8* %305, i8* %304, double %308, i32 1) #8, !dbg !4795
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !691, metadata !DIExpression()) #10, !dbg !4796
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), metadata !694, metadata !DIExpression()) #10, !dbg !4796
  %310 = call i8* @halide_string_to_string(i8* %309, i8* %304, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !4798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #10, !dbg !4799
  br i1 %300, label %311, label %312, !dbg !4801

311:                                              ; preds = %303
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4802
  br label %318, !dbg !4803

312:                                              ; preds = %303
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !714, metadata !DIExpression()) #10, !dbg !4804
  %313 = ptrtoint i8* %310 to i64, !dbg !4806
  %314 = ptrtoint i8* %299 to i64, !dbg !4806
  %315 = add i64 %313, 1, !dbg !4806
  %316 = sub i64 %315, %314, !dbg !4807
  %317 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %299, i64 %316) #8, !dbg !4808
  call void @halide_print(i8* %0, i8* nonnull %299) #8, !dbg !4809
  br label %318

318:                                              ; preds = %312, %311
  call void @free(i8* %299) #8, !dbg !4810
  br label %319

319:                                              ; preds = %81, %208, %293, %292, %31, %318, %4
  %320 = phi i32 [ %18, %4 ], [ 0, %31 ], [ 0, %318 ], [ -1, %292 ], [ -1, %293 ], [ -1, %208 ], [ -1, %81 ], !dbg !4363
  ret i32 %320, !dbg !4811
}

declare !dbg !4812 dso_local i64 @strlen(i8*) local_unnamed_addr #3

declare !dbg !4815 dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_openglcompute_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #6 !dbg !4818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4822, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i8* %1, metadata !4823, metadata !DIExpression()), !dbg !4824
  ret void, !dbg !4825
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_openglcompute_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4828, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4829, metadata !DIExpression()), !dbg !4830
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #8, !dbg !4831
  ret i32 %3, !dbg !4832
}

declare !dbg !4833 extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_openglcompute_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4834 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4836, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4837, metadata !DIExpression()), !dbg !4838
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #8, !dbg !4839
  ret i32 %3, !dbg !4840
}

declare !dbg !4841 extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_openglcompute_device_interface() local_unnamed_addr #6 !dbg !4842 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, !dbg !4845
}

declare extern_weak dso_local void @halide_use_jit_module() #3

declare extern_weak dso_local void @halide_release_jit_module() #3

declare extern_weak dso_local i32 @halide_default_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #3

declare extern_weak dso_local i32 @halide_default_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #3

declare extern_weak dso_local i32 @halide_default_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #3

declare extern_weak dso_local i32 @halide_default_device_release_crop(i8*, %struct.halide_buffer_t*) #3

declare extern_weak dso_local i32 @halide_default_device_wrap_native(i8*, %struct.halide_buffer_t*, i64) #3

declare extern_weak dso_local i32 @halide_default_device_detach_native(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #3

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare extern_weak dso_local i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare extern_weak dso_local i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_release_crop(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_wrap_native(i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_device_detach_native(i8*, %struct.halide_buffer_t*) #3

declare !dbg !4846 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

declare !dbg !4849 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !4850 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4851 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4854 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4857 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4860 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4863 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4866 extern_weak dso_local i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #3

declare !dbg !4869 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nofree nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!396}
!llvm.module.flags = !{!573, !574, !575}
!llvm.ident = !{!576}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global_state", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE", scope: !2, file: !6, line: 147, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "OpenGLCompute", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/openglcompute.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlobalState", scope: !2, file: !6, line: 123, size: 1984, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE")
!8 = !{!9, !11, !19, !25, !30, !42, !47, !52, !57, !66, !68, !70, !75, !80, !86, !91, !100, !107, !109, !111, !120, !122, !130, !135, !145, !150, !151, !158, !163, !165, !171, !176, !180}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !7, file: !6, line: 127, baseType: !10, size: 8)
!10 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "AttachShader", scope: !7, file: !6, line: 131, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLATTACHSHADERPROC", file: !13, line: 128, baseType: !14)
!13 = !DIFile(filename: "src/runtime/mini_opengl.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLuint", file: !13, line: 11, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "BindBuffer", scope: !7, file: !6, line: 131, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBINDBUFFERPROC", file: !13, line: 111, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !17}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLenum", file: !13, line: 8, baseType: !18)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "BindBufferBase", scope: !7, file: !6, line: 131, baseType: !26, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBINDBUFFERBASEPROC", file: !13, line: 215, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !24, !17, !17}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "BufferData", scope: !7, file: !6, line: 131, baseType: !31, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBUFFERDATAPROC", file: !13, line: 112, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !24, !35, !39, !24}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLsizeiptr", file: !13, line: 13, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !37, line: 28, baseType: !38)
!37 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLvoid", file: !13, line: 16, baseType: null)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "CreateProgram", scope: !7, file: !6, line: 131, baseType: !43, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCREATEPROGRAMPROC", file: !13, line: 130, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!17}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "CompileShader", scope: !7, file: !6, line: 131, baseType: !48, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCOMPILESHADERPROC", file: !13, line: 129, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !17}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "CreateShader", scope: !7, file: !6, line: 131, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCREATESHADERPROC", file: !13, line: 131, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!17, !24}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteBuffers", scope: !7, file: !6, line: 131, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETEBUFFERSPROC", file: !13, line: 216, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !64}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLsizei", file: !13, line: 12, baseType: !63)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteProgram", scope: !7, file: !6, line: 131, baseType: !67, size: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETEPROGRAMPROC", file: !13, line: 132, baseType: !49)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteShader", scope: !7, file: !6, line: 131, baseType: !69, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETESHADERPROC", file: !13, line: 133, baseType: !49)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "DispatchCompute", scope: !7, file: !6, line: 131, baseType: !71, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDISPATCHCOMPUTEPROC", file: !13, line: 213, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !17, !17, !17}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Finish", scope: !7, file: !6, line: 131, baseType: !76, size: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLFINISHPROC", file: !13, line: 153, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "GenBuffers", scope: !7, file: !6, line: 131, baseType: !81, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGENBUFFERSPROC", file: !13, line: 109, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !62, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "GetError", scope: !7, file: !6, line: 131, baseType: !87, size: 64, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETERRORPROC", file: !13, line: 70, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!24}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "GetProgramInfoLog", scope: !7, file: !6, line: 131, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETPROGRAMINFOLOGPROC", file: !13, line: 138, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !17, !62, !96, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLchar", file: !13, line: 6, baseType: !99)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "GetProgramiv", scope: !7, file: !6, line: 131, baseType: !101, size: 64, offset: 1024)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETPROGRAMIVPROC", file: !13, line: 137, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !17, !24, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLint", file: !13, line: 10, baseType: !63)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "GetShaderInfoLog", scope: !7, file: !6, line: 131, baseType: !108, size: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSHADERINFOLOGPROC", file: !13, line: 140, baseType: !93)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "GetShaderiv", scope: !7, file: !6, line: 131, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSHADERIVPROC", file: !13, line: 139, baseType: !102)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "GetString", scope: !7, file: !6, line: 131, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSTRINGPROC", file: !13, line: 71, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !24}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLubyte", file: !13, line: 7, baseType: !119)
!119 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "LinkProgram", scope: !7, file: !6, line: 131, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLLINKPROGRAMPROC", file: !13, line: 142, baseType: !49)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "MapBufferRange", scope: !7, file: !6, line: 131, baseType: !123, size: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLMAPBUFFERRANGEPROC", file: !13, line: 212, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !24, !128, !35, !129}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLintptr", file: !13, line: 207, baseType: !36)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLbitfield", file: !13, line: 206, baseType: !18)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "MemoryBarrier", scope: !7, file: !6, line: 131, baseType: !131, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLMEMORYBARRIERPROC", file: !13, line: 211, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !129}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ShaderSource", scope: !7, file: !6, line: 131, baseType: !136, size: 64, offset: 1472)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLSHADERSOURCEPROC", file: !13, line: 143, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !17, !62, !140, !143}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1i", scope: !7, file: !6, line: 131, baseType: !146, size: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNIFORM1IPROC", file: !13, line: 145, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !17, !106}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1ui", scope: !7, file: !6, line: 131, baseType: !146, size: 64, offset: 1600)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1f", scope: !7, file: !6, line: 131, baseType: !152, size: 64, offset: 1664)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNIFORM1FPROC", file: !13, line: 144, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !17, !156}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLfloat", file: !13, line: 14, baseType: !157)
!157 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "UnmapBuffer", scope: !7, file: !6, line: 131, baseType: !159, size: 64, offset: 1728)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNMAPBUFFERPROC", file: !13, line: 214, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !24}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "UseProgram", scope: !7, file: !6, line: 131, baseType: !164, size: 64, offset: 1792)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUSEPROGRAMPROC", file: !13, line: 149, baseType: !49)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "GetActiveUniform", scope: !7, file: !6, line: 131, baseType: !166, size: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETACTIVEUNIFORM", file: !13, line: 218, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !17, !17, !62, !96, !105, !170, !97}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "GetUniformLocation", scope: !7, file: !6, line: 131, baseType: !172, size: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETUNIFORMLOCATION", file: !13, line: 219, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!106, !17, !141}
!176 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv", scope: !7, file: !6, line: 124, type: !177, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DISubprogram(name: "CheckAndReportError", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc", scope: !7, file: !6, line: 125, type: !181, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!10, !179, !127, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "state_list", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE", scope: !2, file: !6, line: 150, type: !187, isLocal: false, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ModuleState", scope: !2, file: !6, line: 109, size: 128, flags: DIFlagTypePassByValue, elements: !189, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE")
!189 = !{!190, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !188, file: !6, line: 110, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "KernelInfo", scope: !2, file: !6, line: 103, size: 192, flags: DIFlagTypePassByValue, elements: !193, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE")
!193 = !{!194, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_name", scope: !192, file: !6, line: 104, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "program_id", scope: !192, file: !6, line: 105, baseType: !17, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !6, line: 106, baseType: !191, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !6, line: 111, baseType: !187, size: 64, offset: 64)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "openglcompute_device_interface", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE", scope: !2, file: !6, line: 948, type: !201, isLocal: false, isDefinition: true)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !202, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !203, identifier: "_ZTS25halide_device_interface_t")
!202 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!203 = !{!204, !329, !333, !334, !338, !339, !340, !341, !342, !346, !351, !355, !356, !360, !361, !366}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !201, file: !202, line: 724, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!63, !127, !208, !215}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !202, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !210, identifier: "_ZTS15halide_buffer_t")
!210 = !{!211, !214, !217, !220, !221, !262, !264, !287, !288, !298, !302, !305, !306, !309, !310, !315, !318, !319, !320, !325, !328}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !209, file: !202, line: 1425, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !37, line: 10, baseType: !213)
!213 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !209, file: !202, line: 1428, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !209, file: !202, line: 1433, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 16, baseType: !119)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !202, line: 1436, baseType: !212, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !209, file: !202, line: 1439, baseType: !222, size: 32, offset: 256)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !202, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !223, identifier: "_ZTS13halide_type_t")
!223 = !{!224, !233, !234, !237, !241, !244, !249, !253, !254, !255, !258}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !222, file: !202, line: 434, baseType: !225, size: 8, align: 8)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !202, line: 413, baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !202, line: 403, baseType: !219, size: 8, elements: !227, identifier: "_ZTS18halide_type_code_t")
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!229 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!232 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !222, file: !202, line: 442, baseType: !219, size: 8, align: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !222, file: !202, line: 446, baseType: !235, size: 16, align: 16, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 14, baseType: !236)
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !DISubprogram(name: "halide_type_t", scope: !222, file: !202, line: 453, type: !238, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240, !225, !219, !235}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!241 = !DISubprogram(name: "halide_type_t", scope: !222, file: !202, line: 459, type: !242, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !240}
!244 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !222, file: !202, line: 463, type: !245, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{!222, !247, !235}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!249 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !222, file: !202, line: 468, type: !250, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!10, !247, !252}
!252 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !248, size: 64)
!253 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !222, file: !202, line: 472, type: !250, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !222, file: !202, line: 476, type: !250, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !222, file: !202, line: 481, type: !256, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!63, !247}
!258 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !222, file: !202, line: 485, type: !259, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !247}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 12, baseType: !18)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !209, file: !202, line: 1442, baseType: !263, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 11, baseType: !63)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !209, file: !202, line: 1446, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !202, line: 1409, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !202, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !268, identifier: "_ZTS18halide_dimension_t")
!268 = !{!269, !270, !271, !272, !273, !277, !280, !286}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !267, file: !202, line: 1383, baseType: !263, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !267, file: !202, line: 1383, baseType: !263, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !267, file: !202, line: 1383, baseType: !263, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !202, line: 1386, baseType: !261, size: 32, offset: 96)
!273 = !DISubprogram(name: "halide_dimension_t", scope: !267, file: !202, line: 1388, type: !274, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!277 = !DISubprogram(name: "halide_dimension_t", scope: !267, file: !202, line: 1389, type: !278, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !276, !263, !263, !263, !261}
!280 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !267, file: !202, line: 1393, type: !281, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{!10, !283, !285}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!285 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!286 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !267, file: !202, line: 1400, type: !281, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !209, file: !202, line: 1449, baseType: !127, size: 64, offset: 384)
!288 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !209, file: !202, line: 1454, type: !289, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!10, !291, !293}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !202, line: 1416, baseType: !294)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 1415, baseType: !18, size: 32, elements: !295, identifier: "_ZTS19halide_buffer_flags")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!297 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!298 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !209, file: !202, line: 1458, type: !299, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301, !293, !10}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!302 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !209, file: !202, line: 1466, type: !303, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{!10, !291}
!305 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !209, file: !202, line: 1470, type: !303, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !209, file: !202, line: 1474, type: !307, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !301, !10}
!309 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !209, file: !202, line: 1478, type: !307, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !209, file: !202, line: 1485, type: !311, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !291}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 27, baseType: !314)
!314 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!315 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !209, file: !202, line: 1495, type: !316, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{!218, !291}
!318 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !209, file: !202, line: 1506, type: !316, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !209, file: !202, line: 1518, type: !311, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !209, file: !202, line: 1523, type: !321, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!218, !291, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!325 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !209, file: !202, line: 1534, type: !326, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!63, !301, !127}
!328 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !209, file: !202, line: 1545, type: !303, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !201, file: !202, line: 726, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!63, !127, !208}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !201, file: !202, line: 727, baseType: !330, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !201, file: !202, line: 728, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !127, !215}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !201, file: !202, line: 730, baseType: !330, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !201, file: !202, line: 731, baseType: !205, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !201, file: !202, line: 733, baseType: !205, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !201, file: !202, line: 735, baseType: !330, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !201, file: !202, line: 736, baseType: !343, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!63, !127, !208, !215, !208}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !201, file: !202, line: 738, baseType: !347, size: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!63, !127, !350, !208}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !201, file: !202, line: 740, baseType: !352, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!63, !127, !350, !63, !63, !208}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !201, file: !202, line: 742, baseType: !330, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !201, file: !202, line: 743, baseType: !357, size: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!63, !127, !208, !212, !215}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !201, file: !202, line: 745, baseType: !330, size: 64, offset: 832)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !201, file: !202, line: 746, baseType: !362, size: 64, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!63, !127, !365, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !201, file: !202, line: 747, baseType: !367, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !370, line: 10, size: 1024, flags: DIFlagTypePassByValue, elements: !371, identifier: "_ZTS30halide_device_interface_impl_t")
!370 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!371 = !{!372, !373, !374, !375, !376, !377, !381, !382, !383, !384, !385, !386, !387, !388, !389, !393}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !369, file: !370, line: 16, baseType: !77, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !369, file: !370, line: 17, baseType: !77, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !369, file: !370, line: 18, baseType: !330, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !369, file: !370, line: 19, baseType: !330, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !369, file: !370, line: 20, baseType: !330, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !369, file: !370, line: 21, baseType: !378, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!63, !127}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !369, file: !370, line: 22, baseType: !330, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !369, file: !370, line: 23, baseType: !330, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !369, file: !370, line: 24, baseType: !330, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !369, file: !370, line: 25, baseType: !330, size: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !369, file: !370, line: 26, baseType: !343, size: 64, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !369, file: !370, line: 28, baseType: !347, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !369, file: !370, line: 31, baseType: !352, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !369, file: !370, line: 35, baseType: !330, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !369, file: !370, line: 37, baseType: !390, size: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!63, !127, !208, !212}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !369, file: !370, line: 38, baseType: !330, size: 64, offset: 960)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "openglcompute_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE", scope: !2, file: !6, line: 929, type: !369, isLocal: false, isDefinition: true)
!396 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !397, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !398, retainedTypes: !399, globals: !568, imports: !569, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!398 = !{!226, !294}
!399 = !{!127, !400, !212, !482, !63, !17, !549, !18, !187, !550, !553, !556, !218, !557, !558, !559, !560, !195, !561, !191, !106, !562, !313, !36, !563, !365, !564, !565, !566, !567, !552, !555, !119, !236}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !402, file: !401, line: 203, baseType: !403)
!401 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!402 = !DINamespace(scope: !3)
!403 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !402, file: !401, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !404, templateParams: !479)
!404 = !{!405, !406, !407, !408, !409, !410, !414, !418, !422, !427, !430, !433, !436, !440, !443, !448, !452, !455, !461, !464, !467, !472, !473, !476, !477, !478}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !403, file: !401, line: 32, baseType: !195, size: 64, flags: DIFlagPublic)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !403, file: !401, line: 32, baseType: !195, size: 64, offset: 64, flags: DIFlagPublic)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !403, file: !401, line: 32, baseType: !195, size: 64, offset: 128, flags: DIFlagPublic)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !403, file: !401, line: 33, baseType: !127, size: 64, offset: 192, flags: DIFlagPublic)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !403, file: !401, line: 34, baseType: !10, size: 8, offset: 256, flags: DIFlagPublic)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !403, file: !401, line: 35, baseType: !411, size: 8, offset: 264, flags: DIFlagPublic)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 8, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 1)
!414 = !DISubprogram(name: "Printer", scope: !403, file: !401, line: 37, type: !415, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !127, !195}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!418 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !403, file: !401, line: 57, type: !419, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!421, !417, !183}
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !403, size: 64)
!422 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !403, file: !401, line: 67, type: !423, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubroutineType(types: !424)
!424 = !{!421, !417, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !37, line: 9, baseType: !426)
!426 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!427 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !403, file: !401, line: 72, type: !428, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!421, !417, !263}
!430 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !403, file: !401, line: 77, type: !431, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubroutineType(types: !432)
!432 = !{!421, !417, !212}
!433 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !403, file: !401, line: 82, type: !434, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{!421, !417, !261}
!436 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !403, file: !401, line: 87, type: !437, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{!421, !417, !439}
!439 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!440 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !403, file: !401, line: 92, type: !441, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = !DISubroutineType(types: !442)
!442 = !{!421, !417, !157}
!443 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !403, file: !401, line: 97, type: !444, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DISubroutineType(types: !445)
!445 = !{!421, !417, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!448 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !403, file: !401, line: 102, type: !449, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!421, !417, !451}
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!452 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !403, file: !401, line: 108, type: !453, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{!421, !417, !252}
!455 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !403, file: !401, line: 113, type: !456, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubroutineType(types: !457)
!457 = !{!421, !417, !458}
!458 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !202, line: 1550, baseType: !209)
!461 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !403, file: !401, line: 119, type: !462, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DISubroutineType(types: !463)
!463 = !{!183, !417}
!464 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !403, file: !401, line: 131, type: !465, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !417}
!467 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !403, file: !401, line: 139, type: !468, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{!212, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!472 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !403, file: !401, line: 143, type: !468, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !403, file: !401, line: 148, type: !474, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !417, !63}
!476 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !403, file: !401, line: 158, type: !462, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !403, file: !401, line: 162, type: !465, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubprogram(name: "~Printer", scope: !403, file: !401, line: 166, type: !465, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !{!480, !481}
!480 = !DITemplateValueParameter(name: "type", type: !63, value: i32 0)
!481 = !DITemplateValueParameter(name: "length", type: !213, value: i64 1024)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !402, file: !401, line: 199, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !402, file: !401, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !484, templateParams: !547)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !495, !499, !502, !505, !508, !511, !514, !517, !520, !523, !526, !529, !532, !535, !540, !541, !544, !545, !546}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !483, file: !401, line: 32, baseType: !195, size: 64, flags: DIFlagPublic)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !483, file: !401, line: 32, baseType: !195, size: 64, offset: 64, flags: DIFlagPublic)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !483, file: !401, line: 32, baseType: !195, size: 64, offset: 128, flags: DIFlagPublic)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !483, file: !401, line: 33, baseType: !127, size: 64, offset: 192, flags: DIFlagPublic)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !483, file: !401, line: 34, baseType: !10, size: 8, offset: 256, flags: DIFlagPublic)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !483, file: !401, line: 35, baseType: !411, size: 8, offset: 264, flags: DIFlagPublic)
!491 = !DISubprogram(name: "Printer", scope: !483, file: !401, line: 37, type: !492, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494, !127, !195}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!495 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !483, file: !401, line: 57, type: !496, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !494, !183}
!498 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !483, size: 64)
!499 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !483, file: !401, line: 67, type: !500, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!498, !494, !425}
!502 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !483, file: !401, line: 72, type: !503, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!498, !494, !263}
!505 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !483, file: !401, line: 77, type: !506, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!498, !494, !212}
!508 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !483, file: !401, line: 82, type: !509, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{!498, !494, !261}
!511 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !483, file: !401, line: 87, type: !512, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{!498, !494, !439}
!514 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !483, file: !401, line: 92, type: !515, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!498, !494, !157}
!517 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !483, file: !401, line: 97, type: !518, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!498, !494, !446}
!520 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !483, file: !401, line: 102, type: !521, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!498, !494, !451}
!523 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !483, file: !401, line: 108, type: !524, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{!498, !494, !252}
!526 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !483, file: !401, line: 113, type: !527, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!498, !494, !458}
!529 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !483, file: !401, line: 119, type: !530, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{!183, !494}
!532 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !483, file: !401, line: 131, type: !533, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !494}
!535 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !483, file: !401, line: 139, type: !536, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{!212, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!540 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !483, file: !401, line: 143, type: !536, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !483, file: !401, line: 148, type: !542, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !494, !63}
!544 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !483, file: !401, line: 158, type: !530, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !483, file: !401, line: 162, type: !533, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubprogram(name: "~Printer", scope: !483, file: !401, line: 166, type: !533, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !{!548, !481}
!548 = !DITemplateValueParameter(name: "type", type: !63, value: i32 1)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !37, line: 15, baseType: !552)
!552 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !37, line: 13, baseType: !555)
!555 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !402, file: !401, line: 198, baseType: !403)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!568 = !{!0, !185, !394, !199}
!569 = !{!570, !571, !572}
!570 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !396, entity: !3, file: !37, line: 225)
!571 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !396, entity: !3, file: !6, line: 50)
!572 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !396, entity: !2, file: !6, line: 585)
!573 = !{i32 7, !"Dwarf Version", i32 4}
!574 = !{i32 2, !"Debug Info Version", i32 3}
!575 = !{i32 1, !"wchar_size", i32 4}
!576 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!577 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !578, line: 47, type: !579, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !595)
!578 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581, !63, !425, !425}
!581 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !578, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !584, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!584 = !{!585, !586, !587, !588, !592, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !583, file: !578, line: 35, baseType: !212, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !583, file: !578, line: 35, baseType: !212, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !583, file: !578, line: 37, baseType: !212, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !583, file: !578, line: 39, baseType: !589, size: 1024, offset: 192)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 16)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !583, file: !578, line: 41, baseType: !589, size: 1024, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !583, file: !578, line: 42, baseType: !589, size: 1024, offset: 2240)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !583, file: !578, line: 44, baseType: !212, size: 64, offset: 3264)
!595 = !{!596, !597, !598, !599, !600, !603, !604}
!596 = !DILocalVariable(name: "copy", arg: 1, scope: !577, file: !578, line: 47, type: !581)
!597 = !DILocalVariable(name: "d", arg: 2, scope: !577, file: !578, line: 47, type: !63)
!598 = !DILocalVariable(name: "src_off", arg: 3, scope: !577, file: !578, line: 47, type: !425)
!599 = !DILocalVariable(name: "dst_off", arg: 4, scope: !577, file: !578, line: 47, type: !425)
!600 = !DILocalVariable(name: "from", scope: !601, file: !578, line: 54, type: !446)
!601 = distinct !DILexicalBlock(scope: !602, file: !578, line: 53, column: 18)
!602 = distinct !DILexicalBlock(scope: !577, file: !578, line: 53, column: 9)
!603 = !DILocalVariable(name: "to", scope: !601, file: !578, line: 55, type: !127)
!604 = !DILocalVariable(name: "i", scope: !605, file: !578, line: 58, type: !212)
!605 = distinct !DILexicalBlock(scope: !606, file: !578, line: 58, column: 9)
!606 = distinct !DILexicalBlock(scope: !602, file: !578, line: 57, column: 12)
!607 = !DILocation(line: 0, scope: !577)
!608 = !DILocation(line: 49, column: 14, scope: !577)
!609 = !DILocation(line: 49, column: 19, scope: !577)
!610 = !DILocation(line: 49, column: 22, scope: !577)
!611 = !{!612, !612, i64 0}
!612 = !{!"long long", !613, i64 0}
!613 = !{!"omnipotent char", !614, i64 0}
!614 = !{!"Simple C++ TBAA"}
!615 = !DILocation(line: 49, column: 37, scope: !577)
!616 = !DILocation(line: 49, column: 5, scope: !577)
!617 = !DILocation(line: 50, column: 10, scope: !618)
!618 = distinct !DILexicalBlock(scope: !577, file: !578, line: 49, column: 43)
!619 = distinct !{!619, !616, !620, !621}
!620 = !DILocation(line: 51, column: 5, scope: !577)
!621 = !{!"llvm.loop.mustprogress"}
!622 = !DILocation(line: 53, column: 11, scope: !602)
!623 = !DILocation(line: 53, column: 9, scope: !577)
!624 = !DILocation(line: 0, scope: !605)
!625 = !DILocation(line: 58, column: 34, scope: !626)
!626 = distinct !DILexicalBlock(scope: !605, file: !578, line: 58, column: 9)
!627 = !DILocation(line: 58, column: 32, scope: !626)
!628 = !DILocation(line: 58, column: 9, scope: !605)
!629 = !DILocation(line: 54, column: 42, scope: !601)
!630 = !{!631, !612, i64 0}
!631 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !612, i64 0, !612, i64 8, !612, i64 16, !613, i64 24, !613, i64 152, !613, i64 280, !612, i64 408}
!632 = !DILocation(line: 54, column: 46, scope: !601)
!633 = !DILocation(line: 54, column: 28, scope: !601)
!634 = !DILocation(line: 0, scope: !601)
!635 = !DILocation(line: 55, column: 34, scope: !601)
!636 = !{!631, !612, i64 8}
!637 = !DILocation(line: 55, column: 38, scope: !601)
!638 = !DILocation(line: 55, column: 20, scope: !601)
!639 = !DILocation(line: 56, column: 31, scope: !601)
!640 = !{!631, !612, i64 408}
!641 = !DILocation(line: 56, column: 9, scope: !601)
!642 = !DILocation(line: 57, column: 5, scope: !601)
!643 = !DILocation(line: 59, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !626, file: !578, line: 58, column: 55)
!645 = !DILocation(line: 60, column: 24, scope: !644)
!646 = !DILocation(line: 60, column: 21, scope: !644)
!647 = !DILocation(line: 61, column: 24, scope: !644)
!648 = !DILocation(line: 61, column: 21, scope: !644)
!649 = !DILocation(line: 58, column: 51, scope: !626)
!650 = distinct !{!650, !628, !651, !621}
!651 = !DILocation(line: 62, column: 9, scope: !605)
!652 = !DILocation(line: 64, column: 1, scope: !577)
!653 = !DISubprogram(name: "memcpy", scope: !37, file: !37, line: 94, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!127, !127, !446, !314}
!656 = !{}
!657 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !578, line: 66, type: !658, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !581, !127}
!660 = !{!661, !662}
!661 = !DILocalVariable(name: "copy", arg: 1, scope: !657, file: !578, line: 66, type: !581)
!662 = !DILocalVariable(name: "user_context", arg: 2, scope: !657, file: !578, line: 66, type: !127)
!663 = !DILocation(line: 0, scope: !657)
!664 = !DILocation(line: 68, column: 14, scope: !665)
!665 = distinct !DILexicalBlock(scope: !657, file: !578, line: 68, column: 9)
!666 = !DILocation(line: 68, column: 26, scope: !665)
!667 = !DILocation(line: 68, column: 18, scope: !665)
!668 = !DILocation(line: 68, column: 9, scope: !657)
!669 = !DILocation(line: 69, column: 58, scope: !670)
!670 = distinct !DILexicalBlock(scope: !665, file: !578, line: 68, column: 31)
!671 = !{!631, !612, i64 16}
!672 = !DILocation(line: 69, column: 9, scope: !670)
!673 = !DILocation(line: 70, column: 5, scope: !670)
!674 = !DILocalVariable(name: "this", arg: 1, scope: !675, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!675 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !403, file: !401, line: 37, type: !415, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !414, retainedNodes: !676)
!676 = !{!674, !677, !678}
!677 = !DILocalVariable(name: "ctx", arg: 2, scope: !675, file: !401, line: 37, type: !127)
!678 = !DILocalVariable(name: "mem", arg: 3, scope: !675, file: !401, line: 37, type: !195)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!680 = !DILocation(line: 0, scope: !675, inlinedAt: !681)
!681 = distinct !DILocation(line: 71, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !665, file: !578, line: 70, column: 12)
!683 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !681)
!684 = distinct !DILexicalBlock(scope: !685, file: !401, line: 43, column: 16)
!685 = distinct !DILexicalBlock(scope: !686, file: !401, line: 41, column: 20)
!686 = distinct !DILexicalBlock(scope: !687, file: !401, line: 39, column: 13)
!687 = distinct !DILexicalBlock(scope: !675, file: !401, line: 38, column: 54)
!688 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !681)
!689 = distinct !DILexicalBlock(scope: !687, file: !401, line: 48, column: 13)
!690 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !681)
!691 = !DILocalVariable(name: "this", arg: 1, scope: !692, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!692 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !403, file: !401, line: 57, type: !419, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !418, retainedNodes: !693)
!693 = !{!691, !694}
!694 = !DILocalVariable(name: "arg", arg: 2, scope: !692, file: !401, line: 57, type: !183)
!695 = !DILocation(line: 0, scope: !692, inlinedAt: !696)
!696 = distinct !DILocation(line: 71, column: 29, scope: !682)
!697 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !696)
!698 = distinct !DILexicalBlock(scope: !699, file: !401, line: 61, column: 16)
!699 = distinct !DILexicalBlock(scope: !692, file: !401, line: 59, column: 13)
!700 = !DILocalVariable(name: "this", arg: 1, scope: !701, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!701 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !403, file: !401, line: 166, type: !465, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !478, retainedNodes: !702)
!702 = !{!700}
!703 = !DILocation(line: 0, scope: !701, inlinedAt: !704)
!704 = distinct !DILocation(line: 71, column: 9, scope: !682)
!705 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !704)
!706 = distinct !DILexicalBlock(scope: !707, file: !401, line: 167, column: 19)
!707 = distinct !DILexicalBlock(scope: !708, file: !401, line: 167, column: 13)
!708 = distinct !DILexicalBlock(scope: !701, file: !401, line: 166, column: 16)
!709 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !704)
!710 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !681)
!711 = distinct !DILexicalBlock(scope: !689, file: !401, line: 48, column: 18)
!712 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !681)
!713 = !{!613, !613, i64 0}
!714 = !DILocalVariable(name: "this", arg: 1, scope: !715, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!715 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !403, file: !401, line: 162, type: !465, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !477, retainedNodes: !716)
!716 = !{!714}
!717 = !DILocation(line: 0, scope: !715, inlinedAt: !718)
!718 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !704)
!719 = distinct !DILexicalBlock(scope: !707, file: !401, line: 169, column: 16)
!720 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !718)
!721 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !718)
!722 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !718)
!723 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !704)
!724 = distinct !DILexicalBlock(scope: !725, file: !401, line: 173, column: 46)
!725 = distinct !DILexicalBlock(scope: !726, file: !401, line: 173, column: 24)
!726 = distinct !DILexicalBlock(scope: !719, file: !401, line: 171, column: 17)
!727 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !704)
!728 = distinct !DILexicalBlock(scope: !729, file: !401, line: 180, column: 40)
!729 = distinct !DILexicalBlock(scope: !708, file: !401, line: 180, column: 13)
!730 = !DILocation(line: 73, column: 1, scope: !657)
!731 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !578, line: 76, type: !732, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!583, !734, !10, !734, !10}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!735 = !{!736, !737, !738, !739, !740, !741, !743, !745, !748, !751, !753, !756, !757, !758, !760}
!736 = !DILocalVariable(name: "src", arg: 1, scope: !731, file: !578, line: 76, type: !734)
!737 = !DILocalVariable(name: "src_host", arg: 2, scope: !731, file: !578, line: 76, type: !10)
!738 = !DILocalVariable(name: "dst", arg: 3, scope: !731, file: !578, line: 77, type: !734)
!739 = !DILocalVariable(name: "dst_host", arg: 4, scope: !731, file: !578, line: 77, type: !10)
!740 = !DILocalVariable(name: "c", scope: !731, file: !578, line: 79, type: !583)
!741 = !DILocalVariable(name: "i", scope: !742, file: !578, line: 83, type: !63)
!742 = distinct !DILexicalBlock(scope: !731, file: !578, line: 83, column: 5)
!743 = !DILocalVariable(name: "i", scope: !744, file: !578, line: 91, type: !63)
!744 = distinct !DILexicalBlock(scope: !731, file: !578, line: 91, column: 5)
!745 = !DILocalVariable(name: "zero", scope: !746, file: !578, line: 100, type: !583)
!746 = distinct !DILexicalBlock(scope: !747, file: !578, line: 98, column: 42)
!747 = distinct !DILexicalBlock(scope: !731, file: !578, line: 96, column: 9)
!748 = !DILocalVariable(name: "zero", scope: !749, file: !578, line: 107, type: !583)
!749 = distinct !DILexicalBlock(scope: !750, file: !578, line: 104, column: 28)
!750 = distinct !DILexicalBlock(scope: !731, file: !578, line: 104, column: 9)
!751 = !DILocalVariable(name: "i", scope: !752, file: !578, line: 115, type: !63)
!752 = distinct !DILexicalBlock(scope: !731, file: !578, line: 115, column: 5)
!753 = !DILocalVariable(name: "dst_stride_bytes", scope: !754, file: !578, line: 117, type: !212)
!754 = distinct !DILexicalBlock(scope: !755, file: !578, line: 115, column: 47)
!755 = distinct !DILexicalBlock(scope: !752, file: !578, line: 115, column: 5)
!756 = !DILocalVariable(name: "src_stride_bytes", scope: !754, file: !578, line: 118, type: !212)
!757 = !DILocalVariable(name: "insert", scope: !754, file: !578, line: 120, type: !63)
!758 = !DILocalVariable(name: "j", scope: !759, file: !578, line: 128, type: !63)
!759 = distinct !DILexicalBlock(scope: !754, file: !578, line: 128, column: 9)
!760 = !DILocalVariable(name: "j", scope: !761, file: !578, line: 151, type: !63)
!761 = distinct !DILexicalBlock(scope: !762, file: !578, line: 151, column: 9)
!762 = distinct !DILexicalBlock(scope: !731, file: !578, line: 145, column: 51)
!763 = !DILocation(line: 0, scope: !731)
!764 = !DILocation(line: 79, column: 5, scope: !731)
!765 = !DILocation(line: 79, column: 17, scope: !731)
!766 = !DILocation(line: 80, column: 13, scope: !731)
!767 = !DILocation(line: 80, column: 39, scope: !731)
!768 = !{!769, !770, i64 16}
!769 = !{!"_ZTS15halide_buffer_t", !612, i64 0, !770, i64 8, !770, i64 16, !612, i64 24, !771, i64 32, !774, i64 36, !770, i64 40, !770, i64 48}
!770 = !{!"any pointer", !613, i64 0}
!771 = !{!"_ZTS13halide_type_t", !772, i64 0, !613, i64 1, !773, i64 2}
!772 = !{!"_ZTS18halide_type_code_t", !613, i64 0}
!773 = !{!"short", !613, i64 0}
!774 = !{!"int", !613, i64 0}
!775 = !DILocation(line: 80, column: 24, scope: !731)
!776 = !DILocation(line: 80, column: 51, scope: !731)
!777 = !{!769, !612, i64 0}
!778 = !DILocation(line: 80, column: 7, scope: !731)
!779 = !DILocation(line: 80, column: 11, scope: !731)
!780 = !DILocation(line: 81, column: 13, scope: !731)
!781 = !DILocation(line: 81, column: 39, scope: !731)
!782 = !DILocation(line: 81, column: 24, scope: !731)
!783 = !DILocation(line: 81, column: 51, scope: !731)
!784 = !DILocation(line: 81, column: 7, scope: !731)
!785 = !DILocation(line: 81, column: 11, scope: !731)
!786 = !DILocalVariable(name: "this", arg: 1, scope: !787, type: !789, flags: DIFlagArtificial | DIFlagObjectPointer)
!787 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !222, file: !202, line: 481, type: !256, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !255, retainedNodes: !788)
!788 = !{!786}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!790 = !DILocation(line: 0, scope: !787, inlinedAt: !791)
!791 = distinct !DILocation(line: 82, column: 30, scope: !731)
!792 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !791)
!793 = !{!771, !613, i64 1}
!794 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !791)
!795 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !791)
!796 = !DILocation(line: 82, column: 20, scope: !731)
!797 = !DILocation(line: 82, column: 7, scope: !731)
!798 = !DILocation(line: 82, column: 18, scope: !731)
!799 = !DILocation(line: 0, scope: !742)
!800 = !DILocation(line: 84, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !578, line: 83, column: 45)
!802 = distinct !DILexicalBlock(scope: !742, file: !578, line: 83, column: 5)
!803 = !DILocation(line: 84, column: 21, scope: !801)
!804 = !DILocation(line: 85, column: 9, scope: !801)
!805 = !DILocation(line: 85, column: 31, scope: !801)
!806 = !DILocation(line: 86, column: 9, scope: !801)
!807 = !DILocation(line: 86, column: 31, scope: !801)
!808 = !DILocation(line: 90, column: 7, scope: !731)
!809 = !DILocation(line: 0, scope: !744)
!810 = !DILocation(line: 91, column: 30, scope: !811)
!811 = distinct !DILexicalBlock(scope: !744, file: !578, line: 91, column: 5)
!812 = !{!769, !774, i64 36}
!813 = !DILocation(line: 91, column: 23, scope: !811)
!814 = !DILocation(line: 91, column: 5, scope: !744)
!815 = !{!769, !770, i64 40}
!816 = !DILocation(line: 94, column: 17, scope: !731)
!817 = !DILocation(line: 94, column: 22, scope: !731)
!818 = !DILocation(line: 96, column: 33, scope: !747)
!819 = !DILocation(line: 96, column: 25, scope: !747)
!820 = !DILocation(line: 96, column: 44, scope: !747)
!821 = !DILocation(line: 92, column: 46, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !578, line: 91, column: 47)
!823 = !{!824, !774, i64 8}
!824 = !{!"_ZTS18halide_dimension_t", !774, i64 0, !774, i64 4, !774, i64 8, !774, i64 12}
!825 = !DILocation(line: 92, column: 34, scope: !822)
!826 = !DILocation(line: 92, column: 68, scope: !822)
!827 = !{!824, !774, i64 0}
!828 = !DILocation(line: 92, column: 86, scope: !822)
!829 = !DILocation(line: 92, column: 72, scope: !822)
!830 = !DILocation(line: 92, column: 55, scope: !822)
!831 = !DILocation(line: 92, column: 53, scope: !822)
!832 = !DILocation(line: 92, column: 21, scope: !822)
!833 = !DILocation(line: 91, column: 43, scope: !811)
!834 = distinct !{!834, !814, !835, !621}
!835 = !DILocation(line: 93, column: 5, scope: !744)
!836 = !DILocation(line: 0, scope: !787, inlinedAt: !837)
!837 = distinct !DILocation(line: 97, column: 19, scope: !747)
!838 = !DILocation(line: 0, scope: !787, inlinedAt: !839)
!839 = distinct !DILocation(line: 97, column: 40, scope: !747)
!840 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !839)
!841 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !839)
!842 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !839)
!843 = !DILocation(line: 97, column: 27, scope: !747)
!844 = !DILocation(line: 97, column: 48, scope: !747)
!845 = !DILocation(line: 100, column: 21, scope: !746)
!846 = !DILocation(line: 101, column: 9, scope: !746)
!847 = !DILocation(line: 104, column: 22, scope: !750)
!848 = !DILocation(line: 104, column: 9, scope: !731)
!849 = !DILocation(line: 0, scope: !752)
!850 = !DILocation(line: 115, column: 5, scope: !752)
!851 = !DILocation(line: 115, column: 23, scope: !755)
!852 = !DILocation(line: 107, column: 21, scope: !749)
!853 = !DILocation(line: 108, column: 9, scope: !749)
!854 = !DILocation(line: 144, column: 14, scope: !731)
!855 = !DILocation(line: 144, column: 28, scope: !731)
!856 = !DILocation(line: 144, column: 25, scope: !731)
!857 = !DILocation(line: 144, column: 50, scope: !731)
!858 = !DILocation(line: 145, column: 28, scope: !731)
!859 = !DILocation(line: 117, column: 59, scope: !754)
!860 = !DILocation(line: 117, column: 47, scope: !754)
!861 = !DILocation(line: 0, scope: !787, inlinedAt: !862)
!862 = distinct !DILocation(line: 117, column: 78, scope: !754)
!863 = !DILocation(line: 117, column: 66, scope: !754)
!864 = !DILocation(line: 0, scope: !754)
!865 = !DILocation(line: 118, column: 59, scope: !754)
!866 = !DILocation(line: 118, column: 47, scope: !754)
!867 = !DILocation(line: 0, scope: !787, inlinedAt: !868)
!868 = distinct !DILocation(line: 118, column: 78, scope: !754)
!869 = !DILocation(line: 118, column: 66, scope: !754)
!870 = !DILocation(line: 121, column: 33, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !578, line: 121, column: 9)
!872 = distinct !DILexicalBlock(scope: !754, file: !578, line: 121, column: 9)
!873 = !DILocation(line: 121, column: 9, scope: !872)
!874 = !DILocation(line: 128, column: 27, scope: !875)
!875 = distinct !DILexicalBlock(scope: !759, file: !578, line: 128, column: 9)
!876 = !DILocation(line: 124, column: 36, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !578, line: 124, column: 17)
!878 = distinct !DILexicalBlock(scope: !871, file: !578, line: 121, column: 48)
!879 = !DILocation(line: 124, column: 34, scope: !877)
!880 = !DILocation(line: 124, column: 63, scope: !877)
!881 = !DILocation(line: 121, column: 44, scope: !871)
!882 = distinct !{!882, !873, !883, !621}
!883 = !DILocation(line: 127, column: 9, scope: !872)
!884 = !DILocation(line: 0, scope: !872)
!885 = !DILocation(line: 0, scope: !759)
!886 = !DILocation(line: 128, column: 9, scope: !759)
!887 = !DILocation(line: 133, column: 40, scope: !754)
!888 = !{!824, !774, i64 4}
!889 = !DILocation(line: 133, column: 28, scope: !754)
!890 = !DILocation(line: 133, column: 9, scope: !754)
!891 = !DILocation(line: 133, column: 26, scope: !754)
!892 = !DILocation(line: 135, column: 9, scope: !754)
!893 = !DILocation(line: 135, column: 36, scope: !754)
!894 = !DILocation(line: 136, column: 9, scope: !754)
!895 = !DILocation(line: 136, column: 36, scope: !754)
!896 = !DILocation(line: 115, column: 43, scope: !755)
!897 = distinct !{!897, !850, !898, !621}
!898 = !DILocation(line: 137, column: 5, scope: !752)
!899 = !DILocation(line: 129, column: 38, scope: !900)
!900 = distinct !DILexicalBlock(scope: !875, file: !578, line: 128, column: 42)
!901 = !DILocation(line: 129, column: 27, scope: !900)
!902 = !DILocation(line: 129, column: 13, scope: !900)
!903 = !DILocation(line: 129, column: 25, scope: !900)
!904 = !DILocation(line: 130, column: 37, scope: !900)
!905 = !DILocation(line: 130, column: 13, scope: !900)
!906 = !DILocation(line: 130, column: 35, scope: !900)
!907 = !DILocation(line: 131, column: 37, scope: !900)
!908 = !DILocation(line: 131, column: 13, scope: !900)
!909 = !DILocation(line: 131, column: 35, scope: !900)
!910 = distinct !{!910, !886, !911, !621}
!911 = !DILocation(line: 132, column: 9, scope: !759)
!912 = !DILocation(line: 145, column: 25, scope: !731)
!913 = !DILocation(line: 144, column: 5, scope: !731)
!914 = !DILocation(line: 147, column: 25, scope: !762)
!915 = !DILocation(line: 147, column: 22, scope: !762)
!916 = !DILocation(line: 0, scope: !761)
!917 = !DILocation(line: 152, column: 31, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !578, line: 151, column: 49)
!919 = distinct !DILexicalBlock(scope: !761, file: !578, line: 151, column: 9)
!920 = !DILocation(line: 152, column: 29, scope: !918)
!921 = !DILocation(line: 153, column: 41, scope: !918)
!922 = !DILocation(line: 153, column: 39, scope: !918)
!923 = !DILocation(line: 154, column: 41, scope: !918)
!924 = !DILocation(line: 154, column: 39, scope: !918)
!925 = !DILocation(line: 156, column: 37, scope: !762)
!926 = !DILocation(line: 157, column: 47, scope: !762)
!927 = !DILocation(line: 158, column: 47, scope: !762)
!928 = distinct !{!928, !913, !929, !621}
!929 = !DILocation(line: 159, column: 5, scope: !731)
!930 = !DILocation(line: 160, column: 12, scope: !731)
!931 = !{i64 0, i64 8, !611, i64 8, i64 8, !611, i64 16, i64 8, !611, i64 24, i64 128, !713, i64 152, i64 128, !713, i64 280, i64 128, !713, i64 408, i64 8, !611}
!932 = !DILocation(line: 160, column: 5, scope: !731)
!933 = !DILocation(line: 161, column: 1, scope: !731)
!934 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !578, line: 163, type: !935, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!583, !734}
!937 = !{!938}
!938 = !DILocalVariable(name: "buf", arg: 1, scope: !934, file: !578, line: 163, type: !734)
!939 = !DILocation(line: 0, scope: !934)
!940 = !DILocation(line: 164, column: 12, scope: !934)
!941 = !DILocation(line: 164, column: 5, scope: !934)
!942 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !578, line: 167, type: !935, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !943)
!943 = !{!944}
!944 = !DILocalVariable(name: "buf", arg: 1, scope: !942, file: !578, line: 167, type: !734)
!945 = !DILocation(line: 0, scope: !942)
!946 = !DILocation(line: 168, column: 12, scope: !942)
!947 = !DILocation(line: 168, column: 5, scope: !942)
!948 = distinct !DISubprogram(name: "gl_error_name", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi", scope: !2, file: !6, line: 59, type: !949, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!183, !263}
!951 = !{!952}
!952 = !DILocalVariable(name: "err", arg: 1, scope: !948, file: !6, line: 59, type: !263)
!953 = !DILocation(line: 0, scope: !948)
!954 = !DILocation(line: 60, column: 5, scope: !948)
!955 = !DILocation(line: 65, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !6, line: 60, column: 18)
!957 = !DILocation(line: 68, column: 9, scope: !956)
!958 = !DILocation(line: 71, column: 9, scope: !956)
!959 = !DILocation(line: 74, column: 9, scope: !956)
!960 = !DILocation(line: 77, column: 9, scope: !956)
!961 = !DILocation(line: 80, column: 9, scope: !956)
!962 = !DILocation(line: 83, column: 9, scope: !956)
!963 = !DILocation(line: 86, column: 9, scope: !956)
!964 = !DILocation(line: 89, column: 5, scope: !948)
!965 = !DILocation(line: 90, column: 1, scope: !948)
!966 = distinct !DISubprogram(name: "find_kernel_by_name", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE", scope: !2, file: !6, line: 114, type: !967, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !971)
!967 = !DISubroutineType(types: !968)
!968 = !{!191, !183, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(name: "kernel_name", arg: 1, scope: !966, file: !6, line: 114, type: !183)
!973 = !DILocalVariable(name: "module", arg: 2, scope: !966, file: !6, line: 114, type: !969)
!974 = !DILocalVariable(name: "kernel", scope: !966, file: !6, line: 115, type: !191)
!975 = !DILocation(line: 0, scope: !966)
!976 = !DILocation(line: 115, column: 34, scope: !966)
!977 = !{!770, !770, i64 0}
!978 = !DILocation(line: 116, column: 12, scope: !966)
!979 = !DILocation(line: 116, column: 19, scope: !966)
!980 = !DILocation(line: 116, column: 50, scope: !966)
!981 = !{!982, !770, i64 0}
!982 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE", !770, i64 0, !774, i64 8, !770, i64 16}
!983 = !DILocation(line: 116, column: 22, scope: !966)
!984 = !DILocation(line: 116, column: 63, scope: !966)
!985 = !DILocation(line: 116, column: 5, scope: !966)
!986 = !DILocation(line: 117, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !966, file: !6, line: 116, column: 69)
!988 = distinct !{!988, !985, !989, !621}
!989 = !DILocation(line: 118, column: 5, scope: !966)
!990 = !DILocation(line: 119, column: 5, scope: !966)
!991 = !DISubprogram(name: "strcmp", scope: !37, file: !37, line: 90, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!992 = !DISubroutineType(types: !993)
!993 = !{!63, !183, !183}
!994 = distinct !DISubprogram(name: "CheckAndReportError", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc", scope: !7, file: !6, line: 135, type: !181, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !180, retainedNodes: !995)
!995 = !{!996, !998, !999, !1000}
!996 = !DILocalVariable(name: "this", arg: 1, scope: !994, type: !997, flags: DIFlagArtificial | DIFlagObjectPointer)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!998 = !DILocalVariable(name: "user_context", arg: 2, scope: !994, file: !6, line: 135, type: !127)
!999 = !DILocalVariable(name: "location", arg: 3, scope: !994, file: !6, line: 135, type: !183)
!1000 = !DILocalVariable(name: "err", scope: !994, file: !6, line: 136, type: !24)
!1001 = !DILocation(line: 0, scope: !994)
!1002 = !DILocation(line: 136, column: 18, scope: !994)
!1003 = !{!1004, !770, i64 112}
!1004 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE", !1005, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120, !770, i64 128, !770, i64 136, !770, i64 144, !770, i64 152, !770, i64 160, !770, i64 168, !770, i64 176, !770, i64 184, !770, i64 192, !770, i64 200, !770, i64 208, !770, i64 216, !770, i64 224, !770, i64 232, !770, i64 240}
!1005 = !{!"bool", !613, i64 0}
!1006 = !DILocation(line: 137, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !994, file: !6, line: 137, column: 9)
!1008 = !DILocation(line: 137, column: 9, scope: !994)
!1009 = !DILocalVariable(name: "this", arg: 1, scope: !1010, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1010 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !483, file: !401, line: 37, type: !492, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !491, retainedNodes: !1011)
!1011 = !{!1009, !1012, !1013}
!1012 = !DILocalVariable(name: "ctx", arg: 2, scope: !1010, file: !401, line: 37, type: !127)
!1013 = !DILocalVariable(name: "mem", arg: 3, scope: !1010, file: !401, line: 37, type: !195)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 138, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1007, file: !6, line: 137, column: 29)
!1018 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1016)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !401, line: 43, column: 16)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !401, line: 41, column: 20)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !401, line: 39, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1010, file: !401, line: 38, column: 54)
!1023 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1016)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !401, line: 48, column: 13)
!1025 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1016)
!1026 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1016)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !401, line: 48, column: 18)
!1028 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1016)
!1029 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !1016)
!1030 = !DILocation(line: 0, scope: !1024, inlinedAt: !1016)
!1031 = !DILocalVariable(name: "this", arg: 1, scope: !1032, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1032 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !483, file: !401, line: 57, type: !496, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !495, retainedNodes: !1033)
!1033 = !{!1031, !1034}
!1034 = !DILocalVariable(name: "arg", arg: 2, scope: !1032, file: !401, line: 57, type: !183)
!1035 = !DILocation(line: 0, scope: !1032, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 139, column: 13, scope: !1017)
!1037 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1036)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !401, line: 61, column: 16)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !401, line: 59, column: 13)
!1040 = !DILocation(line: 139, column: 35, scope: !1017)
!1041 = !DILocation(line: 0, scope: !1032, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 139, column: 32, scope: !1017)
!1043 = !DILocation(line: 59, column: 17, scope: !1039, inlinedAt: !1042)
!1044 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !1042)
!1045 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !1042)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !401, line: 59, column: 29)
!1047 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !1042)
!1048 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1042)
!1049 = !DILocation(line: 0, scope: !1039, inlinedAt: !1042)
!1050 = !DILocation(line: 0, scope: !1032, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 140, column: 13, scope: !1017)
!1052 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1051)
!1053 = !DILocalVariable(name: "this", arg: 1, scope: !1054, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1054 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !483, file: !401, line: 72, type: !503, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !502, retainedNodes: !1055)
!1055 = !{!1053, !1056}
!1056 = !DILocalVariable(name: "arg", arg: 2, scope: !1054, file: !401, line: 72, type: !263)
!1057 = !DILocation(line: 0, scope: !1054, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 140, column: 20, scope: !1017)
!1059 = !DILocation(line: 73, column: 48, scope: !1054, inlinedAt: !1058)
!1060 = !DILocation(line: 73, column: 15, scope: !1054, inlinedAt: !1058)
!1061 = !DILocation(line: 0, scope: !1032, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 140, column: 32, scope: !1017)
!1063 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1062)
!1064 = !DILocation(line: 0, scope: !1032, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 141, column: 13, scope: !1017)
!1066 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1065)
!1067 = !DILocation(line: 0, scope: !1032, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 141, column: 23, scope: !1017)
!1069 = !DILocation(line: 59, column: 17, scope: !1039, inlinedAt: !1068)
!1070 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !1068)
!1071 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !1068)
!1072 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !1068)
!1073 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1068)
!1074 = !DILocation(line: 0, scope: !1039, inlinedAt: !1068)
!1075 = !DILocation(line: 0, scope: !1032, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 141, column: 35, scope: !1017)
!1077 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1076)
!1078 = !DILocalVariable(name: "this", arg: 1, scope: !1079, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1079 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !483, file: !401, line: 166, type: !533, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !546, retainedNodes: !1080)
!1080 = !{!1078}
!1081 = !DILocation(line: 0, scope: !1079, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 138, column: 9, scope: !1017)
!1083 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !1082)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !401, line: 166, column: 16)
!1085 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1082)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !401, line: 167, column: 19)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !401, line: 167, column: 13)
!1088 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1082)
!1089 = !DILocalVariable(name: "this", arg: 1, scope: !1090, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1090 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !483, file: !401, line: 162, type: !533, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !545, retainedNodes: !1091)
!1091 = !{!1089}
!1092 = !DILocation(line: 0, scope: !1090, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1082)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !401, line: 169, column: 16)
!1095 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1093)
!1096 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1093)
!1097 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1093)
!1098 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1082)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !401, line: 171, column: 39)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !401, line: 171, column: 17)
!1101 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1082)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !401, line: 180, column: 40)
!1103 = distinct !DILexicalBlock(scope: !1084, file: !401, line: 180, column: 13)
!1104 = !DILocation(line: 142, column: 9, scope: !1017)
!1105 = !DILocation(line: 145, column: 1, scope: !994)
!1106 = distinct !DISubprogram(name: "debug_buffer", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t", scope: !2, file: !6, line: 154, type: !1107, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !127, !560}
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "user_context", arg: 1, scope: !1106, file: !6, line: 154, type: !127)
!1111 = !DILocalVariable(name: "buf", arg: 2, scope: !1106, file: !6, line: 154, type: !560)
!1112 = !DILocation(line: 0, scope: !1106)
!1113 = !DILocation(line: 155, column: 5, scope: !1106)
!1114 = !DILocation(line: 0, scope: !675, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 155, column: 5, scope: !1106)
!1116 = !DILocation(line: 38, column: 11, scope: !675, inlinedAt: !1115)
!1117 = !{!1118, !770, i64 24}
!1118 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !1005, i64 32, !613, i64 33}
!1119 = !DILocation(line: 38, column: 30, scope: !675, inlinedAt: !1115)
!1120 = !{!1118, !1005, i64 32}
!1121 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1115)
!1122 = !DILocation(line: 44, column: 13, scope: !684, inlinedAt: !1115)
!1123 = !DILocation(line: 44, column: 17, scope: !684, inlinedAt: !1115)
!1124 = !{!1118, !770, i64 0}
!1125 = !DILocation(line: 47, column: 9, scope: !687, inlinedAt: !1115)
!1126 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1115)
!1127 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1115)
!1128 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1115)
!1129 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1115)
!1130 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1115)
!1131 = !DILocation(line: 0, scope: !689, inlinedAt: !1115)
!1132 = !DILocation(line: 53, column: 13, scope: !1133, inlinedAt: !1115)
!1133 = distinct !DILexicalBlock(scope: !689, file: !401, line: 51, column: 16)
!1134 = !DILocation(line: 53, column: 17, scope: !1133, inlinedAt: !1115)
!1135 = !DILocation(line: 0, scope: !692, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 156, column: 9, scope: !1106)
!1137 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1136)
!1138 = !DILocation(line: 156, column: 33, scope: !1106)
!1139 = !DILocalVariable(name: "this", arg: 1, scope: !1140, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1140 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !403, file: !401, line: 77, type: !431, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !430, retainedNodes: !1141)
!1141 = !{!1139, !1142}
!1142 = !DILocalVariable(name: "arg", arg: 2, scope: !1140, file: !401, line: 77, type: !212)
!1143 = !DILocation(line: 0, scope: !1140, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 156, column: 25, scope: !1106)
!1145 = !DILocation(line: 78, column: 15, scope: !1140, inlinedAt: !1144)
!1146 = !DILocation(line: 0, scope: !692, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 156, column: 40, scope: !1106)
!1148 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1147)
!1149 = !DILocation(line: 0, scope: !692, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 157, column: 9, scope: !1106)
!1151 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1150)
!1152 = !DILocation(line: 157, column: 45, scope: !1106)
!1153 = !DILocalVariable(name: "this", arg: 1, scope: !1154, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1154 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !403, file: !401, line: 82, type: !434, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !433, retainedNodes: !1155)
!1155 = !{!1153, !1156}
!1156 = !DILocalVariable(name: "arg", arg: 2, scope: !1154, file: !401, line: 82, type: !261)
!1157 = !DILocation(line: 0, scope: !1154, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 157, column: 29, scope: !1106)
!1159 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !1158)
!1160 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !1158)
!1161 = !DILocation(line: 0, scope: !692, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 157, column: 52, scope: !1106)
!1163 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1162)
!1164 = !DILocation(line: 0, scope: !692, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 158, column: 9, scope: !1106)
!1166 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1165)
!1167 = !DILocation(line: 158, column: 31, scope: !1106)
!1168 = !DILocalVariable(name: "this", arg: 1, scope: !1169, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1169 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !403, file: !401, line: 97, type: !444, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !443, retainedNodes: !1170)
!1170 = !{!1168, !1171}
!1171 = !DILocalVariable(name: "arg", arg: 2, scope: !1169, file: !401, line: 97, type: !446)
!1172 = !DILocation(line: 0, scope: !1169, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 158, column: 23, scope: !1106)
!1174 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !1173)
!1175 = !DILocation(line: 0, scope: !692, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 158, column: 36, scope: !1106)
!1177 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1176)
!1178 = !DILocation(line: 0, scope: !692, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 159, column: 9, scope: !1106)
!1180 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1179)
!1181 = !DILocation(line: 159, column: 33, scope: !1106)
!1182 = !DILocation(line: 159, column: 40, scope: !1106)
!1183 = !DILocalVariable(name: "this", arg: 1, scope: !1184, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1184 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !403, file: !401, line: 72, type: !428, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !427, retainedNodes: !1185)
!1185 = !{!1183, !1186}
!1186 = !DILocalVariable(name: "arg", arg: 2, scope: !1184, file: !401, line: 72, type: !263)
!1187 = !DILocation(line: 0, scope: !1184, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 159, column: 25, scope: !1106)
!1189 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1188)
!1190 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1188)
!1191 = !DILocation(line: 0, scope: !692, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 159, column: 47, scope: !1106)
!1193 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1192)
!1194 = !DILocation(line: 159, column: 62, scope: !1106)
!1195 = !DILocation(line: 159, column: 69, scope: !1106)
!1196 = !DILocation(line: 0, scope: !1184, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 159, column: 54, scope: !1106)
!1198 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1197)
!1199 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1197)
!1200 = !DILocation(line: 0, scope: !692, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 160, column: 9, scope: !1106)
!1202 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1201)
!1203 = !DILocation(line: 160, column: 24, scope: !1106)
!1204 = !DILocation(line: 160, column: 31, scope: !1106)
!1205 = !DILocation(line: 0, scope: !1184, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 160, column: 16, scope: !1106)
!1207 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1206)
!1208 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1206)
!1209 = !DILocation(line: 0, scope: !692, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 160, column: 38, scope: !1106)
!1211 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1210)
!1212 = !DILocation(line: 160, column: 53, scope: !1106)
!1213 = !DILocation(line: 160, column: 60, scope: !1106)
!1214 = !DILocation(line: 0, scope: !1184, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 160, column: 45, scope: !1106)
!1216 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1215)
!1217 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1215)
!1218 = !DILocation(line: 0, scope: !692, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 160, column: 67, scope: !1106)
!1220 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1219)
!1221 = !DILocation(line: 0, scope: !692, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 161, column: 9, scope: !1106)
!1223 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1222)
!1224 = !DILocation(line: 161, column: 33, scope: !1106)
!1225 = !DILocation(line: 161, column: 40, scope: !1106)
!1226 = !DILocation(line: 0, scope: !1184, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 161, column: 25, scope: !1106)
!1228 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1227)
!1229 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1227)
!1230 = !DILocation(line: 0, scope: !692, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 161, column: 47, scope: !1106)
!1232 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1231)
!1233 = !DILocation(line: 161, column: 62, scope: !1106)
!1234 = !DILocation(line: 161, column: 69, scope: !1106)
!1235 = !DILocation(line: 0, scope: !1184, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 161, column: 54, scope: !1106)
!1237 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1236)
!1238 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1236)
!1239 = !DILocation(line: 0, scope: !692, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 162, column: 9, scope: !1106)
!1241 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1240)
!1242 = !DILocation(line: 162, column: 24, scope: !1106)
!1243 = !DILocation(line: 162, column: 31, scope: !1106)
!1244 = !DILocation(line: 0, scope: !1184, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 162, column: 16, scope: !1106)
!1246 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1245)
!1247 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1245)
!1248 = !DILocation(line: 0, scope: !692, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 162, column: 38, scope: !1106)
!1250 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1249)
!1251 = !DILocation(line: 162, column: 53, scope: !1106)
!1252 = !DILocation(line: 162, column: 60, scope: !1106)
!1253 = !DILocation(line: 0, scope: !1184, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 162, column: 45, scope: !1106)
!1255 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1254)
!1256 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1254)
!1257 = !DILocation(line: 0, scope: !692, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 162, column: 67, scope: !1106)
!1259 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1258)
!1260 = !DILocation(line: 0, scope: !692, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 163, column: 9, scope: !1106)
!1262 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1261)
!1263 = !DILocation(line: 163, column: 30, scope: !1106)
!1264 = !DILocation(line: 163, column: 37, scope: !1106)
!1265 = !DILocation(line: 0, scope: !1184, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 163, column: 22, scope: !1106)
!1267 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1266)
!1268 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1266)
!1269 = !DILocation(line: 0, scope: !692, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 163, column: 41, scope: !1106)
!1271 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1270)
!1272 = !DILocation(line: 163, column: 56, scope: !1106)
!1273 = !DILocation(line: 163, column: 63, scope: !1106)
!1274 = !DILocation(line: 0, scope: !1184, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 163, column: 48, scope: !1106)
!1276 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1275)
!1277 = !{!1118, !770, i64 16}
!1278 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1275)
!1279 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1275)
!1280 = !DILocation(line: 0, scope: !692, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 164, column: 9, scope: !1106)
!1282 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1281)
!1283 = !DILocation(line: 164, column: 24, scope: !1106)
!1284 = !DILocation(line: 164, column: 31, scope: !1106)
!1285 = !DILocation(line: 0, scope: !1184, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 164, column: 16, scope: !1106)
!1287 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1286)
!1288 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1286)
!1289 = !DILocation(line: 0, scope: !692, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 164, column: 35, scope: !1106)
!1291 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1290)
!1292 = !DILocation(line: 164, column: 50, scope: !1106)
!1293 = !DILocation(line: 164, column: 57, scope: !1106)
!1294 = !DILocation(line: 0, scope: !1184, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 164, column: 42, scope: !1106)
!1296 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1295)
!1297 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1295)
!1298 = !DILocation(line: 0, scope: !692, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 164, column: 61, scope: !1106)
!1300 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1299)
!1301 = !DILocation(line: 0, scope: !692, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 165, column: 9, scope: !1106)
!1303 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1302)
!1304 = !DILocation(line: 165, column: 31, scope: !1106)
!1305 = !DILocalVariable(name: "this", arg: 1, scope: !1306, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1306 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !403, file: !401, line: 108, type: !453, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !452, retainedNodes: !1307)
!1307 = !{!1305, !1308}
!1308 = !DILocalVariable(name: "t", arg: 2, scope: !1306, file: !401, line: 108, type: !252)
!1309 = !DILocation(line: 0, scope: !1306, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 165, column: 23, scope: !1106)
!1311 = !DILocation(line: 109, column: 15, scope: !1306, inlinedAt: !1310)
!1312 = !DILocation(line: 0, scope: !692, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 165, column: 36, scope: !1106)
!1314 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1313)
!1315 = !DILocation(line: 0, scope: !692, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 166, column: 9, scope: !1106)
!1317 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1316)
!1318 = !DILocalVariable(name: "this", arg: 1, scope: !1319, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1319 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !209, file: !202, line: 1466, type: !303, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !302, retainedNodes: !1320)
!1320 = !{!1318}
!1321 = !DILocation(line: 0, scope: !1319, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 166, column: 37, scope: !1106)
!1323 = !DILocalVariable(name: "this", arg: 1, scope: !1324, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1324 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !209, file: !202, line: 1454, type: !289, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !288, retainedNodes: !1325)
!1325 = !{!1323, !1326}
!1326 = !DILocalVariable(name: "flag", arg: 2, scope: !1324, file: !202, line: 1454, type: !293)
!1327 = !DILocation(line: 0, scope: !1324, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 1467, column: 16, scope: !1319, inlinedAt: !1322)
!1329 = !DILocation(line: 1455, column: 17, scope: !1324, inlinedAt: !1328)
!1330 = !{!769, !612, i64 24}
!1331 = !DILocation(line: 166, column: 32, scope: !1106)
!1332 = !DILocation(line: 0, scope: !1184, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 166, column: 29, scope: !1106)
!1334 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1333)
!1335 = !DILocation(line: 0, scope: !692, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 166, column: 50, scope: !1106)
!1337 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1336)
!1338 = !DILocation(line: 0, scope: !692, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 167, column: 9, scope: !1106)
!1340 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1339)
!1341 = !DILocalVariable(name: "this", arg: 1, scope: !1342, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1342 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !209, file: !202, line: 1470, type: !303, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !305, retainedNodes: !1343)
!1343 = !{!1341}
!1344 = !DILocation(line: 0, scope: !1342, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 167, column: 39, scope: !1106)
!1346 = !DILocation(line: 0, scope: !1324, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 1471, column: 16, scope: !1342, inlinedAt: !1345)
!1348 = !DILocation(line: 1455, column: 17, scope: !1324, inlinedAt: !1347)
!1349 = !DILocation(line: 167, column: 34, scope: !1106)
!1350 = !DILocation(line: 0, scope: !1184, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 167, column: 31, scope: !1106)
!1352 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1351)
!1353 = !DILocation(line: 0, scope: !692, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 167, column: 54, scope: !1106)
!1355 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1354)
!1356 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1354)
!1357 = !{!1118, !770, i64 8}
!1358 = !DILocation(line: 0, scope: !701, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 155, column: 5, scope: !1106)
!1360 = !DILocation(line: 167, column: 14, scope: !707, inlinedAt: !1359)
!1361 = !DILocation(line: 0, scope: !707, inlinedAt: !1359)
!1362 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !1359)
!1363 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1359)
!1364 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1359)
!1365 = !DILocation(line: 0, scope: !715, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1359)
!1367 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1366)
!1368 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1366)
!1369 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1366)
!1370 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1359)
!1371 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !1359)
!1372 = !{i8 0, i8 2}
!1373 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !1359)
!1374 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1359)
!1375 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !1359)
!1376 = !DILocation(line: 168, column: 1, scope: !1106)
!1377 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv", scope: !7, file: !6, line: 170, type: !177, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !176, retainedNodes: !1378)
!1378 = !{!1379}
!1379 = !DILocalVariable(name: "this", arg: 1, scope: !1377, type: !997, flags: DIFlagArtificial | DIFlagObjectPointer)
!1380 = !DILocation(line: 0, scope: !1377)
!1381 = !DILocation(line: 171, column: 5, scope: !1377)
!1382 = !DILocation(line: 171, column: 17, scope: !1377)
!1383 = !{!1004, !1005, i64 0}
!1384 = !DILocation(line: 173, column: 5, scope: !1377)
!1385 = !{!1004, !770, i64 8}
!1386 = !{!1004, !770, i64 16}
!1387 = !{!1004, !770, i64 24}
!1388 = !{!1004, !770, i64 32}
!1389 = !{!1004, !770, i64 40}
!1390 = !{!1004, !770, i64 48}
!1391 = !{!1004, !770, i64 56}
!1392 = !{!1004, !770, i64 64}
!1393 = !{!1004, !770, i64 72}
!1394 = !{!1004, !770, i64 80}
!1395 = !{!1004, !770, i64 88}
!1396 = !{!1004, !770, i64 96}
!1397 = !{!1004, !770, i64 104}
!1398 = !{!1004, !770, i64 120}
!1399 = !{!1004, !770, i64 128}
!1400 = !{!1004, !770, i64 136}
!1401 = !{!1004, !770, i64 144}
!1402 = !{!1004, !770, i64 152}
!1403 = !{!1004, !770, i64 160}
!1404 = !{!1004, !770, i64 168}
!1405 = !{!1004, !770, i64 176}
!1406 = !{!1004, !770, i64 184}
!1407 = !{!1004, !770, i64 192}
!1408 = !{!1004, !770, i64 200}
!1409 = !{!1004, !770, i64 208}
!1410 = !{!1004, !770, i64 216}
!1411 = !{!1004, !770, i64 224}
!1412 = !{!1004, !770, i64 232}
!1413 = !{!1004, !770, i64 240}
!1414 = !DILocation(line: 175, column: 1, scope: !1377)
!1415 = distinct !DISubprogram(name: "load_gl_func", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b", scope: !2, file: !6, line: 177, type: !1416, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!63, !127, !183, !549, !10}
!1418 = !{!1419, !1420, !1421, !1422, !1423}
!1419 = !DILocalVariable(name: "user_context", arg: 1, scope: !1415, file: !6, line: 177, type: !127)
!1420 = !DILocalVariable(name: "name", arg: 2, scope: !1415, file: !6, line: 177, type: !183)
!1421 = !DILocalVariable(name: "ptr", arg: 3, scope: !1415, file: !6, line: 177, type: !549)
!1422 = !DILocalVariable(name: "required", arg: 4, scope: !1415, file: !6, line: 177, type: !10)
!1423 = !DILocalVariable(name: "p", scope: !1415, file: !6, line: 178, type: !127)
!1424 = !DILocation(line: 0, scope: !1415)
!1425 = !DILocation(line: 178, column: 15, scope: !1415)
!1426 = !DILocation(line: 179, column: 10, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 179, column: 9)
!1428 = !DILocation(line: 179, column: 12, scope: !1427)
!1429 = !DILocation(line: 0, scope: !1010, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 180, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !6, line: 179, column: 25)
!1432 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1430)
!1433 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1430)
!1434 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1430)
!1435 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1430)
!1436 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1430)
!1437 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !1430)
!1438 = !DILocation(line: 0, scope: !1024, inlinedAt: !1430)
!1439 = !DILocation(line: 0, scope: !1032, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 180, column: 29, scope: !1431)
!1441 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1440)
!1442 = !DILocation(line: 0, scope: !1032, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 180, column: 71, scope: !1431)
!1444 = !DILocation(line: 59, column: 17, scope: !1039, inlinedAt: !1443)
!1445 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !1443)
!1446 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !1443)
!1447 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !1443)
!1448 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1443)
!1449 = !DILocation(line: 0, scope: !1039, inlinedAt: !1443)
!1450 = !DILocation(line: 0, scope: !1079, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 180, column: 9, scope: !1431)
!1452 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !1451)
!1453 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1451)
!1454 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1451)
!1455 = !DILocation(line: 0, scope: !1090, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1451)
!1457 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1456)
!1458 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1456)
!1459 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1456)
!1460 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1451)
!1461 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1451)
!1462 = !DILocation(line: 181, column: 9, scope: !1431)
!1463 = !DILocation(line: 183, column: 10, scope: !1415)
!1464 = !DILocation(line: 184, column: 5, scope: !1415)
!1465 = !DILocation(line: 185, column: 1, scope: !1415)
!1466 = !DISubprogram(name: "halide_opengl_get_proc_address", scope: !1467, file: !1467, line: 61, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!1467 = !DIFile(filename: "src/runtime/HalideRuntimeOpenGLCompute.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!127, !127, !183}
!1470 = distinct !DISubprogram(name: "halide_openglcompute_init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv", scope: !2, file: !6, line: 188, type: !379, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1471)
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "user_context", arg: 1, scope: !1470, file: !6, line: 188, type: !127)
!1473 = !DILocation(line: 0, scope: !1470)
!1474 = !DILocation(line: 189, column: 22, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 189, column: 9)
!1476 = !DILocation(line: 189, column: 9, scope: !1470)
!1477 = !DILocation(line: 193, column: 18, scope: !1470)
!1478 = !DILocation(line: 196, column: 9, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 196, column: 9)
!1480 = !DILocation(line: 196, column: 9, scope: !1470)
!1481 = !DILocation(line: 0, scope: !1010, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 197, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !6, line: 196, column: 53)
!1484 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1482)
!1485 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1482)
!1486 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1482)
!1487 = !DILocation(line: 0, scope: !1032, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 197, column: 29, scope: !1483)
!1489 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1488)
!1490 = !DILocation(line: 0, scope: !1079, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 197, column: 9, scope: !1483)
!1492 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1491)
!1493 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1491)
!1494 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1482)
!1495 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1482)
!1496 = !DILocation(line: 0, scope: !1090, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1491)
!1498 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1497)
!1499 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1497)
!1500 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1497)
!1501 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1491)
!1502 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1491)
!1503 = !DILocation(line: 198, column: 9, scope: !1483)
!1504 = !DILocation(line: 206, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1506 = !DILocation(line: 206, column: 5, scope: !1470)
!1507 = !DILocation(line: 206, column: 5, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1509 = !DILocation(line: 206, column: 5, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1511 = !DILocation(line: 206, column: 5, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1513 = !DILocation(line: 206, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1515 = !DILocation(line: 206, column: 5, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1517 = !DILocation(line: 206, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1519 = !DILocation(line: 206, column: 5, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1521 = !DILocation(line: 206, column: 5, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1523 = !DILocation(line: 206, column: 5, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1525 = !DILocation(line: 206, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1527 = !DILocation(line: 206, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1529 = !DILocation(line: 206, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1531 = !DILocation(line: 206, column: 5, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1533 = !DILocation(line: 206, column: 5, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1535 = !DILocation(line: 206, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1537 = !DILocation(line: 206, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1539 = !DILocation(line: 206, column: 5, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1541 = !DILocation(line: 206, column: 5, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1543 = !DILocation(line: 206, column: 5, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1545 = !DILocation(line: 206, column: 5, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1547 = !DILocation(line: 206, column: 5, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1549 = !DILocation(line: 206, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1551 = !DILocation(line: 206, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1553 = !DILocation(line: 206, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1555 = !DILocation(line: 206, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1557 = !DILocation(line: 206, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1559 = !DILocation(line: 206, column: 5, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1561 = !DILocation(line: 206, column: 5, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1563 = !DILocation(line: 206, column: 5, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 206, column: 5)
!1565 = !DILocation(line: 0, scope: !675, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 209, column: 5, scope: !1470)
!1567 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1566)
!1568 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1566)
!1569 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1566)
!1570 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1566)
!1571 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1566)
!1572 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1566)
!1573 = !DILocation(line: 0, scope: !689, inlinedAt: !1566)
!1574 = !DILocation(line: 0, scope: !692, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 209, column: 25, scope: !1470)
!1576 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1575)
!1577 = !DILocation(line: 209, column: 65, scope: !1470)
!1578 = !DILocation(line: 209, column: 52, scope: !1470)
!1579 = !DILocation(line: 0, scope: !1169, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 209, column: 49, scope: !1470)
!1581 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !1580)
!1582 = !DILocation(line: 0, scope: !692, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 209, column: 87, scope: !1470)
!1584 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1583)
!1585 = !DILocation(line: 0, scope: !701, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 209, column: 5, scope: !1470)
!1587 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !1586)
!1588 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1586)
!1589 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1586)
!1590 = !DILocation(line: 0, scope: !715, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1586)
!1592 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1591)
!1593 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1591)
!1594 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1591)
!1595 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1586)
!1596 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1586)
!1597 = !DILocation(line: 211, column: 30, scope: !1470)
!1598 = !DILocation(line: 212, column: 5, scope: !1470)
!1599 = !DILocation(line: 213, column: 1, scope: !1470)
!1600 = !DISubprogram(name: "halide_opengl_create_context", scope: !1467, file: !1467, line: 68, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!1601 = distinct !DISubprogram(name: "halide_openglcompute_device_release", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv", scope: !2, file: !6, line: 219, type: !379, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1608, !1610, !1611}
!1603 = !DILocalVariable(name: "user_context", arg: 1, scope: !1601, file: !6, line: 219, type: !127)
!1604 = !DILocalVariable(name: "t_before", scope: !1601, file: !6, line: 221, type: !212)
!1605 = !DILocalVariable(name: "mod", scope: !1601, file: !6, line: 227, type: !187)
!1606 = !DILocalVariable(name: "kernel", scope: !1607, file: !6, line: 229, type: !191)
!1607 = distinct !DILexicalBlock(scope: !1601, file: !6, line: 228, column: 17)
!1608 = !DILocalVariable(name: "next_kernel", scope: !1609, file: !6, line: 231, type: !191)
!1609 = distinct !DILexicalBlock(scope: !1607, file: !6, line: 230, column: 24)
!1610 = !DILocalVariable(name: "next", scope: !1607, file: !6, line: 238, type: !187)
!1611 = !DILocalVariable(name: "t_after", scope: !1601, file: !6, line: 248, type: !212)
!1612 = !DILocation(line: 0, scope: !1601)
!1613 = !DILocation(line: 221, column: 25, scope: !1601)
!1614 = !DILocation(line: 0, scope: !675, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 224, column: 5, scope: !1601)
!1616 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1615)
!1617 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1615)
!1618 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1615)
!1619 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1615)
!1620 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1615)
!1621 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1615)
!1622 = !DILocation(line: 0, scope: !689, inlinedAt: !1615)
!1623 = !DILocation(line: 0, scope: !692, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 224, column: 25, scope: !1601)
!1625 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1624)
!1626 = !DILocation(line: 0, scope: !1169, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 225, column: 25, scope: !1601)
!1628 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !1627)
!1629 = !DILocation(line: 0, scope: !692, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 225, column: 41, scope: !1601)
!1631 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1630)
!1632 = !DILocation(line: 0, scope: !701, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 224, column: 5, scope: !1601)
!1634 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !1633)
!1635 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1633)
!1636 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1633)
!1637 = !DILocation(line: 0, scope: !715, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1633)
!1639 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1638)
!1640 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1638)
!1641 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1638)
!1642 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1633)
!1643 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1633)
!1644 = !DILocation(line: 228, column: 12, scope: !1601)
!1645 = !DILocation(line: 228, column: 5, scope: !1601)
!1646 = !DILocation(line: 229, column: 35, scope: !1607)
!1647 = !{!1648, !770, i64 0}
!1648 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE", !770, i64 0, !770, i64 8}
!1649 = !DILocation(line: 0, scope: !1607)
!1650 = !DILocation(line: 230, column: 16, scope: !1607)
!1651 = !DILocation(line: 230, column: 9, scope: !1607)
!1652 = !DILocation(line: 231, column: 47, scope: !1609)
!1653 = !{!982, !770, i64 16}
!1654 = !DILocation(line: 0, scope: !1609)
!1655 = !DILocation(line: 232, column: 26, scope: !1609)
!1656 = !DILocation(line: 232, column: 48, scope: !1609)
!1657 = !{!982, !774, i64 8}
!1658 = !DILocation(line: 232, column: 13, scope: !1609)
!1659 = !DILocation(line: 233, column: 26, scope: !1609)
!1660 = !DILocation(line: 233, column: 13, scope: !1609)
!1661 = !DILocation(line: 234, column: 18, scope: !1609)
!1662 = !DILocation(line: 234, column: 13, scope: !1609)
!1663 = distinct !{!1663, !1651, !1664, !621}
!1664 = !DILocation(line: 236, column: 9, scope: !1607)
!1665 = !DILocation(line: 237, column: 21, scope: !1607)
!1666 = !DILocation(line: 238, column: 34, scope: !1607)
!1667 = distinct !{!1667, !1645, !1668, !621}
!1668 = !DILocation(line: 243, column: 5, scope: !1601)
!1669 = !DILocation(line: 245, column: 20, scope: !1601)
!1670 = !DILocation(line: 245, column: 18, scope: !1601)
!1671 = !{i64 0, i64 1, !1672, i64 8, i64 8, !977, i64 16, i64 8, !977, i64 24, i64 8, !977, i64 32, i64 8, !977, i64 40, i64 8, !977, i64 48, i64 8, !977, i64 56, i64 8, !977, i64 64, i64 8, !977, i64 72, i64 8, !977, i64 80, i64 8, !977, i64 88, i64 8, !977, i64 96, i64 8, !977, i64 104, i64 8, !977, i64 112, i64 8, !977, i64 120, i64 8, !977, i64 128, i64 8, !977, i64 136, i64 8, !977, i64 144, i64 8, !977, i64 152, i64 8, !977, i64 160, i64 8, !977, i64 168, i64 8, !977, i64 176, i64 8, !977, i64 184, i64 8, !977, i64 192, i64 8, !977, i64 200, i64 8, !977, i64 208, i64 8, !977, i64 216, i64 8, !977, i64 224, i64 8, !977, i64 232, i64 8, !977, i64 240, i64 8, !977}
!1672 = !{!1005, !1005, i64 0}
!1673 = !DILocation(line: 245, column: 5, scope: !1601)
!1674 = !DILocation(line: 248, column: 24, scope: !1601)
!1675 = !DILocation(line: 0, scope: !675, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 249, column: 5, scope: !1601)
!1677 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1676)
!1678 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1676)
!1679 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1676)
!1680 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1676)
!1681 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1676)
!1682 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1676)
!1683 = !DILocation(line: 0, scope: !689, inlinedAt: !1676)
!1684 = !DILocation(line: 0, scope: !692, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 249, column: 25, scope: !1601)
!1686 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1685)
!1687 = !DILocation(line: 249, column: 53, scope: !1601)
!1688 = !DILocation(line: 249, column: 44, scope: !1601)
!1689 = !DILocation(line: 249, column: 65, scope: !1601)
!1690 = !DILocalVariable(name: "this", arg: 1, scope: !1691, type: !679, flags: DIFlagArtificial | DIFlagObjectPointer)
!1691 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !403, file: !401, line: 87, type: !437, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !436, retainedNodes: !1692)
!1692 = !{!1690, !1693}
!1693 = !DILocalVariable(name: "arg", arg: 2, scope: !1691, file: !401, line: 87, type: !439)
!1694 = !DILocation(line: 0, scope: !1691, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 249, column: 41, scope: !1601)
!1696 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !1695)
!1697 = !DILocation(line: 0, scope: !692, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 250, column: 25, scope: !1601)
!1699 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1698)
!1700 = !DILocation(line: 0, scope: !701, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 249, column: 5, scope: !1601)
!1702 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !1701)
!1703 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1701)
!1704 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1701)
!1705 = !DILocation(line: 0, scope: !715, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1701)
!1707 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1706)
!1708 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1706)
!1709 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1706)
!1710 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1701)
!1711 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1701)
!1712 = !DILocation(line: 253, column: 5, scope: !1601)
!1713 = !DISubprogram(name: "halide_current_time_ns", scope: !37, file: !37, line: 136, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!426, !127}
!1716 = !DISubprogram(name: "free", scope: !37, file: !37, line: 86, type: !1717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !127}
!1719 = distinct !DISubprogram(name: "halide_openglcompute_device_malloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t", scope: !2, file: !6, line: 258, type: !1720, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!63, !127, !560}
!1722 = !{!1723, !1724, !1725, !1726, !1728, !1729, !1731, !1733, !1734}
!1723 = !DILocalVariable(name: "user_context", arg: 1, scope: !1719, file: !6, line: 258, type: !127)
!1724 = !DILocalVariable(name: "buf", arg: 2, scope: !1719, file: !6, line: 258, type: !560)
!1725 = !DILocalVariable(name: "t_before", scope: !1719, file: !6, line: 260, type: !212)
!1726 = !DILocalVariable(name: "error", scope: !1727, file: !6, line: 266, type: !63)
!1727 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 266, column: 13)
!1728 = !DILocalVariable(name: "size", scope: !1719, file: !6, line: 270, type: !313)
!1729 = !DILocalVariable(name: "i", scope: !1730, file: !6, line: 280, type: !63)
!1730 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 280, column: 5)
!1731 = !DILocalVariable(name: "error", scope: !1732, file: !6, line: 293, type: !63)
!1732 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 293, column: 13)
!1733 = !DILocalVariable(name: "the_buffer", scope: !1719, file: !6, line: 303, type: !17)
!1734 = !DILocalVariable(name: "t_after", scope: !1719, file: !6, line: 330, type: !212)
!1735 = !DILocation(line: 0, scope: !1719)
!1736 = !DILocation(line: 260, column: 25, scope: !1719)
!1737 = !DILocation(line: 0, scope: !675, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 263, column: 5, scope: !1719)
!1739 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1738)
!1740 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1738)
!1741 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1738)
!1742 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1738)
!1743 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1738)
!1744 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1738)
!1745 = !DILocation(line: 0, scope: !689, inlinedAt: !1738)
!1746 = !DILocation(line: 0, scope: !692, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 263, column: 25, scope: !1719)
!1748 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1747)
!1749 = !DILocation(line: 0, scope: !1169, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 264, column: 25, scope: !1719)
!1751 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !1750)
!1752 = !DILocation(line: 0, scope: !692, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 264, column: 41, scope: !1719)
!1754 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1753)
!1755 = !DILocation(line: 264, column: 57, scope: !1719)
!1756 = !DILocation(line: 0, scope: !1169, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 264, column: 54, scope: !1719)
!1758 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !1757)
!1759 = !DILocation(line: 0, scope: !692, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 264, column: 61, scope: !1719)
!1761 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1760)
!1762 = !DILocation(line: 0, scope: !701, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 263, column: 5, scope: !1719)
!1764 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !1763)
!1765 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1763)
!1766 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1763)
!1767 = !DILocation(line: 0, scope: !715, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1763)
!1769 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1768)
!1770 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1768)
!1771 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1768)
!1772 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1763)
!1773 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1763)
!1774 = !DILocation(line: 266, column: 21, scope: !1727)
!1775 = !DILocation(line: 0, scope: !1727)
!1776 = !DILocation(line: 266, column: 13, scope: !1727)
!1777 = !DILocalVariable(name: "this", arg: 1, scope: !1778, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1778 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !209, file: !202, line: 1518, type: !311, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !319, retainedNodes: !1779)
!1779 = !{!1777}
!1780 = !DILocation(line: 0, scope: !1778, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 270, column: 24, scope: !1719)
!1782 = !DILocalVariable(name: "this", arg: 1, scope: !1783, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1783 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !209, file: !202, line: 1506, type: !316, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !318, retainedNodes: !1784)
!1784 = !{!1782, !1785, !1786}
!1785 = !DILocalVariable(name: "index", scope: !1783, file: !202, line: 1507, type: !36)
!1786 = !DILocalVariable(name: "i", scope: !1787, file: !202, line: 1508, type: !63)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !202, line: 1508, column: 9)
!1788 = !DILocation(line: 0, scope: !1783, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 1519, column: 25, scope: !1778, inlinedAt: !1781)
!1790 = !DILocation(line: 0, scope: !1787, inlinedAt: !1789)
!1791 = !DILocation(line: 1508, column: 29, scope: !1792, inlinedAt: !1789)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !202, line: 1508, column: 9)
!1793 = !DILocation(line: 1508, column: 27, scope: !1792, inlinedAt: !1789)
!1794 = !DILocation(line: 1508, column: 9, scope: !1787, inlinedAt: !1789)
!1795 = !DILocation(line: 0, scope: !787, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 1514, column: 36, scope: !1783, inlinedAt: !1789)
!1797 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !1796)
!1798 = !DILocalVariable(name: "this", arg: 1, scope: !1799, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1799 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !209, file: !202, line: 1495, type: !316, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !315, retainedNodes: !1800)
!1800 = !{!1798, !1801, !1802}
!1801 = !DILocalVariable(name: "index", scope: !1799, file: !202, line: 1496, type: !36)
!1802 = !DILocalVariable(name: "i", scope: !1803, file: !202, line: 1497, type: !63)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !202, line: 1497, column: 9)
!1804 = !DILocation(line: 0, scope: !1799, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 1519, column: 33, scope: !1778, inlinedAt: !1781)
!1806 = !DILocation(line: 0, scope: !1803, inlinedAt: !1805)
!1807 = !DILocation(line: 1497, column: 9, scope: !1803, inlinedAt: !1805)
!1808 = !DILocation(line: 1509, column: 24, scope: !1809, inlinedAt: !1789)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !202, line: 1509, column: 17)
!1810 = distinct !DILexicalBlock(scope: !1792, file: !202, line: 1508, column: 46)
!1811 = !DILocation(line: 1509, column: 31, scope: !1809, inlinedAt: !1789)
!1812 = !DILocation(line: 1509, column: 17, scope: !1810, inlinedAt: !1789)
!1813 = !DILocation(line: 1510, column: 37, scope: !1814, inlinedAt: !1789)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !202, line: 1509, column: 36)
!1815 = !DILocation(line: 1510, column: 61, scope: !1814, inlinedAt: !1789)
!1816 = !DILocation(line: 1510, column: 68, scope: !1814, inlinedAt: !1789)
!1817 = !DILocation(line: 1510, column: 53, scope: !1814, inlinedAt: !1789)
!1818 = !DILocation(line: 1510, column: 51, scope: !1814, inlinedAt: !1789)
!1819 = !DILocation(line: 1510, column: 23, scope: !1814, inlinedAt: !1789)
!1820 = !DILocation(line: 1511, column: 13, scope: !1814, inlinedAt: !1789)
!1821 = !DILocation(line: 1508, column: 42, scope: !1792, inlinedAt: !1789)
!1822 = distinct !{!1822, !1794, !1823, !621}
!1823 = !DILocation(line: 1512, column: 9, scope: !1787, inlinedAt: !1789)
!1824 = !DILocation(line: 1498, column: 24, scope: !1825, inlinedAt: !1805)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !202, line: 1498, column: 17)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !202, line: 1497, column: 46)
!1827 = distinct !DILexicalBlock(scope: !1803, file: !202, line: 1497, column: 9)
!1828 = !DILocation(line: 1498, column: 31, scope: !1825, inlinedAt: !1805)
!1829 = !DILocation(line: 1498, column: 17, scope: !1826, inlinedAt: !1805)
!1830 = !DILocation(line: 1499, column: 37, scope: !1831, inlinedAt: !1805)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !202, line: 1498, column: 36)
!1832 = !DILocation(line: 1499, column: 61, scope: !1831, inlinedAt: !1805)
!1833 = !DILocation(line: 1499, column: 68, scope: !1831, inlinedAt: !1805)
!1834 = !DILocation(line: 1499, column: 53, scope: !1831, inlinedAt: !1805)
!1835 = !DILocation(line: 1499, column: 51, scope: !1831, inlinedAt: !1805)
!1836 = !DILocation(line: 1499, column: 23, scope: !1831, inlinedAt: !1805)
!1837 = !DILocation(line: 1500, column: 13, scope: !1831, inlinedAt: !1805)
!1838 = !DILocation(line: 1497, column: 42, scope: !1827, inlinedAt: !1805)
!1839 = !DILocation(line: 1497, column: 27, scope: !1827, inlinedAt: !1805)
!1840 = distinct !{!1840, !1807, !1841, !621}
!1841 = !DILocation(line: 1501, column: 9, scope: !1803, inlinedAt: !1805)
!1842 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !1796)
!1843 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !1796)
!1844 = !DILocation(line: 1513, column: 15, scope: !1783, inlinedAt: !1789)
!1845 = !DILocation(line: 0, scope: !787, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 1502, column: 36, scope: !1799, inlinedAt: !1805)
!1847 = !DILocation(line: 1519, column: 31, scope: !1778, inlinedAt: !1781)
!1848 = !DILocation(line: 271, column: 5, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !6, line: 271, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 271, column: 5)
!1851 = !DILocation(line: 271, column: 5, scope: !1850)
!1852 = !DILocation(line: 271, column: 5, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !6, line: 271, column: 5)
!1854 = !DILocation(line: 273, column: 14, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 273, column: 9)
!1856 = !DILocation(line: 273, column: 9, scope: !1855)
!1857 = !DILocation(line: 273, column: 9, scope: !1719)
!1858 = !DILocation(line: 0, scope: !1730)
!1859 = !DILocation(line: 280, column: 30, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1730, file: !6, line: 280, column: 5)
!1861 = !DILocation(line: 280, column: 23, scope: !1860)
!1862 = !DILocation(line: 280, column: 5, scope: !1730)
!1863 = !DILocation(line: 0, scope: !675, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 275, column: 9, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1855, file: !6, line: 273, column: 22)
!1866 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1864)
!1867 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1864)
!1868 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1864)
!1869 = !DILocation(line: 0, scope: !692, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 275, column: 29, scope: !1865)
!1871 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1870)
!1872 = !DILocation(line: 0, scope: !701, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 275, column: 9, scope: !1865)
!1874 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !1873)
!1875 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !1873)
!1876 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1864)
!1877 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1864)
!1878 = !DILocation(line: 0, scope: !715, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !1873)
!1880 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !1879)
!1881 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !1879)
!1882 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !1879)
!1883 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1873)
!1884 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1873)
!1885 = !DILocation(line: 277, column: 9, scope: !1865)
!1886 = !DILocation(line: 284, column: 5, scope: !1719)
!1887 = !DILocation(line: 0, scope: !675, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 284, column: 5, scope: !1719)
!1889 = !DILocation(line: 38, column: 11, scope: !675, inlinedAt: !1888)
!1890 = !DILocation(line: 38, column: 30, scope: !675, inlinedAt: !1888)
!1891 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !1888)
!1892 = !DILocation(line: 44, column: 13, scope: !684, inlinedAt: !1888)
!1893 = !DILocation(line: 44, column: 17, scope: !684, inlinedAt: !1888)
!1894 = !DILocation(line: 47, column: 9, scope: !687, inlinedAt: !1888)
!1895 = !DILocation(line: 47, column: 13, scope: !687, inlinedAt: !1888)
!1896 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !1888)
!1897 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !1888)
!1898 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !1888)
!1899 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !1888)
!1900 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !1888)
!1901 = !DILocation(line: 0, scope: !689, inlinedAt: !1888)
!1902 = !DILocation(line: 53, column: 13, scope: !1133, inlinedAt: !1888)
!1903 = !DILocation(line: 53, column: 17, scope: !1133, inlinedAt: !1888)
!1904 = !DILocation(line: 0, scope: !692, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 284, column: 25, scope: !1719)
!1906 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1905)
!1907 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1905)
!1908 = !DILocation(line: 0, scope: !692, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 285, column: 25, scope: !1719)
!1910 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1909)
!1911 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1909)
!1912 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1909)
!1913 = !DILocation(line: 285, column: 48, scope: !1719)
!1914 = !DILocation(line: 285, column: 55, scope: !1719)
!1915 = !DILocation(line: 0, scope: !1184, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 285, column: 40, scope: !1719)
!1917 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1916)
!1918 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1916)
!1919 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1916)
!1920 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1916)
!1921 = !DILocation(line: 0, scope: !692, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 285, column: 62, scope: !1719)
!1923 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1922)
!1924 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1922)
!1925 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1922)
!1926 = !DILocation(line: 286, column: 33, scope: !1719)
!1927 = !DILocation(line: 286, column: 40, scope: !1719)
!1928 = !DILocation(line: 0, scope: !1184, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 286, column: 25, scope: !1719)
!1930 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1929)
!1931 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1929)
!1932 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1929)
!1933 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1929)
!1934 = !DILocation(line: 0, scope: !692, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 286, column: 47, scope: !1719)
!1936 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1935)
!1937 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1935)
!1938 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1935)
!1939 = !DILocation(line: 286, column: 62, scope: !1719)
!1940 = !DILocation(line: 286, column: 69, scope: !1719)
!1941 = !DILocation(line: 0, scope: !1184, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 286, column: 54, scope: !1719)
!1943 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1942)
!1944 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1942)
!1945 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1942)
!1946 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1942)
!1947 = !DILocation(line: 0, scope: !692, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 286, column: 76, scope: !1719)
!1949 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1948)
!1950 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1948)
!1951 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1948)
!1952 = !DILocation(line: 287, column: 33, scope: !1719)
!1953 = !DILocation(line: 287, column: 40, scope: !1719)
!1954 = !DILocation(line: 0, scope: !1184, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 287, column: 25, scope: !1719)
!1956 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1955)
!1957 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1955)
!1958 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1955)
!1959 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1955)
!1960 = !DILocation(line: 0, scope: !692, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 287, column: 47, scope: !1719)
!1962 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1961)
!1963 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1961)
!1964 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1961)
!1965 = !DILocation(line: 0, scope: !692, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 288, column: 25, scope: !1719)
!1967 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1966)
!1968 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1966)
!1969 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1966)
!1970 = !DILocation(line: 288, column: 48, scope: !1719)
!1971 = !DILocation(line: 288, column: 55, scope: !1719)
!1972 = !DILocation(line: 0, scope: !1184, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 288, column: 40, scope: !1719)
!1974 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1973)
!1975 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1973)
!1976 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1973)
!1977 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1973)
!1978 = !DILocation(line: 0, scope: !692, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 288, column: 62, scope: !1719)
!1980 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1979)
!1981 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1979)
!1982 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1979)
!1983 = !DILocation(line: 289, column: 33, scope: !1719)
!1984 = !DILocation(line: 289, column: 40, scope: !1719)
!1985 = !DILocation(line: 0, scope: !1184, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 289, column: 25, scope: !1719)
!1987 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1986)
!1988 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1986)
!1989 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1986)
!1990 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1986)
!1991 = !DILocation(line: 0, scope: !692, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 289, column: 47, scope: !1719)
!1993 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !1992)
!1994 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !1992)
!1995 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !1992)
!1996 = !DILocation(line: 289, column: 62, scope: !1719)
!1997 = !DILocation(line: 289, column: 69, scope: !1719)
!1998 = !DILocation(line: 0, scope: !1184, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 289, column: 54, scope: !1719)
!2000 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !1999)
!2001 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !1999)
!2002 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !1999)
!2003 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !1999)
!2004 = !DILocation(line: 0, scope: !692, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 289, column: 76, scope: !1719)
!2006 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !2005)
!2007 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2005)
!2008 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !2005)
!2009 = !DILocation(line: 290, column: 33, scope: !1719)
!2010 = !DILocation(line: 290, column: 40, scope: !1719)
!2011 = !DILocation(line: 0, scope: !1184, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 290, column: 25, scope: !1719)
!2013 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !2012)
!2014 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !2012)
!2015 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !2012)
!2016 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !2012)
!2017 = !DILocation(line: 0, scope: !692, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 290, column: 47, scope: !1719)
!2019 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !2018)
!2020 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2018)
!2021 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !2018)
!2022 = !DILocation(line: 0, scope: !692, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 291, column: 25, scope: !1719)
!2024 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !2023)
!2025 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2023)
!2026 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !2023)
!2027 = !DILocation(line: 291, column: 46, scope: !1719)
!2028 = !DILocation(line: 0, scope: !1306, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 291, column: 38, scope: !1719)
!2030 = !DILocation(line: 109, column: 42, scope: !1306, inlinedAt: !2029)
!2031 = !DILocation(line: 109, column: 15, scope: !1306, inlinedAt: !2029)
!2032 = !DILocation(line: 109, column: 13, scope: !1306, inlinedAt: !2029)
!2033 = !DILocation(line: 0, scope: !692, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 291, column: 51, scope: !1719)
!2035 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !2034)
!2036 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2034)
!2037 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !2034)
!2038 = !DILocation(line: 0, scope: !701, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 284, column: 5, scope: !1719)
!2040 = !DILocation(line: 167, column: 14, scope: !707, inlinedAt: !2039)
!2041 = !DILocation(line: 0, scope: !707, inlinedAt: !2039)
!2042 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2039)
!2043 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2039)
!2044 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2039)
!2045 = !DILocation(line: 0, scope: !715, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2039)
!2047 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2046)
!2048 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2046)
!2049 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2046)
!2050 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !2039)
!2051 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !2039)
!2052 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2039)
!2053 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !2039)
!2054 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !2039)
!2055 = !DILocation(line: 180, column: 24, scope: !729, inlinedAt: !2039)
!2056 = !DILocation(line: 180, column: 31, scope: !729, inlinedAt: !2039)
!2057 = !DILocation(line: 180, column: 28, scope: !729, inlinedAt: !2039)
!2058 = !DILocation(line: 180, column: 13, scope: !708, inlinedAt: !2039)
!2059 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2039)
!2060 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !2039)
!2061 = !DILocation(line: 293, column: 21, scope: !1732)
!2062 = !DILocation(line: 0, scope: !1732)
!2063 = !DILocation(line: 293, column: 13, scope: !1732)
!2064 = !DILocation(line: 281, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !6, line: 281, column: 9)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !6, line: 281, column: 9)
!2067 = distinct !DILexicalBlock(scope: !1860, file: !6, line: 280, column: 47)
!2068 = !DILocation(line: 281, column: 9, scope: !2066)
!2069 = !DILocation(line: 281, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !6, line: 281, column: 9)
!2071 = !DILocation(line: 280, column: 43, scope: !1860)
!2072 = distinct !{!2072, !1862, !2073, !621}
!2073 = !DILocation(line: 282, column: 5, scope: !1730)
!2074 = !DILocation(line: 0, scope: !675, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 296, column: 5, scope: !1719)
!2076 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2075)
!2077 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2075)
!2078 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2075)
!2079 = !DILocation(line: 0, scope: !692, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 296, column: 25, scope: !1719)
!2081 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2080)
!2082 = !DILocation(line: 0, scope: !701, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 296, column: 5, scope: !1719)
!2084 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2083)
!2085 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2083)
!2086 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2075)
!2087 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2075)
!2088 = !DILocation(line: 0, scope: !715, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2083)
!2090 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2089)
!2091 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2089)
!2092 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2089)
!2093 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2083)
!2094 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2083)
!2095 = !DILocation(line: 303, column: 5, scope: !1719)
!2096 = !DILocation(line: 304, column: 18, scope: !1719)
!2097 = !DILocation(line: 304, column: 5, scope: !1719)
!2098 = !DILocation(line: 305, column: 22, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 305, column: 9)
!2100 = !DILocation(line: 305, column: 9, scope: !1719)
!2101 = !DILocation(line: 308, column: 18, scope: !1719)
!2102 = !DILocation(line: 308, column: 46, scope: !1719)
!2103 = !{!774, !774, i64 0}
!2104 = !DILocation(line: 308, column: 5, scope: !1719)
!2105 = !DILocation(line: 309, column: 22, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 309, column: 9)
!2107 = !DILocation(line: 309, column: 9, scope: !1719)
!2108 = !DILocation(line: 0, scope: !787, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 316, column: 28, scope: !1719)
!2110 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !2109)
!2111 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !2109)
!2112 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !2109)
!2113 = !DILocation(line: 316, column: 16, scope: !1719)
!2114 = !DILocation(line: 316, column: 13, scope: !1719)
!2115 = !DILocation(line: 316, column: 10, scope: !1719)
!2116 = !DILocation(line: 317, column: 5, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !6, line: 317, column: 5)
!2118 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 317, column: 5)
!2119 = !DILocation(line: 317, column: 5, scope: !2118)
!2120 = !DILocation(line: 317, column: 5, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !6, line: 317, column: 5)
!2122 = !DILocation(line: 318, column: 18, scope: !1719)
!2123 = !DILocation(line: 318, column: 5, scope: !1719)
!2124 = !DILocation(line: 319, column: 22, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1719, file: !6, line: 319, column: 9)
!2126 = !DILocation(line: 319, column: 9, scope: !1719)
!2127 = !DILocation(line: 323, column: 19, scope: !1719)
!2128 = !DILocation(line: 323, column: 17, scope: !1719)
!2129 = !DILocation(line: 324, column: 10, scope: !1719)
!2130 = !DILocation(line: 324, column: 27, scope: !1719)
!2131 = !{!769, !770, i64 8}
!2132 = !DILocation(line: 325, column: 28, scope: !1719)
!2133 = !{!2134, !770, i64 120}
!2134 = !{!"_ZTS25halide_device_interface_t", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120}
!2135 = !DILocation(line: 325, column: 34, scope: !1719)
!2136 = !{!2137, !770, i64 0}
!2137 = !{!"_ZTS30halide_device_interface_impl_t", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120}
!2138 = !DILocation(line: 325, column: 5, scope: !1719)
!2139 = !DILocation(line: 0, scope: !675, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 327, column: 5, scope: !1719)
!2141 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2140)
!2142 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2140)
!2143 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2140)
!2144 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2140)
!2145 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2140)
!2146 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2140)
!2147 = !DILocation(line: 0, scope: !689, inlinedAt: !2140)
!2148 = !DILocation(line: 0, scope: !692, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 327, column: 25, scope: !1719)
!2150 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2149)
!2151 = !DILocation(line: 327, column: 65, scope: !1719)
!2152 = !DILocation(line: 0, scope: !1154, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 327, column: 62, scope: !1719)
!2154 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !2153)
!2155 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !2153)
!2156 = !DILocation(line: 0, scope: !692, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 327, column: 76, scope: !1719)
!2158 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2157)
!2159 = !DILocation(line: 0, scope: !701, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 327, column: 5, scope: !1719)
!2161 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2160)
!2162 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2160)
!2163 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2160)
!2164 = !DILocation(line: 0, scope: !715, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2160)
!2166 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2165)
!2167 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2165)
!2168 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2165)
!2169 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2160)
!2170 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2160)
!2171 = !DILocation(line: 330, column: 24, scope: !1719)
!2172 = !DILocation(line: 0, scope: !675, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 331, column: 5, scope: !1719)
!2174 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2173)
!2175 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2173)
!2176 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2173)
!2177 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2173)
!2178 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2173)
!2179 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2173)
!2180 = !DILocation(line: 0, scope: !689, inlinedAt: !2173)
!2181 = !DILocation(line: 0, scope: !692, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 331, column: 25, scope: !1719)
!2183 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2182)
!2184 = !DILocation(line: 331, column: 53, scope: !1719)
!2185 = !DILocation(line: 331, column: 44, scope: !1719)
!2186 = !DILocation(line: 331, column: 65, scope: !1719)
!2187 = !DILocation(line: 0, scope: !1691, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 331, column: 41, scope: !1719)
!2189 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !2188)
!2190 = !DILocation(line: 0, scope: !692, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 332, column: 25, scope: !1719)
!2192 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2191)
!2193 = !DILocation(line: 0, scope: !701, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 331, column: 5, scope: !1719)
!2195 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2194)
!2196 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2194)
!2197 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2194)
!2198 = !DILocation(line: 0, scope: !715, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2194)
!2200 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2199)
!2201 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2199)
!2202 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2199)
!2203 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2194)
!2204 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2194)
!2205 = !DILocation(line: 336, column: 1, scope: !1719)
!2206 = !DISubprogram(name: "halide_print", scope: !202, file: !202, line: 97, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !127, !183}
!2209 = !DISubprogram(name: "abort", scope: !37, file: !37, line: 108, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!2210 = distinct !DISubprogram(name: "halide_openglcompute_device_free", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t", scope: !2, file: !6, line: 338, type: !1720, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216}
!2212 = !DILocalVariable(name: "user_context", arg: 1, scope: !2210, file: !6, line: 338, type: !127)
!2213 = !DILocalVariable(name: "buf", arg: 2, scope: !2210, file: !6, line: 338, type: !560)
!2214 = !DILocalVariable(name: "t_before", scope: !2210, file: !6, line: 340, type: !212)
!2215 = !DILocalVariable(name: "the_buffer", scope: !2210, file: !6, line: 351, type: !17)
!2216 = !DILocalVariable(name: "t_after", scope: !2210, file: !6, line: 365, type: !212)
!2217 = !DILocation(line: 0, scope: !2210)
!2218 = !DILocation(line: 340, column: 25, scope: !2210)
!2219 = !DILocation(line: 343, column: 23, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2210, file: !6, line: 343, column: 9)
!2221 = !DILocation(line: 343, column: 9, scope: !2210)
!2222 = !DILocation(line: 0, scope: !1010, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 344, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !6, line: 343, column: 36)
!2225 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2223)
!2226 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2223)
!2227 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2223)
!2228 = !DILocation(line: 0, scope: !1032, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 344, column: 29, scope: !2224)
!2230 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2229)
!2231 = !DILocation(line: 0, scope: !1079, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 344, column: 9, scope: !2224)
!2233 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2232)
!2234 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2232)
!2235 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2223)
!2236 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2223)
!2237 = !DILocation(line: 0, scope: !1090, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2232)
!2239 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2238)
!2240 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2238)
!2241 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2238)
!2242 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2232)
!2243 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !2232)
!2244 = !DILocation(line: 345, column: 9, scope: !2224)
!2245 = !DILocation(line: 348, column: 14, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2210, file: !6, line: 348, column: 9)
!2247 = !DILocation(line: 348, column: 21, scope: !2246)
!2248 = !DILocation(line: 348, column: 9, scope: !2210)
!2249 = !DILocation(line: 351, column: 5, scope: !2210)
!2250 = !DILocation(line: 351, column: 33, scope: !2210)
!2251 = !DILocation(line: 351, column: 12, scope: !2210)
!2252 = !DILocation(line: 0, scope: !675, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 353, column: 5, scope: !2210)
!2254 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2253)
!2255 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2253)
!2256 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2253)
!2257 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2253)
!2258 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2253)
!2259 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2253)
!2260 = !DILocation(line: 0, scope: !689, inlinedAt: !2253)
!2261 = !DILocation(line: 0, scope: !692, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 353, column: 25, scope: !2210)
!2263 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2262)
!2264 = !DILocation(line: 0, scope: !692, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 354, column: 25, scope: !2210)
!2266 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2265)
!2267 = !DILocation(line: 0, scope: !1169, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 354, column: 45, scope: !2210)
!2269 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !2268)
!2270 = !DILocation(line: 0, scope: !692, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 355, column: 25, scope: !2210)
!2272 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2271)
!2273 = !DILocation(line: 0, scope: !1154, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 355, column: 44, scope: !2210)
!2275 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !2274)
!2276 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !2274)
!2277 = !DILocation(line: 0, scope: !692, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 356, column: 25, scope: !2210)
!2279 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2278)
!2280 = !DILocation(line: 0, scope: !701, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 353, column: 5, scope: !2210)
!2282 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2281)
!2283 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2281)
!2284 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2281)
!2285 = !DILocation(line: 0, scope: !715, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2281)
!2287 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2286)
!2288 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2286)
!2289 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2286)
!2290 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2281)
!2291 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2281)
!2292 = !DILocation(line: 358, column: 18, scope: !2210)
!2293 = !DILocation(line: 358, column: 5, scope: !2210)
!2294 = !DILocation(line: 360, column: 17, scope: !2210)
!2295 = !DILocation(line: 361, column: 10, scope: !2210)
!2296 = !DILocation(line: 361, column: 28, scope: !2210)
!2297 = !DILocation(line: 361, column: 34, scope: !2210)
!2298 = !{!2137, !770, i64 8}
!2299 = !DILocation(line: 361, column: 5, scope: !2210)
!2300 = !DILocation(line: 362, column: 27, scope: !2210)
!2301 = !DILocation(line: 365, column: 24, scope: !2210)
!2302 = !DILocation(line: 0, scope: !675, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 366, column: 5, scope: !2210)
!2304 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2303)
!2305 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2303)
!2306 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2303)
!2307 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2303)
!2308 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2303)
!2309 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2303)
!2310 = !DILocation(line: 0, scope: !689, inlinedAt: !2303)
!2311 = !DILocation(line: 0, scope: !692, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 366, column: 25, scope: !2210)
!2313 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2312)
!2314 = !DILocation(line: 366, column: 53, scope: !2210)
!2315 = !DILocation(line: 366, column: 44, scope: !2210)
!2316 = !DILocation(line: 366, column: 65, scope: !2210)
!2317 = !DILocation(line: 0, scope: !1691, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 366, column: 41, scope: !2210)
!2319 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !2318)
!2320 = !DILocation(line: 0, scope: !692, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 367, column: 25, scope: !2210)
!2322 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2321)
!2323 = !DILocation(line: 0, scope: !701, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 366, column: 5, scope: !2210)
!2325 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2324)
!2326 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2324)
!2327 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2324)
!2328 = !DILocation(line: 0, scope: !715, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2324)
!2330 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2329)
!2331 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2329)
!2332 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2329)
!2333 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2324)
!2334 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2324)
!2335 = !DILocation(line: 371, column: 1, scope: !2210)
!2336 = distinct !DISubprogram(name: "halide_openglcompute_copy_to_device", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t", scope: !2, file: !6, line: 399, type: !1720, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2338 = !DILocalVariable(name: "user_context", arg: 1, scope: !2336, file: !6, line: 399, type: !127)
!2339 = !DILocalVariable(name: "buf", arg: 2, scope: !2336, file: !6, line: 399, type: !560)
!2340 = !DILocalVariable(name: "t_before", scope: !2336, file: !6, line: 401, type: !212)
!2341 = !DILocalVariable(name: "the_buffer", scope: !2336, file: !6, line: 409, type: !17)
!2342 = !DILocalVariable(name: "size", scope: !2336, file: !6, line: 420, type: !313)
!2343 = !DILocalVariable(name: "device_data", scope: !2336, file: !6, line: 427, type: !127)
!2344 = !DILocalVariable(name: "buf_copy", scope: !2336, file: !6, line: 434, type: !460)
!2345 = !DILocalVariable(name: "dev_copy", scope: !2336, file: !6, line: 436, type: !583)
!2346 = !DILocalVariable(name: "t_after", scope: !2336, file: !6, line: 482, type: !212)
!2347 = !DILocation(line: 0, scope: !2336)
!2348 = !DILocation(line: 401, column: 25, scope: !2336)
!2349 = !DILocation(line: 404, column: 23, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2336, file: !6, line: 404, column: 9)
!2351 = !DILocation(line: 404, column: 9, scope: !2336)
!2352 = !DILocation(line: 0, scope: !1010, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 405, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !6, line: 404, column: 36)
!2355 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2353)
!2356 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2353)
!2357 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2353)
!2358 = !DILocation(line: 0, scope: !1032, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 405, column: 29, scope: !2354)
!2360 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2359)
!2361 = !DILocation(line: 0, scope: !1079, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 405, column: 9, scope: !2354)
!2363 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2362)
!2364 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2362)
!2365 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2353)
!2366 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2353)
!2367 = !DILocation(line: 0, scope: !1090, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2362)
!2369 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2368)
!2370 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2368)
!2371 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2368)
!2372 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2362)
!2373 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !2362)
!2374 = !DILocation(line: 406, column: 9, scope: !2354)
!2375 = !DILocation(line: 409, column: 38, scope: !2336)
!2376 = !DILocation(line: 409, column: 33, scope: !2336)
!2377 = !DILocation(line: 0, scope: !675, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 410, column: 5, scope: !2336)
!2379 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2378)
!2380 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2378)
!2381 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2378)
!2382 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2378)
!2383 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2378)
!2384 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2378)
!2385 = !DILocation(line: 0, scope: !689, inlinedAt: !2378)
!2386 = !DILocation(line: 0, scope: !692, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 410, column: 25, scope: !2336)
!2388 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2387)
!2389 = !DILocation(line: 0, scope: !692, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 411, column: 25, scope: !2336)
!2391 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2390)
!2392 = !DILocation(line: 0, scope: !1169, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 411, column: 45, scope: !2336)
!2394 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !2393)
!2395 = !DILocation(line: 0, scope: !692, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 412, column: 25, scope: !2336)
!2397 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2396)
!2398 = !DILocation(line: 412, column: 41, scope: !2336)
!2399 = !DILocation(line: 0, scope: !1169, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 412, column: 38, scope: !2336)
!2401 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !2400)
!2402 = !DILocation(line: 0, scope: !692, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 413, column: 25, scope: !2336)
!2404 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2403)
!2405 = !DILocation(line: 0, scope: !1154, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 413, column: 44, scope: !2336)
!2407 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !2406)
!2408 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !2406)
!2409 = !DILocation(line: 0, scope: !692, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 413, column: 58, scope: !2336)
!2411 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2410)
!2412 = !DILocation(line: 0, scope: !701, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 410, column: 5, scope: !2336)
!2414 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2413)
!2415 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2413)
!2416 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2413)
!2417 = !DILocation(line: 0, scope: !715, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2413)
!2419 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2418)
!2420 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2418)
!2421 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2418)
!2422 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2413)
!2423 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2413)
!2424 = !DILocation(line: 415, column: 18, scope: !2336)
!2425 = !DILocation(line: 415, column: 5, scope: !2336)
!2426 = !DILocation(line: 416, column: 22, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2336, file: !6, line: 416, column: 9)
!2428 = !DILocation(line: 416, column: 9, scope: !2336)
!2429 = !DILocalVariable(name: "this", arg: 1, scope: !2430, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!2430 = distinct !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !209, file: !202, line: 1485, type: !311, scopeLine: 1485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !310, retainedNodes: !2431)
!2431 = !{!2429, !2432, !2433}
!2432 = !DILocalVariable(name: "s", scope: !2430, file: !202, line: 1486, type: !313)
!2433 = !DILocalVariable(name: "i", scope: !2434, file: !202, line: 1487, type: !63)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !202, line: 1487, column: 9)
!2435 = !DILocation(line: 0, scope: !2430, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 420, column: 24, scope: !2336)
!2437 = !DILocation(line: 0, scope: !2434, inlinedAt: !2436)
!2438 = !DILocation(line: 1487, column: 29, scope: !2439, inlinedAt: !2436)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !202, line: 1487, column: 9)
!2440 = !DILocation(line: 1487, column: 27, scope: !2439, inlinedAt: !2436)
!2441 = !DILocation(line: 1487, column: 9, scope: !2434, inlinedAt: !2436)
!2442 = !DILocation(line: 1488, column: 25, scope: !2443, inlinedAt: !2436)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !202, line: 1487, column: 46)
!2444 = !DILocation(line: 1488, column: 18, scope: !2443, inlinedAt: !2436)
!2445 = !DILocation(line: 1488, column: 15, scope: !2443, inlinedAt: !2436)
!2446 = !DILocation(line: 1487, column: 42, scope: !2439, inlinedAt: !2436)
!2447 = distinct !{!2447, !2441, !2448, !621}
!2448 = !DILocation(line: 1489, column: 9, scope: !2434, inlinedAt: !2436)
!2449 = !DILocation(line: 420, column: 45, scope: !2336)
!2450 = !DILocation(line: 421, column: 18, scope: !2336)
!2451 = !DILocation(line: 421, column: 5, scope: !2336)
!2452 = !DILocation(line: 422, column: 22, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2336, file: !6, line: 422, column: 9)
!2454 = !DILocation(line: 422, column: 9, scope: !2336)
!2455 = !DILocation(line: 0, scope: !675, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 426, column: 5, scope: !2336)
!2457 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2456)
!2458 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2456)
!2459 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2456)
!2460 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2456)
!2461 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2456)
!2462 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2456)
!2463 = !DILocation(line: 0, scope: !689, inlinedAt: !2456)
!2464 = !DILocation(line: 0, scope: !692, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 426, column: 25, scope: !2336)
!2466 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2465)
!2467 = !DILocation(line: 0, scope: !1140, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 426, column: 87, scope: !2336)
!2469 = !DILocation(line: 78, column: 15, scope: !1140, inlinedAt: !2468)
!2470 = !DILocation(line: 0, scope: !692, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 426, column: 105, scope: !2336)
!2472 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2471)
!2473 = !DILocation(line: 0, scope: !701, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 426, column: 5, scope: !2336)
!2475 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2474)
!2476 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2474)
!2477 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2474)
!2478 = !DILocation(line: 0, scope: !715, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2474)
!2480 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2479)
!2481 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2479)
!2482 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2479)
!2483 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2474)
!2484 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2474)
!2485 = !DILocation(line: 427, column: 38, scope: !2336)
!2486 = !DILocation(line: 427, column: 25, scope: !2336)
!2487 = !DILocation(line: 431, column: 22, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2336, file: !6, line: 431, column: 9)
!2489 = !DILocation(line: 431, column: 9, scope: !2336)
!2490 = !DILocation(line: 434, column: 5, scope: !2336)
!2491 = !DILocation(line: 434, column: 21, scope: !2336)
!2492 = !DILocation(line: 434, column: 32, scope: !2336)
!2493 = !{i64 0, i64 8, !611, i64 8, i64 8, !977, i64 16, i64 8, !977, i64 24, i64 8, !611, i64 32, i64 1, !2494, i64 33, i64 1, !713, i64 34, i64 2, !2495, i64 36, i64 4, !2103, i64 40, i64 8, !977, i64 48, i64 8, !977}
!2494 = !{!772, !772, i64 0}
!2495 = !{!773, !773, i64 0}
!2496 = !DILocation(line: 435, column: 23, scope: !2336)
!2497 = !DILocation(line: 435, column: 14, scope: !2336)
!2498 = !DILocation(line: 435, column: 21, scope: !2336)
!2499 = !DILocation(line: 436, column: 5, scope: !2336)
!2500 = !DILocation(line: 436, column: 17, scope: !2336)
!2501 = !DILocation(line: 436, column: 28, scope: !2336)
!2502 = !DILocation(line: 438, column: 19, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2336, file: !6, line: 438, column: 9)
!2504 = !{!769, !772, i64 32}
!2505 = !DILocation(line: 438, column: 9, scope: !2336)
!2506 = !DILocation(line: 439, column: 23, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !6, line: 439, column: 13)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 438, column: 44)
!2509 = !{!769, !613, i64 33}
!2510 = !DILocation(line: 439, column: 13, scope: !2508)
!2511 = !DILocation(line: 440, column: 98, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !6, line: 439, column: 34)
!2513 = !DILocation(line: 440, column: 13, scope: !2512)
!2514 = !DILocation(line: 441, column: 9, scope: !2512)
!2515 = !DILocation(line: 446, column: 22, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 441, column: 42)
!2517 = distinct !DILexicalBlock(scope: !2507, file: !6, line: 441, column: 20)
!2518 = !DILocation(line: 446, column: 33, scope: !2516)
!2519 = !DILocation(line: 447, column: 99, scope: !2516)
!2520 = !DILocation(line: 447, column: 13, scope: !2516)
!2521 = !DILocation(line: 448, column: 9, scope: !2516)
!2522 = !DILocation(line: 449, column: 70, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !6, line: 448, column: 42)
!2524 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 448, column: 20)
!2525 = !DILocation(line: 449, column: 13, scope: !2523)
!2526 = !DILocation(line: 0, scope: !1010, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 451, column: 13, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !6, line: 450, column: 16)
!2529 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2527)
!2530 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2527)
!2531 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2527)
!2532 = !DILocation(line: 0, scope: !1032, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 451, column: 33, scope: !2528)
!2534 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2533)
!2535 = !DILocation(line: 0, scope: !1079, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 451, column: 13, scope: !2528)
!2537 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2536)
!2538 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2536)
!2539 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2527)
!2540 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2527)
!2541 = !DILocation(line: 0, scope: !1090, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2536)
!2543 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2542)
!2544 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2542)
!2545 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2542)
!2546 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2536)
!2547 = !DILocation(line: 455, column: 23, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !6, line: 455, column: 13)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !6, line: 454, column: 52)
!2550 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 454, column: 16)
!2551 = !DILocation(line: 455, column: 13, scope: !2549)
!2552 = !DILocation(line: 456, column: 100, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2548, file: !6, line: 455, column: 34)
!2554 = !DILocation(line: 456, column: 13, scope: !2553)
!2555 = !DILocation(line: 457, column: 9, scope: !2553)
!2556 = !DILocation(line: 462, column: 22, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !6, line: 457, column: 42)
!2558 = distinct !DILexicalBlock(scope: !2548, file: !6, line: 457, column: 20)
!2559 = !DILocation(line: 462, column: 33, scope: !2557)
!2560 = !DILocation(line: 463, column: 101, scope: !2557)
!2561 = !DILocation(line: 463, column: 13, scope: !2557)
!2562 = !DILocation(line: 464, column: 9, scope: !2557)
!2563 = !DILocation(line: 465, column: 70, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !6, line: 464, column: 42)
!2565 = distinct !DILexicalBlock(scope: !2558, file: !6, line: 464, column: 20)
!2566 = !DILocation(line: 465, column: 13, scope: !2564)
!2567 = !DILocation(line: 0, scope: !1010, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 467, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !6, line: 466, column: 16)
!2570 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2568)
!2571 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2568)
!2572 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2568)
!2573 = !DILocation(line: 0, scope: !1032, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 467, column: 33, scope: !2569)
!2575 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2574)
!2576 = !DILocation(line: 0, scope: !1079, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 467, column: 13, scope: !2569)
!2578 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2577)
!2579 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2577)
!2580 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2568)
!2581 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2568)
!2582 = !DILocation(line: 0, scope: !1090, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2577)
!2584 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2583)
!2585 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2583)
!2586 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2583)
!2587 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2577)
!2588 = !DILocation(line: 471, column: 23, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !6, line: 471, column: 13)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !6, line: 470, column: 53)
!2591 = distinct !DILexicalBlock(scope: !2550, file: !6, line: 470, column: 16)
!2592 = !DILocation(line: 471, column: 28, scope: !2589)
!2593 = !DILocation(line: 471, column: 13, scope: !2590)
!2594 = !DILocation(line: 472, column: 70, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2589, file: !6, line: 471, column: 35)
!2596 = !DILocation(line: 472, column: 13, scope: !2595)
!2597 = !DILocation(line: 473, column: 9, scope: !2595)
!2598 = !DILocation(line: 0, scope: !1010, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 474, column: 13, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2589, file: !6, line: 473, column: 16)
!2601 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2599)
!2602 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2599)
!2603 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2599)
!2604 = !DILocation(line: 0, scope: !1032, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 474, column: 33, scope: !2600)
!2606 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2605)
!2607 = !DILocation(line: 0, scope: !1079, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 474, column: 13, scope: !2600)
!2609 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2608)
!2610 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2608)
!2611 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2599)
!2612 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2599)
!2613 = !DILocation(line: 0, scope: !1090, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2608)
!2615 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2614)
!2616 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2614)
!2617 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2614)
!2618 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2608)
!2619 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !2608)
!2620 = !DILocation(line: 477, column: 18, scope: !2336)
!2621 = !DILocation(line: 477, column: 5, scope: !2336)
!2622 = !DILocation(line: 479, column: 5, scope: !2336)
!2623 = !DILocation(line: 0, scope: !675, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 479, column: 5, scope: !2336)
!2625 = !DILocation(line: 38, column: 11, scope: !675, inlinedAt: !2624)
!2626 = !DILocation(line: 38, column: 30, scope: !675, inlinedAt: !2624)
!2627 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2624)
!2628 = !DILocation(line: 44, column: 13, scope: !684, inlinedAt: !2624)
!2629 = !DILocation(line: 44, column: 17, scope: !684, inlinedAt: !2624)
!2630 = !DILocation(line: 47, column: 9, scope: !687, inlinedAt: !2624)
!2631 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2624)
!2632 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2624)
!2633 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2624)
!2634 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2624)
!2635 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2624)
!2636 = !DILocation(line: 0, scope: !689, inlinedAt: !2624)
!2637 = !DILocation(line: 53, column: 13, scope: !1133, inlinedAt: !2624)
!2638 = !DILocation(line: 53, column: 17, scope: !1133, inlinedAt: !2624)
!2639 = !DILocation(line: 0, scope: !692, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 479, column: 25, scope: !2336)
!2641 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2640)
!2642 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !2640)
!2643 = !DILocation(line: 0, scope: !1154, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 479, column: 40, scope: !2336)
!2645 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !2644)
!2646 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !2644)
!2647 = !DILocation(line: 0, scope: !692, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 479, column: 60, scope: !2336)
!2649 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2648)
!2650 = !DILocation(line: 479, column: 86, scope: !2336)
!2651 = !DILocation(line: 0, scope: !1169, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 479, column: 78, scope: !2336)
!2653 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !2652)
!2654 = !DILocation(line: 0, scope: !692, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 479, column: 91, scope: !2336)
!2656 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2655)
!2657 = !DILocation(line: 0, scope: !701, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 479, column: 5, scope: !2336)
!2659 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2658)
!2660 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2658)
!2661 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2658)
!2662 = !DILocation(line: 0, scope: !715, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2658)
!2664 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2663)
!2665 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2663)
!2666 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2663)
!2667 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !2658)
!2668 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !2658)
!2669 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2658)
!2670 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !2658)
!2671 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !2658)
!2672 = !DILocation(line: 180, column: 24, scope: !729, inlinedAt: !2658)
!2673 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2658)
!2674 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !2658)
!2675 = !DILocation(line: 482, column: 24, scope: !2336)
!2676 = !DILocation(line: 0, scope: !675, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 483, column: 5, scope: !2336)
!2678 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !2677)
!2679 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !2677)
!2680 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !2677)
!2681 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !2677)
!2682 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !2677)
!2683 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !2677)
!2684 = !DILocation(line: 0, scope: !689, inlinedAt: !2677)
!2685 = !DILocation(line: 0, scope: !692, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 483, column: 25, scope: !2336)
!2687 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2686)
!2688 = !DILocation(line: 483, column: 53, scope: !2336)
!2689 = !DILocation(line: 483, column: 44, scope: !2336)
!2690 = !DILocation(line: 483, column: 65, scope: !2336)
!2691 = !DILocation(line: 0, scope: !1691, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 483, column: 41, scope: !2336)
!2693 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !2692)
!2694 = !DILocation(line: 0, scope: !692, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 484, column: 25, scope: !2336)
!2696 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !2695)
!2697 = !DILocation(line: 0, scope: !701, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 483, column: 5, scope: !2336)
!2699 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !2698)
!2700 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !2698)
!2701 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !2698)
!2702 = !DILocation(line: 0, scope: !715, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !2698)
!2704 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !2703)
!2705 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !2703)
!2706 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !2703)
!2707 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2698)
!2708 = !DILocation(line: 487, column: 1, scope: !2336)
!2709 = distinct !DISubprogram(name: "converting_copy_memory_helper<signed char, int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !2727, retainedNodes: !2711)
!2710 = !DINamespace(scope: !2)
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2721, !2722, !2724}
!2712 = !DILocalVariable(name: "copy", arg: 1, scope: !2709, file: !6, line: 376, type: !581)
!2713 = !DILocalVariable(name: "d", arg: 2, scope: !2709, file: !6, line: 376, type: !63)
!2714 = !DILocalVariable(name: "src_off", arg: 3, scope: !2709, file: !6, line: 376, type: !425)
!2715 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2709, file: !6, line: 376, type: !425)
!2716 = !DILocalVariable(name: "from", scope: !2717, file: !6, line: 383, type: !2719)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !6, line: 382, column: 18)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !6, line: 382, column: 9)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!2721 = !DILocalVariable(name: "to", scope: !2717, file: !6, line: 384, type: !365)
!2722 = !DILocalVariable(name: "index", scope: !2723, file: !6, line: 385, type: !212)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !6, line: 385, column: 9)
!2724 = !DILocalVariable(name: "i", scope: !2725, file: !6, line: 389, type: !212)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !6, line: 389, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !6, line: 388, column: 12)
!2727 = !{!2728, !2729}
!2728 = !DITemplateTypeParameter(name: "Source", type: !552)
!2729 = !DITemplateTypeParameter(name: "Dest", type: !63)
!2730 = !DILocation(line: 0, scope: !2709)
!2731 = !DILocation(line: 378, column: 14, scope: !2709)
!2732 = !DILocation(line: 378, column: 19, scope: !2709)
!2733 = !DILocation(line: 378, column: 22, scope: !2709)
!2734 = !DILocation(line: 378, column: 37, scope: !2709)
!2735 = !DILocation(line: 378, column: 5, scope: !2709)
!2736 = !DILocation(line: 379, column: 10, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2709, file: !6, line: 378, column: 43)
!2738 = distinct !{!2738, !2735, !2739, !621}
!2739 = !DILocation(line: 380, column: 5, scope: !2709)
!2740 = !DILocation(line: 382, column: 11, scope: !2718)
!2741 = !DILocation(line: 382, column: 9, scope: !2709)
!2742 = !DILocation(line: 0, scope: !2725)
!2743 = !DILocation(line: 389, column: 34, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2725, file: !6, line: 389, column: 9)
!2745 = !DILocation(line: 389, column: 32, scope: !2744)
!2746 = !DILocation(line: 389, column: 9, scope: !2725)
!2747 = !DILocation(line: 0, scope: !2717)
!2748 = !DILocation(line: 0, scope: !2723)
!2749 = !DILocation(line: 385, column: 47, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2723, file: !6, line: 385, column: 9)
!2751 = !DILocation(line: 385, column: 40, scope: !2750)
!2752 = !DILocation(line: 385, column: 9, scope: !2723)
!2753 = !DILocation(line: 384, column: 34, scope: !2717)
!2754 = !DILocation(line: 384, column: 38, scope: !2717)
!2755 = !DILocation(line: 384, column: 20, scope: !2717)
!2756 = !DILocation(line: 383, column: 46, scope: !2717)
!2757 = !DILocation(line: 383, column: 50, scope: !2717)
!2758 = !DILocation(line: 383, column: 30, scope: !2717)
!2759 = !DILocation(line: 386, column: 32, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2750, file: !6, line: 385, column: 68)
!2761 = !DILocation(line: 386, column: 27, scope: !2760)
!2762 = !DILocation(line: 386, column: 16, scope: !2760)
!2763 = !DILocation(line: 386, column: 19, scope: !2760)
!2764 = !DILocation(line: 385, column: 64, scope: !2750)
!2765 = distinct !{!2765, !2752, !2766, !621}
!2766 = !DILocation(line: 387, column: 9, scope: !2723)
!2767 = !DILocation(line: 390, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2744, file: !6, line: 389, column: 55)
!2769 = !DILocation(line: 391, column: 24, scope: !2768)
!2770 = !DILocation(line: 391, column: 21, scope: !2768)
!2771 = !DILocation(line: 392, column: 24, scope: !2768)
!2772 = !DILocation(line: 392, column: 21, scope: !2768)
!2773 = !DILocation(line: 389, column: 51, scope: !2744)
!2774 = distinct !{!2774, !2746, !2775, !621}
!2775 = !DILocation(line: 393, column: 9, scope: !2725)
!2776 = !DILocation(line: 395, column: 1, scope: !2709)
!2777 = distinct !DISubprogram(name: "converting_copy_memory_helper<short, int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !2794, retainedNodes: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2788, !2789, !2791}
!2779 = !DILocalVariable(name: "copy", arg: 1, scope: !2777, file: !6, line: 376, type: !581)
!2780 = !DILocalVariable(name: "d", arg: 2, scope: !2777, file: !6, line: 376, type: !63)
!2781 = !DILocalVariable(name: "src_off", arg: 3, scope: !2777, file: !6, line: 376, type: !425)
!2782 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2777, file: !6, line: 376, type: !425)
!2783 = !DILocalVariable(name: "from", scope: !2784, file: !6, line: 383, type: !2786)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !6, line: 382, column: 18)
!2785 = distinct !DILexicalBlock(scope: !2777, file: !6, line: 382, column: 9)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!2788 = !DILocalVariable(name: "to", scope: !2784, file: !6, line: 384, type: !365)
!2789 = !DILocalVariable(name: "index", scope: !2790, file: !6, line: 385, type: !212)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !6, line: 385, column: 9)
!2791 = !DILocalVariable(name: "i", scope: !2792, file: !6, line: 389, type: !212)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !6, line: 389, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2785, file: !6, line: 388, column: 12)
!2794 = !{!2795, !2729}
!2795 = !DITemplateTypeParameter(name: "Source", type: !555)
!2796 = !DILocation(line: 0, scope: !2777)
!2797 = !DILocation(line: 378, column: 14, scope: !2777)
!2798 = !DILocation(line: 378, column: 19, scope: !2777)
!2799 = !DILocation(line: 378, column: 22, scope: !2777)
!2800 = !DILocation(line: 378, column: 37, scope: !2777)
!2801 = !DILocation(line: 378, column: 5, scope: !2777)
!2802 = !DILocation(line: 379, column: 10, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2777, file: !6, line: 378, column: 43)
!2804 = distinct !{!2804, !2801, !2805, !621}
!2805 = !DILocation(line: 380, column: 5, scope: !2777)
!2806 = !DILocation(line: 382, column: 11, scope: !2785)
!2807 = !DILocation(line: 382, column: 9, scope: !2777)
!2808 = !DILocation(line: 0, scope: !2792)
!2809 = !DILocation(line: 389, column: 34, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2792, file: !6, line: 389, column: 9)
!2811 = !DILocation(line: 389, column: 32, scope: !2810)
!2812 = !DILocation(line: 389, column: 9, scope: !2792)
!2813 = !DILocation(line: 0, scope: !2784)
!2814 = !DILocation(line: 0, scope: !2790)
!2815 = !DILocation(line: 385, column: 47, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2790, file: !6, line: 385, column: 9)
!2817 = !DILocation(line: 385, column: 40, scope: !2816)
!2818 = !DILocation(line: 385, column: 9, scope: !2790)
!2819 = !DILocation(line: 384, column: 34, scope: !2784)
!2820 = !DILocation(line: 384, column: 38, scope: !2784)
!2821 = !DILocation(line: 384, column: 20, scope: !2784)
!2822 = !DILocation(line: 383, column: 46, scope: !2784)
!2823 = !DILocation(line: 383, column: 50, scope: !2784)
!2824 = !DILocation(line: 383, column: 30, scope: !2784)
!2825 = !DILocation(line: 386, column: 32, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2816, file: !6, line: 385, column: 68)
!2827 = !DILocation(line: 386, column: 27, scope: !2826)
!2828 = !DILocation(line: 386, column: 16, scope: !2826)
!2829 = !DILocation(line: 386, column: 19, scope: !2826)
!2830 = !DILocation(line: 385, column: 64, scope: !2816)
!2831 = distinct !{!2831, !2818, !2832, !621}
!2832 = !DILocation(line: 387, column: 9, scope: !2790)
!2833 = !DILocation(line: 390, column: 13, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2810, file: !6, line: 389, column: 55)
!2835 = !DILocation(line: 391, column: 24, scope: !2834)
!2836 = !DILocation(line: 391, column: 21, scope: !2834)
!2837 = !DILocation(line: 392, column: 24, scope: !2834)
!2838 = !DILocation(line: 392, column: 21, scope: !2834)
!2839 = !DILocation(line: 389, column: 51, scope: !2810)
!2840 = distinct !{!2840, !2812, !2841, !621}
!2841 = !DILocation(line: 393, column: 9, scope: !2792)
!2842 = !DILocation(line: 395, column: 1, scope: !2777)
!2843 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned char, unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !2860, retainedNodes: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2854, !2855, !2857}
!2845 = !DILocalVariable(name: "copy", arg: 1, scope: !2843, file: !6, line: 376, type: !581)
!2846 = !DILocalVariable(name: "d", arg: 2, scope: !2843, file: !6, line: 376, type: !63)
!2847 = !DILocalVariable(name: "src_off", arg: 3, scope: !2843, file: !6, line: 376, type: !425)
!2848 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2843, file: !6, line: 376, type: !425)
!2849 = !DILocalVariable(name: "from", scope: !2850, file: !6, line: 383, type: !2852)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !6, line: 382, column: 18)
!2851 = distinct !DILexicalBlock(scope: !2843, file: !6, line: 382, column: 9)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2854 = !DILocalVariable(name: "to", scope: !2850, file: !6, line: 384, type: !566)
!2855 = !DILocalVariable(name: "index", scope: !2856, file: !6, line: 385, type: !212)
!2856 = distinct !DILexicalBlock(scope: !2850, file: !6, line: 385, column: 9)
!2857 = !DILocalVariable(name: "i", scope: !2858, file: !6, line: 389, type: !212)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !6, line: 389, column: 9)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !6, line: 388, column: 12)
!2860 = !{!2861, !2862}
!2861 = !DITemplateTypeParameter(name: "Source", type: !119)
!2862 = !DITemplateTypeParameter(name: "Dest", type: !18)
!2863 = !DILocation(line: 0, scope: !2843)
!2864 = !DILocation(line: 378, column: 14, scope: !2843)
!2865 = !DILocation(line: 378, column: 19, scope: !2843)
!2866 = !DILocation(line: 378, column: 22, scope: !2843)
!2867 = !DILocation(line: 378, column: 37, scope: !2843)
!2868 = !DILocation(line: 378, column: 5, scope: !2843)
!2869 = !DILocation(line: 379, column: 10, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2843, file: !6, line: 378, column: 43)
!2871 = distinct !{!2871, !2868, !2872, !621}
!2872 = !DILocation(line: 380, column: 5, scope: !2843)
!2873 = !DILocation(line: 382, column: 11, scope: !2851)
!2874 = !DILocation(line: 382, column: 9, scope: !2843)
!2875 = !DILocation(line: 0, scope: !2858)
!2876 = !DILocation(line: 389, column: 34, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2858, file: !6, line: 389, column: 9)
!2878 = !DILocation(line: 389, column: 32, scope: !2877)
!2879 = !DILocation(line: 389, column: 9, scope: !2858)
!2880 = !DILocation(line: 0, scope: !2850)
!2881 = !DILocation(line: 0, scope: !2856)
!2882 = !DILocation(line: 385, column: 47, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2856, file: !6, line: 385, column: 9)
!2884 = !DILocation(line: 385, column: 40, scope: !2883)
!2885 = !DILocation(line: 385, column: 9, scope: !2856)
!2886 = !DILocation(line: 384, column: 34, scope: !2850)
!2887 = !DILocation(line: 384, column: 38, scope: !2850)
!2888 = !DILocation(line: 384, column: 20, scope: !2850)
!2889 = !DILocation(line: 383, column: 46, scope: !2850)
!2890 = !DILocation(line: 383, column: 50, scope: !2850)
!2891 = !DILocation(line: 383, column: 30, scope: !2850)
!2892 = !DILocation(line: 386, column: 32, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2883, file: !6, line: 385, column: 68)
!2894 = !DILocation(line: 386, column: 27, scope: !2893)
!2895 = !DILocation(line: 386, column: 16, scope: !2893)
!2896 = !DILocation(line: 386, column: 19, scope: !2893)
!2897 = !DILocation(line: 385, column: 64, scope: !2883)
!2898 = distinct !{!2898, !2885, !2899, !621}
!2899 = !DILocation(line: 387, column: 9, scope: !2856)
!2900 = !DILocation(line: 390, column: 13, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2877, file: !6, line: 389, column: 55)
!2902 = !DILocation(line: 391, column: 24, scope: !2901)
!2903 = !DILocation(line: 391, column: 21, scope: !2901)
!2904 = !DILocation(line: 392, column: 24, scope: !2901)
!2905 = !DILocation(line: 392, column: 21, scope: !2901)
!2906 = !DILocation(line: 389, column: 51, scope: !2877)
!2907 = distinct !{!2907, !2879, !2908, !621}
!2908 = !DILocation(line: 393, column: 9, scope: !2858)
!2909 = !DILocation(line: 395, column: 1, scope: !2843)
!2910 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned short, unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !2927, retainedNodes: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2921, !2922, !2924}
!2912 = !DILocalVariable(name: "copy", arg: 1, scope: !2910, file: !6, line: 376, type: !581)
!2913 = !DILocalVariable(name: "d", arg: 2, scope: !2910, file: !6, line: 376, type: !63)
!2914 = !DILocalVariable(name: "src_off", arg: 3, scope: !2910, file: !6, line: 376, type: !425)
!2915 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2910, file: !6, line: 376, type: !425)
!2916 = !DILocalVariable(name: "from", scope: !2917, file: !6, line: 383, type: !2919)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !6, line: 382, column: 18)
!2918 = distinct !DILexicalBlock(scope: !2910, file: !6, line: 382, column: 9)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!2921 = !DILocalVariable(name: "to", scope: !2917, file: !6, line: 384, type: !566)
!2922 = !DILocalVariable(name: "index", scope: !2923, file: !6, line: 385, type: !212)
!2923 = distinct !DILexicalBlock(scope: !2917, file: !6, line: 385, column: 9)
!2924 = !DILocalVariable(name: "i", scope: !2925, file: !6, line: 389, type: !212)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !6, line: 389, column: 9)
!2926 = distinct !DILexicalBlock(scope: !2918, file: !6, line: 388, column: 12)
!2927 = !{!2928, !2862}
!2928 = !DITemplateTypeParameter(name: "Source", type: !236)
!2929 = !DILocation(line: 0, scope: !2910)
!2930 = !DILocation(line: 378, column: 14, scope: !2910)
!2931 = !DILocation(line: 378, column: 19, scope: !2910)
!2932 = !DILocation(line: 378, column: 22, scope: !2910)
!2933 = !DILocation(line: 378, column: 37, scope: !2910)
!2934 = !DILocation(line: 378, column: 5, scope: !2910)
!2935 = !DILocation(line: 379, column: 10, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2910, file: !6, line: 378, column: 43)
!2937 = distinct !{!2937, !2934, !2938, !621}
!2938 = !DILocation(line: 380, column: 5, scope: !2910)
!2939 = !DILocation(line: 382, column: 11, scope: !2918)
!2940 = !DILocation(line: 382, column: 9, scope: !2910)
!2941 = !DILocation(line: 0, scope: !2925)
!2942 = !DILocation(line: 389, column: 34, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2925, file: !6, line: 389, column: 9)
!2944 = !DILocation(line: 389, column: 32, scope: !2943)
!2945 = !DILocation(line: 389, column: 9, scope: !2925)
!2946 = !DILocation(line: 0, scope: !2917)
!2947 = !DILocation(line: 0, scope: !2923)
!2948 = !DILocation(line: 385, column: 47, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2923, file: !6, line: 385, column: 9)
!2950 = !DILocation(line: 385, column: 40, scope: !2949)
!2951 = !DILocation(line: 385, column: 9, scope: !2923)
!2952 = !DILocation(line: 384, column: 34, scope: !2917)
!2953 = !DILocation(line: 384, column: 38, scope: !2917)
!2954 = !DILocation(line: 384, column: 20, scope: !2917)
!2955 = !DILocation(line: 383, column: 46, scope: !2917)
!2956 = !DILocation(line: 383, column: 50, scope: !2917)
!2957 = !DILocation(line: 383, column: 30, scope: !2917)
!2958 = !DILocation(line: 386, column: 32, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2949, file: !6, line: 385, column: 68)
!2960 = !DILocation(line: 386, column: 27, scope: !2959)
!2961 = !DILocation(line: 386, column: 16, scope: !2959)
!2962 = !DILocation(line: 386, column: 19, scope: !2959)
!2963 = !DILocation(line: 385, column: 64, scope: !2949)
!2964 = distinct !{!2964, !2951, !2965, !621}
!2965 = !DILocation(line: 387, column: 9, scope: !2923)
!2966 = !DILocation(line: 390, column: 13, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2943, file: !6, line: 389, column: 55)
!2968 = !DILocation(line: 391, column: 24, scope: !2967)
!2969 = !DILocation(line: 391, column: 21, scope: !2967)
!2970 = !DILocation(line: 392, column: 24, scope: !2967)
!2971 = !DILocation(line: 392, column: 21, scope: !2967)
!2972 = !DILocation(line: 389, column: 51, scope: !2943)
!2973 = distinct !{!2973, !2945, !2974, !621}
!2974 = !DILocation(line: 393, column: 9, scope: !2925)
!2975 = !DILocation(line: 395, column: 1, scope: !2910)
!2976 = distinct !DISubprogram(name: "halide_openglcompute_copy_to_host", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t", scope: !2, file: !6, line: 490, type: !1720, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2978 = !DILocalVariable(name: "user_context", arg: 1, scope: !2976, file: !6, line: 490, type: !127)
!2979 = !DILocalVariable(name: "buf", arg: 2, scope: !2976, file: !6, line: 490, type: !560)
!2980 = !DILocalVariable(name: "t_before", scope: !2976, file: !6, line: 492, type: !212)
!2981 = !DILocalVariable(name: "the_buffer", scope: !2976, file: !6, line: 500, type: !17)
!2982 = !DILocalVariable(name: "size", scope: !2976, file: !6, line: 501, type: !313)
!2983 = !DILocalVariable(name: "device_data", scope: !2976, file: !6, line: 515, type: !127)
!2984 = !DILocalVariable(name: "buf_copy", scope: !2976, file: !6, line: 523, type: !460)
!2985 = !DILocalVariable(name: "dev_copy", scope: !2976, file: !6, line: 525, type: !583)
!2986 = !DILocalVariable(name: "t_after", scope: !2976, file: !6, line: 572, type: !212)
!2987 = !DILocation(line: 0, scope: !2976)
!2988 = !DILocation(line: 492, column: 25, scope: !2976)
!2989 = !DILocation(line: 495, column: 23, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2976, file: !6, line: 495, column: 9)
!2991 = !DILocation(line: 495, column: 9, scope: !2976)
!2992 = !DILocation(line: 0, scope: !1010, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 496, column: 9, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !6, line: 495, column: 36)
!2995 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2993)
!2996 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2993)
!2997 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2993)
!2998 = !DILocation(line: 0, scope: !1032, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 496, column: 29, scope: !2994)
!3000 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2999)
!3001 = !DILocation(line: 0, scope: !1079, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 496, column: 9, scope: !2994)
!3003 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3002)
!3004 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3002)
!3005 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2993)
!3006 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2993)
!3007 = !DILocation(line: 0, scope: !1090, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3002)
!3009 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3008)
!3010 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3008)
!3011 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3008)
!3012 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3002)
!3013 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3002)
!3014 = !DILocation(line: 497, column: 9, scope: !2994)
!3015 = !DILocation(line: 500, column: 38, scope: !2976)
!3016 = !DILocation(line: 500, column: 33, scope: !2976)
!3017 = !DILocation(line: 0, scope: !1778, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 501, column: 24, scope: !2976)
!3019 = !DILocation(line: 0, scope: !1783, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 1519, column: 25, scope: !1778, inlinedAt: !3018)
!3021 = !DILocation(line: 0, scope: !1787, inlinedAt: !3020)
!3022 = !DILocation(line: 1508, column: 29, scope: !1792, inlinedAt: !3020)
!3023 = !DILocation(line: 1508, column: 27, scope: !1792, inlinedAt: !3020)
!3024 = !DILocation(line: 1508, column: 9, scope: !1787, inlinedAt: !3020)
!3025 = !DILocation(line: 0, scope: !787, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1514, column: 36, scope: !1783, inlinedAt: !3020)
!3027 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !3026)
!3028 = !DILocation(line: 0, scope: !1799, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 1519, column: 33, scope: !1778, inlinedAt: !3018)
!3030 = !DILocation(line: 0, scope: !1803, inlinedAt: !3029)
!3031 = !DILocation(line: 1497, column: 9, scope: !1803, inlinedAt: !3029)
!3032 = !DILocation(line: 1509, column: 24, scope: !1809, inlinedAt: !3020)
!3033 = !DILocation(line: 1509, column: 31, scope: !1809, inlinedAt: !3020)
!3034 = !DILocation(line: 1509, column: 17, scope: !1810, inlinedAt: !3020)
!3035 = !DILocation(line: 1510, column: 37, scope: !1814, inlinedAt: !3020)
!3036 = !DILocation(line: 1510, column: 61, scope: !1814, inlinedAt: !3020)
!3037 = !DILocation(line: 1510, column: 68, scope: !1814, inlinedAt: !3020)
!3038 = !DILocation(line: 1510, column: 53, scope: !1814, inlinedAt: !3020)
!3039 = !DILocation(line: 1510, column: 51, scope: !1814, inlinedAt: !3020)
!3040 = !DILocation(line: 1510, column: 23, scope: !1814, inlinedAt: !3020)
!3041 = !DILocation(line: 1511, column: 13, scope: !1814, inlinedAt: !3020)
!3042 = !DILocation(line: 1508, column: 42, scope: !1792, inlinedAt: !3020)
!3043 = distinct !{!3043, !3024, !3044, !621}
!3044 = !DILocation(line: 1512, column: 9, scope: !1787, inlinedAt: !3020)
!3045 = !DILocation(line: 1498, column: 24, scope: !1825, inlinedAt: !3029)
!3046 = !DILocation(line: 1498, column: 31, scope: !1825, inlinedAt: !3029)
!3047 = !DILocation(line: 1498, column: 17, scope: !1826, inlinedAt: !3029)
!3048 = !DILocation(line: 1499, column: 37, scope: !1831, inlinedAt: !3029)
!3049 = !DILocation(line: 1499, column: 61, scope: !1831, inlinedAt: !3029)
!3050 = !DILocation(line: 1499, column: 68, scope: !1831, inlinedAt: !3029)
!3051 = !DILocation(line: 1499, column: 53, scope: !1831, inlinedAt: !3029)
!3052 = !DILocation(line: 1499, column: 51, scope: !1831, inlinedAt: !3029)
!3053 = !DILocation(line: 1499, column: 23, scope: !1831, inlinedAt: !3029)
!3054 = !DILocation(line: 1500, column: 13, scope: !1831, inlinedAt: !3029)
!3055 = !DILocation(line: 1497, column: 42, scope: !1827, inlinedAt: !3029)
!3056 = !DILocation(line: 1497, column: 27, scope: !1827, inlinedAt: !3029)
!3057 = distinct !{!3057, !3031, !3058, !621}
!3058 = !DILocation(line: 1501, column: 9, scope: !1803, inlinedAt: !3029)
!3059 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !3026)
!3060 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !3026)
!3061 = !DILocation(line: 1513, column: 15, scope: !1783, inlinedAt: !3020)
!3062 = !DILocation(line: 0, scope: !787, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 1502, column: 36, scope: !1799, inlinedAt: !3029)
!3064 = !DILocation(line: 1519, column: 31, scope: !1778, inlinedAt: !3018)
!3065 = !DILocation(line: 502, column: 5, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !6, line: 502, column: 5)
!3067 = distinct !DILexicalBlock(scope: !2976, file: !6, line: 502, column: 5)
!3068 = !DILocation(line: 502, column: 5, scope: !3067)
!3069 = !DILocation(line: 502, column: 5, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !6, line: 502, column: 5)
!3071 = !DILocation(line: 0, scope: !675, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 504, column: 5, scope: !2976)
!3073 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !3072)
!3074 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !3072)
!3075 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !3072)
!3076 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !3072)
!3077 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !3072)
!3078 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !3072)
!3079 = !DILocation(line: 0, scope: !689, inlinedAt: !3072)
!3080 = !DILocation(line: 0, scope: !692, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 504, column: 25, scope: !2976)
!3082 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3081)
!3083 = !DILocation(line: 0, scope: !692, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 505, column: 25, scope: !2976)
!3085 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3084)
!3086 = !DILocation(line: 0, scope: !1169, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 505, column: 45, scope: !2976)
!3088 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !3087)
!3089 = !DILocation(line: 0, scope: !692, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 506, column: 25, scope: !2976)
!3091 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3090)
!3092 = !DILocation(line: 506, column: 41, scope: !2976)
!3093 = !DILocation(line: 0, scope: !1169, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 506, column: 38, scope: !2976)
!3095 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !3094)
!3096 = !DILocation(line: 0, scope: !692, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 507, column: 25, scope: !2976)
!3098 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3097)
!3099 = !DILocation(line: 0, scope: !1154, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 507, column: 44, scope: !2976)
!3101 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !3100)
!3102 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !3100)
!3103 = !DILocation(line: 0, scope: !692, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 508, column: 25, scope: !2976)
!3105 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3104)
!3106 = !DILocation(line: 0, scope: !1154, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 508, column: 38, scope: !2976)
!3108 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !3107)
!3109 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !3107)
!3110 = !DILocation(line: 0, scope: !692, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 508, column: 56, scope: !2976)
!3112 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !701, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 504, column: 5, scope: !2976)
!3115 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !3114)
!3116 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !3114)
!3117 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !3114)
!3118 = !DILocation(line: 0, scope: !715, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !3114)
!3120 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !3119)
!3121 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !3119)
!3122 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !3119)
!3123 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3114)
!3124 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3114)
!3125 = !DILocation(line: 510, column: 18, scope: !2976)
!3126 = !DILocation(line: 510, column: 5, scope: !2976)
!3127 = !DILocation(line: 511, column: 22, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2976, file: !6, line: 511, column: 9)
!3129 = !DILocation(line: 511, column: 9, scope: !2976)
!3130 = !DILocation(line: 515, column: 38, scope: !2976)
!3131 = !DILocation(line: 515, column: 25, scope: !2976)
!3132 = !DILocation(line: 519, column: 22, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2976, file: !6, line: 519, column: 9)
!3134 = !DILocation(line: 519, column: 9, scope: !2976)
!3135 = !DILocation(line: 523, column: 5, scope: !2976)
!3136 = !DILocation(line: 523, column: 21, scope: !2976)
!3137 = !DILocation(line: 523, column: 32, scope: !2976)
!3138 = !DILocation(line: 524, column: 23, scope: !2976)
!3139 = !DILocation(line: 524, column: 14, scope: !2976)
!3140 = !DILocation(line: 524, column: 21, scope: !2976)
!3141 = !DILocation(line: 525, column: 5, scope: !2976)
!3142 = !DILocation(line: 525, column: 17, scope: !2976)
!3143 = !DILocation(line: 525, column: 28, scope: !2976)
!3144 = !DILocation(line: 527, column: 19, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2976, file: !6, line: 527, column: 9)
!3146 = !DILocation(line: 527, column: 9, scope: !2976)
!3147 = !DILocation(line: 528, column: 23, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !6, line: 528, column: 13)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !6, line: 527, column: 44)
!3150 = !DILocation(line: 528, column: 13, scope: !3149)
!3151 = !DILocation(line: 529, column: 101, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !6, line: 528, column: 34)
!3153 = !DILocation(line: 529, column: 13, scope: !3152)
!3154 = !DILocation(line: 530, column: 9, scope: !3152)
!3155 = !DILocation(line: 535, column: 22, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !6, line: 530, column: 42)
!3157 = distinct !DILexicalBlock(scope: !3148, file: !6, line: 530, column: 20)
!3158 = !DILocation(line: 535, column: 33, scope: !3156)
!3159 = !DILocation(line: 536, column: 102, scope: !3156)
!3160 = !DILocation(line: 536, column: 13, scope: !3156)
!3161 = !DILocation(line: 537, column: 9, scope: !3156)
!3162 = !DILocation(line: 538, column: 73, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !6, line: 537, column: 42)
!3164 = distinct !DILexicalBlock(scope: !3157, file: !6, line: 537, column: 20)
!3165 = !DILocation(line: 538, column: 13, scope: !3163)
!3166 = !DILocation(line: 0, scope: !1010, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 540, column: 13, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3164, file: !6, line: 539, column: 16)
!3169 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3167)
!3170 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3167)
!3171 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3167)
!3172 = !DILocation(line: 0, scope: !1032, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 540, column: 33, scope: !3168)
!3174 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3173)
!3175 = !DILocation(line: 0, scope: !1079, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 540, column: 13, scope: !3168)
!3177 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3176)
!3178 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3176)
!3179 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3167)
!3180 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3167)
!3181 = !DILocation(line: 0, scope: !1090, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3176)
!3183 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3182)
!3184 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3182)
!3185 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3182)
!3186 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3176)
!3187 = !DILocation(line: 544, column: 23, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !6, line: 544, column: 13)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !6, line: 543, column: 52)
!3190 = distinct !DILexicalBlock(scope: !3145, file: !6, line: 543, column: 16)
!3191 = !DILocation(line: 544, column: 13, scope: !3189)
!3192 = !DILocation(line: 545, column: 103, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !6, line: 544, column: 34)
!3194 = !DILocation(line: 545, column: 13, scope: !3193)
!3195 = !DILocation(line: 546, column: 9, scope: !3193)
!3196 = !DILocation(line: 551, column: 22, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !6, line: 546, column: 42)
!3198 = distinct !DILexicalBlock(scope: !3188, file: !6, line: 546, column: 20)
!3199 = !DILocation(line: 551, column: 33, scope: !3197)
!3200 = !DILocation(line: 552, column: 104, scope: !3197)
!3201 = !DILocation(line: 552, column: 13, scope: !3197)
!3202 = !DILocation(line: 553, column: 9, scope: !3197)
!3203 = !DILocation(line: 554, column: 73, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !6, line: 553, column: 42)
!3205 = distinct !DILexicalBlock(scope: !3198, file: !6, line: 553, column: 20)
!3206 = !DILocation(line: 554, column: 13, scope: !3204)
!3207 = !DILocation(line: 0, scope: !1010, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 556, column: 13, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !6, line: 555, column: 16)
!3210 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3208)
!3211 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3208)
!3212 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3208)
!3213 = !DILocation(line: 0, scope: !1032, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 556, column: 33, scope: !3209)
!3215 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !1079, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 556, column: 13, scope: !3209)
!3218 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3217)
!3219 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3217)
!3220 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3208)
!3221 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3208)
!3222 = !DILocation(line: 0, scope: !1090, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3217)
!3224 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3223)
!3225 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3223)
!3226 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3223)
!3227 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3217)
!3228 = !DILocation(line: 560, column: 23, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !6, line: 560, column: 13)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !6, line: 559, column: 53)
!3231 = distinct !DILexicalBlock(scope: !3190, file: !6, line: 559, column: 16)
!3232 = !DILocation(line: 560, column: 28, scope: !3229)
!3233 = !DILocation(line: 560, column: 13, scope: !3230)
!3234 = !DILocation(line: 561, column: 73, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !6, line: 560, column: 35)
!3236 = !DILocation(line: 561, column: 13, scope: !3235)
!3237 = !DILocation(line: 562, column: 9, scope: !3235)
!3238 = !DILocation(line: 0, scope: !1010, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 563, column: 13, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3229, file: !6, line: 562, column: 16)
!3241 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3239)
!3242 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3239)
!3243 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3239)
!3244 = !DILocation(line: 0, scope: !1032, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 563, column: 33, scope: !3240)
!3246 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3245)
!3247 = !DILocation(line: 0, scope: !1079, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 563, column: 13, scope: !3240)
!3249 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3248)
!3250 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3248)
!3251 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3239)
!3252 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3239)
!3253 = !DILocation(line: 0, scope: !1090, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3248)
!3255 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3254)
!3256 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3254)
!3257 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3254)
!3258 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3248)
!3259 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3248)
!3260 = !DILocation(line: 567, column: 18, scope: !2976)
!3261 = !DILocation(line: 567, column: 5, scope: !2976)
!3262 = !DILocation(line: 0, scope: !675, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 569, column: 5, scope: !2976)
!3264 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !3263)
!3265 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !3263)
!3266 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !3263)
!3267 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !3263)
!3268 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !3263)
!3269 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !3263)
!3270 = !DILocation(line: 0, scope: !689, inlinedAt: !3263)
!3271 = !DILocation(line: 0, scope: !692, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 569, column: 25, scope: !2976)
!3273 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3272)
!3274 = !DILocation(line: 0, scope: !1154, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 569, column: 40, scope: !2976)
!3276 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !3275)
!3277 = !DILocation(line: 0, scope: !692, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 569, column: 58, scope: !2976)
!3279 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3278)
!3280 = !DILocation(line: 0, scope: !701, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 569, column: 5, scope: !2976)
!3282 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !3281)
!3283 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !3281)
!3284 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !3281)
!3285 = !DILocation(line: 0, scope: !715, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !3281)
!3287 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !3286)
!3288 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !3286)
!3289 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !3286)
!3290 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3281)
!3291 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3281)
!3292 = !DILocation(line: 572, column: 24, scope: !2976)
!3293 = !DILocation(line: 0, scope: !675, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 573, column: 5, scope: !2976)
!3295 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !3294)
!3296 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !3294)
!3297 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !3294)
!3298 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !3294)
!3299 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !3294)
!3300 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !3294)
!3301 = !DILocation(line: 0, scope: !689, inlinedAt: !3294)
!3302 = !DILocation(line: 0, scope: !692, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 573, column: 25, scope: !2976)
!3304 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3303)
!3305 = !DILocation(line: 573, column: 53, scope: !2976)
!3306 = !DILocation(line: 573, column: 44, scope: !2976)
!3307 = !DILocation(line: 573, column: 65, scope: !2976)
!3308 = !DILocation(line: 0, scope: !1691, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 573, column: 41, scope: !2976)
!3310 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !692, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 574, column: 25, scope: !2976)
!3313 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3312)
!3314 = !DILocation(line: 0, scope: !701, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 573, column: 5, scope: !2976)
!3316 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !3315)
!3317 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !3315)
!3318 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !3315)
!3319 = !DILocation(line: 0, scope: !715, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !3315)
!3321 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !3320)
!3322 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !3320)
!3323 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !3320)
!3324 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3315)
!3325 = !DILocation(line: 578, column: 1, scope: !2976)
!3326 = distinct !DISubprogram(name: "converting_copy_memory_helper<int, signed char>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !3341, retainedNodes: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3335, !3336, !3338}
!3328 = !DILocalVariable(name: "copy", arg: 1, scope: !3326, file: !6, line: 376, type: !581)
!3329 = !DILocalVariable(name: "d", arg: 2, scope: !3326, file: !6, line: 376, type: !63)
!3330 = !DILocalVariable(name: "src_off", arg: 3, scope: !3326, file: !6, line: 376, type: !425)
!3331 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3326, file: !6, line: 376, type: !425)
!3332 = !DILocalVariable(name: "from", scope: !3333, file: !6, line: 383, type: !323)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !6, line: 382, column: 18)
!3334 = distinct !DILexicalBlock(scope: !3326, file: !6, line: 382, column: 9)
!3335 = !DILocalVariable(name: "to", scope: !3333, file: !6, line: 384, type: !563)
!3336 = !DILocalVariable(name: "index", scope: !3337, file: !6, line: 385, type: !212)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !6, line: 385, column: 9)
!3338 = !DILocalVariable(name: "i", scope: !3339, file: !6, line: 389, type: !212)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !6, line: 389, column: 9)
!3340 = distinct !DILexicalBlock(scope: !3334, file: !6, line: 388, column: 12)
!3341 = !{!3342, !3343}
!3342 = !DITemplateTypeParameter(name: "Source", type: !63)
!3343 = !DITemplateTypeParameter(name: "Dest", type: !552)
!3344 = !DILocation(line: 0, scope: !3326)
!3345 = !DILocation(line: 378, column: 14, scope: !3326)
!3346 = !DILocation(line: 378, column: 19, scope: !3326)
!3347 = !DILocation(line: 378, column: 22, scope: !3326)
!3348 = !DILocation(line: 378, column: 37, scope: !3326)
!3349 = !DILocation(line: 378, column: 5, scope: !3326)
!3350 = !DILocation(line: 379, column: 10, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3326, file: !6, line: 378, column: 43)
!3352 = distinct !{!3352, !3349, !3353, !621}
!3353 = !DILocation(line: 380, column: 5, scope: !3326)
!3354 = !DILocation(line: 382, column: 11, scope: !3334)
!3355 = !DILocation(line: 382, column: 9, scope: !3326)
!3356 = !DILocation(line: 0, scope: !3339)
!3357 = !DILocation(line: 389, column: 34, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3339, file: !6, line: 389, column: 9)
!3359 = !DILocation(line: 389, column: 32, scope: !3358)
!3360 = !DILocation(line: 389, column: 9, scope: !3339)
!3361 = !DILocation(line: 0, scope: !3333)
!3362 = !DILocation(line: 0, scope: !3337)
!3363 = !DILocation(line: 385, column: 47, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3337, file: !6, line: 385, column: 9)
!3365 = !DILocation(line: 385, column: 40, scope: !3364)
!3366 = !DILocation(line: 385, column: 9, scope: !3337)
!3367 = !DILocation(line: 384, column: 34, scope: !3333)
!3368 = !DILocation(line: 384, column: 38, scope: !3333)
!3369 = !DILocation(line: 384, column: 20, scope: !3333)
!3370 = !DILocation(line: 383, column: 46, scope: !3333)
!3371 = !DILocation(line: 383, column: 50, scope: !3333)
!3372 = !DILocation(line: 383, column: 30, scope: !3333)
!3373 = !DILocation(line: 386, column: 32, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3364, file: !6, line: 385, column: 68)
!3375 = !DILocation(line: 386, column: 27, scope: !3374)
!3376 = !DILocation(line: 386, column: 16, scope: !3374)
!3377 = !DILocation(line: 386, column: 19, scope: !3374)
!3378 = !DILocation(line: 385, column: 64, scope: !3364)
!3379 = distinct !{!3379, !3366, !3380, !621}
!3380 = !DILocation(line: 387, column: 9, scope: !3337)
!3381 = !DILocation(line: 390, column: 13, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3358, file: !6, line: 389, column: 55)
!3383 = !DILocation(line: 391, column: 24, scope: !3382)
!3384 = !DILocation(line: 391, column: 21, scope: !3382)
!3385 = !DILocation(line: 392, column: 24, scope: !3382)
!3386 = !DILocation(line: 392, column: 21, scope: !3382)
!3387 = !DILocation(line: 389, column: 51, scope: !3358)
!3388 = distinct !{!3388, !3360, !3389, !621}
!3389 = !DILocation(line: 393, column: 9, scope: !3339)
!3390 = !DILocation(line: 395, column: 1, scope: !3326)
!3391 = distinct !DISubprogram(name: "converting_copy_memory_helper<int, short>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !3406, retainedNodes: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3400, !3401, !3403}
!3393 = !DILocalVariable(name: "copy", arg: 1, scope: !3391, file: !6, line: 376, type: !581)
!3394 = !DILocalVariable(name: "d", arg: 2, scope: !3391, file: !6, line: 376, type: !63)
!3395 = !DILocalVariable(name: "src_off", arg: 3, scope: !3391, file: !6, line: 376, type: !425)
!3396 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3391, file: !6, line: 376, type: !425)
!3397 = !DILocalVariable(name: "from", scope: !3398, file: !6, line: 383, type: !323)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !6, line: 382, column: 18)
!3399 = distinct !DILexicalBlock(scope: !3391, file: !6, line: 382, column: 9)
!3400 = !DILocalVariable(name: "to", scope: !3398, file: !6, line: 384, type: !564)
!3401 = !DILocalVariable(name: "index", scope: !3402, file: !6, line: 385, type: !212)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !6, line: 385, column: 9)
!3403 = !DILocalVariable(name: "i", scope: !3404, file: !6, line: 389, type: !212)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !6, line: 389, column: 9)
!3405 = distinct !DILexicalBlock(scope: !3399, file: !6, line: 388, column: 12)
!3406 = !{!3342, !3407}
!3407 = !DITemplateTypeParameter(name: "Dest", type: !555)
!3408 = !DILocation(line: 0, scope: !3391)
!3409 = !DILocation(line: 378, column: 14, scope: !3391)
!3410 = !DILocation(line: 378, column: 19, scope: !3391)
!3411 = !DILocation(line: 378, column: 22, scope: !3391)
!3412 = !DILocation(line: 378, column: 37, scope: !3391)
!3413 = !DILocation(line: 378, column: 5, scope: !3391)
!3414 = !DILocation(line: 379, column: 10, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3391, file: !6, line: 378, column: 43)
!3416 = distinct !{!3416, !3413, !3417, !621}
!3417 = !DILocation(line: 380, column: 5, scope: !3391)
!3418 = !DILocation(line: 382, column: 11, scope: !3399)
!3419 = !DILocation(line: 382, column: 9, scope: !3391)
!3420 = !DILocation(line: 0, scope: !3404)
!3421 = !DILocation(line: 389, column: 34, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3404, file: !6, line: 389, column: 9)
!3423 = !DILocation(line: 389, column: 32, scope: !3422)
!3424 = !DILocation(line: 389, column: 9, scope: !3404)
!3425 = !DILocation(line: 0, scope: !3398)
!3426 = !DILocation(line: 0, scope: !3402)
!3427 = !DILocation(line: 385, column: 47, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3402, file: !6, line: 385, column: 9)
!3429 = !DILocation(line: 385, column: 40, scope: !3428)
!3430 = !DILocation(line: 385, column: 9, scope: !3402)
!3431 = !DILocation(line: 384, column: 34, scope: !3398)
!3432 = !DILocation(line: 384, column: 38, scope: !3398)
!3433 = !DILocation(line: 384, column: 20, scope: !3398)
!3434 = !DILocation(line: 383, column: 46, scope: !3398)
!3435 = !DILocation(line: 383, column: 50, scope: !3398)
!3436 = !DILocation(line: 383, column: 30, scope: !3398)
!3437 = !DILocation(line: 386, column: 32, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3428, file: !6, line: 385, column: 68)
!3439 = !DILocation(line: 386, column: 27, scope: !3438)
!3440 = !DILocation(line: 386, column: 16, scope: !3438)
!3441 = !DILocation(line: 386, column: 19, scope: !3438)
!3442 = !DILocation(line: 385, column: 64, scope: !3428)
!3443 = distinct !{!3443, !3430, !3444, !621}
!3444 = !DILocation(line: 387, column: 9, scope: !3402)
!3445 = !DILocation(line: 390, column: 13, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3422, file: !6, line: 389, column: 55)
!3447 = !DILocation(line: 391, column: 24, scope: !3446)
!3448 = !DILocation(line: 391, column: 21, scope: !3446)
!3449 = !DILocation(line: 392, column: 24, scope: !3446)
!3450 = !DILocation(line: 392, column: 21, scope: !3446)
!3451 = !DILocation(line: 389, column: 51, scope: !3422)
!3452 = distinct !{!3452, !3424, !3453, !621}
!3453 = !DILocation(line: 393, column: 9, scope: !3404)
!3454 = !DILocation(line: 395, column: 1, scope: !3391)
!3455 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned int, unsigned char>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !3472, retainedNodes: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3466, !3467, !3469}
!3457 = !DILocalVariable(name: "copy", arg: 1, scope: !3455, file: !6, line: 376, type: !581)
!3458 = !DILocalVariable(name: "d", arg: 2, scope: !3455, file: !6, line: 376, type: !63)
!3459 = !DILocalVariable(name: "src_off", arg: 3, scope: !3455, file: !6, line: 376, type: !425)
!3460 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3455, file: !6, line: 376, type: !425)
!3461 = !DILocalVariable(name: "from", scope: !3462, file: !6, line: 383, type: !3464)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !6, line: 382, column: 18)
!3463 = distinct !DILexicalBlock(scope: !3455, file: !6, line: 382, column: 9)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3466 = !DILocalVariable(name: "to", scope: !3462, file: !6, line: 384, type: !565)
!3467 = !DILocalVariable(name: "index", scope: !3468, file: !6, line: 385, type: !212)
!3468 = distinct !DILexicalBlock(scope: !3462, file: !6, line: 385, column: 9)
!3469 = !DILocalVariable(name: "i", scope: !3470, file: !6, line: 389, type: !212)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !6, line: 389, column: 9)
!3471 = distinct !DILexicalBlock(scope: !3463, file: !6, line: 388, column: 12)
!3472 = !{!3473, !3474}
!3473 = !DITemplateTypeParameter(name: "Source", type: !18)
!3474 = !DITemplateTypeParameter(name: "Dest", type: !119)
!3475 = !DILocation(line: 0, scope: !3455)
!3476 = !DILocation(line: 378, column: 14, scope: !3455)
!3477 = !DILocation(line: 378, column: 19, scope: !3455)
!3478 = !DILocation(line: 378, column: 22, scope: !3455)
!3479 = !DILocation(line: 378, column: 37, scope: !3455)
!3480 = !DILocation(line: 378, column: 5, scope: !3455)
!3481 = !DILocation(line: 379, column: 10, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3455, file: !6, line: 378, column: 43)
!3483 = distinct !{!3483, !3480, !3484, !621}
!3484 = !DILocation(line: 380, column: 5, scope: !3455)
!3485 = !DILocation(line: 382, column: 11, scope: !3463)
!3486 = !DILocation(line: 382, column: 9, scope: !3455)
!3487 = !DILocation(line: 0, scope: !3470)
!3488 = !DILocation(line: 389, column: 34, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3470, file: !6, line: 389, column: 9)
!3490 = !DILocation(line: 389, column: 32, scope: !3489)
!3491 = !DILocation(line: 389, column: 9, scope: !3470)
!3492 = !DILocation(line: 0, scope: !3462)
!3493 = !DILocation(line: 0, scope: !3468)
!3494 = !DILocation(line: 385, column: 47, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3468, file: !6, line: 385, column: 9)
!3496 = !DILocation(line: 385, column: 40, scope: !3495)
!3497 = !DILocation(line: 385, column: 9, scope: !3468)
!3498 = !DILocation(line: 384, column: 34, scope: !3462)
!3499 = !DILocation(line: 384, column: 38, scope: !3462)
!3500 = !DILocation(line: 384, column: 20, scope: !3462)
!3501 = !DILocation(line: 383, column: 46, scope: !3462)
!3502 = !DILocation(line: 383, column: 50, scope: !3462)
!3503 = !DILocation(line: 383, column: 30, scope: !3462)
!3504 = !DILocation(line: 386, column: 32, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3495, file: !6, line: 385, column: 68)
!3506 = !DILocation(line: 386, column: 27, scope: !3505)
!3507 = !DILocation(line: 386, column: 16, scope: !3505)
!3508 = !DILocation(line: 386, column: 19, scope: !3505)
!3509 = !DILocation(line: 385, column: 64, scope: !3495)
!3510 = distinct !{!3510, !3497, !3511, !621}
!3511 = !DILocation(line: 387, column: 9, scope: !3468)
!3512 = !DILocation(line: 390, column: 13, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3489, file: !6, line: 389, column: 55)
!3514 = !DILocation(line: 391, column: 24, scope: !3513)
!3515 = !DILocation(line: 391, column: 21, scope: !3513)
!3516 = !DILocation(line: 392, column: 24, scope: !3513)
!3517 = !DILocation(line: 392, column: 21, scope: !3513)
!3518 = !DILocation(line: 389, column: 51, scope: !3489)
!3519 = distinct !{!3519, !3491, !3520, !621}
!3520 = !DILocation(line: 393, column: 9, scope: !3470)
!3521 = !DILocation(line: 395, column: 1, scope: !3455)
!3522 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned int, unsigned short>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx", scope: !2710, file: !6, line: 376, type: !579, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, templateParams: !3537, retainedNodes: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3531, !3532, !3534}
!3524 = !DILocalVariable(name: "copy", arg: 1, scope: !3522, file: !6, line: 376, type: !581)
!3525 = !DILocalVariable(name: "d", arg: 2, scope: !3522, file: !6, line: 376, type: !63)
!3526 = !DILocalVariable(name: "src_off", arg: 3, scope: !3522, file: !6, line: 376, type: !425)
!3527 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3522, file: !6, line: 376, type: !425)
!3528 = !DILocalVariable(name: "from", scope: !3529, file: !6, line: 383, type: !3464)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !6, line: 382, column: 18)
!3530 = distinct !DILexicalBlock(scope: !3522, file: !6, line: 382, column: 9)
!3531 = !DILocalVariable(name: "to", scope: !3529, file: !6, line: 384, type: !567)
!3532 = !DILocalVariable(name: "index", scope: !3533, file: !6, line: 385, type: !212)
!3533 = distinct !DILexicalBlock(scope: !3529, file: !6, line: 385, column: 9)
!3534 = !DILocalVariable(name: "i", scope: !3535, file: !6, line: 389, type: !212)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !6, line: 389, column: 9)
!3536 = distinct !DILexicalBlock(scope: !3530, file: !6, line: 388, column: 12)
!3537 = !{!3473, !3538}
!3538 = !DITemplateTypeParameter(name: "Dest", type: !236)
!3539 = !DILocation(line: 0, scope: !3522)
!3540 = !DILocation(line: 378, column: 14, scope: !3522)
!3541 = !DILocation(line: 378, column: 19, scope: !3522)
!3542 = !DILocation(line: 378, column: 22, scope: !3522)
!3543 = !DILocation(line: 378, column: 37, scope: !3522)
!3544 = !DILocation(line: 378, column: 5, scope: !3522)
!3545 = !DILocation(line: 379, column: 10, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3522, file: !6, line: 378, column: 43)
!3547 = distinct !{!3547, !3544, !3548, !621}
!3548 = !DILocation(line: 380, column: 5, scope: !3522)
!3549 = !DILocation(line: 382, column: 11, scope: !3530)
!3550 = !DILocation(line: 382, column: 9, scope: !3522)
!3551 = !DILocation(line: 0, scope: !3535)
!3552 = !DILocation(line: 389, column: 34, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3535, file: !6, line: 389, column: 9)
!3554 = !DILocation(line: 389, column: 32, scope: !3553)
!3555 = !DILocation(line: 389, column: 9, scope: !3535)
!3556 = !DILocation(line: 0, scope: !3529)
!3557 = !DILocation(line: 0, scope: !3533)
!3558 = !DILocation(line: 385, column: 47, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3533, file: !6, line: 385, column: 9)
!3560 = !DILocation(line: 385, column: 40, scope: !3559)
!3561 = !DILocation(line: 385, column: 9, scope: !3533)
!3562 = !DILocation(line: 384, column: 34, scope: !3529)
!3563 = !DILocation(line: 384, column: 38, scope: !3529)
!3564 = !DILocation(line: 384, column: 20, scope: !3529)
!3565 = !DILocation(line: 383, column: 46, scope: !3529)
!3566 = !DILocation(line: 383, column: 50, scope: !3529)
!3567 = !DILocation(line: 383, column: 30, scope: !3529)
!3568 = !DILocation(line: 386, column: 32, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3559, file: !6, line: 385, column: 68)
!3570 = !DILocation(line: 386, column: 27, scope: !3569)
!3571 = !DILocation(line: 386, column: 16, scope: !3569)
!3572 = !DILocation(line: 386, column: 19, scope: !3569)
!3573 = !DILocation(line: 385, column: 64, scope: !3559)
!3574 = distinct !{!3574, !3561, !3575, !621}
!3575 = !DILocation(line: 387, column: 9, scope: !3533)
!3576 = !DILocation(line: 390, column: 13, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3553, file: !6, line: 389, column: 55)
!3578 = !DILocation(line: 391, column: 24, scope: !3577)
!3579 = !DILocation(line: 391, column: 21, scope: !3577)
!3580 = !DILocation(line: 392, column: 24, scope: !3577)
!3581 = !DILocation(line: 392, column: 21, scope: !3577)
!3582 = !DILocation(line: 389, column: 51, scope: !3553)
!3583 = distinct !{!3583, !3555, !3584, !621}
!3584 = !DILocation(line: 393, column: 9, scope: !3535)
!3585 = !DILocation(line: 395, column: 1, scope: !3522)
!3586 = distinct !DISubprogram(name: "halide_openglcompute_run", scope: !6, file: !6, line: 591, type: !3587, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3590)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!63, !127, !127, !183, !63, !63, !63, !63, !63, !63, !63, !3589, !549, !550, !63, !559, !63, !63}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3618, !3621, !3624, !3626, !3627}
!3591 = !DILocalVariable(name: "user_context", arg: 1, scope: !3586, file: !6, line: 591, type: !127)
!3592 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !3586, file: !6, line: 591, type: !127)
!3593 = !DILocalVariable(name: "entry_name", arg: 3, scope: !3586, file: !6, line: 592, type: !183)
!3594 = !DILocalVariable(name: "blocksX", arg: 4, scope: !3586, file: !6, line: 592, type: !63)
!3595 = !DILocalVariable(name: "blocksY", arg: 5, scope: !3586, file: !6, line: 592, type: !63)
!3596 = !DILocalVariable(name: "blocksZ", arg: 6, scope: !3586, file: !6, line: 593, type: !63)
!3597 = !DILocalVariable(name: "threadsX", arg: 7, scope: !3586, file: !6, line: 593, type: !63)
!3598 = !DILocalVariable(name: "threadsY", arg: 8, scope: !3586, file: !6, line: 593, type: !63)
!3599 = !DILocalVariable(name: "threadsZ", arg: 9, scope: !3586, file: !6, line: 593, type: !63)
!3600 = !DILocalVariable(name: "shared_mem_bytes", arg: 10, scope: !3586, file: !6, line: 594, type: !63)
!3601 = !DILocalVariable(name: "arg_types", arg: 11, scope: !3586, file: !6, line: 594, type: !3589)
!3602 = !DILocalVariable(name: "args", arg: 12, scope: !3586, file: !6, line: 594, type: !549)
!3603 = !DILocalVariable(name: "arg_is_buffer", arg: 13, scope: !3586, file: !6, line: 595, type: !550)
!3604 = !DILocalVariable(name: "num_attributes", arg: 14, scope: !3586, file: !6, line: 595, type: !63)
!3605 = !DILocalVariable(name: "vertex_buffer", arg: 15, scope: !3586, file: !6, line: 596, type: !559)
!3606 = !DILocalVariable(name: "num_coords_dim0", arg: 16, scope: !3586, file: !6, line: 596, type: !63)
!3607 = !DILocalVariable(name: "num_coords_dim1", arg: 17, scope: !3586, file: !6, line: 597, type: !63)
!3608 = !DILocalVariable(name: "t_before", scope: !3586, file: !6, line: 599, type: !212)
!3609 = !DILocalVariable(name: "mod", scope: !3586, file: !6, line: 617, type: !187)
!3610 = !DILocalVariable(name: "kernel", scope: !3586, file: !6, line: 623, type: !191)
!3611 = !DILocalVariable(name: "i", scope: !3586, file: !6, line: 636, type: !63)
!3612 = !DILocalVariable(name: "value", scope: !3613, file: !6, line: 644, type: !63)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !6, line: 643, column: 55)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !6, line: 643, column: 17)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !6, line: 642, column: 36)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !6, line: 642, column: 13)
!3617 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 637, column: 36)
!3618 = !DILocalVariable(name: "value", scope: !3619, file: !6, line: 662, type: !18)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !6, line: 661, column: 63)
!3620 = distinct !DILexicalBlock(scope: !3614, file: !6, line: 661, column: 24)
!3621 = !DILocalVariable(name: "value", scope: !3622, file: !6, line: 681, type: !157)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !6, line: 680, column: 64)
!3623 = distinct !DILexicalBlock(scope: !3620, file: !6, line: 680, column: 24)
!3624 = !DILocalVariable(name: "arg_value", scope: !3625, file: !6, line: 701, type: !212)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !6, line: 700, column: 16)
!3626 = !DILocalVariable(name: "the_buffer", scope: !3625, file: !6, line: 703, type: !17)
!3627 = !DILocalVariable(name: "t_after", scope: !3586, file: !6, line: 721, type: !212)
!3628 = !DILocation(line: 0, scope: !3586)
!3629 = !DILocation(line: 599, column: 25, scope: !3586)
!3630 = !DILocation(line: 0, scope: !675, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 602, column: 5, scope: !3586)
!3632 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !3631)
!3633 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !3631)
!3634 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !3631)
!3635 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !3631)
!3636 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !3631)
!3637 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !3631)
!3638 = !DILocation(line: 0, scope: !689, inlinedAt: !3631)
!3639 = !DILocation(line: 0, scope: !692, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 603, column: 9, scope: !3586)
!3641 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3640)
!3642 = !DILocation(line: 0, scope: !1169, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 603, column: 70, scope: !3586)
!3644 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !3643)
!3645 = !DILocation(line: 0, scope: !692, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 603, column: 86, scope: !3586)
!3647 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3646)
!3648 = !DILocation(line: 0, scope: !692, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 604, column: 9, scope: !3586)
!3650 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3649)
!3651 = !DILocation(line: 0, scope: !692, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 604, column: 22, scope: !3586)
!3653 = !DILocation(line: 59, column: 17, scope: !699, inlinedAt: !3652)
!3654 = !DILocation(line: 59, column: 13, scope: !692, inlinedAt: !3652)
!3655 = !DILocation(line: 60, column: 19, scope: !3656, inlinedAt: !3652)
!3656 = distinct !DILexicalBlock(scope: !699, file: !401, line: 59, column: 29)
!3657 = !DILocation(line: 61, column: 9, scope: !3656, inlinedAt: !3652)
!3658 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3652)
!3659 = !DILocation(line: 0, scope: !699, inlinedAt: !3652)
!3660 = !DILocation(line: 0, scope: !692, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 604, column: 36, scope: !3586)
!3662 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3661)
!3663 = !DILocation(line: 0, scope: !692, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 605, column: 9, scope: !3586)
!3665 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3664)
!3666 = !DILocation(line: 0, scope: !1184, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 605, column: 23, scope: !3586)
!3668 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3667)
!3669 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3667)
!3670 = !DILocation(line: 0, scope: !692, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 605, column: 34, scope: !3586)
!3672 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3671)
!3673 = !DILocation(line: 0, scope: !1184, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 605, column: 41, scope: !3586)
!3675 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3674)
!3676 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3674)
!3677 = !DILocation(line: 0, scope: !692, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 605, column: 52, scope: !3586)
!3679 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3678)
!3680 = !DILocation(line: 0, scope: !1184, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 605, column: 59, scope: !3586)
!3682 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3681)
!3683 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3681)
!3684 = !DILocation(line: 0, scope: !692, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 605, column: 70, scope: !3586)
!3686 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3685)
!3687 = !DILocation(line: 0, scope: !692, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 606, column: 9, scope: !3586)
!3689 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3688)
!3690 = !DILocation(line: 0, scope: !1184, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 606, column: 24, scope: !3586)
!3692 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3691)
!3693 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3691)
!3694 = !DILocation(line: 0, scope: !692, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 606, column: 36, scope: !3586)
!3696 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3695)
!3697 = !DILocation(line: 0, scope: !1184, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 606, column: 43, scope: !3586)
!3699 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3698)
!3700 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3698)
!3701 = !DILocation(line: 0, scope: !692, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 606, column: 55, scope: !3586)
!3703 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3702)
!3704 = !DILocation(line: 0, scope: !1184, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 606, column: 62, scope: !3586)
!3706 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3705)
!3707 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3705)
!3708 = !DILocation(line: 0, scope: !692, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 606, column: 74, scope: !3586)
!3710 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3709)
!3711 = !DILocation(line: 0, scope: !692, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 607, column: 9, scope: !3586)
!3713 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3712)
!3714 = !DILocation(line: 0, scope: !1184, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 607, column: 22, scope: !3586)
!3716 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3715)
!3717 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3715)
!3718 = !DILocation(line: 0, scope: !692, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 607, column: 42, scope: !3586)
!3720 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3719)
!3721 = !DILocation(line: 0, scope: !692, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 608, column: 9, scope: !3586)
!3723 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !1184, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 608, column: 31, scope: !3586)
!3726 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3725)
!3727 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3725)
!3728 = !DILocation(line: 0, scope: !692, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 608, column: 49, scope: !3586)
!3730 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3729)
!3731 = !DILocation(line: 0, scope: !692, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 609, column: 9, scope: !3586)
!3733 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3732)
!3734 = !DILocation(line: 0, scope: !1184, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 609, column: 32, scope: !3586)
!3736 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3735)
!3737 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3735)
!3738 = !DILocation(line: 0, scope: !692, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 609, column: 51, scope: !3586)
!3740 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3739)
!3741 = !DILocation(line: 0, scope: !692, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 610, column: 9, scope: !3586)
!3743 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3742)
!3744 = !DILocation(line: 0, scope: !1184, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 610, column: 32, scope: !3586)
!3746 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3745)
!3747 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3745)
!3748 = !DILocation(line: 0, scope: !692, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 610, column: 51, scope: !3586)
!3750 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3749)
!3751 = !DILocation(line: 0, scope: !701, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 602, column: 5, scope: !3586)
!3753 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !3752)
!3754 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !3752)
!3755 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !3752)
!3756 = !DILocation(line: 0, scope: !715, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !3752)
!3758 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !3757)
!3759 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !3757)
!3760 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !3757)
!3761 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3752)
!3762 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3752)
!3763 = !DILocation(line: 612, column: 23, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 612, column: 9)
!3765 = !DILocation(line: 612, column: 9, scope: !3586)
!3766 = !DILocation(line: 0, scope: !1010, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 613, column: 9, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !6, line: 612, column: 36)
!3769 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3767)
!3770 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3767)
!3771 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3767)
!3772 = !DILocation(line: 0, scope: !1032, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 613, column: 29, scope: !3768)
!3774 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3773)
!3775 = !DILocation(line: 0, scope: !1079, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 613, column: 9, scope: !3768)
!3777 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3776)
!3778 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3776)
!3779 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3767)
!3780 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3767)
!3781 = !DILocation(line: 0, scope: !1090, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3776)
!3783 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3782)
!3784 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3782)
!3785 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3782)
!3786 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3776)
!3787 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3776)
!3788 = !DILocation(line: 614, column: 9, scope: !3768)
!3789 = !DILocation(line: 618, column: 10, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 618, column: 9)
!3791 = !DILocation(line: 618, column: 9, scope: !3586)
!3792 = !DILocation(line: 0, scope: !1010, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 619, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !6, line: 618, column: 15)
!3795 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3793)
!3796 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3793)
!3797 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3793)
!3798 = !DILocation(line: 0, scope: !1032, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 619, column: 29, scope: !3794)
!3800 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3799)
!3801 = !DILocation(line: 0, scope: !1079, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 619, column: 9, scope: !3794)
!3803 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3802)
!3804 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3802)
!3805 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3793)
!3806 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3793)
!3807 = !DILocation(line: 0, scope: !1090, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3802)
!3809 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3808)
!3810 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3808)
!3811 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3808)
!3812 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3802)
!3813 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3802)
!3814 = !DILocation(line: 620, column: 9, scope: !3794)
!3815 = !DILocation(line: 617, column: 24, scope: !3586)
!3816 = !DILocation(line: 623, column: 26, scope: !3586)
!3817 = !DILocation(line: 624, column: 10, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 624, column: 9)
!3819 = !DILocation(line: 624, column: 9, scope: !3586)
!3820 = !DILocation(line: 0, scope: !1010, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 625, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3818, file: !6, line: 624, column: 18)
!3823 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3821)
!3824 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3821)
!3825 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3821)
!3826 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3821)
!3827 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3821)
!3828 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !3821)
!3829 = !DILocation(line: 0, scope: !1024, inlinedAt: !3821)
!3830 = !DILocation(line: 0, scope: !1032, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 625, column: 29, scope: !3822)
!3832 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3831)
!3833 = !DILocation(line: 0, scope: !1032, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 625, column: 73, scope: !3822)
!3835 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !3834)
!3836 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !3834)
!3837 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !3834)
!3838 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3834)
!3839 = !DILocation(line: 0, scope: !1039, inlinedAt: !3834)
!3840 = !DILocation(line: 0, scope: !1032, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 625, column: 87, scope: !3822)
!3842 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3841)
!3843 = !DILocation(line: 0, scope: !1079, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 625, column: 9, scope: !3822)
!3845 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !3844)
!3846 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3844)
!3847 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3844)
!3848 = !DILocation(line: 0, scope: !1090, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3844)
!3850 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3849)
!3851 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3849)
!3852 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3849)
!3853 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3844)
!3854 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3844)
!3855 = !DILocation(line: 626, column: 9, scope: !3822)
!3856 = !DILocation(line: 629, column: 18, scope: !3586)
!3857 = !DILocation(line: 629, column: 37, scope: !3586)
!3858 = !DILocation(line: 629, column: 5, scope: !3586)
!3859 = !DILocation(line: 630, column: 22, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 630, column: 9)
!3861 = !DILocation(line: 630, column: 9, scope: !3586)
!3862 = !DILocation(line: 637, column: 25, scope: !3586)
!3863 = !DILocation(line: 637, column: 30, scope: !3586)
!3864 = !DILocation(line: 637, column: 5, scope: !3586)
!3865 = !DILocation(line: 638, column: 9, scope: !3617)
!3866 = !DILocation(line: 0, scope: !675, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 638, column: 9, scope: !3617)
!3868 = !DILocation(line: 38, column: 11, scope: !675, inlinedAt: !3867)
!3869 = !DILocation(line: 38, column: 30, scope: !675, inlinedAt: !3867)
!3870 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !3867)
!3871 = !DILocation(line: 44, column: 17, scope: !684, inlinedAt: !3867)
!3872 = !DILocation(line: 47, column: 13, scope: !687, inlinedAt: !3867)
!3873 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !3867)
!3874 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !3867)
!3875 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !3867)
!3876 = !DILocation(line: 49, column: 17, scope: !711, inlinedAt: !3867)
!3877 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !3867)
!3878 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !3867)
!3879 = !DILocation(line: 53, column: 17, scope: !1133, inlinedAt: !3867)
!3880 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 638, column: 29, scope: !3617)
!3882 = !DILocation(line: 0, scope: !692, inlinedAt: !3881)
!3883 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3881)
!3884 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !3881)
!3885 = !DILocation(line: 0, scope: !1184, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 638, column: 44, scope: !3617)
!3887 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !3886)
!3888 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3886)
!3889 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !3886)
!3890 = !DILocation(line: 0, scope: !692, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 639, column: 29, scope: !3617)
!3892 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !3891)
!3893 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3891)
!3894 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !3891)
!3895 = !DILocation(line: 0, scope: !1306, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 639, column: 36, scope: !3617)
!3897 = !DILocation(line: 109, column: 42, scope: !1306, inlinedAt: !3896)
!3898 = !DILocation(line: 109, column: 15, scope: !1306, inlinedAt: !3896)
!3899 = !DILocation(line: 109, column: 13, scope: !1306, inlinedAt: !3896)
!3900 = !DILocation(line: 0, scope: !692, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 640, column: 29, scope: !3617)
!3902 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !3901)
!3903 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3901)
!3904 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !3901)
!3905 = !DILocation(line: 640, column: 52, scope: !3617)
!3906 = !DILocation(line: 640, column: 41, scope: !3617)
!3907 = !DILocation(line: 0, scope: !1169, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 640, column: 37, scope: !3617)
!3909 = !DILocation(line: 98, column: 45, scope: !1169, inlinedAt: !3908)
!3910 = !DILocation(line: 98, column: 15, scope: !1169, inlinedAt: !3908)
!3911 = !DILocation(line: 98, column: 13, scope: !1169, inlinedAt: !3908)
!3912 = !DILocation(line: 0, scope: !692, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 640, column: 62, scope: !3617)
!3914 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !3913)
!3915 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3913)
!3916 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !3913)
!3917 = !DILocation(line: 641, column: 32, scope: !3617)
!3918 = !DILocation(line: 0, scope: !1184, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 641, column: 29, scope: !3617)
!3920 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !3919)
!3921 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !3919)
!3922 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !3919)
!3923 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !3919)
!3924 = !DILocation(line: 0, scope: !692, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 641, column: 49, scope: !3617)
!3926 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !3925)
!3927 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !3925)
!3928 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !3925)
!3929 = !DILocation(line: 0, scope: !701, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 638, column: 9, scope: !3617)
!3931 = !DILocation(line: 167, column: 14, scope: !707, inlinedAt: !3930)
!3932 = !DILocation(line: 0, scope: !707, inlinedAt: !3930)
!3933 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !3930)
!3934 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !3930)
!3935 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !3930)
!3936 = !DILocation(line: 0, scope: !715, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !3930)
!3938 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !3937)
!3939 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !3937)
!3940 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !3937)
!3941 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !3930)
!3942 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !3930)
!3943 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3930)
!3944 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !3930)
!3945 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !3930)
!3946 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3930)
!3947 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !3930)
!3948 = !DILocation(line: 642, column: 13, scope: !3616)
!3949 = !DILocation(line: 642, column: 30, scope: !3616)
!3950 = !DILocation(line: 642, column: 13, scope: !3617)
!3951 = !DILocation(line: 643, column: 30, scope: !3614)
!3952 = !{!771, !772, i64 0}
!3953 = !DILocation(line: 643, column: 17, scope: !3615)
!3954 = !DILocation(line: 645, column: 34, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3613, file: !6, line: 645, column: 21)
!3956 = !DILocation(line: 645, column: 21, scope: !3613)
!3957 = !DILocation(line: 646, column: 41, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3955, file: !6, line: 645, column: 45)
!3959 = !DILocation(line: 646, column: 29, scope: !3958)
!3960 = !DILocation(line: 0, scope: !3613)
!3961 = !DILocation(line: 647, column: 17, scope: !3958)
!3962 = !DILocation(line: 648, column: 42, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !6, line: 647, column: 53)
!3964 = distinct !DILexicalBlock(scope: !3955, file: !6, line: 647, column: 28)
!3965 = !DILocation(line: 648, column: 29, scope: !3963)
!3966 = !DILocation(line: 649, column: 17, scope: !3963)
!3967 = !DILocation(line: 650, column: 42, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !6, line: 649, column: 53)
!3969 = distinct !DILexicalBlock(scope: !3964, file: !6, line: 649, column: 28)
!3970 = !DILocation(line: 650, column: 29, scope: !3968)
!3971 = !DILocation(line: 0, scope: !1010, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 652, column: 21, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3969, file: !6, line: 651, column: 24)
!3974 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3972)
!3975 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3972)
!3976 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3972)
!3977 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3972)
!3978 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3972)
!3979 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !3972)
!3980 = !DILocation(line: 0, scope: !1024, inlinedAt: !3972)
!3981 = !DILocation(line: 0, scope: !1032, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 652, column: 41, scope: !3973)
!3983 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3982)
!3984 = !DILocalVariable(name: "this", arg: 1, scope: !3985, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!3985 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !483, file: !401, line: 108, type: !524, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !523, retainedNodes: !3986)
!3986 = !{!3984, !3987}
!3987 = !DILocalVariable(name: "t", arg: 2, scope: !3985, file: !401, line: 108, type: !252)
!3988 = !DILocation(line: 0, scope: !3985, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 653, column: 41, scope: !3973)
!3990 = !DILocation(line: 109, column: 15, scope: !3985, inlinedAt: !3989)
!3991 = !DILocation(line: 0, scope: !1032, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 654, column: 41, scope: !3973)
!3993 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3992)
!3994 = !DILocation(line: 0, scope: !1079, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 652, column: 21, scope: !3973)
!3996 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !3995)
!3997 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3995)
!3998 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3995)
!3999 = !DILocation(line: 0, scope: !1090, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3995)
!4001 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4000)
!4002 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4000)
!4003 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4000)
!4004 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3995)
!4005 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3995)
!4006 = !DILocation(line: 655, column: 21, scope: !3973)
!4007 = !DILocation(line: 0, scope: !3955)
!4008 = !DILocation(line: 657, column: 30, scope: !3613)
!4009 = !DILocation(line: 657, column: 17, scope: !3613)
!4010 = !DILocation(line: 658, column: 34, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3613, file: !6, line: 658, column: 21)
!4012 = !DILocation(line: 658, column: 21, scope: !3613)
!4013 = !DILocation(line: 663, column: 34, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3619, file: !6, line: 663, column: 21)
!4015 = !DILocation(line: 663, column: 44, scope: !4014)
!4016 = !DILocation(line: 665, column: 42, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4014, file: !6, line: 664, column: 45)
!4018 = !DILocation(line: 665, column: 29, scope: !4017)
!4019 = !DILocation(line: 0, scope: !3619)
!4020 = !DILocation(line: 666, column: 17, scope: !4017)
!4021 = !DILocation(line: 667, column: 43, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !6, line: 666, column: 53)
!4023 = distinct !DILexicalBlock(scope: !4014, file: !6, line: 666, column: 28)
!4024 = !DILocation(line: 667, column: 29, scope: !4022)
!4025 = !DILocation(line: 668, column: 17, scope: !4022)
!4026 = !DILocation(line: 669, column: 43, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !6, line: 668, column: 53)
!4028 = distinct !DILexicalBlock(scope: !4023, file: !6, line: 668, column: 28)
!4029 = !DILocation(line: 669, column: 29, scope: !4027)
!4030 = !DILocation(line: 0, scope: !1010, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 671, column: 21, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !6, line: 670, column: 24)
!4033 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4031)
!4034 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4031)
!4035 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4031)
!4036 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4031)
!4037 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4031)
!4038 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4031)
!4039 = !DILocation(line: 0, scope: !1024, inlinedAt: !4031)
!4040 = !DILocation(line: 0, scope: !1032, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 671, column: 41, scope: !4032)
!4042 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4041)
!4043 = !DILocation(line: 0, scope: !3985, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 672, column: 41, scope: !4032)
!4045 = !DILocation(line: 109, column: 15, scope: !3985, inlinedAt: !4044)
!4046 = !DILocation(line: 0, scope: !1032, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 673, column: 41, scope: !4032)
!4048 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4047)
!4049 = !DILocation(line: 0, scope: !1079, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 671, column: 21, scope: !4032)
!4051 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4050)
!4052 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4050)
!4053 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4050)
!4054 = !DILocation(line: 0, scope: !1090, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4050)
!4056 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4055)
!4057 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4055)
!4058 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4055)
!4059 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4050)
!4060 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !4050)
!4061 = !DILocation(line: 674, column: 21, scope: !4032)
!4062 = !DILocation(line: 0, scope: !4014)
!4063 = !DILocation(line: 676, column: 30, scope: !3619)
!4064 = !DILocation(line: 676, column: 17, scope: !3619)
!4065 = !DILocation(line: 677, column: 34, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3619, file: !6, line: 677, column: 21)
!4067 = !DILocation(line: 677, column: 21, scope: !3619)
!4068 = !DILocation(line: 682, column: 34, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !3622, file: !6, line: 682, column: 21)
!4070 = !DILocation(line: 682, column: 39, scope: !4069)
!4071 = !DILocation(line: 682, column: 21, scope: !3622)
!4072 = !DILocation(line: 683, column: 40, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !6, line: 682, column: 46)
!4074 = !DILocation(line: 683, column: 29, scope: !4073)
!4075 = !{!4076, !4076, i64 0}
!4076 = !{!"float", !613, i64 0}
!4077 = !DILocation(line: 0, scope: !3622)
!4078 = !DILocation(line: 690, column: 30, scope: !3622)
!4079 = !DILocation(line: 690, column: 17, scope: !3622)
!4080 = !DILocation(line: 691, column: 34, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !3622, file: !6, line: 691, column: 21)
!4082 = !DILocation(line: 691, column: 21, scope: !3622)
!4083 = !DILocation(line: 0, scope: !1010, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 685, column: 21, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4069, file: !6, line: 684, column: 24)
!4086 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4084)
!4087 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4084)
!4088 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4084)
!4089 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4084)
!4090 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4084)
!4091 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4084)
!4092 = !DILocation(line: 0, scope: !1024, inlinedAt: !4084)
!4093 = !DILocation(line: 0, scope: !1032, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 685, column: 41, scope: !4085)
!4095 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4094)
!4096 = !DILocation(line: 0, scope: !3985, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 686, column: 41, scope: !4085)
!4098 = !DILocation(line: 109, column: 15, scope: !3985, inlinedAt: !4097)
!4099 = !DILocation(line: 0, scope: !1032, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 687, column: 41, scope: !4085)
!4101 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4100)
!4102 = !DILocation(line: 0, scope: !1079, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 685, column: 21, scope: !4085)
!4104 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4103)
!4105 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4103)
!4106 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4103)
!4107 = !DILocation(line: 0, scope: !1090, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4103)
!4109 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4108)
!4110 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4108)
!4111 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4108)
!4112 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4103)
!4113 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !4103)
!4114 = !DILocation(line: 688, column: 21, scope: !4085)
!4115 = !DILocation(line: 0, scope: !1010, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 695, column: 17, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !3623, file: !6, line: 694, column: 20)
!4118 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4116)
!4119 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4116)
!4120 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4116)
!4121 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4116)
!4122 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4116)
!4123 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4116)
!4124 = !DILocation(line: 0, scope: !1024, inlinedAt: !4116)
!4125 = !DILocation(line: 0, scope: !1032, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 695, column: 37, scope: !4117)
!4127 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4126)
!4128 = !DILocation(line: 0, scope: !3985, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 696, column: 37, scope: !4117)
!4130 = !DILocation(line: 109, column: 15, scope: !3985, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !1032, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 697, column: 37, scope: !4117)
!4133 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4132)
!4134 = !DILocation(line: 0, scope: !1079, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 695, column: 17, scope: !4117)
!4136 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4135)
!4137 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4135)
!4138 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4135)
!4139 = !DILocation(line: 0, scope: !1090, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4135)
!4141 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4140)
!4142 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4140)
!4143 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4140)
!4144 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4135)
!4145 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !4135)
!4146 = !DILocation(line: 698, column: 17, scope: !4117)
!4147 = !DILocation(line: 701, column: 54, scope: !3625)
!4148 = !DILocation(line: 701, column: 64, scope: !3625)
!4149 = !DILocation(line: 0, scope: !3625)
!4150 = !DILocation(line: 703, column: 41, scope: !3625)
!4151 = !DILocation(line: 704, column: 26, scope: !3625)
!4152 = !DILocation(line: 704, column: 13, scope: !3625)
!4153 = !DILocation(line: 705, column: 30, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !3625, file: !6, line: 705, column: 17)
!4155 = !DILocation(line: 709, column: 10, scope: !3617)
!4156 = !DILocation(line: 637, column: 12, scope: !3586)
!4157 = distinct !{!4157, !3864, !4158, !621}
!4158 = !DILocation(line: 710, column: 5, scope: !3586)
!4159 = !DILocation(line: 711, column: 18, scope: !3586)
!4160 = !DILocation(line: 711, column: 5, scope: !3586)
!4161 = !DILocation(line: 712, column: 22, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 712, column: 9)
!4163 = !DILocation(line: 712, column: 9, scope: !3586)
!4164 = !DILocation(line: 715, column: 18, scope: !3586)
!4165 = !DILocation(line: 715, column: 5, scope: !3586)
!4166 = !DILocation(line: 716, column: 22, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !3586, file: !6, line: 716, column: 9)
!4168 = !DILocation(line: 716, column: 9, scope: !3586)
!4169 = !DILocation(line: 721, column: 24, scope: !3586)
!4170 = !DILocation(line: 0, scope: !675, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 722, column: 5, scope: !3586)
!4172 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4171)
!4173 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4171)
!4174 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4171)
!4175 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4171)
!4176 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4171)
!4177 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4171)
!4178 = !DILocation(line: 0, scope: !689, inlinedAt: !4171)
!4179 = !DILocation(line: 0, scope: !692, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 722, column: 25, scope: !3586)
!4181 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4180)
!4182 = !DILocation(line: 722, column: 53, scope: !3586)
!4183 = !DILocation(line: 722, column: 44, scope: !3586)
!4184 = !DILocation(line: 722, column: 65, scope: !3586)
!4185 = !DILocation(line: 0, scope: !1691, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 722, column: 41, scope: !3586)
!4187 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !4186)
!4188 = !DILocation(line: 0, scope: !692, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 723, column: 25, scope: !3586)
!4190 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4189)
!4191 = !DILocation(line: 0, scope: !701, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 722, column: 5, scope: !3586)
!4193 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4192)
!4194 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4192)
!4195 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4192)
!4196 = !DILocation(line: 0, scope: !715, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4192)
!4198 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4197)
!4199 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4197)
!4200 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4197)
!4201 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4192)
!4202 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4192)
!4203 = !DILocation(line: 727, column: 1, scope: !3586)
!4204 = distinct !DISubprogram(name: "halide_openglcompute_device_sync", scope: !6, file: !6, line: 729, type: !1720, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4205)
!4205 = !{!4206, !4207, !4208, !4209}
!4206 = !DILocalVariable(name: "user_context", arg: 1, scope: !4204, file: !6, line: 729, type: !127)
!4207 = !DILocalVariable(arg: 2, scope: !4204, file: !6, line: 729, type: !560)
!4208 = !DILocalVariable(name: "t_before", scope: !4204, file: !6, line: 731, type: !212)
!4209 = !DILocalVariable(name: "t_after", scope: !4204, file: !6, line: 740, type: !212)
!4210 = !DILocation(line: 0, scope: !4204)
!4211 = !DILocation(line: 731, column: 25, scope: !4204)
!4212 = !DILocation(line: 734, column: 23, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4204, file: !6, line: 734, column: 9)
!4214 = !DILocation(line: 734, column: 9, scope: !4204)
!4215 = !DILocation(line: 0, scope: !1010, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 735, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !6, line: 734, column: 36)
!4218 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4216)
!4219 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4216)
!4220 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4216)
!4221 = !DILocation(line: 0, scope: !1032, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 735, column: 29, scope: !4217)
!4223 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4222)
!4224 = !DILocation(line: 0, scope: !1079, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 735, column: 9, scope: !4217)
!4226 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4225)
!4227 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4225)
!4228 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4216)
!4229 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4216)
!4230 = !DILocation(line: 0, scope: !1090, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4225)
!4232 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4231)
!4233 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4231)
!4234 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4231)
!4235 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4225)
!4236 = !DILocation(line: 738, column: 18, scope: !4204)
!4237 = !DILocation(line: 738, column: 5, scope: !4204)
!4238 = !DILocation(line: 740, column: 24, scope: !4204)
!4239 = !DILocation(line: 0, scope: !675, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 741, column: 5, scope: !4204)
!4241 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4240)
!4242 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4240)
!4243 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4240)
!4244 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4240)
!4245 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4240)
!4246 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4240)
!4247 = !DILocation(line: 0, scope: !689, inlinedAt: !4240)
!4248 = !DILocation(line: 0, scope: !692, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 741, column: 25, scope: !4204)
!4250 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4249)
!4251 = !DILocation(line: 741, column: 53, scope: !4204)
!4252 = !DILocation(line: 741, column: 44, scope: !4204)
!4253 = !DILocation(line: 741, column: 65, scope: !4204)
!4254 = !DILocation(line: 0, scope: !1691, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 741, column: 41, scope: !4204)
!4256 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !4255)
!4257 = !DILocation(line: 0, scope: !692, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 742, column: 25, scope: !4204)
!4259 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !701, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 741, column: 5, scope: !4204)
!4262 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4261)
!4263 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4261)
!4264 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4261)
!4265 = !DILocation(line: 0, scope: !715, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4261)
!4267 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4266)
!4268 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4266)
!4269 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4266)
!4270 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4261)
!4271 = !DILocation(line: 745, column: 1, scope: !4204)
!4272 = distinct !DISubprogram(name: "get_kernel_name", scope: !4273, file: !6, line: 748, type: !4274, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4276)
!4273 = !DINamespace(scope: null)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!195, !183, !183}
!4276 = !{!4277, !4278, !4279, !4281}
!4277 = !DILocalVariable(name: "start", arg: 1, scope: !4272, file: !6, line: 748, type: !183)
!4278 = !DILocalVariable(name: "end", arg: 2, scope: !4272, file: !6, line: 748, type: !183)
!4279 = !DILocalVariable(name: "kernel_name_length", scope: !4272, file: !6, line: 749, type: !4280)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!4281 = !DILocalVariable(name: "kernel_name", scope: !4272, file: !6, line: 750, type: !195)
!4282 = !DILocation(line: 0, scope: !4272)
!4283 = !DILocation(line: 749, column: 43, scope: !4272)
!4284 = !DILocation(line: 750, column: 59, scope: !4272)
!4285 = !DILocation(line: 750, column: 33, scope: !4272)
!4286 = !DILocation(line: 751, column: 5, scope: !4272)
!4287 = !DILocation(line: 752, column: 5, scope: !4272)
!4288 = !DILocation(line: 752, column: 37, scope: !4272)
!4289 = !DILocation(line: 753, column: 5, scope: !4272)
!4290 = !DISubprogram(name: "malloc", scope: !37, file: !37, line: 87, type: !4291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!127, !314}
!4293 = distinct !DISubprogram(name: "halide_openglcompute_initialize_kernels", scope: !6, file: !6, line: 760, type: !4294, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!63, !127, !549, !183, !63}
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4304, !4305, !4306, !4307, !4308, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4322, !4335, !4338, !4339, !4340, !4343, !4344, !4347, !4348, !4349, !4350, !4351, !4353, !4357, !4358, !4362}
!4297 = !DILocalVariable(name: "user_context", arg: 1, scope: !4293, file: !6, line: 760, type: !127)
!4298 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !4293, file: !6, line: 760, type: !549)
!4299 = !DILocalVariable(name: "src", arg: 3, scope: !4293, file: !6, line: 761, type: !183)
!4300 = !DILocalVariable(name: "size", arg: 4, scope: !4293, file: !6, line: 761, type: !63)
!4301 = !DILocalVariable(name: "t_before", scope: !4293, file: !6, line: 763, type: !212)
!4302 = !DILocalVariable(name: "error", scope: !4303, file: !6, line: 766, type: !63)
!4303 = distinct !DILexicalBlock(scope: !4293, file: !6, line: 766, column: 13)
!4304 = !DILocalVariable(name: "state", scope: !4293, file: !6, line: 770, type: !561)
!4305 = !DILocalVariable(name: "module", scope: !4293, file: !6, line: 771, type: !187)
!4306 = !DILocalVariable(name: "END_OF_KERNEL_MARKER", scope: !4293, file: !6, line: 784, type: !183)
!4307 = !DILocalVariable(name: "END_OF_KERNEL_MARKER_LENGTH", scope: !4293, file: !6, line: 785, type: !4280)
!4308 = !DILocalVariable(name: "end_of_kernel_marker", scope: !4309, file: !6, line: 788, type: !183)
!4309 = distinct !DILexicalBlock(scope: !4293, file: !6, line: 787, column: 18)
!4310 = !DILocalVariable(name: "just_before_kernel_name", scope: !4309, file: !6, line: 793, type: !183)
!4311 = !DILocalVariable(name: "just_beyond_kernel_name", scope: !4309, file: !6, line: 794, type: !183)
!4312 = !DILocalVariable(name: "kernel_name", scope: !4309, file: !6, line: 799, type: !195)
!4313 = !DILocalVariable(name: "src_len", scope: !4309, file: !6, line: 801, type: !313)
!4314 = !DILocalVariable(name: "kernel", scope: !4309, file: !6, line: 803, type: !191)
!4315 = !DILocalVariable(name: "shader", scope: !4309, file: !6, line: 808, type: !17)
!4316 = !DILocalVariable(name: "sources", scope: !4309, file: !6, line: 812, type: !141)
!4317 = !DILocalVariable(name: "sources_lengths", scope: !4309, file: !6, line: 813, type: !144)
!4318 = !DILocalVariable(name: "shader_ok", scope: !4309, file: !6, line: 829, type: !106)
!4319 = !DILocalVariable(name: "log_len", scope: !4320, file: !6, line: 833, type: !106)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !6, line: 831, column: 35)
!4321 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 831, column: 13)
!4322 = !DILocalVariable(name: "log_tmp", scope: !4320, file: !6, line: 835, type: !4323)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HalideMalloc", scope: !2, file: !6, line: 92, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4324, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocE")
!4324 = !{!4325, !4327, !4328, !4332}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !4323, file: !6, line: 99, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4323, file: !6, line: 100, baseType: !4326, size: 64, offset: 64)
!4328 = !DISubprogram(name: "HalideMalloc", scope: !4323, file: !6, line: 93, type: !4329, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !4331, !127, !313}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4332 = !DISubprogram(name: "~HalideMalloc", scope: !4323, file: !6, line: 96, type: !4333, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4331}
!4335 = !DILocalVariable(name: "log", scope: !4336, file: !6, line: 837, type: !195)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !6, line: 836, column: 30)
!4337 = distinct !DILexicalBlock(scope: !4320, file: !6, line: 836, column: 17)
!4338 = !DILocalVariable(name: "program", scope: !4309, file: !6, line: 846, type: !17)
!4339 = !DILocalVariable(name: "status", scope: !4309, file: !6, line: 859, type: !106)
!4340 = !DILocalVariable(name: "log_len", scope: !4341, file: !6, line: 862, type: !106)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !6, line: 861, column: 22)
!4342 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 861, column: 13)
!4343 = !DILocalVariable(name: "log_tmp", scope: !4341, file: !6, line: 864, type: !4323)
!4344 = !DILocalVariable(name: "log", scope: !4345, file: !6, line: 866, type: !195)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !6, line: 865, column: 30)
!4346 = distinct !DILexicalBlock(scope: !4341, file: !6, line: 865, column: 17)
!4347 = !DILocalVariable(name: "i", scope: !4309, file: !6, line: 877, type: !106)
!4348 = !DILocalVariable(name: "count", scope: !4309, file: !6, line: 878, type: !106)
!4349 = !DILocalVariable(name: "size", scope: !4309, file: !6, line: 880, type: !106)
!4350 = !DILocalVariable(name: "type", scope: !4309, file: !6, line: 881, type: !24)
!4351 = !DILocalVariable(name: "bufSize", scope: !4309, file: !6, line: 883, type: !4352)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4353 = !DILocalVariable(name: "name", scope: !4309, file: !6, line: 884, type: !4354)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 512, elements: !4355)
!4355 = !{!4356}
!4356 = !DISubrange(count: 64)
!4357 = !DILocalVariable(name: "length", scope: !4309, file: !6, line: 885, type: !62)
!4358 = !DILocalVariable(name: "loc", scope: !4359, file: !6, line: 892, type: !106)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !6, line: 890, column: 37)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !6, line: 890, column: 9)
!4361 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 890, column: 9)
!4362 = !DILocalVariable(name: "t_after", scope: !4293, file: !6, line: 899, type: !212)
!4363 = !DILocation(line: 0, scope: !4293)
!4364 = !DILocation(line: 763, column: 25, scope: !4293)
!4365 = !DILocation(line: 766, column: 21, scope: !4303)
!4366 = !DILocation(line: 0, scope: !4303)
!4367 = !DILocation(line: 766, column: 13, scope: !4303)
!4368 = !DILocation(line: 770, column: 27, scope: !4293)
!4369 = !DILocation(line: 771, column: 27, scope: !4293)
!4370 = !DILocation(line: 772, column: 10, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4293, file: !6, line: 772, column: 9)
!4372 = !DILocation(line: 772, column: 9, scope: !4293)
!4373 = !DILocation(line: 773, column: 33, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4371, file: !6, line: 772, column: 18)
!4375 = !DILocation(line: 773, column: 18, scope: !4374)
!4376 = !DILocation(line: 774, column: 17, scope: !4374)
!4377 = !DILocation(line: 774, column: 24, scope: !4374)
!4378 = !DILocation(line: 775, column: 24, scope: !4374)
!4379 = !DILocation(line: 775, column: 17, scope: !4374)
!4380 = !DILocation(line: 775, column: 22, scope: !4374)
!4381 = !{!1648, !770, i64 8}
!4382 = !DILocation(line: 776, column: 20, scope: !4374)
!4383 = !DILocation(line: 777, column: 16, scope: !4374)
!4384 = !DILocation(line: 778, column: 5, scope: !4374)
!4385 = !DILocation(line: 780, column: 17, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4293, file: !6, line: 780, column: 9)
!4387 = !DILocation(line: 780, column: 9, scope: !4386)
!4388 = !DILocation(line: 780, column: 9, scope: !4293)
!4389 = !DILocation(line: 785, column: 48, scope: !4293)
!4390 = !DILocation(line: 788, column: 44, scope: !4309)
!4391 = !DILocation(line: 0, scope: !4309)
!4392 = !DILocation(line: 789, column: 14, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 789, column: 13)
!4394 = !DILocation(line: 789, column: 13, scope: !4309)
!4395 = !DILocation(line: 793, column: 68, scope: !4309)
!4396 = !DILocation(line: 794, column: 47, scope: !4309)
!4397 = !DILocation(line: 795, column: 14, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 795, column: 13)
!4399 = !DILocation(line: 795, column: 13, scope: !4309)
!4400 = !DILocation(line: 799, column: 29, scope: !4309)
!4401 = !DILocation(line: 0, scope: !1010, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 796, column: 13, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4398, file: !6, line: 795, column: 39)
!4404 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4402)
!4405 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4402)
!4406 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4402)
!4407 = !DILocation(line: 0, scope: !1032, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 796, column: 33, scope: !4403)
!4409 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4408)
!4410 = !DILocation(line: 0, scope: !1079, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 796, column: 13, scope: !4403)
!4412 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4411)
!4413 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4411)
!4414 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4402)
!4415 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4402)
!4416 = !DILocation(line: 0, scope: !1090, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4411)
!4418 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4417)
!4419 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4417)
!4420 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4417)
!4421 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4411)
!4422 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !4411)
!4423 = !DILocation(line: 797, column: 9, scope: !4403)
!4424 = !DILocation(line: 803, column: 44, scope: !4309)
!4425 = !DILocation(line: 804, column: 17, scope: !4309)
!4426 = !DILocation(line: 804, column: 29, scope: !4309)
!4427 = !DILocation(line: 805, column: 32, scope: !4309)
!4428 = !DILocation(line: 805, column: 17, scope: !4309)
!4429 = !DILocation(line: 805, column: 22, scope: !4309)
!4430 = !DILocation(line: 806, column: 24, scope: !4309)
!4431 = !DILocation(line: 808, column: 38, scope: !4309)
!4432 = !DILocation(line: 808, column: 25, scope: !4309)
!4433 = !DILocation(line: 809, column: 26, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 809, column: 13)
!4435 = !DILocation(line: 809, column: 13, scope: !4309)
!4436 = !DILocation(line: 801, column: 50, scope: !4309)
!4437 = !DILocation(line: 812, column: 9, scope: !4309)
!4438 = !DILocation(line: 812, column: 23, scope: !4309)
!4439 = !DILocation(line: 813, column: 9, scope: !4309)
!4440 = !DILocation(line: 813, column: 47, scope: !4309)
!4441 = !DILocation(line: 813, column: 21, scope: !4309)
!4442 = !DILocation(line: 0, scope: !675, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 816, column: 9, scope: !4309)
!4444 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4443)
!4445 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4443)
!4446 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4443)
!4447 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4443)
!4448 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4443)
!4449 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4443)
!4450 = !DILocation(line: 0, scope: !689, inlinedAt: !4443)
!4451 = !DILocation(line: 0, scope: !692, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 816, column: 29, scope: !4309)
!4453 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4452)
!4454 = !DILocation(line: 0, scope: !692, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 816, column: 62, scope: !4309)
!4456 = !DILocation(line: 59, column: 17, scope: !699, inlinedAt: !4455)
!4457 = !DILocation(line: 59, column: 13, scope: !692, inlinedAt: !4455)
!4458 = !DILocation(line: 60, column: 19, scope: !3656, inlinedAt: !4455)
!4459 = !DILocation(line: 61, column: 9, scope: !3656, inlinedAt: !4455)
!4460 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4455)
!4461 = !DILocation(line: 0, scope: !699, inlinedAt: !4455)
!4462 = !DILocation(line: 0, scope: !701, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 816, column: 9, scope: !4309)
!4464 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4463)
!4465 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4463)
!4466 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4463)
!4467 = !DILocation(line: 0, scope: !715, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4463)
!4469 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4468)
!4470 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4468)
!4471 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4468)
!4472 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4463)
!4473 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4463)
!4474 = !DILocation(line: 817, column: 9, scope: !4309)
!4475 = !DILocation(line: 820, column: 22, scope: !4309)
!4476 = !DILocation(line: 820, column: 9, scope: !4309)
!4477 = !DILocation(line: 821, column: 26, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 821, column: 13)
!4479 = !DILocation(line: 821, column: 13, scope: !4309)
!4480 = !DILocation(line: 824, column: 22, scope: !4309)
!4481 = !DILocation(line: 824, column: 9, scope: !4309)
!4482 = !DILocation(line: 825, column: 26, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 825, column: 13)
!4484 = !DILocation(line: 825, column: 13, scope: !4309)
!4485 = !DILocation(line: 829, column: 9, scope: !4309)
!4486 = !DILocation(line: 829, column: 15, scope: !4309)
!4487 = !DILocation(line: 830, column: 22, scope: !4309)
!4488 = !DILocation(line: 830, column: 9, scope: !4309)
!4489 = !DILocation(line: 831, column: 13, scope: !4321)
!4490 = !DILocation(line: 831, column: 23, scope: !4321)
!4491 = !DILocation(line: 831, column: 13, scope: !4309)
!4492 = !DILocation(line: 0, scope: !675, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 832, column: 13, scope: !4320)
!4494 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4493)
!4495 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4493)
!4496 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4493)
!4497 = !DILocation(line: 0, scope: !692, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 832, column: 33, scope: !4320)
!4499 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4498)
!4500 = !DILocation(line: 0, scope: !701, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 832, column: 13, scope: !4320)
!4502 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4501)
!4503 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4501)
!4504 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4493)
!4505 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4493)
!4506 = !DILocation(line: 0, scope: !715, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4501)
!4508 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4507)
!4509 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4507)
!4510 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4507)
!4511 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4501)
!4512 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4501)
!4513 = !DILocation(line: 833, column: 13, scope: !4320)
!4514 = !DILocation(line: 834, column: 26, scope: !4320)
!4515 = !DILocation(line: 0, scope: !4320)
!4516 = !DILocation(line: 834, column: 13, scope: !4320)
!4517 = !DILocation(line: 835, column: 48, scope: !4320)
!4518 = !DILocalVariable(name: "this", arg: 1, scope: !4519, type: !4523, flags: DIFlagArtificial | DIFlagObjectPointer)
!4519 = distinct !DISubprogram(name: "HalideMalloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocC2EPvm", scope: !4323, file: !6, line: 93, type: !4329, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !4328, retainedNodes: !4520)
!4520 = !{!4518, !4521, !4522}
!4521 = !DILocalVariable(name: "user_context", arg: 2, scope: !4519, file: !6, line: 93, type: !127)
!4522 = !DILocalVariable(name: "size", arg: 3, scope: !4519, file: !6, line: 93, type: !313)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4524 = !DILocation(line: 0, scope: !4519, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 835, column: 26, scope: !4320)
!4526 = !DILocation(line: 94, column: 43, scope: !4519, inlinedAt: !4525)
!4527 = !DILocation(line: 836, column: 17, scope: !4337)
!4528 = !DILocation(line: 836, column: 17, scope: !4320)
!4529 = !DILocation(line: 0, scope: !4336)
!4530 = !DILocation(line: 838, column: 30, scope: !4336)
!4531 = !DILocation(line: 838, column: 55, scope: !4336)
!4532 = !DILocation(line: 838, column: 17, scope: !4336)
!4533 = !DILocation(line: 0, scope: !675, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 839, column: 17, scope: !4336)
!4535 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4534)
!4536 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4534)
!4537 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4534)
!4538 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4534)
!4539 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4534)
!4540 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4534)
!4541 = !DILocation(line: 0, scope: !689, inlinedAt: !4534)
!4542 = !DILocation(line: 0, scope: !692, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 839, column: 37, scope: !4336)
!4544 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4543)
!4545 = !DILocation(line: 0, scope: !692, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 839, column: 44, scope: !4336)
!4547 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4546)
!4548 = !DILocation(line: 0, scope: !701, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 839, column: 17, scope: !4336)
!4550 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4549)
!4551 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4549)
!4552 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4549)
!4553 = !DILocation(line: 0, scope: !715, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4549)
!4555 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4554)
!4556 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4554)
!4557 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4554)
!4558 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4549)
!4559 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4549)
!4560 = !DILocation(line: 840, column: 13, scope: !4336)
!4561 = !DILocation(line: 841, column: 26, scope: !4320)
!4562 = !DILocation(line: 841, column: 13, scope: !4320)
!4563 = !DILocalVariable(name: "this", arg: 1, scope: !4564, type: !4523, flags: DIFlagArtificial | DIFlagObjectPointer)
!4564 = distinct !DISubprogram(name: "~HalideMalloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocD2Ev", scope: !4323, file: !6, line: 96, type: !4333, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, declaration: !4332, retainedNodes: !4565)
!4565 = !{!4563}
!4566 = !DILocation(line: 0, scope: !4564, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 843, column: 9, scope: !4321)
!4568 = !DILocation(line: 97, column: 9, scope: !4569, inlinedAt: !4567)
!4569 = distinct !DILexicalBlock(scope: !4564, file: !6, line: 96, column: 35)
!4570 = !DILocation(line: 843, column: 9, scope: !4321)
!4571 = !DILocation(line: 846, column: 39, scope: !4309)
!4572 = !DILocation(line: 846, column: 26, scope: !4309)
!4573 = !DILocation(line: 847, column: 22, scope: !4309)
!4574 = !DILocation(line: 847, column: 9, scope: !4309)
!4575 = !DILocation(line: 848, column: 26, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 848, column: 13)
!4577 = !DILocation(line: 848, column: 13, scope: !4309)
!4578 = !DILocation(line: 851, column: 22, scope: !4309)
!4579 = !DILocation(line: 851, column: 9, scope: !4309)
!4580 = !DILocation(line: 852, column: 26, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4309, file: !6, line: 852, column: 13)
!4582 = !DILocation(line: 852, column: 13, scope: !4309)
!4583 = !DILocation(line: 857, column: 22, scope: !4309)
!4584 = !DILocation(line: 857, column: 9, scope: !4309)
!4585 = !DILocation(line: 859, column: 9, scope: !4309)
!4586 = !DILocation(line: 860, column: 22, scope: !4309)
!4587 = !DILocation(line: 860, column: 9, scope: !4309)
!4588 = !DILocation(line: 861, column: 14, scope: !4342)
!4589 = !DILocation(line: 861, column: 13, scope: !4309)
!4590 = !DILocation(line: 862, column: 13, scope: !4341)
!4591 = !DILocation(line: 863, column: 26, scope: !4341)
!4592 = !DILocation(line: 0, scope: !4341)
!4593 = !DILocation(line: 863, column: 13, scope: !4341)
!4594 = !DILocation(line: 864, column: 48, scope: !4341)
!4595 = !DILocation(line: 0, scope: !4519, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 864, column: 26, scope: !4341)
!4597 = !DILocation(line: 94, column: 43, scope: !4519, inlinedAt: !4596)
!4598 = !DILocation(line: 865, column: 17, scope: !4346)
!4599 = !DILocation(line: 865, column: 17, scope: !4341)
!4600 = !DILocation(line: 0, scope: !4345)
!4601 = !DILocation(line: 867, column: 30, scope: !4345)
!4602 = !DILocation(line: 867, column: 57, scope: !4345)
!4603 = !DILocation(line: 867, column: 17, scope: !4345)
!4604 = !DILocation(line: 0, scope: !675, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 868, column: 17, scope: !4345)
!4606 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4605)
!4607 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4605)
!4608 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4605)
!4609 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4605)
!4610 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4605)
!4611 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4605)
!4612 = !DILocation(line: 0, scope: !689, inlinedAt: !4605)
!4613 = !DILocation(line: 0, scope: !692, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 868, column: 37, scope: !4345)
!4615 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4614)
!4616 = !DILocation(line: 0, scope: !692, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 869, column: 37, scope: !4345)
!4618 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4617)
!4619 = !DILocation(line: 0, scope: !692, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 869, column: 44, scope: !4345)
!4621 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4620)
!4622 = !DILocation(line: 0, scope: !701, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 868, column: 17, scope: !4345)
!4624 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4623)
!4625 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4623)
!4626 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4623)
!4627 = !DILocation(line: 0, scope: !715, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4623)
!4629 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4628)
!4630 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4628)
!4631 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4628)
!4632 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4623)
!4633 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4623)
!4634 = !DILocation(line: 870, column: 13, scope: !4345)
!4635 = !DILocation(line: 871, column: 26, scope: !4341)
!4636 = !DILocation(line: 871, column: 13, scope: !4341)
!4637 = !DILocation(line: 0, scope: !4564, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 873, column: 9, scope: !4342)
!4639 = !DILocation(line: 97, column: 9, scope: !4569, inlinedAt: !4638)
!4640 = !DILocation(line: 873, column: 9, scope: !4342)
!4641 = !DILocation(line: 897, column: 5, scope: !4293)
!4642 = !DILocation(line: 874, column: 17, scope: !4309)
!4643 = !DILocation(line: 874, column: 28, scope: !4309)
!4644 = !DILocation(line: 878, column: 9, scope: !4309)
!4645 = !DILocation(line: 880, column: 9, scope: !4309)
!4646 = !DILocation(line: 881, column: 9, scope: !4309)
!4647 = !DILocation(line: 884, column: 9, scope: !4309)
!4648 = !DILocation(line: 884, column: 16, scope: !4309)
!4649 = !DILocation(line: 885, column: 9, scope: !4309)
!4650 = !DILocation(line: 887, column: 22, scope: !4309)
!4651 = !DILocation(line: 887, column: 9, scope: !4309)
!4652 = !DILocation(line: 0, scope: !675, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 888, column: 9, scope: !4309)
!4654 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4653)
!4655 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4653)
!4656 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4653)
!4657 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4653)
!4658 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4653)
!4659 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4653)
!4660 = !DILocation(line: 0, scope: !689, inlinedAt: !4653)
!4661 = !DILocation(line: 0, scope: !692, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 888, column: 29, scope: !4309)
!4663 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4662)
!4664 = !DILocation(line: 888, column: 55, scope: !4309)
!4665 = !DILocation(line: 0, scope: !1184, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 888, column: 52, scope: !4309)
!4667 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !4666)
!4668 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !4666)
!4669 = !DILocation(line: 0, scope: !692, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 888, column: 61, scope: !4309)
!4671 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4670)
!4672 = !DILocation(line: 0, scope: !701, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 888, column: 9, scope: !4309)
!4674 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4673)
!4675 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4673)
!4676 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4673)
!4677 = !DILocation(line: 0, scope: !715, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4673)
!4679 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4678)
!4680 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4678)
!4681 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4678)
!4682 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4673)
!4683 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4673)
!4684 = !DILocation(line: 890, column: 25, scope: !4360)
!4685 = !DILocation(line: 890, column: 23, scope: !4360)
!4686 = !DILocation(line: 890, column: 9, scope: !4361)
!4687 = !DILocation(line: 891, column: 26, scope: !4359)
!4688 = !DILocation(line: 891, column: 13, scope: !4359)
!4689 = !DILocation(line: 892, column: 38, scope: !4359)
!4690 = !DILocation(line: 892, column: 25, scope: !4359)
!4691 = !DILocation(line: 0, scope: !4359)
!4692 = !DILocation(line: 893, column: 13, scope: !4359)
!4693 = !DILocation(line: 0, scope: !675, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 893, column: 13, scope: !4359)
!4695 = !DILocation(line: 38, column: 11, scope: !675, inlinedAt: !4694)
!4696 = !DILocation(line: 38, column: 30, scope: !675, inlinedAt: !4694)
!4697 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4694)
!4698 = !DILocation(line: 44, column: 17, scope: !684, inlinedAt: !4694)
!4699 = !DILocation(line: 47, column: 13, scope: !687, inlinedAt: !4694)
!4700 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4694)
!4701 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4694)
!4702 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4694)
!4703 = !DILocation(line: 49, column: 17, scope: !711, inlinedAt: !4694)
!4704 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4694)
!4705 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4694)
!4706 = !DILocation(line: 53, column: 17, scope: !1133, inlinedAt: !4694)
!4707 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 893, column: 33, scope: !4359)
!4709 = !DILocation(line: 0, scope: !692, inlinedAt: !4708)
!4710 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4708)
!4711 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4708)
!4712 = !DILocation(line: 0, scope: !1184, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 893, column: 47, scope: !4359)
!4714 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !4713)
!4715 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !4713)
!4716 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !4713)
!4717 = !DILocation(line: 0, scope: !692, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 893, column: 52, scope: !4359)
!4719 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4718)
!4720 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4718)
!4721 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4718)
!4722 = !DILocation(line: 893, column: 68, scope: !4359)
!4723 = !DILocation(line: 0, scope: !1154, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 893, column: 65, scope: !4359)
!4725 = !DILocation(line: 83, column: 44, scope: !1154, inlinedAt: !4724)
!4726 = !DILocation(line: 83, column: 49, scope: !1154, inlinedAt: !4724)
!4727 = !DILocation(line: 83, column: 15, scope: !1154, inlinedAt: !4724)
!4728 = !DILocation(line: 83, column: 13, scope: !1154, inlinedAt: !4724)
!4729 = !DILocation(line: 0, scope: !692, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 893, column: 73, scope: !4359)
!4731 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4730)
!4732 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4730)
!4733 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4730)
!4734 = !DILocation(line: 0, scope: !692, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 893, column: 86, scope: !4359)
!4736 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4735)
!4737 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4735)
!4738 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4735)
!4739 = !DILocation(line: 0, scope: !692, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 893, column: 94, scope: !4359)
!4741 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4740)
!4742 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4740)
!4743 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4740)
!4744 = !DILocation(line: 0, scope: !1184, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 893, column: 111, scope: !4359)
!4746 = !DILocation(line: 73, column: 43, scope: !1184, inlinedAt: !4745)
!4747 = !DILocation(line: 73, column: 48, scope: !1184, inlinedAt: !4745)
!4748 = !DILocation(line: 73, column: 15, scope: !1184, inlinedAt: !4745)
!4749 = !DILocation(line: 73, column: 13, scope: !1184, inlinedAt: !4745)
!4750 = !DILocation(line: 0, scope: !692, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 893, column: 118, scope: !4359)
!4752 = !DILocation(line: 62, column: 48, scope: !698, inlinedAt: !4751)
!4753 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4751)
!4754 = !DILocation(line: 62, column: 17, scope: !698, inlinedAt: !4751)
!4755 = !DILocation(line: 0, scope: !701, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 893, column: 13, scope: !4359)
!4757 = !DILocation(line: 167, column: 14, scope: !707, inlinedAt: !4756)
!4758 = !DILocation(line: 0, scope: !707, inlinedAt: !4756)
!4759 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4756)
!4760 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4756)
!4761 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4756)
!4762 = !DILocation(line: 0, scope: !715, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4756)
!4764 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4763)
!4765 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4763)
!4766 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4763)
!4767 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !4756)
!4768 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !4756)
!4769 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4756)
!4770 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !4756)
!4771 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !4756)
!4772 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4756)
!4773 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !4756)
!4774 = !DILocation(line: 890, column: 33, scope: !4360)
!4775 = distinct !{!4775, !4686, !4776, !621}
!4776 = !DILocation(line: 894, column: 9, scope: !4361)
!4777 = !DILocation(line: 899, column: 24, scope: !4293)
!4778 = !DILocation(line: 0, scope: !675, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 900, column: 5, scope: !4293)
!4780 = !DILocation(line: 44, column: 27, scope: !684, inlinedAt: !4779)
!4781 = !DILocation(line: 48, column: 13, scope: !689, inlinedAt: !4779)
!4782 = !DILocation(line: 48, column: 13, scope: !687, inlinedAt: !4779)
!4783 = !DILocation(line: 49, column: 23, scope: !711, inlinedAt: !4779)
!4784 = !DILocation(line: 50, column: 18, scope: !711, inlinedAt: !4779)
!4785 = !DILocation(line: 51, column: 9, scope: !711, inlinedAt: !4779)
!4786 = !DILocation(line: 0, scope: !689, inlinedAt: !4779)
!4787 = !DILocation(line: 0, scope: !692, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 900, column: 25, scope: !4293)
!4789 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4788)
!4790 = !DILocation(line: 900, column: 53, scope: !4293)
!4791 = !DILocation(line: 900, column: 44, scope: !4293)
!4792 = !DILocation(line: 900, column: 65, scope: !4293)
!4793 = !DILocation(line: 0, scope: !1691, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 900, column: 41, scope: !4293)
!4795 = !DILocation(line: 88, column: 15, scope: !1691, inlinedAt: !4794)
!4796 = !DILocation(line: 0, scope: !692, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 901, column: 25, scope: !4293)
!4798 = !DILocation(line: 62, column: 19, scope: !698, inlinedAt: !4797)
!4799 = !DILocation(line: 0, scope: !701, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 900, column: 5, scope: !4293)
!4801 = !DILocation(line: 167, column: 13, scope: !708, inlinedAt: !4800)
!4802 = !DILocation(line: 168, column: 13, scope: !706, inlinedAt: !4800)
!4803 = !DILocation(line: 169, column: 9, scope: !706, inlinedAt: !4800)
!4804 = !DILocation(line: 0, scope: !715, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 170, column: 13, scope: !719, inlinedAt: !4800)
!4806 = !DILocation(line: 163, column: 81, scope: !715, inlinedAt: !4805)
!4807 = !DILocation(line: 163, column: 87, scope: !715, inlinedAt: !4805)
!4808 = !DILocation(line: 163, column: 15, scope: !715, inlinedAt: !4805)
!4809 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4800)
!4810 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4800)
!4811 = !DILocation(line: 905, column: 1, scope: !4293)
!4812 = !DISubprogram(name: "strlen", scope: !37, file: !37, line: 92, type: !4813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!314, !183}
!4815 = !DISubprogram(name: "strstr", scope: !37, file: !37, line: 88, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!183, !183, !183}
!4818 = distinct !DISubprogram(name: "halide_openglcompute_finalize_kernels", scope: !6, file: !6, line: 907, type: !4819, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4821)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !127, !127}
!4821 = !{!4822, !4823}
!4822 = !DILocalVariable(name: "user_context", arg: 1, scope: !4818, file: !6, line: 907, type: !127)
!4823 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !4818, file: !6, line: 907, type: !127)
!4824 = !DILocation(line: 0, scope: !4818)
!4825 = !DILocation(line: 908, column: 1, scope: !4818)
!4826 = distinct !DISubprogram(name: "halide_openglcompute_device_and_host_malloc", scope: !6, file: !6, line: 910, type: !331, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4827)
!4827 = !{!4828, !4829}
!4828 = !DILocalVariable(name: "user_context", arg: 1, scope: !4826, file: !6, line: 910, type: !127)
!4829 = !DILocalVariable(name: "buf", arg: 2, scope: !4826, file: !6, line: 910, type: !208)
!4830 = !DILocation(line: 0, scope: !4826)
!4831 = !DILocation(line: 911, column: 12, scope: !4826)
!4832 = !DILocation(line: 911, column: 5, scope: !4826)
!4833 = !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !370, file: !370, line: 41, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4834 = distinct !DISubprogram(name: "halide_openglcompute_device_and_host_free", scope: !6, file: !6, line: 914, type: !331, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4835)
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "user_context", arg: 1, scope: !4834, file: !6, line: 914, type: !127)
!4837 = !DILocalVariable(name: "buf", arg: 2, scope: !4834, file: !6, line: 914, type: !208)
!4838 = !DILocation(line: 0, scope: !4834)
!4839 = !DILocation(line: 915, column: 12, scope: !4834)
!4840 = !DILocation(line: 915, column: 5, scope: !4834)
!4841 = !DISubprogram(name: "halide_default_device_and_host_free", scope: !370, file: !370, line: 43, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4842 = distinct !DISubprogram(name: "halide_openglcompute_device_interface", scope: !6, file: !6, line: 918, type: !4843, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !656)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!215}
!4845 = !DILocation(line: 919, column: 5, scope: !4842)
!4846 = !DISubprogram(name: "halide_malloc", scope: !202, file: !202, line: 354, type: !4847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!127, !127, !314}
!4849 = !DISubprogram(name: "halide_free", scope: !202, file: !202, line: 355, type: !4819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4850 = !DISubprogram(name: "halide_error", scope: !202, file: !202, line: 111, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4851 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !202, file: !202, line: 973, type: !4852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!63, !127, !446, !213}
!4854 = !DISubprogram(name: "halide_string_to_string", scope: !37, file: !37, line: 120, type: !4855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!195, !195, !195, !183}
!4857 = !DISubprogram(name: "halide_int64_to_string", scope: !37, file: !37, line: 122, type: !4858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!195, !195, !195, !426, !63}
!4860 = !DISubprogram(name: "halide_uint64_to_string", scope: !37, file: !37, line: 123, type: !4861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!195, !195, !195, !213, !63}
!4863 = !DISubprogram(name: "halide_pointer_to_string", scope: !37, file: !37, line: 124, type: !4864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!195, !195, !195, !446}
!4866 = !DISubprogram(name: "halide_type_to_string", scope: !37, file: !37, line: 126, type: !4867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!195, !195, !195, !789}
!4869 = !DISubprogram(name: "halide_double_to_string", scope: !37, file: !37, line: 121, type: !4870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !656)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!195, !195, !195, !439, !63}
