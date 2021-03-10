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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE = weak dso_local global %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState" zeroinitializer, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* null, align 4, !dbg !184
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE }, align 4, !dbg !198
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
@_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_sync, i32 (i8*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_openglcompute_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_default_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_default_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_default_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 4, !dbg !392
@.str.147 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !575 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !594, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i32 %1, metadata !595, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %2, metadata !596, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %3, metadata !597, metadata !DIExpression()), !dbg !605
  %5 = icmp sgt i32 %1, -1, !dbg !606
  br i1 %5, label %6, label %14, !dbg !607

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !595, metadata !DIExpression()), !dbg !605
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !608
  %9 = load i64, i64* %8, align 8, !dbg !608, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !613
  br i1 %10, label %11, label %14, !dbg !614

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !615
  call void @llvm.dbg.value(metadata i32 %12, metadata !595, metadata !DIExpression()), !dbg !605
  %13 = icmp sgt i32 %7, 0, !dbg !606
  br i1 %13, label %6, label %25, !dbg !607, !llvm.loop !617

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !620
  br i1 %16, label %25, label %17, !dbg !621

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %2, metadata !596, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %3, metadata !597, metadata !DIExpression()), !dbg !605
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !623
  %19 = load i64, i64* %18, align 8, !dbg !623, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !625
  br i1 %20, label %51, label %21, !dbg !626

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !626

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !627
  %27 = load i64, i64* %26, align 8, !dbg !627, !tbaa !628
  %28 = add i64 %27, %2, !dbg !630
  %29 = trunc i64 %28 to i32, !dbg !631
  %30 = inttoptr i32 %29 to i8*, !dbg !631
  call void @llvm.dbg.value(metadata i8* %30, metadata !598, metadata !DIExpression()), !dbg !632
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !633
  %32 = load i64, i64* %31, align 8, !dbg !633, !tbaa !634
  %33 = add i64 %32, %3, !dbg !635
  %34 = trunc i64 %33 to i32, !dbg !636
  %35 = inttoptr i32 %34 to i8*, !dbg !636
  call void @llvm.dbg.value(metadata i8* %35, metadata !601, metadata !DIExpression()), !dbg !632
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !637
  %37 = load i64, i64* %36, align 8, !dbg !637, !tbaa !638
  %38 = trunc i64 %37 to i32, !dbg !639
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #8, !dbg !640
  br label %51, !dbg !641

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %42, metadata !596, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %43, metadata !597, metadata !DIExpression()), !dbg !605
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #9, !dbg !642
  %44 = load i64, i64* %23, align 8, !dbg !644, !tbaa !609
  %45 = add i64 %44, %42, !dbg !645
  call void @llvm.dbg.value(metadata i64 %45, metadata !596, metadata !DIExpression()), !dbg !605
  %46 = load i64, i64* %24, align 8, !dbg !646, !tbaa !609
  %47 = add i64 %46, %43, !dbg !647
  call void @llvm.dbg.value(metadata i64 %47, metadata !597, metadata !DIExpression()), !dbg !605
  %48 = add nuw i64 %41, 1, !dbg !648
  call void @llvm.dbg.value(metadata i64 %48, metadata !602, metadata !DIExpression()), !dbg !622
  %49 = load i64, i64* %18, align 8, !dbg !623, !tbaa !609
  %50 = icmp ult i64 %48, %49, !dbg !625
  br i1 %50, label %40, label %51, !dbg !626, !llvm.loop !649

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !651
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !652 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !656 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i8* %1, metadata !661, metadata !DIExpression()), !dbg !662
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !663
  %4 = load i64, i64* %3, align 8, !dbg !663, !tbaa !628
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !665
  %6 = load i64, i64* %5, align 8, !dbg !665, !tbaa !634
  %7 = icmp eq i64 %4, %6, !dbg !666
  br i1 %7, label %11, label %8, !dbg !667

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !668
  %10 = load i64, i64* %9, align 8, !dbg !668, !tbaa !670
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !671
  br label %26, !dbg !672

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !679
  call void @llvm.dbg.value(metadata i8* %1, metadata !676, metadata !DIExpression()) #10, !dbg !679
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !679
  %12 = tail call i8* @malloc(i32 1024) #8, !dbg !682
  %13 = icmp eq i8* %12, null, !dbg !687
  br i1 %13, label %14, label %16, !dbg !689

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !694
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !702
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !704
  br label %25, !dbg !708

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !709
  store i8 0, i8* %17, align 1, !dbg !711, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !694
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !702
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !716
  %19 = ptrtoint i8* %18 to i32, !dbg !719
  %20 = ptrtoint i8* %12 to i32, !dbg !719
  %21 = add i32 %19, 1, !dbg !719
  %22 = sub i32 %21, %20, !dbg !720
  %23 = sext i32 %22 to i64, !dbg !721
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #8, !dbg !722
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !723
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !727
  br label %26

26:                                               ; preds = %25, %8
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
  br i1 %2, label %8, label %13, !dbg !766

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !767
  %10 = load i8*, i8** %9, align 4, !dbg !767, !tbaa !768
  %11 = ptrtoint i8* %10 to i32, !dbg !775
  %12 = zext i32 %11 to i64, !dbg !775
  br label %16, !dbg !766

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !776
  %15 = load i64, i64* %14, align 8, !dbg !776, !tbaa !777
  br label %16, !dbg !766

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !766
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !778
  store i64 %17, i64* %18, align 8, !dbg !779, !tbaa !628
  br i1 %4, label %19, label %24, !dbg !780

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !781
  %21 = load i8*, i8** %20, align 4, !dbg !781, !tbaa !768
  %22 = ptrtoint i8* %21 to i32, !dbg !782
  %23 = zext i32 %22 to i64, !dbg !782
  br label %27, !dbg !780

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !783
  %26 = load i64, i64* %25, align 8, !dbg !783, !tbaa !777
  br label %27, !dbg !780

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !780
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !784
  store i64 %28, i64* %29, align 8, !dbg !785, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !790
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !792
  %31 = load i8, i8* %30, align 1, !dbg !792, !tbaa !793
  %32 = zext i8 %31 to i32, !dbg !792
  %33 = add nuw nsw i32 %32, 7, !dbg !794
  %34 = lshr i32 %33, 3, !dbg !795
  %35 = zext i32 %34 to i64, !dbg !796
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !797
  store i64 %35, i64* %36, align 8, !dbg !798, !tbaa !638
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !799
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !800
  store i64 1, i64* %37, align 8, !dbg !803, !tbaa !609
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !804
  store i64 0, i64* %38, align 8, !dbg !805, !tbaa !609
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !806
  store i64 0, i64* %39, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 1, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 1, metadata !741, metadata !DIExpression()), !dbg !799
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !800
  store i64 1, i64* %40, align 8, !dbg !803, !tbaa !609
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !804
  store i64 0, i64* %41, align 8, !dbg !805, !tbaa !609
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !806
  store i64 0, i64* %42, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 2, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 2, metadata !741, metadata !DIExpression()), !dbg !799
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !800
  store i64 1, i64* %43, align 8, !dbg !803, !tbaa !609
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !804
  store i64 0, i64* %44, align 8, !dbg !805, !tbaa !609
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !806
  store i64 0, i64* %45, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 3, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 3, metadata !741, metadata !DIExpression()), !dbg !799
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !800
  store i64 1, i64* %46, align 8, !dbg !803, !tbaa !609
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !804
  store i64 0, i64* %47, align 8, !dbg !805, !tbaa !609
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !806
  store i64 0, i64* %48, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 4, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 4, metadata !741, metadata !DIExpression()), !dbg !799
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !800
  store i64 1, i64* %49, align 8, !dbg !803, !tbaa !609
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !804
  store i64 0, i64* %50, align 8, !dbg !805, !tbaa !609
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !806
  store i64 0, i64* %51, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 5, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 5, metadata !741, metadata !DIExpression()), !dbg !799
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !800
  store i64 1, i64* %52, align 8, !dbg !803, !tbaa !609
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !804
  store i64 0, i64* %53, align 8, !dbg !805, !tbaa !609
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !806
  store i64 0, i64* %54, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 6, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 6, metadata !741, metadata !DIExpression()), !dbg !799
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !800
  store i64 1, i64* %55, align 8, !dbg !803, !tbaa !609
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !804
  store i64 0, i64* %56, align 8, !dbg !805, !tbaa !609
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !806
  store i64 0, i64* %57, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 7, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 7, metadata !741, metadata !DIExpression()), !dbg !799
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !800
  store i64 1, i64* %58, align 8, !dbg !803, !tbaa !609
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !804
  store i64 0, i64* %59, align 8, !dbg !805, !tbaa !609
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !806
  store i64 0, i64* %60, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 8, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 8, metadata !741, metadata !DIExpression()), !dbg !799
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !800
  store i64 1, i64* %61, align 8, !dbg !803, !tbaa !609
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !804
  store i64 0, i64* %62, align 8, !dbg !805, !tbaa !609
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !806
  store i64 0, i64* %63, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 9, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 9, metadata !741, metadata !DIExpression()), !dbg !799
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !800
  store i64 1, i64* %64, align 8, !dbg !803, !tbaa !609
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !804
  store i64 0, i64* %65, align 8, !dbg !805, !tbaa !609
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !806
  store i64 0, i64* %66, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 10, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 10, metadata !741, metadata !DIExpression()), !dbg !799
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !800
  store i64 1, i64* %67, align 8, !dbg !803, !tbaa !609
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !804
  store i64 0, i64* %68, align 8, !dbg !805, !tbaa !609
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !806
  store i64 0, i64* %69, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 11, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 11, metadata !741, metadata !DIExpression()), !dbg !799
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !800
  store i64 1, i64* %70, align 8, !dbg !803, !tbaa !609
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !804
  store i64 0, i64* %71, align 8, !dbg !805, !tbaa !609
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !806
  store i64 0, i64* %72, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 12, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 12, metadata !741, metadata !DIExpression()), !dbg !799
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !800
  store i64 1, i64* %73, align 8, !dbg !803, !tbaa !609
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !804
  store i64 0, i64* %74, align 8, !dbg !805, !tbaa !609
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !806
  store i64 0, i64* %75, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 13, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 13, metadata !741, metadata !DIExpression()), !dbg !799
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !800
  store i64 1, i64* %76, align 8, !dbg !803, !tbaa !609
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !804
  store i64 0, i64* %77, align 8, !dbg !805, !tbaa !609
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !806
  store i64 0, i64* %78, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 14, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 14, metadata !741, metadata !DIExpression()), !dbg !799
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !800
  store i64 1, i64* %79, align 8, !dbg !803, !tbaa !609
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !804
  store i64 0, i64* %80, align 8, !dbg !805, !tbaa !609
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !806
  store i64 0, i64* %81, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 15, metadata !741, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 15, metadata !741, metadata !DIExpression()), !dbg !799
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !800
  store i64 1, i64* %82, align 8, !dbg !803, !tbaa !609
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !804
  store i64 0, i64* %83, align 8, !dbg !805, !tbaa !609
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !806
  store i64 0, i64* %84, align 8, !dbg !807, !tbaa !609
  call void @llvm.dbg.value(metadata i32 16, metadata !741, metadata !DIExpression()), !dbg !799
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !808
  call void @llvm.dbg.value(metadata i32 0, metadata !743, metadata !DIExpression()), !dbg !809
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !810
  %87 = load i32, i32* %86, align 4, !dbg !810, !tbaa !812
  %88 = icmp sgt i32 %87, 0, !dbg !813
  br i1 %88, label %89, label %94, !dbg !814

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !815
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !815
  br label %101, !dbg !814

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !816
  %96 = load i64, i64* %36, align 8, !dbg !817, !tbaa !638
  %97 = mul i64 %95, %96, !dbg !816
  store i64 %97, i64* %85, align 8, !dbg !816, !tbaa !670
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !818
  %99 = load i32, i32* %98, align 4, !dbg !818, !tbaa !812
  %100 = icmp eq i32 %87, %99, !dbg !819
  br i1 %100, label %117, label %126, !dbg !820

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !809
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !743, metadata !DIExpression()), !dbg !809
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !821
  %105 = load i32, i32* %104, align 4, !dbg !821, !tbaa !823
  %106 = sext i32 %105 to i64, !dbg !825
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !826
  %108 = load i32, i32* %107, align 4, !dbg !826, !tbaa !827
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !828
  %110 = load i32, i32* %109, align 4, !dbg !828, !tbaa !827
  %111 = sub nsw i32 %108, %110, !dbg !829
  %112 = sext i32 %111 to i64, !dbg !830
  %113 = mul nsw i64 %112, %106, !dbg !831
  %114 = add i64 %113, %102, !dbg !832
  %115 = add nuw nsw i32 %103, 1, !dbg !833
  call void @llvm.dbg.value(metadata i32 %115, metadata !743, metadata !DIExpression()), !dbg !809
  %116 = icmp slt i32 %115, %87, !dbg !813
  br i1 %116, label %101, label %94, !dbg !814, !llvm.loop !834

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !836
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !838
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !840
  %119 = load i8, i8* %118, align 1, !dbg !840, !tbaa !793
  %120 = zext i8 %119 to i32, !dbg !840
  %121 = add nuw nsw i32 %120, 7, !dbg !841
  %122 = lshr i32 %121, 3, !dbg !842
  %123 = icmp ne i32 %34, %122, !dbg !843
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !844
  br i1 %125, label %126, label %128, !dbg !844

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !745, metadata !DIExpression()), !dbg !845
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !845
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !845
  br label %245, !dbg !846

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !847
  br i1 %129, label %136, label %130, !dbg !848

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !751, metadata !DIExpression()), !dbg !849
  br i1 %88, label %131, label %243, !dbg !850

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !815
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !815
  br label %144, !dbg !850

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !748, metadata !DIExpression()), !dbg !851
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !851
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !851
  br label %245, !dbg !852

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !853, !tbaa !638
  %140 = load i64, i64* %38, align 8, !dbg !854, !tbaa !609
  %141 = icmp eq i64 %139, %140, !dbg !855
  br i1 %141, label %142, label %243, !dbg !856

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !857, !tbaa !609
  br label %190, !dbg !856

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !751, metadata !DIExpression()), !dbg !849
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !858
  %147 = load i32, i32* %146, align 4, !dbg !858, !tbaa !823
  %148 = sext i32 %147 to i64, !dbg !859
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !860
  %149 = mul nsw i64 %148, %35, !dbg !862
  call void @llvm.dbg.value(metadata i64 %149, metadata !753, metadata !DIExpression()), !dbg !863
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !864
  %151 = load i32, i32* %150, align 4, !dbg !864, !tbaa !823
  %152 = sext i32 %151 to i64, !dbg !865
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !866
  %153 = mul nsw i64 %152, %35, !dbg !868
  call void @llvm.dbg.value(metadata i64 %153, metadata !756, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 0, metadata !757, metadata !DIExpression()), !dbg !863
  %154 = icmp eq i32 %145, 0, !dbg !869
  br i1 %154, label %165, label %155, !dbg !872

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !872

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !757, metadata !DIExpression()), !dbg !863
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !873
  %160 = load i64, i64* %159, align 8, !dbg !873, !tbaa !609
  %161 = icmp ult i64 %149, %160, !dbg !876
  br i1 %161, label %165, label %162, !dbg !877

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !878
  call void @llvm.dbg.value(metadata i32 %163, metadata !757, metadata !DIExpression()), !dbg !863
  %164 = icmp ult i32 %163, %145, !dbg !869
  br i1 %164, label %157, label %165, !dbg !872, !llvm.loop !879

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !881
  call void @llvm.dbg.value(metadata i32 %145, metadata !758, metadata !DIExpression()), !dbg !882
  %167 = icmp ugt i32 %145, %166, !dbg !883
  br i1 %167, label %177, label %168, !dbg !885

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !886
  %170 = load i32, i32* %169, align 4, !dbg !886, !tbaa !887
  %171 = sext i32 %170 to i64, !dbg !888
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !889
  store i64 %171, i64* %172, align 8, !dbg !890, !tbaa !609
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !891
  store i64 %149, i64* %173, align 8, !dbg !892, !tbaa !609
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !893
  store i64 %153, i64* %174, align 8, !dbg !894, !tbaa !609
  %175 = add nuw nsw i32 %145, 1, !dbg !895
  call void @llvm.dbg.value(metadata i32 %175, metadata !751, metadata !DIExpression()), !dbg !849
  %176 = icmp slt i32 %175, %87, !dbg !896
  br i1 %176, label %144, label %138, !dbg !850, !llvm.loop !897

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !758, metadata !DIExpression()), !dbg !882
  %179 = add nsw i32 %178, -1, !dbg !899
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !901
  %181 = load i64, i64* %180, align 8, !dbg !901, !tbaa !609
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !902
  store i64 %181, i64* %182, align 8, !dbg !903, !tbaa !609
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !904
  %184 = load i64, i64* %183, align 8, !dbg !904, !tbaa !609
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !905
  store i64 %184, i64* %185, align 8, !dbg !906, !tbaa !609
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !907
  %187 = load i64, i64* %186, align 8, !dbg !907, !tbaa !609
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !908
  store i64 %187, i64* %188, align 8, !dbg !909, !tbaa !609
  call void @llvm.dbg.value(metadata i32 %179, metadata !758, metadata !DIExpression()), !dbg !882
  %189 = icmp sgt i32 %179, %166, !dbg !883
  br i1 %189, label %177, label %168, !dbg !885, !llvm.loop !910

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !857
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !912
  br i1 %193, label %194, label %243, !dbg !913

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !914, !tbaa !609
  %196 = mul i64 %195, %191, !dbg !915
  store i64 %196, i64* %36, align 8, !dbg !915, !tbaa !638
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()), !dbg !916
  %197 = load i64, i64* %40, align 8, !dbg !917, !tbaa !609
  store i64 %197, i64* %37, align 8, !dbg !920, !tbaa !609
  %198 = load i64, i64* %41, align 8, !dbg !921, !tbaa !609
  store i64 %198, i64* %38, align 8, !dbg !922, !tbaa !609
  %199 = load i64, i64* %42, align 8, !dbg !923, !tbaa !609
  store i64 %199, i64* %39, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 2, metadata !760, metadata !DIExpression()), !dbg !916
  %200 = load i64, i64* %43, align 8, !dbg !917, !tbaa !609
  store i64 %200, i64* %40, align 8, !dbg !920, !tbaa !609
  %201 = load i64, i64* %44, align 8, !dbg !921, !tbaa !609
  store i64 %201, i64* %41, align 8, !dbg !922, !tbaa !609
  %202 = load i64, i64* %45, align 8, !dbg !923, !tbaa !609
  store i64 %202, i64* %42, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 3, metadata !760, metadata !DIExpression()), !dbg !916
  %203 = load i64, i64* %46, align 8, !dbg !917, !tbaa !609
  store i64 %203, i64* %43, align 8, !dbg !920, !tbaa !609
  %204 = load i64, i64* %47, align 8, !dbg !921, !tbaa !609
  store i64 %204, i64* %44, align 8, !dbg !922, !tbaa !609
  %205 = load i64, i64* %48, align 8, !dbg !923, !tbaa !609
  store i64 %205, i64* %45, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 4, metadata !760, metadata !DIExpression()), !dbg !916
  %206 = load i64, i64* %49, align 8, !dbg !917, !tbaa !609
  store i64 %206, i64* %46, align 8, !dbg !920, !tbaa !609
  %207 = load i64, i64* %50, align 8, !dbg !921, !tbaa !609
  store i64 %207, i64* %47, align 8, !dbg !922, !tbaa !609
  %208 = load i64, i64* %51, align 8, !dbg !923, !tbaa !609
  store i64 %208, i64* %48, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 5, metadata !760, metadata !DIExpression()), !dbg !916
  %209 = load i64, i64* %52, align 8, !dbg !917, !tbaa !609
  store i64 %209, i64* %49, align 8, !dbg !920, !tbaa !609
  %210 = load i64, i64* %53, align 8, !dbg !921, !tbaa !609
  store i64 %210, i64* %50, align 8, !dbg !922, !tbaa !609
  %211 = load i64, i64* %54, align 8, !dbg !923, !tbaa !609
  store i64 %211, i64* %51, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 6, metadata !760, metadata !DIExpression()), !dbg !916
  %212 = load i64, i64* %55, align 8, !dbg !917, !tbaa !609
  store i64 %212, i64* %52, align 8, !dbg !920, !tbaa !609
  %213 = load i64, i64* %56, align 8, !dbg !921, !tbaa !609
  store i64 %213, i64* %53, align 8, !dbg !922, !tbaa !609
  %214 = load i64, i64* %57, align 8, !dbg !923, !tbaa !609
  store i64 %214, i64* %54, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 7, metadata !760, metadata !DIExpression()), !dbg !916
  %215 = load i64, i64* %58, align 8, !dbg !917, !tbaa !609
  store i64 %215, i64* %55, align 8, !dbg !920, !tbaa !609
  %216 = load i64, i64* %59, align 8, !dbg !921, !tbaa !609
  store i64 %216, i64* %56, align 8, !dbg !922, !tbaa !609
  %217 = load i64, i64* %60, align 8, !dbg !923, !tbaa !609
  store i64 %217, i64* %57, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 8, metadata !760, metadata !DIExpression()), !dbg !916
  %218 = load i64, i64* %61, align 8, !dbg !917, !tbaa !609
  store i64 %218, i64* %58, align 8, !dbg !920, !tbaa !609
  %219 = load i64, i64* %62, align 8, !dbg !921, !tbaa !609
  store i64 %219, i64* %59, align 8, !dbg !922, !tbaa !609
  %220 = load i64, i64* %63, align 8, !dbg !923, !tbaa !609
  store i64 %220, i64* %60, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 9, metadata !760, metadata !DIExpression()), !dbg !916
  %221 = load i64, i64* %64, align 8, !dbg !917, !tbaa !609
  store i64 %221, i64* %61, align 8, !dbg !920, !tbaa !609
  %222 = load i64, i64* %65, align 8, !dbg !921, !tbaa !609
  store i64 %222, i64* %62, align 8, !dbg !922, !tbaa !609
  %223 = load i64, i64* %66, align 8, !dbg !923, !tbaa !609
  store i64 %223, i64* %63, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 10, metadata !760, metadata !DIExpression()), !dbg !916
  %224 = load i64, i64* %67, align 8, !dbg !917, !tbaa !609
  store i64 %224, i64* %64, align 8, !dbg !920, !tbaa !609
  %225 = load i64, i64* %68, align 8, !dbg !921, !tbaa !609
  store i64 %225, i64* %65, align 8, !dbg !922, !tbaa !609
  %226 = load i64, i64* %69, align 8, !dbg !923, !tbaa !609
  store i64 %226, i64* %66, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 11, metadata !760, metadata !DIExpression()), !dbg !916
  %227 = load i64, i64* %70, align 8, !dbg !917, !tbaa !609
  store i64 %227, i64* %67, align 8, !dbg !920, !tbaa !609
  %228 = load i64, i64* %71, align 8, !dbg !921, !tbaa !609
  store i64 %228, i64* %68, align 8, !dbg !922, !tbaa !609
  %229 = load i64, i64* %72, align 8, !dbg !923, !tbaa !609
  store i64 %229, i64* %69, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 12, metadata !760, metadata !DIExpression()), !dbg !916
  %230 = load i64, i64* %73, align 8, !dbg !917, !tbaa !609
  store i64 %230, i64* %70, align 8, !dbg !920, !tbaa !609
  %231 = load i64, i64* %74, align 8, !dbg !921, !tbaa !609
  store i64 %231, i64* %71, align 8, !dbg !922, !tbaa !609
  %232 = load i64, i64* %75, align 8, !dbg !923, !tbaa !609
  store i64 %232, i64* %72, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 13, metadata !760, metadata !DIExpression()), !dbg !916
  %233 = load i64, i64* %76, align 8, !dbg !917, !tbaa !609
  store i64 %233, i64* %73, align 8, !dbg !920, !tbaa !609
  %234 = load i64, i64* %77, align 8, !dbg !921, !tbaa !609
  store i64 %234, i64* %74, align 8, !dbg !922, !tbaa !609
  %235 = load i64, i64* %78, align 8, !dbg !923, !tbaa !609
  store i64 %235, i64* %75, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 14, metadata !760, metadata !DIExpression()), !dbg !916
  %236 = load i64, i64* %79, align 8, !dbg !917, !tbaa !609
  store i64 %236, i64* %76, align 8, !dbg !920, !tbaa !609
  %237 = load i64, i64* %80, align 8, !dbg !921, !tbaa !609
  store i64 %237, i64* %77, align 8, !dbg !922, !tbaa !609
  %238 = load i64, i64* %81, align 8, !dbg !923, !tbaa !609
  store i64 %238, i64* %78, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 15, metadata !760, metadata !DIExpression()), !dbg !916
  %239 = load i64, i64* %82, align 8, !dbg !917, !tbaa !609
  store i64 %239, i64* %79, align 8, !dbg !920, !tbaa !609
  %240 = load i64, i64* %83, align 8, !dbg !921, !tbaa !609
  store i64 %240, i64* %80, align 8, !dbg !922, !tbaa !609
  %241 = load i64, i64* %84, align 8, !dbg !923, !tbaa !609
  store i64 %241, i64* %81, align 8, !dbg !924, !tbaa !609
  call void @llvm.dbg.value(metadata i32 16, metadata !760, metadata !DIExpression()), !dbg !916
  store i64 1, i64* %82, align 8, !dbg !925, !tbaa !609
  store i64 0, i64* %83, align 8, !dbg !926, !tbaa !609
  store i64 0, i64* %84, align 8, !dbg !927, !tbaa !609
  %242 = icmp eq i64 %196, %198, !dbg !855
  br i1 %242, label %190, label %243, !dbg !856, !llvm.loop !928

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !930
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !930, !tbaa.struct !931
  br label %245, !dbg !932

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !933
  ret void, !dbg !933
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

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
  %12 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %10 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), %9 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %8 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), %7 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), %6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %5 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %4 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %3 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %2 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %1 ], !dbg !953
  ret i8* %12, !dbg !965
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %0, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1) local_unnamed_addr #0 !dbg !966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, metadata !973, metadata !DIExpression()), !dbg !975
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %1, i32 0, i32 0, !dbg !976
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* undef, metadata !974, metadata !DIExpression()), !dbg !975
  %4 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %3, align 4, !dbg !975, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, metadata !974, metadata !DIExpression()), !dbg !975
  %5 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %4, null, !dbg !978
  br i1 %5, label %16, label %6, !dbg !979

6:                                                ; preds = %2, %12
  %7 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %14, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i32 0, i32 0, !dbg !980
  %9 = load i8*, i8** %8, align 4, !dbg !980, !tbaa !981
  %10 = tail call i32 @strcmp(i8* %0, i8* %9) #8, !dbg !983
  %11 = icmp eq i32 %10, 0, !dbg !984
  br i1 %11, label %16, label %12, !dbg !985

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %7, i32 0, i32 2, !dbg !986
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* undef, metadata !974, metadata !DIExpression()), !dbg !975
  %14 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %13, align 4, !dbg !975, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, metadata !974, metadata !DIExpression()), !dbg !975
  %15 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %14, null, !dbg !978
  br i1 %15, label %16, label %6, !dbg !979, !llvm.loop !988

16:                                               ; preds = %6, %12, %2
  %17 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ null, %2 ], [ null, %12 ], [ %7, %6 ], !dbg !975
  ret %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %17, !dbg !990
}

declare !dbg !991 dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) %0, i8* %1, i8* %2) local_unnamed_addr #4 align 2 !dbg !994 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %1, metadata !998, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %2, metadata !999, metadata !DIExpression()), !dbg !1001
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 14, !dbg !1002
  %5 = load i32 ()*, i32 ()** %4, align 4, !dbg !1002, !tbaa !1003
  %6 = tail call i32 %5() #8, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %6, metadata !1000, metadata !DIExpression()), !dbg !1001
  %7 = icmp eq i32 %6, 0, !dbg !1006
  br i1 %7, label %46, label %8, !dbg !1008

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %1, metadata !1012, metadata !DIExpression()) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1015
  %9 = tail call i8* @malloc(i32 1024) #8, !dbg !1018
  %10 = icmp eq i8* %9, null, !dbg !1023
  br i1 %10, label %13, label %11, !dbg !1025

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !1026
  store i8 0, i8* %12, align 1, !dbg !1028, !tbaa !712
  br label %13, !dbg !1029

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1035
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !1037
  %16 = tail call i8* @_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi(i32 %6) #9, !dbg !1040
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %16, metadata !1034, metadata !DIExpression()) #10, !dbg !1041
  %17 = icmp eq i8* %16, null, !dbg !1043
  br i1 %17, label %18, label %20, !dbg !1044

18:                                               ; preds = %13
  %19 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !1045
  br label %22, !dbg !1047

20:                                               ; preds = %13
  %21 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %16) #8, !dbg !1048
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1049
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1050
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1050
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1052
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1053, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %6, metadata !1056, metadata !DIExpression()) #10, !dbg !1057
  %25 = sext i32 %6 to i64, !dbg !1059
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %14, i64 %25, i32 1) #8, !dbg !1060
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1061
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1063
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1064
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !1066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #10, !dbg !1067
  %29 = icmp eq i8* %2, null, !dbg !1069
  br i1 %29, label %30, label %32, !dbg !1070

30:                                               ; preds = %22
  %31 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !1071
  br label %34, !dbg !1072

32:                                               ; preds = %22
  %33 = tail call i8* @halide_string_to_string(i8* %28, i8* %14, i8* nonnull %2) #8, !dbg !1073
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i8* [ %33, %32 ], [ %31, %30 ], !dbg !1074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1075
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1075
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1077
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1081
  br i1 %10, label %37, label %38, !dbg !1083

37:                                               ; preds = %34
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1085
  br label %45, !dbg !1088

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1092
  %39 = ptrtoint i8* %36 to i32, !dbg !1095
  %40 = ptrtoint i8* %9 to i32, !dbg !1095
  %41 = add i32 %39, 1, !dbg !1095
  %42 = sub i32 %41, %40, !dbg !1096
  %43 = sext i32 %42 to i64, !dbg !1097
  %44 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %9, i64 %43) #8, !dbg !1098
  tail call void @halide_error(i8* %1, i8* nonnull %9) #8, !dbg !1099
  br label %45

45:                                               ; preds = %37, %38
  call void @free(i8* %9) #8, !dbg !1102
  br label %46, !dbg !1105

46:                                               ; preds = %3, %45
  %47 = xor i1 %7, true, !dbg !1106
  ret i1 %47, !dbg !1106
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1107 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1111, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1112, metadata !DIExpression()), !dbg !1113
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #10, !dbg !1114
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !673, metadata !DIExpression()) #10, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1115
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1115
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 3, !dbg !1117
  store i8* %0, i8** %5, align 4, !dbg !1117, !tbaa !1118
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 4, !dbg !1120
  store i8 1, i8* %6, align 4, !dbg !1120, !tbaa !1121
  %7 = tail call i8* @malloc(i32 1024) #8, !dbg !1122
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 0, !dbg !1123
  store i8* %7, i8** %8, align 4, !dbg !1124, !tbaa !1125
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 1, !dbg !1126
  %10 = icmp eq i8* %7, null, !dbg !1127
  br i1 %10, label %13, label %11, !dbg !1128

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1129
  store i8 0, i8* %12, align 1, !dbg !1130, !tbaa !712
  br label %13, !dbg !1131

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ], !dbg !1132
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 2, !dbg !1133
  store i8* %14, i8** %15, align 4, !dbg !1135
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1136
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !1138
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1139
  %18 = load i64, i64* %17, align 8, !dbg !1139, !tbaa !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1140, metadata !DIExpression()) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %18, metadata !1143, metadata !DIExpression()) #10, !dbg !1144
  %19 = tail call i8* @halide_uint64_to_string(i8* %16, i8* %14, i64 %18, i32 1) #8, !dbg !1146
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1147
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1147
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1149
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1150
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1150
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %14, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1152
  %22 = load i64, i64* %17, align 8, !dbg !1153, !tbaa !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1154, metadata !DIExpression()) #10, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %22, metadata !1157, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1158
  %23 = and i64 %22, 4294967295, !dbg !1160
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %14, i64 %23, i32 1) #8, !dbg !1161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1162
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1162
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1165
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1165
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %14, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1167
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !1168
  %28 = load i8*, i8** %27, align 4, !dbg !1168, !tbaa !768
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1169, metadata !DIExpression()) #10, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %28, metadata !1172, metadata !DIExpression()) #10, !dbg !1173
  %29 = tail call i8* @halide_pointer_to_string(i8* %26, i8* %14, i8* %28) #8, !dbg !1175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1176
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1176
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1178
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1179
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1181
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !1182
  %33 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1182, !tbaa !815
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %33, i32 0, i32 1, !dbg !1183
  %35 = load i32, i32* %34, align 4, !dbg !1183, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %35, metadata !1187, metadata !DIExpression()) #10, !dbg !1188
  %36 = sext i32 %35 to i64, !dbg !1190
  %37 = tail call i8* @halide_int64_to_string(i8* %31, i8* %14, i64 %36, i32 1) #8, !dbg !1191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1192
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1194
  %39 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1195, !tbaa !815
  %40 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %39, i32 1, i32 1, !dbg !1196
  %41 = load i32, i32* %40, align 4, !dbg !1196, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %41, metadata !1187, metadata !DIExpression()) #10, !dbg !1197
  %42 = sext i32 %41 to i64, !dbg !1199
  %43 = tail call i8* @halide_int64_to_string(i8* %38, i8* %14, i64 %42, i32 1) #8, !dbg !1200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1201
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1203
  %45 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1204, !tbaa !815
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i32 2, i32 1, !dbg !1205
  %47 = load i32, i32* %46, align 4, !dbg !1205, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %47, metadata !1187, metadata !DIExpression()) #10, !dbg !1206
  %48 = sext i32 %47 to i64, !dbg !1208
  %49 = tail call i8* @halide_int64_to_string(i8* %44, i8* %14, i64 %48, i32 1) #8, !dbg !1209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1210
  %50 = tail call i8* @halide_string_to_string(i8* %49, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1212
  %51 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1213, !tbaa !815
  %52 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %51, i32 3, i32 1, !dbg !1214
  %53 = load i32, i32* %52, align 4, !dbg !1214, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %53, metadata !1187, metadata !DIExpression()) #10, !dbg !1215
  %54 = sext i32 %53 to i64, !dbg !1217
  %55 = tail call i8* @halide_int64_to_string(i8* %50, i8* %14, i64 %54, i32 1) #8, !dbg !1218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1219
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1219
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1222
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1222
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %14, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1224
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1225, !tbaa !815
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i32 0, i32 2, !dbg !1226
  %60 = load i32, i32* %59, align 4, !dbg !1226, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %60, metadata !1187, metadata !DIExpression()) #10, !dbg !1227
  %61 = sext i32 %60 to i64, !dbg !1229
  %62 = tail call i8* @halide_int64_to_string(i8* %57, i8* %14, i64 %61, i32 1) #8, !dbg !1230
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1231
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1231
  %63 = tail call i8* @halide_string_to_string(i8* %62, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1233
  %64 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1234, !tbaa !815
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %64, i32 1, i32 2, !dbg !1235
  %66 = load i32, i32* %65, align 4, !dbg !1235, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %66, metadata !1187, metadata !DIExpression()) #10, !dbg !1236
  %67 = sext i32 %66 to i64, !dbg !1238
  %68 = tail call i8* @halide_int64_to_string(i8* %63, i8* %14, i64 %67, i32 1) #8, !dbg !1239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1240
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1242
  %70 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1243, !tbaa !815
  %71 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %70, i32 2, i32 2, !dbg !1244
  %72 = load i32, i32* %71, align 4, !dbg !1244, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %72, metadata !1187, metadata !DIExpression()) #10, !dbg !1245
  %73 = sext i32 %72 to i64, !dbg !1247
  %74 = tail call i8* @halide_int64_to_string(i8* %69, i8* %14, i64 %73, i32 1) #8, !dbg !1248
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1249
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1249
  %75 = tail call i8* @halide_string_to_string(i8* %74, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1251
  %76 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1252, !tbaa !815
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %76, i32 3, i32 2, !dbg !1253
  %78 = load i32, i32* %77, align 4, !dbg !1253, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %78, metadata !1187, metadata !DIExpression()) #10, !dbg !1254
  %79 = sext i32 %78 to i64, !dbg !1256
  %80 = tail call i8* @halide_int64_to_string(i8* %75, i8* %14, i64 %79, i32 1) #8, !dbg !1257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1258
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1261
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1261
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %14, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !1263
  %83 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1264, !tbaa !815
  %84 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %83, i32 0, i32 0, !dbg !1265
  %85 = load i32, i32* %84, align 4, !dbg !1265, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %85, metadata !1187, metadata !DIExpression()) #10, !dbg !1266
  %86 = sext i32 %85 to i64, !dbg !1268
  %87 = tail call i8* @halide_int64_to_string(i8* %82, i8* %14, i64 %86, i32 1) #8, !dbg !1269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1270
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1272
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1273, !tbaa !815
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i32 1, i32 0, !dbg !1274
  %91 = load i32, i32* %90, align 4, !dbg !1274, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %91, metadata !1187, metadata !DIExpression()) #10, !dbg !1275
  %92 = load i8*, i8** %15, align 4, !dbg !1277, !tbaa !1278
  %93 = sext i32 %91 to i64, !dbg !1279
  %94 = tail call i8* @halide_int64_to_string(i8* %88, i8* %92, i64 %93, i32 1) #8, !dbg !1280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1281
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1283
  %96 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1284, !tbaa !815
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %96, i32 2, i32 0, !dbg !1285
  %98 = load i32, i32* %97, align 4, !dbg !1285, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %98, metadata !1187, metadata !DIExpression()) #10, !dbg !1286
  %99 = sext i32 %98 to i64, !dbg !1288
  %100 = tail call i8* @halide_int64_to_string(i8* %95, i8* %92, i64 %99, i32 1) #8, !dbg !1289
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1290
  %101 = tail call i8* @halide_string_to_string(i8* %100, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1292
  %102 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !1293, !tbaa !815
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %102, i32 3, i32 0, !dbg !1294
  %104 = load i32, i32* %103, align 4, !dbg !1294, !tbaa !827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1295
  call void @llvm.dbg.value(metadata i32 %104, metadata !1187, metadata !DIExpression()) #10, !dbg !1295
  %105 = sext i32 %104 to i64, !dbg !1297
  %106 = tail call i8* @halide_int64_to_string(i8* %101, i8* %92, i64 %105, i32 1) #8, !dbg !1298
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1299
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1299
  %107 = tail call i8* @halide_string_to_string(i8* %106, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1302
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1302
  %108 = tail call i8* @halide_string_to_string(i8* %107, i8* %92, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1304
  %109 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, !dbg !1305
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1306, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %109, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  %110 = tail call i8* @halide_type_to_string(i8* %108, i8* %92, %struct.halide_type_t* nonnull %109) #8, !dbg !1312
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1313
  %111 = tail call i8* @halide_string_to_string(i8* %110, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1315
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1316
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1316
  %112 = tail call i8* @halide_string_to_string(i8* %111, i8* %92, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1319, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1324, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 1, metadata !1327, metadata !DIExpression()), !dbg !1328
  %113 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1330
  %114 = load i64, i64* %113, align 8, !dbg !1330, !tbaa !1331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %114, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #10, !dbg !1332
  %115 = and i64 %114, 1, !dbg !1334
  %116 = tail call i8* @halide_int64_to_string(i8* %112, i8* %92, i64 %115, i32 1) #8, !dbg !1335
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1336
  %117 = tail call i8* @halide_string_to_string(i8* %116, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1338
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1339
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1339
  %118 = tail call i8* @halide_string_to_string(i8* %117, i8* %92, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1342, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1324, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i32 2, metadata !1327, metadata !DIExpression()), !dbg !1347
  %119 = load i64, i64* %113, align 8, !dbg !1349, !tbaa !1331
  %120 = lshr i64 %119, 1, !dbg !1350
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %120, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #10, !dbg !1351
  %121 = and i64 %120, 1, !dbg !1353
  %122 = tail call i8* @halide_int64_to_string(i8* %118, i8* %92, i64 %121, i32 1) #8, !dbg !1354
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1355
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1355
  %123 = tail call i8* @halide_string_to_string(i8* %122, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1357
  store i8* %123, i8** %9, align 4, !dbg !1358, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !699, metadata !DIExpression()) #10, !dbg !1360
  %124 = load i8*, i8** %8, align 4, !dbg !1362, !tbaa !1125
  %125 = icmp eq i8* %124, null, !dbg !1362
  %126 = load i8*, i8** %5, align 4, !dbg !1363, !tbaa !1118
  br i1 %125, label %127, label %128, !dbg !1364

127:                                              ; preds = %13
  tail call void @halide_error(i8* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1365
  br label %135, !dbg !1366

128:                                              ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1367
  %129 = ptrtoint i8* %123 to i32, !dbg !1369
  %130 = ptrtoint i8* %124 to i32, !dbg !1369
  %131 = add i32 %129, 1, !dbg !1369
  %132 = sub i32 %131, %130, !dbg !1370
  %133 = sext i32 %132 to i64, !dbg !1371
  %134 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %126, i8* nonnull %124, i64 %133) #8, !dbg !1372
  tail call void @halide_print(i8* %126, i8* nonnull %124) #8, !dbg !1373
  br label %135

135:                                              ; preds = %128, %127
  %136 = load i8, i8* %6, align 4, !dbg !1374, !tbaa !1121, !range !1375
  %137 = icmp eq i8 %136, 0, !dbg !1374
  br i1 %137, label %139, label %138, !dbg !1376

138:                                              ; preds = %135
  call void @free(i8* %124) #8, !dbg !1377
  br label %139, !dbg !1378

139:                                              ; preds = %135, %138
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #10, !dbg !1114
  ret void, !dbg !1379
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) %0) local_unnamed_addr #6 align 2 !dbg !1380 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, metadata !1382, metadata !DIExpression()), !dbg !1383
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 0, !dbg !1384
  store i8 0, i8* %2, align 4, !dbg !1385, !tbaa !1386
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 1, !dbg !1387
  store void (i32, i32)* null, void (i32, i32)** %3, align 4, !dbg !1387, !tbaa !1388
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 2, !dbg !1387
  store void (i32, i32)* null, void (i32, i32)** %4, align 4, !dbg !1387, !tbaa !1389
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 3, !dbg !1387
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %5, align 4, !dbg !1387, !tbaa !1390
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 4, !dbg !1387
  store void (i32, i32, i8*, i32)* null, void (i32, i32, i8*, i32)** %6, align 4, !dbg !1387, !tbaa !1391
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 5, !dbg !1387
  store i32 ()* null, i32 ()** %7, align 4, !dbg !1387, !tbaa !1392
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 6, !dbg !1387
  store void (i32)* null, void (i32)** %8, align 4, !dbg !1387, !tbaa !1393
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 7, !dbg !1387
  store i32 (i32)* null, i32 (i32)** %9, align 4, !dbg !1387, !tbaa !1394
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 8, !dbg !1387
  store void (i32, i32*)* null, void (i32, i32*)** %10, align 4, !dbg !1387, !tbaa !1395
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 9, !dbg !1387
  store void (i32)* null, void (i32)** %11, align 4, !dbg !1387, !tbaa !1396
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 10, !dbg !1387
  store void (i32)* null, void (i32)** %12, align 4, !dbg !1387, !tbaa !1397
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 11, !dbg !1387
  store void (i32, i32, i32)* null, void (i32, i32, i32)** %13, align 4, !dbg !1387, !tbaa !1398
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 12, !dbg !1387
  store void ()* null, void ()** %14, align 4, !dbg !1387, !tbaa !1399
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 13, !dbg !1387
  store void (i32, i32*)* null, void (i32, i32*)** %15, align 4, !dbg !1387, !tbaa !1400
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 14, !dbg !1387
  store i32 ()* null, i32 ()** %16, align 4, !dbg !1387, !tbaa !1003
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 15, !dbg !1387
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %17, align 4, !dbg !1387, !tbaa !1401
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 16, !dbg !1387
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %18, align 4, !dbg !1387, !tbaa !1402
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 17, !dbg !1387
  store void (i32, i32, i32*, i8*)* null, void (i32, i32, i32*, i8*)** %19, align 4, !dbg !1387, !tbaa !1403
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 18, !dbg !1387
  store void (i32, i32, i32*)* null, void (i32, i32, i32*)** %20, align 4, !dbg !1387, !tbaa !1404
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 19, !dbg !1387
  store i8* (i32)* null, i8* (i32)** %21, align 4, !dbg !1387, !tbaa !1405
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 20, !dbg !1387
  store void (i32)* null, void (i32)** %22, align 4, !dbg !1387, !tbaa !1406
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 21, !dbg !1387
  store i8* (i32, i32, i32, i32)* null, i8* (i32, i32, i32, i32)** %23, align 4, !dbg !1387, !tbaa !1407
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 22, !dbg !1387
  store void (i32)* null, void (i32)** %24, align 4, !dbg !1387, !tbaa !1408
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 23, !dbg !1387
  store void (i32, i32, i8**, i32*)* null, void (i32, i32, i8**, i32*)** %25, align 4, !dbg !1387, !tbaa !1409
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 24, !dbg !1387
  store void (i32, i32)* null, void (i32, i32)** %26, align 4, !dbg !1387, !tbaa !1410
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 25, !dbg !1387
  store void (i32, i32)* null, void (i32, i32)** %27, align 4, !dbg !1387, !tbaa !1411
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 26, !dbg !1387
  store void (i32, float)* null, void (i32, float)** %28, align 4, !dbg !1387, !tbaa !1412
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 27, !dbg !1387
  store void (i32)* null, void (i32)** %29, align 4, !dbg !1387, !tbaa !1413
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 28, !dbg !1387
  store void (i32)* null, void (i32)** %30, align 4, !dbg !1387, !tbaa !1414
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 29, !dbg !1387
  store void (i32, i32, i32, i32*, i32*, i32*, i8*)* null, void (i32, i32, i32, i32*, i32*, i32*, i8*)** %31, align 4, !dbg !1387, !tbaa !1415
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %0, i32 0, i32 30, !dbg !1387
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %32, align 4, !dbg !1387, !tbaa !1416
  ret void, !dbg !1417
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* %1, i8** %2, i1 zeroext %3) local_unnamed_addr #4 !dbg !1418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1422, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8* %1, metadata !1423, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8** %2, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i1 %3, metadata !1425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1427
  %5 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) #8, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %5, metadata !1426, metadata !DIExpression()), !dbg !1427
  %6 = icmp eq i8* %5, null, !dbg !1429
  %7 = and i1 %6, %3, !dbg !1431
  br i1 %7, label %8, label %32, !dbg !1431

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !1432
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1432
  %9 = tail call i8* @malloc(i32 1024) #8, !dbg !1435
  %10 = icmp eq i8* %9, null, !dbg !1436
  br i1 %10, label %13, label %11, !dbg !1437

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !1438
  store i8 0, i8* %12, align 1, !dbg !1439, !tbaa !712
  br label %13, !dbg !1440

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1441
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1442
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !1444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %1, metadata !1034, metadata !DIExpression()) #10, !dbg !1445
  %16 = icmp eq i8* %1, null, !dbg !1447
  br i1 %16, label %17, label %19, !dbg !1448

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !1449
  br label %21, !dbg !1450

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %1) #8, !dbg !1451
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ], !dbg !1452
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1453
  br i1 %10, label %23, label %24, !dbg !1455

23:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1456
  br label %31, !dbg !1457

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1458
  %25 = ptrtoint i8* %22 to i32, !dbg !1460
  %26 = ptrtoint i8* %9 to i32, !dbg !1460
  %27 = sub i32 1, %26, !dbg !1460
  %28 = add i32 %27, %25, !dbg !1461
  %29 = sext i32 %28 to i64, !dbg !1462
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %29) #8, !dbg !1463
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8, !dbg !1464
  br label %31

31:                                               ; preds = %24, %23
  tail call void @free(i8* %9) #8, !dbg !1465
  br label %33, !dbg !1466

32:                                               ; preds = %4
  store i8* %5, i8** %2, align 4, !dbg !1467, !tbaa !977
  br label %33, !dbg !1468

33:                                               ; preds = %32, %31
  %34 = phi i32 [ 0, %32 ], [ -1, %31 ], !dbg !1427
  ret i32 %34, !dbg !1469
}

declare !dbg !1470 dso_local i8* @halide_opengl_get_proc_address(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) local_unnamed_addr #4 !dbg !1474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1476, metadata !DIExpression()), !dbg !1477
  %2 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !1478, !tbaa !1386, !range !1375
  %3 = icmp eq i8 %2, 0, !dbg !1478
  br i1 %3, label %4, label %133, !dbg !1480

4:                                                ; preds = %1
  tail call void @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE) #9, !dbg !1481
  %5 = tail call i32 @halide_opengl_create_context(i8* %0) #8, !dbg !1482
  %6 = icmp eq i32 %5, 0, !dbg !1482
  br i1 %6, label %22, label %7, !dbg !1484

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !1485
  %8 = tail call i8* @malloc(i32 1024) #8, !dbg !1488
  %9 = icmp eq i8* %8, null, !dbg !1489
  br i1 %9, label %10, label %12, !dbg !1490

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1491
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1491
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1494
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1496
  br label %21, !dbg !1497

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1498
  store i8 0, i8* %13, align 1, !dbg !1499, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !1491
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !1491
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !1494
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !1500
  %15 = ptrtoint i8* %14 to i32, !dbg !1502
  %16 = ptrtoint i8* %8 to i32, !dbg !1502
  %17 = add i32 %15, 1, !dbg !1502
  %18 = sub i32 %17, %16, !dbg !1503
  %19 = sext i32 %18 to i64, !dbg !1504
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %19) #8, !dbg !1505
  tail call void @halide_error(i8* %0, i8* nonnull %8) #8, !dbg !1506
  br label %21

21:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #8, !dbg !1507
  br label %133, !dbg !1508

22:                                               ; preds = %4
  %23 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 1) to i8**), i1 zeroext true) #9, !dbg !1509
  %24 = icmp slt i32 %23, 0, !dbg !1509
  br i1 %24, label %133, label %25, !dbg !1511

25:                                               ; preds = %22
  %26 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2) to i8**), i1 zeroext true) #9, !dbg !1512
  %27 = icmp slt i32 %26, 0, !dbg !1512
  br i1 %27, label %133, label %28, !dbg !1511

28:                                               ; preds = %25
  %29 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 3) to i8**), i1 zeroext true) #9, !dbg !1514
  %30 = icmp slt i32 %29, 0, !dbg !1514
  br i1 %30, label %133, label %31, !dbg !1511

31:                                               ; preds = %28
  %32 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8** bitcast (void (i32, i32, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 4) to i8**), i1 zeroext true) #9, !dbg !1516
  %33 = icmp slt i32 %32, 0, !dbg !1516
  br i1 %33, label %133, label %34, !dbg !1511

34:                                               ; preds = %31
  %35 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 5) to i8**), i1 zeroext true) #9, !dbg !1518
  %36 = icmp slt i32 %35, 0, !dbg !1518
  br i1 %36, label %133, label %37, !dbg !1511

37:                                               ; preds = %34
  %38 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 6) to i8**), i1 zeroext true) #9, !dbg !1520
  %39 = icmp slt i32 %38, 0, !dbg !1520
  br i1 %39, label %133, label %40, !dbg !1511

40:                                               ; preds = %37
  %41 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8** bitcast (i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 7) to i8**), i1 zeroext true) #9, !dbg !1522
  %42 = icmp slt i32 %41, 0, !dbg !1522
  br i1 %42, label %133, label %43, !dbg !1511

43:                                               ; preds = %40
  %44 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 8) to i8**), i1 zeroext true) #9, !dbg !1524
  %45 = icmp slt i32 %44, 0, !dbg !1524
  br i1 %45, label %133, label %46, !dbg !1511

46:                                               ; preds = %43
  %47 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9) to i8**), i1 zeroext true) #9, !dbg !1526
  %48 = icmp slt i32 %47, 0, !dbg !1526
  br i1 %48, label %133, label %49, !dbg !1511

49:                                               ; preds = %46
  %50 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10) to i8**), i1 zeroext true) #9, !dbg !1528
  %51 = icmp slt i32 %50, 0, !dbg !1528
  br i1 %51, label %133, label %52, !dbg !1511

52:                                               ; preds = %49
  %53 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8** bitcast (void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 11) to i8**), i1 zeroext true) #9, !dbg !1530
  %54 = icmp slt i32 %53, 0, !dbg !1530
  br i1 %54, label %133, label %55, !dbg !1511

55:                                               ; preds = %52
  %56 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8** bitcast (void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 12) to i8**), i1 zeroext true) #9, !dbg !1532
  %57 = icmp slt i32 %56, 0, !dbg !1532
  br i1 %57, label %133, label %58, !dbg !1511

58:                                               ; preds = %55
  %59 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8** bitcast (void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 13) to i8**), i1 zeroext true) #9, !dbg !1534
  %60 = icmp slt i32 %59, 0, !dbg !1534
  br i1 %60, label %133, label %61, !dbg !1511

61:                                               ; preds = %58
  %62 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8** bitcast (i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 14) to i8**), i1 zeroext true) #9, !dbg !1536
  %63 = icmp slt i32 %62, 0, !dbg !1536
  br i1 %63, label %133, label %64, !dbg !1511

64:                                               ; preds = %61
  %65 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 15) to i8**), i1 zeroext true) #9, !dbg !1538
  %66 = icmp slt i32 %65, 0, !dbg !1538
  br i1 %66, label %133, label %67, !dbg !1511

67:                                               ; preds = %64
  %68 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16) to i8**), i1 zeroext true) #9, !dbg !1540
  %69 = icmp slt i32 %68, 0, !dbg !1540
  br i1 %69, label %133, label %70, !dbg !1511

70:                                               ; preds = %67
  %71 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 17) to i8**), i1 zeroext true) #9, !dbg !1542
  %72 = icmp slt i32 %71, 0, !dbg !1542
  br i1 %72, label %133, label %73, !dbg !1511

73:                                               ; preds = %70
  %74 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8** bitcast (void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18) to i8**), i1 zeroext true) #9, !dbg !1544
  %75 = icmp slt i32 %74, 0, !dbg !1544
  br i1 %75, label %133, label %76, !dbg !1511

76:                                               ; preds = %73
  %77 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8** bitcast (i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 19) to i8**), i1 zeroext true) #9, !dbg !1546
  %78 = icmp slt i32 %77, 0, !dbg !1546
  br i1 %78, label %133, label %79, !dbg !1511

79:                                               ; preds = %76
  %80 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 20) to i8**), i1 zeroext true) #9, !dbg !1548
  %81 = icmp slt i32 %80, 0, !dbg !1548
  br i1 %81, label %133, label %82, !dbg !1511

82:                                               ; preds = %79
  %83 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8** bitcast (i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21) to i8**), i1 zeroext true) #9, !dbg !1550
  %84 = icmp slt i32 %83, 0, !dbg !1550
  br i1 %84, label %133, label %85, !dbg !1511

85:                                               ; preds = %82
  %86 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 22) to i8**), i1 zeroext true) #9, !dbg !1552
  %87 = icmp slt i32 %86, 0, !dbg !1552
  br i1 %87, label %133, label %88, !dbg !1511

88:                                               ; preds = %85
  %89 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8** bitcast (void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 23) to i8**), i1 zeroext true) #9, !dbg !1554
  %90 = icmp slt i32 %89, 0, !dbg !1554
  br i1 %90, label %133, label %91, !dbg !1511

91:                                               ; preds = %88
  %92 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 24) to i8**), i1 zeroext true) #9, !dbg !1556
  %93 = icmp slt i32 %92, 0, !dbg !1556
  br i1 %93, label %133, label %94, !dbg !1511

94:                                               ; preds = %91
  %95 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** bitcast (void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 25) to i8**), i1 zeroext true) #9, !dbg !1558
  %96 = icmp slt i32 %95, 0, !dbg !1558
  br i1 %96, label %133, label %97, !dbg !1511

97:                                               ; preds = %94
  %98 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8** bitcast (void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 26) to i8**), i1 zeroext true) #9, !dbg !1560
  %99 = icmp slt i32 %98, 0, !dbg !1560
  br i1 %99, label %133, label %100, !dbg !1511

100:                                              ; preds = %97
  %101 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27) to i8**), i1 zeroext true) #9, !dbg !1562
  %102 = icmp slt i32 %101, 0, !dbg !1562
  br i1 %102, label %133, label %103, !dbg !1511

103:                                              ; preds = %100
  %104 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8** bitcast (void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 28) to i8**), i1 zeroext true) #9, !dbg !1564
  %105 = icmp slt i32 %104, 0, !dbg !1564
  br i1 %105, label %133, label %106, !dbg !1511

106:                                              ; preds = %103
  %107 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i8** bitcast (void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 29) to i8**), i1 zeroext true) #9, !dbg !1566
  %108 = icmp slt i32 %107, 0, !dbg !1566
  br i1 %108, label %133, label %109, !dbg !1511

109:                                              ; preds = %106
  %110 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8** bitcast (i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 30) to i8**), i1 zeroext true) #9, !dbg !1568
  %111 = icmp slt i32 %110, 0, !dbg !1568
  br i1 %111, label %133, label %112, !dbg !1511

112:                                              ; preds = %109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1570
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1570
  %113 = tail call i8* @malloc(i32 1024) #8, !dbg !1572
  %114 = icmp eq i8* %113, null, !dbg !1573
  br i1 %114, label %117, label %115, !dbg !1574

115:                                              ; preds = %112
  %116 = getelementptr inbounds i8, i8* %113, i32 1023, !dbg !1575
  store i8 0, i8* %116, align 1, !dbg !1576, !tbaa !712
  br label %117, !dbg !1577

117:                                              ; preds = %112, %115
  %118 = phi i8* [ %116, %115 ], [ null, %112 ], !dbg !1578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1579
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1579
  %119 = tail call i8* @halide_string_to_string(i8* %113, i8* %118, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0)) #8, !dbg !1581
  %120 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 19), align 4, !dbg !1582, !tbaa !1405
  %121 = tail call i8* %120(i32 7938) #8, !dbg !1583
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %121, metadata !1172, metadata !DIExpression()) #10, !dbg !1584
  %122 = tail call i8* @halide_pointer_to_string(i8* %119, i8* %118, i8* %121) #8, !dbg !1586
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1587
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1587
  %123 = tail call i8* @halide_string_to_string(i8* %122, i8* %118, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1589
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1590
  br i1 %114, label %124, label %125, !dbg !1592

124:                                              ; preds = %117
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1593
  br label %132, !dbg !1594

125:                                              ; preds = %117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1595
  %126 = ptrtoint i8* %123 to i32, !dbg !1597
  %127 = ptrtoint i8* %113 to i32, !dbg !1597
  %128 = add i32 %126, 1, !dbg !1597
  %129 = sub i32 %128, %127, !dbg !1598
  %130 = sext i32 %129 to i64, !dbg !1599
  %131 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %113, i64 %130) #8, !dbg !1600
  tail call void @halide_print(i8* %0, i8* nonnull %113) #8, !dbg !1601
  br label %132

132:                                              ; preds = %125, %124
  tail call void @free(i8* %113) #8, !dbg !1602
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !1603, !tbaa !1386
  br label %133, !dbg !1604

133:                                              ; preds = %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %1, %132, %21
  %134 = phi i32 [ -1, %21 ], [ 0, %132 ], [ 0, %1 ], [ -1, %22 ], [ -1, %25 ], [ -1, %28 ], [ -1, %31 ], [ -1, %34 ], [ -1, %37 ], [ -1, %40 ], [ -1, %43 ], [ -1, %46 ], [ -1, %49 ], [ -1, %52 ], [ -1, %55 ], [ -1, %58 ], [ -1, %61 ], [ -1, %64 ], [ -1, %67 ], [ -1, %70 ], [ -1, %73 ], [ -1, %76 ], [ -1, %79 ], [ -1, %82 ], [ -1, %85 ], [ -1, %88 ], [ -1, %91 ], [ -1, %94 ], [ -1, %97 ], [ -1, %100 ], [ -1, %103 ], [ -1, %106 ], [ -1, %109 ], !dbg !1477
  ret i32 %134, !dbg !1605
}

declare !dbg !1606 dso_local i32 @halide_opengl_create_context(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv(i8* %0) #4 !dbg !1607 {
  %2 = alloca %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1609, metadata !DIExpression()), !dbg !1618
  %3 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %3, metadata !1610, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1620
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1620
  %4 = tail call i8* @malloc(i32 1024) #8, !dbg !1622
  %5 = icmp eq i8* %4, null, !dbg !1623
  br i1 %5, label %8, label %6, !dbg !1624

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1625
  store i8 0, i8* %7, align 1, !dbg !1626, !tbaa !712
  br label %8, !dbg !1627

8:                                                ; preds = %1, %6
  %9 = phi i8* [ %7, %6 ], [ null, %1 ], !dbg !1628
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1629
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !1631
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !1632
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1634
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1635
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !1637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1638
  br i1 %5, label %13, label %14, !dbg !1640

13:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1641
  br label %21, !dbg !1642

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1643
  %15 = ptrtoint i8* %12 to i32, !dbg !1645
  %16 = ptrtoint i8* %4 to i32, !dbg !1645
  %17 = add i32 %15, 1, !dbg !1645
  %18 = sub i32 %17, %16, !dbg !1646
  %19 = sext i32 %18 to i64, !dbg !1647
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %19) #8, !dbg !1648
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1649
  br label %21

21:                                               ; preds = %14, %13
  tail call void @free(i8* %4) #8, !dbg !1650
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1611, metadata !DIExpression()), !dbg !1618
  %22 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 4, !dbg !1618, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, metadata !1611, metadata !DIExpression()), !dbg !1618
  %23 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, null, !dbg !1651
  br i1 %23, label %44, label %24, !dbg !1652

24:                                               ; preds = %21, %40
  %25 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %42, %40 ], [ %22, %21 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %25, i32 0, i32 0, !dbg !1653
  %27 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 4, !dbg !1653, !tbaa !1654
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %27, metadata !1612, metadata !DIExpression()), !dbg !1656
  %28 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %27, null, !dbg !1657
  br i1 %28, label %40, label %29, !dbg !1658

29:                                               ; preds = %24, %29
  %30 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* [ %32, %29 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %30, metadata !1612, metadata !DIExpression()), !dbg !1656
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %30, i32 0, i32 2, !dbg !1659
  %32 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %31, align 4, !dbg !1659, !tbaa !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %32, metadata !1614, metadata !DIExpression()), !dbg !1661
  %33 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9), align 4, !dbg !1662, !tbaa !1396
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %30, i32 0, i32 1, !dbg !1663
  %35 = load i32, i32* %34, align 4, !dbg !1663, !tbaa !1664
  tail call void %33(i32 %35) #8, !dbg !1665
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %30, i32 0, i32 0, !dbg !1666
  %37 = load i8*, i8** %36, align 4, !dbg !1666, !tbaa !981
  tail call void @free(i8* %37) #8, !dbg !1667
  %38 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %30 to i8*, !dbg !1668
  tail call void @free(i8* nonnull %38) #8, !dbg !1669
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %32, metadata !1612, metadata !DIExpression()), !dbg !1656
  %39 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %32, null, !dbg !1657
  br i1 %39, label %40, label %29, !dbg !1658, !llvm.loop !1670

40:                                               ; preds = %29, %24
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %26, align 4, !dbg !1672, !tbaa !1654
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %25, i32 0, i32 1, !dbg !1673
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1616, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* undef, metadata !1611, metadata !DIExpression()), !dbg !1618
  %42 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %41, align 4, !dbg !1618, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %42, metadata !1611, metadata !DIExpression()), !dbg !1618
  %43 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %42, null, !dbg !1651
  br i1 %43, label %44, label %24, !dbg !1652, !llvm.loop !1674

44:                                               ; preds = %40, %21
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* %2, i32 0, i32 0, !dbg !1676
  call void @llvm.lifetime.start.p0i8(i64 124, i8* nonnull %45), !dbg !1676
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(124) %45, i8 0, i32 124, i1 false), !dbg !1676
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(124) getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), i8* nonnull align 4 dereferenceable(124) %45, i32 124, i1 false), !dbg !1677, !tbaa.struct !1678
  call void @llvm.lifetime.end.p0i8(i64 124, i8* nonnull %45), !dbg !1680
  %46 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %46, metadata !1617, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1682
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1682
  %47 = tail call i8* @malloc(i32 1024) #8, !dbg !1684
  %48 = icmp eq i8* %47, null, !dbg !1685
  br i1 %48, label %51, label %49, !dbg !1686

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %47, i32 1023, !dbg !1687
  store i8 0, i8* %50, align 1, !dbg !1688, !tbaa !712
  br label %51, !dbg !1689

51:                                               ; preds = %44, %49
  %52 = phi i8* [ %50, %49 ], [ null, %44 ], !dbg !1690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1691
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1691
  %53 = tail call i8* @halide_string_to_string(i8* %47, i8* %52, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !1693
  %54 = sub i64 %46, %3, !dbg !1694
  %55 = uitofp i64 %54 to double, !dbg !1695
  %56 = fdiv double %55, 1.000000e+06, !dbg !1696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !1701
  call void @llvm.dbg.value(metadata double %56, metadata !1700, metadata !DIExpression()) #10, !dbg !1701
  %57 = tail call i8* @halide_double_to_string(i8* %53, i8* %52, double %56, i32 1) #8, !dbg !1703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1704
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %52, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !1706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1707
  br i1 %48, label %59, label %60, !dbg !1709

59:                                               ; preds = %51
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1710
  br label %67, !dbg !1711

60:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1712
  %61 = ptrtoint i8* %58 to i32, !dbg !1714
  %62 = ptrtoint i8* %47 to i32, !dbg !1714
  %63 = add i32 %61, 1, !dbg !1714
  %64 = sub i32 %63, %62, !dbg !1715
  %65 = sext i32 %64 to i64, !dbg !1716
  %66 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %65) #8, !dbg !1717
  tail call void @halide_print(i8* %0, i8* nonnull %47) #8, !dbg !1718
  br label %67

67:                                               ; preds = %60, %59
  tail call void @free(i8* %47) #8, !dbg !1719
  ret i32 0, !dbg !1720
}

declare !dbg !1721 extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare !dbg !1724 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1727 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1731, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1732, metadata !DIExpression()), !dbg !1743
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %5, metadata !1733, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1745
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1745
  %6 = tail call i8* @malloc(i32 1024) #8, !dbg !1747
  %7 = icmp eq i8* %6, null, !dbg !1748
  br i1 %7, label %10, label %8, !dbg !1749

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !1750
  store i8 0, i8* %9, align 1, !dbg !1751, !tbaa !712
  br label %10, !dbg !1752

10:                                               ; preds = %2, %8
  %11 = phi i8* [ %9, %8 ], [ null, %2 ], !dbg !1753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1754
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.64, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1754
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !1756
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !1757
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1759
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1760
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !1762
  %15 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %15, metadata !1172, metadata !DIExpression()) #10, !dbg !1764
  %16 = tail call i8* @halide_pointer_to_string(i8* %14, i8* %11, i8* %15) #8, !dbg !1766
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1767
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !1769
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1770
  br i1 %7, label %18, label %19, !dbg !1772

18:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1773
  br label %26, !dbg !1774

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1775
  %20 = ptrtoint i8* %17 to i32, !dbg !1777
  %21 = ptrtoint i8* %6 to i32, !dbg !1777
  %22 = add i32 %20, 1, !dbg !1777
  %23 = sub i32 %22, %21, !dbg !1778
  %24 = sext i32 %23 to i64, !dbg !1779
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %24) #8, !dbg !1780
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1781
  br label %26

26:                                               ; preds = %18, %19
  call void @free(i8* %6) #8, !dbg !1782
  %27 = call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %27, metadata !1734, metadata !DIExpression()), !dbg !1784
  %28 = icmp eq i32 %27, 0, !dbg !1785
  br i1 %28, label %29, label %325

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1786, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1791, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()), !dbg !1799
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !1800
  %31 = load i32, i32* %30, align 4, !dbg !1800, !tbaa !812
  %32 = icmp sgt i32 %31, 0, !dbg !1802
  br i1 %32, label %36, label %33, !dbg !1803

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1804
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !1806
  %35 = load i8, i8* %34, align 1, !dbg !1806, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1807, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1815
  br label %74, !dbg !1816

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %38 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !tbaa !815
  br label %39, !dbg !1803

39:                                               ; preds = %51, %36
  %40 = phi i32 [ 0, %36 ], [ %53, %51 ]
  %41 = phi i32 [ 0, %36 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %41, metadata !1794, metadata !DIExpression()), !dbg !1797
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i32 %40, i32 2, !dbg !1817
  %43 = load i32, i32* %42, align 4, !dbg !1817, !tbaa !823
  %44 = icmp sgt i32 %43, 0, !dbg !1820
  br i1 %44, label %45, label %51, !dbg !1821

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i32 %40, i32 1, !dbg !1822
  %47 = load i32, i32* %46, align 4, !dbg !1822, !tbaa !887
  %48 = add nsw i32 %47, -1, !dbg !1824
  %49 = mul nsw i32 %48, %43, !dbg !1825
  %50 = add nsw i32 %49, %41, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %50, metadata !1794, metadata !DIExpression()), !dbg !1797
  br label %51, !dbg !1827

51:                                               ; preds = %45, %39
  %52 = phi i32 [ %50, %45 ], [ %41, %39 ], !dbg !1797
  call void @llvm.dbg.value(metadata i32 %52, metadata !1794, metadata !DIExpression()), !dbg !1797
  %53 = add nuw nsw i32 %40, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %53, metadata !1795, metadata !DIExpression()), !dbg !1799
  %54 = icmp slt i32 %53, %31, !dbg !1802
  br i1 %54, label %39, label %55, !dbg !1803, !llvm.loop !1829

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %52, metadata !1794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1797
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1804
  %56 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !1806
  %57 = load i8, i8* %56, align 1, !dbg !1806, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1807, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1815
  br label %58, !dbg !1816

58:                                               ; preds = %70, %55
  %59 = phi i32 [ 0, %55 ], [ %72, %70 ]
  %60 = phi i32 [ 0, %55 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i32 %59, metadata !1811, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %60, metadata !1810, metadata !DIExpression()), !dbg !1813
  %61 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i32 %59, i32 2, !dbg !1831
  %62 = load i32, i32* %61, align 4, !dbg !1831, !tbaa !823
  %63 = icmp slt i32 %62, 0, !dbg !1835
  br i1 %63, label %64, label %70, !dbg !1836

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i32 %59, i32 1, !dbg !1837
  %66 = load i32, i32* %65, align 4, !dbg !1837, !tbaa !887
  %67 = add nsw i32 %66, -1, !dbg !1839
  %68 = mul nsw i32 %67, %62, !dbg !1840
  %69 = add nsw i32 %68, %60, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %69, metadata !1810, metadata !DIExpression()), !dbg !1813
  br label %70, !dbg !1842

70:                                               ; preds = %64, %58
  %71 = phi i32 [ %69, %64 ], [ %60, %58 ], !dbg !1813
  call void @llvm.dbg.value(metadata i32 %71, metadata !1810, metadata !DIExpression()), !dbg !1813
  %72 = add nuw nsw i32 %59, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %72, metadata !1811, metadata !DIExpression()), !dbg !1815
  %73 = icmp slt i32 %72, %31, !dbg !1844
  br i1 %73, label %58, label %74, !dbg !1816, !llvm.loop !1845

74:                                               ; preds = %70, %33
  %75 = phi i8 [ %35, %33 ], [ %57, %70 ]
  %76 = phi i32 [ 0, %33 ], [ %52, %70 ]
  %77 = phi i32 [ 0, %33 ], [ %71, %70 ], !dbg !1813
  %78 = zext i8 %75 to i32, !dbg !1806
  %79 = add nuw nsw i32 %78, 7, !dbg !1847
  %80 = lshr i32 %79, 3, !dbg !1848
  %81 = add nsw i32 %76, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %81, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1850
  %82 = sub i32 %81, %77, !dbg !1852
  %83 = mul i32 %82, %80, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %83, metadata !1736, metadata !DIExpression()), !dbg !1743
  %84 = icmp eq i32 %83, 0, !dbg !1853
  br i1 %84, label %85, label %86, !dbg !1856

85:                                               ; preds = %74
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.66, i32 0, i32 0)) #8, !dbg !1857
  call void @abort() #8, !dbg !1857
  br label %86, !dbg !1857

86:                                               ; preds = %85, %74
  %87 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1859
  %88 = load i64, i64* %87, align 8, !dbg !1859, !tbaa !777
  %89 = icmp eq i64 %88, 0, !dbg !1861
  br i1 %89, label %90, label %95, !dbg !1862

90:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i32 0, metadata !1737, metadata !DIExpression()), !dbg !1863
  %91 = load i32, i32* %30, align 4, !dbg !1864, !tbaa !812
  %92 = icmp sgt i32 %91, 0, !dbg !1866
  br i1 %92, label %93, label %110, !dbg !1867

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %224, !dbg !1867

95:                                               ; preds = %86
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1868
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1868
  %96 = call i8* @malloc(i32 1024) #8, !dbg !1871
  %97 = icmp eq i8* %96, null, !dbg !1872
  br i1 %97, label %98, label %100, !dbg !1873

98:                                               ; preds = %95
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1874
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1874
  %99 = call i8* @halide_string_to_string(i8* %96, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1877
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !1879
  br label %109, !dbg !1880

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, i8* %96, i32 1023, !dbg !1881
  store i8 0, i8* %101, align 1, !dbg !1882, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !1874
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1874
  %102 = call i8* @halide_string_to_string(i8* nonnull %96, i8* nonnull %101, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !1877
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !1883
  %103 = ptrtoint i8* %102 to i32, !dbg !1885
  %104 = ptrtoint i8* %96 to i32, !dbg !1885
  %105 = add i32 %103, 1, !dbg !1885
  %106 = sub i32 %105, %104, !dbg !1886
  %107 = sext i32 %106 to i64, !dbg !1887
  %108 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %107) #8, !dbg !1888
  call void @halide_print(i8* %0, i8* nonnull %96) #8, !dbg !1889
  br label %109

109:                                              ; preds = %100, %98
  call void @free(i8* %96) #8, !dbg !1890
  br label %325, !dbg !1891

110:                                              ; preds = %233, %90
  %111 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !1892
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %111) #10, !dbg !1892
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !673, metadata !DIExpression()) #10, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !1893
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !1893
  %112 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 3, !dbg !1895
  store i8* %0, i8** %112, align 4, !dbg !1895, !tbaa !1118
  %113 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 4, !dbg !1896
  store i8 1, i8* %113, align 4, !dbg !1896, !tbaa !1121
  %114 = call i8* @malloc(i32 1024) #8, !dbg !1897
  %115 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 0, !dbg !1898
  store i8* %114, i8** %115, align 4, !dbg !1899, !tbaa !1125
  %116 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 1, !dbg !1900
  store i8* %114, i8** %116, align 4, !dbg !1901, !tbaa !1359
  %117 = icmp eq i8* %114, null, !dbg !1902
  br i1 %117, label %120, label %118, !dbg !1903

118:                                              ; preds = %110
  %119 = getelementptr inbounds i8, i8* %114, i32 1023, !dbg !1904
  store i8 0, i8* %119, align 1, !dbg !1905, !tbaa !712
  br label %120, !dbg !1906

120:                                              ; preds = %110, %118
  %121 = phi i8* [ %119, %118 ], [ null, %110 ], !dbg !1907
  %122 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 2, !dbg !1908
  store i8* %121, i8** %122, align 4, !dbg !1909
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1910
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1910
  %123 = call i8* @halide_string_to_string(i8* %114, i8* %121, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0)) #8, !dbg !1912
  store i8* %123, i8** %116, align 4, !dbg !1913, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1914
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1914
  %124 = load i8*, i8** %122, align 4, !dbg !1916, !tbaa !1278
  %125 = call i8* @halide_string_to_string(i8* %123, i8* %124, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !1917
  store i8* %125, i8** %116, align 4, !dbg !1918, !tbaa !1359
  %126 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !1919
  %127 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1919, !tbaa !815
  %128 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %127, i32 0, i32 1, !dbg !1920
  %129 = load i32, i32* %128, align 4, !dbg !1920, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %129, metadata !1187, metadata !DIExpression()) #10, !dbg !1921
  %130 = load i8*, i8** %122, align 4, !dbg !1923, !tbaa !1278
  %131 = sext i32 %129 to i64, !dbg !1924
  %132 = call i8* @halide_int64_to_string(i8* %125, i8* %130, i64 %131, i32 1) #8, !dbg !1925
  store i8* %132, i8** %116, align 4, !dbg !1926, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1927
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1927
  %133 = load i8*, i8** %122, align 4, !dbg !1929, !tbaa !1278
  %134 = call i8* @halide_string_to_string(i8* %132, i8* %133, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !1930
  store i8* %134, i8** %116, align 4, !dbg !1931, !tbaa !1359
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1932, !tbaa !815
  %136 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 1, i32 1, !dbg !1933
  %137 = load i32, i32* %136, align 4, !dbg !1933, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %137, metadata !1187, metadata !DIExpression()) #10, !dbg !1934
  %138 = load i8*, i8** %122, align 4, !dbg !1936, !tbaa !1278
  %139 = sext i32 %137 to i64, !dbg !1937
  %140 = call i8* @halide_int64_to_string(i8* %134, i8* %138, i64 %139, i32 1) #8, !dbg !1938
  store i8* %140, i8** %116, align 4, !dbg !1939, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1940
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1940
  %141 = load i8*, i8** %122, align 4, !dbg !1942, !tbaa !1278
  %142 = call i8* @halide_string_to_string(i8* %140, i8* %141, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !1943
  store i8* %142, i8** %116, align 4, !dbg !1944, !tbaa !1359
  %143 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1945, !tbaa !815
  %144 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %143, i32 2, i32 1, !dbg !1946
  %145 = load i32, i32* %144, align 4, !dbg !1946, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %145, metadata !1187, metadata !DIExpression()) #10, !dbg !1947
  %146 = load i8*, i8** %122, align 4, !dbg !1949, !tbaa !1278
  %147 = sext i32 %145 to i64, !dbg !1950
  %148 = call i8* @halide_int64_to_string(i8* %142, i8* %146, i64 %147, i32 1) #8, !dbg !1951
  store i8* %148, i8** %116, align 4, !dbg !1952, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1953
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1953
  %149 = load i8*, i8** %122, align 4, !dbg !1955, !tbaa !1278
  %150 = call i8* @halide_string_to_string(i8* %148, i8* %149, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !1956
  store i8* %150, i8** %116, align 4, !dbg !1957, !tbaa !1359
  %151 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1958, !tbaa !815
  %152 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %151, i32 3, i32 1, !dbg !1959
  %153 = load i32, i32* %152, align 4, !dbg !1959, !tbaa !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %153, metadata !1187, metadata !DIExpression()) #10, !dbg !1960
  %154 = load i8*, i8** %122, align 4, !dbg !1962, !tbaa !1278
  %155 = sext i32 %153 to i64, !dbg !1963
  %156 = call i8* @halide_int64_to_string(i8* %150, i8* %154, i64 %155, i32 1) #8, !dbg !1964
  store i8* %156, i8** %116, align 4, !dbg !1965, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1966
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1966
  %157 = load i8*, i8** %122, align 4, !dbg !1968, !tbaa !1278
  %158 = call i8* @halide_string_to_string(i8* %156, i8* %157, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1969
  store i8* %158, i8** %116, align 4, !dbg !1970, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1971
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1971
  %159 = load i8*, i8** %122, align 4, !dbg !1973, !tbaa !1278
  %160 = call i8* @halide_string_to_string(i8* %158, i8* %159, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #8, !dbg !1974
  store i8* %160, i8** %116, align 4, !dbg !1975, !tbaa !1359
  %161 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1976, !tbaa !815
  %162 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %161, i32 0, i32 2, !dbg !1977
  %163 = load i32, i32* %162, align 4, !dbg !1977, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %163, metadata !1187, metadata !DIExpression()) #10, !dbg !1978
  %164 = load i8*, i8** %122, align 4, !dbg !1980, !tbaa !1278
  %165 = sext i32 %163 to i64, !dbg !1981
  %166 = call i8* @halide_int64_to_string(i8* %160, i8* %164, i64 %165, i32 1) #8, !dbg !1982
  store i8* %166, i8** %116, align 4, !dbg !1983, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1984
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1984
  %167 = load i8*, i8** %122, align 4, !dbg !1986, !tbaa !1278
  %168 = call i8* @halide_string_to_string(i8* %166, i8* %167, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !1987
  store i8* %168, i8** %116, align 4, !dbg !1988, !tbaa !1359
  %169 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !1989, !tbaa !815
  %170 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %169, i32 1, i32 2, !dbg !1990
  %171 = load i32, i32* %170, align 4, !dbg !1990, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %171, metadata !1187, metadata !DIExpression()) #10, !dbg !1991
  %172 = load i8*, i8** %122, align 4, !dbg !1993, !tbaa !1278
  %173 = sext i32 %171 to i64, !dbg !1994
  %174 = call i8* @halide_int64_to_string(i8* %168, i8* %172, i64 %173, i32 1) #8, !dbg !1995
  store i8* %174, i8** %116, align 4, !dbg !1996, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !1997
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !1997
  %175 = load i8*, i8** %122, align 4, !dbg !1999, !tbaa !1278
  %176 = call i8* @halide_string_to_string(i8* %174, i8* %175, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !2000
  store i8* %176, i8** %116, align 4, !dbg !2001, !tbaa !1359
  %177 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !2002, !tbaa !815
  %178 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %177, i32 2, i32 2, !dbg !2003
  %179 = load i32, i32* %178, align 4, !dbg !2003, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %179, metadata !1187, metadata !DIExpression()) #10, !dbg !2004
  %180 = load i8*, i8** %122, align 4, !dbg !2006, !tbaa !1278
  %181 = sext i32 %179 to i64, !dbg !2007
  %182 = call i8* @halide_int64_to_string(i8* %176, i8* %180, i64 %181, i32 1) #8, !dbg !2008
  store i8* %182, i8** %116, align 4, !dbg !2009, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !2010
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2010
  %183 = load i8*, i8** %122, align 4, !dbg !2012, !tbaa !1278
  %184 = call i8* @halide_string_to_string(i8* %182, i8* %183, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !2013
  store i8* %184, i8** %116, align 4, !dbg !2014, !tbaa !1359
  %185 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %126, align 8, !dbg !2015, !tbaa !815
  %186 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %185, i32 3, i32 2, !dbg !2016
  %187 = load i32, i32* %186, align 4, !dbg !2016, !tbaa !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1184, metadata !DIExpression()) #10, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %187, metadata !1187, metadata !DIExpression()) #10, !dbg !2017
  %188 = load i8*, i8** %122, align 4, !dbg !2019, !tbaa !1278
  %189 = sext i32 %187 to i64, !dbg !2020
  %190 = call i8* @halide_int64_to_string(i8* %184, i8* %188, i64 %189, i32 1) #8, !dbg !2021
  store i8* %190, i8** %116, align 4, !dbg !2022, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !2023
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2023
  %191 = load i8*, i8** %122, align 4, !dbg !2025, !tbaa !1278
  %192 = call i8* @halide_string_to_string(i8* %190, i8* %191, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !2026
  store i8* %192, i8** %116, align 4, !dbg !2027, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !2028
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2028
  %193 = load i8*, i8** %122, align 4, !dbg !2030, !tbaa !1278
  %194 = call i8* @halide_string_to_string(i8* %192, i8* %193, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !2031
  store i8* %194, i8** %116, align 4, !dbg !2032, !tbaa !1359
  %195 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, !dbg !2033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !1306, metadata !DIExpression()) #10, !dbg !2034
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %195, metadata !1309, metadata !DIExpression()) #10, !dbg !2034
  %196 = load i8*, i8** %122, align 4, !dbg !2036, !tbaa !1278
  %197 = call i8* @halide_type_to_string(i8* %194, i8* %196, %struct.halide_type_t* nonnull %195) #8, !dbg !2037
  store i8* %197, i8** %116, align 4, !dbg !2038, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !690, metadata !DIExpression()) #10, !dbg !2039
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2039
  %198 = load i8*, i8** %122, align 4, !dbg !2041, !tbaa !1278
  %199 = call i8* @halide_string_to_string(i8* %197, i8* %198, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !2042
  store i8* %199, i8** %116, align 4, !dbg !2043, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !699, metadata !DIExpression()) #10, !dbg !2044
  %200 = load i8*, i8** %115, align 4, !dbg !2046, !tbaa !1125
  %201 = icmp eq i8* %200, null, !dbg !2046
  %202 = load i8*, i8** %112, align 4, !dbg !2047, !tbaa !1118
  br i1 %201, label %203, label %204, !dbg !2048

203:                                              ; preds = %120
  call void @halide_error(i8* %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2049
  br label %213, !dbg !2050

204:                                              ; preds = %120
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2051
  %205 = ptrtoint i8* %199 to i32, !dbg !2053
  %206 = ptrtoint i8* %200 to i32, !dbg !2053
  %207 = add i32 %205, 1, !dbg !2053
  %208 = sub i32 %207, %206, !dbg !2054
  %209 = sext i32 %208 to i64, !dbg !2055
  %210 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %202, i8* nonnull %200, i64 %209) #8, !dbg !2056
  %211 = load i8*, i8** %112, align 4, !dbg !2057, !tbaa !1118
  %212 = load i8*, i8** %115, align 4, !dbg !2058, !tbaa !1125
  call void @halide_print(i8* %211, i8* %212) #8, !dbg !2059
  br label %213

213:                                              ; preds = %204, %203
  %214 = load i8, i8* %113, align 4, !dbg !2060, !tbaa !1121, !range !1375
  %215 = icmp eq i8 %214, 0, !dbg !2060
  br i1 %215, label %221, label %216, !dbg !2061

216:                                              ; preds = %213
  %217 = load i8*, i8** %115, align 4, !dbg !2062, !tbaa !1125
  %218 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 5, i32 0, !dbg !2063
  %219 = icmp eq i8* %217, %218, !dbg !2064
  br i1 %219, label %221, label %220, !dbg !2065

220:                                              ; preds = %216
  call void @free(i8* %217) #8, !dbg !2066
  br label %221, !dbg !2067

221:                                              ; preds = %213, %216, %220
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %111) #10, !dbg !1892
  %222 = call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %222, metadata !1739, metadata !DIExpression()), !dbg !2069
  %223 = icmp eq i32 %222, 0, !dbg !2070
  br i1 %223, label %237, label %325

224:                                              ; preds = %93, %233
  %225 = phi i32 [ %91, %93 ], [ %234, %233 ]
  %226 = phi i32 [ 0, %93 ], [ %235, %233 ]
  call void @llvm.dbg.value(metadata i32 %226, metadata !1737, metadata !DIExpression()), !dbg !1863
  %227 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %94, align 8, !dbg !2071, !tbaa !815
  %228 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %227, i32 %226, i32 2, !dbg !2071
  %229 = load i32, i32* %228, align 4, !dbg !2071, !tbaa !823
  %230 = icmp sgt i32 %229, -1, !dbg !2071
  br i1 %230, label %233, label %231, !dbg !2075

231:                                              ; preds = %224
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !2076
  call void @abort() #8, !dbg !2076
  %232 = load i32, i32* %30, align 4, !dbg !1864, !tbaa !812
  br label %233, !dbg !2076

233:                                              ; preds = %224, %231
  %234 = phi i32 [ %225, %224 ], [ %232, %231 ], !dbg !1864
  %235 = add nuw nsw i32 %226, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %235, metadata !1737, metadata !DIExpression()), !dbg !1863
  %236 = icmp slt i32 %235, %234, !dbg !1866
  br i1 %236, label %224, label %110, !dbg !1867, !llvm.loop !2079

237:                                              ; preds = %221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2081
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2081
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2081
  %238 = call i8* @malloc(i32 1024) #8, !dbg !2083
  %239 = icmp eq i8* %238, null, !dbg !2084
  br i1 %239, label %240, label %242, !dbg !2085

240:                                              ; preds = %237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2086
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2086
  %241 = call i8* @halide_string_to_string(i8* %238, i8* null, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0)) #8, !dbg !2088
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2089
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2091
  br label %251, !dbg !2092

242:                                              ; preds = %237
  %243 = getelementptr inbounds i8, i8* %238, i32 1023, !dbg !2093
  store i8 0, i8* %243, align 1, !dbg !2094, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2086
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2086
  %244 = call i8* @halide_string_to_string(i8* nonnull %238, i8* nonnull %243, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0)) #8, !dbg !2088
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2089
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2095
  %245 = ptrtoint i8* %244 to i32, !dbg !2097
  %246 = ptrtoint i8* %238 to i32, !dbg !2097
  %247 = add i32 %245, 1, !dbg !2097
  %248 = sub i32 %247, %246, !dbg !2098
  %249 = sext i32 %248 to i64, !dbg !2099
  %250 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %238, i64 %249) #8, !dbg !2100
  call void @halide_print(i8* %0, i8* nonnull %238) #8, !dbg !2101
  br label %251

251:                                              ; preds = %242, %240
  call void @free(i8* %238) #8, !dbg !2102
  %252 = bitcast i32* %4 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %252) #10, !dbg !2103
  %253 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 13), align 4, !dbg !2104, !tbaa !1400
  call void @llvm.dbg.value(metadata i32* %4, metadata !1741, metadata !DIExpression(DW_OP_deref)), !dbg !1743
  call void %253(i32 1, i32* nonnull %4) #8, !dbg !2105
  %254 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0)) #9, !dbg !2106
  br i1 %254, label %323, label %255, !dbg !2108

255:                                              ; preds = %251
  %256 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !dbg !2109, !tbaa !1389
  %257 = load i32, i32* %4, align 4, !dbg !2110, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %257, metadata !1741, metadata !DIExpression()), !dbg !1743
  call void %256(i32 34962, i32 %257) #8, !dbg !2112
  %258 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #9, !dbg !2113
  br i1 %258, label %323, label %259, !dbg !2115

259:                                              ; preds = %255
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %195, metadata !786, metadata !DIExpression()), !dbg !2116
  %260 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2118
  %261 = load i8, i8* %260, align 1, !dbg !2118, !tbaa !793
  %262 = zext i8 %261 to i16, !dbg !2118
  %263 = add nuw nsw i16 %262, 7, !dbg !2119
  %264 = lshr i16 %263, 3, !dbg !2120
  %265 = trunc i16 %264 to i8, !dbg !2121
  %266 = udiv i8 4, %265, !dbg !2121
  %267 = zext i8 %266 to i32, !dbg !2121
  %268 = mul i32 %83, %267, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %268, metadata !1736, metadata !DIExpression()), !dbg !1743
  %269 = icmp eq i32 %268, 0, !dbg !2123
  br i1 %269, label %270, label %271, !dbg !2126

270:                                              ; preds = %259
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !2127
  call void @abort() #8, !dbg !2127
  br label %271, !dbg !2127

271:                                              ; preds = %270, %259
  %272 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 4), align 4, !dbg !2129, !tbaa !1391
  call void %272(i32 34962, i32 %268, i8* null, i32 35050) #8, !dbg !2130
  %273 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0)) #9, !dbg !2131
  br i1 %273, label %323, label %274, !dbg !2133

274:                                              ; preds = %271
  %275 = load i32, i32* %4, align 4, !dbg !2134, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %275, metadata !1741, metadata !DIExpression()), !dbg !1743
  %276 = zext i32 %275 to i64, !dbg !2134
  store i64 %276, i64* %87, align 8, !dbg !2135, !tbaa !777
  %277 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2136
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, %struct.halide_device_interface_t** %277, align 8, !dbg !2137, !tbaa !2138
  %278 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, i32 0, i32 15), align 4, !dbg !2139, !tbaa !2140
  %279 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %278, i32 0, i32 0, !dbg !2142
  %280 = load void ()*, void ()** %279, align 4, !dbg !2142, !tbaa !2143
  call void %280() #8, !dbg !2145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2146
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2146
  %281 = call i8* @malloc(i32 1024) #8, !dbg !2148
  %282 = icmp eq i8* %281, null, !dbg !2149
  br i1 %282, label %285, label %283, !dbg !2150

283:                                              ; preds = %274
  %284 = getelementptr inbounds i8, i8* %281, i32 1023, !dbg !2151
  store i8 0, i8* %284, align 1, !dbg !2152, !tbaa !712
  br label %285, !dbg !2153

285:                                              ; preds = %274, %283
  %286 = phi i8* [ %284, %283 ], [ null, %274 ], !dbg !2154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2155
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2155
  %287 = call i8* @halide_string_to_string(i8* %281, i8* %286, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !2157
  %288 = load i32, i32* %4, align 4, !dbg !2158, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %288, metadata !1741, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %288, metadata !1157, metadata !DIExpression()) #10, !dbg !2159
  %289 = zext i32 %288 to i64, !dbg !2161
  %290 = call i8* @halide_uint64_to_string(i8* %287, i8* %286, i64 %289, i32 1) #8, !dbg !2162
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2163
  %291 = call i8* @halide_string_to_string(i8* %290, i8* %286, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !2165
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2166
  br i1 %282, label %292, label %293, !dbg !2168

292:                                              ; preds = %285
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2169
  br label %300, !dbg !2170

293:                                              ; preds = %285
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2171
  %294 = ptrtoint i8* %291 to i32, !dbg !2173
  %295 = ptrtoint i8* %281 to i32, !dbg !2173
  %296 = add i32 %294, 1, !dbg !2173
  %297 = sub i32 %296, %295, !dbg !2174
  %298 = sext i32 %297 to i64, !dbg !2175
  %299 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %281, i64 %298) #8, !dbg !2176
  call void @halide_print(i8* %0, i8* nonnull %281) #8, !dbg !2177
  br label %300

300:                                              ; preds = %293, %292
  call void @free(i8* %281) #8, !dbg !2178
  %301 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %301, metadata !1742, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2180
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2180
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2180
  %302 = call i8* @malloc(i32 1024) #8, !dbg !2182
  %303 = icmp eq i8* %302, null, !dbg !2183
  br i1 %303, label %306, label %304, !dbg !2184

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, i8* %302, i32 1023, !dbg !2185
  store i8 0, i8* %305, align 1, !dbg !2186, !tbaa !712
  br label %306, !dbg !2187

306:                                              ; preds = %300, %304
  %307 = phi i8* [ %305, %304 ], [ null, %300 ], !dbg !2188
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2189
  %308 = call i8* @halide_string_to_string(i8* %302, i8* %307, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !2191
  %309 = sub i64 %301, %5, !dbg !2192
  %310 = uitofp i64 %309 to double, !dbg !2193
  %311 = fdiv double %310, 1.000000e+06, !dbg !2194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !2195
  call void @llvm.dbg.value(metadata double %311, metadata !1700, metadata !DIExpression()) #10, !dbg !2195
  %312 = call i8* @halide_double_to_string(i8* %308, i8* %307, double %311, i32 1) #8, !dbg !2197
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2198
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2198
  %313 = call i8* @halide_string_to_string(i8* %312, i8* %307, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0)) #8, !dbg !2200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2201
  br i1 %303, label %314, label %315, !dbg !2203

314:                                              ; preds = %306
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2204
  br label %322, !dbg !2205

315:                                              ; preds = %306
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2206
  %316 = ptrtoint i8* %313 to i32, !dbg !2208
  %317 = ptrtoint i8* %302 to i32, !dbg !2208
  %318 = add i32 %316, 1, !dbg !2208
  %319 = sub i32 %318, %317, !dbg !2209
  %320 = sext i32 %319 to i64, !dbg !2210
  %321 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %302, i64 %320) #8, !dbg !2211
  call void @halide_print(i8* %0, i8* nonnull %302) #8, !dbg !2212
  br label %322

322:                                              ; preds = %315, %314
  call void @free(i8* %302) #8, !dbg !2213
  br label %323

323:                                              ; preds = %271, %255, %251, %322
  %324 = phi i32 [ 0, %322 ], [ 1, %251 ], [ 1, %255 ], [ 1, %271 ], !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %252) #10, !dbg !2214
  br label %325

325:                                              ; preds = %109, %323, %221, %26
  %326 = phi i32 [ %27, %26 ], [ 0, %109 ], [ %324, %323 ], [ %222, %221 ], !dbg !1743
  ret i32 %326, !dbg !2214
}

declare !dbg !2215 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !2218 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2219 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2222, metadata !DIExpression()), !dbg !2226
  %4 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %4, metadata !2223, metadata !DIExpression()), !dbg !2226
  %5 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !2228, !tbaa !1386, !range !1375
  %6 = icmp eq i8 %5, 0, !dbg !2228
  br i1 %6, label %7, label %22, !dbg !2230

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2231
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2231
  %8 = tail call i8* @malloc(i32 1024) #8, !dbg !2234
  %9 = icmp eq i8* %8, null, !dbg !2235
  br i1 %9, label %10, label %12, !dbg !2236

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2237
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2237
  %11 = tail call i8* @halide_string_to_string(i8* %8, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !2239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2240
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2242
  br label %21, !dbg !2243

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !2244
  store i8 0, i8* %13, align 1, !dbg !2245, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2237
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2237
  %14 = tail call i8* @halide_string_to_string(i8* nonnull %8, i8* nonnull %13, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !2239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2240
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2246
  %15 = ptrtoint i8* %14 to i32, !dbg !2248
  %16 = ptrtoint i8* %8 to i32, !dbg !2248
  %17 = add i32 %15, 1, !dbg !2248
  %18 = sub i32 %17, %16, !dbg !2249
  %19 = sext i32 %18 to i64, !dbg !2250
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %19) #8, !dbg !2251
  tail call void @halide_error(i8* %0, i8* nonnull %8) #8, !dbg !2252
  br label %21

21:                                               ; preds = %12, %10
  tail call void @free(i8* %8) #8, !dbg !2253
  br label %80, !dbg !2254

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2255
  %24 = load i64, i64* %23, align 8, !dbg !2255, !tbaa !777
  %25 = icmp eq i64 %24, 0, !dbg !2257
  br i1 %25, label %80, label %26, !dbg !2258

26:                                               ; preds = %22
  %27 = bitcast i32* %3 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #10, !dbg !2259
  %28 = trunc i64 %24 to i32, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %28, metadata !2224, metadata !DIExpression()), !dbg !2226
  store i32 %28, i32* %3, align 4, !dbg !2261, !tbaa !2111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2262
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2262
  %29 = tail call i8* @malloc(i32 1024) #8, !dbg !2264
  %30 = icmp eq i8* %29, null, !dbg !2265
  br i1 %30, label %33, label %31, !dbg !2266

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %29, i32 1023, !dbg !2267
  store i8 0, i8* %32, align 1, !dbg !2268, !tbaa !712
  br label %33, !dbg !2269

33:                                               ; preds = %26, %31
  %34 = phi i8* [ %32, %31 ], [ null, %26 ], !dbg !2270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2271
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.83, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2271
  %35 = tail call i8* @halide_string_to_string(i8* %29, i8* %34, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !2273
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2274
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2274
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %34, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !2276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !2277
  %37 = tail call i8* @halide_pointer_to_string(i8* %36, i8* %34, i8* %0) #8, !dbg !2279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2280
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %34, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %28, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !2283
  call void @llvm.dbg.value(metadata i32 %28, metadata !1157, metadata !DIExpression()) #10, !dbg !2283
  %39 = and i64 %24, 4294967295, !dbg !2285
  %40 = tail call i8* @halide_uint64_to_string(i8* %38, i8* %34, i64 %39, i32 1) #8, !dbg !2286
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2287
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2287
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %34, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !2289
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2290
  br i1 %30, label %42, label %43, !dbg !2292

42:                                               ; preds = %33
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2293
  br label %50, !dbg !2294

43:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2295
  %44 = ptrtoint i8* %41 to i32, !dbg !2297
  %45 = ptrtoint i8* %29 to i32, !dbg !2297
  %46 = add i32 %44, 1, !dbg !2297
  %47 = sub i32 %46, %45, !dbg !2298
  %48 = sext i32 %47 to i64, !dbg !2299
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %29, i64 %48) #8, !dbg !2300
  tail call void @halide_print(i8* %0, i8* nonnull %29) #8, !dbg !2301
  br label %50

50:                                               ; preds = %42, %43
  call void @free(i8* %29) #8, !dbg !2302
  %51 = load void (i32, i32*)*, void (i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 8), align 4, !dbg !2303, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %3, metadata !2224, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call void %51(i32 1, i32* nonnull %3) #8, !dbg !2304
  store i64 0, i64* %23, align 8, !dbg !2305, !tbaa !777
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2306
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !2306, !tbaa !2138
  %54 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %53, i32 0, i32 15, !dbg !2307
  %55 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %54, align 4, !dbg !2307, !tbaa !2140
  %56 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %55, i32 0, i32 1, !dbg !2308
  %57 = load void ()*, void ()** %56, align 4, !dbg !2308, !tbaa !2309
  call void %57() #8, !dbg !2310
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %52, align 8, !dbg !2311, !tbaa !2138
  %58 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %58, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2313
  %59 = call i8* @malloc(i32 1024) #8, !dbg !2315
  %60 = icmp eq i8* %59, null, !dbg !2316
  br i1 %60, label %63, label %61, !dbg !2317

61:                                               ; preds = %50
  %62 = getelementptr inbounds i8, i8* %59, i32 1023, !dbg !2318
  store i8 0, i8* %62, align 1, !dbg !2319, !tbaa !712
  br label %63, !dbg !2320

63:                                               ; preds = %50, %61
  %64 = phi i8* [ %62, %61 ], [ null, %50 ], !dbg !2321
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2322
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2322
  %65 = call i8* @halide_string_to_string(i8* %59, i8* %64, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !2324
  %66 = sub i64 %58, %4, !dbg !2325
  %67 = uitofp i64 %66 to double, !dbg !2326
  %68 = fdiv double %67, 1.000000e+06, !dbg !2327
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !2328
  call void @llvm.dbg.value(metadata double %68, metadata !1700, metadata !DIExpression()) #10, !dbg !2328
  %69 = call i8* @halide_double_to_string(i8* %65, i8* %64, double %68, i32 1) #8, !dbg !2330
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2331
  %70 = call i8* @halide_string_to_string(i8* %69, i8* %64, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !2333
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2334
  br i1 %60, label %71, label %72, !dbg !2336

71:                                               ; preds = %63
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2337
  br label %79, !dbg !2338

72:                                               ; preds = %63
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2339
  %73 = ptrtoint i8* %70 to i32, !dbg !2341
  %74 = ptrtoint i8* %59 to i32, !dbg !2341
  %75 = add i32 %73, 1, !dbg !2341
  %76 = sub i32 %75, %74, !dbg !2342
  %77 = sext i32 %76 to i64, !dbg !2343
  %78 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %59, i64 %77) #8, !dbg !2344
  call void @halide_print(i8* %0, i8* nonnull %59) #8, !dbg !2345
  br label %79

79:                                               ; preds = %72, %71
  call void @free(i8* %59) #8, !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #10, !dbg !2347
  br label %80

80:                                               ; preds = %22, %79, %21
  %81 = phi i32 [ 0, %79 ], [ 1, %21 ], [ 0, %22 ], !dbg !2226
  ret i32 %81, !dbg !2347
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2348 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2351, metadata !DIExpression()), !dbg !2359
  %6 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %6, metadata !2352, metadata !DIExpression()), !dbg !2359
  %7 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !2361, !tbaa !1386, !range !1375
  %8 = icmp eq i8 %7, 0, !dbg !2361
  br i1 %8, label %9, label %24, !dbg !2363

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2364
  %10 = tail call i8* @malloc(i32 1024) #8, !dbg !2367
  %11 = icmp eq i8* %10, null, !dbg !2368
  br i1 %11, label %12, label %14, !dbg !2369

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2370
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* null, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !2372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2373
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2375
  br label %23, !dbg !2376

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i32 1023, !dbg !2377
  store i8 0, i8* %15, align 1, !dbg !2378, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2370
  %16 = tail call i8* @halide_string_to_string(i8* nonnull %10, i8* nonnull %15, i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !2372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2373
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2379
  %17 = ptrtoint i8* %16 to i32, !dbg !2381
  %18 = ptrtoint i8* %10 to i32, !dbg !2381
  %19 = add i32 %17, 1, !dbg !2381
  %20 = sub i32 %19, %18, !dbg !2382
  %21 = sext i32 %20 to i64, !dbg !2383
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %21) #8, !dbg !2384
  tail call void @halide_error(i8* %0, i8* nonnull %10) #8, !dbg !2385
  br label %23

23:                                               ; preds = %14, %12
  tail call void @free(i8* %10) #8, !dbg !2386
  br label %247, !dbg !2387

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2388
  %26 = load i64, i64* %25, align 8, !dbg !2388, !tbaa !777
  %27 = trunc i64 %26 to i32, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %27, metadata !2353, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2390
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2390
  %28 = tail call i8* @malloc(i32 1024) #8, !dbg !2392
  %29 = icmp eq i8* %28, null, !dbg !2393
  br i1 %29, label %32, label %30, !dbg !2394

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, i8* %28, i32 1023, !dbg !2395
  store i8 0, i8* %31, align 1, !dbg !2396, !tbaa !712
  br label %32, !dbg !2397

32:                                               ; preds = %24, %30
  %33 = phi i8* [ %31, %30 ], [ null, %24 ], !dbg !2398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2399
  %34 = tail call i8* @halide_string_to_string(i8* %28, i8* %33, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !2401
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2402
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %33, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !2404
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !2405
  %36 = tail call i8* @halide_pointer_to_string(i8* %35, i8* %33, i8* %0) #8, !dbg !2407
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2408
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2408
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %33, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !2410
  %38 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !2411
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %38, metadata !1172, metadata !DIExpression()) #10, !dbg !2412
  %39 = tail call i8* @halide_pointer_to_string(i8* %37, i8* %33, i8* %38) #8, !dbg !2414
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2415
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2415
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %33, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !2417
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %27, metadata !1157, metadata !DIExpression()) #10, !dbg !2418
  %41 = and i64 %26, 4294967295, !dbg !2420
  %42 = tail call i8* @halide_uint64_to_string(i8* %40, i8* %33, i64 %41, i32 1) #8, !dbg !2421
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2422
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2422
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %33, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !2424
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2425
  br i1 %29, label %44, label %45, !dbg !2427

44:                                               ; preds = %32
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2428
  br label %52, !dbg !2429

45:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2430
  %46 = ptrtoint i8* %43 to i32, !dbg !2432
  %47 = ptrtoint i8* %28 to i32, !dbg !2432
  %48 = add i32 %46, 1, !dbg !2432
  %49 = sub i32 %48, %47, !dbg !2433
  %50 = sext i32 %49 to i64, !dbg !2434
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %28, i64 %50) #8, !dbg !2435
  tail call void @halide_print(i8* %0, i8* nonnull %28) #8, !dbg !2436
  br label %52

52:                                               ; preds = %44, %45
  call void @free(i8* %28) #8, !dbg !2437
  %53 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !dbg !2438, !tbaa !1389
  call void %53(i32 34962, i32 %27) #8, !dbg !2439
  %54 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #9, !dbg !2440
  br i1 %54, label %247, label %55, !dbg !2442

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2443, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 1, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2451
  %56 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !2452
  %57 = load i32, i32* %56, align 4, !dbg !2452, !tbaa !812
  %58 = icmp sgt i32 %57, 0, !dbg !2454
  br i1 %58, label %59, label %70, !dbg !2455

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %61 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %60, align 8, !tbaa !815
  br label %62, !dbg !2455

62:                                               ; preds = %62, %59
  %63 = phi i32 [ 0, %59 ], [ %68, %62 ]
  %64 = phi i32 [ 1, %59 ], [ %67, %62 ]
  call void @llvm.dbg.value(metadata i32 %63, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %64, metadata !2446, metadata !DIExpression()), !dbg !2449
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 %63, i32 1, !dbg !2456
  %66 = load i32, i32* %65, align 4, !dbg !2456, !tbaa !887
  %67 = mul i32 %66, %64, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %67, metadata !2446, metadata !DIExpression()), !dbg !2449
  %68 = add nuw nsw i32 %63, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %68, metadata !2447, metadata !DIExpression()), !dbg !2451
  %69 = icmp slt i32 %68, %57, !dbg !2454
  br i1 %69, label %62, label %70, !dbg !2455, !llvm.loop !2460

70:                                               ; preds = %62, %55
  %71 = phi i32 [ 1, %55 ], [ %67, %62 ], !dbg !2449
  %72 = shl i32 %71, 2, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %72, metadata !2354, metadata !DIExpression()), !dbg !2359
  %73 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !dbg !2463, !tbaa !1389
  call void %73(i32 34962, i32 %27) #8, !dbg !2464
  %74 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #9, !dbg !2465
  br i1 %74, label %247, label %75, !dbg !2467

75:                                               ; preds = %70
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2468
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2468
  %76 = call i8* @malloc(i32 1024) #8, !dbg !2470
  %77 = icmp eq i8* %76, null, !dbg !2471
  br i1 %77, label %80, label %78, !dbg !2472

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, i8* %76, i32 1023, !dbg !2473
  store i8 0, i8* %79, align 1, !dbg !2474, !tbaa !712
  br label %80, !dbg !2475

80:                                               ; preds = %75, %78
  %81 = phi i8* [ %79, %78 ], [ null, %75 ], !dbg !2476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2477
  %82 = call i8* @halide_string_to_string(i8* %76, i8* %81, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i32 0, i32 0)) #8, !dbg !2479
  %83 = zext i32 %72 to i64, !dbg !2480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1140, metadata !DIExpression()) #10, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %83, metadata !1143, metadata !DIExpression()) #10, !dbg !2481
  %84 = call i8* @halide_uint64_to_string(i8* %82, i8* %81, i64 %83, i32 1) #8, !dbg !2483
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2484
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.90, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2484
  %85 = call i8* @halide_string_to_string(i8* %84, i8* %81, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !2486
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2487
  br i1 %77, label %86, label %87, !dbg !2489

86:                                               ; preds = %80
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2490
  br label %94, !dbg !2491

87:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2492
  %88 = ptrtoint i8* %85 to i32, !dbg !2494
  %89 = ptrtoint i8* %76 to i32, !dbg !2494
  %90 = add i32 %88, 1, !dbg !2494
  %91 = sub i32 %90, %89, !dbg !2495
  %92 = sext i32 %91 to i64, !dbg !2496
  %93 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %76, i64 %92) #8, !dbg !2497
  call void @halide_print(i8* %0, i8* nonnull %76) #8, !dbg !2498
  br label %94

94:                                               ; preds = %87, %86
  call void @free(i8* %76) #8, !dbg !2499
  %95 = load i8* (i32, i32, i32, i32)*, i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21), align 4, !dbg !2500, !tbaa !1407
  %96 = call i8* %95(i32 34962, i32 0, i32 %72, i32 3) #8, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %96, metadata !2355, metadata !DIExpression()), !dbg !2359
  %97 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0)) #9, !dbg !2502
  br i1 %97, label %247, label %98, !dbg !2504

98:                                               ; preds = %94
  %99 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !2505
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %99) #10, !dbg !2505
  call void @llvm.dbg.declare(metadata %struct.halide_buffer_t* %3, metadata !2356, metadata !DIExpression()), !dbg !2506
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %99, i8* nonnull align 8 dereferenceable(40) %38, i32 40, i1 false), !dbg !2507, !tbaa.struct !2508
  %100 = ptrtoint i8* %96 to i32, !dbg !2511
  %101 = zext i32 %100 to i64, !dbg !2511
  %102 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !2512
  store i64 %101, i64* %102, align 8, !dbg !2513, !tbaa !777
  %103 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %103) #10, !dbg !2514
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !2357, metadata !DIExpression()), !dbg !2515
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #9, !dbg !2516
  %104 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0, !dbg !2517
  %105 = load i8, i8* %104, align 8, !dbg !2517, !tbaa !2519
  switch i8 %105, label %186 [
    i8 0, label %106
    i8 1, label %135
    i8 2, label %164
  ], !dbg !2520

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2521
  %108 = load i8, i8* %107, align 1, !dbg !2521, !tbaa !2524
  switch i8 %108, label %121 [
    i8 8, label %109
    i8 16, label %112
    i8 32, label %118
  ], !dbg !2525

109:                                              ; preds = %106
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2526
  %111 = load i64, i64* %110, align 8, !dbg !2526, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %111, i64 0) #9, !dbg !2528
  br label %186, !dbg !2529

112:                                              ; preds = %106
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6, !dbg !2530
  %114 = load i64, i64* %113, align 8, !dbg !2533, !tbaa !638
  %115 = lshr i64 %114, 1, !dbg !2533
  store i64 %115, i64* %113, align 8, !dbg !2533, !tbaa !638
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2534
  %117 = load i64, i64* %116, align 8, !dbg !2534, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %117, i64 0) #9, !dbg !2535
  br label %186, !dbg !2536

118:                                              ; preds = %106
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2537
  %120 = load i64, i64* %119, align 8, !dbg !2537, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %120, i64 0) #9, !dbg !2540
  br label %186

121:                                              ; preds = %106
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2541
  %122 = call i8* @malloc(i32 1024) #8, !dbg !2544
  %123 = icmp eq i8* %122, null, !dbg !2545
  br i1 %123, label %124, label %126, !dbg !2546

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2547
  %125 = call i8* @halide_string_to_string(i8* %122, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !2549
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2550
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2552
  br label %244, !dbg !2553

126:                                              ; preds = %121
  %127 = getelementptr inbounds i8, i8* %122, i32 1023, !dbg !2554
  store i8 0, i8* %127, align 1, !dbg !2555, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2547
  %128 = call i8* @halide_string_to_string(i8* nonnull %122, i8* nonnull %127, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !2549
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2550
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2556
  %129 = ptrtoint i8* %128 to i32, !dbg !2558
  %130 = ptrtoint i8* %122 to i32, !dbg !2558
  %131 = add i32 %129, 1, !dbg !2558
  %132 = sub i32 %131, %130, !dbg !2559
  %133 = sext i32 %132 to i64, !dbg !2560
  %134 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %122, i64 %133) #8, !dbg !2561
  call void @halide_error(i8* %0, i8* nonnull %122) #8, !dbg !2562
  br label %244

135:                                              ; preds = %98
  %136 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2563
  %137 = load i8, i8* %136, align 1, !dbg !2563, !tbaa !2524
  switch i8 %137, label %150 [
    i8 8, label %138
    i8 16, label %141
    i8 32, label %147
  ], !dbg !2567

138:                                              ; preds = %135
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2568
  %140 = load i64, i64* %139, align 8, !dbg !2568, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %140, i64 0) #9, !dbg !2570
  br label %186, !dbg !2571

141:                                              ; preds = %135
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6, !dbg !2572
  %143 = load i64, i64* %142, align 8, !dbg !2575, !tbaa !638
  %144 = lshr i64 %143, 1, !dbg !2575
  store i64 %144, i64* %142, align 8, !dbg !2575, !tbaa !638
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2576
  %146 = load i64, i64* %145, align 8, !dbg !2576, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %146, i64 0) #9, !dbg !2577
  br label %186, !dbg !2578

147:                                              ; preds = %135
  %148 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2579
  %149 = load i64, i64* %148, align 8, !dbg !2579, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %149, i64 0) #9, !dbg !2582
  br label %186

150:                                              ; preds = %135
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2583
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2583
  %151 = call i8* @malloc(i32 1024) #8, !dbg !2586
  %152 = icmp eq i8* %151, null, !dbg !2587
  br i1 %152, label %153, label %155, !dbg !2588

153:                                              ; preds = %150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2589
  %154 = call i8* @halide_string_to_string(i8* %151, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !2591
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2592
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2594
  br label %244, !dbg !2595

155:                                              ; preds = %150
  %156 = getelementptr inbounds i8, i8* %151, i32 1023, !dbg !2596
  store i8 0, i8* %156, align 1, !dbg !2597, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2589
  %157 = call i8* @halide_string_to_string(i8* nonnull %151, i8* nonnull %156, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !2591
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2592
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2598
  %158 = ptrtoint i8* %157 to i32, !dbg !2600
  %159 = ptrtoint i8* %151 to i32, !dbg !2600
  %160 = add i32 %158, 1, !dbg !2600
  %161 = sub i32 %160, %159, !dbg !2601
  %162 = sext i32 %161 to i64, !dbg !2602
  %163 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %151, i64 %162) #8, !dbg !2603
  call void @halide_error(i8* %0, i8* nonnull %151) #8, !dbg !2604
  br label %244

164:                                              ; preds = %98
  %165 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2605
  %166 = load i8, i8* %165, align 1, !dbg !2605, !tbaa !2524
  %167 = icmp eq i8 %166, 32, !dbg !2609
  br i1 %167, label %168, label %171, !dbg !2610

168:                                              ; preds = %164
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !2611
  %170 = load i64, i64* %169, align 8, !dbg !2611, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 %170, i64 0) #9, !dbg !2613
  br label %186, !dbg !2614

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !2615
  %172 = call i8* @malloc(i32 1024) #8, !dbg !2618
  %173 = icmp eq i8* %172, null, !dbg !2619
  br i1 %173, label %174, label %176, !dbg !2620

174:                                              ; preds = %171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2621
  %175 = call i8* @halide_string_to_string(i8* %172, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !2623
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2624
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2626
  br label %185, !dbg !2627

176:                                              ; preds = %171
  %177 = getelementptr inbounds i8, i8* %172, i32 1023, !dbg !2628
  store i8 0, i8* %177, align 1, !dbg !2629, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !2621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !2621
  %178 = call i8* @halide_string_to_string(i8* nonnull %172, i8* nonnull %177, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !2623
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !2624
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !2630
  %179 = ptrtoint i8* %178 to i32, !dbg !2632
  %180 = ptrtoint i8* %172 to i32, !dbg !2632
  %181 = add i32 %179, 1, !dbg !2632
  %182 = sub i32 %181, %180, !dbg !2633
  %183 = sext i32 %182 to i64, !dbg !2634
  %184 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %172, i64 %183) #8, !dbg !2635
  call void @halide_error(i8* %0, i8* nonnull %172) #8, !dbg !2636
  br label %185

185:                                              ; preds = %176, %174
  call void @free(i8* %172) #8, !dbg !2637
  br label %186

186:                                              ; preds = %98, %141, %147, %138, %168, %185, %109, %118, %112
  %187 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27), align 4, !dbg !2638, !tbaa !1413
  call void %187(i32 34962) #8, !dbg !2639
  %188 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %188) #10, !dbg !2640
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !673, metadata !DIExpression()) #10, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2641
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2641
  %189 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 3, !dbg !2643
  store i8* %0, i8** %189, align 4, !dbg !2643, !tbaa !1118
  %190 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 4, !dbg !2644
  store i8 1, i8* %190, align 4, !dbg !2644, !tbaa !1121
  %191 = call i8* @malloc(i32 1024) #8, !dbg !2645
  %192 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 0, !dbg !2646
  store i8* %191, i8** %192, align 4, !dbg !2647, !tbaa !1125
  %193 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 1, !dbg !2648
  %194 = icmp eq i8* %191, null, !dbg !2649
  br i1 %194, label %197, label %195, !dbg !2650

195:                                              ; preds = %186
  %196 = getelementptr inbounds i8, i8* %191, i32 1023, !dbg !2651
  store i8 0, i8* %196, align 1, !dbg !2652, !tbaa !712
  br label %197, !dbg !2653

197:                                              ; preds = %186, %195
  %198 = phi i8* [ %196, %195 ], [ null, %186 ], !dbg !2654
  %199 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i32 0, i32 2, !dbg !2655
  store i8* %198, i8** %199, align 4, !dbg !2656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !690, metadata !DIExpression()) #10, !dbg !2657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2657
  %200 = call i8* @halide_string_to_string(i8* %191, i8* %198, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)) #8, !dbg !2659
  store i8* %200, i8** %193, align 4, !dbg !2660, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1154, metadata !DIExpression()) #10, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %72, metadata !1157, metadata !DIExpression()) #10, !dbg !2661
  %201 = call i8* @halide_uint64_to_string(i8* %200, i8* %198, i64 %83, i32 1) #8, !dbg !2663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !690, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2664
  %202 = call i8* @halide_string_to_string(i8* %201, i8* %198, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0)) #8, !dbg !2666
  %203 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !2667
  %204 = load i8*, i8** %203, align 4, !dbg !2667, !tbaa !768
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1169, metadata !DIExpression()) #10, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %204, metadata !1172, metadata !DIExpression()) #10, !dbg !2668
  %205 = call i8* @halide_pointer_to_string(i8* %202, i8* %198, i8* %204) #8, !dbg !2670
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !690, metadata !DIExpression()) #10, !dbg !2671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2671
  %206 = call i8* @halide_string_to_string(i8* %205, i8* %198, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0)) #8, !dbg !2673
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !699, metadata !DIExpression()) #10, !dbg !2674
  br i1 %194, label %207, label %208, !dbg !2676

207:                                              ; preds = %197
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2677
  br label %217, !dbg !2678

208:                                              ; preds = %197
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2679
  %209 = ptrtoint i8* %206 to i32, !dbg !2681
  %210 = ptrtoint i8* %191 to i32, !dbg !2681
  %211 = add i32 %209, 1, !dbg !2681
  %212 = sub i32 %211, %210, !dbg !2682
  %213 = sext i32 %212 to i64, !dbg !2683
  %214 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %191, i64 %213) #8, !dbg !2684
  %215 = load i8*, i8** %189, align 4, !dbg !2685, !tbaa !1118
  %216 = load i8*, i8** %192, align 4, !dbg !2686, !tbaa !1125
  call void @halide_print(i8* %215, i8* %216) #8, !dbg !2687
  br label %217

217:                                              ; preds = %208, %207
  %218 = load i8, i8* %190, align 4, !dbg !2688, !tbaa !1121, !range !1375
  %219 = icmp eq i8 %218, 0, !dbg !2688
  br i1 %219, label %222, label %220, !dbg !2689

220:                                              ; preds = %217
  %221 = load i8*, i8** %192, align 4, !dbg !2690, !tbaa !1125
  call void @free(i8* %221) #8, !dbg !2691
  br label %222, !dbg !2692

222:                                              ; preds = %217, %220
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %188) #10, !dbg !2640
  %223 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %223, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !2694
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !2694
  %224 = call i8* @malloc(i32 1024) #8, !dbg !2696
  %225 = icmp eq i8* %224, null, !dbg !2697
  br i1 %225, label %228, label %226, !dbg !2698

226:                                              ; preds = %222
  %227 = getelementptr inbounds i8, i8* %224, i32 1023, !dbg !2699
  store i8 0, i8* %227, align 1, !dbg !2700, !tbaa !712
  br label %228, !dbg !2701

228:                                              ; preds = %222, %226
  %229 = phi i8* [ %227, %226 ], [ null, %222 ], !dbg !2702
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2703
  %230 = call i8* @halide_string_to_string(i8* %224, i8* %229, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !2705
  %231 = sub i64 %223, %6, !dbg !2706
  %232 = uitofp i64 %231 to double, !dbg !2707
  %233 = fdiv double %232, 1.000000e+06, !dbg !2708
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !2709
  call void @llvm.dbg.value(metadata double %233, metadata !1700, metadata !DIExpression()) #10, !dbg !2709
  %234 = call i8* @halide_double_to_string(i8* %230, i8* %229, double %233, i32 1) #8, !dbg !2711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !2712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !2712
  %235 = call i8* @halide_string_to_string(i8* %234, i8* %229, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0)) #8, !dbg !2714
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !2715
  br i1 %225, label %236, label %237, !dbg !2717

236:                                              ; preds = %228
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !2718
  br label %244, !dbg !2719

237:                                              ; preds = %228
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !2720
  %238 = ptrtoint i8* %235 to i32, !dbg !2722
  %239 = ptrtoint i8* %224 to i32, !dbg !2722
  %240 = add i32 %238, 1, !dbg !2722
  %241 = sub i32 %240, %239, !dbg !2723
  %242 = sext i32 %241 to i64, !dbg !2724
  %243 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %224, i64 %242) #8, !dbg !2725
  call void @halide_print(i8* %0, i8* nonnull %224) #8, !dbg !2726
  br label %244

244:                                              ; preds = %236, %237, %153, %155, %124, %126
  %245 = phi i8* [ %122, %126 ], [ %122, %124 ], [ %151, %155 ], [ %151, %153 ], [ %224, %237 ], [ %224, %236 ]
  %246 = phi i32 [ -1, %126 ], [ -1, %124 ], [ -1, %155 ], [ -1, %153 ], [ 0, %237 ], [ 0, %236 ], !dbg !2359
  call void @free(i8* %245) #8, !dbg !2359
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %103) #10, !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %99) #10, !dbg !2727
  br label %247

247:                                              ; preds = %52, %244, %94, %70, %23
  %248 = phi i32 [ 1, %23 ], [ 1, %52 ], [ 1, %70 ], [ %246, %244 ], [ 1, %94 ], !dbg !2359
  ret i32 %248, !dbg !2727
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2728 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2731, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %1, metadata !2732, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %2, metadata !2733, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %3, metadata !2734, metadata !DIExpression()), !dbg !2749
  %5 = icmp sgt i32 %1, -1, !dbg !2750
  br i1 %5, label %6, label %14, !dbg !2751

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2732, metadata !DIExpression()), !dbg !2749
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !2752
  %9 = load i64, i64* %8, align 8, !dbg !2752, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !2753
  br i1 %10, label %11, label %14, !dbg !2754

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %12, metadata !2732, metadata !DIExpression()), !dbg !2749
  %13 = icmp sgt i32 %7, 0, !dbg !2750
  br i1 %13, label %6, label %25, !dbg !2751, !llvm.loop !2757

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !2759
  br i1 %16, label %25, label %17, !dbg !2760

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %3, metadata !2734, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %2, metadata !2733, metadata !DIExpression()), !dbg !2749
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !2762
  %19 = load i64, i64* %18, align 8, !dbg !2762, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !2764
  br i1 %20, label %61, label %21, !dbg !2765

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !2765

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !2740, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2766
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 undef, metadata !2735, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2766
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !2768
  %27 = load i64, i64* %26, align 8, !dbg !2768, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !2770
  br i1 %28, label %61, label %29, !dbg !2771

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !2772
  %31 = load i64, i64* %30, align 8, !dbg !2772, !tbaa !634
  %32 = add i64 %31, %3, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %32, metadata !2740, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2766
  %33 = trunc i64 %32 to i32, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %33, metadata !2740, metadata !DIExpression()), !dbg !2766
  %34 = inttoptr i32 %33 to i32*, !dbg !2774
  call void @llvm.dbg.value(metadata i32* %34, metadata !2740, metadata !DIExpression()), !dbg !2766
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !2775
  %36 = load i64, i64* %35, align 8, !dbg !2775, !tbaa !628
  %37 = add i64 %36, %2, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %37, metadata !2735, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2766
  %38 = trunc i64 %37 to i32, !dbg !2777
  call void @llvm.dbg.value(metadata i32 %38, metadata !2735, metadata !DIExpression()), !dbg !2766
  %39 = inttoptr i32 %38 to i8*, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %39, metadata !2735, metadata !DIExpression()), !dbg !2766
  br label %40, !dbg !2771

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2741, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32* %42, metadata !2740, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %43, metadata !2735, metadata !DIExpression()), !dbg !2766
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %44, metadata !2735, metadata !DIExpression()), !dbg !2766
  %45 = load i8, i8* %43, align 1, !dbg !2780, !tbaa !712
  %46 = sext i8 %45 to i32, !dbg !2780
  %47 = getelementptr inbounds i32, i32* %42, i32 1, !dbg !2781
  call void @llvm.dbg.value(metadata i32* %47, metadata !2740, metadata !DIExpression()), !dbg !2766
  store i32 %46, i32* %42, align 4, !dbg !2782, !tbaa !2111
  %48 = add nuw i64 %41, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %48, metadata !2741, metadata !DIExpression()), !dbg !2767
  %49 = icmp ult i64 %48, %27, !dbg !2770
  br i1 %49, label %40, label %61, !dbg !2771, !llvm.loop !2784

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %52, metadata !2734, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %53, metadata !2733, metadata !DIExpression()), !dbg !2749
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !2786
  %54 = load i64, i64* %23, align 8, !dbg !2788, !tbaa !609
  %55 = add i64 %54, %53, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %55, metadata !2733, metadata !DIExpression()), !dbg !2749
  %56 = load i64, i64* %24, align 8, !dbg !2790, !tbaa !609
  %57 = add i64 %56, %52, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %57, metadata !2734, metadata !DIExpression()), !dbg !2749
  %58 = add nuw i64 %51, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %58, metadata !2743, metadata !DIExpression()), !dbg !2761
  %59 = load i64, i64* %18, align 8, !dbg !2762, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !2764
  br i1 %60, label %50, label %61, !dbg !2765, !llvm.loop !2793

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !2795
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2796 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2798, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %3, metadata !2801, metadata !DIExpression()), !dbg !2815
  %5 = icmp sgt i32 %1, -1, !dbg !2816
  br i1 %5, label %6, label %14, !dbg !2817

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2799, metadata !DIExpression()), !dbg !2815
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !2818
  %9 = load i64, i64* %8, align 8, !dbg !2818, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !2819
  br i1 %10, label %11, label %14, !dbg !2820

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %12, metadata !2799, metadata !DIExpression()), !dbg !2815
  %13 = icmp sgt i32 %7, 0, !dbg !2816
  br i1 %13, label %6, label %25, !dbg !2817, !llvm.loop !2823

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !2825
  br i1 %16, label %25, label %17, !dbg !2826

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !2810, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %3, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !2815
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !2828
  %19 = load i64, i64* %18, align 8, !dbg !2828, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !2830
  br i1 %20, label %61, label %21, !dbg !2831

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !2831

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !2807, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2832
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 undef, metadata !2802, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2832
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !2834
  %27 = load i64, i64* %26, align 8, !dbg !2834, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !2836
  br i1 %28, label %61, label %29, !dbg !2837

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !2838
  %31 = load i64, i64* %30, align 8, !dbg !2838, !tbaa !634
  %32 = add i64 %31, %3, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %32, metadata !2807, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2832
  %33 = trunc i64 %32 to i32, !dbg !2840
  call void @llvm.dbg.value(metadata i32 %33, metadata !2807, metadata !DIExpression()), !dbg !2832
  %34 = inttoptr i32 %33 to i32*, !dbg !2840
  call void @llvm.dbg.value(metadata i32* %34, metadata !2807, metadata !DIExpression()), !dbg !2832
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !2841
  %36 = load i64, i64* %35, align 8, !dbg !2841, !tbaa !628
  %37 = add i64 %36, %2, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %37, metadata !2802, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2832
  %38 = trunc i64 %37 to i32, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %38, metadata !2802, metadata !DIExpression()), !dbg !2832
  %39 = inttoptr i32 %38 to i16*, !dbg !2843
  call void @llvm.dbg.value(metadata i16* %39, metadata !2802, metadata !DIExpression()), !dbg !2832
  br label %40, !dbg !2837

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2808, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32* %42, metadata !2807, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i16* %43, metadata !2802, metadata !DIExpression()), !dbg !2832
  %44 = getelementptr inbounds i16, i16* %43, i32 1, !dbg !2844
  call void @llvm.dbg.value(metadata i16* %44, metadata !2802, metadata !DIExpression()), !dbg !2832
  %45 = load i16, i16* %43, align 2, !dbg !2846, !tbaa !2510
  %46 = sext i16 %45 to i32, !dbg !2846
  %47 = getelementptr inbounds i32, i32* %42, i32 1, !dbg !2847
  call void @llvm.dbg.value(metadata i32* %47, metadata !2807, metadata !DIExpression()), !dbg !2832
  store i32 %46, i32* %42, align 4, !dbg !2848, !tbaa !2111
  %48 = add nuw i64 %41, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %48, metadata !2808, metadata !DIExpression()), !dbg !2833
  %49 = icmp ult i64 %48, %27, !dbg !2836
  br i1 %49, label %40, label %61, !dbg !2837, !llvm.loop !2850

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2810, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %52, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %53, metadata !2800, metadata !DIExpression()), !dbg !2815
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !2852
  %54 = load i64, i64* %23, align 8, !dbg !2854, !tbaa !609
  %55 = add i64 %54, %53, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %55, metadata !2800, metadata !DIExpression()), !dbg !2815
  %56 = load i64, i64* %24, align 8, !dbg !2856, !tbaa !609
  %57 = add i64 %56, %52, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %57, metadata !2801, metadata !DIExpression()), !dbg !2815
  %58 = add nuw i64 %51, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %58, metadata !2810, metadata !DIExpression()), !dbg !2827
  %59 = load i64, i64* %18, align 8, !dbg !2828, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !2830
  br i1 %60, label %50, label %61, !dbg !2831, !llvm.loop !2859

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !2861
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2862 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2864, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 %1, metadata !2865, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %3, metadata !2867, metadata !DIExpression()), !dbg !2882
  %5 = icmp sgt i32 %1, -1, !dbg !2883
  br i1 %5, label %6, label %14, !dbg !2884

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2865, metadata !DIExpression()), !dbg !2882
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !2885
  %9 = load i64, i64* %8, align 8, !dbg !2885, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !2886
  br i1 %10, label %11, label %14, !dbg !2887

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %12, metadata !2865, metadata !DIExpression()), !dbg !2882
  %13 = icmp sgt i32 %7, 0, !dbg !2883
  br i1 %13, label %6, label %25, !dbg !2884, !llvm.loop !2890

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !2892
  br i1 %16, label %25, label %17, !dbg !2893

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !2876, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %3, metadata !2867, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2882
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !2895
  %19 = load i64, i64* %18, align 8, !dbg !2895, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !2897
  br i1 %20, label %61, label %21, !dbg !2898

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !2898

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !2873, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2899
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 undef, metadata !2868, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2899
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !2901
  %27 = load i64, i64* %26, align 8, !dbg !2901, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !2903
  br i1 %28, label %61, label %29, !dbg !2904

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !2905
  %31 = load i64, i64* %30, align 8, !dbg !2905, !tbaa !634
  %32 = add i64 %31, %3, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %32, metadata !2873, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2899
  %33 = trunc i64 %32 to i32, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %33, metadata !2873, metadata !DIExpression()), !dbg !2899
  %34 = inttoptr i32 %33 to i32*, !dbg !2907
  call void @llvm.dbg.value(metadata i32* %34, metadata !2873, metadata !DIExpression()), !dbg !2899
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !2908
  %36 = load i64, i64* %35, align 8, !dbg !2908, !tbaa !628
  %37 = add i64 %36, %2, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %37, metadata !2868, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2899
  %38 = trunc i64 %37 to i32, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %38, metadata !2868, metadata !DIExpression()), !dbg !2899
  %39 = inttoptr i32 %38 to i8*, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %39, metadata !2868, metadata !DIExpression()), !dbg !2899
  br label %40, !dbg !2904

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i8* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2874, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32* %42, metadata !2873, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8* %43, metadata !2868, metadata !DIExpression()), !dbg !2899
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %44, metadata !2868, metadata !DIExpression()), !dbg !2899
  %45 = load i8, i8* %43, align 1, !dbg !2913, !tbaa !712
  %46 = zext i8 %45 to i32, !dbg !2913
  %47 = getelementptr inbounds i32, i32* %42, i32 1, !dbg !2914
  call void @llvm.dbg.value(metadata i32* %47, metadata !2873, metadata !DIExpression()), !dbg !2899
  store i32 %46, i32* %42, align 4, !dbg !2915, !tbaa !2111
  %48 = add nuw i64 %41, 1, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %48, metadata !2874, metadata !DIExpression()), !dbg !2900
  %49 = icmp ult i64 %48, %27, !dbg !2903
  br i1 %49, label %40, label %61, !dbg !2904, !llvm.loop !2917

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2876, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %52, metadata !2867, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %53, metadata !2866, metadata !DIExpression()), !dbg !2882
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !2919
  %54 = load i64, i64* %23, align 8, !dbg !2921, !tbaa !609
  %55 = add i64 %54, %53, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %55, metadata !2866, metadata !DIExpression()), !dbg !2882
  %56 = load i64, i64* %24, align 8, !dbg !2923, !tbaa !609
  %57 = add i64 %56, %52, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %57, metadata !2867, metadata !DIExpression()), !dbg !2882
  %58 = add nuw i64 %51, 1, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %58, metadata !2876, metadata !DIExpression()), !dbg !2894
  %59 = load i64, i64* %18, align 8, !dbg !2895, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !2897
  br i1 %60, label %50, label %61, !dbg !2898, !llvm.loop !2926

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !2928
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !2929 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !2931, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 %1, metadata !2932, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2934, metadata !DIExpression()), !dbg !2948
  %5 = icmp sgt i32 %1, -1, !dbg !2949
  br i1 %5, label %6, label %14, !dbg !2950

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2932, metadata !DIExpression()), !dbg !2948
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !2951
  %9 = load i64, i64* %8, align 8, !dbg !2951, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !2952
  br i1 %10, label %11, label %14, !dbg !2953

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %12, metadata !2932, metadata !DIExpression()), !dbg !2948
  %13 = icmp sgt i32 %7, 0, !dbg !2949
  br i1 %13, label %6, label %25, !dbg !2950, !llvm.loop !2956

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !2958
  br i1 %16, label %25, label %17, !dbg !2959

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !2943, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %3, metadata !2934, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2948
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !2961
  %19 = load i64, i64* %18, align 8, !dbg !2961, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !2963
  br i1 %20, label %61, label %21, !dbg !2964

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !2964

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !2940, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2941, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 undef, metadata !2935, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !2967
  %27 = load i64, i64* %26, align 8, !dbg !2967, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !2969
  br i1 %28, label %61, label %29, !dbg !2970

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !2971
  %31 = load i64, i64* %30, align 8, !dbg !2971, !tbaa !634
  %32 = add i64 %31, %3, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %32, metadata !2940, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  %33 = trunc i64 %32 to i32, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %33, metadata !2940, metadata !DIExpression()), !dbg !2965
  %34 = inttoptr i32 %33 to i32*, !dbg !2973
  call void @llvm.dbg.value(metadata i32* %34, metadata !2940, metadata !DIExpression()), !dbg !2965
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !2974
  %36 = load i64, i64* %35, align 8, !dbg !2974, !tbaa !628
  %37 = add i64 %36, %2, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %37, metadata !2935, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  %38 = trunc i64 %37 to i32, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %38, metadata !2935, metadata !DIExpression()), !dbg !2965
  %39 = inttoptr i32 %38 to i16*, !dbg !2976
  call void @llvm.dbg.value(metadata i16* %39, metadata !2935, metadata !DIExpression()), !dbg !2965
  br label %40, !dbg !2970

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i32* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i16* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2941, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32* %42, metadata !2940, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i16* %43, metadata !2935, metadata !DIExpression()), !dbg !2965
  %44 = getelementptr inbounds i16, i16* %43, i32 1, !dbg !2977
  call void @llvm.dbg.value(metadata i16* %44, metadata !2935, metadata !DIExpression()), !dbg !2965
  %45 = load i16, i16* %43, align 2, !dbg !2979, !tbaa !2510
  %46 = zext i16 %45 to i32, !dbg !2979
  %47 = getelementptr inbounds i32, i32* %42, i32 1, !dbg !2980
  call void @llvm.dbg.value(metadata i32* %47, metadata !2940, metadata !DIExpression()), !dbg !2965
  store i32 %46, i32* %42, align 4, !dbg !2981, !tbaa !2111
  %48 = add nuw i64 %41, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %48, metadata !2941, metadata !DIExpression()), !dbg !2966
  %49 = icmp ult i64 %48, %27, !dbg !2969
  br i1 %49, label %40, label %61, !dbg !2970, !llvm.loop !2983

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !2943, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %52, metadata !2934, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %53, metadata !2933, metadata !DIExpression()), !dbg !2948
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !2985
  %54 = load i64, i64* %23, align 8, !dbg !2987, !tbaa !609
  %55 = add i64 %54, %53, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %55, metadata !2933, metadata !DIExpression()), !dbg !2948
  %56 = load i64, i64* %24, align 8, !dbg !2989, !tbaa !609
  %57 = add i64 %56, %52, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %57, metadata !2934, metadata !DIExpression()), !dbg !2948
  %58 = add nuw i64 %51, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %58, metadata !2943, metadata !DIExpression()), !dbg !2960
  %59 = load i64, i64* %18, align 8, !dbg !2961, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !2963
  br i1 %60, label %50, label %61, !dbg !2964, !llvm.loop !2992

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !2994
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2995 {
  %3 = alloca %struct.halide_buffer_t, align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2998, metadata !DIExpression()), !dbg !3006
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %5, metadata !2999, metadata !DIExpression()), !dbg !3006
  %6 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !3008, !tbaa !1386, !range !1375
  %7 = icmp eq i8 %6, 0, !dbg !3008
  br i1 %7, label %8, label %23, !dbg !3010

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3011
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3011
  %9 = tail call i8* @malloc(i32 1024) #8, !dbg !3014
  %10 = icmp eq i8* %9, null, !dbg !3015
  br i1 %10, label %11, label %13, !dbg !3016

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3017
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3020
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3022
  br label %22, !dbg !3023

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !3024
  store i8 0, i8* %14, align 1, !dbg !3025, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3017
  %15 = tail call i8* @halide_string_to_string(i8* nonnull %9, i8* nonnull %14, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3020
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3026
  %16 = ptrtoint i8* %15 to i32, !dbg !3028
  %17 = ptrtoint i8* %9 to i32, !dbg !3028
  %18 = add i32 %16, 1, !dbg !3028
  %19 = sub i32 %18, %17, !dbg !3029
  %20 = sext i32 %19 to i64, !dbg !3030
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %20) #8, !dbg !3031
  tail call void @halide_error(i8* %0, i8* nonnull %9) #8, !dbg !3032
  br label %22

22:                                               ; preds = %13, %11
  tail call void @free(i8* %9) #8, !dbg !3033
  br label %250, !dbg !3034

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3035
  %25 = load i64, i64* %24, align 8, !dbg !3035, !tbaa !777
  %26 = trunc i64 %25 to i32, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %26, metadata !3000, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1786, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1791, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()), !dbg !3041
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !3042
  %28 = load i32, i32* %27, align 4, !dbg !3042, !tbaa !812
  %29 = icmp sgt i32 %28, 0, !dbg !3043
  br i1 %29, label %33, label %30, !dbg !3044

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3045
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3047
  %32 = load i8, i8* %31, align 1, !dbg !3047, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1807, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !3050
  br label %71, !dbg !3051

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %35 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %34, align 8, !tbaa !815
  br label %36, !dbg !3044

36:                                               ; preds = %48, %33
  %37 = phi i32 [ 0, %33 ], [ %50, %48 ]
  %38 = phi i32 [ 0, %33 ], [ %49, %48 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !1795, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %38, metadata !1794, metadata !DIExpression()), !dbg !3039
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %35, i32 %37, i32 2, !dbg !3052
  %40 = load i32, i32* %39, align 4, !dbg !3052, !tbaa !823
  %41 = icmp sgt i32 %40, 0, !dbg !3053
  br i1 %41, label %42, label %48, !dbg !3054

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %35, i32 %37, i32 1, !dbg !3055
  %44 = load i32, i32* %43, align 4, !dbg !3055, !tbaa !887
  %45 = add nsw i32 %44, -1, !dbg !3056
  %46 = mul nsw i32 %45, %40, !dbg !3057
  %47 = add nsw i32 %46, %38, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %47, metadata !1794, metadata !DIExpression()), !dbg !3039
  br label %48, !dbg !3059

48:                                               ; preds = %42, %36
  %49 = phi i32 [ %47, %42 ], [ %38, %36 ], !dbg !3039
  call void @llvm.dbg.value(metadata i32 %49, metadata !1794, metadata !DIExpression()), !dbg !3039
  %50 = add nuw nsw i32 %37, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %50, metadata !1795, metadata !DIExpression()), !dbg !3041
  %51 = icmp slt i32 %50, %28, !dbg !3043
  br i1 %51, label %36, label %52, !dbg !3044, !llvm.loop !3061

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %49, metadata !1794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3039
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3045
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3047
  %54 = load i8, i8* %53, align 1, !dbg !3047, !tbaa !793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1807, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !3050
  br label %55, !dbg !3051

55:                                               ; preds = %67, %52
  %56 = phi i32 [ 0, %52 ], [ %69, %67 ]
  %57 = phi i32 [ 0, %52 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i32 %56, metadata !1811, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32 %57, metadata !1810, metadata !DIExpression()), !dbg !3048
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %35, i32 %56, i32 2, !dbg !3063
  %59 = load i32, i32* %58, align 4, !dbg !3063, !tbaa !823
  %60 = icmp slt i32 %59, 0, !dbg !3064
  br i1 %60, label %61, label %67, !dbg !3065

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %35, i32 %56, i32 1, !dbg !3066
  %63 = load i32, i32* %62, align 4, !dbg !3066, !tbaa !887
  %64 = add nsw i32 %63, -1, !dbg !3067
  %65 = mul nsw i32 %64, %59, !dbg !3068
  %66 = add nsw i32 %65, %57, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %66, metadata !1810, metadata !DIExpression()), !dbg !3048
  br label %67, !dbg !3070

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %66, %61 ], [ %57, %55 ], !dbg !3048
  call void @llvm.dbg.value(metadata i32 %68, metadata !1810, metadata !DIExpression()), !dbg !3048
  %69 = add nuw nsw i32 %56, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %69, metadata !1811, metadata !DIExpression()), !dbg !3050
  %70 = icmp slt i32 %69, %28, !dbg !3072
  br i1 %70, label %55, label %71, !dbg !3051, !llvm.loop !3073

71:                                               ; preds = %67, %30
  %72 = phi i8 [ %32, %30 ], [ %54, %67 ]
  %73 = phi i32 [ 0, %30 ], [ %49, %67 ]
  %74 = phi i32 [ 0, %30 ], [ %68, %67 ], !dbg !3048
  %75 = zext i8 %72 to i32, !dbg !3047
  %76 = add nuw nsw i32 %75, 7, !dbg !3075
  %77 = lshr i32 %76, 3, !dbg !3076
  %78 = add nsw i32 %73, 1, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %78, metadata !1794, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3078
  %79 = sub i32 %78, %74, !dbg !3080
  %80 = mul i32 %79, %77, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %80, metadata !3001, metadata !DIExpression()), !dbg !3006
  %81 = icmp eq i32 %80, 0, !dbg !3081
  br i1 %81, label %82, label %83, !dbg !3084

82:                                               ; preds = %71
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.99, i32 0, i32 0)) #8, !dbg !3085
  tail call void @abort() #8, !dbg !3085
  br label %83, !dbg !3085

83:                                               ; preds = %82, %71
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !3087
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !3087
  %84 = tail call i8* @malloc(i32 1024) #8, !dbg !3089
  %85 = icmp eq i8* %84, null, !dbg !3090
  br i1 %85, label %88, label %86, !dbg !3091

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %84, i32 1023, !dbg !3092
  store i8 0, i8* %87, align 1, !dbg !3093, !tbaa !712
  br label %88, !dbg !3094

88:                                               ; preds = %83, %86
  %89 = phi i8* [ %87, %86 ], [ null, %83 ], !dbg !3095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3096
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3096
  %90 = tail call i8* @halide_string_to_string(i8* %84, i8* %89, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0)) #8, !dbg !3098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3099
  %91 = tail call i8* @halide_string_to_string(i8* %90, i8* %89, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !3101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !3102
  %92 = tail call i8* @halide_pointer_to_string(i8* %91, i8* %89, i8* %0) #8, !dbg !3104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3105
  %93 = tail call i8* @halide_string_to_string(i8* %92, i8* %89, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !3107
  %94 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !3108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %94, metadata !1172, metadata !DIExpression()) #10, !dbg !3109
  %95 = tail call i8* @halide_pointer_to_string(i8* %93, i8* %89, i8* %94) #8, !dbg !3111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3112
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3112
  %96 = tail call i8* @halide_string_to_string(i8* %95, i8* %89, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !3114
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !3115
  call void @llvm.dbg.value(metadata i32 %26, metadata !1157, metadata !DIExpression()) #10, !dbg !3115
  %97 = and i64 %25, 4294967295, !dbg !3117
  %98 = tail call i8* @halide_uint64_to_string(i8* %96, i8* %89, i64 %97, i32 1) #8, !dbg !3118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3119
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3119
  %99 = tail call i8* @halide_string_to_string(i8* %98, i8* %89, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !3121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %80, metadata !1157, metadata !DIExpression()) #10, !dbg !3122
  %100 = zext i32 %80 to i64, !dbg !3124
  %101 = tail call i8* @halide_uint64_to_string(i8* %99, i8* %89, i64 %100, i32 1) #8, !dbg !3125
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3126
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3126
  %102 = tail call i8* @halide_string_to_string(i8* %101, i8* %89, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !3128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !3129
  br i1 %85, label %103, label %104, !dbg !3131

103:                                              ; preds = %88
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3132
  br label %111, !dbg !3133

104:                                              ; preds = %88
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !3134
  %105 = ptrtoint i8* %102 to i32, !dbg !3136
  %106 = ptrtoint i8* %84 to i32, !dbg !3136
  %107 = add i32 %105, 1, !dbg !3136
  %108 = sub i32 %107, %106, !dbg !3137
  %109 = sext i32 %108 to i64, !dbg !3138
  %110 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %84, i64 %109) #8, !dbg !3139
  tail call void @halide_print(i8* %0, i8* nonnull %84) #8, !dbg !3140
  br label %111

111:                                              ; preds = %103, %104
  call void @free(i8* %84) #8, !dbg !3141
  %112 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 2), align 4, !dbg !3142, !tbaa !1389
  call void %112(i32 34962, i32 %26) #8, !dbg !3143
  %113 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #9, !dbg !3144
  br i1 %113, label %250, label %114, !dbg !3146

114:                                              ; preds = %111
  %115 = load i8* (i32, i32, i32, i32)*, i8* (i32, i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 21), align 4, !dbg !3147, !tbaa !1407
  %116 = call i8* %115(i32 34962, i32 0, i32 %80, i32 1) #8, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %116, metadata !3002, metadata !DIExpression()), !dbg !3006
  %117 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0)) #9, !dbg !3149
  br i1 %117, label %250, label %118, !dbg !3151

118:                                              ; preds = %114
  %119 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !3152
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %119) #10, !dbg !3152
  call void @llvm.dbg.declare(metadata %struct.halide_buffer_t* %3, metadata !3003, metadata !DIExpression()), !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %119, i8* nonnull align 8 dereferenceable(40) %94, i32 40, i1 false), !dbg !3154, !tbaa.struct !2508
  %120 = ptrtoint i8* %116 to i32, !dbg !3155
  %121 = zext i32 %120 to i64, !dbg !3155
  %122 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !3156
  store i64 %121, i64* %122, align 8, !dbg !3157, !tbaa !777
  %123 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %123) #10, !dbg !3158
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !3004, metadata !DIExpression()), !dbg !3159
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %3) #9, !dbg !3160
  %124 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 0, !dbg !3161
  %125 = load i8, i8* %124, align 8, !dbg !3161, !tbaa !2519
  switch i8 %125, label %206 [
    i8 0, label %126
    i8 1, label %155
    i8 2, label %184
  ], !dbg !3163

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3164
  %128 = load i8, i8* %127, align 1, !dbg !3164, !tbaa !2524
  switch i8 %128, label %141 [
    i8 8, label %129
    i8 16, label %132
    i8 32, label %138
  ], !dbg !3167

129:                                              ; preds = %126
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3168
  %131 = load i64, i64* %130, align 8, !dbg !3168, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %131) #9, !dbg !3170
  br label %206, !dbg !3171

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6, !dbg !3172
  %134 = load i64, i64* %133, align 8, !dbg !3175, !tbaa !638
  %135 = lshr i64 %134, 1, !dbg !3175
  store i64 %135, i64* %133, align 8, !dbg !3175, !tbaa !638
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3176
  %137 = load i64, i64* %136, align 8, !dbg !3176, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %137) #9, !dbg !3177
  br label %206, !dbg !3178

138:                                              ; preds = %126
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3179
  %140 = load i64, i64* %139, align 8, !dbg !3179, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %140) #9, !dbg !3182
  br label %206

141:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3183
  %142 = call i8* @malloc(i32 1024) #8, !dbg !3186
  %143 = icmp eq i8* %142, null, !dbg !3187
  br i1 %143, label %144, label %146, !dbg !3188

144:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3189
  %145 = call i8* @halide_string_to_string(i8* %142, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3192
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3194
  br label %247, !dbg !3195

146:                                              ; preds = %141
  %147 = getelementptr inbounds i8, i8* %142, i32 1023, !dbg !3196
  store i8 0, i8* %147, align 1, !dbg !3197, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3189
  %148 = call i8* @halide_string_to_string(i8* nonnull %142, i8* nonnull %147, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3198
  %149 = ptrtoint i8* %148 to i32, !dbg !3200
  %150 = ptrtoint i8* %142 to i32, !dbg !3200
  %151 = add i32 %149, 1, !dbg !3200
  %152 = sub i32 %151, %150, !dbg !3201
  %153 = sext i32 %152 to i64, !dbg !3202
  %154 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %142, i64 %153) #8, !dbg !3203
  call void @halide_error(i8* %0, i8* nonnull %142) #8, !dbg !3204
  br label %247

155:                                              ; preds = %118
  %156 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3205
  %157 = load i8, i8* %156, align 1, !dbg !3205, !tbaa !2524
  switch i8 %157, label %170 [
    i8 8, label %158
    i8 16, label %161
    i8 32, label %167
  ], !dbg !3209

158:                                              ; preds = %155
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3210
  %160 = load i64, i64* %159, align 8, !dbg !3210, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %160) #9, !dbg !3212
  br label %206, !dbg !3213

161:                                              ; preds = %155
  %162 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6, !dbg !3214
  %163 = load i64, i64* %162, align 8, !dbg !3217, !tbaa !638
  %164 = lshr i64 %163, 1, !dbg !3217
  store i64 %164, i64* %162, align 8, !dbg !3217, !tbaa !638
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3218
  %166 = load i64, i64* %165, align 8, !dbg !3218, !tbaa !670
  call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %166) #9, !dbg !3219
  br label %206, !dbg !3220

167:                                              ; preds = %155
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3221
  %169 = load i64, i64* %168, align 8, !dbg !3221, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %169) #9, !dbg !3224
  br label %206

170:                                              ; preds = %155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3225
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3225
  %171 = call i8* @malloc(i32 1024) #8, !dbg !3228
  %172 = icmp eq i8* %171, null, !dbg !3229
  br i1 %172, label %173, label %175, !dbg !3230

173:                                              ; preds = %170
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3231
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3231
  %174 = call i8* @halide_string_to_string(i8* %171, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3233
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3234
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3236
  br label %247, !dbg !3237

175:                                              ; preds = %170
  %176 = getelementptr inbounds i8, i8* %171, i32 1023, !dbg !3238
  store i8 0, i8* %176, align 1, !dbg !3239, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3231
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3231
  %177 = call i8* @halide_string_to_string(i8* nonnull %171, i8* nonnull %176, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3233
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3234
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3240
  %178 = ptrtoint i8* %177 to i32, !dbg !3242
  %179 = ptrtoint i8* %171 to i32, !dbg !3242
  %180 = add i32 %178, 1, !dbg !3242
  %181 = sub i32 %180, %179, !dbg !3243
  %182 = sext i32 %181 to i64, !dbg !3244
  %183 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %171, i64 %182) #8, !dbg !3245
  call void @halide_error(i8* %0, i8* nonnull %171) #8, !dbg !3246
  br label %247

184:                                              ; preds = %118
  %185 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !3247
  %186 = load i8, i8* %185, align 1, !dbg !3247, !tbaa !2524
  %187 = icmp eq i8 %186, 32, !dbg !3251
  br i1 %187, label %188, label %191, !dbg !3252

188:                                              ; preds = %184
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 2, !dbg !3253
  %190 = load i64, i64* %189, align 8, !dbg !3253, !tbaa !670
  call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i64 %190) #9, !dbg !3255
  br label %206, !dbg !3256

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3257
  %192 = call i8* @malloc(i32 1024) #8, !dbg !3260
  %193 = icmp eq i8* %192, null, !dbg !3261
  br i1 %193, label %194, label %196, !dbg !3262

194:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3263
  %195 = call i8* @halide_string_to_string(i8* %192, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !3265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3266
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3268
  br label %205, !dbg !3269

196:                                              ; preds = %191
  %197 = getelementptr inbounds i8, i8* %192, i32 1023, !dbg !3270
  store i8 0, i8* %197, align 1, !dbg !3271, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3263
  %198 = call i8* @halide_string_to_string(i8* nonnull %192, i8* nonnull %197, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !3265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3272
  %199 = ptrtoint i8* %198 to i32, !dbg !3274
  %200 = ptrtoint i8* %192 to i32, !dbg !3274
  %201 = add i32 %199, 1, !dbg !3274
  %202 = sub i32 %201, %200, !dbg !3275
  %203 = sext i32 %202 to i64, !dbg !3276
  %204 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %192, i64 %203) #8, !dbg !3277
  call void @halide_error(i8* %0, i8* nonnull %192) #8, !dbg !3278
  br label %205

205:                                              ; preds = %196, %194
  call void @free(i8* %192) #8, !dbg !3279
  br label %206

206:                                              ; preds = %118, %161, %167, %158, %188, %205, %129, %138, %132
  %207 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 27), align 4, !dbg !3280, !tbaa !1413
  call void %207(i32 34962) #8, !dbg !3281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !3282
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !3282
  %208 = call i8* @malloc(i32 1024) #8, !dbg !3284
  %209 = icmp eq i8* %208, null, !dbg !3285
  br i1 %209, label %212, label %210, !dbg !3286

210:                                              ; preds = %206
  %211 = getelementptr inbounds i8, i8* %208, i32 1023, !dbg !3287
  store i8 0, i8* %211, align 1, !dbg !3288, !tbaa !712
  br label %212, !dbg !3289

212:                                              ; preds = %206, %210
  %213 = phi i8* [ %211, %210 ], [ null, %206 ], !dbg !3290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3291
  %214 = call i8* @halide_string_to_string(i8* %208, i8* %213, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)) #8, !dbg !3293
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1154, metadata !DIExpression()) #10, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %80, metadata !1157, metadata !DIExpression()) #10, !dbg !3294
  %215 = call i8* @halide_uint64_to_string(i8* %214, i8* %213, i64 %100, i32 1) #8, !dbg !3296
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3297
  %216 = call i8* @halide_string_to_string(i8* %215, i8* %213, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0)) #8, !dbg !3299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !3300
  br i1 %209, label %217, label %218, !dbg !3302

217:                                              ; preds = %212
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3303
  br label %225, !dbg !3304

218:                                              ; preds = %212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !3305
  %219 = ptrtoint i8* %216 to i32, !dbg !3307
  %220 = ptrtoint i8* %208 to i32, !dbg !3307
  %221 = add i32 %219, 1, !dbg !3307
  %222 = sub i32 %221, %220, !dbg !3308
  %223 = sext i32 %222 to i64, !dbg !3309
  %224 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %208, i64 %223) #8, !dbg !3310
  call void @halide_print(i8* %0, i8* nonnull %208) #8, !dbg !3311
  br label %225

225:                                              ; preds = %218, %217
  call void @free(i8* %208) #8, !dbg !3312
  %226 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %226, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !3314
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !3314
  %227 = call i8* @malloc(i32 1024) #8, !dbg !3316
  %228 = icmp eq i8* %227, null, !dbg !3317
  br i1 %228, label %231, label %229, !dbg !3318

229:                                              ; preds = %225
  %230 = getelementptr inbounds i8, i8* %227, i32 1023, !dbg !3319
  store i8 0, i8* %230, align 1, !dbg !3320, !tbaa !712
  br label %231, !dbg !3321

231:                                              ; preds = %225, %229
  %232 = phi i8* [ %230, %229 ], [ null, %225 ], !dbg !3322
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3323
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3323
  %233 = call i8* @halide_string_to_string(i8* %227, i8* %232, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !3325
  %234 = sub i64 %226, %5, !dbg !3326
  %235 = uitofp i64 %234 to double, !dbg !3327
  %236 = fdiv double %235, 1.000000e+06, !dbg !3328
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !3329
  call void @llvm.dbg.value(metadata double %236, metadata !1700, metadata !DIExpression()) #10, !dbg !3329
  %237 = call i8* @halide_double_to_string(i8* %233, i8* %232, double %236, i32 1) #8, !dbg !3331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3332
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.103, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3332
  %238 = call i8* @halide_string_to_string(i8* %237, i8* %232, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.103, i32 0, i32 0)) #8, !dbg !3334
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !3335
  br i1 %228, label %239, label %240, !dbg !3337

239:                                              ; preds = %231
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3338
  br label %247, !dbg !3339

240:                                              ; preds = %231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !3340
  %241 = ptrtoint i8* %238 to i32, !dbg !3342
  %242 = ptrtoint i8* %227 to i32, !dbg !3342
  %243 = add i32 %241, 1, !dbg !3342
  %244 = sub i32 %243, %242, !dbg !3343
  %245 = sext i32 %244 to i64, !dbg !3344
  %246 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %227, i64 %245) #8, !dbg !3345
  call void @halide_print(i8* %0, i8* nonnull %227) #8, !dbg !3346
  br label %247

247:                                              ; preds = %239, %240, %173, %175, %144, %146
  %248 = phi i8* [ %142, %146 ], [ %142, %144 ], [ %171, %175 ], [ %171, %173 ], [ %227, %240 ], [ %227, %239 ]
  %249 = phi i32 [ -1, %146 ], [ -1, %144 ], [ -1, %175 ], [ -1, %173 ], [ 0, %240 ], [ 0, %239 ], !dbg !3006
  call void @free(i8* %248) #8, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %123) #10, !dbg !3347
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %119) #10, !dbg !3347
  br label %250

250:                                              ; preds = %111, %114, %247, %22
  %251 = phi i32 [ 1, %22 ], [ 1, %111 ], [ %249, %247 ], [ 1, %114 ], !dbg !3006
  ret i32 %251, !dbg !3347
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3348 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3350, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %2, metadata !3352, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()), !dbg !3366
  %5 = icmp sgt i32 %1, -1, !dbg !3367
  br i1 %5, label %6, label %14, !dbg !3368

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3351, metadata !DIExpression()), !dbg !3366
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !3369
  %9 = load i64, i64* %8, align 8, !dbg !3369, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !3370
  br i1 %10, label %11, label %14, !dbg !3371

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %12, metadata !3351, metadata !DIExpression()), !dbg !3366
  %13 = icmp sgt i32 %7, 0, !dbg !3367
  br i1 %13, label %6, label %25, !dbg !3368, !llvm.loop !3374

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !3376
  br i1 %16, label %25, label %17, !dbg !3377

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !3360, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %2, metadata !3352, metadata !DIExpression()), !dbg !3366
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !3379
  %19 = load i64, i64* %18, align 8, !dbg !3379, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !3381
  br i1 %20, label %62, label %21, !dbg !3382

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %51, !dbg !3382

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !3357, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3358, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 undef, metadata !3354, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !3385
  %27 = load i64, i64* %26, align 8, !dbg !3385, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !3387
  br i1 %28, label %62, label %29, !dbg !3388

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !3389
  %31 = load i64, i64* %30, align 8, !dbg !3389, !tbaa !634
  %32 = add i64 %31, %3, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %32, metadata !3357, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  %33 = trunc i64 %32 to i32, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %33, metadata !3357, metadata !DIExpression()), !dbg !3383
  %34 = inttoptr i32 %33 to i8*, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %34, metadata !3357, metadata !DIExpression()), !dbg !3383
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !3392
  %36 = load i64, i64* %35, align 8, !dbg !3392, !tbaa !628
  %37 = add i64 %36, %2, !dbg !3393
  call void @llvm.dbg.value(metadata i64 %37, metadata !3354, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  %38 = trunc i64 %37 to i32, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %38, metadata !3354, metadata !DIExpression()), !dbg !3383
  %39 = inttoptr i32 %38 to i32*, !dbg !3394
  call void @llvm.dbg.value(metadata i32* %39, metadata !3354, metadata !DIExpression()), !dbg !3383
  br label %40, !dbg !3388

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %29 ]
  %42 = phi i8* [ %47, %40 ], [ %34, %29 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %29 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3358, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %42, metadata !3357, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32* %43, metadata !3354, metadata !DIExpression()), !dbg !3383
  %44 = getelementptr inbounds i32, i32* %43, i32 1, !dbg !3395
  call void @llvm.dbg.value(metadata i32* %44, metadata !3354, metadata !DIExpression()), !dbg !3383
  %45 = load i32, i32* %43, align 4, !dbg !3397, !tbaa !2111
  %46 = trunc i32 %45 to i8, !dbg !3397
  %47 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %47, metadata !3357, metadata !DIExpression()), !dbg !3383
  store i8 %46, i8* %42, align 1, !dbg !3399, !tbaa !712
  %48 = add nuw i64 %41, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %48, metadata !3358, metadata !DIExpression()), !dbg !3384
  %49 = load i64, i64* %26, align 8, !dbg !3385, !tbaa !638
  %50 = icmp ult i64 %48, %49, !dbg !3387
  br i1 %50, label %40, label %62, !dbg !3388, !llvm.loop !3401

51:                                               ; preds = %21, %51
  %52 = phi i64 [ 0, %21 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %21 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %21 ], [ %56, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !3360, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %53, metadata !3353, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %54, metadata !3352, metadata !DIExpression()), !dbg !3366
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %54, i64 %53) #9, !dbg !3403
  %55 = load i64, i64* %23, align 8, !dbg !3405, !tbaa !609
  %56 = add i64 %55, %54, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %56, metadata !3352, metadata !DIExpression()), !dbg !3366
  %57 = load i64, i64* %24, align 8, !dbg !3407, !tbaa !609
  %58 = add i64 %57, %53, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %58, metadata !3353, metadata !DIExpression()), !dbg !3366
  %59 = add nuw i64 %52, 1, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %59, metadata !3360, metadata !DIExpression()), !dbg !3378
  %60 = load i64, i64* %18, align 8, !dbg !3379, !tbaa !609
  %61 = icmp ult i64 %59, %60, !dbg !3381
  br i1 %61, label %51, label %62, !dbg !3382, !llvm.loop !3410

62:                                               ; preds = %51, %40, %17, %25
  ret void, !dbg !3412
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3413 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3415, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %2, metadata !3417, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %3, metadata !3418, metadata !DIExpression()), !dbg !3430
  %5 = icmp sgt i32 %1, -1, !dbg !3431
  br i1 %5, label %6, label %14, !dbg !3432

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3416, metadata !DIExpression()), !dbg !3430
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !3433
  %9 = load i64, i64* %8, align 8, !dbg !3433, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !3434
  br i1 %10, label %11, label %14, !dbg !3435

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !3436
  call void @llvm.dbg.value(metadata i32 %12, metadata !3416, metadata !DIExpression()), !dbg !3430
  %13 = icmp sgt i32 %7, 0, !dbg !3431
  br i1 %13, label %6, label %25, !dbg !3432, !llvm.loop !3438

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !3440
  br i1 %16, label %25, label %17, !dbg !3441

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %3, metadata !3418, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %2, metadata !3417, metadata !DIExpression()), !dbg !3430
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !3443
  %19 = load i64, i64* %18, align 8, !dbg !3443, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !3445
  br i1 %20, label %61, label %21, !dbg !3446

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !3446

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !3422, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  call void @llvm.dbg.value(metadata i64 0, metadata !3423, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 undef, metadata !3419, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !3449
  %27 = load i64, i64* %26, align 8, !dbg !3449, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !3451
  br i1 %28, label %61, label %29, !dbg !3452

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !3453
  %31 = load i64, i64* %30, align 8, !dbg !3453, !tbaa !634
  %32 = add i64 %31, %3, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %32, metadata !3422, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  %33 = trunc i64 %32 to i32, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %33, metadata !3422, metadata !DIExpression()), !dbg !3447
  %34 = inttoptr i32 %33 to i16*, !dbg !3455
  call void @llvm.dbg.value(metadata i16* %34, metadata !3422, metadata !DIExpression()), !dbg !3447
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !3456
  %36 = load i64, i64* %35, align 8, !dbg !3456, !tbaa !628
  %37 = add i64 %36, %2, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %37, metadata !3419, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  %38 = trunc i64 %37 to i32, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %38, metadata !3419, metadata !DIExpression()), !dbg !3447
  %39 = inttoptr i32 %38 to i32*, !dbg !3458
  call void @llvm.dbg.value(metadata i32* %39, metadata !3419, metadata !DIExpression()), !dbg !3447
  br label %40, !dbg !3452

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i16* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3423, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i16* %42, metadata !3422, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32* %43, metadata !3419, metadata !DIExpression()), !dbg !3447
  %44 = getelementptr inbounds i32, i32* %43, i32 1, !dbg !3459
  call void @llvm.dbg.value(metadata i32* %44, metadata !3419, metadata !DIExpression()), !dbg !3447
  %45 = load i32, i32* %43, align 4, !dbg !3461, !tbaa !2111
  %46 = trunc i32 %45 to i16, !dbg !3461
  %47 = getelementptr inbounds i16, i16* %42, i32 1, !dbg !3462
  call void @llvm.dbg.value(metadata i16* %47, metadata !3422, metadata !DIExpression()), !dbg !3447
  store i16 %46, i16* %42, align 2, !dbg !3463, !tbaa !2510
  %48 = add nuw i64 %41, 1, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %48, metadata !3423, metadata !DIExpression()), !dbg !3448
  %49 = icmp ult i64 %48, %27, !dbg !3451
  br i1 %49, label %40, label %61, !dbg !3452, !llvm.loop !3465

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !3425, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %52, metadata !3418, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %53, metadata !3417, metadata !DIExpression()), !dbg !3430
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !3467
  %54 = load i64, i64* %23, align 8, !dbg !3469, !tbaa !609
  %55 = add i64 %54, %53, !dbg !3470
  call void @llvm.dbg.value(metadata i64 %55, metadata !3417, metadata !DIExpression()), !dbg !3430
  %56 = load i64, i64* %24, align 8, !dbg !3471, !tbaa !609
  %57 = add i64 %56, %52, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %57, metadata !3418, metadata !DIExpression()), !dbg !3430
  %58 = add nuw i64 %51, 1, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %58, metadata !3425, metadata !DIExpression()), !dbg !3442
  %59 = load i64, i64* %18, align 8, !dbg !3443, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !3445
  br i1 %60, label %50, label %61, !dbg !3446, !llvm.loop !3474

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !3476
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3477 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3479, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %1, metadata !3480, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %2, metadata !3481, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %3, metadata !3482, metadata !DIExpression()), !dbg !3497
  %5 = icmp sgt i32 %1, -1, !dbg !3498
  br i1 %5, label %6, label %14, !dbg !3499

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3480, metadata !DIExpression()), !dbg !3497
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !3500
  %9 = load i64, i64* %8, align 8, !dbg !3500, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !3501
  br i1 %10, label %11, label %14, !dbg !3502

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !3503
  call void @llvm.dbg.value(metadata i32 %12, metadata !3480, metadata !DIExpression()), !dbg !3497
  %13 = icmp sgt i32 %7, 0, !dbg !3498
  br i1 %13, label %6, label %25, !dbg !3499, !llvm.loop !3505

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !3507
  br i1 %16, label %25, label %17, !dbg !3508

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !3491, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %3, metadata !3482, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %2, metadata !3481, metadata !DIExpression()), !dbg !3497
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !3510
  %19 = load i64, i64* %18, align 8, !dbg !3510, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !3512
  br i1 %20, label %62, label %21, !dbg !3513

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %51, !dbg !3513

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !3488, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3514
  call void @llvm.dbg.value(metadata i64 0, metadata !3489, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 undef, metadata !3483, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3514
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !3516
  %27 = load i64, i64* %26, align 8, !dbg !3516, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !3518
  br i1 %28, label %62, label %29, !dbg !3519

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !3520
  %31 = load i64, i64* %30, align 8, !dbg !3520, !tbaa !634
  %32 = add i64 %31, %3, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %32, metadata !3488, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3514
  %33 = trunc i64 %32 to i32, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %33, metadata !3488, metadata !DIExpression()), !dbg !3514
  %34 = inttoptr i32 %33 to i8*, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %34, metadata !3488, metadata !DIExpression()), !dbg !3514
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !3523
  %36 = load i64, i64* %35, align 8, !dbg !3523, !tbaa !628
  %37 = add i64 %36, %2, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %37, metadata !3483, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3514
  %38 = trunc i64 %37 to i32, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %38, metadata !3483, metadata !DIExpression()), !dbg !3514
  %39 = inttoptr i32 %38 to i32*, !dbg !3525
  call void @llvm.dbg.value(metadata i32* %39, metadata !3483, metadata !DIExpression()), !dbg !3514
  br label %40, !dbg !3519

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %29 ]
  %42 = phi i8* [ %47, %40 ], [ %34, %29 ]
  %43 = phi i32* [ %44, %40 ], [ %39, %29 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3489, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %42, metadata !3488, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32* %43, metadata !3483, metadata !DIExpression()), !dbg !3514
  %44 = getelementptr inbounds i32, i32* %43, i32 1, !dbg !3526
  call void @llvm.dbg.value(metadata i32* %44, metadata !3483, metadata !DIExpression()), !dbg !3514
  %45 = load i32, i32* %43, align 4, !dbg !3528, !tbaa !2111
  %46 = trunc i32 %45 to i8, !dbg !3528
  %47 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %47, metadata !3488, metadata !DIExpression()), !dbg !3514
  store i8 %46, i8* %42, align 1, !dbg !3530, !tbaa !712
  %48 = add nuw i64 %41, 1, !dbg !3531
  call void @llvm.dbg.value(metadata i64 %48, metadata !3489, metadata !DIExpression()), !dbg !3515
  %49 = load i64, i64* %26, align 8, !dbg !3516, !tbaa !638
  %50 = icmp ult i64 %48, %49, !dbg !3518
  br i1 %50, label %40, label %62, !dbg !3519, !llvm.loop !3532

51:                                               ; preds = %21, %51
  %52 = phi i64 [ 0, %21 ], [ %59, %51 ]
  %53 = phi i64 [ %3, %21 ], [ %58, %51 ]
  %54 = phi i64 [ %2, %21 ], [ %56, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !3491, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %53, metadata !3482, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %54, metadata !3481, metadata !DIExpression()), !dbg !3497
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %54, i64 %53) #9, !dbg !3534
  %55 = load i64, i64* %23, align 8, !dbg !3536, !tbaa !609
  %56 = add i64 %55, %54, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %56, metadata !3481, metadata !DIExpression()), !dbg !3497
  %57 = load i64, i64* %24, align 8, !dbg !3538, !tbaa !609
  %58 = add i64 %57, %53, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %58, metadata !3482, metadata !DIExpression()), !dbg !3497
  %59 = add nuw i64 %52, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %59, metadata !3491, metadata !DIExpression()), !dbg !3509
  %60 = load i64, i64* %18, align 8, !dbg !3510, !tbaa !609
  %61 = icmp ult i64 %59, %60, !dbg !3512
  br i1 %61, label %51, label %62, !dbg !3513, !llvm.loop !3541

62:                                               ; preds = %51, %40, %17, %25
  ret void, !dbg !3543
}

; Function Attrs: alwaysinline nofree nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #7 !dbg !3544 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !3546, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %2, metadata !3548, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %3, metadata !3549, metadata !DIExpression()), !dbg !3561
  %5 = icmp sgt i32 %1, -1, !dbg !3562
  br i1 %5, label %6, label %14, !dbg !3563

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3547, metadata !DIExpression()), !dbg !3561
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !3564
  %9 = load i64, i64* %8, align 8, !dbg !3564, !tbaa !609
  %10 = icmp eq i64 %9, 1, !dbg !3565
  br i1 %10, label %11, label %14, !dbg !3566

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %12, metadata !3547, metadata !DIExpression()), !dbg !3561
  %13 = icmp sgt i32 %7, 0, !dbg !3562
  br i1 %13, label %6, label %25, !dbg !3563, !llvm.loop !3569

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !3571
  br i1 %16, label %25, label %17, !dbg !3572

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !3556, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %3, metadata !3549, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %2, metadata !3548, metadata !DIExpression()), !dbg !3561
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !3574
  %19 = load i64, i64* %18, align 8, !dbg !3574, !tbaa !609
  %20 = icmp eq i64 %19, 0, !dbg !3576
  br i1 %20, label %61, label %21, !dbg !3577

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %50, !dbg !3577

25:                                               ; preds = %11, %14
  call void @llvm.dbg.value(metadata i64 undef, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  call void @llvm.dbg.value(metadata i64 0, metadata !3554, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 undef, metadata !3550, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !3580
  %27 = load i64, i64* %26, align 8, !dbg !3580, !tbaa !638
  %28 = icmp eq i64 %27, 0, !dbg !3582
  br i1 %28, label %61, label %29, !dbg !3583

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !3584
  %31 = load i64, i64* %30, align 8, !dbg !3584, !tbaa !634
  %32 = add i64 %31, %3, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %32, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  %33 = trunc i64 %32 to i32, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %33, metadata !3553, metadata !DIExpression()), !dbg !3578
  %34 = inttoptr i32 %33 to i16*, !dbg !3586
  call void @llvm.dbg.value(metadata i16* %34, metadata !3553, metadata !DIExpression()), !dbg !3578
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !3587
  %36 = load i64, i64* %35, align 8, !dbg !3587, !tbaa !628
  %37 = add i64 %36, %2, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %37, metadata !3550, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3578
  %38 = trunc i64 %37 to i32, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %38, metadata !3550, metadata !DIExpression()), !dbg !3578
  %39 = inttoptr i32 %38 to i32*, !dbg !3589
  call void @llvm.dbg.value(metadata i32* %39, metadata !3550, metadata !DIExpression()), !dbg !3578
  br label %40, !dbg !3583

40:                                               ; preds = %29, %40
  %41 = phi i64 [ 0, %29 ], [ %48, %40 ]
  %42 = phi i16* [ %34, %29 ], [ %47, %40 ]
  %43 = phi i32* [ %39, %29 ], [ %44, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !3554, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i16* %42, metadata !3553, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32* %43, metadata !3550, metadata !DIExpression()), !dbg !3578
  %44 = getelementptr inbounds i32, i32* %43, i32 1, !dbg !3590
  call void @llvm.dbg.value(metadata i32* %44, metadata !3550, metadata !DIExpression()), !dbg !3578
  %45 = load i32, i32* %43, align 4, !dbg !3592, !tbaa !2111
  %46 = trunc i32 %45 to i16, !dbg !3592
  %47 = getelementptr inbounds i16, i16* %42, i32 1, !dbg !3593
  call void @llvm.dbg.value(metadata i16* %47, metadata !3553, metadata !DIExpression()), !dbg !3578
  store i16 %46, i16* %42, align 2, !dbg !3594, !tbaa !2510
  %48 = add nuw i64 %41, 1, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %48, metadata !3554, metadata !DIExpression()), !dbg !3579
  %49 = icmp ult i64 %48, %27, !dbg !3582
  br i1 %49, label %40, label %61, !dbg !3583, !llvm.loop !3596

50:                                               ; preds = %21, %50
  %51 = phi i64 [ 0, %21 ], [ %58, %50 ]
  %52 = phi i64 [ %3, %21 ], [ %57, %50 ]
  %53 = phi i64 [ %2, %21 ], [ %55, %50 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !3556, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %52, metadata !3549, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %53, metadata !3548, metadata !DIExpression()), !dbg !3561
  tail call fastcc void @_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %53, i64 %52) #9, !dbg !3598
  %54 = load i64, i64* %23, align 8, !dbg !3600, !tbaa !609
  %55 = add i64 %54, %53, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %55, metadata !3548, metadata !DIExpression()), !dbg !3561
  %56 = load i64, i64* %24, align 8, !dbg !3602, !tbaa !609
  %57 = add i64 %56, %52, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %57, metadata !3549, metadata !DIExpression()), !dbg !3561
  %58 = add nuw i64 %51, 1, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %58, metadata !3556, metadata !DIExpression()), !dbg !3573
  %59 = load i64, i64* %18, align 8, !dbg !3574, !tbaa !609
  %60 = icmp ult i64 %58, %59, !dbg !3576
  br i1 %60, label %50, label %61, !dbg !3577, !llvm.loop !3605

61:                                               ; preds = %50, %40, %17, %25
  ret void, !dbg !3607
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.halide_type_t* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 !dbg !3608 {
  %18 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3613, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %2, metadata !3615, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %3, metadata !3616, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %4, metadata !3617, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %5, metadata !3618, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %6, metadata !3619, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %7, metadata !3620, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %8, metadata !3621, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %9, metadata !3622, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %10, metadata !3623, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8** %11, metadata !3624, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %12, metadata !3625, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %13, metadata !3626, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata float* %14, metadata !3627, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %15, metadata !3628, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %16, metadata !3629, metadata !DIExpression()), !dbg !3650
  %19 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3651
  call void @llvm.dbg.value(metadata i64 %19, metadata !3630, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !3652
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !3652
  %20 = tail call i8* @malloc(i32 1024) #8, !dbg !3654
  %21 = icmp eq i8* %20, null, !dbg !3655
  br i1 %21, label %24, label %22, !dbg !3656

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %20, i32 1023, !dbg !3657
  store i8 0, i8* %23, align 1, !dbg !3658, !tbaa !712
  br label %24, !dbg !3659

24:                                               ; preds = %17, %22
  %25 = phi i8* [ %23, %22 ], [ null, %17 ], !dbg !3660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.104, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3661
  %26 = tail call i8* @halide_string_to_string(i8* %20, i8* %25, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !3663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1169, metadata !DIExpression()) #10, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()) #10, !dbg !3664
  %27 = tail call i8* @halide_pointer_to_string(i8* %26, i8* %25, i8* %0) #8, !dbg !3666
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3667
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3667
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3669
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3670
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %25, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0)) #8, !dbg !3672
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !693, metadata !DIExpression()) #10, !dbg !3673
  %30 = icmp eq i8* %2, null, !dbg !3675
  br i1 %30, label %31, label %33, !dbg !3676

31:                                               ; preds = %24
  %32 = tail call i8* @halide_string_to_string(i8* %29, i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !3677
  br label %35, !dbg !3679

33:                                               ; preds = %24
  %34 = tail call i8* @halide_string_to_string(i8* %29, i8* %25, i8* nonnull %2) #8, !dbg !3680
  br label %35

35:                                               ; preds = %31, %33
  %36 = phi i8* [ %34, %33 ], [ %32, %31 ], !dbg !3681
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3682
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3684
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3685
  %38 = tail call i8* @halide_string_to_string(i8* %37, i8* %25, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0)) #8, !dbg !3687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %3, metadata !1187, metadata !DIExpression()) #10, !dbg !3688
  %39 = sext i32 %3 to i64, !dbg !3690
  %40 = tail call i8* @halide_int64_to_string(i8* %38, i8* %25, i64 %39, i32 1) #8, !dbg !3691
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3692
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !3694
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %4, metadata !1187, metadata !DIExpression()) #10, !dbg !3695
  %42 = sext i32 %4 to i64, !dbg !3697
  %43 = tail call i8* @halide_int64_to_string(i8* %41, i8* %25, i64 %42, i32 1) #8, !dbg !3698
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3699
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !3701
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %5, metadata !1187, metadata !DIExpression()) #10, !dbg !3702
  %45 = sext i32 %5 to i64, !dbg !3704
  %46 = tail call i8* @halide_int64_to_string(i8* %44, i8* %25, i64 %45, i32 1) #8, !dbg !3705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3706
  %47 = tail call i8* @halide_string_to_string(i8* %46, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3708
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3709
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %25, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0)) #8, !dbg !3711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %6, metadata !1187, metadata !DIExpression()) #10, !dbg !3712
  %49 = sext i32 %6 to i64, !dbg !3714
  %50 = tail call i8* @halide_int64_to_string(i8* %48, i8* %25, i64 %49, i32 1) #8, !dbg !3715
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3716
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3716
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !3718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %7, metadata !1187, metadata !DIExpression()) #10, !dbg !3719
  %52 = sext i32 %7 to i64, !dbg !3721
  %53 = tail call i8* @halide_int64_to_string(i8* %51, i8* %25, i64 %52, i32 1) #8, !dbg !3722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3723
  %54 = tail call i8* @halide_string_to_string(i8* %53, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %8, metadata !1187, metadata !DIExpression()) #10, !dbg !3726
  %55 = sext i32 %8 to i64, !dbg !3728
  %56 = tail call i8* @halide_int64_to_string(i8* %54, i8* %25, i64 %55, i32 1) #8, !dbg !3729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3730
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3733
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %25, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0)) #8, !dbg !3735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %9, metadata !1187, metadata !DIExpression()) #10, !dbg !3736
  %59 = sext i32 %9 to i64, !dbg !3738
  %60 = tail call i8* @halide_int64_to_string(i8* %58, i8* %25, i64 %59, i32 1) #8, !dbg !3739
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3740
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3740
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3742
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3743
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3743
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %25, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0)) #8, !dbg !3745
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %13, metadata !1187, metadata !DIExpression()) #10, !dbg !3746
  %63 = sext i32 %13 to i64, !dbg !3748
  %64 = tail call i8* @halide_int64_to_string(i8* %62, i8* %25, i64 %63, i32 1) #8, !dbg !3749
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3750
  %65 = tail call i8* @halide_string_to_string(i8* %64, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3752
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3753
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3753
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %25, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i32 0, i32 0)) #8, !dbg !3755
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %15, metadata !1187, metadata !DIExpression()) #10, !dbg !3756
  %67 = sext i32 %15 to i64, !dbg !3758
  %68 = tail call i8* @halide_int64_to_string(i8* %66, i8* %25, i64 %67, i32 1) #8, !dbg !3759
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3760
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %25, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3762
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3763
  %70 = tail call i8* @halide_string_to_string(i8* %69, i8* %25, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0)) #8, !dbg !3765
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %16, metadata !1187, metadata !DIExpression()) #10, !dbg !3766
  %71 = sext i32 %16 to i64, !dbg !3768
  %72 = tail call i8* @halide_int64_to_string(i8* %70, i8* %25, i64 %71, i32 1) #8, !dbg !3769
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !3770
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3770
  %73 = tail call i8* @halide_string_to_string(i8* %72, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !3772
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !3773
  br i1 %21, label %74, label %75, !dbg !3775

74:                                               ; preds = %35
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3776
  br label %82, !dbg !3777

75:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !3778
  %76 = ptrtoint i8* %73 to i32, !dbg !3780
  %77 = ptrtoint i8* %20 to i32, !dbg !3780
  %78 = add i32 %76, 1, !dbg !3780
  %79 = sub i32 %78, %77, !dbg !3781
  %80 = sext i32 %79 to i64, !dbg !3782
  %81 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %80) #8, !dbg !3783
  tail call void @halide_print(i8* %0, i8* nonnull %20) #8, !dbg !3784
  br label %82

82:                                               ; preds = %75, %74
  call void @free(i8* %20) #8, !dbg !3785
  %83 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !3786, !tbaa !1386, !range !1375
  %84 = icmp eq i8 %83, 0, !dbg !3786
  br i1 %84, label %85, label %100, !dbg !3788

85:                                               ; preds = %82
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3789
  %86 = call i8* @malloc(i32 1024) #8, !dbg !3792
  %87 = icmp eq i8* %86, null, !dbg !3793
  br i1 %87, label %88, label %90, !dbg !3794

88:                                               ; preds = %85
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3795
  %89 = call i8* @halide_string_to_string(i8* %86, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !3797
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3798
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3800
  br label %99, !dbg !3801

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %86, i32 1023, !dbg !3802
  store i8 0, i8* %91, align 1, !dbg !3803, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3795
  %92 = call i8* @halide_string_to_string(i8* nonnull %86, i8* nonnull %91, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !3797
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3804
  %93 = ptrtoint i8* %92 to i32, !dbg !3806
  %94 = ptrtoint i8* %86 to i32, !dbg !3806
  %95 = add i32 %93, 1, !dbg !3806
  %96 = sub i32 %95, %94, !dbg !3807
  %97 = sext i32 %96 to i64, !dbg !3808
  %98 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %86, i64 %97) #8, !dbg !3809
  call void @halide_error(i8* %0, i8* nonnull %86) #8, !dbg !3810
  br label %99

99:                                               ; preds = %90, %88
  call void @free(i8* %86) #8, !dbg !3811
  br label %390, !dbg !3812

100:                                              ; preds = %82
  call void @llvm.dbg.value(metadata i8* %1, metadata !3631, metadata !DIExpression()), !dbg !3650
  %101 = icmp eq i8* %1, null, !dbg !3813
  br i1 %101, label %102, label %117, !dbg !3815

102:                                              ; preds = %100
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3816
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3816
  %103 = call i8* @malloc(i32 1024) #8, !dbg !3819
  %104 = icmp eq i8* %103, null, !dbg !3820
  br i1 %104, label %105, label %107, !dbg !3821

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3822
  %106 = call i8* @halide_string_to_string(i8* %103, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i32 0, i32 0)) #8, !dbg !3824
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3825
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3827
  br label %116, !dbg !3828

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, i8* %103, i32 1023, !dbg !3829
  store i8 0, i8* %108, align 1, !dbg !3830, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3822
  %109 = call i8* @halide_string_to_string(i8* nonnull %103, i8* nonnull %108, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i32 0, i32 0)) #8, !dbg !3824
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3825
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3831
  %110 = ptrtoint i8* %109 to i32, !dbg !3833
  %111 = ptrtoint i8* %103 to i32, !dbg !3833
  %112 = add i32 %110, 1, !dbg !3833
  %113 = sub i32 %112, %111, !dbg !3834
  %114 = sext i32 %113 to i64, !dbg !3835
  %115 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %103, i64 %114) #8, !dbg !3836
  call void @halide_error(i8* %0, i8* nonnull %103) #8, !dbg !3837
  br label %116

116:                                              ; preds = %107, %105
  call void @free(i8* %103) #8, !dbg !3838
  br label %390, !dbg !3839

117:                                              ; preds = %100
  %118 = bitcast i8* %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, !dbg !3840
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %118, metadata !3631, metadata !DIExpression()), !dbg !3650
  %119 = call %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* @_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE(i8* %2, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* nonnull %118) #9, !dbg !3841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %119, metadata !3632, metadata !DIExpression()), !dbg !3650
  %120 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %119, null, !dbg !3842
  br i1 %120, label %121, label %145, !dbg !3844

121:                                              ; preds = %117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3845
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3845
  %122 = call i8* @malloc(i32 1024) #8, !dbg !3848
  %123 = icmp eq i8* %122, null, !dbg !3849
  br i1 %123, label %126, label %124, !dbg !3850

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, i8* %122, i32 1023, !dbg !3851
  store i8 0, i8* %125, align 1, !dbg !3852, !tbaa !712
  br label %126, !dbg !3853

126:                                              ; preds = %121, %124
  %127 = phi i8* [ %125, %124 ], [ null, %121 ], !dbg !3854
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3855
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3855
  %128 = call i8* @halide_string_to_string(i8* %122, i8* %127, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i32 0, i32 0)) #8, !dbg !3857
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #10, !dbg !3858
  br i1 %30, label %129, label %131, !dbg !3860

129:                                              ; preds = %126
  %130 = call i8* @halide_string_to_string(i8* %128, i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !3861
  br label %133, !dbg !3862

131:                                              ; preds = %126
  %132 = call i8* @halide_string_to_string(i8* %128, i8* %127, i8* nonnull %2) #8, !dbg !3863
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ], !dbg !3864
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !3865
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !3865
  %135 = call i8* @halide_string_to_string(i8* %134, i8* %127, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0)) #8, !dbg !3867
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !3868
  br i1 %123, label %136, label %137, !dbg !3870

136:                                              ; preds = %133
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3871
  br label %144, !dbg !3872

137:                                              ; preds = %133
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !3873
  %138 = ptrtoint i8* %135 to i32, !dbg !3875
  %139 = ptrtoint i8* %122 to i32, !dbg !3875
  %140 = add i32 %138, 1, !dbg !3875
  %141 = sub i32 %140, %139, !dbg !3876
  %142 = sext i32 %141 to i64, !dbg !3877
  %143 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %122, i64 %142) #8, !dbg !3878
  call void @halide_error(i8* %0, i8* nonnull %122) #8, !dbg !3879
  br label %144

144:                                              ; preds = %137, %136
  call void @free(i8* %122) #8, !dbg !3880
  br label %390, !dbg !3881

145:                                              ; preds = %117
  %146 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 28), align 4, !dbg !3882, !tbaa !1414
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo", %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %119, i32 0, i32 1, !dbg !3883
  %148 = load i32, i32* %147, align 4, !dbg !3883, !tbaa !1664
  call void %146(i32 %148) #8, !dbg !3884
  %149 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.117, i32 0, i32 0)) #9, !dbg !3885
  br i1 %149, label %390, label %150, !dbg !3887

150:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i32 0, metadata !3633, metadata !DIExpression()), !dbg !3650
  %151 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 0, i32 1, !dbg !3888
  %152 = load i8, i8* %151, align 1, !dbg !3888, !tbaa !793
  %153 = icmp eq i8 %152, 0, !dbg !3889
  br i1 %153, label %361, label %154, !dbg !3890

154:                                              ; preds = %150
  %155 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18 to i8*
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 3
  %157 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 4
  %158 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 0
  %159 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 1
  %160 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 2
  %161 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, i32 0, i32 5, i32 0
  br label %162, !dbg !3890

162:                                              ; preds = %154, %355
  %163 = phi i8* [ %151, %154 ], [ %358, %355 ]
  %164 = phi %struct.halide_type_t* [ %10, %154 ], [ %357, %355 ]
  %165 = phi i32 [ 0, %154 ], [ %356, %355 ]
  call void @llvm.dbg.value(metadata i32 %165, metadata !3633, metadata !DIExpression()), !dbg !3650
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %155) #10, !dbg !3891
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !673, metadata !DIExpression()) #10, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !3892
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !3892
  store i8* %0, i8** %156, align 4, !dbg !3894, !tbaa !1118
  store i8 1, i8* %157, align 4, !dbg !3895, !tbaa !1121
  %166 = call i8* @malloc(i32 1024) #8, !dbg !3896
  store i8* %166, i8** %158, align 4, !dbg !3897, !tbaa !1125
  store i8* %166, i8** %159, align 4, !dbg !3898, !tbaa !1359
  %167 = icmp eq i8* %166, null, !dbg !3899
  br i1 %167, label %170, label %168, !dbg !3900

168:                                              ; preds = %162
  %169 = getelementptr inbounds i8, i8* %166, i32 1023, !dbg !3901
  store i8* %169, i8** %160, align 4, !dbg !3902, !tbaa !1278
  store i8 0, i8* %169, align 1, !dbg !3903, !tbaa !712
  br label %171, !dbg !3904

170:                                              ; preds = %162
  store i8* null, i8** %160, align 4, !dbg !3905, !tbaa !1278
  br label %171

171:                                              ; preds = %168, %170
  %172 = phi i8* [ %169, %168 ], [ null, %170 ], !dbg !3906
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !690, metadata !DIExpression()) #10, !dbg !3908
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3908
  %173 = call i8* @halide_string_to_string(i8* %166, i8* %172, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0)) #8, !dbg !3909
  store i8* %173, i8** %159, align 4, !dbg !3910, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1184, metadata !DIExpression()) #10, !dbg !3911
  call void @llvm.dbg.value(metadata i32 %165, metadata !1187, metadata !DIExpression()) #10, !dbg !3911
  %174 = load i8*, i8** %160, align 4, !dbg !3913, !tbaa !1278
  %175 = zext i32 %165 to i64, !dbg !3914
  %176 = call i8* @halide_int64_to_string(i8* %173, i8* %174, i64 %175, i32 1) #8, !dbg !3915
  store i8* %176, i8** %159, align 4, !dbg !3916, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !690, metadata !DIExpression()) #10, !dbg !3917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3917
  %177 = load i8*, i8** %160, align 4, !dbg !3919, !tbaa !1278
  %178 = call i8* @halide_string_to_string(i8* %176, i8* %177, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !3920
  store i8* %178, i8** %159, align 4, !dbg !3921, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1306, metadata !DIExpression()) #10, !dbg !3922
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %164, metadata !1309, metadata !DIExpression()) #10, !dbg !3922
  %179 = load i8*, i8** %160, align 4, !dbg !3924, !tbaa !1278
  %180 = call i8* @halide_type_to_string(i8* %178, i8* %179, %struct.halide_type_t* nonnull %164) #8, !dbg !3925
  store i8* %180, i8** %159, align 4, !dbg !3926, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !690, metadata !DIExpression()) #10, !dbg !3927
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3927
  %181 = load i8*, i8** %160, align 4, !dbg !3929, !tbaa !1278
  %182 = call i8* @halide_string_to_string(i8* %180, i8* %181, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0)) #8, !dbg !3930
  store i8* %182, i8** %159, align 4, !dbg !3931, !tbaa !1359
  %183 = getelementptr inbounds i8*, i8** %11, i32 %165, !dbg !3932
  %184 = bitcast i8** %183 to i8***, !dbg !3932
  %185 = load i8**, i8*** %184, align 4, !dbg !3932, !tbaa !977
  %186 = load i8*, i8** %185, align 4, !dbg !3933, !tbaa !977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1169, metadata !DIExpression()) #10, !dbg !3934
  call void @llvm.dbg.value(metadata i8* %186, metadata !1172, metadata !DIExpression()) #10, !dbg !3934
  %187 = load i8*, i8** %160, align 4, !dbg !3936, !tbaa !1278
  %188 = call i8* @halide_pointer_to_string(i8* %182, i8* %187, i8* %186) #8, !dbg !3937
  store i8* %188, i8** %159, align 4, !dbg !3938, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !690, metadata !DIExpression()) #10, !dbg !3939
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3939
  %189 = load i8*, i8** %160, align 4, !dbg !3941, !tbaa !1278
  %190 = call i8* @halide_string_to_string(i8* %188, i8* %189, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0)) #8, !dbg !3942
  store i8* %190, i8** %159, align 4, !dbg !3943, !tbaa !1359
  %191 = getelementptr inbounds i8, i8* %12, i32 %165, !dbg !3944
  %192 = load i8, i8* %191, align 1, !dbg !3944, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !1184, metadata !DIExpression()) #10, !dbg !3945
  call void @llvm.dbg.value(metadata i8 %192, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #10, !dbg !3945
  %193 = load i8*, i8** %160, align 4, !dbg !3947, !tbaa !1278
  %194 = sext i8 %192 to i64, !dbg !3948
  %195 = call i8* @halide_int64_to_string(i8* %190, i8* %193, i64 %194, i32 1) #8, !dbg !3949
  store i8* %195, i8** %159, align 4, !dbg !3950, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !690, metadata !DIExpression()) #10, !dbg !3951
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !3951
  %196 = load i8*, i8** %160, align 4, !dbg !3953, !tbaa !1278
  %197 = call i8* @halide_string_to_string(i8* %195, i8* %196, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !3954
  store i8* %197, i8** %159, align 4, !dbg !3955, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %18, metadata !699, metadata !DIExpression()) #10, !dbg !3956
  %198 = load i8*, i8** %158, align 4, !dbg !3958, !tbaa !1125
  %199 = icmp eq i8* %198, null, !dbg !3958
  %200 = load i8*, i8** %156, align 4, !dbg !3959, !tbaa !1118
  br i1 %199, label %201, label %202, !dbg !3960

201:                                              ; preds = %171
  call void @halide_error(i8* %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3961
  br label %211, !dbg !3962

202:                                              ; preds = %171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !3963
  %203 = ptrtoint i8* %197 to i32, !dbg !3965
  %204 = ptrtoint i8* %198 to i32, !dbg !3965
  %205 = add i32 %203, 1, !dbg !3965
  %206 = sub i32 %205, %204, !dbg !3966
  %207 = sext i32 %206 to i64, !dbg !3967
  %208 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %200, i8* nonnull %198, i64 %207) #8, !dbg !3968
  %209 = load i8*, i8** %156, align 4, !dbg !3969, !tbaa !1118
  %210 = load i8*, i8** %158, align 4, !dbg !3970, !tbaa !1125
  call void @halide_print(i8* %209, i8* %210) #8, !dbg !3971
  br label %211

211:                                              ; preds = %202, %201
  %212 = load i8, i8* %157, align 4, !dbg !3972, !tbaa !1121, !range !1375
  %213 = icmp eq i8 %212, 0, !dbg !3972
  %214 = load i8*, i8** %158, align 4
  %215 = icmp eq i8* %214, %161
  %216 = or i1 %213, %215, !dbg !3973
  br i1 %216, label %218, label %217, !dbg !3973

217:                                              ; preds = %211
  call void @free(i8* %214) #8, !dbg !3974
  br label %218, !dbg !3975

218:                                              ; preds = %211, %217
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %155) #10, !dbg !3891
  %219 = load i8, i8* %191, align 1, !dbg !3976, !tbaa !712
  %220 = icmp eq i8 %219, 0, !dbg !3977
  br i1 %220, label %221, label %347, !dbg !3978

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %164, i32 0, i32 0, !dbg !3979
  %223 = load i8, i8* %222, align 2, !dbg !3979, !tbaa !3980
  switch i8 %223, label %328 [
    i8 0, label %224
    i8 1, label %262
    i8 2, label %300
  ], !dbg !3981

224:                                              ; preds = %221
  %225 = load i8, i8* %163, align 1, !dbg !3982, !tbaa !793
  switch i8 %225, label %239 [
    i8 8, label %226
    i8 16, label %230
    i8 32, label %235
  ], !dbg !3984

226:                                              ; preds = %224
  %227 = load i8*, i8** %183, align 4, !dbg !3985, !tbaa !977
  %228 = load i8, i8* %227, align 1, !dbg !3987, !tbaa !712
  %229 = sext i8 %228 to i32, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %229, metadata !3634, metadata !DIExpression()), !dbg !3988
  br label %258, !dbg !3989

230:                                              ; preds = %224
  %231 = bitcast i8** %183 to i16**, !dbg !3990
  %232 = load i16*, i16** %231, align 4, !dbg !3990, !tbaa !977
  %233 = load i16, i16* %232, align 2, !dbg !3993, !tbaa !2510
  %234 = sext i16 %233 to i32, !dbg !3993
  call void @llvm.dbg.value(metadata i32 %234, metadata !3634, metadata !DIExpression()), !dbg !3988
  br label %258, !dbg !3994

235:                                              ; preds = %224
  %236 = bitcast i8** %183 to i32**, !dbg !3995
  %237 = load i32*, i32** %236, align 4, !dbg !3995, !tbaa !977
  %238 = load i32, i32* %237, align 4, !dbg !3998, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %238, metadata !3634, metadata !DIExpression()), !dbg !3988
  br label %258

239:                                              ; preds = %224
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !3999
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !3999
  %240 = call i8* @malloc(i32 1024) #8, !dbg !4002
  %241 = icmp eq i8* %240, null, !dbg !4003
  br i1 %241, label %244, label %242, !dbg !4004

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %240, i32 1023, !dbg !4005
  store i8 0, i8* %243, align 1, !dbg !4006, !tbaa !712
  br label %244, !dbg !4007

244:                                              ; preds = %239, %242
  %245 = phi i8* [ %243, %242 ], [ null, %239 ], !dbg !4008
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4009
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4009
  %246 = call i8* @halide_string_to_string(i8* %240, i8* %245, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4011
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !4012, metadata !DIExpression()) #10, !dbg !4016
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %164, metadata !4015, metadata !DIExpression()) #10, !dbg !4016
  %247 = call i8* @halide_type_to_string(i8* %246, i8* %245, %struct.halide_type_t* nonnull %164) #8, !dbg !4018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4019
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4019
  %248 = call i8* @halide_string_to_string(i8* %247, i8* %245, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4022
  br i1 %241, label %249, label %250, !dbg !4024

249:                                              ; preds = %244
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4025
  br label %257, !dbg !4026

250:                                              ; preds = %244
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4027
  %251 = ptrtoint i8* %248 to i32, !dbg !4029
  %252 = ptrtoint i8* %240 to i32, !dbg !4029
  %253 = add i32 %251, 1, !dbg !4029
  %254 = sub i32 %253, %252, !dbg !4030
  %255 = sext i32 %254 to i64, !dbg !4031
  %256 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %240, i64 %255) #8, !dbg !4032
  call void @halide_error(i8* %0, i8* nonnull %240) #8, !dbg !4033
  br label %257

257:                                              ; preds = %250, %249
  call void @free(i8* %240) #8, !dbg !4034
  br label %390, !dbg !4035

258:                                              ; preds = %230, %235, %226
  %259 = phi i32 [ %229, %226 ], [ %234, %230 ], [ %238, %235 ], !dbg !4036
  call void @llvm.dbg.value(metadata i32 %259, metadata !3634, metadata !DIExpression()), !dbg !3988
  %260 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 24), align 4, !dbg !4037, !tbaa !1410
  call void %260(i32 %165, i32 %259) #8, !dbg !4038
  %261 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.123, i32 0, i32 0)) #9, !dbg !4039
  br i1 %261, label %390, label %355, !dbg !4041

262:                                              ; preds = %221
  %263 = load i8, i8* %163, align 1, !dbg !4042, !tbaa !793
  switch i8 %263, label %277 [
    i8 8, label %264
    i8 1, label %264
    i8 16, label %268
    i8 32, label %273
  ], !dbg !4044

264:                                              ; preds = %262, %262
  %265 = load i8*, i8** %183, align 4, !dbg !4045, !tbaa !977
  %266 = load i8, i8* %265, align 1, !dbg !4047, !tbaa !712
  %267 = zext i8 %266 to i32, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %267, metadata !3640, metadata !DIExpression()), !dbg !4048
  br label %296, !dbg !4049

268:                                              ; preds = %262
  %269 = bitcast i8** %183 to i16**, !dbg !4050
  %270 = load i16*, i16** %269, align 4, !dbg !4050, !tbaa !977
  %271 = load i16, i16* %270, align 2, !dbg !4053, !tbaa !2510
  %272 = zext i16 %271 to i32, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %272, metadata !3640, metadata !DIExpression()), !dbg !4048
  br label %296, !dbg !4054

273:                                              ; preds = %262
  %274 = bitcast i8** %183 to i32**, !dbg !4055
  %275 = load i32*, i32** %274, align 4, !dbg !4055, !tbaa !977
  %276 = load i32, i32* %275, align 4, !dbg !4058, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %276, metadata !3640, metadata !DIExpression()), !dbg !4048
  br label %296

277:                                              ; preds = %262
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4059
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4059
  %278 = call i8* @malloc(i32 1024) #8, !dbg !4062
  %279 = icmp eq i8* %278, null, !dbg !4063
  br i1 %279, label %282, label %280, !dbg !4064

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, i8* %278, i32 1023, !dbg !4065
  store i8 0, i8* %281, align 1, !dbg !4066, !tbaa !712
  br label %282, !dbg !4067

282:                                              ; preds = %277, %280
  %283 = phi i8* [ %281, %280 ], [ null, %277 ], !dbg !4068
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4069
  %284 = call i8* @halide_string_to_string(i8* %278, i8* %283, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4071
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !4012, metadata !DIExpression()) #10, !dbg !4072
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %164, metadata !4015, metadata !DIExpression()) #10, !dbg !4072
  %285 = call i8* @halide_type_to_string(i8* %284, i8* %283, %struct.halide_type_t* nonnull %164) #8, !dbg !4074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4075
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4075
  %286 = call i8* @halide_string_to_string(i8* %285, i8* %283, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4077
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4078
  br i1 %279, label %287, label %288, !dbg !4080

287:                                              ; preds = %282
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4081
  br label %295, !dbg !4082

288:                                              ; preds = %282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4083
  %289 = ptrtoint i8* %286 to i32, !dbg !4085
  %290 = ptrtoint i8* %278 to i32, !dbg !4085
  %291 = add i32 %289, 1, !dbg !4085
  %292 = sub i32 %291, %290, !dbg !4086
  %293 = sext i32 %292 to i64, !dbg !4087
  %294 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %278, i64 %293) #8, !dbg !4088
  call void @halide_error(i8* %0, i8* nonnull %278) #8, !dbg !4089
  br label %295

295:                                              ; preds = %288, %287
  call void @free(i8* %278) #8, !dbg !4090
  br label %390, !dbg !4091

296:                                              ; preds = %268, %273, %264
  %297 = phi i32 [ %267, %264 ], [ %272, %268 ], [ %276, %273 ], !dbg !4092
  call void @llvm.dbg.value(metadata i32 %297, metadata !3640, metadata !DIExpression()), !dbg !4048
  %298 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 25), align 4, !dbg !4093, !tbaa !1411
  call void %298(i32 %165, i32 %297) #8, !dbg !4094
  %299 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.124, i32 0, i32 0)) #9, !dbg !4095
  br i1 %299, label %390, label %355, !dbg !4097

300:                                              ; preds = %221
  %301 = load i8, i8* %163, align 1, !dbg !4098, !tbaa !793
  %302 = icmp eq i8 %301, 32, !dbg !4100
  br i1 %302, label %303, label %309, !dbg !4101

303:                                              ; preds = %300
  %304 = bitcast i8** %183 to float**, !dbg !4102
  %305 = load float*, float** %304, align 4, !dbg !4102, !tbaa !977
  %306 = load float, float* %305, align 4, !dbg !4104, !tbaa !4105
  call void @llvm.dbg.value(metadata float %306, metadata !3643, metadata !DIExpression()), !dbg !4107
  %307 = load void (i32, float)*, void (i32, float)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 26), align 4, !dbg !4108, !tbaa !1412
  call void %307(i32 %165, float %306) #8, !dbg !4109
  %308 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i32 0, i32 0)) #9, !dbg !4110
  br i1 %308, label %390, label %355, !dbg !4112

309:                                              ; preds = %300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4113
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4113
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4113
  %310 = call i8* @malloc(i32 1024) #8, !dbg !4116
  %311 = icmp eq i8* %310, null, !dbg !4117
  br i1 %311, label %314, label %312, !dbg !4118

312:                                              ; preds = %309
  %313 = getelementptr inbounds i8, i8* %310, i32 1023, !dbg !4119
  store i8 0, i8* %313, align 1, !dbg !4120, !tbaa !712
  br label %314, !dbg !4121

314:                                              ; preds = %309, %312
  %315 = phi i8* [ %313, %312 ], [ null, %309 ], !dbg !4122
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4123
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4123
  %316 = call i8* @halide_string_to_string(i8* %310, i8* %315, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4125
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !4012, metadata !DIExpression()) #10, !dbg !4126
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %164, metadata !4015, metadata !DIExpression()) #10, !dbg !4126
  %317 = call i8* @halide_type_to_string(i8* %316, i8* %315, %struct.halide_type_t* nonnull %164) #8, !dbg !4128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4129
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4129
  %318 = call i8* @halide_string_to_string(i8* %317, i8* %315, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4131
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4132
  br i1 %311, label %319, label %320, !dbg !4134

319:                                              ; preds = %314
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4135
  br label %327, !dbg !4136

320:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4137
  %321 = ptrtoint i8* %318 to i32, !dbg !4139
  %322 = ptrtoint i8* %310 to i32, !dbg !4139
  %323 = add i32 %321, 1, !dbg !4139
  %324 = sub i32 %323, %322, !dbg !4140
  %325 = sext i32 %324 to i64, !dbg !4141
  %326 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %310, i64 %325) #8, !dbg !4142
  call void @halide_error(i8* %0, i8* nonnull %310) #8, !dbg !4143
  br label %327

327:                                              ; preds = %320, %319
  call void @free(i8* %310) #8, !dbg !4144
  br label %390, !dbg !4145

328:                                              ; preds = %221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4146
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4146
  %329 = call i8* @malloc(i32 1024) #8, !dbg !4149
  %330 = icmp eq i8* %329, null, !dbg !4150
  br i1 %330, label %333, label %331, !dbg !4151

331:                                              ; preds = %328
  %332 = getelementptr inbounds i8, i8* %329, i32 1023, !dbg !4152
  store i8 0, i8* %332, align 1, !dbg !4153, !tbaa !712
  br label %333, !dbg !4154

333:                                              ; preds = %328, %331
  %334 = phi i8* [ %332, %331 ], [ null, %328 ], !dbg !4155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4156
  %335 = call i8* @halide_string_to_string(i8* %329, i8* %334, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !4012, metadata !DIExpression()) #10, !dbg !4159
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %164, metadata !4015, metadata !DIExpression()) #10, !dbg !4159
  %336 = call i8* @halide_type_to_string(i8* %335, i8* %334, %struct.halide_type_t* nonnull %164) #8, !dbg !4161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4162
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4162
  %337 = call i8* @halide_string_to_string(i8* %336, i8* %334, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4165
  br i1 %330, label %338, label %339, !dbg !4167

338:                                              ; preds = %333
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4168
  br label %346, !dbg !4169

339:                                              ; preds = %333
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4170
  %340 = ptrtoint i8* %337 to i32, !dbg !4172
  %341 = ptrtoint i8* %329 to i32, !dbg !4172
  %342 = add i32 %340, 1, !dbg !4172
  %343 = sub i32 %342, %341, !dbg !4173
  %344 = sext i32 %343 to i64, !dbg !4174
  %345 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %329, i64 %344) #8, !dbg !4175
  call void @halide_error(i8* %0, i8* nonnull %329) #8, !dbg !4176
  br label %346

346:                                              ; preds = %339, %338
  call void @free(i8* %329) #8, !dbg !4177
  br label %390, !dbg !4178

347:                                              ; preds = %218
  %348 = bitcast i8** %183 to %struct.halide_buffer_t**, !dbg !4179
  %349 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %348, align 4, !dbg !4179, !tbaa !977
  %350 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %349, i32 0, i32 0, !dbg !4180
  %351 = load i64, i64* %350, align 8, !dbg !4180, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %351, metadata !3646, metadata !DIExpression()), !dbg !4181
  %352 = trunc i64 %351 to i32, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %352, metadata !3648, metadata !DIExpression()), !dbg !4181
  %353 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 3), align 4, !dbg !4183, !tbaa !1390
  call void %353(i32 37074, i32 %165, i32 %352) #8, !dbg !4184
  %354 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i32 0, i32 0)) #9, !dbg !4185
  br i1 %354, label %390, label %355

355:                                              ; preds = %303, %296, %258, %347
  %356 = add nuw nsw i32 %165, 1, !dbg !4187
  call void @llvm.dbg.value(metadata i32 %356, metadata !3633, metadata !DIExpression()), !dbg !3650
  %357 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 %356, !dbg !4188
  %358 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i32 %356, i32 1, !dbg !3888
  %359 = load i8, i8* %358, align 1, !dbg !3888, !tbaa !793
  %360 = icmp eq i8 %359, 0, !dbg !3889
  br i1 %360, label %361, label %162, !dbg !3890, !llvm.loop !4189

361:                                              ; preds = %355, %150
  %362 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 11), align 4, !dbg !4191, !tbaa !1398
  call void %362(i32 %3, i32 %4, i32 %5) #8, !dbg !4192
  %363 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.127, i32 0, i32 0)) #9, !dbg !4193
  br i1 %363, label %390, label %364, !dbg !4195

364:                                              ; preds = %361
  %365 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 22), align 4, !dbg !4196, !tbaa !1408
  call void %365(i32 1) #8, !dbg !4197
  %366 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.128, i32 0, i32 0)) #9, !dbg !4198
  br i1 %366, label %390, label %367, !dbg !4200

367:                                              ; preds = %364
  %368 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %368, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4202
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4202
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4202
  %369 = call i8* @malloc(i32 1024) #8, !dbg !4204
  %370 = icmp eq i8* %369, null, !dbg !4205
  br i1 %370, label %373, label %371, !dbg !4206

371:                                              ; preds = %367
  %372 = getelementptr inbounds i8, i8* %369, i32 1023, !dbg !4207
  store i8 0, i8* %372, align 1, !dbg !4208, !tbaa !712
  br label %373, !dbg !4209

373:                                              ; preds = %367, %371
  %374 = phi i8* [ %372, %371 ], [ null, %367 ], !dbg !4210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4211
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4211
  %375 = call i8* @halide_string_to_string(i8* %369, i8* %374, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !4213
  %376 = sub i64 %368, %19, !dbg !4214
  %377 = uitofp i64 %376 to double, !dbg !4215
  %378 = fdiv double %377, 1.000000e+06, !dbg !4216
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !4217
  call void @llvm.dbg.value(metadata double %378, metadata !1700, metadata !DIExpression()) #10, !dbg !4217
  %379 = call i8* @halide_double_to_string(i8* %375, i8* %374, double %378, i32 1) #8, !dbg !4219
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4220
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4220
  %380 = call i8* @halide_string_to_string(i8* %379, i8* %374, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0)) #8, !dbg !4222
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4223
  br i1 %370, label %381, label %382, !dbg !4225

381:                                              ; preds = %373
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4226
  br label %389, !dbg !4227

382:                                              ; preds = %373
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4228
  %383 = ptrtoint i8* %380 to i32, !dbg !4230
  %384 = ptrtoint i8* %369 to i32, !dbg !4230
  %385 = add i32 %383, 1, !dbg !4230
  %386 = sub i32 %385, %384, !dbg !4231
  %387 = sext i32 %386 to i64, !dbg !4232
  %388 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %369, i64 %387) #8, !dbg !4233
  call void @halide_print(i8* %0, i8* nonnull %369) #8, !dbg !4234
  br label %389

389:                                              ; preds = %382, %381
  call void @free(i8* %369) #8, !dbg !4235
  br label %390

390:                                              ; preds = %347, %258, %296, %303, %116, %346, %389, %257, %295, %327, %361, %364, %145, %144, %99
  %391 = phi i32 [ -1, %99 ], [ -1, %116 ], [ -1, %144 ], [ -1, %145 ], [ -1, %346 ], [ 0, %389 ], [ -1, %257 ], [ -1, %295 ], [ -1, %327 ], [ -1, %361 ], [ -1, %364 ], [ -1, %303 ], [ -1, %296 ], [ -1, %258 ], [ -1, %347 ], !dbg !3650
  ret i32 %391, !dbg !4236
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4239, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4240, metadata !DIExpression()), !dbg !4243
  %3 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4244
  call void @llvm.dbg.value(metadata i64 %3, metadata !4241, metadata !DIExpression()), !dbg !4243
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 0), align 4, !dbg !4245, !tbaa !1386, !range !1375
  %5 = icmp eq i8 %4, 0, !dbg !4245
  br i1 %5, label %6, label %20, !dbg !4247

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4248
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4248
  %7 = tail call i8* @malloc(i32 1024) #8, !dbg !4251
  %8 = icmp eq i8* %7, null, !dbg !4252
  br i1 %8, label %9, label %11, !dbg !4253

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4254
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i32 0, i32 0)) #8, !dbg !4256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4257
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4259
  br label %43, !dbg !4260

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !4261
  store i8 0, i8* %12, align 1, !dbg !4262, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4254
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.130, i32 0, i32 0)) #8, !dbg !4256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4263
  %14 = ptrtoint i8* %13 to i32, !dbg !4265
  %15 = ptrtoint i8* %7 to i32, !dbg !4265
  %16 = add i32 %14, 1, !dbg !4265
  %17 = sub i32 %16, %15, !dbg !4266
  %18 = sext i32 %17 to i64, !dbg !4267
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %18) #8, !dbg !4268
  tail call void @halide_error(i8* %0, i8* nonnull %7) #8, !dbg !4269
  br label %43

20:                                               ; preds = %2
  %21 = load void ()*, void ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 12), align 4, !dbg !4270, !tbaa !1399
  tail call void %21() #8, !dbg !4271
  %22 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %22, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4273
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4273
  %23 = tail call i8* @malloc(i32 1024) #8, !dbg !4275
  %24 = icmp eq i8* %23, null, !dbg !4276
  br i1 %24, label %27, label %25, !dbg !4277

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %23, i32 1023, !dbg !4278
  store i8 0, i8* %26, align 1, !dbg !4279, !tbaa !712
  br label %27, !dbg !4280

27:                                               ; preds = %20, %25
  %28 = phi i8* [ %26, %25 ], [ null, %20 ], !dbg !4281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4282
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4282
  %29 = tail call i8* @halide_string_to_string(i8* %23, i8* %28, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !4284
  %30 = sub i64 %22, %3, !dbg !4285
  %31 = uitofp i64 %30 to double, !dbg !4286
  %32 = fdiv double %31, 1.000000e+06, !dbg !4287
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !4288
  call void @llvm.dbg.value(metadata double %32, metadata !1700, metadata !DIExpression()) #10, !dbg !4288
  %33 = tail call i8* @halide_double_to_string(i8* %29, i8* %28, double %32, i32 1) #8, !dbg !4290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4291
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %28, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i32 0, i32 0)) #8, !dbg !4293
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4294
  br i1 %24, label %35, label %36, !dbg !4296

35:                                               ; preds = %27
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4297
  br label %43, !dbg !4298

36:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4299
  %37 = ptrtoint i8* %34 to i32, !dbg !4301
  %38 = ptrtoint i8* %23 to i32, !dbg !4301
  %39 = add i32 %37, 1, !dbg !4301
  %40 = sub i32 %39, %38, !dbg !4302
  %41 = sext i32 %40 to i64, !dbg !4303
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %41) #8, !dbg !4304
  tail call void @halide_print(i8* %0, i8* nonnull %23) #8, !dbg !4305
  br label %43

43:                                               ; preds = %35, %36, %9, %11
  %44 = phi i8* [ %7, %11 ], [ %7, %9 ], [ %23, %36 ], [ %23, %35 ]
  %45 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 0, %36 ], [ 0, %35 ], !dbg !4243
  tail call void @free(i8* %44) #8, !dbg !4243
  ret i32 %45, !dbg !4306
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @get_kernel_name(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !4307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4312, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i8* %1, metadata !4313, metadata !DIExpression()), !dbg !4317
  %3 = ptrtoint i8* %1 to i32, !dbg !4318
  %4 = ptrtoint i8* %0 to i32, !dbg !4318
  %5 = sub i32 %3, %4, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %5, metadata !4314, metadata !DIExpression()), !dbg !4317
  %6 = add i32 %5, 1, !dbg !4319
  %7 = tail call i8* @malloc(i32 %6) #8, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %7, metadata !4316, metadata !DIExpression()), !dbg !4317
  %8 = tail call i8* @memcpy(i8* %7, i8* %0, i32 %5) #8, !dbg !4321
  %9 = getelementptr inbounds i8, i8* %7, i32 %5, !dbg !4322
  store i8 0, i8* %9, align 1, !dbg !4323, !tbaa !712
  ret i8* %7, !dbg !4324
}

declare !dbg !4325 dso_local i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_openglcompute_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 !dbg !4328 {
  %5 = alloca i8*, align 4
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
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4332, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8** %1, metadata !4333, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %2, metadata !4334, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %3, metadata !4335, metadata !DIExpression()), !dbg !4398
  %17 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %17, metadata !4336, metadata !DIExpression()), !dbg !4398
  %18 = tail call i32 @_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv(i8* %0) #9, !dbg !4400
  call void @llvm.dbg.value(metadata i32 %18, metadata !4337, metadata !DIExpression()), !dbg !4401
  %19 = icmp eq i32 %18, 0, !dbg !4402
  br i1 %19, label %20, label %323

20:                                               ; preds = %4
  %21 = bitcast i8** %1 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**, !dbg !4403
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %21, metadata !4339, metadata !DIExpression()), !dbg !4398
  %22 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %21, align 4, !dbg !4404, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, metadata !4340, metadata !DIExpression()), !dbg !4398
  %23 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %22, null, !dbg !4405
  br i1 %23, label %24, label %31, !dbg !4407

24:                                               ; preds = %20
  %25 = tail call i8* @malloc(i32 8) #8, !dbg !4408
  %26 = bitcast i8* %25 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, !dbg !4410
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %26, metadata !4340, metadata !DIExpression()), !dbg !4398
  %27 = bitcast i8* %25 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**, !dbg !4411
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* null, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %27, align 4, !dbg !4412, !tbaa !1654
  %28 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE, align 4, !dbg !4413, !tbaa !977
  %29 = getelementptr inbounds i8, i8* %25, i32 4, !dbg !4414
  %30 = bitcast i8* %29 to %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"**, !dbg !4414
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %28, %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** %30, align 4, !dbg !4415, !tbaa !4416
  store i8* %25, i8** bitcast (%"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"** @_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE to i8**), align 4, !dbg !4417, !tbaa !977
  store i8* %25, i8** %1, align 4, !dbg !4418, !tbaa !977
  br label %31, !dbg !4419

31:                                               ; preds = %24, %20
  %32 = phi %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* [ %22, %20 ], [ %26, %24 ], !dbg !4398
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32, metadata !4340, metadata !DIExpression()), !dbg !4398
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState", %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32, i32 0, i32 0, !dbg !4420
  %34 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %33, align 4, !dbg !4420, !tbaa !1654
  %35 = icmp eq %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %34, null, !dbg !4422
  br i1 %35, label %36, label %323, !dbg !4423

36:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), metadata !4341, metadata !DIExpression()), !dbg !4398
  %37 = tail call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0)) #8, !dbg !4424
  call void @llvm.dbg.value(metadata i32 %37, metadata !4342, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %2, metadata !4334, metadata !DIExpression()), !dbg !4398
  %38 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0)) #8, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %38, metadata !4343, metadata !DIExpression()), !dbg !4426
  %39 = icmp eq i8* %38, null, !dbg !4427
  br i1 %39, label %300, label %40, !dbg !4429

40:                                               ; preds = %36
  %41 = bitcast %"struct.Halide::Runtime::Internal::OpenGLCompute::ModuleState"* %32 to i8**
  %42 = bitcast i8** %5 to i8*
  %43 = bitcast i32* %6 to i8*
  %44 = bitcast i32* %7 to i8*
  %45 = bitcast i32* %9 to i8*
  %46 = bitcast i32* %11 to i8*
  %47 = bitcast i32* %12 to i8*
  %48 = bitcast i32* %13 to i8*
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0
  %50 = bitcast i32* %15 to i8*
  %51 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  %52 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 3
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 4
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 0
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 1
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 2
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i32 0, i32 5, i32 0
  br label %58, !dbg !4429

58:                                               ; preds = %40, %297
  %59 = phi i8* [ %38, %40 ], [ %298, %297 ]
  %60 = phi i8* [ %2, %40 ], [ %62, %297 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !4334, metadata !DIExpression()), !dbg !4398
  %61 = getelementptr inbounds i8, i8* %59, i32 %37, !dbg !4430
  call void @llvm.dbg.value(metadata i8* %61, metadata !4345, metadata !DIExpression()), !dbg !4426
  %62 = call i8* @strstr(i8* nonnull %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !4431
  call void @llvm.dbg.value(metadata i8* %62, metadata !4346, metadata !DIExpression()), !dbg !4426
  %63 = icmp eq i8* %62, null, !dbg !4432
  br i1 %63, label %66, label %64, !dbg !4434

64:                                               ; preds = %58
  %65 = call i8* @get_kernel_name(i8* nonnull %61, i8* nonnull %62) #9, !dbg !4435
  br label %82, !dbg !4434

66:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1009, metadata !DIExpression()) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i8* %0, metadata !1012, metadata !DIExpression()) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i8* null, metadata !1013, metadata !DIExpression()) #10, !dbg !4436
  %67 = call i8* @malloc(i32 1024) #8, !dbg !4439
  %68 = icmp eq i8* %67, null, !dbg !4440
  br i1 %68, label %69, label %71, !dbg !4441

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4442
  %70 = call i8* @halide_string_to_string(i8* %67, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i32 0, i32 0)) #8, !dbg !4444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4445
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4447
  br label %80, !dbg !4448

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i32 1023, !dbg !4449
  store i8 0, i8* %72, align 1, !dbg !4450, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1031, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i32 0, i32 0), metadata !1034, metadata !DIExpression()) #10, !dbg !4442
  %73 = call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i32 0, i32 0)) #8, !dbg !4444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1078, metadata !DIExpression()) #10, !dbg !4445
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1089, metadata !DIExpression()) #10, !dbg !4451
  %74 = ptrtoint i8* %73 to i32, !dbg !4453
  %75 = ptrtoint i8* %67 to i32, !dbg !4453
  %76 = add i32 %74, 1, !dbg !4453
  %77 = sub i32 %76, %75, !dbg !4454
  %78 = sext i32 %77 to i64, !dbg !4455
  %79 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %78) #8, !dbg !4456
  call void @halide_error(i8* %0, i8* nonnull %67) #8, !dbg !4457
  br label %80

80:                                               ; preds = %71, %69
  call void @free(i8* %67) #8, !dbg !4458
  %81 = call i8* @get_kernel_name(i8* nonnull %61, i8* null) #9, !dbg !4435
  br label %82, !dbg !4459

82:                                               ; preds = %64, %80
  %83 = phi i8* [ %65, %64 ], [ %81, %80 ], !dbg !4435
  call void @llvm.dbg.value(metadata i8* %83, metadata !4347, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4348, metadata !DIExpression()), !dbg !4426
  %84 = call i8* @malloc(i32 12) #8, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %84, metadata !4349, metadata !DIExpression()), !dbg !4426
  %85 = bitcast i8* %84 to i8**, !dbg !4461
  store i8* %83, i8** %85, align 4, !dbg !4462, !tbaa !981
  %86 = load %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"*, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %33, align 4, !dbg !4463, !tbaa !1654
  %87 = getelementptr inbounds i8, i8* %84, i32 8, !dbg !4464
  %88 = bitcast i8* %87 to %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"**, !dbg !4464
  store %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"* %86, %"struct.Halide::Runtime::Internal::OpenGLCompute::KernelInfo"** %88, align 4, !dbg !4465, !tbaa !1660
  store i8* %84, i8** %41, align 4, !dbg !4466, !tbaa !1654
  %89 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 7), align 4, !dbg !4467, !tbaa !1394
  %90 = call i32 %89(i32 37305) #8, !dbg !4468
  call void @llvm.dbg.value(metadata i32 %90, metadata !4350, metadata !DIExpression()), !dbg !4426
  %91 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.134, i32 0, i32 0)) #9, !dbg !4469
  br i1 %91, label %323, label %92, !dbg !4471

92:                                               ; preds = %82
  %93 = ptrtoint i8* %62 to i32, !dbg !4472
  %94 = ptrtoint i8* %60 to i32, !dbg !4472
  %95 = sub i32 %93, %94, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %95, metadata !4348, metadata !DIExpression()), !dbg !4426
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #10, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %60, metadata !4351, metadata !DIExpression()), !dbg !4426
  store i8* %60, i8** %5, align 4, !dbg !4474, !tbaa !977
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4475
  call void @llvm.dbg.value(metadata i32 undef, metadata !4352, metadata !DIExpression()), !dbg !4426
  store i32 %95, i32* %6, align 4, !dbg !4476, !tbaa !2111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4477
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4477
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4477
  %96 = call i8* @malloc(i32 1024) #8, !dbg !4479
  %97 = icmp eq i8* %96, null, !dbg !4480
  br i1 %97, label %100, label %98, !dbg !4481

98:                                               ; preds = %92
  %99 = getelementptr inbounds i8, i8* %96, i32 1023, !dbg !4482
  store i8 0, i8* %99, align 1, !dbg !4483, !tbaa !712
  br label %100, !dbg !4484

100:                                              ; preds = %92, %98
  %101 = phi i8* [ %99, %98 ], [ null, %92 ], !dbg !4485
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4486
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4486
  %102 = call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i32 0, i32 0)) #8, !dbg !4488
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4489
  call void @llvm.dbg.value(metadata i8* %83, metadata !693, metadata !DIExpression()) #10, !dbg !4489
  %103 = icmp eq i8* %83, null, !dbg !4491
  br i1 %103, label %104, label %106, !dbg !4492

104:                                              ; preds = %100
  %105 = call i8* @halide_string_to_string(i8* %102, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !4493
  br label %108, !dbg !4494

106:                                              ; preds = %100
  %107 = call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull %83) #8, !dbg !4495
  br label %108

108:                                              ; preds = %104, %106
  %109 = phi i8* [ %107, %106 ], [ %105, %104 ], !dbg !4496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4497
  br i1 %97, label %110, label %111, !dbg !4499

110:                                              ; preds = %108
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4500
  br label %118, !dbg !4501

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4502
  %112 = ptrtoint i8* %109 to i32, !dbg !4504
  %113 = ptrtoint i8* %96 to i32, !dbg !4504
  %114 = sub i32 1, %113, !dbg !4504
  %115 = add i32 %114, %112, !dbg !4505
  %116 = sext i32 %115 to i64, !dbg !4506
  %117 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %116) #8, !dbg !4507
  call void @halide_print(i8* %0, i8* nonnull %96) #8, !dbg !4508
  br label %118

118:                                              ; preds = %111, %110
  call void @free(i8* %96) #8, !dbg !4509
  call void @halide_print(i8* %0, i8* %60) #8, !dbg !4510
  %119 = load void (i32, i32, i8**, i32*)*, void (i32, i32, i8**, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 23), align 4, !dbg !4511, !tbaa !1409
  call void @llvm.dbg.value(metadata i8** %5, metadata !4351, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void @llvm.dbg.value(metadata i32* %6, metadata !4352, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void %119(i32 %90, i32 1, i8** nonnull %5, i32* nonnull %6) #8, !dbg !4512
  %120 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i32 0, i32 0)) #9, !dbg !4513
  br i1 %120, label %295, label %121, !dbg !4515

121:                                              ; preds = %118
  %122 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 6), align 4, !dbg !4516, !tbaa !1393
  call void %122(i32 %90) #8, !dbg !4517
  %123 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0)) #9, !dbg !4518
  br i1 %123, label %295, label %124, !dbg !4520

124:                                              ; preds = %121
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4521
  call void @llvm.dbg.value(metadata i32 0, metadata !4353, metadata !DIExpression()), !dbg !4426
  store i32 0, i32* %7, align 4, !dbg !4522, !tbaa !2111
  %125 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18), align 4, !dbg !4523, !tbaa !1404
  call void @llvm.dbg.value(metadata i32* %7, metadata !4353, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void %125(i32 %90, i32 35713, i32* nonnull %7) #8, !dbg !4524
  %126 = load i32, i32* %7, align 4, !dbg !4525, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %126, metadata !4353, metadata !DIExpression()), !dbg !4426
  %127 = icmp eq i32 %126, 1, !dbg !4526
  br i1 %127, label %170, label %128, !dbg !4527

128:                                              ; preds = %124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4528
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4528
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4528
  %129 = call i8* @malloc(i32 1024) #8, !dbg !4530
  %130 = icmp eq i8* %129, null, !dbg !4531
  br i1 %130, label %131, label %133, !dbg !4532

131:                                              ; preds = %128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4533
  %132 = call i8* @halide_string_to_string(i8* %129, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i32 0, i32 0)) #8, !dbg !4535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4536
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4538
  br label %142, !dbg !4539

133:                                              ; preds = %128
  %134 = getelementptr inbounds i8, i8* %129, i32 1023, !dbg !4540
  store i8 0, i8* %134, align 1, !dbg !4541, !tbaa !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4533
  %135 = call i8* @halide_string_to_string(i8* nonnull %129, i8* nonnull %134, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i32 0, i32 0)) #8, !dbg !4535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4536
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4542
  %136 = ptrtoint i8* %135 to i32, !dbg !4544
  %137 = ptrtoint i8* %129 to i32, !dbg !4544
  %138 = add i32 %136, 1, !dbg !4544
  %139 = sub i32 %138, %137, !dbg !4545
  %140 = sext i32 %139 to i64, !dbg !4546
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %129, i64 %140) #8, !dbg !4547
  call void @halide_print(i8* %0, i8* nonnull %129) #8, !dbg !4548
  br label %142

142:                                              ; preds = %133, %131
  call void @free(i8* %129) #8, !dbg !4549
  %143 = bitcast i32* %8 to i8*, !dbg !4550
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %143) #10, !dbg !4550
  %144 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 18), align 4, !dbg !4551, !tbaa !1404
  call void @llvm.dbg.value(metadata i32* %8, metadata !4354, metadata !DIExpression(DW_OP_deref)), !dbg !4552
  call void %144(i32 %90, i32 35716, i32* nonnull %8) #8, !dbg !4553
  %145 = load i32, i32* %8, align 4, !dbg !4554, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %145, metadata !4354, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4555, metadata !DIExpression()) #10, !dbg !4561
  call void @llvm.dbg.value(metadata i8* %0, metadata !4558, metadata !DIExpression()) #10, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %145, metadata !4559, metadata !DIExpression()) #10, !dbg !4561
  call void @llvm.dbg.value(metadata i8* %0, metadata !4357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4552
  %146 = call i8* @halide_malloc(i8* %0, i32 %145) #8, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %146, metadata !4357, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4552
  %147 = icmp eq i8* %146, null, !dbg !4564
  br i1 %147, label %168, label %148, !dbg !4565

148:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i8* %146, metadata !4370, metadata !DIExpression()), !dbg !4566
  %149 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 17), align 4, !dbg !4567, !tbaa !1403
  %150 = load i32, i32* %8, align 4, !dbg !4568, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %150, metadata !4354, metadata !DIExpression()), !dbg !4552
  call void %149(i32 %90, i32 %150, i32* null, i8* nonnull %146) #8, !dbg !4569
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4570
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4570
  %151 = call i8* @malloc(i32 1024) #8, !dbg !4572
  %152 = icmp eq i8* %151, null, !dbg !4573
  br i1 %152, label %155, label %153, !dbg !4574

153:                                              ; preds = %148
  %154 = getelementptr inbounds i8, i8* %151, i32 1023, !dbg !4575
  store i8 0, i8* %154, align 1, !dbg !4576, !tbaa !712
  br label %155, !dbg !4577

155:                                              ; preds = %148, %153
  %156 = phi i8* [ %154, %153 ], [ null, %148 ], !dbg !4578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4579
  call void @llvm.dbg.value(metadata i8* %146, metadata !693, metadata !DIExpression()) #10, !dbg !4579
  %157 = call i8* @halide_string_to_string(i8* %151, i8* %156, i8* nonnull %146) #8, !dbg !4581
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4582
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4582
  %158 = call i8* @halide_string_to_string(i8* %157, i8* %156, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !4584
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4585
  br i1 %152, label %159, label %160, !dbg !4587

159:                                              ; preds = %155
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4588
  br label %167, !dbg !4589

160:                                              ; preds = %155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4590
  %161 = ptrtoint i8* %158 to i32, !dbg !4592
  %162 = ptrtoint i8* %151 to i32, !dbg !4592
  %163 = add i32 %161, 1, !dbg !4592
  %164 = sub i32 %163, %162, !dbg !4593
  %165 = sext i32 %164 to i64, !dbg !4594
  %166 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %151, i64 %165) #8, !dbg !4595
  call void @halide_print(i8* %0, i8* nonnull %151) #8, !dbg !4596
  br label %167

167:                                              ; preds = %160, %159
  call void @free(i8* %151) #8, !dbg !4597
  br label %168, !dbg !4598

168:                                              ; preds = %167, %142
  %169 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10), align 4, !dbg !4599, !tbaa !1397
  call void %169(i32 %90) #8, !dbg !4600
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4601, metadata !DIExpression()) #10, !dbg !4604
  call void @halide_free(i8* %0, i8* %146) #8, !dbg !4606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %143) #10, !dbg !4608
  br label %296

170:                                              ; preds = %124
  %171 = load i32 ()*, i32 ()** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 5), align 4, !dbg !4609, !tbaa !1392
  %172 = call i32 %171() #8, !dbg !4610
  call void @llvm.dbg.value(metadata i32 %172, metadata !4373, metadata !DIExpression()), !dbg !4426
  %173 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 1), align 4, !dbg !4611, !tbaa !1388
  call void %173(i32 %172, i32 %90) #8, !dbg !4612
  %174 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0)) #9, !dbg !4613
  br i1 %174, label %296, label %175, !dbg !4615

175:                                              ; preds = %170
  %176 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 20), align 4, !dbg !4616, !tbaa !1406
  call void %176(i32 %172) #8, !dbg !4617
  %177 = call zeroext i1 @_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc(%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* nonnull dereferenceable(124) @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0)) #9, !dbg !4618
  br i1 %177, label %296, label %178, !dbg !4620

178:                                              ; preds = %175
  %179 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 10), align 4, !dbg !4621, !tbaa !1397
  call void %179(i32 %90) #8, !dbg !4622
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4623
  %180 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16), align 4, !dbg !4624, !tbaa !1402
  call void @llvm.dbg.value(metadata i32* %9, metadata !4374, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void %180(i32 %172, i32 35714, i32* nonnull %9) #8, !dbg !4625
  %181 = load i32, i32* %9, align 4, !dbg !4626, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %181, metadata !4374, metadata !DIExpression()), !dbg !4426
  %182 = icmp eq i32 %181, 0, !dbg !4626
  br i1 %182, label %183, label %212, !dbg !4627

183:                                              ; preds = %178
  %184 = bitcast i32* %10 to i8*, !dbg !4628
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %184) #10, !dbg !4628
  %185 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16), align 4, !dbg !4629, !tbaa !1402
  call void @llvm.dbg.value(metadata i32* %10, metadata !4375, metadata !DIExpression(DW_OP_deref)), !dbg !4630
  call void %185(i32 %172, i32 35716, i32* nonnull %10) #8, !dbg !4631
  %186 = load i32, i32* %10, align 4, !dbg !4632, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %186, metadata !4375, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4555, metadata !DIExpression()) #10, !dbg !4633
  call void @llvm.dbg.value(metadata i8* %0, metadata !4558, metadata !DIExpression()) #10, !dbg !4633
  call void @llvm.dbg.value(metadata i32 %186, metadata !4559, metadata !DIExpression()) #10, !dbg !4633
  call void @llvm.dbg.value(metadata i8* %0, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4630
  %187 = call i8* @halide_malloc(i8* %0, i32 %186) #8, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %187, metadata !4378, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4630
  %188 = icmp eq i8* %187, null, !dbg !4636
  br i1 %188, label %210, label %189, !dbg !4637

189:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i8* %187, metadata !4379, metadata !DIExpression()), !dbg !4638
  %190 = load void (i32, i32, i32*, i8*)*, void (i32, i32, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 15), align 4, !dbg !4639, !tbaa !1401
  %191 = load i32, i32* %10, align 4, !dbg !4640, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %191, metadata !4375, metadata !DIExpression()), !dbg !4630
  call void %190(i32 %172, i32 %191, i32* null, i8* nonnull %187) #8, !dbg !4641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4642
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4642
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4642
  %192 = call i8* @malloc(i32 1024) #8, !dbg !4644
  %193 = icmp eq i8* %192, null, !dbg !4645
  br i1 %193, label %196, label %194, !dbg !4646

194:                                              ; preds = %189
  %195 = getelementptr inbounds i8, i8* %192, i32 1023, !dbg !4647
  store i8 0, i8* %195, align 1, !dbg !4648, !tbaa !712
  br label %196, !dbg !4649

196:                                              ; preds = %189, %194
  %197 = phi i8* [ %195, %194 ], [ null, %189 ], !dbg !4650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4651
  %198 = call i8* @halide_string_to_string(i8* %192, i8* %197, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0)) #8, !dbg !4653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4654
  call void @llvm.dbg.value(metadata i8* %187, metadata !693, metadata !DIExpression()) #10, !dbg !4654
  %199 = call i8* @halide_string_to_string(i8* %198, i8* %197, i8* nonnull %187) #8, !dbg !4656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4657
  %200 = call i8* @halide_string_to_string(i8* %199, i8* %197, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !4659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4660
  br i1 %193, label %201, label %202, !dbg !4662

201:                                              ; preds = %196
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4663
  br label %209, !dbg !4664

202:                                              ; preds = %196
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4665
  %203 = ptrtoint i8* %200 to i32, !dbg !4667
  %204 = ptrtoint i8* %192 to i32, !dbg !4667
  %205 = add i32 %203, 1, !dbg !4667
  %206 = sub i32 %205, %204, !dbg !4668
  %207 = sext i32 %206 to i64, !dbg !4669
  %208 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %192, i64 %207) #8, !dbg !4670
  call void @halide_print(i8* %0, i8* nonnull %192) #8, !dbg !4671
  br label %209

209:                                              ; preds = %202, %201
  call void @free(i8* %192) #8, !dbg !4672
  br label %210, !dbg !4673

210:                                              ; preds = %183, %209
  %211 = load void (i32)*, void (i32)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 9), align 4, !dbg !4674, !tbaa !1396
  call void %211(i32 %172) #8, !dbg !4675
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::OpenGLCompute::HalideMalloc"* undef, metadata !4601, metadata !DIExpression()) #10, !dbg !4676
  call void @halide_free(i8* %0, i8* %187) #8, !dbg !4678
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %184) #10, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %62, metadata !4334, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10, !dbg !4680
  br label %323

212:                                              ; preds = %178
  %213 = getelementptr inbounds i8, i8* %84, i32 4, !dbg !4681
  %214 = bitcast i8* %213 to i32*, !dbg !4681
  store i32 %172, i32* %214, align 4, !dbg !4682, !tbaa !1664
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #10, !dbg !4683
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #10, !dbg !4684
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #10, !dbg !4685
  call void @llvm.dbg.value(metadata i32 64, metadata !4386, metadata !DIExpression()), !dbg !4426
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %49) #10, !dbg !4686
  call void @llvm.dbg.declare(metadata [64 x i8]* %14, metadata !4388, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #10, !dbg !4688
  %215 = load void (i32, i32, i32*)*, void (i32, i32, i32*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 16), align 4, !dbg !4689, !tbaa !1402
  call void @llvm.dbg.value(metadata i32* %11, metadata !4383, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void %215(i32 %172, i32 35718, i32* nonnull %11) #8, !dbg !4690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4691
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4691
  %216 = call i8* @malloc(i32 1024) #8, !dbg !4693
  %217 = icmp eq i8* %216, null, !dbg !4694
  br i1 %217, label %220, label %218, !dbg !4695

218:                                              ; preds = %212
  %219 = getelementptr inbounds i8, i8* %216, i32 1023, !dbg !4696
  store i8 0, i8* %219, align 1, !dbg !4697, !tbaa !712
  br label %220, !dbg !4698

220:                                              ; preds = %212, %218
  %221 = phi i8* [ %219, %218 ], [ null, %212 ], !dbg !4699
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.142, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4700
  %222 = call i8* @halide_string_to_string(i8* %216, i8* %221, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.142, i32 0, i32 0)) #8, !dbg !4702
  %223 = load i32, i32* %11, align 4, !dbg !4703, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %223, metadata !4383, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1184, metadata !DIExpression()) #10, !dbg !4704
  call void @llvm.dbg.value(metadata i32 %223, metadata !1187, metadata !DIExpression()) #10, !dbg !4704
  %224 = sext i32 %223 to i64, !dbg !4706
  %225 = call i8* @halide_int64_to_string(i8* %222, i8* %221, i64 %224, i32 1) #8, !dbg !4707
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4708
  %226 = call i8* @halide_string_to_string(i8* %225, i8* %221, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !4710
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4711
  br i1 %217, label %227, label %228, !dbg !4713

227:                                              ; preds = %220
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4714
  br label %235, !dbg !4715

228:                                              ; preds = %220
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4716
  %229 = ptrtoint i8* %226 to i32, !dbg !4718
  %230 = ptrtoint i8* %216 to i32, !dbg !4718
  %231 = add i32 %229, 1, !dbg !4718
  %232 = sub i32 %231, %230, !dbg !4719
  %233 = sext i32 %232 to i64, !dbg !4720
  %234 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %216, i64 %233) #8, !dbg !4721
  call void @halide_print(i8* %0, i8* nonnull %216) #8, !dbg !4722
  br label %235

235:                                              ; preds = %228, %227
  call void @free(i8* %216) #8, !dbg !4723
  call void @llvm.dbg.value(metadata i32 0, metadata !4382, metadata !DIExpression()), !dbg !4426
  %236 = load i32, i32* %11, align 4, !dbg !4724, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %236, metadata !4383, metadata !DIExpression()), !dbg !4426
  %237 = icmp sgt i32 %236, 0, !dbg !4725
  br i1 %237, label %238, label %297, !dbg !4726

238:                                              ; preds = %235, %291
  %239 = phi i32 [ %292, %291 ], [ 0, %235 ]
  call void @llvm.dbg.value(metadata i32 %239, metadata !4382, metadata !DIExpression()), !dbg !4426
  %240 = load void (i32, i32, i32, i32*, i32*, i32*, i8*)*, void (i32, i32, i32, i32*, i32*, i32*, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 29), align 4, !dbg !4727, !tbaa !1415
  call void @llvm.dbg.value(metadata i32* %12, metadata !4384, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void @llvm.dbg.value(metadata i32* %13, metadata !4385, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void @llvm.dbg.value(metadata i32* %15, metadata !4392, metadata !DIExpression(DW_OP_deref)), !dbg !4426
  call void %240(i32 %172, i32 %239, i32 64, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i8* nonnull %49) #8, !dbg !4728
  %241 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState", %"struct.Halide::Runtime::Internal::OpenGLCompute::GlobalState"* @_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE, i32 0, i32 30), align 4, !dbg !4729, !tbaa !1416
  %242 = call i32 %241(i32 %172, i8* nonnull %49) #8, !dbg !4730
  call void @llvm.dbg.value(metadata i32 %242, metadata !4393, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %51) #10, !dbg !4732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !673, metadata !DIExpression()) #10, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4733
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4733
  store i8* %0, i8** %52, align 4, !dbg !4735, !tbaa !1118
  store i8 1, i8* %53, align 4, !dbg !4736, !tbaa !1121
  %243 = call i8* @malloc(i32 1024) #8, !dbg !4737
  store i8* %243, i8** %54, align 4, !dbg !4738, !tbaa !1125
  store i8* %243, i8** %55, align 4, !dbg !4739, !tbaa !1359
  %244 = icmp eq i8* %243, null, !dbg !4740
  br i1 %244, label %247, label %245, !dbg !4741

245:                                              ; preds = %238
  %246 = getelementptr inbounds i8, i8* %243, i32 1023, !dbg !4742
  store i8* %246, i8** %56, align 4, !dbg !4743, !tbaa !1278
  store i8 0, i8* %246, align 1, !dbg !4744, !tbaa !712
  br label %248, !dbg !4745

247:                                              ; preds = %238
  store i8* null, i8** %56, align 4, !dbg !4746, !tbaa !1278
  br label %248

248:                                              ; preds = %245, %247
  %249 = phi i8* [ %246, %245 ], [ null, %247 ], !dbg !4747
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4749
  %250 = call i8* @halide_string_to_string(i8* %243, i8* %249, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0)) #8, !dbg !4750
  store i8* %250, i8** %55, align 4, !dbg !4751, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1184, metadata !DIExpression()) #10, !dbg !4752
  call void @llvm.dbg.value(metadata i32 %239, metadata !1187, metadata !DIExpression()) #10, !dbg !4752
  %251 = load i8*, i8** %56, align 4, !dbg !4754, !tbaa !1278
  %252 = zext i32 %239 to i64, !dbg !4755
  %253 = call i8* @halide_int64_to_string(i8* %250, i8* %251, i64 %252, i32 1) #8, !dbg !4756
  store i8* %253, i8** %55, align 4, !dbg !4757, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4758
  %254 = load i8*, i8** %56, align 4, !dbg !4760, !tbaa !1278
  %255 = call i8* @halide_string_to_string(i8* %253, i8* %254, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0)) #8, !dbg !4761
  store i8* %255, i8** %55, align 4, !dbg !4762, !tbaa !1359
  %256 = load i32, i32* %13, align 4, !dbg !4763, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %256, metadata !4385, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1154, metadata !DIExpression()) #10, !dbg !4764
  call void @llvm.dbg.value(metadata i32 %256, metadata !1157, metadata !DIExpression()) #10, !dbg !4764
  %257 = load i8*, i8** %56, align 4, !dbg !4766, !tbaa !1278
  %258 = zext i32 %256 to i64, !dbg !4767
  %259 = call i8* @halide_uint64_to_string(i8* %255, i8* %257, i64 %258, i32 1) #8, !dbg !4768
  store i8* %259, i8** %55, align 4, !dbg !4769, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4770
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4770
  %260 = load i8*, i8** %56, align 4, !dbg !4772, !tbaa !1278
  %261 = call i8* @halide_string_to_string(i8* %259, i8* %260, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0)) #8, !dbg !4773
  store i8* %261, i8** %55, align 4, !dbg !4774, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4775
  call void @llvm.dbg.value(metadata i8* %49, metadata !693, metadata !DIExpression()) #10, !dbg !4775
  %262 = load i8*, i8** %56, align 4, !dbg !4777, !tbaa !1278
  %263 = call i8* @halide_string_to_string(i8* %261, i8* %262, i8* nonnull %49) #8, !dbg !4778
  store i8* %263, i8** %55, align 4, !dbg !4779, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4780
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4780
  %264 = load i8*, i8** %56, align 4, !dbg !4782, !tbaa !1278
  %265 = call i8* @halide_string_to_string(i8* %263, i8* %264, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0)) #8, !dbg !4783
  store i8* %265, i8** %55, align 4, !dbg !4784, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !1184, metadata !DIExpression()) #10, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %242, metadata !1187, metadata !DIExpression()) #10, !dbg !4785
  %266 = load i8*, i8** %56, align 4, !dbg !4787, !tbaa !1278
  %267 = sext i32 %242 to i64, !dbg !4788
  %268 = call i8* @halide_int64_to_string(i8* %265, i8* %266, i64 %267, i32 1) #8, !dbg !4789
  store i8* %268, i8** %55, align 4, !dbg !4790, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !690, metadata !DIExpression()) #10, !dbg !4791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4791
  %269 = load i8*, i8** %56, align 4, !dbg !4793, !tbaa !1278
  %270 = call i8* @halide_string_to_string(i8* %268, i8* %269, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !4794
  store i8* %270, i8** %55, align 4, !dbg !4795, !tbaa !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, metadata !699, metadata !DIExpression()) #10, !dbg !4796
  %271 = load i8*, i8** %54, align 4, !dbg !4798, !tbaa !1125
  %272 = icmp eq i8* %271, null, !dbg !4798
  %273 = load i8*, i8** %52, align 4, !dbg !4799, !tbaa !1118
  br i1 %272, label %274, label %275, !dbg !4800

274:                                              ; preds = %248
  call void @halide_error(i8* %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4801
  br label %284, !dbg !4802

275:                                              ; preds = %248
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4803
  %276 = ptrtoint i8* %270 to i32, !dbg !4805
  %277 = ptrtoint i8* %271 to i32, !dbg !4805
  %278 = add i32 %276, 1, !dbg !4805
  %279 = sub i32 %278, %277, !dbg !4806
  %280 = sext i32 %279 to i64, !dbg !4807
  %281 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %273, i8* nonnull %271, i64 %280) #8, !dbg !4808
  %282 = load i8*, i8** %52, align 4, !dbg !4809, !tbaa !1118
  %283 = load i8*, i8** %54, align 4, !dbg !4810, !tbaa !1125
  call void @halide_print(i8* %282, i8* %283) #8, !dbg !4811
  br label %284

284:                                              ; preds = %275, %274
  %285 = load i8, i8* %53, align 4, !dbg !4812, !tbaa !1121, !range !1375
  %286 = icmp eq i8 %285, 0, !dbg !4812
  %287 = load i8*, i8** %54, align 4
  %288 = icmp eq i8* %287, %57
  %289 = or i1 %286, %288, !dbg !4813
  br i1 %289, label %291, label %290, !dbg !4813

290:                                              ; preds = %284
  call void @free(i8* %287) #8, !dbg !4814
  br label %291, !dbg !4815

291:                                              ; preds = %284, %290
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %51) #10, !dbg !4732
  %292 = add nuw nsw i32 %239, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i32 %292, metadata !4382, metadata !DIExpression()), !dbg !4426
  %293 = load i32, i32* %11, align 4, !dbg !4724, !tbaa !2111
  call void @llvm.dbg.value(metadata i32 %293, metadata !4383, metadata !DIExpression()), !dbg !4426
  %294 = icmp slt i32 %292, %293, !dbg !4725
  br i1 %294, label %238, label %297, !dbg !4726, !llvm.loop !4817

295:                                              ; preds = %118, %121
  call void @llvm.dbg.value(metadata i8* %62, metadata !4334, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10, !dbg !4680
  br label %323

296:                                              ; preds = %170, %175, %168
  call void @llvm.dbg.value(metadata i8* %62, metadata !4334, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10, !dbg !4680
  br label %323

297:                                              ; preds = %291, %235
  call void @llvm.dbg.value(metadata i8* %62, metadata !4334, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %49) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10, !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10, !dbg !4680
  %298 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0)) #8, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %298, metadata !4343, metadata !DIExpression()), !dbg !4426
  %299 = icmp eq i8* %298, null, !dbg !4427
  br i1 %299, label %300, label %58, !dbg !4429

300:                                              ; preds = %297, %36
  call void @llvm.dbg.value(metadata i8* %62, metadata !4334, metadata !DIExpression()), !dbg !4398
  %301 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %301, metadata !4397, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !673, metadata !DIExpression()) #10, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #10, !dbg !4820
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()) #10, !dbg !4820
  %302 = call i8* @malloc(i32 1024) #8, !dbg !4822
  %303 = icmp eq i8* %302, null, !dbg !4823
  br i1 %303, label %306, label %304, !dbg !4824

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, i8* %302, i32 1023, !dbg !4825
  store i8 0, i8* %305, align 1, !dbg !4826, !tbaa !712
  br label %306, !dbg !4827

306:                                              ; preds = %300, %304
  %307 = phi i8* [ %305, %304 ], [ null, %300 ], !dbg !4828
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4829
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4829
  %308 = call i8* @halide_string_to_string(i8* %302, i8* %307, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !4831
  %309 = sub i64 %301, %17, !dbg !4832
  %310 = uitofp i64 %309 to double, !dbg !4833
  %311 = fdiv double %310, 1.000000e+06, !dbg !4834
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1697, metadata !DIExpression()) #10, !dbg !4835
  call void @llvm.dbg.value(metadata double %311, metadata !1700, metadata !DIExpression()) #10, !dbg !4835
  %312 = call i8* @halide_double_to_string(i8* %308, i8* %307, double %311, i32 1) #8, !dbg !4837
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !690, metadata !DIExpression()) #10, !dbg !4838
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), metadata !693, metadata !DIExpression()) #10, !dbg !4838
  %313 = call i8* @halide_string_to_string(i8* %312, i8* %307, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !4840
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !699, metadata !DIExpression()) #10, !dbg !4841
  br i1 %303, label %314, label %315, !dbg !4843

314:                                              ; preds = %306
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !4844
  br label %322, !dbg !4845

315:                                              ; preds = %306
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #10, !dbg !4846
  %316 = ptrtoint i8* %313 to i32, !dbg !4848
  %317 = ptrtoint i8* %302 to i32, !dbg !4848
  %318 = add i32 %316, 1, !dbg !4848
  %319 = sub i32 %318, %317, !dbg !4849
  %320 = sext i32 %319 to i64, !dbg !4850
  %321 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %302, i64 %320) #8, !dbg !4851
  call void @halide_print(i8* %0, i8* nonnull %302) #8, !dbg !4852
  br label %322

322:                                              ; preds = %315, %314
  call void @free(i8* %302) #8, !dbg !4853
  br label %323

323:                                              ; preds = %82, %210, %296, %295, %31, %322, %4
  %324 = phi i32 [ %18, %4 ], [ 0, %31 ], [ 0, %322 ], [ -1, %295 ], [ -1, %296 ], [ -1, %210 ], [ -1, %82 ], !dbg !4398
  ret i32 %324, !dbg !4854
}

declare !dbg !4855 dso_local i32 @strlen(i8*) local_unnamed_addr #3

declare !dbg !4858 dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_openglcompute_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #6 !dbg !4861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4865, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i8* %1, metadata !4866, metadata !DIExpression()), !dbg !4867
  ret void, !dbg !4868
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_openglcompute_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4871, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4872, metadata !DIExpression()), !dbg !4873
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #8, !dbg !4874
  ret i32 %3, !dbg !4875
}

declare !dbg !4876 extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_openglcompute_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4879, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4880, metadata !DIExpression()), !dbg !4881
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE) #8, !dbg !4882
  ret i32 %3, !dbg !4883
}

declare !dbg !4884 extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_openglcompute_device_interface() local_unnamed_addr #6 !dbg !4885 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE, !dbg !4888
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

declare !dbg !4889 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

declare !dbg !4892 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !4893 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4894 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4897 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4900 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4903 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4906 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4909 extern_weak dso_local i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #3

declare !dbg !4912 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

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

!llvm.dbg.cu = !{!394}
!llvm.module.flags = !{!571, !572, !573}
!llvm.ident = !{!574}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global_state", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12global_stateE", scope: !2, file: !6, line: 147, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "OpenGLCompute", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/openglcompute.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlobalState", scope: !2, file: !6, line: 123, size: 992, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE")
!8 = !{!9, !11, !19, !25, !30, !42, !47, !52, !57, !65, !67, !69, !74, !79, !85, !90, !99, !106, !108, !110, !119, !121, !129, !134, !144, !149, !150, !157, !162, !164, !170, !175, !179}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !7, file: !6, line: 127, baseType: !10, size: 8)
!10 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "AttachShader", scope: !7, file: !6, line: 131, baseType: !12, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLATTACHSHADERPROC", file: !13, line: 128, baseType: !14)
!13 = !DIFile(filename: "src/runtime/mini_opengl.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLuint", file: !13, line: 11, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "BindBuffer", scope: !7, file: !6, line: 131, baseType: !20, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBINDBUFFERPROC", file: !13, line: 111, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !17}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLenum", file: !13, line: 8, baseType: !18)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "BindBufferBase", scope: !7, file: !6, line: 131, baseType: !26, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBINDBUFFERBASEPROC", file: !13, line: 215, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !24, !17, !17}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "BufferData", scope: !7, file: !6, line: 131, baseType: !31, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLBUFFERDATAPROC", file: !13, line: 112, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !24, !35, !39, !24}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLsizeiptr", file: !13, line: 13, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !37, line: 28, baseType: !38)
!37 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLvoid", file: !13, line: 16, baseType: null)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "CreateProgram", scope: !7, file: !6, line: 131, baseType: !43, size: 32, offset: 160)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCREATEPROGRAMPROC", file: !13, line: 130, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = !DISubroutineType(types: !46)
!46 = !{!17}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "CompileShader", scope: !7, file: !6, line: 131, baseType: !48, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCOMPILESHADERPROC", file: !13, line: 129, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !17}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "CreateShader", scope: !7, file: !6, line: 131, baseType: !53, size: 32, offset: 224)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLCREATESHADERPROC", file: !13, line: 131, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DISubroutineType(types: !56)
!56 = !{!17, !24}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteBuffers", scope: !7, file: !6, line: 131, baseType: !58, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETEBUFFERSPROC", file: !13, line: 216, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !63}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLsizei", file: !13, line: 12, baseType: !38)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteProgram", scope: !7, file: !6, line: 131, baseType: !66, size: 32, offset: 288)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETEPROGRAMPROC", file: !13, line: 132, baseType: !49)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteShader", scope: !7, file: !6, line: 131, baseType: !68, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDELETESHADERPROC", file: !13, line: 133, baseType: !49)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "DispatchCompute", scope: !7, file: !6, line: 131, baseType: !70, size: 32, offset: 352)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLDISPATCHCOMPUTEPROC", file: !13, line: 213, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !17, !17, !17}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Finish", scope: !7, file: !6, line: 131, baseType: !75, size: 32, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLFINISHPROC", file: !13, line: 153, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!77 = !DISubroutineType(types: !78)
!78 = !{null}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "GenBuffers", scope: !7, file: !6, line: 131, baseType: !80, size: 32, offset: 416)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGENBUFFERSPROC", file: !13, line: 109, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !62, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "GetError", scope: !7, file: !6, line: 131, baseType: !86, size: 32, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETERRORPROC", file: !13, line: 70, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!88 = !DISubroutineType(types: !89)
!89 = !{!24}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "GetProgramInfoLog", scope: !7, file: !6, line: 131, baseType: !91, size: 32, offset: 480)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETPROGRAMINFOLOGPROC", file: !13, line: 138, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !17, !62, !95, !96}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLchar", file: !13, line: 6, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "GetProgramiv", scope: !7, file: !6, line: 131, baseType: !100, size: 32, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETPROGRAMIVPROC", file: !13, line: 137, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !17, !24, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLint", file: !13, line: 10, baseType: !38)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "GetShaderInfoLog", scope: !7, file: !6, line: 131, baseType: !107, size: 32, offset: 544)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSHADERINFOLOGPROC", file: !13, line: 140, baseType: !92)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "GetShaderiv", scope: !7, file: !6, line: 131, baseType: !109, size: 32, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSHADERIVPROC", file: !13, line: 139, baseType: !101)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "GetString", scope: !7, file: !6, line: 131, baseType: !111, size: 32, offset: 608)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETSTRINGPROC", file: !13, line: 71, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !24}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLubyte", file: !13, line: 7, baseType: !118)
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "LinkProgram", scope: !7, file: !6, line: 131, baseType: !120, size: 32, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLLINKPROGRAMPROC", file: !13, line: 142, baseType: !49)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "MapBufferRange", scope: !7, file: !6, line: 131, baseType: !122, size: 32, offset: 672)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLMAPBUFFERRANGEPROC", file: !13, line: 212, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !24, !127, !35, !128}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLintptr", file: !13, line: 207, baseType: !36)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLbitfield", file: !13, line: 206, baseType: !18)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "MemoryBarrier", scope: !7, file: !6, line: 131, baseType: !130, size: 32, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLMEMORYBARRIERPROC", file: !13, line: 211, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !128}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ShaderSource", scope: !7, file: !6, line: 131, baseType: !135, size: 32, offset: 736)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLSHADERSOURCEPROC", file: !13, line: 143, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !17, !62, !139, !142}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1i", scope: !7, file: !6, line: 131, baseType: !145, size: 32, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNIFORM1IPROC", file: !13, line: 145, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !17, !105}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1ui", scope: !7, file: !6, line: 131, baseType: !145, size: 32, offset: 800)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Uniform1f", scope: !7, file: !6, line: 131, baseType: !151, size: 32, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNIFORM1FPROC", file: !13, line: 144, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !17, !155}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLfloat", file: !13, line: 14, baseType: !156)
!156 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "UnmapBuffer", scope: !7, file: !6, line: 131, baseType: !158, size: 32, offset: 864)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUNMAPBUFFERPROC", file: !13, line: 214, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !24}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "UseProgram", scope: !7, file: !6, line: 131, baseType: !163, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLUSEPROGRAMPROC", file: !13, line: 149, baseType: !49)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "GetActiveUniform", scope: !7, file: !6, line: 131, baseType: !165, size: 32, offset: 928)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETACTIVEUNIFORM", file: !13, line: 218, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !17, !17, !62, !95, !104, !169, !96}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "GetUniformLocation", scope: !7, file: !6, line: 131, baseType: !171, size: 32, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNGLGETUNIFORMLOCATION", file: !13, line: 219, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DISubroutineType(types: !174)
!174 = !{!105, !17, !140}
!175 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv", scope: !7, file: !6, line: 124, type: !176, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DISubprogram(name: "CheckAndReportError", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc", scope: !7, file: !6, line: 125, type: !180, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{!10, !178, !126, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "state_list", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute10state_listE", scope: !2, file: !6, line: 150, type: !186, isLocal: false, isDefinition: true)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ModuleState", scope: !2, file: !6, line: 109, size: 64, flags: DIFlagTypePassByValue, elements: !188, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE")
!188 = !{!189, !197}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !187, file: !6, line: 110, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "KernelInfo", scope: !2, file: !6, line: 103, size: 96, flags: DIFlagTypePassByValue, elements: !192, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE")
!192 = !{!193, !195, !196}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_name", scope: !191, file: !6, line: 104, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "program_id", scope: !191, file: !6, line: 105, baseType: !17, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !6, line: 106, baseType: !190, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !6, line: 111, baseType: !186, size: 32, offset: 32)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "openglcompute_device_interface", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute30openglcompute_device_interfaceE", scope: !2, file: !6, line: 948, type: !200, isLocal: false, isDefinition: true)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !201, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !202, identifier: "_ZTS25halide_device_interface_t")
!201 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!202 = !{!203, !327, !331, !332, !336, !337, !338, !339, !340, !344, !349, !353, !354, !358, !359, !364}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !200, file: !201, line: 724, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !126, !207, !214}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !201, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !209, identifier: "_ZTS15halide_buffer_t")
!209 = !{!210, !213, !216, !219, !220, !261, !263, !286, !287, !297, !301, !304, !305, !308, !309, !313, !316, !317, !318, !323, !326}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !208, file: !201, line: 1425, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !37, line: 10, baseType: !212)
!212 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !208, file: !201, line: 1428, baseType: !214, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !208, file: !201, line: 1433, baseType: !217, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 16, baseType: !118)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !201, line: 1436, baseType: !211, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !201, line: 1439, baseType: !221, size: 32, offset: 192)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !201, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !222, identifier: "_ZTS13halide_type_t")
!222 = !{!223, !232, !233, !236, !240, !243, !248, !252, !253, !254, !257}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !221, file: !201, line: 434, baseType: !224, size: 8, align: 8)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !201, line: 413, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !201, line: 403, baseType: !218, size: 8, elements: !226, identifier: "_ZTS18halide_type_code_t")
!226 = !{!227, !228, !229, !230, !231}
!227 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!228 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!230 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!231 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !221, file: !201, line: 442, baseType: !218, size: 8, align: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !221, file: !201, line: 446, baseType: !234, size: 16, align: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 14, baseType: !235)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DISubprogram(name: "halide_type_t", scope: !221, file: !201, line: 453, type: !237, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !239, !224, !218, !234}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!240 = !DISubprogram(name: "halide_type_t", scope: !221, file: !201, line: 459, type: !241, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !239}
!243 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !221, file: !201, line: 463, type: !244, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!221, !246, !234}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!248 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !221, file: !201, line: 468, type: !249, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!10, !246, !251}
!251 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !247, size: 32)
!252 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !221, file: !201, line: 472, type: !249, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !221, file: !201, line: 476, type: !249, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !221, file: !201, line: 481, type: !255, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!38, !246}
!257 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !221, file: !201, line: 485, type: !258, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !246}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 12, baseType: !18)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !208, file: !201, line: 1442, baseType: !262, size: 32, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 11, baseType: !38)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !208, file: !201, line: 1446, baseType: !264, size: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !201, line: 1409, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !201, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !267, identifier: "_ZTS18halide_dimension_t")
!267 = !{!268, !269, !270, !271, !272, !276, !279, !285}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !266, file: !201, line: 1383, baseType: !262, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !266, file: !201, line: 1383, baseType: !262, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !266, file: !201, line: 1383, baseType: !262, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !201, line: 1386, baseType: !260, size: 32, offset: 96)
!272 = !DISubprogram(name: "halide_dimension_t", scope: !266, file: !201, line: 1388, type: !273, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!276 = !DISubprogram(name: "halide_dimension_t", scope: !266, file: !201, line: 1389, type: !277, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !275, !262, !262, !262, !260}
!279 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !266, file: !201, line: 1393, type: !280, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{!10, !282, !284}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!284 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !283, size: 32)
!285 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !266, file: !201, line: 1400, type: !280, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !208, file: !201, line: 1449, baseType: !126, size: 32, offset: 288)
!287 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !208, file: !201, line: 1454, type: !288, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!10, !290, !292}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !201, line: 1416, baseType: !293)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !201, line: 1415, baseType: !18, size: 32, elements: !294, identifier: "_ZTS19halide_buffer_flags")
!294 = !{!295, !296}
!295 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!296 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!297 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !208, file: !201, line: 1458, type: !298, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300, !292, !10}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !208, file: !201, line: 1466, type: !302, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{!10, !290}
!304 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !208, file: !201, line: 1470, type: !302, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !208, file: !201, line: 1474, type: !306, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !300, !10}
!308 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !208, file: !201, line: 1478, type: !306, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !208, file: !201, line: 1485, type: !310, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !290}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 27, baseType: !18)
!313 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !208, file: !201, line: 1495, type: !314, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!217, !290}
!316 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !208, file: !201, line: 1506, type: !314, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !208, file: !201, line: 1518, type: !310, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !208, file: !201, line: 1523, type: !319, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{!217, !290, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!323 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !208, file: !201, line: 1534, type: !324, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{!38, !300, !126}
!326 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !208, file: !201, line: 1545, type: !302, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !200, file: !201, line: 726, baseType: !328, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 32)
!329 = !DISubroutineType(types: !330)
!330 = !{!38, !126, !207}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !200, file: !201, line: 727, baseType: !328, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !200, file: !201, line: 728, baseType: !333, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !126, !214}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !200, file: !201, line: 730, baseType: !328, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !200, file: !201, line: 731, baseType: !204, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !200, file: !201, line: 733, baseType: !204, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !200, file: !201, line: 735, baseType: !328, size: 32, offset: 224)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !200, file: !201, line: 736, baseType: !341, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = !DISubroutineType(types: !343)
!343 = !{!38, !126, !207, !214, !207}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !200, file: !201, line: 738, baseType: !345, size: 32, offset: 288)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!346 = !DISubroutineType(types: !347)
!347 = !{!38, !126, !348, !207}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !200, file: !201, line: 740, baseType: !350, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = !DISubroutineType(types: !352)
!352 = !{!38, !126, !348, !38, !38, !207}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !200, file: !201, line: 742, baseType: !328, size: 32, offset: 352)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !200, file: !201, line: 743, baseType: !355, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DISubroutineType(types: !357)
!357 = !{!38, !126, !207, !211, !214}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !200, file: !201, line: 745, baseType: !328, size: 32, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !200, file: !201, line: 746, baseType: !360, size: 32, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 32)
!361 = !DISubroutineType(types: !362)
!362 = !{!38, !126, !363, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !200, file: !201, line: 747, baseType: !365, size: 32, offset: 480)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !368, line: 10, size: 512, flags: DIFlagTypePassByValue, elements: !369, identifier: "_ZTS30halide_device_interface_impl_t")
!368 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!369 = !{!370, !371, !372, !373, !374, !375, !379, !380, !381, !382, !383, !384, !385, !386, !387, !391}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !367, file: !368, line: 16, baseType: !76, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !367, file: !368, line: 17, baseType: !76, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !367, file: !368, line: 18, baseType: !328, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !367, file: !368, line: 19, baseType: !328, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !367, file: !368, line: 20, baseType: !328, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !367, file: !368, line: 21, baseType: !376, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = !DISubroutineType(types: !378)
!378 = !{!38, !126}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !367, file: !368, line: 22, baseType: !328, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !367, file: !368, line: 23, baseType: !328, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !367, file: !368, line: 24, baseType: !328, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !367, file: !368, line: 25, baseType: !328, size: 32, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !367, file: !368, line: 26, baseType: !341, size: 32, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !367, file: !368, line: 28, baseType: !345, size: 32, offset: 352)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !367, file: !368, line: 31, baseType: !350, size: 32, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !367, file: !368, line: 35, baseType: !328, size: 32, offset: 416)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !367, file: !368, line: 37, baseType: !388, size: 32, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DISubroutineType(types: !390)
!390 = !{!38, !126, !207, !211}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !367, file: !368, line: 38, baseType: !328, size: 32, offset: 480)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "openglcompute_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35openglcompute_device_interface_implE", scope: !2, file: !6, line: 929, type: !367, isLocal: false, isDefinition: true)
!394 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !395, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !396, retainedTypes: !397, globals: !566, imports: !567, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/openglcompute.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!396 = !{!225, !293}
!397 = !{!126, !398, !211, !480, !38, !17, !547, !18, !186, !548, !551, !554, !217, !555, !556, !557, !558, !194, !559, !190, !105, !560, !312, !36, !561, !363, !562, !563, !564, !565, !550, !553, !118, !235}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !400, file: !399, line: 203, baseType: !401)
!399 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!400 = !DINamespace(scope: !3)
!401 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !400, file: !399, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !402, templateParams: !477)
!402 = !{!403, !404, !405, !406, !407, !408, !412, !416, !420, !425, !428, !431, !434, !438, !441, !446, !450, !453, !459, !462, !465, !470, !471, !474, !475, !476}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !401, file: !399, line: 32, baseType: !194, size: 32, flags: DIFlagPublic)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !401, file: !399, line: 32, baseType: !194, size: 32, offset: 32, flags: DIFlagPublic)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !401, file: !399, line: 32, baseType: !194, size: 32, offset: 64, flags: DIFlagPublic)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !401, file: !399, line: 33, baseType: !126, size: 32, offset: 96, flags: DIFlagPublic)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !401, file: !399, line: 34, baseType: !10, size: 8, offset: 128, flags: DIFlagPublic)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !401, file: !399, line: 35, baseType: !409, size: 8, offset: 136, flags: DIFlagPublic)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 1)
!412 = !DISubprogram(name: "Printer", scope: !401, file: !399, line: 37, type: !413, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415, !126, !194}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !401, file: !399, line: 57, type: !417, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !415, !182}
!419 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !401, size: 32)
!420 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !401, file: !399, line: 67, type: !421, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubroutineType(types: !422)
!422 = !{!419, !415, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !37, line: 9, baseType: !424)
!424 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!425 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !401, file: !399, line: 72, type: !426, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!419, !415, !262}
!428 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !401, file: !399, line: 77, type: !429, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!419, !415, !211}
!431 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !401, file: !399, line: 82, type: !432, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!419, !415, !260}
!434 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !401, file: !399, line: 87, type: !435, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{!419, !415, !437}
!437 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!438 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !401, file: !399, line: 92, type: !439, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{!419, !415, !156}
!441 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !401, file: !399, line: 97, type: !442, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!419, !415, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!446 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !401, file: !399, line: 102, type: !447, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!447 = !DISubroutineType(types: !448)
!448 = !{!419, !415, !449}
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!450 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !401, file: !399, line: 108, type: !451, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!419, !415, !251}
!453 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !401, file: !399, line: 113, type: !454, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!419, !415, !456}
!456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !201, line: 1550, baseType: !208)
!459 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !401, file: !399, line: 119, type: !460, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DISubroutineType(types: !461)
!461 = !{!182, !415}
!462 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !401, file: !399, line: 131, type: !463, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !415}
!465 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !401, file: !399, line: 139, type: !466, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubroutineType(types: !467)
!467 = !{!211, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!470 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !401, file: !399, line: 143, type: !466, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !401, file: !399, line: 148, type: !472, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !415, !38}
!474 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !401, file: !399, line: 158, type: !460, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !401, file: !399, line: 162, type: !463, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DISubprogram(name: "~Printer", scope: !401, file: !399, line: 166, type: !463, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !{!478, !479}
!478 = !DITemplateValueParameter(name: "type", type: !38, value: i32 0)
!479 = !DITemplateValueParameter(name: "length", type: !212, value: i64 1024)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !400, file: !399, line: 199, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !400, file: !399, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !482, templateParams: !545)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !493, !497, !500, !503, !506, !509, !512, !515, !518, !521, !524, !527, !530, !533, !538, !539, !542, !543, !544}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !481, file: !399, line: 32, baseType: !194, size: 32, flags: DIFlagPublic)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !481, file: !399, line: 32, baseType: !194, size: 32, offset: 32, flags: DIFlagPublic)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !481, file: !399, line: 32, baseType: !194, size: 32, offset: 64, flags: DIFlagPublic)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !481, file: !399, line: 33, baseType: !126, size: 32, offset: 96, flags: DIFlagPublic)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !481, file: !399, line: 34, baseType: !10, size: 8, offset: 128, flags: DIFlagPublic)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !481, file: !399, line: 35, baseType: !409, size: 8, offset: 136, flags: DIFlagPublic)
!489 = !DISubprogram(name: "Printer", scope: !481, file: !399, line: 37, type: !490, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492, !126, !194}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!493 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !481, file: !399, line: 57, type: !494, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !492, !182}
!496 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !481, size: 32)
!497 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !481, file: !399, line: 67, type: !498, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!496, !492, !423}
!500 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !481, file: !399, line: 72, type: !501, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!496, !492, !262}
!503 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !481, file: !399, line: 77, type: !504, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{!496, !492, !211}
!506 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !481, file: !399, line: 82, type: !507, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{!496, !492, !260}
!509 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !481, file: !399, line: 87, type: !510, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!496, !492, !437}
!512 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !481, file: !399, line: 92, type: !513, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!496, !492, !156}
!515 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !481, file: !399, line: 97, type: !516, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubroutineType(types: !517)
!517 = !{!496, !492, !444}
!518 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !481, file: !399, line: 102, type: !519, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DISubroutineType(types: !520)
!520 = !{!496, !492, !449}
!521 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !481, file: !399, line: 108, type: !522, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DISubroutineType(types: !523)
!523 = !{!496, !492, !251}
!524 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !481, file: !399, line: 113, type: !525, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DISubroutineType(types: !526)
!526 = !{!496, !492, !456}
!527 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !481, file: !399, line: 119, type: !528, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DISubroutineType(types: !529)
!529 = !{!182, !492}
!530 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !481, file: !399, line: 131, type: !531, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !492}
!533 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !481, file: !399, line: 139, type: !534, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!211, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!538 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !481, file: !399, line: 143, type: !534, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !481, file: !399, line: 148, type: !540, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !492, !38}
!542 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !481, file: !399, line: 158, type: !528, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !481, file: !399, line: 162, type: !531, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubprogram(name: "~Printer", scope: !481, file: !399, line: 166, type: !531, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !{!546, !479}
!546 = !DITemplateValueParameter(name: "type", type: !38, value: i32 1)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !37, line: 15, baseType: !550)
!550 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !37, line: 13, baseType: !553)
!553 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !400, file: !399, line: 198, baseType: !401)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!566 = !{!0, !184, !392, !198}
!567 = !{!568, !569, !570}
!568 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !394, entity: !3, file: !37, line: 225)
!569 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !394, entity: !3, file: !6, line: 50)
!570 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !394, entity: !2, file: !6, line: 585)
!571 = !{i32 7, !"Dwarf Version", i32 4}
!572 = !{i32 2, !"Debug Info Version", i32 3}
!573 = !{i32 1, !"wchar_size", i32 4}
!574 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!575 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !576, line: 47, type: !577, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !593)
!576 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579, !38, !423, !423}
!579 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !580, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !576, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !582, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!582 = !{!583, !584, !585, !586, !590, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !581, file: !576, line: 35, baseType: !211, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !581, file: !576, line: 35, baseType: !211, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !581, file: !576, line: 37, baseType: !211, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !581, file: !576, line: 39, baseType: !587, size: 1024, offset: 192)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 1024, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 16)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !581, file: !576, line: 41, baseType: !587, size: 1024, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !581, file: !576, line: 42, baseType: !587, size: 1024, offset: 2240)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !581, file: !576, line: 44, baseType: !211, size: 64, offset: 3264)
!593 = !{!594, !595, !596, !597, !598, !601, !602}
!594 = !DILocalVariable(name: "copy", arg: 1, scope: !575, file: !576, line: 47, type: !579)
!595 = !DILocalVariable(name: "d", arg: 2, scope: !575, file: !576, line: 47, type: !38)
!596 = !DILocalVariable(name: "src_off", arg: 3, scope: !575, file: !576, line: 47, type: !423)
!597 = !DILocalVariable(name: "dst_off", arg: 4, scope: !575, file: !576, line: 47, type: !423)
!598 = !DILocalVariable(name: "from", scope: !599, file: !576, line: 54, type: !444)
!599 = distinct !DILexicalBlock(scope: !600, file: !576, line: 53, column: 18)
!600 = distinct !DILexicalBlock(scope: !575, file: !576, line: 53, column: 9)
!601 = !DILocalVariable(name: "to", scope: !599, file: !576, line: 55, type: !126)
!602 = !DILocalVariable(name: "i", scope: !603, file: !576, line: 58, type: !211)
!603 = distinct !DILexicalBlock(scope: !604, file: !576, line: 58, column: 9)
!604 = distinct !DILexicalBlock(scope: !600, file: !576, line: 57, column: 12)
!605 = !DILocation(line: 0, scope: !575)
!606 = !DILocation(line: 49, column: 14, scope: !575)
!607 = !DILocation(line: 49, column: 19, scope: !575)
!608 = !DILocation(line: 49, column: 22, scope: !575)
!609 = !{!610, !610, i64 0}
!610 = !{!"long long", !611, i64 0}
!611 = !{!"omnipotent char", !612, i64 0}
!612 = !{!"Simple C++ TBAA"}
!613 = !DILocation(line: 49, column: 37, scope: !575)
!614 = !DILocation(line: 49, column: 5, scope: !575)
!615 = !DILocation(line: 50, column: 10, scope: !616)
!616 = distinct !DILexicalBlock(scope: !575, file: !576, line: 49, column: 43)
!617 = distinct !{!617, !614, !618, !619}
!618 = !DILocation(line: 51, column: 5, scope: !575)
!619 = !{!"llvm.loop.mustprogress"}
!620 = !DILocation(line: 53, column: 11, scope: !600)
!621 = !DILocation(line: 53, column: 9, scope: !575)
!622 = !DILocation(line: 0, scope: !603)
!623 = !DILocation(line: 58, column: 34, scope: !624)
!624 = distinct !DILexicalBlock(scope: !603, file: !576, line: 58, column: 9)
!625 = !DILocation(line: 58, column: 32, scope: !624)
!626 = !DILocation(line: 58, column: 9, scope: !603)
!627 = !DILocation(line: 54, column: 42, scope: !599)
!628 = !{!629, !610, i64 0}
!629 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !610, i64 0, !610, i64 8, !610, i64 16, !611, i64 24, !611, i64 152, !611, i64 280, !610, i64 408}
!630 = !DILocation(line: 54, column: 46, scope: !599)
!631 = !DILocation(line: 54, column: 28, scope: !599)
!632 = !DILocation(line: 0, scope: !599)
!633 = !DILocation(line: 55, column: 34, scope: !599)
!634 = !{!629, !610, i64 8}
!635 = !DILocation(line: 55, column: 38, scope: !599)
!636 = !DILocation(line: 55, column: 20, scope: !599)
!637 = !DILocation(line: 56, column: 31, scope: !599)
!638 = !{!629, !610, i64 408}
!639 = !DILocation(line: 56, column: 26, scope: !599)
!640 = !DILocation(line: 56, column: 9, scope: !599)
!641 = !DILocation(line: 57, column: 5, scope: !599)
!642 = !DILocation(line: 59, column: 13, scope: !643)
!643 = distinct !DILexicalBlock(scope: !624, file: !576, line: 58, column: 55)
!644 = !DILocation(line: 60, column: 24, scope: !643)
!645 = !DILocation(line: 60, column: 21, scope: !643)
!646 = !DILocation(line: 61, column: 24, scope: !643)
!647 = !DILocation(line: 61, column: 21, scope: !643)
!648 = !DILocation(line: 58, column: 51, scope: !624)
!649 = distinct !{!649, !626, !650, !619}
!650 = !DILocation(line: 62, column: 9, scope: !603)
!651 = !DILocation(line: 64, column: 1, scope: !575)
!652 = !DISubprogram(name: "memcpy", scope: !37, file: !37, line: 94, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!126, !126, !444, !18}
!655 = !{}
!656 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !576, line: 66, type: !657, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !579, !126}
!659 = !{!660, !661}
!660 = !DILocalVariable(name: "copy", arg: 1, scope: !656, file: !576, line: 66, type: !579)
!661 = !DILocalVariable(name: "user_context", arg: 2, scope: !656, file: !576, line: 66, type: !126)
!662 = !DILocation(line: 0, scope: !656)
!663 = !DILocation(line: 68, column: 14, scope: !664)
!664 = distinct !DILexicalBlock(scope: !656, file: !576, line: 68, column: 9)
!665 = !DILocation(line: 68, column: 26, scope: !664)
!666 = !DILocation(line: 68, column: 18, scope: !664)
!667 = !DILocation(line: 68, column: 9, scope: !656)
!668 = !DILocation(line: 69, column: 58, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !576, line: 68, column: 31)
!670 = !{!629, !610, i64 16}
!671 = !DILocation(line: 69, column: 9, scope: !669)
!672 = !DILocation(line: 70, column: 5, scope: !669)
!673 = !DILocalVariable(name: "this", arg: 1, scope: !674, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!674 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !401, file: !399, line: 37, type: !413, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !412, retainedNodes: !675)
!675 = !{!673, !676, !677}
!676 = !DILocalVariable(name: "ctx", arg: 2, scope: !674, file: !399, line: 37, type: !126)
!677 = !DILocalVariable(name: "mem", arg: 3, scope: !674, file: !399, line: 37, type: !194)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32)
!679 = !DILocation(line: 0, scope: !674, inlinedAt: !680)
!680 = distinct !DILocation(line: 71, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !664, file: !576, line: 70, column: 12)
!682 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !680)
!683 = distinct !DILexicalBlock(scope: !684, file: !399, line: 43, column: 16)
!684 = distinct !DILexicalBlock(scope: !685, file: !399, line: 41, column: 20)
!685 = distinct !DILexicalBlock(scope: !686, file: !399, line: 39, column: 13)
!686 = distinct !DILexicalBlock(scope: !674, file: !399, line: 38, column: 54)
!687 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !680)
!688 = distinct !DILexicalBlock(scope: !686, file: !399, line: 48, column: 13)
!689 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !680)
!690 = !DILocalVariable(name: "this", arg: 1, scope: !691, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!691 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !401, file: !399, line: 57, type: !417, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !416, retainedNodes: !692)
!692 = !{!690, !693}
!693 = !DILocalVariable(name: "arg", arg: 2, scope: !691, file: !399, line: 57, type: !182)
!694 = !DILocation(line: 0, scope: !691, inlinedAt: !695)
!695 = distinct !DILocation(line: 71, column: 29, scope: !681)
!696 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !695)
!697 = distinct !DILexicalBlock(scope: !698, file: !399, line: 61, column: 16)
!698 = distinct !DILexicalBlock(scope: !691, file: !399, line: 59, column: 13)
!699 = !DILocalVariable(name: "this", arg: 1, scope: !700, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!700 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !401, file: !399, line: 166, type: !463, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !476, retainedNodes: !701)
!701 = !{!699}
!702 = !DILocation(line: 0, scope: !700, inlinedAt: !703)
!703 = distinct !DILocation(line: 71, column: 9, scope: !681)
!704 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !703)
!705 = distinct !DILexicalBlock(scope: !706, file: !399, line: 167, column: 19)
!706 = distinct !DILexicalBlock(scope: !707, file: !399, line: 167, column: 13)
!707 = distinct !DILexicalBlock(scope: !700, file: !399, line: 166, column: 16)
!708 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !703)
!709 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !680)
!710 = distinct !DILexicalBlock(scope: !688, file: !399, line: 48, column: 18)
!711 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !680)
!712 = !{!611, !611, i64 0}
!713 = !DILocalVariable(name: "this", arg: 1, scope: !714, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!714 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !401, file: !399, line: 162, type: !463, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !475, retainedNodes: !715)
!715 = !{!713}
!716 = !DILocation(line: 0, scope: !714, inlinedAt: !717)
!717 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !703)
!718 = distinct !DILexicalBlock(scope: !706, file: !399, line: 169, column: 16)
!719 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !717)
!720 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !717)
!721 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !717)
!722 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !717)
!723 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !703)
!724 = distinct !DILexicalBlock(scope: !725, file: !399, line: 173, column: 46)
!725 = distinct !DILexicalBlock(scope: !726, file: !399, line: 173, column: 24)
!726 = distinct !DILexicalBlock(scope: !718, file: !399, line: 171, column: 17)
!727 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !703)
!728 = distinct !DILexicalBlock(scope: !729, file: !399, line: 180, column: 40)
!729 = distinct !DILexicalBlock(scope: !707, file: !399, line: 180, column: 13)
!730 = !DILocation(line: 73, column: 1, scope: !656)
!731 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !576, line: 76, type: !732, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!581, !734, !10, !734, !10}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32)
!735 = !{!736, !737, !738, !739, !740, !741, !743, !745, !748, !751, !753, !756, !757, !758, !760}
!736 = !DILocalVariable(name: "src", arg: 1, scope: !731, file: !576, line: 76, type: !734)
!737 = !DILocalVariable(name: "src_host", arg: 2, scope: !731, file: !576, line: 76, type: !10)
!738 = !DILocalVariable(name: "dst", arg: 3, scope: !731, file: !576, line: 77, type: !734)
!739 = !DILocalVariable(name: "dst_host", arg: 4, scope: !731, file: !576, line: 77, type: !10)
!740 = !DILocalVariable(name: "c", scope: !731, file: !576, line: 79, type: !581)
!741 = !DILocalVariable(name: "i", scope: !742, file: !576, line: 83, type: !38)
!742 = distinct !DILexicalBlock(scope: !731, file: !576, line: 83, column: 5)
!743 = !DILocalVariable(name: "i", scope: !744, file: !576, line: 91, type: !38)
!744 = distinct !DILexicalBlock(scope: !731, file: !576, line: 91, column: 5)
!745 = !DILocalVariable(name: "zero", scope: !746, file: !576, line: 100, type: !581)
!746 = distinct !DILexicalBlock(scope: !747, file: !576, line: 98, column: 42)
!747 = distinct !DILexicalBlock(scope: !731, file: !576, line: 96, column: 9)
!748 = !DILocalVariable(name: "zero", scope: !749, file: !576, line: 107, type: !581)
!749 = distinct !DILexicalBlock(scope: !750, file: !576, line: 104, column: 28)
!750 = distinct !DILexicalBlock(scope: !731, file: !576, line: 104, column: 9)
!751 = !DILocalVariable(name: "i", scope: !752, file: !576, line: 115, type: !38)
!752 = distinct !DILexicalBlock(scope: !731, file: !576, line: 115, column: 5)
!753 = !DILocalVariable(name: "dst_stride_bytes", scope: !754, file: !576, line: 117, type: !211)
!754 = distinct !DILexicalBlock(scope: !755, file: !576, line: 115, column: 47)
!755 = distinct !DILexicalBlock(scope: !752, file: !576, line: 115, column: 5)
!756 = !DILocalVariable(name: "src_stride_bytes", scope: !754, file: !576, line: 118, type: !211)
!757 = !DILocalVariable(name: "insert", scope: !754, file: !576, line: 120, type: !38)
!758 = !DILocalVariable(name: "j", scope: !759, file: !576, line: 128, type: !38)
!759 = distinct !DILexicalBlock(scope: !754, file: !576, line: 128, column: 9)
!760 = !DILocalVariable(name: "j", scope: !761, file: !576, line: 151, type: !38)
!761 = distinct !DILexicalBlock(scope: !762, file: !576, line: 151, column: 9)
!762 = distinct !DILexicalBlock(scope: !731, file: !576, line: 145, column: 51)
!763 = !DILocation(line: 0, scope: !731)
!764 = !DILocation(line: 79, column: 5, scope: !731)
!765 = !DILocation(line: 79, column: 17, scope: !731)
!766 = !DILocation(line: 80, column: 13, scope: !731)
!767 = !DILocation(line: 80, column: 39, scope: !731)
!768 = !{!769, !770, i64 12}
!769 = !{!"_ZTS15halide_buffer_t", !610, i64 0, !770, i64 8, !770, i64 12, !610, i64 16, !771, i64 24, !774, i64 28, !770, i64 32, !770, i64 36}
!770 = !{!"any pointer", !611, i64 0}
!771 = !{!"_ZTS13halide_type_t", !772, i64 0, !611, i64 1, !773, i64 2}
!772 = !{!"_ZTS18halide_type_code_t", !611, i64 0}
!773 = !{!"short", !611, i64 0}
!774 = !{!"int", !611, i64 0}
!775 = !DILocation(line: 80, column: 24, scope: !731)
!776 = !DILocation(line: 80, column: 51, scope: !731)
!777 = !{!769, !610, i64 0}
!778 = !DILocation(line: 80, column: 7, scope: !731)
!779 = !DILocation(line: 80, column: 11, scope: !731)
!780 = !DILocation(line: 81, column: 13, scope: !731)
!781 = !DILocation(line: 81, column: 39, scope: !731)
!782 = !DILocation(line: 81, column: 24, scope: !731)
!783 = !DILocation(line: 81, column: 51, scope: !731)
!784 = !DILocation(line: 81, column: 7, scope: !731)
!785 = !DILocation(line: 81, column: 11, scope: !731)
!786 = !DILocalVariable(name: "this", arg: 1, scope: !787, type: !789, flags: DIFlagArtificial | DIFlagObjectPointer)
!787 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !221, file: !201, line: 481, type: !255, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !254, retainedNodes: !788)
!788 = !{!786}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!790 = !DILocation(line: 0, scope: !787, inlinedAt: !791)
!791 = distinct !DILocation(line: 82, column: 30, scope: !731)
!792 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !791)
!793 = !{!771, !611, i64 1}
!794 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !791)
!795 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !791)
!796 = !DILocation(line: 82, column: 20, scope: !731)
!797 = !DILocation(line: 82, column: 7, scope: !731)
!798 = !DILocation(line: 82, column: 18, scope: !731)
!799 = !DILocation(line: 0, scope: !742)
!800 = !DILocation(line: 84, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !576, line: 83, column: 45)
!802 = distinct !DILexicalBlock(scope: !742, file: !576, line: 83, column: 5)
!803 = !DILocation(line: 84, column: 21, scope: !801)
!804 = !DILocation(line: 85, column: 9, scope: !801)
!805 = !DILocation(line: 85, column: 31, scope: !801)
!806 = !DILocation(line: 86, column: 9, scope: !801)
!807 = !DILocation(line: 86, column: 31, scope: !801)
!808 = !DILocation(line: 90, column: 7, scope: !731)
!809 = !DILocation(line: 0, scope: !744)
!810 = !DILocation(line: 91, column: 30, scope: !811)
!811 = distinct !DILexicalBlock(scope: !744, file: !576, line: 91, column: 5)
!812 = !{!769, !774, i64 28}
!813 = !DILocation(line: 91, column: 23, scope: !811)
!814 = !DILocation(line: 91, column: 5, scope: !744)
!815 = !{!769, !770, i64 32}
!816 = !DILocation(line: 94, column: 17, scope: !731)
!817 = !DILocation(line: 94, column: 22, scope: !731)
!818 = !DILocation(line: 96, column: 33, scope: !747)
!819 = !DILocation(line: 96, column: 25, scope: !747)
!820 = !DILocation(line: 96, column: 44, scope: !747)
!821 = !DILocation(line: 92, column: 46, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !576, line: 91, column: 47)
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
!834 = distinct !{!834, !814, !835, !619}
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
!851 = !DILocation(line: 107, column: 21, scope: !749)
!852 = !DILocation(line: 108, column: 9, scope: !749)
!853 = !DILocation(line: 144, column: 14, scope: !731)
!854 = !DILocation(line: 144, column: 28, scope: !731)
!855 = !DILocation(line: 144, column: 25, scope: !731)
!856 = !DILocation(line: 144, column: 50, scope: !731)
!857 = !DILocation(line: 145, column: 28, scope: !731)
!858 = !DILocation(line: 117, column: 59, scope: !754)
!859 = !DILocation(line: 117, column: 47, scope: !754)
!860 = !DILocation(line: 0, scope: !787, inlinedAt: !861)
!861 = distinct !DILocation(line: 117, column: 78, scope: !754)
!862 = !DILocation(line: 117, column: 66, scope: !754)
!863 = !DILocation(line: 0, scope: !754)
!864 = !DILocation(line: 118, column: 59, scope: !754)
!865 = !DILocation(line: 118, column: 47, scope: !754)
!866 = !DILocation(line: 0, scope: !787, inlinedAt: !867)
!867 = distinct !DILocation(line: 118, column: 78, scope: !754)
!868 = !DILocation(line: 118, column: 66, scope: !754)
!869 = !DILocation(line: 121, column: 33, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !576, line: 121, column: 9)
!871 = distinct !DILexicalBlock(scope: !754, file: !576, line: 121, column: 9)
!872 = !DILocation(line: 121, column: 9, scope: !871)
!873 = !DILocation(line: 124, column: 36, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !576, line: 124, column: 17)
!875 = distinct !DILexicalBlock(scope: !870, file: !576, line: 121, column: 48)
!876 = !DILocation(line: 124, column: 34, scope: !874)
!877 = !DILocation(line: 124, column: 63, scope: !874)
!878 = !DILocation(line: 121, column: 44, scope: !870)
!879 = distinct !{!879, !872, !880, !619}
!880 = !DILocation(line: 127, column: 9, scope: !871)
!881 = !DILocation(line: 0, scope: !871)
!882 = !DILocation(line: 0, scope: !759)
!883 = !DILocation(line: 128, column: 27, scope: !884)
!884 = distinct !DILexicalBlock(scope: !759, file: !576, line: 128, column: 9)
!885 = !DILocation(line: 128, column: 9, scope: !759)
!886 = !DILocation(line: 133, column: 40, scope: !754)
!887 = !{!824, !774, i64 4}
!888 = !DILocation(line: 133, column: 28, scope: !754)
!889 = !DILocation(line: 133, column: 9, scope: !754)
!890 = !DILocation(line: 133, column: 26, scope: !754)
!891 = !DILocation(line: 135, column: 9, scope: !754)
!892 = !DILocation(line: 135, column: 36, scope: !754)
!893 = !DILocation(line: 136, column: 9, scope: !754)
!894 = !DILocation(line: 136, column: 36, scope: !754)
!895 = !DILocation(line: 115, column: 43, scope: !755)
!896 = !DILocation(line: 115, column: 23, scope: !755)
!897 = distinct !{!897, !850, !898, !619}
!898 = !DILocation(line: 137, column: 5, scope: !752)
!899 = !DILocation(line: 129, column: 38, scope: !900)
!900 = distinct !DILexicalBlock(scope: !884, file: !576, line: 128, column: 42)
!901 = !DILocation(line: 129, column: 27, scope: !900)
!902 = !DILocation(line: 129, column: 13, scope: !900)
!903 = !DILocation(line: 129, column: 25, scope: !900)
!904 = !DILocation(line: 130, column: 37, scope: !900)
!905 = !DILocation(line: 130, column: 13, scope: !900)
!906 = !DILocation(line: 130, column: 35, scope: !900)
!907 = !DILocation(line: 131, column: 37, scope: !900)
!908 = !DILocation(line: 131, column: 13, scope: !900)
!909 = !DILocation(line: 131, column: 35, scope: !900)
!910 = distinct !{!910, !885, !911, !619}
!911 = !DILocation(line: 132, column: 9, scope: !759)
!912 = !DILocation(line: 145, column: 25, scope: !731)
!913 = !DILocation(line: 144, column: 5, scope: !731)
!914 = !DILocation(line: 147, column: 25, scope: !762)
!915 = !DILocation(line: 147, column: 22, scope: !762)
!916 = !DILocation(line: 0, scope: !761)
!917 = !DILocation(line: 152, column: 31, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !576, line: 151, column: 49)
!919 = distinct !DILexicalBlock(scope: !761, file: !576, line: 151, column: 9)
!920 = !DILocation(line: 152, column: 29, scope: !918)
!921 = !DILocation(line: 153, column: 41, scope: !918)
!922 = !DILocation(line: 153, column: 39, scope: !918)
!923 = !DILocation(line: 154, column: 41, scope: !918)
!924 = !DILocation(line: 154, column: 39, scope: !918)
!925 = !DILocation(line: 156, column: 37, scope: !762)
!926 = !DILocation(line: 157, column: 47, scope: !762)
!927 = !DILocation(line: 158, column: 47, scope: !762)
!928 = distinct !{!928, !913, !929, !619}
!929 = !DILocation(line: 159, column: 5, scope: !731)
!930 = !DILocation(line: 160, column: 12, scope: !731)
!931 = !{i64 0, i64 8, !609, i64 8, i64 8, !609, i64 16, i64 8, !609, i64 24, i64 128, !712, i64 152, i64 128, !712, i64 280, i64 128, !712, i64 408, i64 8, !609}
!932 = !DILocation(line: 160, column: 5, scope: !731)
!933 = !DILocation(line: 161, column: 1, scope: !731)
!934 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !576, line: 163, type: !935, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!581, !734}
!937 = !{!938}
!938 = !DILocalVariable(name: "buf", arg: 1, scope: !934, file: !576, line: 163, type: !734)
!939 = !DILocation(line: 0, scope: !934)
!940 = !DILocation(line: 164, column: 12, scope: !934)
!941 = !DILocation(line: 164, column: 5, scope: !934)
!942 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !576, line: 167, type: !935, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !943)
!943 = !{!944}
!944 = !DILocalVariable(name: "buf", arg: 1, scope: !942, file: !576, line: 167, type: !734)
!945 = !DILocation(line: 0, scope: !942)
!946 = !DILocation(line: 168, column: 12, scope: !942)
!947 = !DILocation(line: 168, column: 5, scope: !942)
!948 = distinct !DISubprogram(name: "gl_error_name", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute13gl_error_nameEi", scope: !2, file: !6, line: 59, type: !949, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!182, !262}
!951 = !{!952}
!952 = !DILocalVariable(name: "err", arg: 1, scope: !948, file: !6, line: 59, type: !262)
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
!966 = distinct !DISubprogram(name: "find_kernel_by_name", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute19find_kernel_by_nameEPKcPKNS2_11ModuleStateE", scope: !2, file: !6, line: 114, type: !967, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !971)
!967 = !DISubroutineType(types: !968)
!968 = !{!190, !182, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(name: "kernel_name", arg: 1, scope: !966, file: !6, line: 114, type: !182)
!973 = !DILocalVariable(name: "module", arg: 2, scope: !966, file: !6, line: 114, type: !969)
!974 = !DILocalVariable(name: "kernel", scope: !966, file: !6, line: 115, type: !190)
!975 = !DILocation(line: 0, scope: !966)
!976 = !DILocation(line: 115, column: 34, scope: !966)
!977 = !{!770, !770, i64 0}
!978 = !DILocation(line: 116, column: 12, scope: !966)
!979 = !DILocation(line: 116, column: 19, scope: !966)
!980 = !DILocation(line: 116, column: 50, scope: !966)
!981 = !{!982, !770, i64 0}
!982 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute10KernelInfoE", !770, i64 0, !774, i64 4, !770, i64 8}
!983 = !DILocation(line: 116, column: 22, scope: !966)
!984 = !DILocation(line: 116, column: 63, scope: !966)
!985 = !DILocation(line: 116, column: 5, scope: !966)
!986 = !DILocation(line: 117, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !966, file: !6, line: 116, column: 69)
!988 = distinct !{!988, !985, !989, !619}
!989 = !DILocation(line: 118, column: 5, scope: !966)
!990 = !DILocation(line: 119, column: 5, scope: !966)
!991 = !DISubprogram(name: "strcmp", scope: !37, file: !37, line: 90, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!992 = !DISubroutineType(types: !993)
!993 = !{!38, !182, !182}
!994 = distinct !DISubprogram(name: "CheckAndReportError", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState19CheckAndReportErrorEPvPKc", scope: !7, file: !6, line: 135, type: !180, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !179, retainedNodes: !995)
!995 = !{!996, !998, !999, !1000}
!996 = !DILocalVariable(name: "this", arg: 1, scope: !994, type: !997, flags: DIFlagArtificial | DIFlagObjectPointer)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!998 = !DILocalVariable(name: "user_context", arg: 2, scope: !994, file: !6, line: 135, type: !126)
!999 = !DILocalVariable(name: "location", arg: 3, scope: !994, file: !6, line: 135, type: !182)
!1000 = !DILocalVariable(name: "err", scope: !994, file: !6, line: 136, type: !24)
!1001 = !DILocation(line: 0, scope: !994)
!1002 = !DILocation(line: 136, column: 18, scope: !994)
!1003 = !{!1004, !770, i64 56}
!1004 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11GlobalStateE", !1005, i64 0, !770, i64 4, !770, i64 8, !770, i64 12, !770, i64 16, !770, i64 20, !770, i64 24, !770, i64 28, !770, i64 32, !770, i64 36, !770, i64 40, !770, i64 44, !770, i64 48, !770, i64 52, !770, i64 56, !770, i64 60, !770, i64 64, !770, i64 68, !770, i64 72, !770, i64 76, !770, i64 80, !770, i64 84, !770, i64 88, !770, i64 92, !770, i64 96, !770, i64 100, !770, i64 104, !770, i64 108, !770, i64 112, !770, i64 116, !770, i64 120}
!1005 = !{!"bool", !611, i64 0}
!1006 = !DILocation(line: 137, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !994, file: !6, line: 137, column: 9)
!1008 = !DILocation(line: 137, column: 9, scope: !994)
!1009 = !DILocalVariable(name: "this", arg: 1, scope: !1010, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1010 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !481, file: !399, line: 37, type: !490, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !489, retainedNodes: !1011)
!1011 = !{!1009, !1012, !1013}
!1012 = !DILocalVariable(name: "ctx", arg: 2, scope: !1010, file: !399, line: 37, type: !126)
!1013 = !DILocalVariable(name: "mem", arg: 3, scope: !1010, file: !399, line: 37, type: !194)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 32)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 138, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1007, file: !6, line: 137, column: 29)
!1018 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1016)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !399, line: 43, column: 16)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !399, line: 41, column: 20)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !399, line: 39, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1010, file: !399, line: 38, column: 54)
!1023 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1016)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !399, line: 48, column: 13)
!1025 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1016)
!1026 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1016)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !399, line: 48, column: 18)
!1028 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1016)
!1029 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !1016)
!1030 = !DILocation(line: 0, scope: !1024, inlinedAt: !1016)
!1031 = !DILocalVariable(name: "this", arg: 1, scope: !1032, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1032 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !481, file: !399, line: 57, type: !494, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !493, retainedNodes: !1033)
!1033 = !{!1031, !1034}
!1034 = !DILocalVariable(name: "arg", arg: 2, scope: !1032, file: !399, line: 57, type: !182)
!1035 = !DILocation(line: 0, scope: !1032, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 139, column: 13, scope: !1017)
!1037 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1036)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !399, line: 61, column: 16)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !399, line: 59, column: 13)
!1040 = !DILocation(line: 139, column: 35, scope: !1017)
!1041 = !DILocation(line: 0, scope: !1032, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 139, column: 32, scope: !1017)
!1043 = !DILocation(line: 59, column: 17, scope: !1039, inlinedAt: !1042)
!1044 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !1042)
!1045 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !1042)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !399, line: 59, column: 29)
!1047 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !1042)
!1048 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1042)
!1049 = !DILocation(line: 0, scope: !1039, inlinedAt: !1042)
!1050 = !DILocation(line: 0, scope: !1032, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 140, column: 13, scope: !1017)
!1052 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1051)
!1053 = !DILocalVariable(name: "this", arg: 1, scope: !1054, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1054 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !481, file: !399, line: 72, type: !501, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !500, retainedNodes: !1055)
!1055 = !{!1053, !1056}
!1056 = !DILocalVariable(name: "arg", arg: 2, scope: !1054, file: !399, line: 72, type: !262)
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
!1079 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !481, file: !399, line: 166, type: !531, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !544, retainedNodes: !1080)
!1080 = !{!1078}
!1081 = !DILocation(line: 0, scope: !1079, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 138, column: 9, scope: !1017)
!1083 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !1082)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !399, line: 166, column: 16)
!1085 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1082)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !399, line: 167, column: 19)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !399, line: 167, column: 13)
!1088 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1082)
!1089 = !DILocalVariable(name: "this", arg: 1, scope: !1090, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!1090 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !481, file: !399, line: 162, type: !531, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !543, retainedNodes: !1091)
!1091 = !{!1089}
!1092 = !DILocation(line: 0, scope: !1090, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1082)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !399, line: 169, column: 16)
!1095 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1093)
!1096 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1093)
!1097 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !1093)
!1098 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1093)
!1099 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1082)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !399, line: 171, column: 39)
!1101 = distinct !DILexicalBlock(scope: !1094, file: !399, line: 171, column: 17)
!1102 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1082)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !399, line: 180, column: 40)
!1104 = distinct !DILexicalBlock(scope: !1084, file: !399, line: 180, column: 13)
!1105 = !DILocation(line: 142, column: 9, scope: !1017)
!1106 = !DILocation(line: 145, column: 1, scope: !994)
!1107 = distinct !DISubprogram(name: "debug_buffer", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12debug_bufferEPvP15halide_buffer_t", scope: !2, file: !6, line: 154, type: !1108, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !126, !558}
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "user_context", arg: 1, scope: !1107, file: !6, line: 154, type: !126)
!1112 = !DILocalVariable(name: "buf", arg: 2, scope: !1107, file: !6, line: 154, type: !558)
!1113 = !DILocation(line: 0, scope: !1107)
!1114 = !DILocation(line: 155, column: 5, scope: !1107)
!1115 = !DILocation(line: 0, scope: !674, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 155, column: 5, scope: !1107)
!1117 = !DILocation(line: 38, column: 11, scope: !674, inlinedAt: !1116)
!1118 = !{!1119, !770, i64 12}
!1119 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !770, i64 0, !770, i64 4, !770, i64 8, !770, i64 12, !1005, i64 16, !611, i64 17}
!1120 = !DILocation(line: 38, column: 30, scope: !674, inlinedAt: !1116)
!1121 = !{!1119, !1005, i64 16}
!1122 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1116)
!1123 = !DILocation(line: 44, column: 13, scope: !683, inlinedAt: !1116)
!1124 = !DILocation(line: 44, column: 17, scope: !683, inlinedAt: !1116)
!1125 = !{!1119, !770, i64 0}
!1126 = !DILocation(line: 47, column: 9, scope: !686, inlinedAt: !1116)
!1127 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1116)
!1128 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1116)
!1129 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1116)
!1130 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1116)
!1131 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1116)
!1132 = !DILocation(line: 0, scope: !688, inlinedAt: !1116)
!1133 = !DILocation(line: 53, column: 13, scope: !1134, inlinedAt: !1116)
!1134 = distinct !DILexicalBlock(scope: !688, file: !399, line: 51, column: 16)
!1135 = !DILocation(line: 53, column: 17, scope: !1134, inlinedAt: !1116)
!1136 = !DILocation(line: 0, scope: !691, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 156, column: 9, scope: !1107)
!1138 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1137)
!1139 = !DILocation(line: 156, column: 33, scope: !1107)
!1140 = !DILocalVariable(name: "this", arg: 1, scope: !1141, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1141 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !401, file: !399, line: 77, type: !429, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !428, retainedNodes: !1142)
!1142 = !{!1140, !1143}
!1143 = !DILocalVariable(name: "arg", arg: 2, scope: !1141, file: !399, line: 77, type: !211)
!1144 = !DILocation(line: 0, scope: !1141, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 156, column: 25, scope: !1107)
!1146 = !DILocation(line: 78, column: 15, scope: !1141, inlinedAt: !1145)
!1147 = !DILocation(line: 0, scope: !691, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 156, column: 40, scope: !1107)
!1149 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1148)
!1150 = !DILocation(line: 0, scope: !691, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 157, column: 9, scope: !1107)
!1152 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1151)
!1153 = !DILocation(line: 157, column: 45, scope: !1107)
!1154 = !DILocalVariable(name: "this", arg: 1, scope: !1155, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1155 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !401, file: !399, line: 82, type: !432, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !431, retainedNodes: !1156)
!1156 = !{!1154, !1157}
!1157 = !DILocalVariable(name: "arg", arg: 2, scope: !1155, file: !399, line: 82, type: !260)
!1158 = !DILocation(line: 0, scope: !1155, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 157, column: 29, scope: !1107)
!1160 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !1159)
!1161 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !1159)
!1162 = !DILocation(line: 0, scope: !691, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 157, column: 52, scope: !1107)
!1164 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1163)
!1165 = !DILocation(line: 0, scope: !691, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 158, column: 9, scope: !1107)
!1167 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1166)
!1168 = !DILocation(line: 158, column: 31, scope: !1107)
!1169 = !DILocalVariable(name: "this", arg: 1, scope: !1170, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1170 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !401, file: !399, line: 97, type: !442, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !441, retainedNodes: !1171)
!1171 = !{!1169, !1172}
!1172 = !DILocalVariable(name: "arg", arg: 2, scope: !1170, file: !399, line: 97, type: !444)
!1173 = !DILocation(line: 0, scope: !1170, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 158, column: 23, scope: !1107)
!1175 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !1174)
!1176 = !DILocation(line: 0, scope: !691, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 158, column: 36, scope: !1107)
!1178 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1177)
!1179 = !DILocation(line: 0, scope: !691, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 159, column: 9, scope: !1107)
!1181 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1180)
!1182 = !DILocation(line: 159, column: 33, scope: !1107)
!1183 = !DILocation(line: 159, column: 40, scope: !1107)
!1184 = !DILocalVariable(name: "this", arg: 1, scope: !1185, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1185 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !401, file: !399, line: 72, type: !426, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !425, retainedNodes: !1186)
!1186 = !{!1184, !1187}
!1187 = !DILocalVariable(name: "arg", arg: 2, scope: !1185, file: !399, line: 72, type: !262)
!1188 = !DILocation(line: 0, scope: !1185, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 159, column: 25, scope: !1107)
!1190 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1189)
!1191 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1189)
!1192 = !DILocation(line: 0, scope: !691, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 159, column: 47, scope: !1107)
!1194 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1193)
!1195 = !DILocation(line: 159, column: 62, scope: !1107)
!1196 = !DILocation(line: 159, column: 69, scope: !1107)
!1197 = !DILocation(line: 0, scope: !1185, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 159, column: 54, scope: !1107)
!1199 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1198)
!1200 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1198)
!1201 = !DILocation(line: 0, scope: !691, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 160, column: 9, scope: !1107)
!1203 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1202)
!1204 = !DILocation(line: 160, column: 24, scope: !1107)
!1205 = !DILocation(line: 160, column: 31, scope: !1107)
!1206 = !DILocation(line: 0, scope: !1185, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 160, column: 16, scope: !1107)
!1208 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1207)
!1209 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1207)
!1210 = !DILocation(line: 0, scope: !691, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 160, column: 38, scope: !1107)
!1212 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1211)
!1213 = !DILocation(line: 160, column: 53, scope: !1107)
!1214 = !DILocation(line: 160, column: 60, scope: !1107)
!1215 = !DILocation(line: 0, scope: !1185, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 160, column: 45, scope: !1107)
!1217 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1216)
!1218 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1216)
!1219 = !DILocation(line: 0, scope: !691, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 160, column: 67, scope: !1107)
!1221 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1220)
!1222 = !DILocation(line: 0, scope: !691, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 161, column: 9, scope: !1107)
!1224 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1223)
!1225 = !DILocation(line: 161, column: 33, scope: !1107)
!1226 = !DILocation(line: 161, column: 40, scope: !1107)
!1227 = !DILocation(line: 0, scope: !1185, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 161, column: 25, scope: !1107)
!1229 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1228)
!1230 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1228)
!1231 = !DILocation(line: 0, scope: !691, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 161, column: 47, scope: !1107)
!1233 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1232)
!1234 = !DILocation(line: 161, column: 62, scope: !1107)
!1235 = !DILocation(line: 161, column: 69, scope: !1107)
!1236 = !DILocation(line: 0, scope: !1185, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 161, column: 54, scope: !1107)
!1238 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1237)
!1239 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1237)
!1240 = !DILocation(line: 0, scope: !691, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 162, column: 9, scope: !1107)
!1242 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1241)
!1243 = !DILocation(line: 162, column: 24, scope: !1107)
!1244 = !DILocation(line: 162, column: 31, scope: !1107)
!1245 = !DILocation(line: 0, scope: !1185, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 162, column: 16, scope: !1107)
!1247 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1246)
!1248 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1246)
!1249 = !DILocation(line: 0, scope: !691, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 162, column: 38, scope: !1107)
!1251 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1250)
!1252 = !DILocation(line: 162, column: 53, scope: !1107)
!1253 = !DILocation(line: 162, column: 60, scope: !1107)
!1254 = !DILocation(line: 0, scope: !1185, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 162, column: 45, scope: !1107)
!1256 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1255)
!1257 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1255)
!1258 = !DILocation(line: 0, scope: !691, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 162, column: 67, scope: !1107)
!1260 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1259)
!1261 = !DILocation(line: 0, scope: !691, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 163, column: 9, scope: !1107)
!1263 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1262)
!1264 = !DILocation(line: 163, column: 30, scope: !1107)
!1265 = !DILocation(line: 163, column: 37, scope: !1107)
!1266 = !DILocation(line: 0, scope: !1185, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 163, column: 22, scope: !1107)
!1268 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1267)
!1269 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1267)
!1270 = !DILocation(line: 0, scope: !691, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 163, column: 41, scope: !1107)
!1272 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1271)
!1273 = !DILocation(line: 163, column: 56, scope: !1107)
!1274 = !DILocation(line: 163, column: 63, scope: !1107)
!1275 = !DILocation(line: 0, scope: !1185, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 163, column: 48, scope: !1107)
!1277 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1276)
!1278 = !{!1119, !770, i64 8}
!1279 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1276)
!1280 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1276)
!1281 = !DILocation(line: 0, scope: !691, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 164, column: 9, scope: !1107)
!1283 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1282)
!1284 = !DILocation(line: 164, column: 24, scope: !1107)
!1285 = !DILocation(line: 164, column: 31, scope: !1107)
!1286 = !DILocation(line: 0, scope: !1185, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 164, column: 16, scope: !1107)
!1288 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1287)
!1289 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1287)
!1290 = !DILocation(line: 0, scope: !691, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 164, column: 35, scope: !1107)
!1292 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1291)
!1293 = !DILocation(line: 164, column: 50, scope: !1107)
!1294 = !DILocation(line: 164, column: 57, scope: !1107)
!1295 = !DILocation(line: 0, scope: !1185, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 164, column: 42, scope: !1107)
!1297 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1296)
!1298 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1296)
!1299 = !DILocation(line: 0, scope: !691, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 164, column: 61, scope: !1107)
!1301 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1300)
!1302 = !DILocation(line: 0, scope: !691, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 165, column: 9, scope: !1107)
!1304 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1303)
!1305 = !DILocation(line: 165, column: 31, scope: !1107)
!1306 = !DILocalVariable(name: "this", arg: 1, scope: !1307, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1307 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !401, file: !399, line: 108, type: !451, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !450, retainedNodes: !1308)
!1308 = !{!1306, !1309}
!1309 = !DILocalVariable(name: "t", arg: 2, scope: !1307, file: !399, line: 108, type: !251)
!1310 = !DILocation(line: 0, scope: !1307, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 165, column: 23, scope: !1107)
!1312 = !DILocation(line: 109, column: 15, scope: !1307, inlinedAt: !1311)
!1313 = !DILocation(line: 0, scope: !691, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 165, column: 36, scope: !1107)
!1315 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1314)
!1316 = !DILocation(line: 0, scope: !691, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 166, column: 9, scope: !1107)
!1318 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1317)
!1319 = !DILocalVariable(name: "this", arg: 1, scope: !1320, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1320 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !208, file: !201, line: 1466, type: !302, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !301, retainedNodes: !1321)
!1321 = !{!1319}
!1322 = !DILocation(line: 0, scope: !1320, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 166, column: 37, scope: !1107)
!1324 = !DILocalVariable(name: "this", arg: 1, scope: !1325, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1325 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !208, file: !201, line: 1454, type: !288, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !287, retainedNodes: !1326)
!1326 = !{!1324, !1327}
!1327 = !DILocalVariable(name: "flag", arg: 2, scope: !1325, file: !201, line: 1454, type: !292)
!1328 = !DILocation(line: 0, scope: !1325, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 1467, column: 16, scope: !1320, inlinedAt: !1323)
!1330 = !DILocation(line: 1455, column: 17, scope: !1325, inlinedAt: !1329)
!1331 = !{!769, !610, i64 16}
!1332 = !DILocation(line: 0, scope: !1185, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 166, column: 29, scope: !1107)
!1334 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1333)
!1335 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1333)
!1336 = !DILocation(line: 0, scope: !691, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 166, column: 50, scope: !1107)
!1338 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1337)
!1339 = !DILocation(line: 0, scope: !691, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 167, column: 9, scope: !1107)
!1341 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1340)
!1342 = !DILocalVariable(name: "this", arg: 1, scope: !1343, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1343 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !208, file: !201, line: 1470, type: !302, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !304, retainedNodes: !1344)
!1344 = !{!1342}
!1345 = !DILocation(line: 0, scope: !1343, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 167, column: 39, scope: !1107)
!1347 = !DILocation(line: 0, scope: !1325, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 1471, column: 16, scope: !1343, inlinedAt: !1346)
!1349 = !DILocation(line: 1455, column: 17, scope: !1325, inlinedAt: !1348)
!1350 = !DILocation(line: 167, column: 34, scope: !1107)
!1351 = !DILocation(line: 0, scope: !1185, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 167, column: 31, scope: !1107)
!1353 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1352)
!1354 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1352)
!1355 = !DILocation(line: 0, scope: !691, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 167, column: 54, scope: !1107)
!1357 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1356)
!1358 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1356)
!1359 = !{!1119, !770, i64 4}
!1360 = !DILocation(line: 0, scope: !700, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 155, column: 5, scope: !1107)
!1362 = !DILocation(line: 167, column: 14, scope: !706, inlinedAt: !1361)
!1363 = !DILocation(line: 0, scope: !706, inlinedAt: !1361)
!1364 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !1361)
!1365 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1361)
!1366 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1361)
!1367 = !DILocation(line: 0, scope: !714, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1361)
!1369 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1368)
!1370 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1368)
!1371 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1368)
!1372 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1368)
!1373 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1361)
!1374 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !1361)
!1375 = !{i8 0, i8 2}
!1376 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !1361)
!1377 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1361)
!1378 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !1361)
!1379 = !DILocation(line: 168, column: 1, scope: !1107)
!1380 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute11GlobalState4initEv", scope: !7, file: !6, line: 170, type: !176, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !175, retainedNodes: !1381)
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "this", arg: 1, scope: !1380, type: !997, flags: DIFlagArtificial | DIFlagObjectPointer)
!1383 = !DILocation(line: 0, scope: !1380)
!1384 = !DILocation(line: 171, column: 5, scope: !1380)
!1385 = !DILocation(line: 171, column: 17, scope: !1380)
!1386 = !{!1004, !1005, i64 0}
!1387 = !DILocation(line: 173, column: 5, scope: !1380)
!1388 = !{!1004, !770, i64 4}
!1389 = !{!1004, !770, i64 8}
!1390 = !{!1004, !770, i64 12}
!1391 = !{!1004, !770, i64 16}
!1392 = !{!1004, !770, i64 20}
!1393 = !{!1004, !770, i64 24}
!1394 = !{!1004, !770, i64 28}
!1395 = !{!1004, !770, i64 32}
!1396 = !{!1004, !770, i64 36}
!1397 = !{!1004, !770, i64 40}
!1398 = !{!1004, !770, i64 44}
!1399 = !{!1004, !770, i64 48}
!1400 = !{!1004, !770, i64 52}
!1401 = !{!1004, !770, i64 60}
!1402 = !{!1004, !770, i64 64}
!1403 = !{!1004, !770, i64 68}
!1404 = !{!1004, !770, i64 72}
!1405 = !{!1004, !770, i64 76}
!1406 = !{!1004, !770, i64 80}
!1407 = !{!1004, !770, i64 84}
!1408 = !{!1004, !770, i64 88}
!1409 = !{!1004, !770, i64 92}
!1410 = !{!1004, !770, i64 96}
!1411 = !{!1004, !770, i64 100}
!1412 = !{!1004, !770, i64 104}
!1413 = !{!1004, !770, i64 108}
!1414 = !{!1004, !770, i64 112}
!1415 = !{!1004, !770, i64 116}
!1416 = !{!1004, !770, i64 120}
!1417 = !DILocation(line: 175, column: 1, scope: !1380)
!1418 = distinct !DISubprogram(name: "load_gl_func", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12load_gl_funcEPvPKcPS3_b", scope: !2, file: !6, line: 177, type: !1419, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!38, !126, !182, !547, !10}
!1421 = !{!1422, !1423, !1424, !1425, !1426}
!1422 = !DILocalVariable(name: "user_context", arg: 1, scope: !1418, file: !6, line: 177, type: !126)
!1423 = !DILocalVariable(name: "name", arg: 2, scope: !1418, file: !6, line: 177, type: !182)
!1424 = !DILocalVariable(name: "ptr", arg: 3, scope: !1418, file: !6, line: 177, type: !547)
!1425 = !DILocalVariable(name: "required", arg: 4, scope: !1418, file: !6, line: 177, type: !10)
!1426 = !DILocalVariable(name: "p", scope: !1418, file: !6, line: 178, type: !126)
!1427 = !DILocation(line: 0, scope: !1418)
!1428 = !DILocation(line: 178, column: 15, scope: !1418)
!1429 = !DILocation(line: 179, column: 10, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1418, file: !6, line: 179, column: 9)
!1431 = !DILocation(line: 179, column: 12, scope: !1430)
!1432 = !DILocation(line: 0, scope: !1010, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 180, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !6, line: 179, column: 25)
!1435 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1433)
!1436 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1433)
!1437 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1433)
!1438 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1433)
!1439 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1433)
!1440 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !1433)
!1441 = !DILocation(line: 0, scope: !1024, inlinedAt: !1433)
!1442 = !DILocation(line: 0, scope: !1032, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 180, column: 29, scope: !1434)
!1444 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1443)
!1445 = !DILocation(line: 0, scope: !1032, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 180, column: 71, scope: !1434)
!1447 = !DILocation(line: 59, column: 17, scope: !1039, inlinedAt: !1446)
!1448 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !1446)
!1449 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !1446)
!1450 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !1446)
!1451 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1446)
!1452 = !DILocation(line: 0, scope: !1039, inlinedAt: !1446)
!1453 = !DILocation(line: 0, scope: !1079, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 180, column: 9, scope: !1434)
!1455 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !1454)
!1456 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1454)
!1457 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1454)
!1458 = !DILocation(line: 0, scope: !1090, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1454)
!1460 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1459)
!1461 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1459)
!1462 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !1459)
!1463 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1459)
!1464 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1454)
!1465 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1454)
!1466 = !DILocation(line: 181, column: 9, scope: !1434)
!1467 = !DILocation(line: 183, column: 10, scope: !1418)
!1468 = !DILocation(line: 184, column: 5, scope: !1418)
!1469 = !DILocation(line: 185, column: 1, scope: !1418)
!1470 = !DISubprogram(name: "halide_opengl_get_proc_address", scope: !1471, file: !1471, line: 61, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!1471 = !DIFile(filename: "src/runtime/HalideRuntimeOpenGLCompute.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!126, !126, !182}
!1474 = distinct !DISubprogram(name: "halide_openglcompute_init", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute25halide_openglcompute_initEPv", scope: !2, file: !6, line: 188, type: !377, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1475)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "user_context", arg: 1, scope: !1474, file: !6, line: 188, type: !126)
!1477 = !DILocation(line: 0, scope: !1474)
!1478 = !DILocation(line: 189, column: 22, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 189, column: 9)
!1480 = !DILocation(line: 189, column: 9, scope: !1474)
!1481 = !DILocation(line: 193, column: 18, scope: !1474)
!1482 = !DILocation(line: 196, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 196, column: 9)
!1484 = !DILocation(line: 196, column: 9, scope: !1474)
!1485 = !DILocation(line: 0, scope: !1010, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 197, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !6, line: 196, column: 53)
!1488 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !1486)
!1489 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !1486)
!1490 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !1486)
!1491 = !DILocation(line: 0, scope: !1032, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 197, column: 29, scope: !1487)
!1493 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !1492)
!1494 = !DILocation(line: 0, scope: !1079, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 197, column: 9, scope: !1487)
!1496 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !1495)
!1497 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !1495)
!1498 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !1486)
!1499 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !1486)
!1500 = !DILocation(line: 0, scope: !1090, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !1495)
!1502 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !1501)
!1503 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !1501)
!1504 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !1501)
!1505 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !1501)
!1506 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1495)
!1507 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1495)
!1508 = !DILocation(line: 198, column: 9, scope: !1487)
!1509 = !DILocation(line: 206, column: 5, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1511 = !DILocation(line: 206, column: 5, scope: !1474)
!1512 = !DILocation(line: 206, column: 5, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1514 = !DILocation(line: 206, column: 5, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1516 = !DILocation(line: 206, column: 5, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1518 = !DILocation(line: 206, column: 5, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1520 = !DILocation(line: 206, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1522 = !DILocation(line: 206, column: 5, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1524 = !DILocation(line: 206, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1526 = !DILocation(line: 206, column: 5, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1528 = !DILocation(line: 206, column: 5, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1530 = !DILocation(line: 206, column: 5, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1532 = !DILocation(line: 206, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1534 = !DILocation(line: 206, column: 5, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1536 = !DILocation(line: 206, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1538 = !DILocation(line: 206, column: 5, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1540 = !DILocation(line: 206, column: 5, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1542 = !DILocation(line: 206, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1544 = !DILocation(line: 206, column: 5, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1546 = !DILocation(line: 206, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1548 = !DILocation(line: 206, column: 5, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1550 = !DILocation(line: 206, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1552 = !DILocation(line: 206, column: 5, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1554 = !DILocation(line: 206, column: 5, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1556 = !DILocation(line: 206, column: 5, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1558 = !DILocation(line: 206, column: 5, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1560 = !DILocation(line: 206, column: 5, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1562 = !DILocation(line: 206, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1564 = !DILocation(line: 206, column: 5, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1566 = !DILocation(line: 206, column: 5, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1568 = !DILocation(line: 206, column: 5, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 206, column: 5)
!1570 = !DILocation(line: 0, scope: !674, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 209, column: 5, scope: !1474)
!1572 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1571)
!1573 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1571)
!1574 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1571)
!1575 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1571)
!1576 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1571)
!1577 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1571)
!1578 = !DILocation(line: 0, scope: !688, inlinedAt: !1571)
!1579 = !DILocation(line: 0, scope: !691, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 209, column: 25, scope: !1474)
!1581 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1580)
!1582 = !DILocation(line: 209, column: 65, scope: !1474)
!1583 = !DILocation(line: 209, column: 52, scope: !1474)
!1584 = !DILocation(line: 0, scope: !1170, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 209, column: 49, scope: !1474)
!1586 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !1585)
!1587 = !DILocation(line: 0, scope: !691, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 209, column: 87, scope: !1474)
!1589 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1588)
!1590 = !DILocation(line: 0, scope: !700, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 209, column: 5, scope: !1474)
!1592 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !1591)
!1593 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1591)
!1594 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1591)
!1595 = !DILocation(line: 0, scope: !714, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1591)
!1597 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1596)
!1598 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1596)
!1599 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1596)
!1600 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1596)
!1601 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1591)
!1602 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1591)
!1603 = !DILocation(line: 211, column: 30, scope: !1474)
!1604 = !DILocation(line: 212, column: 5, scope: !1474)
!1605 = !DILocation(line: 213, column: 1, scope: !1474)
!1606 = !DISubprogram(name: "halide_opengl_create_context", scope: !1471, file: !1471, line: 68, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!1607 = distinct !DISubprogram(name: "halide_openglcompute_device_release", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_device_releaseEPv", scope: !2, file: !6, line: 219, type: !377, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1614, !1616, !1617}
!1609 = !DILocalVariable(name: "user_context", arg: 1, scope: !1607, file: !6, line: 219, type: !126)
!1610 = !DILocalVariable(name: "t_before", scope: !1607, file: !6, line: 221, type: !211)
!1611 = !DILocalVariable(name: "mod", scope: !1607, file: !6, line: 227, type: !186)
!1612 = !DILocalVariable(name: "kernel", scope: !1613, file: !6, line: 229, type: !190)
!1613 = distinct !DILexicalBlock(scope: !1607, file: !6, line: 228, column: 17)
!1614 = !DILocalVariable(name: "next_kernel", scope: !1615, file: !6, line: 231, type: !190)
!1615 = distinct !DILexicalBlock(scope: !1613, file: !6, line: 230, column: 24)
!1616 = !DILocalVariable(name: "next", scope: !1613, file: !6, line: 238, type: !186)
!1617 = !DILocalVariable(name: "t_after", scope: !1607, file: !6, line: 248, type: !211)
!1618 = !DILocation(line: 0, scope: !1607)
!1619 = !DILocation(line: 221, column: 25, scope: !1607)
!1620 = !DILocation(line: 0, scope: !674, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 224, column: 5, scope: !1607)
!1622 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1621)
!1623 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1621)
!1624 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1621)
!1625 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1621)
!1626 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1621)
!1627 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1621)
!1628 = !DILocation(line: 0, scope: !688, inlinedAt: !1621)
!1629 = !DILocation(line: 0, scope: !691, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 224, column: 25, scope: !1607)
!1631 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1630)
!1632 = !DILocation(line: 0, scope: !1170, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 225, column: 25, scope: !1607)
!1634 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !1633)
!1635 = !DILocation(line: 0, scope: !691, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 225, column: 41, scope: !1607)
!1637 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1636)
!1638 = !DILocation(line: 0, scope: !700, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 224, column: 5, scope: !1607)
!1640 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !1639)
!1641 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1639)
!1642 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1639)
!1643 = !DILocation(line: 0, scope: !714, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1639)
!1645 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1644)
!1646 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1644)
!1647 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1644)
!1648 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1644)
!1649 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1639)
!1650 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1639)
!1651 = !DILocation(line: 228, column: 12, scope: !1607)
!1652 = !DILocation(line: 228, column: 5, scope: !1607)
!1653 = !DILocation(line: 229, column: 35, scope: !1613)
!1654 = !{!1655, !770, i64 0}
!1655 = !{!"_ZTSN6Halide7Runtime8Internal13OpenGLCompute11ModuleStateE", !770, i64 0, !770, i64 4}
!1656 = !DILocation(line: 0, scope: !1613)
!1657 = !DILocation(line: 230, column: 16, scope: !1613)
!1658 = !DILocation(line: 230, column: 9, scope: !1613)
!1659 = !DILocation(line: 231, column: 47, scope: !1615)
!1660 = !{!982, !770, i64 8}
!1661 = !DILocation(line: 0, scope: !1615)
!1662 = !DILocation(line: 232, column: 26, scope: !1615)
!1663 = !DILocation(line: 232, column: 48, scope: !1615)
!1664 = !{!982, !774, i64 4}
!1665 = !DILocation(line: 232, column: 13, scope: !1615)
!1666 = !DILocation(line: 233, column: 26, scope: !1615)
!1667 = !DILocation(line: 233, column: 13, scope: !1615)
!1668 = !DILocation(line: 234, column: 18, scope: !1615)
!1669 = !DILocation(line: 234, column: 13, scope: !1615)
!1670 = distinct !{!1670, !1658, !1671, !619}
!1671 = !DILocation(line: 236, column: 9, scope: !1613)
!1672 = !DILocation(line: 237, column: 21, scope: !1613)
!1673 = !DILocation(line: 238, column: 34, scope: !1613)
!1674 = distinct !{!1674, !1652, !1675, !619}
!1675 = !DILocation(line: 243, column: 5, scope: !1607)
!1676 = !DILocation(line: 245, column: 20, scope: !1607)
!1677 = !DILocation(line: 245, column: 18, scope: !1607)
!1678 = !{i64 0, i64 1, !1679, i64 4, i64 4, !977, i64 8, i64 4, !977, i64 12, i64 4, !977, i64 16, i64 4, !977, i64 20, i64 4, !977, i64 24, i64 4, !977, i64 28, i64 4, !977, i64 32, i64 4, !977, i64 36, i64 4, !977, i64 40, i64 4, !977, i64 44, i64 4, !977, i64 48, i64 4, !977, i64 52, i64 4, !977, i64 56, i64 4, !977, i64 60, i64 4, !977, i64 64, i64 4, !977, i64 68, i64 4, !977, i64 72, i64 4, !977, i64 76, i64 4, !977, i64 80, i64 4, !977, i64 84, i64 4, !977, i64 88, i64 4, !977, i64 92, i64 4, !977, i64 96, i64 4, !977, i64 100, i64 4, !977, i64 104, i64 4, !977, i64 108, i64 4, !977, i64 112, i64 4, !977, i64 116, i64 4, !977, i64 120, i64 4, !977}
!1679 = !{!1005, !1005, i64 0}
!1680 = !DILocation(line: 245, column: 5, scope: !1607)
!1681 = !DILocation(line: 248, column: 24, scope: !1607)
!1682 = !DILocation(line: 0, scope: !674, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 249, column: 5, scope: !1607)
!1684 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1683)
!1685 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1683)
!1686 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1683)
!1687 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1683)
!1688 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1683)
!1689 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1683)
!1690 = !DILocation(line: 0, scope: !688, inlinedAt: !1683)
!1691 = !DILocation(line: 0, scope: !691, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 249, column: 25, scope: !1607)
!1693 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1692)
!1694 = !DILocation(line: 249, column: 53, scope: !1607)
!1695 = !DILocation(line: 249, column: 44, scope: !1607)
!1696 = !DILocation(line: 249, column: 65, scope: !1607)
!1697 = !DILocalVariable(name: "this", arg: 1, scope: !1698, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!1698 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !401, file: !399, line: 87, type: !435, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !434, retainedNodes: !1699)
!1699 = !{!1697, !1700}
!1700 = !DILocalVariable(name: "arg", arg: 2, scope: !1698, file: !399, line: 87, type: !437)
!1701 = !DILocation(line: 0, scope: !1698, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 249, column: 41, scope: !1607)
!1703 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !1702)
!1704 = !DILocation(line: 0, scope: !691, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 250, column: 25, scope: !1607)
!1706 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1705)
!1707 = !DILocation(line: 0, scope: !700, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 249, column: 5, scope: !1607)
!1709 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !1708)
!1710 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1708)
!1711 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1708)
!1712 = !DILocation(line: 0, scope: !714, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1708)
!1714 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1713)
!1715 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1713)
!1716 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1713)
!1717 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1713)
!1718 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1708)
!1719 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1708)
!1720 = !DILocation(line: 253, column: 5, scope: !1607)
!1721 = !DISubprogram(name: "halide_current_time_ns", scope: !37, file: !37, line: 136, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!424, !126}
!1724 = !DISubprogram(name: "free", scope: !37, file: !37, line: 86, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !126}
!1727 = distinct !DISubprogram(name: "halide_openglcompute_device_malloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute34halide_openglcompute_device_mallocEPvP15halide_buffer_t", scope: !2, file: !6, line: 258, type: !1728, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!38, !126, !558}
!1730 = !{!1731, !1732, !1733, !1734, !1736, !1737, !1739, !1741, !1742}
!1731 = !DILocalVariable(name: "user_context", arg: 1, scope: !1727, file: !6, line: 258, type: !126)
!1732 = !DILocalVariable(name: "buf", arg: 2, scope: !1727, file: !6, line: 258, type: !558)
!1733 = !DILocalVariable(name: "t_before", scope: !1727, file: !6, line: 260, type: !211)
!1734 = !DILocalVariable(name: "error", scope: !1735, file: !6, line: 266, type: !38)
!1735 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 266, column: 13)
!1736 = !DILocalVariable(name: "size", scope: !1727, file: !6, line: 270, type: !312)
!1737 = !DILocalVariable(name: "i", scope: !1738, file: !6, line: 280, type: !38)
!1738 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 280, column: 5)
!1739 = !DILocalVariable(name: "error", scope: !1740, file: !6, line: 293, type: !38)
!1740 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 293, column: 13)
!1741 = !DILocalVariable(name: "the_buffer", scope: !1727, file: !6, line: 303, type: !17)
!1742 = !DILocalVariable(name: "t_after", scope: !1727, file: !6, line: 330, type: !211)
!1743 = !DILocation(line: 0, scope: !1727)
!1744 = !DILocation(line: 260, column: 25, scope: !1727)
!1745 = !DILocation(line: 0, scope: !674, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 263, column: 5, scope: !1727)
!1747 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1746)
!1748 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1746)
!1749 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1746)
!1750 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1746)
!1751 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1746)
!1752 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1746)
!1753 = !DILocation(line: 0, scope: !688, inlinedAt: !1746)
!1754 = !DILocation(line: 0, scope: !691, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 263, column: 25, scope: !1727)
!1756 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1755)
!1757 = !DILocation(line: 0, scope: !1170, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 264, column: 25, scope: !1727)
!1759 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !1758)
!1760 = !DILocation(line: 0, scope: !691, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 264, column: 41, scope: !1727)
!1762 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1761)
!1763 = !DILocation(line: 264, column: 57, scope: !1727)
!1764 = !DILocation(line: 0, scope: !1170, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 264, column: 54, scope: !1727)
!1766 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !1765)
!1767 = !DILocation(line: 0, scope: !691, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 264, column: 61, scope: !1727)
!1769 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1768)
!1770 = !DILocation(line: 0, scope: !700, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 263, column: 5, scope: !1727)
!1772 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !1771)
!1773 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1771)
!1774 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1771)
!1775 = !DILocation(line: 0, scope: !714, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1771)
!1777 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1776)
!1778 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1776)
!1779 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1776)
!1780 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1776)
!1781 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1771)
!1782 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1771)
!1783 = !DILocation(line: 266, column: 21, scope: !1735)
!1784 = !DILocation(line: 0, scope: !1735)
!1785 = !DILocation(line: 266, column: 13, scope: !1735)
!1786 = !DILocalVariable(name: "this", arg: 1, scope: !1787, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1787 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !208, file: !201, line: 1518, type: !310, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !317, retainedNodes: !1788)
!1788 = !{!1786}
!1789 = !DILocation(line: 0, scope: !1787, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 270, column: 24, scope: !1727)
!1791 = !DILocalVariable(name: "this", arg: 1, scope: !1792, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1792 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !208, file: !201, line: 1506, type: !314, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !316, retainedNodes: !1793)
!1793 = !{!1791, !1794, !1795}
!1794 = !DILocalVariable(name: "index", scope: !1792, file: !201, line: 1507, type: !36)
!1795 = !DILocalVariable(name: "i", scope: !1796, file: !201, line: 1508, type: !38)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !201, line: 1508, column: 9)
!1797 = !DILocation(line: 0, scope: !1792, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 1519, column: 25, scope: !1787, inlinedAt: !1790)
!1799 = !DILocation(line: 0, scope: !1796, inlinedAt: !1798)
!1800 = !DILocation(line: 1508, column: 29, scope: !1801, inlinedAt: !1798)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !201, line: 1508, column: 9)
!1802 = !DILocation(line: 1508, column: 27, scope: !1801, inlinedAt: !1798)
!1803 = !DILocation(line: 1508, column: 9, scope: !1796, inlinedAt: !1798)
!1804 = !DILocation(line: 0, scope: !787, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 1514, column: 36, scope: !1792, inlinedAt: !1798)
!1806 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !1805)
!1807 = !DILocalVariable(name: "this", arg: 1, scope: !1808, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1808 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !208, file: !201, line: 1495, type: !314, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !313, retainedNodes: !1809)
!1809 = !{!1807, !1810, !1811}
!1810 = !DILocalVariable(name: "index", scope: !1808, file: !201, line: 1496, type: !36)
!1811 = !DILocalVariable(name: "i", scope: !1812, file: !201, line: 1497, type: !38)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !201, line: 1497, column: 9)
!1813 = !DILocation(line: 0, scope: !1808, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 1519, column: 33, scope: !1787, inlinedAt: !1790)
!1815 = !DILocation(line: 0, scope: !1812, inlinedAt: !1814)
!1816 = !DILocation(line: 1497, column: 9, scope: !1812, inlinedAt: !1814)
!1817 = !DILocation(line: 1509, column: 24, scope: !1818, inlinedAt: !1798)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !201, line: 1509, column: 17)
!1819 = distinct !DILexicalBlock(scope: !1801, file: !201, line: 1508, column: 46)
!1820 = !DILocation(line: 1509, column: 31, scope: !1818, inlinedAt: !1798)
!1821 = !DILocation(line: 1509, column: 17, scope: !1819, inlinedAt: !1798)
!1822 = !DILocation(line: 1510, column: 61, scope: !1823, inlinedAt: !1798)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !201, line: 1509, column: 36)
!1824 = !DILocation(line: 1510, column: 68, scope: !1823, inlinedAt: !1798)
!1825 = !DILocation(line: 1510, column: 51, scope: !1823, inlinedAt: !1798)
!1826 = !DILocation(line: 1510, column: 23, scope: !1823, inlinedAt: !1798)
!1827 = !DILocation(line: 1511, column: 13, scope: !1823, inlinedAt: !1798)
!1828 = !DILocation(line: 1508, column: 42, scope: !1801, inlinedAt: !1798)
!1829 = distinct !{!1829, !1803, !1830, !619}
!1830 = !DILocation(line: 1512, column: 9, scope: !1796, inlinedAt: !1798)
!1831 = !DILocation(line: 1498, column: 24, scope: !1832, inlinedAt: !1814)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !201, line: 1498, column: 17)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !201, line: 1497, column: 46)
!1834 = distinct !DILexicalBlock(scope: !1812, file: !201, line: 1497, column: 9)
!1835 = !DILocation(line: 1498, column: 31, scope: !1832, inlinedAt: !1814)
!1836 = !DILocation(line: 1498, column: 17, scope: !1833, inlinedAt: !1814)
!1837 = !DILocation(line: 1499, column: 61, scope: !1838, inlinedAt: !1814)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !201, line: 1498, column: 36)
!1839 = !DILocation(line: 1499, column: 68, scope: !1838, inlinedAt: !1814)
!1840 = !DILocation(line: 1499, column: 51, scope: !1838, inlinedAt: !1814)
!1841 = !DILocation(line: 1499, column: 23, scope: !1838, inlinedAt: !1814)
!1842 = !DILocation(line: 1500, column: 13, scope: !1838, inlinedAt: !1814)
!1843 = !DILocation(line: 1497, column: 42, scope: !1834, inlinedAt: !1814)
!1844 = !DILocation(line: 1497, column: 27, scope: !1834, inlinedAt: !1814)
!1845 = distinct !{!1845, !1816, !1846, !619}
!1846 = !DILocation(line: 1501, column: 9, scope: !1812, inlinedAt: !1814)
!1847 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !1805)
!1848 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !1805)
!1849 = !DILocation(line: 1513, column: 15, scope: !1792, inlinedAt: !1798)
!1850 = !DILocation(line: 0, scope: !787, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 1502, column: 36, scope: !1808, inlinedAt: !1814)
!1852 = !DILocation(line: 1519, column: 31, scope: !1787, inlinedAt: !1790)
!1853 = !DILocation(line: 271, column: 5, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !6, line: 271, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 271, column: 5)
!1856 = !DILocation(line: 271, column: 5, scope: !1855)
!1857 = !DILocation(line: 271, column: 5, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !6, line: 271, column: 5)
!1859 = !DILocation(line: 273, column: 14, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 273, column: 9)
!1861 = !DILocation(line: 273, column: 9, scope: !1860)
!1862 = !DILocation(line: 273, column: 9, scope: !1727)
!1863 = !DILocation(line: 0, scope: !1738)
!1864 = !DILocation(line: 280, column: 30, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1738, file: !6, line: 280, column: 5)
!1866 = !DILocation(line: 280, column: 23, scope: !1865)
!1867 = !DILocation(line: 280, column: 5, scope: !1738)
!1868 = !DILocation(line: 0, scope: !674, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 275, column: 9, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !6, line: 273, column: 22)
!1871 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1869)
!1872 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1869)
!1873 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1869)
!1874 = !DILocation(line: 0, scope: !691, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 275, column: 29, scope: !1870)
!1876 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1875)
!1877 = !DILocation(line: 0, scope: !700, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 275, column: 9, scope: !1870)
!1879 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !1878)
!1880 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !1878)
!1881 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1869)
!1882 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1869)
!1883 = !DILocation(line: 0, scope: !714, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !1878)
!1885 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !1884)
!1886 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !1884)
!1887 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !1884)
!1888 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !1884)
!1889 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !1878)
!1890 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !1878)
!1891 = !DILocation(line: 277, column: 9, scope: !1870)
!1892 = !DILocation(line: 284, column: 5, scope: !1727)
!1893 = !DILocation(line: 0, scope: !674, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 284, column: 5, scope: !1727)
!1895 = !DILocation(line: 38, column: 11, scope: !674, inlinedAt: !1894)
!1896 = !DILocation(line: 38, column: 30, scope: !674, inlinedAt: !1894)
!1897 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !1894)
!1898 = !DILocation(line: 44, column: 13, scope: !683, inlinedAt: !1894)
!1899 = !DILocation(line: 44, column: 17, scope: !683, inlinedAt: !1894)
!1900 = !DILocation(line: 47, column: 9, scope: !686, inlinedAt: !1894)
!1901 = !DILocation(line: 47, column: 13, scope: !686, inlinedAt: !1894)
!1902 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !1894)
!1903 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !1894)
!1904 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !1894)
!1905 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !1894)
!1906 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !1894)
!1907 = !DILocation(line: 0, scope: !688, inlinedAt: !1894)
!1908 = !DILocation(line: 53, column: 13, scope: !1134, inlinedAt: !1894)
!1909 = !DILocation(line: 53, column: 17, scope: !1134, inlinedAt: !1894)
!1910 = !DILocation(line: 0, scope: !691, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 284, column: 25, scope: !1727)
!1912 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1911)
!1913 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1911)
!1914 = !DILocation(line: 0, scope: !691, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 285, column: 25, scope: !1727)
!1916 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1915)
!1917 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1915)
!1918 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1915)
!1919 = !DILocation(line: 285, column: 48, scope: !1727)
!1920 = !DILocation(line: 285, column: 55, scope: !1727)
!1921 = !DILocation(line: 0, scope: !1185, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 285, column: 40, scope: !1727)
!1923 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1922)
!1924 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1922)
!1925 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1922)
!1926 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1922)
!1927 = !DILocation(line: 0, scope: !691, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 285, column: 62, scope: !1727)
!1929 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1928)
!1930 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1928)
!1931 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1928)
!1932 = !DILocation(line: 286, column: 33, scope: !1727)
!1933 = !DILocation(line: 286, column: 40, scope: !1727)
!1934 = !DILocation(line: 0, scope: !1185, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 286, column: 25, scope: !1727)
!1936 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1935)
!1937 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1935)
!1938 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1935)
!1939 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1935)
!1940 = !DILocation(line: 0, scope: !691, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 286, column: 47, scope: !1727)
!1942 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1941)
!1943 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1941)
!1944 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1941)
!1945 = !DILocation(line: 286, column: 62, scope: !1727)
!1946 = !DILocation(line: 286, column: 69, scope: !1727)
!1947 = !DILocation(line: 0, scope: !1185, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 286, column: 54, scope: !1727)
!1949 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1948)
!1950 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1948)
!1951 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1948)
!1952 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1948)
!1953 = !DILocation(line: 0, scope: !691, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 286, column: 76, scope: !1727)
!1955 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1954)
!1956 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1954)
!1957 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1954)
!1958 = !DILocation(line: 287, column: 33, scope: !1727)
!1959 = !DILocation(line: 287, column: 40, scope: !1727)
!1960 = !DILocation(line: 0, scope: !1185, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 287, column: 25, scope: !1727)
!1962 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1961)
!1963 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1961)
!1964 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1961)
!1965 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1961)
!1966 = !DILocation(line: 0, scope: !691, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 287, column: 47, scope: !1727)
!1968 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1967)
!1969 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1967)
!1970 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1967)
!1971 = !DILocation(line: 0, scope: !691, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 288, column: 25, scope: !1727)
!1973 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1972)
!1974 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1972)
!1975 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1972)
!1976 = !DILocation(line: 288, column: 48, scope: !1727)
!1977 = !DILocation(line: 288, column: 55, scope: !1727)
!1978 = !DILocation(line: 0, scope: !1185, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 288, column: 40, scope: !1727)
!1980 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1979)
!1981 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1979)
!1982 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1979)
!1983 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1979)
!1984 = !DILocation(line: 0, scope: !691, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 288, column: 62, scope: !1727)
!1986 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1985)
!1987 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1985)
!1988 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1985)
!1989 = !DILocation(line: 289, column: 33, scope: !1727)
!1990 = !DILocation(line: 289, column: 40, scope: !1727)
!1991 = !DILocation(line: 0, scope: !1185, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 289, column: 25, scope: !1727)
!1993 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !1992)
!1994 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !1992)
!1995 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !1992)
!1996 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !1992)
!1997 = !DILocation(line: 0, scope: !691, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 289, column: 47, scope: !1727)
!1999 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !1998)
!2000 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !1998)
!2001 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !1998)
!2002 = !DILocation(line: 289, column: 62, scope: !1727)
!2003 = !DILocation(line: 289, column: 69, scope: !1727)
!2004 = !DILocation(line: 0, scope: !1185, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 289, column: 54, scope: !1727)
!2006 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !2005)
!2007 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !2005)
!2008 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !2005)
!2009 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !2005)
!2010 = !DILocation(line: 0, scope: !691, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 289, column: 76, scope: !1727)
!2012 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !2011)
!2013 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2011)
!2014 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !2011)
!2015 = !DILocation(line: 290, column: 33, scope: !1727)
!2016 = !DILocation(line: 290, column: 40, scope: !1727)
!2017 = !DILocation(line: 0, scope: !1185, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 290, column: 25, scope: !1727)
!2019 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !2018)
!2020 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !2018)
!2021 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !2018)
!2022 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !2018)
!2023 = !DILocation(line: 0, scope: !691, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 290, column: 47, scope: !1727)
!2025 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !2024)
!2026 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2024)
!2027 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !2024)
!2028 = !DILocation(line: 0, scope: !691, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 291, column: 25, scope: !1727)
!2030 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !2029)
!2031 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2029)
!2032 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !2029)
!2033 = !DILocation(line: 291, column: 46, scope: !1727)
!2034 = !DILocation(line: 0, scope: !1307, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 291, column: 38, scope: !1727)
!2036 = !DILocation(line: 109, column: 42, scope: !1307, inlinedAt: !2035)
!2037 = !DILocation(line: 109, column: 15, scope: !1307, inlinedAt: !2035)
!2038 = !DILocation(line: 109, column: 13, scope: !1307, inlinedAt: !2035)
!2039 = !DILocation(line: 0, scope: !691, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 291, column: 51, scope: !1727)
!2041 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !2040)
!2042 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2040)
!2043 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !2040)
!2044 = !DILocation(line: 0, scope: !700, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 284, column: 5, scope: !1727)
!2046 = !DILocation(line: 167, column: 14, scope: !706, inlinedAt: !2045)
!2047 = !DILocation(line: 0, scope: !706, inlinedAt: !2045)
!2048 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2045)
!2049 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2045)
!2050 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2045)
!2051 = !DILocation(line: 0, scope: !714, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2045)
!2053 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2052)
!2054 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2052)
!2055 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2052)
!2056 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2052)
!2057 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !2045)
!2058 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !2045)
!2059 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2045)
!2060 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !2045)
!2061 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !2045)
!2062 = !DILocation(line: 180, column: 24, scope: !729, inlinedAt: !2045)
!2063 = !DILocation(line: 180, column: 31, scope: !729, inlinedAt: !2045)
!2064 = !DILocation(line: 180, column: 28, scope: !729, inlinedAt: !2045)
!2065 = !DILocation(line: 180, column: 13, scope: !707, inlinedAt: !2045)
!2066 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2045)
!2067 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !2045)
!2068 = !DILocation(line: 293, column: 21, scope: !1740)
!2069 = !DILocation(line: 0, scope: !1740)
!2070 = !DILocation(line: 293, column: 13, scope: !1740)
!2071 = !DILocation(line: 281, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !6, line: 281, column: 9)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !6, line: 281, column: 9)
!2074 = distinct !DILexicalBlock(scope: !1865, file: !6, line: 280, column: 47)
!2075 = !DILocation(line: 281, column: 9, scope: !2073)
!2076 = !DILocation(line: 281, column: 9, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !6, line: 281, column: 9)
!2078 = !DILocation(line: 280, column: 43, scope: !1865)
!2079 = distinct !{!2079, !1867, !2080, !619}
!2080 = !DILocation(line: 282, column: 5, scope: !1738)
!2081 = !DILocation(line: 0, scope: !674, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 296, column: 5, scope: !1727)
!2083 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2082)
!2084 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2082)
!2085 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2082)
!2086 = !DILocation(line: 0, scope: !691, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 296, column: 25, scope: !1727)
!2088 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2087)
!2089 = !DILocation(line: 0, scope: !700, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 296, column: 5, scope: !1727)
!2091 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2090)
!2092 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2090)
!2093 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2082)
!2094 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2082)
!2095 = !DILocation(line: 0, scope: !714, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2090)
!2097 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2096)
!2098 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2096)
!2099 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2096)
!2100 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2096)
!2101 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2090)
!2102 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2090)
!2103 = !DILocation(line: 303, column: 5, scope: !1727)
!2104 = !DILocation(line: 304, column: 18, scope: !1727)
!2105 = !DILocation(line: 304, column: 5, scope: !1727)
!2106 = !DILocation(line: 305, column: 22, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 305, column: 9)
!2108 = !DILocation(line: 305, column: 9, scope: !1727)
!2109 = !DILocation(line: 308, column: 18, scope: !1727)
!2110 = !DILocation(line: 308, column: 46, scope: !1727)
!2111 = !{!774, !774, i64 0}
!2112 = !DILocation(line: 308, column: 5, scope: !1727)
!2113 = !DILocation(line: 309, column: 22, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 309, column: 9)
!2115 = !DILocation(line: 309, column: 9, scope: !1727)
!2116 = !DILocation(line: 0, scope: !787, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 316, column: 28, scope: !1727)
!2118 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !2117)
!2119 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !2117)
!2120 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !2117)
!2121 = !DILocation(line: 316, column: 16, scope: !1727)
!2122 = !DILocation(line: 316, column: 10, scope: !1727)
!2123 = !DILocation(line: 317, column: 5, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !6, line: 317, column: 5)
!2125 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 317, column: 5)
!2126 = !DILocation(line: 317, column: 5, scope: !2125)
!2127 = !DILocation(line: 317, column: 5, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !6, line: 317, column: 5)
!2129 = !DILocation(line: 318, column: 18, scope: !1727)
!2130 = !DILocation(line: 318, column: 5, scope: !1727)
!2131 = !DILocation(line: 319, column: 22, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 319, column: 9)
!2133 = !DILocation(line: 319, column: 9, scope: !1727)
!2134 = !DILocation(line: 323, column: 19, scope: !1727)
!2135 = !DILocation(line: 323, column: 17, scope: !1727)
!2136 = !DILocation(line: 324, column: 10, scope: !1727)
!2137 = !DILocation(line: 324, column: 27, scope: !1727)
!2138 = !{!769, !770, i64 8}
!2139 = !DILocation(line: 325, column: 28, scope: !1727)
!2140 = !{!2141, !770, i64 60}
!2141 = !{!"_ZTS25halide_device_interface_t", !770, i64 0, !770, i64 4, !770, i64 8, !770, i64 12, !770, i64 16, !770, i64 20, !770, i64 24, !770, i64 28, !770, i64 32, !770, i64 36, !770, i64 40, !770, i64 44, !770, i64 48, !770, i64 52, !770, i64 56, !770, i64 60}
!2142 = !DILocation(line: 325, column: 34, scope: !1727)
!2143 = !{!2144, !770, i64 0}
!2144 = !{!"_ZTS30halide_device_interface_impl_t", !770, i64 0, !770, i64 4, !770, i64 8, !770, i64 12, !770, i64 16, !770, i64 20, !770, i64 24, !770, i64 28, !770, i64 32, !770, i64 36, !770, i64 40, !770, i64 44, !770, i64 48, !770, i64 52, !770, i64 56, !770, i64 60}
!2145 = !DILocation(line: 325, column: 5, scope: !1727)
!2146 = !DILocation(line: 0, scope: !674, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 327, column: 5, scope: !1727)
!2148 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2147)
!2149 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2147)
!2150 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2147)
!2151 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2147)
!2152 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2147)
!2153 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2147)
!2154 = !DILocation(line: 0, scope: !688, inlinedAt: !2147)
!2155 = !DILocation(line: 0, scope: !691, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 327, column: 25, scope: !1727)
!2157 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2156)
!2158 = !DILocation(line: 327, column: 65, scope: !1727)
!2159 = !DILocation(line: 0, scope: !1155, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 327, column: 62, scope: !1727)
!2161 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !2160)
!2162 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !2160)
!2163 = !DILocation(line: 0, scope: !691, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 327, column: 76, scope: !1727)
!2165 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2164)
!2166 = !DILocation(line: 0, scope: !700, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 327, column: 5, scope: !1727)
!2168 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2167)
!2169 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2167)
!2170 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2167)
!2171 = !DILocation(line: 0, scope: !714, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2167)
!2173 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2172)
!2174 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2172)
!2175 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2172)
!2176 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2172)
!2177 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2167)
!2178 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2167)
!2179 = !DILocation(line: 330, column: 24, scope: !1727)
!2180 = !DILocation(line: 0, scope: !674, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 331, column: 5, scope: !1727)
!2182 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2181)
!2183 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2181)
!2184 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2181)
!2185 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2181)
!2186 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2181)
!2187 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2181)
!2188 = !DILocation(line: 0, scope: !688, inlinedAt: !2181)
!2189 = !DILocation(line: 0, scope: !691, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 331, column: 25, scope: !1727)
!2191 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2190)
!2192 = !DILocation(line: 331, column: 53, scope: !1727)
!2193 = !DILocation(line: 331, column: 44, scope: !1727)
!2194 = !DILocation(line: 331, column: 65, scope: !1727)
!2195 = !DILocation(line: 0, scope: !1698, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 331, column: 41, scope: !1727)
!2197 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !2196)
!2198 = !DILocation(line: 0, scope: !691, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 332, column: 25, scope: !1727)
!2200 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2199)
!2201 = !DILocation(line: 0, scope: !700, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 331, column: 5, scope: !1727)
!2203 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2202)
!2204 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2202)
!2205 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2202)
!2206 = !DILocation(line: 0, scope: !714, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2202)
!2208 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2207)
!2209 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2207)
!2210 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2207)
!2211 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2207)
!2212 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2202)
!2213 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2202)
!2214 = !DILocation(line: 336, column: 1, scope: !1727)
!2215 = !DISubprogram(name: "halide_print", scope: !201, file: !201, line: 97, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !126, !182}
!2218 = !DISubprogram(name: "abort", scope: !37, file: !37, line: 108, type: !77, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!2219 = distinct !DISubprogram(name: "halide_openglcompute_device_free", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute32halide_openglcompute_device_freeEPvP15halide_buffer_t", scope: !2, file: !6, line: 338, type: !1728, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DILocalVariable(name: "user_context", arg: 1, scope: !2219, file: !6, line: 338, type: !126)
!2222 = !DILocalVariable(name: "buf", arg: 2, scope: !2219, file: !6, line: 338, type: !558)
!2223 = !DILocalVariable(name: "t_before", scope: !2219, file: !6, line: 340, type: !211)
!2224 = !DILocalVariable(name: "the_buffer", scope: !2219, file: !6, line: 351, type: !17)
!2225 = !DILocalVariable(name: "t_after", scope: !2219, file: !6, line: 365, type: !211)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 340, column: 25, scope: !2219)
!2228 = !DILocation(line: 343, column: 23, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2219, file: !6, line: 343, column: 9)
!2230 = !DILocation(line: 343, column: 9, scope: !2219)
!2231 = !DILocation(line: 0, scope: !1010, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 344, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !6, line: 343, column: 36)
!2234 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2232)
!2235 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2232)
!2236 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2232)
!2237 = !DILocation(line: 0, scope: !1032, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 344, column: 29, scope: !2233)
!2239 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2238)
!2240 = !DILocation(line: 0, scope: !1079, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 344, column: 9, scope: !2233)
!2242 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2241)
!2243 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2241)
!2244 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2232)
!2245 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2232)
!2246 = !DILocation(line: 0, scope: !1090, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2241)
!2248 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2247)
!2249 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2247)
!2250 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !2247)
!2251 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2247)
!2252 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2241)
!2253 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !2241)
!2254 = !DILocation(line: 345, column: 9, scope: !2233)
!2255 = !DILocation(line: 348, column: 14, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2219, file: !6, line: 348, column: 9)
!2257 = !DILocation(line: 348, column: 21, scope: !2256)
!2258 = !DILocation(line: 348, column: 9, scope: !2219)
!2259 = !DILocation(line: 351, column: 5, scope: !2219)
!2260 = !DILocation(line: 351, column: 33, scope: !2219)
!2261 = !DILocation(line: 351, column: 12, scope: !2219)
!2262 = !DILocation(line: 0, scope: !674, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 353, column: 5, scope: !2219)
!2264 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2263)
!2265 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2263)
!2266 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2263)
!2267 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2263)
!2268 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2263)
!2269 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2263)
!2270 = !DILocation(line: 0, scope: !688, inlinedAt: !2263)
!2271 = !DILocation(line: 0, scope: !691, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 353, column: 25, scope: !2219)
!2273 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2272)
!2274 = !DILocation(line: 0, scope: !691, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 354, column: 25, scope: !2219)
!2276 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2275)
!2277 = !DILocation(line: 0, scope: !1170, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 354, column: 45, scope: !2219)
!2279 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !2278)
!2280 = !DILocation(line: 0, scope: !691, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 355, column: 25, scope: !2219)
!2282 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2281)
!2283 = !DILocation(line: 0, scope: !1155, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 355, column: 44, scope: !2219)
!2285 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !2284)
!2286 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !2284)
!2287 = !DILocation(line: 0, scope: !691, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 356, column: 25, scope: !2219)
!2289 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2288)
!2290 = !DILocation(line: 0, scope: !700, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 353, column: 5, scope: !2219)
!2292 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2291)
!2293 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2291)
!2294 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2291)
!2295 = !DILocation(line: 0, scope: !714, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2291)
!2297 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2296)
!2298 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2296)
!2299 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2296)
!2300 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2296)
!2301 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2291)
!2302 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2291)
!2303 = !DILocation(line: 358, column: 18, scope: !2219)
!2304 = !DILocation(line: 358, column: 5, scope: !2219)
!2305 = !DILocation(line: 360, column: 17, scope: !2219)
!2306 = !DILocation(line: 361, column: 10, scope: !2219)
!2307 = !DILocation(line: 361, column: 28, scope: !2219)
!2308 = !DILocation(line: 361, column: 34, scope: !2219)
!2309 = !{!2144, !770, i64 4}
!2310 = !DILocation(line: 361, column: 5, scope: !2219)
!2311 = !DILocation(line: 362, column: 27, scope: !2219)
!2312 = !DILocation(line: 365, column: 24, scope: !2219)
!2313 = !DILocation(line: 0, scope: !674, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 366, column: 5, scope: !2219)
!2315 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2314)
!2316 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2314)
!2317 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2314)
!2318 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2314)
!2319 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2314)
!2320 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2314)
!2321 = !DILocation(line: 0, scope: !688, inlinedAt: !2314)
!2322 = !DILocation(line: 0, scope: !691, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 366, column: 25, scope: !2219)
!2324 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2323)
!2325 = !DILocation(line: 366, column: 53, scope: !2219)
!2326 = !DILocation(line: 366, column: 44, scope: !2219)
!2327 = !DILocation(line: 366, column: 65, scope: !2219)
!2328 = !DILocation(line: 0, scope: !1698, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 366, column: 41, scope: !2219)
!2330 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !2329)
!2331 = !DILocation(line: 0, scope: !691, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 367, column: 25, scope: !2219)
!2333 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2332)
!2334 = !DILocation(line: 0, scope: !700, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 366, column: 5, scope: !2219)
!2336 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2335)
!2337 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2335)
!2338 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2335)
!2339 = !DILocation(line: 0, scope: !714, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2335)
!2341 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2340)
!2342 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2340)
!2343 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2340)
!2344 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2340)
!2345 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2335)
!2346 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2335)
!2347 = !DILocation(line: 371, column: 1, scope: !2219)
!2348 = distinct !DISubprogram(name: "halide_openglcompute_copy_to_device", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute35halide_openglcompute_copy_to_deviceEPvP15halide_buffer_t", scope: !2, file: !6, line: 399, type: !1728, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2350 = !DILocalVariable(name: "user_context", arg: 1, scope: !2348, file: !6, line: 399, type: !126)
!2351 = !DILocalVariable(name: "buf", arg: 2, scope: !2348, file: !6, line: 399, type: !558)
!2352 = !DILocalVariable(name: "t_before", scope: !2348, file: !6, line: 401, type: !211)
!2353 = !DILocalVariable(name: "the_buffer", scope: !2348, file: !6, line: 409, type: !17)
!2354 = !DILocalVariable(name: "size", scope: !2348, file: !6, line: 420, type: !312)
!2355 = !DILocalVariable(name: "device_data", scope: !2348, file: !6, line: 427, type: !126)
!2356 = !DILocalVariable(name: "buf_copy", scope: !2348, file: !6, line: 434, type: !458)
!2357 = !DILocalVariable(name: "dev_copy", scope: !2348, file: !6, line: 436, type: !581)
!2358 = !DILocalVariable(name: "t_after", scope: !2348, file: !6, line: 482, type: !211)
!2359 = !DILocation(line: 0, scope: !2348)
!2360 = !DILocation(line: 401, column: 25, scope: !2348)
!2361 = !DILocation(line: 404, column: 23, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2348, file: !6, line: 404, column: 9)
!2363 = !DILocation(line: 404, column: 9, scope: !2348)
!2364 = !DILocation(line: 0, scope: !1010, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 405, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !6, line: 404, column: 36)
!2367 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2365)
!2368 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2365)
!2369 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2365)
!2370 = !DILocation(line: 0, scope: !1032, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 405, column: 29, scope: !2366)
!2372 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2371)
!2373 = !DILocation(line: 0, scope: !1079, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 405, column: 9, scope: !2366)
!2375 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2374)
!2376 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2374)
!2377 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2365)
!2378 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2365)
!2379 = !DILocation(line: 0, scope: !1090, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2374)
!2381 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2380)
!2382 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2380)
!2383 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !2380)
!2384 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2380)
!2385 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2374)
!2386 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !2374)
!2387 = !DILocation(line: 406, column: 9, scope: !2366)
!2388 = !DILocation(line: 409, column: 38, scope: !2348)
!2389 = !DILocation(line: 409, column: 33, scope: !2348)
!2390 = !DILocation(line: 0, scope: !674, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 410, column: 5, scope: !2348)
!2392 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2391)
!2393 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2391)
!2394 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2391)
!2395 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2391)
!2396 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2391)
!2397 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2391)
!2398 = !DILocation(line: 0, scope: !688, inlinedAt: !2391)
!2399 = !DILocation(line: 0, scope: !691, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 410, column: 25, scope: !2348)
!2401 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2400)
!2402 = !DILocation(line: 0, scope: !691, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 411, column: 25, scope: !2348)
!2404 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2403)
!2405 = !DILocation(line: 0, scope: !1170, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 411, column: 45, scope: !2348)
!2407 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !2406)
!2408 = !DILocation(line: 0, scope: !691, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 412, column: 25, scope: !2348)
!2410 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2409)
!2411 = !DILocation(line: 412, column: 41, scope: !2348)
!2412 = !DILocation(line: 0, scope: !1170, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 412, column: 38, scope: !2348)
!2414 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !2413)
!2415 = !DILocation(line: 0, scope: !691, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 413, column: 25, scope: !2348)
!2417 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2416)
!2418 = !DILocation(line: 0, scope: !1155, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 413, column: 44, scope: !2348)
!2420 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !2419)
!2421 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !2419)
!2422 = !DILocation(line: 0, scope: !691, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 413, column: 58, scope: !2348)
!2424 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2423)
!2425 = !DILocation(line: 0, scope: !700, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 410, column: 5, scope: !2348)
!2427 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2426)
!2428 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2426)
!2429 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2426)
!2430 = !DILocation(line: 0, scope: !714, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2426)
!2432 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2431)
!2433 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2431)
!2434 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2431)
!2435 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2431)
!2436 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2426)
!2437 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2426)
!2438 = !DILocation(line: 415, column: 18, scope: !2348)
!2439 = !DILocation(line: 415, column: 5, scope: !2348)
!2440 = !DILocation(line: 416, column: 22, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2348, file: !6, line: 416, column: 9)
!2442 = !DILocation(line: 416, column: 9, scope: !2348)
!2443 = !DILocalVariable(name: "this", arg: 1, scope: !2444, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!2444 = distinct !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !208, file: !201, line: 1485, type: !310, scopeLine: 1485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !309, retainedNodes: !2445)
!2445 = !{!2443, !2446, !2447}
!2446 = !DILocalVariable(name: "s", scope: !2444, file: !201, line: 1486, type: !312)
!2447 = !DILocalVariable(name: "i", scope: !2448, file: !201, line: 1487, type: !38)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !201, line: 1487, column: 9)
!2449 = !DILocation(line: 0, scope: !2444, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 420, column: 24, scope: !2348)
!2451 = !DILocation(line: 0, scope: !2448, inlinedAt: !2450)
!2452 = !DILocation(line: 1487, column: 29, scope: !2453, inlinedAt: !2450)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !201, line: 1487, column: 9)
!2454 = !DILocation(line: 1487, column: 27, scope: !2453, inlinedAt: !2450)
!2455 = !DILocation(line: 1487, column: 9, scope: !2448, inlinedAt: !2450)
!2456 = !DILocation(line: 1488, column: 25, scope: !2457, inlinedAt: !2450)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !201, line: 1487, column: 46)
!2458 = !DILocation(line: 1488, column: 15, scope: !2457, inlinedAt: !2450)
!2459 = !DILocation(line: 1487, column: 42, scope: !2453, inlinedAt: !2450)
!2460 = distinct !{!2460, !2455, !2461, !619}
!2461 = !DILocation(line: 1489, column: 9, scope: !2448, inlinedAt: !2450)
!2462 = !DILocation(line: 420, column: 45, scope: !2348)
!2463 = !DILocation(line: 421, column: 18, scope: !2348)
!2464 = !DILocation(line: 421, column: 5, scope: !2348)
!2465 = !DILocation(line: 422, column: 22, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2348, file: !6, line: 422, column: 9)
!2467 = !DILocation(line: 422, column: 9, scope: !2348)
!2468 = !DILocation(line: 0, scope: !674, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 426, column: 5, scope: !2348)
!2470 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2469)
!2471 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2469)
!2472 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2469)
!2473 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2469)
!2474 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2469)
!2475 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2469)
!2476 = !DILocation(line: 0, scope: !688, inlinedAt: !2469)
!2477 = !DILocation(line: 0, scope: !691, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 426, column: 25, scope: !2348)
!2479 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2478)
!2480 = !DILocation(line: 426, column: 100, scope: !2348)
!2481 = !DILocation(line: 0, scope: !1141, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 426, column: 87, scope: !2348)
!2483 = !DILocation(line: 78, column: 15, scope: !1141, inlinedAt: !2482)
!2484 = !DILocation(line: 0, scope: !691, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 426, column: 105, scope: !2348)
!2486 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2485)
!2487 = !DILocation(line: 0, scope: !700, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 426, column: 5, scope: !2348)
!2489 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2488)
!2490 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2488)
!2491 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2488)
!2492 = !DILocation(line: 0, scope: !714, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2488)
!2494 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2493)
!2495 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2493)
!2496 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2493)
!2497 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2493)
!2498 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2488)
!2499 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2488)
!2500 = !DILocation(line: 427, column: 38, scope: !2348)
!2501 = !DILocation(line: 427, column: 25, scope: !2348)
!2502 = !DILocation(line: 431, column: 22, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2348, file: !6, line: 431, column: 9)
!2504 = !DILocation(line: 431, column: 9, scope: !2348)
!2505 = !DILocation(line: 434, column: 5, scope: !2348)
!2506 = !DILocation(line: 434, column: 21, scope: !2348)
!2507 = !DILocation(line: 434, column: 32, scope: !2348)
!2508 = !{i64 0, i64 8, !609, i64 8, i64 4, !977, i64 12, i64 4, !977, i64 16, i64 8, !609, i64 24, i64 1, !2509, i64 25, i64 1, !712, i64 26, i64 2, !2510, i64 28, i64 4, !2111, i64 32, i64 4, !977, i64 36, i64 4, !977}
!2509 = !{!772, !772, i64 0}
!2510 = !{!773, !773, i64 0}
!2511 = !DILocation(line: 435, column: 23, scope: !2348)
!2512 = !DILocation(line: 435, column: 14, scope: !2348)
!2513 = !DILocation(line: 435, column: 21, scope: !2348)
!2514 = !DILocation(line: 436, column: 5, scope: !2348)
!2515 = !DILocation(line: 436, column: 17, scope: !2348)
!2516 = !DILocation(line: 436, column: 28, scope: !2348)
!2517 = !DILocation(line: 438, column: 19, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2348, file: !6, line: 438, column: 9)
!2519 = !{!769, !772, i64 24}
!2520 = !DILocation(line: 438, column: 9, scope: !2348)
!2521 = !DILocation(line: 439, column: 23, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 439, column: 13)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !6, line: 438, column: 44)
!2524 = !{!769, !611, i64 25}
!2525 = !DILocation(line: 439, column: 13, scope: !2523)
!2526 = !DILocation(line: 440, column: 98, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !6, line: 439, column: 34)
!2528 = !DILocation(line: 440, column: 13, scope: !2527)
!2529 = !DILocation(line: 441, column: 9, scope: !2527)
!2530 = !DILocation(line: 446, column: 22, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !6, line: 441, column: 42)
!2532 = distinct !DILexicalBlock(scope: !2522, file: !6, line: 441, column: 20)
!2533 = !DILocation(line: 446, column: 33, scope: !2531)
!2534 = !DILocation(line: 447, column: 99, scope: !2531)
!2535 = !DILocation(line: 447, column: 13, scope: !2531)
!2536 = !DILocation(line: 448, column: 9, scope: !2531)
!2537 = !DILocation(line: 449, column: 70, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !6, line: 448, column: 42)
!2539 = distinct !DILexicalBlock(scope: !2532, file: !6, line: 448, column: 20)
!2540 = !DILocation(line: 449, column: 13, scope: !2538)
!2541 = !DILocation(line: 0, scope: !1010, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 451, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !6, line: 450, column: 16)
!2544 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2542)
!2545 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2542)
!2546 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2542)
!2547 = !DILocation(line: 0, scope: !1032, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 451, column: 33, scope: !2543)
!2549 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2548)
!2550 = !DILocation(line: 0, scope: !1079, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 451, column: 13, scope: !2543)
!2552 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2551)
!2553 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2551)
!2554 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2542)
!2555 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2542)
!2556 = !DILocation(line: 0, scope: !1090, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2551)
!2558 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2557)
!2559 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2557)
!2560 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !2557)
!2561 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2557)
!2562 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2551)
!2563 = !DILocation(line: 455, column: 23, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !6, line: 455, column: 13)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !6, line: 454, column: 52)
!2566 = distinct !DILexicalBlock(scope: !2518, file: !6, line: 454, column: 16)
!2567 = !DILocation(line: 455, column: 13, scope: !2565)
!2568 = !DILocation(line: 456, column: 100, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !6, line: 455, column: 34)
!2570 = !DILocation(line: 456, column: 13, scope: !2569)
!2571 = !DILocation(line: 457, column: 9, scope: !2569)
!2572 = !DILocation(line: 462, column: 22, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !6, line: 457, column: 42)
!2574 = distinct !DILexicalBlock(scope: !2564, file: !6, line: 457, column: 20)
!2575 = !DILocation(line: 462, column: 33, scope: !2573)
!2576 = !DILocation(line: 463, column: 101, scope: !2573)
!2577 = !DILocation(line: 463, column: 13, scope: !2573)
!2578 = !DILocation(line: 464, column: 9, scope: !2573)
!2579 = !DILocation(line: 465, column: 70, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !6, line: 464, column: 42)
!2581 = distinct !DILexicalBlock(scope: !2574, file: !6, line: 464, column: 20)
!2582 = !DILocation(line: 465, column: 13, scope: !2580)
!2583 = !DILocation(line: 0, scope: !1010, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 467, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !6, line: 466, column: 16)
!2586 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2584)
!2587 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2584)
!2588 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2584)
!2589 = !DILocation(line: 0, scope: !1032, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 467, column: 33, scope: !2585)
!2591 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2590)
!2592 = !DILocation(line: 0, scope: !1079, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 467, column: 13, scope: !2585)
!2594 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2593)
!2595 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2593)
!2596 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2584)
!2597 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2584)
!2598 = !DILocation(line: 0, scope: !1090, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2593)
!2600 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2599)
!2601 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2599)
!2602 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !2599)
!2603 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2599)
!2604 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2593)
!2605 = !DILocation(line: 471, column: 23, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !6, line: 471, column: 13)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !6, line: 470, column: 53)
!2608 = distinct !DILexicalBlock(scope: !2566, file: !6, line: 470, column: 16)
!2609 = !DILocation(line: 471, column: 28, scope: !2606)
!2610 = !DILocation(line: 471, column: 13, scope: !2607)
!2611 = !DILocation(line: 472, column: 70, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !6, line: 471, column: 35)
!2613 = !DILocation(line: 472, column: 13, scope: !2612)
!2614 = !DILocation(line: 473, column: 9, scope: !2612)
!2615 = !DILocation(line: 0, scope: !1010, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 474, column: 13, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2606, file: !6, line: 473, column: 16)
!2618 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !2616)
!2619 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !2616)
!2620 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !2616)
!2621 = !DILocation(line: 0, scope: !1032, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 474, column: 33, scope: !2617)
!2623 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !2622)
!2624 = !DILocation(line: 0, scope: !1079, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 474, column: 13, scope: !2617)
!2626 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !2625)
!2627 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !2625)
!2628 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !2616)
!2629 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !2616)
!2630 = !DILocation(line: 0, scope: !1090, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !2625)
!2632 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !2631)
!2633 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !2631)
!2634 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !2631)
!2635 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !2631)
!2636 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2625)
!2637 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !2625)
!2638 = !DILocation(line: 477, column: 18, scope: !2348)
!2639 = !DILocation(line: 477, column: 5, scope: !2348)
!2640 = !DILocation(line: 479, column: 5, scope: !2348)
!2641 = !DILocation(line: 0, scope: !674, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 479, column: 5, scope: !2348)
!2643 = !DILocation(line: 38, column: 11, scope: !674, inlinedAt: !2642)
!2644 = !DILocation(line: 38, column: 30, scope: !674, inlinedAt: !2642)
!2645 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2642)
!2646 = !DILocation(line: 44, column: 13, scope: !683, inlinedAt: !2642)
!2647 = !DILocation(line: 44, column: 17, scope: !683, inlinedAt: !2642)
!2648 = !DILocation(line: 47, column: 9, scope: !686, inlinedAt: !2642)
!2649 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2642)
!2650 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2642)
!2651 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2642)
!2652 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2642)
!2653 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2642)
!2654 = !DILocation(line: 0, scope: !688, inlinedAt: !2642)
!2655 = !DILocation(line: 53, column: 13, scope: !1134, inlinedAt: !2642)
!2656 = !DILocation(line: 53, column: 17, scope: !1134, inlinedAt: !2642)
!2657 = !DILocation(line: 0, scope: !691, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 479, column: 25, scope: !2348)
!2659 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2658)
!2660 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !2658)
!2661 = !DILocation(line: 0, scope: !1155, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 479, column: 40, scope: !2348)
!2663 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !2662)
!2664 = !DILocation(line: 0, scope: !691, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 479, column: 60, scope: !2348)
!2666 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2665)
!2667 = !DILocation(line: 479, column: 86, scope: !2348)
!2668 = !DILocation(line: 0, scope: !1170, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 479, column: 78, scope: !2348)
!2670 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !2669)
!2671 = !DILocation(line: 0, scope: !691, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 479, column: 91, scope: !2348)
!2673 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2672)
!2674 = !DILocation(line: 0, scope: !700, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 479, column: 5, scope: !2348)
!2676 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2675)
!2677 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2675)
!2678 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2675)
!2679 = !DILocation(line: 0, scope: !714, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2675)
!2681 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2680)
!2682 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2680)
!2683 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2680)
!2684 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2680)
!2685 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !2675)
!2686 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !2675)
!2687 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2675)
!2688 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !2675)
!2689 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !2675)
!2690 = !DILocation(line: 180, column: 24, scope: !729, inlinedAt: !2675)
!2691 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !2675)
!2692 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !2675)
!2693 = !DILocation(line: 482, column: 24, scope: !2348)
!2694 = !DILocation(line: 0, scope: !674, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 483, column: 5, scope: !2348)
!2696 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !2695)
!2697 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !2695)
!2698 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !2695)
!2699 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !2695)
!2700 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !2695)
!2701 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !2695)
!2702 = !DILocation(line: 0, scope: !688, inlinedAt: !2695)
!2703 = !DILocation(line: 0, scope: !691, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 483, column: 25, scope: !2348)
!2705 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2704)
!2706 = !DILocation(line: 483, column: 53, scope: !2348)
!2707 = !DILocation(line: 483, column: 44, scope: !2348)
!2708 = !DILocation(line: 483, column: 65, scope: !2348)
!2709 = !DILocation(line: 0, scope: !1698, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 483, column: 41, scope: !2348)
!2711 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !2710)
!2712 = !DILocation(line: 0, scope: !691, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 484, column: 25, scope: !2348)
!2714 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !2713)
!2715 = !DILocation(line: 0, scope: !700, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 483, column: 5, scope: !2348)
!2717 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !2716)
!2718 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !2716)
!2719 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !2716)
!2720 = !DILocation(line: 0, scope: !714, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !2716)
!2722 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !2721)
!2723 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !2721)
!2724 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !2721)
!2725 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !2721)
!2726 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !2716)
!2727 = !DILocation(line: 487, column: 1, scope: !2348)
!2728 = distinct !DISubprogram(name: "converting_copy_memory_helper<signed char, int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIaiEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !2746, retainedNodes: !2730)
!2729 = !DINamespace(scope: !2)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2740, !2741, !2743}
!2731 = !DILocalVariable(name: "copy", arg: 1, scope: !2728, file: !6, line: 376, type: !579)
!2732 = !DILocalVariable(name: "d", arg: 2, scope: !2728, file: !6, line: 376, type: !38)
!2733 = !DILocalVariable(name: "src_off", arg: 3, scope: !2728, file: !6, line: 376, type: !423)
!2734 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2728, file: !6, line: 376, type: !423)
!2735 = !DILocalVariable(name: "from", scope: !2736, file: !6, line: 383, type: !2738)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !6, line: 382, column: 18)
!2737 = distinct !DILexicalBlock(scope: !2728, file: !6, line: 382, column: 9)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!2740 = !DILocalVariable(name: "to", scope: !2736, file: !6, line: 384, type: !363)
!2741 = !DILocalVariable(name: "index", scope: !2742, file: !6, line: 385, type: !211)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !6, line: 385, column: 9)
!2743 = !DILocalVariable(name: "i", scope: !2744, file: !6, line: 389, type: !211)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !6, line: 389, column: 9)
!2745 = distinct !DILexicalBlock(scope: !2737, file: !6, line: 388, column: 12)
!2746 = !{!2747, !2748}
!2747 = !DITemplateTypeParameter(name: "Source", type: !550)
!2748 = !DITemplateTypeParameter(name: "Dest", type: !38)
!2749 = !DILocation(line: 0, scope: !2728)
!2750 = !DILocation(line: 378, column: 14, scope: !2728)
!2751 = !DILocation(line: 378, column: 19, scope: !2728)
!2752 = !DILocation(line: 378, column: 22, scope: !2728)
!2753 = !DILocation(line: 378, column: 37, scope: !2728)
!2754 = !DILocation(line: 378, column: 5, scope: !2728)
!2755 = !DILocation(line: 379, column: 10, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2728, file: !6, line: 378, column: 43)
!2757 = distinct !{!2757, !2754, !2758, !619}
!2758 = !DILocation(line: 380, column: 5, scope: !2728)
!2759 = !DILocation(line: 382, column: 11, scope: !2737)
!2760 = !DILocation(line: 382, column: 9, scope: !2728)
!2761 = !DILocation(line: 0, scope: !2744)
!2762 = !DILocation(line: 389, column: 34, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2744, file: !6, line: 389, column: 9)
!2764 = !DILocation(line: 389, column: 32, scope: !2763)
!2765 = !DILocation(line: 389, column: 9, scope: !2744)
!2766 = !DILocation(line: 0, scope: !2736)
!2767 = !DILocation(line: 0, scope: !2742)
!2768 = !DILocation(line: 385, column: 47, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2742, file: !6, line: 385, column: 9)
!2770 = !DILocation(line: 385, column: 40, scope: !2769)
!2771 = !DILocation(line: 385, column: 9, scope: !2742)
!2772 = !DILocation(line: 384, column: 34, scope: !2736)
!2773 = !DILocation(line: 384, column: 38, scope: !2736)
!2774 = !DILocation(line: 384, column: 20, scope: !2736)
!2775 = !DILocation(line: 383, column: 46, scope: !2736)
!2776 = !DILocation(line: 383, column: 50, scope: !2736)
!2777 = !DILocation(line: 383, column: 30, scope: !2736)
!2778 = !DILocation(line: 386, column: 32, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2769, file: !6, line: 385, column: 68)
!2780 = !DILocation(line: 386, column: 27, scope: !2779)
!2781 = !DILocation(line: 386, column: 16, scope: !2779)
!2782 = !DILocation(line: 386, column: 19, scope: !2779)
!2783 = !DILocation(line: 385, column: 64, scope: !2769)
!2784 = distinct !{!2784, !2771, !2785, !619}
!2785 = !DILocation(line: 387, column: 9, scope: !2742)
!2786 = !DILocation(line: 390, column: 13, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2763, file: !6, line: 389, column: 55)
!2788 = !DILocation(line: 391, column: 24, scope: !2787)
!2789 = !DILocation(line: 391, column: 21, scope: !2787)
!2790 = !DILocation(line: 392, column: 24, scope: !2787)
!2791 = !DILocation(line: 392, column: 21, scope: !2787)
!2792 = !DILocation(line: 389, column: 51, scope: !2763)
!2793 = distinct !{!2793, !2765, !2794, !619}
!2794 = !DILocation(line: 393, column: 9, scope: !2744)
!2795 = !DILocation(line: 395, column: 1, scope: !2728)
!2796 = distinct !DISubprogram(name: "converting_copy_memory_helper<short, int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIsiEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !2813, retainedNodes: !2797)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2807, !2808, !2810}
!2798 = !DILocalVariable(name: "copy", arg: 1, scope: !2796, file: !6, line: 376, type: !579)
!2799 = !DILocalVariable(name: "d", arg: 2, scope: !2796, file: !6, line: 376, type: !38)
!2800 = !DILocalVariable(name: "src_off", arg: 3, scope: !2796, file: !6, line: 376, type: !423)
!2801 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2796, file: !6, line: 376, type: !423)
!2802 = !DILocalVariable(name: "from", scope: !2803, file: !6, line: 383, type: !2805)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !6, line: 382, column: 18)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !6, line: 382, column: 9)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!2807 = !DILocalVariable(name: "to", scope: !2803, file: !6, line: 384, type: !363)
!2808 = !DILocalVariable(name: "index", scope: !2809, file: !6, line: 385, type: !211)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !6, line: 385, column: 9)
!2810 = !DILocalVariable(name: "i", scope: !2811, file: !6, line: 389, type: !211)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !6, line: 389, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2804, file: !6, line: 388, column: 12)
!2813 = !{!2814, !2748}
!2814 = !DITemplateTypeParameter(name: "Source", type: !553)
!2815 = !DILocation(line: 0, scope: !2796)
!2816 = !DILocation(line: 378, column: 14, scope: !2796)
!2817 = !DILocation(line: 378, column: 19, scope: !2796)
!2818 = !DILocation(line: 378, column: 22, scope: !2796)
!2819 = !DILocation(line: 378, column: 37, scope: !2796)
!2820 = !DILocation(line: 378, column: 5, scope: !2796)
!2821 = !DILocation(line: 379, column: 10, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2796, file: !6, line: 378, column: 43)
!2823 = distinct !{!2823, !2820, !2824, !619}
!2824 = !DILocation(line: 380, column: 5, scope: !2796)
!2825 = !DILocation(line: 382, column: 11, scope: !2804)
!2826 = !DILocation(line: 382, column: 9, scope: !2796)
!2827 = !DILocation(line: 0, scope: !2811)
!2828 = !DILocation(line: 389, column: 34, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2811, file: !6, line: 389, column: 9)
!2830 = !DILocation(line: 389, column: 32, scope: !2829)
!2831 = !DILocation(line: 389, column: 9, scope: !2811)
!2832 = !DILocation(line: 0, scope: !2803)
!2833 = !DILocation(line: 0, scope: !2809)
!2834 = !DILocation(line: 385, column: 47, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2809, file: !6, line: 385, column: 9)
!2836 = !DILocation(line: 385, column: 40, scope: !2835)
!2837 = !DILocation(line: 385, column: 9, scope: !2809)
!2838 = !DILocation(line: 384, column: 34, scope: !2803)
!2839 = !DILocation(line: 384, column: 38, scope: !2803)
!2840 = !DILocation(line: 384, column: 20, scope: !2803)
!2841 = !DILocation(line: 383, column: 46, scope: !2803)
!2842 = !DILocation(line: 383, column: 50, scope: !2803)
!2843 = !DILocation(line: 383, column: 30, scope: !2803)
!2844 = !DILocation(line: 386, column: 32, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2835, file: !6, line: 385, column: 68)
!2846 = !DILocation(line: 386, column: 27, scope: !2845)
!2847 = !DILocation(line: 386, column: 16, scope: !2845)
!2848 = !DILocation(line: 386, column: 19, scope: !2845)
!2849 = !DILocation(line: 385, column: 64, scope: !2835)
!2850 = distinct !{!2850, !2837, !2851, !619}
!2851 = !DILocation(line: 387, column: 9, scope: !2809)
!2852 = !DILocation(line: 390, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2829, file: !6, line: 389, column: 55)
!2854 = !DILocation(line: 391, column: 24, scope: !2853)
!2855 = !DILocation(line: 391, column: 21, scope: !2853)
!2856 = !DILocation(line: 392, column: 24, scope: !2853)
!2857 = !DILocation(line: 392, column: 21, scope: !2853)
!2858 = !DILocation(line: 389, column: 51, scope: !2829)
!2859 = distinct !{!2859, !2831, !2860, !619}
!2860 = !DILocation(line: 393, column: 9, scope: !2811)
!2861 = !DILocation(line: 395, column: 1, scope: !2796)
!2862 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned char, unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIhjEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !2879, retainedNodes: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2873, !2874, !2876}
!2864 = !DILocalVariable(name: "copy", arg: 1, scope: !2862, file: !6, line: 376, type: !579)
!2865 = !DILocalVariable(name: "d", arg: 2, scope: !2862, file: !6, line: 376, type: !38)
!2866 = !DILocalVariable(name: "src_off", arg: 3, scope: !2862, file: !6, line: 376, type: !423)
!2867 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2862, file: !6, line: 376, type: !423)
!2868 = !DILocalVariable(name: "from", scope: !2869, file: !6, line: 383, type: !2871)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !6, line: 382, column: 18)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !6, line: 382, column: 9)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!2873 = !DILocalVariable(name: "to", scope: !2869, file: !6, line: 384, type: !564)
!2874 = !DILocalVariable(name: "index", scope: !2875, file: !6, line: 385, type: !211)
!2875 = distinct !DILexicalBlock(scope: !2869, file: !6, line: 385, column: 9)
!2876 = !DILocalVariable(name: "i", scope: !2877, file: !6, line: 389, type: !211)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !6, line: 389, column: 9)
!2878 = distinct !DILexicalBlock(scope: !2870, file: !6, line: 388, column: 12)
!2879 = !{!2880, !2881}
!2880 = !DITemplateTypeParameter(name: "Source", type: !118)
!2881 = !DITemplateTypeParameter(name: "Dest", type: !18)
!2882 = !DILocation(line: 0, scope: !2862)
!2883 = !DILocation(line: 378, column: 14, scope: !2862)
!2884 = !DILocation(line: 378, column: 19, scope: !2862)
!2885 = !DILocation(line: 378, column: 22, scope: !2862)
!2886 = !DILocation(line: 378, column: 37, scope: !2862)
!2887 = !DILocation(line: 378, column: 5, scope: !2862)
!2888 = !DILocation(line: 379, column: 10, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2862, file: !6, line: 378, column: 43)
!2890 = distinct !{!2890, !2887, !2891, !619}
!2891 = !DILocation(line: 380, column: 5, scope: !2862)
!2892 = !DILocation(line: 382, column: 11, scope: !2870)
!2893 = !DILocation(line: 382, column: 9, scope: !2862)
!2894 = !DILocation(line: 0, scope: !2877)
!2895 = !DILocation(line: 389, column: 34, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2877, file: !6, line: 389, column: 9)
!2897 = !DILocation(line: 389, column: 32, scope: !2896)
!2898 = !DILocation(line: 389, column: 9, scope: !2877)
!2899 = !DILocation(line: 0, scope: !2869)
!2900 = !DILocation(line: 0, scope: !2875)
!2901 = !DILocation(line: 385, column: 47, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2875, file: !6, line: 385, column: 9)
!2903 = !DILocation(line: 385, column: 40, scope: !2902)
!2904 = !DILocation(line: 385, column: 9, scope: !2875)
!2905 = !DILocation(line: 384, column: 34, scope: !2869)
!2906 = !DILocation(line: 384, column: 38, scope: !2869)
!2907 = !DILocation(line: 384, column: 20, scope: !2869)
!2908 = !DILocation(line: 383, column: 46, scope: !2869)
!2909 = !DILocation(line: 383, column: 50, scope: !2869)
!2910 = !DILocation(line: 383, column: 30, scope: !2869)
!2911 = !DILocation(line: 386, column: 32, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !6, line: 385, column: 68)
!2913 = !DILocation(line: 386, column: 27, scope: !2912)
!2914 = !DILocation(line: 386, column: 16, scope: !2912)
!2915 = !DILocation(line: 386, column: 19, scope: !2912)
!2916 = !DILocation(line: 385, column: 64, scope: !2902)
!2917 = distinct !{!2917, !2904, !2918, !619}
!2918 = !DILocation(line: 387, column: 9, scope: !2875)
!2919 = !DILocation(line: 390, column: 13, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2896, file: !6, line: 389, column: 55)
!2921 = !DILocation(line: 391, column: 24, scope: !2920)
!2922 = !DILocation(line: 391, column: 21, scope: !2920)
!2923 = !DILocation(line: 392, column: 24, scope: !2920)
!2924 = !DILocation(line: 392, column: 21, scope: !2920)
!2925 = !DILocation(line: 389, column: 51, scope: !2896)
!2926 = distinct !{!2926, !2898, !2927, !619}
!2927 = !DILocation(line: 393, column: 9, scope: !2877)
!2928 = !DILocation(line: 395, column: 1, scope: !2862)
!2929 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned short, unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperItjEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !2946, retainedNodes: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2940, !2941, !2943}
!2931 = !DILocalVariable(name: "copy", arg: 1, scope: !2929, file: !6, line: 376, type: !579)
!2932 = !DILocalVariable(name: "d", arg: 2, scope: !2929, file: !6, line: 376, type: !38)
!2933 = !DILocalVariable(name: "src_off", arg: 3, scope: !2929, file: !6, line: 376, type: !423)
!2934 = !DILocalVariable(name: "dst_off", arg: 4, scope: !2929, file: !6, line: 376, type: !423)
!2935 = !DILocalVariable(name: "from", scope: !2936, file: !6, line: 383, type: !2938)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !6, line: 382, column: 18)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !6, line: 382, column: 9)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!2940 = !DILocalVariable(name: "to", scope: !2936, file: !6, line: 384, type: !564)
!2941 = !DILocalVariable(name: "index", scope: !2942, file: !6, line: 385, type: !211)
!2942 = distinct !DILexicalBlock(scope: !2936, file: !6, line: 385, column: 9)
!2943 = !DILocalVariable(name: "i", scope: !2944, file: !6, line: 389, type: !211)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !6, line: 389, column: 9)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !6, line: 388, column: 12)
!2946 = !{!2947, !2881}
!2947 = !DITemplateTypeParameter(name: "Source", type: !235)
!2948 = !DILocation(line: 0, scope: !2929)
!2949 = !DILocation(line: 378, column: 14, scope: !2929)
!2950 = !DILocation(line: 378, column: 19, scope: !2929)
!2951 = !DILocation(line: 378, column: 22, scope: !2929)
!2952 = !DILocation(line: 378, column: 37, scope: !2929)
!2953 = !DILocation(line: 378, column: 5, scope: !2929)
!2954 = !DILocation(line: 379, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2929, file: !6, line: 378, column: 43)
!2956 = distinct !{!2956, !2953, !2957, !619}
!2957 = !DILocation(line: 380, column: 5, scope: !2929)
!2958 = !DILocation(line: 382, column: 11, scope: !2937)
!2959 = !DILocation(line: 382, column: 9, scope: !2929)
!2960 = !DILocation(line: 0, scope: !2944)
!2961 = !DILocation(line: 389, column: 34, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2944, file: !6, line: 389, column: 9)
!2963 = !DILocation(line: 389, column: 32, scope: !2962)
!2964 = !DILocation(line: 389, column: 9, scope: !2944)
!2965 = !DILocation(line: 0, scope: !2936)
!2966 = !DILocation(line: 0, scope: !2942)
!2967 = !DILocation(line: 385, column: 47, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2942, file: !6, line: 385, column: 9)
!2969 = !DILocation(line: 385, column: 40, scope: !2968)
!2970 = !DILocation(line: 385, column: 9, scope: !2942)
!2971 = !DILocation(line: 384, column: 34, scope: !2936)
!2972 = !DILocation(line: 384, column: 38, scope: !2936)
!2973 = !DILocation(line: 384, column: 20, scope: !2936)
!2974 = !DILocation(line: 383, column: 46, scope: !2936)
!2975 = !DILocation(line: 383, column: 50, scope: !2936)
!2976 = !DILocation(line: 383, column: 30, scope: !2936)
!2977 = !DILocation(line: 386, column: 32, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2968, file: !6, line: 385, column: 68)
!2979 = !DILocation(line: 386, column: 27, scope: !2978)
!2980 = !DILocation(line: 386, column: 16, scope: !2978)
!2981 = !DILocation(line: 386, column: 19, scope: !2978)
!2982 = !DILocation(line: 385, column: 64, scope: !2968)
!2983 = distinct !{!2983, !2970, !2984, !619}
!2984 = !DILocation(line: 387, column: 9, scope: !2942)
!2985 = !DILocation(line: 390, column: 13, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2962, file: !6, line: 389, column: 55)
!2987 = !DILocation(line: 391, column: 24, scope: !2986)
!2988 = !DILocation(line: 391, column: 21, scope: !2986)
!2989 = !DILocation(line: 392, column: 24, scope: !2986)
!2990 = !DILocation(line: 392, column: 21, scope: !2986)
!2991 = !DILocation(line: 389, column: 51, scope: !2962)
!2992 = distinct !{!2992, !2964, !2993, !619}
!2993 = !DILocation(line: 393, column: 9, scope: !2944)
!2994 = !DILocation(line: 395, column: 1, scope: !2929)
!2995 = distinct !DISubprogram(name: "halide_openglcompute_copy_to_host", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute33halide_openglcompute_copy_to_hostEPvP15halide_buffer_t", scope: !2, file: !6, line: 490, type: !1728, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!2997 = !DILocalVariable(name: "user_context", arg: 1, scope: !2995, file: !6, line: 490, type: !126)
!2998 = !DILocalVariable(name: "buf", arg: 2, scope: !2995, file: !6, line: 490, type: !558)
!2999 = !DILocalVariable(name: "t_before", scope: !2995, file: !6, line: 492, type: !211)
!3000 = !DILocalVariable(name: "the_buffer", scope: !2995, file: !6, line: 500, type: !17)
!3001 = !DILocalVariable(name: "size", scope: !2995, file: !6, line: 501, type: !312)
!3002 = !DILocalVariable(name: "device_data", scope: !2995, file: !6, line: 515, type: !126)
!3003 = !DILocalVariable(name: "buf_copy", scope: !2995, file: !6, line: 523, type: !458)
!3004 = !DILocalVariable(name: "dev_copy", scope: !2995, file: !6, line: 525, type: !581)
!3005 = !DILocalVariable(name: "t_after", scope: !2995, file: !6, line: 572, type: !211)
!3006 = !DILocation(line: 0, scope: !2995)
!3007 = !DILocation(line: 492, column: 25, scope: !2995)
!3008 = !DILocation(line: 495, column: 23, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2995, file: !6, line: 495, column: 9)
!3010 = !DILocation(line: 495, column: 9, scope: !2995)
!3011 = !DILocation(line: 0, scope: !1010, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 496, column: 9, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !6, line: 495, column: 36)
!3014 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3012)
!3015 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3012)
!3016 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3012)
!3017 = !DILocation(line: 0, scope: !1032, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 496, column: 29, scope: !3013)
!3019 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3018)
!3020 = !DILocation(line: 0, scope: !1079, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 496, column: 9, scope: !3013)
!3022 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3021)
!3023 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3021)
!3024 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3012)
!3025 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3012)
!3026 = !DILocation(line: 0, scope: !1090, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3021)
!3028 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3027)
!3029 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3027)
!3030 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3027)
!3031 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3027)
!3032 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3021)
!3033 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3021)
!3034 = !DILocation(line: 497, column: 9, scope: !3013)
!3035 = !DILocation(line: 500, column: 38, scope: !2995)
!3036 = !DILocation(line: 500, column: 33, scope: !2995)
!3037 = !DILocation(line: 0, scope: !1787, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 501, column: 24, scope: !2995)
!3039 = !DILocation(line: 0, scope: !1792, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1519, column: 25, scope: !1787, inlinedAt: !3038)
!3041 = !DILocation(line: 0, scope: !1796, inlinedAt: !3040)
!3042 = !DILocation(line: 1508, column: 29, scope: !1801, inlinedAt: !3040)
!3043 = !DILocation(line: 1508, column: 27, scope: !1801, inlinedAt: !3040)
!3044 = !DILocation(line: 1508, column: 9, scope: !1796, inlinedAt: !3040)
!3045 = !DILocation(line: 0, scope: !787, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1514, column: 36, scope: !1792, inlinedAt: !3040)
!3047 = !DILocation(line: 482, column: 17, scope: !787, inlinedAt: !3046)
!3048 = !DILocation(line: 0, scope: !1808, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1519, column: 33, scope: !1787, inlinedAt: !3038)
!3050 = !DILocation(line: 0, scope: !1812, inlinedAt: !3049)
!3051 = !DILocation(line: 1497, column: 9, scope: !1812, inlinedAt: !3049)
!3052 = !DILocation(line: 1509, column: 24, scope: !1818, inlinedAt: !3040)
!3053 = !DILocation(line: 1509, column: 31, scope: !1818, inlinedAt: !3040)
!3054 = !DILocation(line: 1509, column: 17, scope: !1819, inlinedAt: !3040)
!3055 = !DILocation(line: 1510, column: 61, scope: !1823, inlinedAt: !3040)
!3056 = !DILocation(line: 1510, column: 68, scope: !1823, inlinedAt: !3040)
!3057 = !DILocation(line: 1510, column: 51, scope: !1823, inlinedAt: !3040)
!3058 = !DILocation(line: 1510, column: 23, scope: !1823, inlinedAt: !3040)
!3059 = !DILocation(line: 1511, column: 13, scope: !1823, inlinedAt: !3040)
!3060 = !DILocation(line: 1508, column: 42, scope: !1801, inlinedAt: !3040)
!3061 = distinct !{!3061, !3044, !3062, !619}
!3062 = !DILocation(line: 1512, column: 9, scope: !1796, inlinedAt: !3040)
!3063 = !DILocation(line: 1498, column: 24, scope: !1832, inlinedAt: !3049)
!3064 = !DILocation(line: 1498, column: 31, scope: !1832, inlinedAt: !3049)
!3065 = !DILocation(line: 1498, column: 17, scope: !1833, inlinedAt: !3049)
!3066 = !DILocation(line: 1499, column: 61, scope: !1838, inlinedAt: !3049)
!3067 = !DILocation(line: 1499, column: 68, scope: !1838, inlinedAt: !3049)
!3068 = !DILocation(line: 1499, column: 51, scope: !1838, inlinedAt: !3049)
!3069 = !DILocation(line: 1499, column: 23, scope: !1838, inlinedAt: !3049)
!3070 = !DILocation(line: 1500, column: 13, scope: !1838, inlinedAt: !3049)
!3071 = !DILocation(line: 1497, column: 42, scope: !1834, inlinedAt: !3049)
!3072 = !DILocation(line: 1497, column: 27, scope: !1834, inlinedAt: !3049)
!3073 = distinct !{!3073, !3051, !3074, !619}
!3074 = !DILocation(line: 1501, column: 9, scope: !1812, inlinedAt: !3049)
!3075 = !DILocation(line: 482, column: 22, scope: !787, inlinedAt: !3046)
!3076 = !DILocation(line: 482, column: 27, scope: !787, inlinedAt: !3046)
!3077 = !DILocation(line: 1513, column: 15, scope: !1792, inlinedAt: !3040)
!3078 = !DILocation(line: 0, scope: !787, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1502, column: 36, scope: !1808, inlinedAt: !3049)
!3080 = !DILocation(line: 1519, column: 31, scope: !1787, inlinedAt: !3038)
!3081 = !DILocation(line: 502, column: 5, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !6, line: 502, column: 5)
!3083 = distinct !DILexicalBlock(scope: !2995, file: !6, line: 502, column: 5)
!3084 = !DILocation(line: 502, column: 5, scope: !3083)
!3085 = !DILocation(line: 502, column: 5, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !6, line: 502, column: 5)
!3087 = !DILocation(line: 0, scope: !674, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 504, column: 5, scope: !2995)
!3089 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !3088)
!3090 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !3088)
!3091 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !3088)
!3092 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !3088)
!3093 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !3088)
!3094 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !3088)
!3095 = !DILocation(line: 0, scope: !688, inlinedAt: !3088)
!3096 = !DILocation(line: 0, scope: !691, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 504, column: 25, scope: !2995)
!3098 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3097)
!3099 = !DILocation(line: 0, scope: !691, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 505, column: 25, scope: !2995)
!3101 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !1170, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 505, column: 45, scope: !2995)
!3104 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !691, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 506, column: 25, scope: !2995)
!3107 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3106)
!3108 = !DILocation(line: 506, column: 41, scope: !2995)
!3109 = !DILocation(line: 0, scope: !1170, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 506, column: 38, scope: !2995)
!3111 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !3110)
!3112 = !DILocation(line: 0, scope: !691, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 507, column: 25, scope: !2995)
!3114 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3113)
!3115 = !DILocation(line: 0, scope: !1155, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 507, column: 44, scope: !2995)
!3117 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !3116)
!3118 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !3116)
!3119 = !DILocation(line: 0, scope: !691, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 508, column: 25, scope: !2995)
!3121 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3120)
!3122 = !DILocation(line: 0, scope: !1155, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 508, column: 38, scope: !2995)
!3124 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !3123)
!3125 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !3123)
!3126 = !DILocation(line: 0, scope: !691, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 508, column: 56, scope: !2995)
!3128 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3127)
!3129 = !DILocation(line: 0, scope: !700, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 504, column: 5, scope: !2995)
!3131 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !3130)
!3132 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !3130)
!3133 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !3130)
!3134 = !DILocation(line: 0, scope: !714, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !3130)
!3136 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !3135)
!3137 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !3135)
!3138 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !3135)
!3139 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !3135)
!3140 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3130)
!3141 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3130)
!3142 = !DILocation(line: 510, column: 18, scope: !2995)
!3143 = !DILocation(line: 510, column: 5, scope: !2995)
!3144 = !DILocation(line: 511, column: 22, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2995, file: !6, line: 511, column: 9)
!3146 = !DILocation(line: 511, column: 9, scope: !2995)
!3147 = !DILocation(line: 515, column: 38, scope: !2995)
!3148 = !DILocation(line: 515, column: 25, scope: !2995)
!3149 = !DILocation(line: 519, column: 22, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !2995, file: !6, line: 519, column: 9)
!3151 = !DILocation(line: 519, column: 9, scope: !2995)
!3152 = !DILocation(line: 523, column: 5, scope: !2995)
!3153 = !DILocation(line: 523, column: 21, scope: !2995)
!3154 = !DILocation(line: 523, column: 32, scope: !2995)
!3155 = !DILocation(line: 524, column: 23, scope: !2995)
!3156 = !DILocation(line: 524, column: 14, scope: !2995)
!3157 = !DILocation(line: 524, column: 21, scope: !2995)
!3158 = !DILocation(line: 525, column: 5, scope: !2995)
!3159 = !DILocation(line: 525, column: 17, scope: !2995)
!3160 = !DILocation(line: 525, column: 28, scope: !2995)
!3161 = !DILocation(line: 527, column: 19, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !2995, file: !6, line: 527, column: 9)
!3163 = !DILocation(line: 527, column: 9, scope: !2995)
!3164 = !DILocation(line: 528, column: 23, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !6, line: 528, column: 13)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !6, line: 527, column: 44)
!3167 = !DILocation(line: 528, column: 13, scope: !3166)
!3168 = !DILocation(line: 529, column: 101, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !6, line: 528, column: 34)
!3170 = !DILocation(line: 529, column: 13, scope: !3169)
!3171 = !DILocation(line: 530, column: 9, scope: !3169)
!3172 = !DILocation(line: 535, column: 22, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !6, line: 530, column: 42)
!3174 = distinct !DILexicalBlock(scope: !3165, file: !6, line: 530, column: 20)
!3175 = !DILocation(line: 535, column: 33, scope: !3173)
!3176 = !DILocation(line: 536, column: 102, scope: !3173)
!3177 = !DILocation(line: 536, column: 13, scope: !3173)
!3178 = !DILocation(line: 537, column: 9, scope: !3173)
!3179 = !DILocation(line: 538, column: 73, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !6, line: 537, column: 42)
!3181 = distinct !DILexicalBlock(scope: !3174, file: !6, line: 537, column: 20)
!3182 = !DILocation(line: 538, column: 13, scope: !3180)
!3183 = !DILocation(line: 0, scope: !1010, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 540, column: 13, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !6, line: 539, column: 16)
!3186 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3184)
!3187 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3184)
!3188 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3184)
!3189 = !DILocation(line: 0, scope: !1032, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 540, column: 33, scope: !3185)
!3191 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3190)
!3192 = !DILocation(line: 0, scope: !1079, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 540, column: 13, scope: !3185)
!3194 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3193)
!3195 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3193)
!3196 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3184)
!3197 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3184)
!3198 = !DILocation(line: 0, scope: !1090, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3193)
!3200 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3199)
!3201 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3199)
!3202 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3199)
!3203 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3199)
!3204 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3193)
!3205 = !DILocation(line: 544, column: 23, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !6, line: 544, column: 13)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !6, line: 543, column: 52)
!3208 = distinct !DILexicalBlock(scope: !3162, file: !6, line: 543, column: 16)
!3209 = !DILocation(line: 544, column: 13, scope: !3207)
!3210 = !DILocation(line: 545, column: 103, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !6, line: 544, column: 34)
!3212 = !DILocation(line: 545, column: 13, scope: !3211)
!3213 = !DILocation(line: 546, column: 9, scope: !3211)
!3214 = !DILocation(line: 551, column: 22, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !6, line: 546, column: 42)
!3216 = distinct !DILexicalBlock(scope: !3206, file: !6, line: 546, column: 20)
!3217 = !DILocation(line: 551, column: 33, scope: !3215)
!3218 = !DILocation(line: 552, column: 104, scope: !3215)
!3219 = !DILocation(line: 552, column: 13, scope: !3215)
!3220 = !DILocation(line: 553, column: 9, scope: !3215)
!3221 = !DILocation(line: 554, column: 73, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !6, line: 553, column: 42)
!3223 = distinct !DILexicalBlock(scope: !3216, file: !6, line: 553, column: 20)
!3224 = !DILocation(line: 554, column: 13, scope: !3222)
!3225 = !DILocation(line: 0, scope: !1010, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 556, column: 13, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !6, line: 555, column: 16)
!3228 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3226)
!3229 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3226)
!3230 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3226)
!3231 = !DILocation(line: 0, scope: !1032, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 556, column: 33, scope: !3227)
!3233 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3232)
!3234 = !DILocation(line: 0, scope: !1079, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 556, column: 13, scope: !3227)
!3236 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3235)
!3237 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3235)
!3238 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3226)
!3239 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3226)
!3240 = !DILocation(line: 0, scope: !1090, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3235)
!3242 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3241)
!3243 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3241)
!3244 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3241)
!3245 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3241)
!3246 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3235)
!3247 = !DILocation(line: 560, column: 23, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !6, line: 560, column: 13)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !6, line: 559, column: 53)
!3250 = distinct !DILexicalBlock(scope: !3208, file: !6, line: 559, column: 16)
!3251 = !DILocation(line: 560, column: 28, scope: !3248)
!3252 = !DILocation(line: 560, column: 13, scope: !3249)
!3253 = !DILocation(line: 561, column: 73, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !6, line: 560, column: 35)
!3255 = !DILocation(line: 561, column: 13, scope: !3254)
!3256 = !DILocation(line: 562, column: 9, scope: !3254)
!3257 = !DILocation(line: 0, scope: !1010, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 563, column: 13, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3248, file: !6, line: 562, column: 16)
!3260 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3258)
!3261 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3258)
!3262 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3258)
!3263 = !DILocation(line: 0, scope: !1032, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 563, column: 33, scope: !3259)
!3265 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3264)
!3266 = !DILocation(line: 0, scope: !1079, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 563, column: 13, scope: !3259)
!3268 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3267)
!3269 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3267)
!3270 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3258)
!3271 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3258)
!3272 = !DILocation(line: 0, scope: !1090, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3267)
!3274 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3273)
!3275 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3273)
!3276 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3273)
!3277 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3273)
!3278 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3267)
!3279 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3267)
!3280 = !DILocation(line: 567, column: 18, scope: !2995)
!3281 = !DILocation(line: 567, column: 5, scope: !2995)
!3282 = !DILocation(line: 0, scope: !674, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 569, column: 5, scope: !2995)
!3284 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !3283)
!3285 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !3283)
!3286 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !3283)
!3287 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !3283)
!3288 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !3283)
!3289 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !3283)
!3290 = !DILocation(line: 0, scope: !688, inlinedAt: !3283)
!3291 = !DILocation(line: 0, scope: !691, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 569, column: 25, scope: !2995)
!3293 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !1155, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 569, column: 40, scope: !2995)
!3296 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !3295)
!3297 = !DILocation(line: 0, scope: !691, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 569, column: 58, scope: !2995)
!3299 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3298)
!3300 = !DILocation(line: 0, scope: !700, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 569, column: 5, scope: !2995)
!3302 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !3301)
!3303 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !3301)
!3304 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !3301)
!3305 = !DILocation(line: 0, scope: !714, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !3301)
!3307 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !3306)
!3308 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !3306)
!3309 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !3306)
!3310 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !3306)
!3311 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3301)
!3312 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3301)
!3313 = !DILocation(line: 572, column: 24, scope: !2995)
!3314 = !DILocation(line: 0, scope: !674, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 573, column: 5, scope: !2995)
!3316 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !3315)
!3317 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !3315)
!3318 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !3315)
!3319 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !3315)
!3320 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !3315)
!3321 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !3315)
!3322 = !DILocation(line: 0, scope: !688, inlinedAt: !3315)
!3323 = !DILocation(line: 0, scope: !691, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 573, column: 25, scope: !2995)
!3325 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3324)
!3326 = !DILocation(line: 573, column: 53, scope: !2995)
!3327 = !DILocation(line: 573, column: 44, scope: !2995)
!3328 = !DILocation(line: 573, column: 65, scope: !2995)
!3329 = !DILocation(line: 0, scope: !1698, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 573, column: 41, scope: !2995)
!3331 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !3330)
!3332 = !DILocation(line: 0, scope: !691, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 574, column: 25, scope: !2995)
!3334 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3333)
!3335 = !DILocation(line: 0, scope: !700, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 573, column: 5, scope: !2995)
!3337 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !3336)
!3338 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !3336)
!3339 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !3336)
!3340 = !DILocation(line: 0, scope: !714, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !3336)
!3342 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !3341)
!3343 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !3341)
!3344 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !3341)
!3345 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !3341)
!3346 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3336)
!3347 = !DILocation(line: 578, column: 1, scope: !2995)
!3348 = distinct !DISubprogram(name: "converting_copy_memory_helper<int, signed char>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIiaEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !3363, retainedNodes: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3357, !3358, !3360}
!3350 = !DILocalVariable(name: "copy", arg: 1, scope: !3348, file: !6, line: 376, type: !579)
!3351 = !DILocalVariable(name: "d", arg: 2, scope: !3348, file: !6, line: 376, type: !38)
!3352 = !DILocalVariable(name: "src_off", arg: 3, scope: !3348, file: !6, line: 376, type: !423)
!3353 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3348, file: !6, line: 376, type: !423)
!3354 = !DILocalVariable(name: "from", scope: !3355, file: !6, line: 383, type: !321)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !6, line: 382, column: 18)
!3356 = distinct !DILexicalBlock(scope: !3348, file: !6, line: 382, column: 9)
!3357 = !DILocalVariable(name: "to", scope: !3355, file: !6, line: 384, type: !561)
!3358 = !DILocalVariable(name: "index", scope: !3359, file: !6, line: 385, type: !211)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !6, line: 385, column: 9)
!3360 = !DILocalVariable(name: "i", scope: !3361, file: !6, line: 389, type: !211)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !6, line: 389, column: 9)
!3362 = distinct !DILexicalBlock(scope: !3356, file: !6, line: 388, column: 12)
!3363 = !{!3364, !3365}
!3364 = !DITemplateTypeParameter(name: "Source", type: !38)
!3365 = !DITemplateTypeParameter(name: "Dest", type: !550)
!3366 = !DILocation(line: 0, scope: !3348)
!3367 = !DILocation(line: 378, column: 14, scope: !3348)
!3368 = !DILocation(line: 378, column: 19, scope: !3348)
!3369 = !DILocation(line: 378, column: 22, scope: !3348)
!3370 = !DILocation(line: 378, column: 37, scope: !3348)
!3371 = !DILocation(line: 378, column: 5, scope: !3348)
!3372 = !DILocation(line: 379, column: 10, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3348, file: !6, line: 378, column: 43)
!3374 = distinct !{!3374, !3371, !3375, !619}
!3375 = !DILocation(line: 380, column: 5, scope: !3348)
!3376 = !DILocation(line: 382, column: 11, scope: !3356)
!3377 = !DILocation(line: 382, column: 9, scope: !3348)
!3378 = !DILocation(line: 0, scope: !3361)
!3379 = !DILocation(line: 389, column: 34, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3361, file: !6, line: 389, column: 9)
!3381 = !DILocation(line: 389, column: 32, scope: !3380)
!3382 = !DILocation(line: 389, column: 9, scope: !3361)
!3383 = !DILocation(line: 0, scope: !3355)
!3384 = !DILocation(line: 0, scope: !3359)
!3385 = !DILocation(line: 385, column: 47, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3359, file: !6, line: 385, column: 9)
!3387 = !DILocation(line: 385, column: 40, scope: !3386)
!3388 = !DILocation(line: 385, column: 9, scope: !3359)
!3389 = !DILocation(line: 384, column: 34, scope: !3355)
!3390 = !DILocation(line: 384, column: 38, scope: !3355)
!3391 = !DILocation(line: 384, column: 20, scope: !3355)
!3392 = !DILocation(line: 383, column: 46, scope: !3355)
!3393 = !DILocation(line: 383, column: 50, scope: !3355)
!3394 = !DILocation(line: 383, column: 30, scope: !3355)
!3395 = !DILocation(line: 386, column: 32, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3386, file: !6, line: 385, column: 68)
!3397 = !DILocation(line: 386, column: 27, scope: !3396)
!3398 = !DILocation(line: 386, column: 16, scope: !3396)
!3399 = !DILocation(line: 386, column: 19, scope: !3396)
!3400 = !DILocation(line: 385, column: 64, scope: !3386)
!3401 = distinct !{!3401, !3388, !3402, !619}
!3402 = !DILocation(line: 387, column: 9, scope: !3359)
!3403 = !DILocation(line: 390, column: 13, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3380, file: !6, line: 389, column: 55)
!3405 = !DILocation(line: 391, column: 24, scope: !3404)
!3406 = !DILocation(line: 391, column: 21, scope: !3404)
!3407 = !DILocation(line: 392, column: 24, scope: !3404)
!3408 = !DILocation(line: 392, column: 21, scope: !3404)
!3409 = !DILocation(line: 389, column: 51, scope: !3380)
!3410 = distinct !{!3410, !3382, !3411, !619}
!3411 = !DILocation(line: 393, column: 9, scope: !3361)
!3412 = !DILocation(line: 395, column: 1, scope: !3348)
!3413 = distinct !DISubprogram(name: "converting_copy_memory_helper<int, short>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIisEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !3428, retainedNodes: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3422, !3423, !3425}
!3415 = !DILocalVariable(name: "copy", arg: 1, scope: !3413, file: !6, line: 376, type: !579)
!3416 = !DILocalVariable(name: "d", arg: 2, scope: !3413, file: !6, line: 376, type: !38)
!3417 = !DILocalVariable(name: "src_off", arg: 3, scope: !3413, file: !6, line: 376, type: !423)
!3418 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3413, file: !6, line: 376, type: !423)
!3419 = !DILocalVariable(name: "from", scope: !3420, file: !6, line: 383, type: !321)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !6, line: 382, column: 18)
!3421 = distinct !DILexicalBlock(scope: !3413, file: !6, line: 382, column: 9)
!3422 = !DILocalVariable(name: "to", scope: !3420, file: !6, line: 384, type: !562)
!3423 = !DILocalVariable(name: "index", scope: !3424, file: !6, line: 385, type: !211)
!3424 = distinct !DILexicalBlock(scope: !3420, file: !6, line: 385, column: 9)
!3425 = !DILocalVariable(name: "i", scope: !3426, file: !6, line: 389, type: !211)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !6, line: 389, column: 9)
!3427 = distinct !DILexicalBlock(scope: !3421, file: !6, line: 388, column: 12)
!3428 = !{!3364, !3429}
!3429 = !DITemplateTypeParameter(name: "Dest", type: !553)
!3430 = !DILocation(line: 0, scope: !3413)
!3431 = !DILocation(line: 378, column: 14, scope: !3413)
!3432 = !DILocation(line: 378, column: 19, scope: !3413)
!3433 = !DILocation(line: 378, column: 22, scope: !3413)
!3434 = !DILocation(line: 378, column: 37, scope: !3413)
!3435 = !DILocation(line: 378, column: 5, scope: !3413)
!3436 = !DILocation(line: 379, column: 10, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3413, file: !6, line: 378, column: 43)
!3438 = distinct !{!3438, !3435, !3439, !619}
!3439 = !DILocation(line: 380, column: 5, scope: !3413)
!3440 = !DILocation(line: 382, column: 11, scope: !3421)
!3441 = !DILocation(line: 382, column: 9, scope: !3413)
!3442 = !DILocation(line: 0, scope: !3426)
!3443 = !DILocation(line: 389, column: 34, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3426, file: !6, line: 389, column: 9)
!3445 = !DILocation(line: 389, column: 32, scope: !3444)
!3446 = !DILocation(line: 389, column: 9, scope: !3426)
!3447 = !DILocation(line: 0, scope: !3420)
!3448 = !DILocation(line: 0, scope: !3424)
!3449 = !DILocation(line: 385, column: 47, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3424, file: !6, line: 385, column: 9)
!3451 = !DILocation(line: 385, column: 40, scope: !3450)
!3452 = !DILocation(line: 385, column: 9, scope: !3424)
!3453 = !DILocation(line: 384, column: 34, scope: !3420)
!3454 = !DILocation(line: 384, column: 38, scope: !3420)
!3455 = !DILocation(line: 384, column: 20, scope: !3420)
!3456 = !DILocation(line: 383, column: 46, scope: !3420)
!3457 = !DILocation(line: 383, column: 50, scope: !3420)
!3458 = !DILocation(line: 383, column: 30, scope: !3420)
!3459 = !DILocation(line: 386, column: 32, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3450, file: !6, line: 385, column: 68)
!3461 = !DILocation(line: 386, column: 27, scope: !3460)
!3462 = !DILocation(line: 386, column: 16, scope: !3460)
!3463 = !DILocation(line: 386, column: 19, scope: !3460)
!3464 = !DILocation(line: 385, column: 64, scope: !3450)
!3465 = distinct !{!3465, !3452, !3466, !619}
!3466 = !DILocation(line: 387, column: 9, scope: !3424)
!3467 = !DILocation(line: 390, column: 13, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3444, file: !6, line: 389, column: 55)
!3469 = !DILocation(line: 391, column: 24, scope: !3468)
!3470 = !DILocation(line: 391, column: 21, scope: !3468)
!3471 = !DILocation(line: 392, column: 24, scope: !3468)
!3472 = !DILocation(line: 392, column: 21, scope: !3468)
!3473 = !DILocation(line: 389, column: 51, scope: !3444)
!3474 = distinct !{!3474, !3446, !3475, !619}
!3475 = !DILocation(line: 393, column: 9, scope: !3426)
!3476 = !DILocation(line: 395, column: 1, scope: !3413)
!3477 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned int, unsigned char>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjhEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !3494, retainedNodes: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3488, !3489, !3491}
!3479 = !DILocalVariable(name: "copy", arg: 1, scope: !3477, file: !6, line: 376, type: !579)
!3480 = !DILocalVariable(name: "d", arg: 2, scope: !3477, file: !6, line: 376, type: !38)
!3481 = !DILocalVariable(name: "src_off", arg: 3, scope: !3477, file: !6, line: 376, type: !423)
!3482 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3477, file: !6, line: 376, type: !423)
!3483 = !DILocalVariable(name: "from", scope: !3484, file: !6, line: 383, type: !3486)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !6, line: 382, column: 18)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !6, line: 382, column: 9)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3488 = !DILocalVariable(name: "to", scope: !3484, file: !6, line: 384, type: !563)
!3489 = !DILocalVariable(name: "index", scope: !3490, file: !6, line: 385, type: !211)
!3490 = distinct !DILexicalBlock(scope: !3484, file: !6, line: 385, column: 9)
!3491 = !DILocalVariable(name: "i", scope: !3492, file: !6, line: 389, type: !211)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !6, line: 389, column: 9)
!3493 = distinct !DILexicalBlock(scope: !3485, file: !6, line: 388, column: 12)
!3494 = !{!3495, !3496}
!3495 = !DITemplateTypeParameter(name: "Source", type: !18)
!3496 = !DITemplateTypeParameter(name: "Dest", type: !118)
!3497 = !DILocation(line: 0, scope: !3477)
!3498 = !DILocation(line: 378, column: 14, scope: !3477)
!3499 = !DILocation(line: 378, column: 19, scope: !3477)
!3500 = !DILocation(line: 378, column: 22, scope: !3477)
!3501 = !DILocation(line: 378, column: 37, scope: !3477)
!3502 = !DILocation(line: 378, column: 5, scope: !3477)
!3503 = !DILocation(line: 379, column: 10, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3477, file: !6, line: 378, column: 43)
!3505 = distinct !{!3505, !3502, !3506, !619}
!3506 = !DILocation(line: 380, column: 5, scope: !3477)
!3507 = !DILocation(line: 382, column: 11, scope: !3485)
!3508 = !DILocation(line: 382, column: 9, scope: !3477)
!3509 = !DILocation(line: 0, scope: !3492)
!3510 = !DILocation(line: 389, column: 34, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3492, file: !6, line: 389, column: 9)
!3512 = !DILocation(line: 389, column: 32, scope: !3511)
!3513 = !DILocation(line: 389, column: 9, scope: !3492)
!3514 = !DILocation(line: 0, scope: !3484)
!3515 = !DILocation(line: 0, scope: !3490)
!3516 = !DILocation(line: 385, column: 47, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3490, file: !6, line: 385, column: 9)
!3518 = !DILocation(line: 385, column: 40, scope: !3517)
!3519 = !DILocation(line: 385, column: 9, scope: !3490)
!3520 = !DILocation(line: 384, column: 34, scope: !3484)
!3521 = !DILocation(line: 384, column: 38, scope: !3484)
!3522 = !DILocation(line: 384, column: 20, scope: !3484)
!3523 = !DILocation(line: 383, column: 46, scope: !3484)
!3524 = !DILocation(line: 383, column: 50, scope: !3484)
!3525 = !DILocation(line: 383, column: 30, scope: !3484)
!3526 = !DILocation(line: 386, column: 32, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !6, line: 385, column: 68)
!3528 = !DILocation(line: 386, column: 27, scope: !3527)
!3529 = !DILocation(line: 386, column: 16, scope: !3527)
!3530 = !DILocation(line: 386, column: 19, scope: !3527)
!3531 = !DILocation(line: 385, column: 64, scope: !3517)
!3532 = distinct !{!3532, !3519, !3533, !619}
!3533 = !DILocation(line: 387, column: 9, scope: !3490)
!3534 = !DILocation(line: 390, column: 13, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3511, file: !6, line: 389, column: 55)
!3536 = !DILocation(line: 391, column: 24, scope: !3535)
!3537 = !DILocation(line: 391, column: 21, scope: !3535)
!3538 = !DILocation(line: 392, column: 24, scope: !3535)
!3539 = !DILocation(line: 392, column: 21, scope: !3535)
!3540 = !DILocation(line: 389, column: 51, scope: !3511)
!3541 = distinct !{!3541, !3513, !3542, !619}
!3542 = !DILocation(line: 393, column: 9, scope: !3492)
!3543 = !DILocation(line: 395, column: 1, scope: !3477)
!3544 = distinct !DISubprogram(name: "converting_copy_memory_helper<unsigned int, unsigned short>", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12_GLOBAL__N_129converting_copy_memory_helperIjtEEvRKNS1_11device_copyEixx", scope: !2729, file: !6, line: 376, type: !577, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, templateParams: !3559, retainedNodes: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3553, !3554, !3556}
!3546 = !DILocalVariable(name: "copy", arg: 1, scope: !3544, file: !6, line: 376, type: !579)
!3547 = !DILocalVariable(name: "d", arg: 2, scope: !3544, file: !6, line: 376, type: !38)
!3548 = !DILocalVariable(name: "src_off", arg: 3, scope: !3544, file: !6, line: 376, type: !423)
!3549 = !DILocalVariable(name: "dst_off", arg: 4, scope: !3544, file: !6, line: 376, type: !423)
!3550 = !DILocalVariable(name: "from", scope: !3551, file: !6, line: 383, type: !3486)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !6, line: 382, column: 18)
!3552 = distinct !DILexicalBlock(scope: !3544, file: !6, line: 382, column: 9)
!3553 = !DILocalVariable(name: "to", scope: !3551, file: !6, line: 384, type: !565)
!3554 = !DILocalVariable(name: "index", scope: !3555, file: !6, line: 385, type: !211)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !6, line: 385, column: 9)
!3556 = !DILocalVariable(name: "i", scope: !3557, file: !6, line: 389, type: !211)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !6, line: 389, column: 9)
!3558 = distinct !DILexicalBlock(scope: !3552, file: !6, line: 388, column: 12)
!3559 = !{!3495, !3560}
!3560 = !DITemplateTypeParameter(name: "Dest", type: !235)
!3561 = !DILocation(line: 0, scope: !3544)
!3562 = !DILocation(line: 378, column: 14, scope: !3544)
!3563 = !DILocation(line: 378, column: 19, scope: !3544)
!3564 = !DILocation(line: 378, column: 22, scope: !3544)
!3565 = !DILocation(line: 378, column: 37, scope: !3544)
!3566 = !DILocation(line: 378, column: 5, scope: !3544)
!3567 = !DILocation(line: 379, column: 10, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3544, file: !6, line: 378, column: 43)
!3569 = distinct !{!3569, !3566, !3570, !619}
!3570 = !DILocation(line: 380, column: 5, scope: !3544)
!3571 = !DILocation(line: 382, column: 11, scope: !3552)
!3572 = !DILocation(line: 382, column: 9, scope: !3544)
!3573 = !DILocation(line: 0, scope: !3557)
!3574 = !DILocation(line: 389, column: 34, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3557, file: !6, line: 389, column: 9)
!3576 = !DILocation(line: 389, column: 32, scope: !3575)
!3577 = !DILocation(line: 389, column: 9, scope: !3557)
!3578 = !DILocation(line: 0, scope: !3551)
!3579 = !DILocation(line: 0, scope: !3555)
!3580 = !DILocation(line: 385, column: 47, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3555, file: !6, line: 385, column: 9)
!3582 = !DILocation(line: 385, column: 40, scope: !3581)
!3583 = !DILocation(line: 385, column: 9, scope: !3555)
!3584 = !DILocation(line: 384, column: 34, scope: !3551)
!3585 = !DILocation(line: 384, column: 38, scope: !3551)
!3586 = !DILocation(line: 384, column: 20, scope: !3551)
!3587 = !DILocation(line: 383, column: 46, scope: !3551)
!3588 = !DILocation(line: 383, column: 50, scope: !3551)
!3589 = !DILocation(line: 383, column: 30, scope: !3551)
!3590 = !DILocation(line: 386, column: 32, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3581, file: !6, line: 385, column: 68)
!3592 = !DILocation(line: 386, column: 27, scope: !3591)
!3593 = !DILocation(line: 386, column: 16, scope: !3591)
!3594 = !DILocation(line: 386, column: 19, scope: !3591)
!3595 = !DILocation(line: 385, column: 64, scope: !3581)
!3596 = distinct !{!3596, !3583, !3597, !619}
!3597 = !DILocation(line: 387, column: 9, scope: !3555)
!3598 = !DILocation(line: 390, column: 13, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3575, file: !6, line: 389, column: 55)
!3600 = !DILocation(line: 391, column: 24, scope: !3599)
!3601 = !DILocation(line: 391, column: 21, scope: !3599)
!3602 = !DILocation(line: 392, column: 24, scope: !3599)
!3603 = !DILocation(line: 392, column: 21, scope: !3599)
!3604 = !DILocation(line: 389, column: 51, scope: !3575)
!3605 = distinct !{!3605, !3577, !3606, !619}
!3606 = !DILocation(line: 393, column: 9, scope: !3557)
!3607 = !DILocation(line: 395, column: 1, scope: !3544)
!3608 = distinct !DISubprogram(name: "halide_openglcompute_run", scope: !6, file: !6, line: 591, type: !3609, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3612)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!38, !126, !126, !182, !38, !38, !38, !38, !38, !38, !38, !3611, !547, !548, !38, !557, !38, !38}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3640, !3643, !3646, !3648, !3649}
!3613 = !DILocalVariable(name: "user_context", arg: 1, scope: !3608, file: !6, line: 591, type: !126)
!3614 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !3608, file: !6, line: 591, type: !126)
!3615 = !DILocalVariable(name: "entry_name", arg: 3, scope: !3608, file: !6, line: 592, type: !182)
!3616 = !DILocalVariable(name: "blocksX", arg: 4, scope: !3608, file: !6, line: 592, type: !38)
!3617 = !DILocalVariable(name: "blocksY", arg: 5, scope: !3608, file: !6, line: 592, type: !38)
!3618 = !DILocalVariable(name: "blocksZ", arg: 6, scope: !3608, file: !6, line: 593, type: !38)
!3619 = !DILocalVariable(name: "threadsX", arg: 7, scope: !3608, file: !6, line: 593, type: !38)
!3620 = !DILocalVariable(name: "threadsY", arg: 8, scope: !3608, file: !6, line: 593, type: !38)
!3621 = !DILocalVariable(name: "threadsZ", arg: 9, scope: !3608, file: !6, line: 593, type: !38)
!3622 = !DILocalVariable(name: "shared_mem_bytes", arg: 10, scope: !3608, file: !6, line: 594, type: !38)
!3623 = !DILocalVariable(name: "arg_types", arg: 11, scope: !3608, file: !6, line: 594, type: !3611)
!3624 = !DILocalVariable(name: "args", arg: 12, scope: !3608, file: !6, line: 594, type: !547)
!3625 = !DILocalVariable(name: "arg_is_buffer", arg: 13, scope: !3608, file: !6, line: 595, type: !548)
!3626 = !DILocalVariable(name: "num_attributes", arg: 14, scope: !3608, file: !6, line: 595, type: !38)
!3627 = !DILocalVariable(name: "vertex_buffer", arg: 15, scope: !3608, file: !6, line: 596, type: !557)
!3628 = !DILocalVariable(name: "num_coords_dim0", arg: 16, scope: !3608, file: !6, line: 596, type: !38)
!3629 = !DILocalVariable(name: "num_coords_dim1", arg: 17, scope: !3608, file: !6, line: 597, type: !38)
!3630 = !DILocalVariable(name: "t_before", scope: !3608, file: !6, line: 599, type: !211)
!3631 = !DILocalVariable(name: "mod", scope: !3608, file: !6, line: 617, type: !186)
!3632 = !DILocalVariable(name: "kernel", scope: !3608, file: !6, line: 623, type: !190)
!3633 = !DILocalVariable(name: "i", scope: !3608, file: !6, line: 636, type: !38)
!3634 = !DILocalVariable(name: "value", scope: !3635, file: !6, line: 644, type: !38)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !6, line: 643, column: 55)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !6, line: 643, column: 17)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !6, line: 642, column: 36)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !6, line: 642, column: 13)
!3639 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 637, column: 36)
!3640 = !DILocalVariable(name: "value", scope: !3641, file: !6, line: 662, type: !18)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !6, line: 661, column: 63)
!3642 = distinct !DILexicalBlock(scope: !3636, file: !6, line: 661, column: 24)
!3643 = !DILocalVariable(name: "value", scope: !3644, file: !6, line: 681, type: !156)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !6, line: 680, column: 64)
!3645 = distinct !DILexicalBlock(scope: !3642, file: !6, line: 680, column: 24)
!3646 = !DILocalVariable(name: "arg_value", scope: !3647, file: !6, line: 701, type: !211)
!3647 = distinct !DILexicalBlock(scope: !3638, file: !6, line: 700, column: 16)
!3648 = !DILocalVariable(name: "the_buffer", scope: !3647, file: !6, line: 703, type: !17)
!3649 = !DILocalVariable(name: "t_after", scope: !3608, file: !6, line: 721, type: !211)
!3650 = !DILocation(line: 0, scope: !3608)
!3651 = !DILocation(line: 599, column: 25, scope: !3608)
!3652 = !DILocation(line: 0, scope: !674, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 602, column: 5, scope: !3608)
!3654 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !3653)
!3655 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !3653)
!3656 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !3653)
!3657 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !3653)
!3658 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !3653)
!3659 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !3653)
!3660 = !DILocation(line: 0, scope: !688, inlinedAt: !3653)
!3661 = !DILocation(line: 0, scope: !691, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 603, column: 9, scope: !3608)
!3663 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3662)
!3664 = !DILocation(line: 0, scope: !1170, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 603, column: 70, scope: !3608)
!3666 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !3665)
!3667 = !DILocation(line: 0, scope: !691, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 603, column: 86, scope: !3608)
!3669 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !691, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 604, column: 9, scope: !3608)
!3672 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3671)
!3673 = !DILocation(line: 0, scope: !691, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 604, column: 22, scope: !3608)
!3675 = !DILocation(line: 59, column: 17, scope: !698, inlinedAt: !3674)
!3676 = !DILocation(line: 59, column: 13, scope: !691, inlinedAt: !3674)
!3677 = !DILocation(line: 60, column: 19, scope: !3678, inlinedAt: !3674)
!3678 = distinct !DILexicalBlock(scope: !698, file: !399, line: 59, column: 29)
!3679 = !DILocation(line: 61, column: 9, scope: !3678, inlinedAt: !3674)
!3680 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3674)
!3681 = !DILocation(line: 0, scope: !698, inlinedAt: !3674)
!3682 = !DILocation(line: 0, scope: !691, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 604, column: 36, scope: !3608)
!3684 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3683)
!3685 = !DILocation(line: 0, scope: !691, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 605, column: 9, scope: !3608)
!3687 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3686)
!3688 = !DILocation(line: 0, scope: !1185, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 605, column: 23, scope: !3608)
!3690 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3689)
!3691 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3689)
!3692 = !DILocation(line: 0, scope: !691, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 605, column: 34, scope: !3608)
!3694 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3693)
!3695 = !DILocation(line: 0, scope: !1185, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 605, column: 41, scope: !3608)
!3697 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3696)
!3698 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3696)
!3699 = !DILocation(line: 0, scope: !691, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 605, column: 52, scope: !3608)
!3701 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3700)
!3702 = !DILocation(line: 0, scope: !1185, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 605, column: 59, scope: !3608)
!3704 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3703)
!3705 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3703)
!3706 = !DILocation(line: 0, scope: !691, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 605, column: 70, scope: !3608)
!3708 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3707)
!3709 = !DILocation(line: 0, scope: !691, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 606, column: 9, scope: !3608)
!3711 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !1185, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 606, column: 24, scope: !3608)
!3714 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3713)
!3715 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3713)
!3716 = !DILocation(line: 0, scope: !691, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 606, column: 36, scope: !3608)
!3718 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3717)
!3719 = !DILocation(line: 0, scope: !1185, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 606, column: 43, scope: !3608)
!3721 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3720)
!3722 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3720)
!3723 = !DILocation(line: 0, scope: !691, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 606, column: 55, scope: !3608)
!3725 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3724)
!3726 = !DILocation(line: 0, scope: !1185, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 606, column: 62, scope: !3608)
!3728 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3727)
!3729 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3727)
!3730 = !DILocation(line: 0, scope: !691, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 606, column: 74, scope: !3608)
!3732 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3731)
!3733 = !DILocation(line: 0, scope: !691, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 607, column: 9, scope: !3608)
!3735 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3734)
!3736 = !DILocation(line: 0, scope: !1185, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 607, column: 22, scope: !3608)
!3738 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3737)
!3739 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3737)
!3740 = !DILocation(line: 0, scope: !691, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 607, column: 42, scope: !3608)
!3742 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3741)
!3743 = !DILocation(line: 0, scope: !691, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 608, column: 9, scope: !3608)
!3745 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3744)
!3746 = !DILocation(line: 0, scope: !1185, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 608, column: 31, scope: !3608)
!3748 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3747)
!3749 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3747)
!3750 = !DILocation(line: 0, scope: !691, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 608, column: 49, scope: !3608)
!3752 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3751)
!3753 = !DILocation(line: 0, scope: !691, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 609, column: 9, scope: !3608)
!3755 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3754)
!3756 = !DILocation(line: 0, scope: !1185, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 609, column: 32, scope: !3608)
!3758 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3757)
!3759 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3757)
!3760 = !DILocation(line: 0, scope: !691, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 609, column: 51, scope: !3608)
!3762 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3761)
!3763 = !DILocation(line: 0, scope: !691, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 610, column: 9, scope: !3608)
!3765 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3764)
!3766 = !DILocation(line: 0, scope: !1185, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 610, column: 32, scope: !3608)
!3768 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3767)
!3769 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3767)
!3770 = !DILocation(line: 0, scope: !691, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 610, column: 51, scope: !3608)
!3772 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3771)
!3773 = !DILocation(line: 0, scope: !700, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 602, column: 5, scope: !3608)
!3775 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !3774)
!3776 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !3774)
!3777 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !3774)
!3778 = !DILocation(line: 0, scope: !714, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !3774)
!3780 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !3779)
!3781 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !3779)
!3782 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !3779)
!3783 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !3779)
!3784 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3774)
!3785 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3774)
!3786 = !DILocation(line: 612, column: 23, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 612, column: 9)
!3788 = !DILocation(line: 612, column: 9, scope: !3608)
!3789 = !DILocation(line: 0, scope: !1010, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 613, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !6, line: 612, column: 36)
!3792 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3790)
!3793 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3790)
!3794 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3790)
!3795 = !DILocation(line: 0, scope: !1032, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 613, column: 29, scope: !3791)
!3797 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3796)
!3798 = !DILocation(line: 0, scope: !1079, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 613, column: 9, scope: !3791)
!3800 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3799)
!3801 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3799)
!3802 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3790)
!3803 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3790)
!3804 = !DILocation(line: 0, scope: !1090, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3799)
!3806 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3805)
!3807 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3805)
!3808 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3805)
!3809 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3805)
!3810 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3799)
!3811 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3799)
!3812 = !DILocation(line: 614, column: 9, scope: !3791)
!3813 = !DILocation(line: 618, column: 10, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 618, column: 9)
!3815 = !DILocation(line: 618, column: 9, scope: !3608)
!3816 = !DILocation(line: 0, scope: !1010, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 619, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !6, line: 618, column: 15)
!3819 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3817)
!3820 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3817)
!3821 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3817)
!3822 = !DILocation(line: 0, scope: !1032, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 619, column: 29, scope: !3818)
!3824 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3823)
!3825 = !DILocation(line: 0, scope: !1079, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 619, column: 9, scope: !3818)
!3827 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3826)
!3828 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3826)
!3829 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3817)
!3830 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3817)
!3831 = !DILocation(line: 0, scope: !1090, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3826)
!3833 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3832)
!3834 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3832)
!3835 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3832)
!3836 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3832)
!3837 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3826)
!3838 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3826)
!3839 = !DILocation(line: 620, column: 9, scope: !3818)
!3840 = !DILocation(line: 617, column: 24, scope: !3608)
!3841 = !DILocation(line: 623, column: 26, scope: !3608)
!3842 = !DILocation(line: 624, column: 10, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 624, column: 9)
!3844 = !DILocation(line: 624, column: 9, scope: !3608)
!3845 = !DILocation(line: 0, scope: !1010, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 625, column: 9, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !6, line: 624, column: 18)
!3848 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !3846)
!3849 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !3846)
!3850 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !3846)
!3851 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !3846)
!3852 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !3846)
!3853 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !3846)
!3854 = !DILocation(line: 0, scope: !1024, inlinedAt: !3846)
!3855 = !DILocation(line: 0, scope: !1032, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 625, column: 29, scope: !3847)
!3857 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3856)
!3858 = !DILocation(line: 0, scope: !1032, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 625, column: 73, scope: !3847)
!3860 = !DILocation(line: 59, column: 13, scope: !1032, inlinedAt: !3859)
!3861 = !DILocation(line: 60, column: 19, scope: !1046, inlinedAt: !3859)
!3862 = !DILocation(line: 61, column: 9, scope: !1046, inlinedAt: !3859)
!3863 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3859)
!3864 = !DILocation(line: 0, scope: !1039, inlinedAt: !3859)
!3865 = !DILocation(line: 0, scope: !1032, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 625, column: 87, scope: !3847)
!3867 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !3866)
!3868 = !DILocation(line: 0, scope: !1079, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 625, column: 9, scope: !3847)
!3870 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !3869)
!3871 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !3869)
!3872 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !3869)
!3873 = !DILocation(line: 0, scope: !1090, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !3869)
!3875 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !3874)
!3876 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !3874)
!3877 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !3874)
!3878 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !3874)
!3879 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3869)
!3880 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3869)
!3881 = !DILocation(line: 626, column: 9, scope: !3847)
!3882 = !DILocation(line: 629, column: 18, scope: !3608)
!3883 = !DILocation(line: 629, column: 37, scope: !3608)
!3884 = !DILocation(line: 629, column: 5, scope: !3608)
!3885 = !DILocation(line: 630, column: 22, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 630, column: 9)
!3887 = !DILocation(line: 630, column: 9, scope: !3608)
!3888 = !DILocation(line: 637, column: 25, scope: !3608)
!3889 = !DILocation(line: 637, column: 30, scope: !3608)
!3890 = !DILocation(line: 637, column: 5, scope: !3608)
!3891 = !DILocation(line: 638, column: 9, scope: !3639)
!3892 = !DILocation(line: 0, scope: !674, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 638, column: 9, scope: !3639)
!3894 = !DILocation(line: 38, column: 11, scope: !674, inlinedAt: !3893)
!3895 = !DILocation(line: 38, column: 30, scope: !674, inlinedAt: !3893)
!3896 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !3893)
!3897 = !DILocation(line: 44, column: 17, scope: !683, inlinedAt: !3893)
!3898 = !DILocation(line: 47, column: 13, scope: !686, inlinedAt: !3893)
!3899 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !3893)
!3900 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !3893)
!3901 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !3893)
!3902 = !DILocation(line: 49, column: 17, scope: !710, inlinedAt: !3893)
!3903 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !3893)
!3904 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !3893)
!3905 = !DILocation(line: 53, column: 17, scope: !1134, inlinedAt: !3893)
!3906 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 638, column: 29, scope: !3639)
!3908 = !DILocation(line: 0, scope: !691, inlinedAt: !3907)
!3909 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3907)
!3910 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !3907)
!3911 = !DILocation(line: 0, scope: !1185, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 638, column: 44, scope: !3639)
!3913 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !3912)
!3914 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3912)
!3915 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3912)
!3916 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !3912)
!3917 = !DILocation(line: 0, scope: !691, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 639, column: 29, scope: !3639)
!3919 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !3918)
!3920 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3918)
!3921 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !3918)
!3922 = !DILocation(line: 0, scope: !1307, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 639, column: 36, scope: !3639)
!3924 = !DILocation(line: 109, column: 42, scope: !1307, inlinedAt: !3923)
!3925 = !DILocation(line: 109, column: 15, scope: !1307, inlinedAt: !3923)
!3926 = !DILocation(line: 109, column: 13, scope: !1307, inlinedAt: !3923)
!3927 = !DILocation(line: 0, scope: !691, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 640, column: 29, scope: !3639)
!3929 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !3928)
!3930 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3928)
!3931 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !3928)
!3932 = !DILocation(line: 640, column: 52, scope: !3639)
!3933 = !DILocation(line: 640, column: 41, scope: !3639)
!3934 = !DILocation(line: 0, scope: !1170, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 640, column: 37, scope: !3639)
!3936 = !DILocation(line: 98, column: 45, scope: !1170, inlinedAt: !3935)
!3937 = !DILocation(line: 98, column: 15, scope: !1170, inlinedAt: !3935)
!3938 = !DILocation(line: 98, column: 13, scope: !1170, inlinedAt: !3935)
!3939 = !DILocation(line: 0, scope: !691, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 640, column: 62, scope: !3639)
!3941 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !3940)
!3942 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3940)
!3943 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !3940)
!3944 = !DILocation(line: 641, column: 32, scope: !3639)
!3945 = !DILocation(line: 0, scope: !1185, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 641, column: 29, scope: !3639)
!3947 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !3946)
!3948 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !3946)
!3949 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !3946)
!3950 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !3946)
!3951 = !DILocation(line: 0, scope: !691, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 641, column: 49, scope: !3639)
!3953 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !3952)
!3954 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !3952)
!3955 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !3952)
!3956 = !DILocation(line: 0, scope: !700, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 638, column: 9, scope: !3639)
!3958 = !DILocation(line: 167, column: 14, scope: !706, inlinedAt: !3957)
!3959 = !DILocation(line: 0, scope: !706, inlinedAt: !3957)
!3960 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !3957)
!3961 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !3957)
!3962 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !3957)
!3963 = !DILocation(line: 0, scope: !714, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !3957)
!3965 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !3964)
!3966 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !3964)
!3967 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !3964)
!3968 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !3964)
!3969 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !3957)
!3970 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !3957)
!3971 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !3957)
!3972 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !3957)
!3973 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !3957)
!3974 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !3957)
!3975 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !3957)
!3976 = !DILocation(line: 642, column: 13, scope: !3638)
!3977 = !DILocation(line: 642, column: 30, scope: !3638)
!3978 = !DILocation(line: 642, column: 13, scope: !3639)
!3979 = !DILocation(line: 643, column: 30, scope: !3636)
!3980 = !{!771, !772, i64 0}
!3981 = !DILocation(line: 643, column: 17, scope: !3637)
!3982 = !DILocation(line: 645, column: 34, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3635, file: !6, line: 645, column: 21)
!3984 = !DILocation(line: 645, column: 21, scope: !3635)
!3985 = !DILocation(line: 646, column: 41, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !6, line: 645, column: 45)
!3987 = !DILocation(line: 646, column: 29, scope: !3986)
!3988 = !DILocation(line: 0, scope: !3635)
!3989 = !DILocation(line: 647, column: 17, scope: !3986)
!3990 = !DILocation(line: 648, column: 42, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !6, line: 647, column: 53)
!3992 = distinct !DILexicalBlock(scope: !3983, file: !6, line: 647, column: 28)
!3993 = !DILocation(line: 648, column: 29, scope: !3991)
!3994 = !DILocation(line: 649, column: 17, scope: !3991)
!3995 = !DILocation(line: 650, column: 42, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !6, line: 649, column: 53)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !6, line: 649, column: 28)
!3998 = !DILocation(line: 650, column: 29, scope: !3996)
!3999 = !DILocation(line: 0, scope: !1010, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 652, column: 21, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3997, file: !6, line: 651, column: 24)
!4002 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4000)
!4003 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4000)
!4004 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4000)
!4005 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4000)
!4006 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4000)
!4007 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4000)
!4008 = !DILocation(line: 0, scope: !1024, inlinedAt: !4000)
!4009 = !DILocation(line: 0, scope: !1032, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 652, column: 41, scope: !4001)
!4011 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4010)
!4012 = !DILocalVariable(name: "this", arg: 1, scope: !4013, type: !1014, flags: DIFlagArtificial | DIFlagObjectPointer)
!4013 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !481, file: !399, line: 108, type: !522, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !521, retainedNodes: !4014)
!4014 = !{!4012, !4015}
!4015 = !DILocalVariable(name: "t", arg: 2, scope: !4013, file: !399, line: 108, type: !251)
!4016 = !DILocation(line: 0, scope: !4013, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 653, column: 41, scope: !4001)
!4018 = !DILocation(line: 109, column: 15, scope: !4013, inlinedAt: !4017)
!4019 = !DILocation(line: 0, scope: !1032, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 654, column: 41, scope: !4001)
!4021 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4020)
!4022 = !DILocation(line: 0, scope: !1079, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 652, column: 21, scope: !4001)
!4024 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4023)
!4025 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4023)
!4026 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4023)
!4027 = !DILocation(line: 0, scope: !1090, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4023)
!4029 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4028)
!4030 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4028)
!4031 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4028)
!4032 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4028)
!4033 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4023)
!4034 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4023)
!4035 = !DILocation(line: 655, column: 21, scope: !4001)
!4036 = !DILocation(line: 0, scope: !3983)
!4037 = !DILocation(line: 657, column: 30, scope: !3635)
!4038 = !DILocation(line: 657, column: 17, scope: !3635)
!4039 = !DILocation(line: 658, column: 34, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !3635, file: !6, line: 658, column: 21)
!4041 = !DILocation(line: 658, column: 21, scope: !3635)
!4042 = !DILocation(line: 663, column: 34, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3641, file: !6, line: 663, column: 21)
!4044 = !DILocation(line: 663, column: 44, scope: !4043)
!4045 = !DILocation(line: 665, column: 42, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4043, file: !6, line: 664, column: 45)
!4047 = !DILocation(line: 665, column: 29, scope: !4046)
!4048 = !DILocation(line: 0, scope: !3641)
!4049 = !DILocation(line: 666, column: 17, scope: !4046)
!4050 = !DILocation(line: 667, column: 43, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !6, line: 666, column: 53)
!4052 = distinct !DILexicalBlock(scope: !4043, file: !6, line: 666, column: 28)
!4053 = !DILocation(line: 667, column: 29, scope: !4051)
!4054 = !DILocation(line: 668, column: 17, scope: !4051)
!4055 = !DILocation(line: 669, column: 43, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !6, line: 668, column: 53)
!4057 = distinct !DILexicalBlock(scope: !4052, file: !6, line: 668, column: 28)
!4058 = !DILocation(line: 669, column: 29, scope: !4056)
!4059 = !DILocation(line: 0, scope: !1010, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 671, column: 21, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !6, line: 670, column: 24)
!4062 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4060)
!4063 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4060)
!4064 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4060)
!4065 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4060)
!4066 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4060)
!4067 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4060)
!4068 = !DILocation(line: 0, scope: !1024, inlinedAt: !4060)
!4069 = !DILocation(line: 0, scope: !1032, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 671, column: 41, scope: !4061)
!4071 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4070)
!4072 = !DILocation(line: 0, scope: !4013, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 672, column: 41, scope: !4061)
!4074 = !DILocation(line: 109, column: 15, scope: !4013, inlinedAt: !4073)
!4075 = !DILocation(line: 0, scope: !1032, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 673, column: 41, scope: !4061)
!4077 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4076)
!4078 = !DILocation(line: 0, scope: !1079, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 671, column: 21, scope: !4061)
!4080 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4079)
!4081 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4079)
!4082 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4079)
!4083 = !DILocation(line: 0, scope: !1090, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4079)
!4085 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4084)
!4086 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4084)
!4087 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4084)
!4088 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4084)
!4089 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4079)
!4090 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4079)
!4091 = !DILocation(line: 674, column: 21, scope: !4061)
!4092 = !DILocation(line: 0, scope: !4043)
!4093 = !DILocation(line: 676, column: 30, scope: !3641)
!4094 = !DILocation(line: 676, column: 17, scope: !3641)
!4095 = !DILocation(line: 677, column: 34, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !3641, file: !6, line: 677, column: 21)
!4097 = !DILocation(line: 677, column: 21, scope: !3641)
!4098 = !DILocation(line: 682, column: 34, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !3644, file: !6, line: 682, column: 21)
!4100 = !DILocation(line: 682, column: 39, scope: !4099)
!4101 = !DILocation(line: 682, column: 21, scope: !3644)
!4102 = !DILocation(line: 683, column: 40, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !6, line: 682, column: 46)
!4104 = !DILocation(line: 683, column: 29, scope: !4103)
!4105 = !{!4106, !4106, i64 0}
!4106 = !{!"float", !611, i64 0}
!4107 = !DILocation(line: 0, scope: !3644)
!4108 = !DILocation(line: 690, column: 30, scope: !3644)
!4109 = !DILocation(line: 690, column: 17, scope: !3644)
!4110 = !DILocation(line: 691, column: 34, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !3644, file: !6, line: 691, column: 21)
!4112 = !DILocation(line: 691, column: 21, scope: !3644)
!4113 = !DILocation(line: 0, scope: !1010, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 685, column: 21, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4099, file: !6, line: 684, column: 24)
!4116 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4114)
!4117 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4114)
!4118 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4114)
!4119 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4114)
!4120 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4114)
!4121 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4114)
!4122 = !DILocation(line: 0, scope: !1024, inlinedAt: !4114)
!4123 = !DILocation(line: 0, scope: !1032, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 685, column: 41, scope: !4115)
!4125 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4124)
!4126 = !DILocation(line: 0, scope: !4013, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 686, column: 41, scope: !4115)
!4128 = !DILocation(line: 109, column: 15, scope: !4013, inlinedAt: !4127)
!4129 = !DILocation(line: 0, scope: !1032, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 687, column: 41, scope: !4115)
!4131 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4130)
!4132 = !DILocation(line: 0, scope: !1079, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 685, column: 21, scope: !4115)
!4134 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4133)
!4135 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4133)
!4136 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4133)
!4137 = !DILocation(line: 0, scope: !1090, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4133)
!4139 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4138)
!4140 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4138)
!4141 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4138)
!4142 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4138)
!4143 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4133)
!4144 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4133)
!4145 = !DILocation(line: 688, column: 21, scope: !4115)
!4146 = !DILocation(line: 0, scope: !1010, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 695, column: 17, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3645, file: !6, line: 694, column: 20)
!4149 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4147)
!4150 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4147)
!4151 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4147)
!4152 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4147)
!4153 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4147)
!4154 = !DILocation(line: 51, column: 9, scope: !1027, inlinedAt: !4147)
!4155 = !DILocation(line: 0, scope: !1024, inlinedAt: !4147)
!4156 = !DILocation(line: 0, scope: !1032, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 695, column: 37, scope: !4148)
!4158 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4157)
!4159 = !DILocation(line: 0, scope: !4013, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 696, column: 37, scope: !4148)
!4161 = !DILocation(line: 109, column: 15, scope: !4013, inlinedAt: !4160)
!4162 = !DILocation(line: 0, scope: !1032, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 697, column: 37, scope: !4148)
!4164 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4163)
!4165 = !DILocation(line: 0, scope: !1079, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 695, column: 17, scope: !4148)
!4167 = !DILocation(line: 167, column: 13, scope: !1084, inlinedAt: !4166)
!4168 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4166)
!4169 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4166)
!4170 = !DILocation(line: 0, scope: !1090, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4166)
!4172 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4171)
!4173 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4171)
!4174 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4171)
!4175 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4171)
!4176 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4166)
!4177 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4166)
!4178 = !DILocation(line: 698, column: 17, scope: !4148)
!4179 = !DILocation(line: 701, column: 54, scope: !3647)
!4180 = !DILocation(line: 701, column: 64, scope: !3647)
!4181 = !DILocation(line: 0, scope: !3647)
!4182 = !DILocation(line: 703, column: 41, scope: !3647)
!4183 = !DILocation(line: 704, column: 26, scope: !3647)
!4184 = !DILocation(line: 704, column: 13, scope: !3647)
!4185 = !DILocation(line: 705, column: 30, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !3647, file: !6, line: 705, column: 17)
!4187 = !DILocation(line: 709, column: 10, scope: !3639)
!4188 = !DILocation(line: 637, column: 12, scope: !3608)
!4189 = distinct !{!4189, !3890, !4190, !619}
!4190 = !DILocation(line: 710, column: 5, scope: !3608)
!4191 = !DILocation(line: 711, column: 18, scope: !3608)
!4192 = !DILocation(line: 711, column: 5, scope: !3608)
!4193 = !DILocation(line: 712, column: 22, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 712, column: 9)
!4195 = !DILocation(line: 712, column: 9, scope: !3608)
!4196 = !DILocation(line: 715, column: 18, scope: !3608)
!4197 = !DILocation(line: 715, column: 5, scope: !3608)
!4198 = !DILocation(line: 716, column: 22, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !3608, file: !6, line: 716, column: 9)
!4200 = !DILocation(line: 716, column: 9, scope: !3608)
!4201 = !DILocation(line: 721, column: 24, scope: !3608)
!4202 = !DILocation(line: 0, scope: !674, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 722, column: 5, scope: !3608)
!4204 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4203)
!4205 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4203)
!4206 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4203)
!4207 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4203)
!4208 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4203)
!4209 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4203)
!4210 = !DILocation(line: 0, scope: !688, inlinedAt: !4203)
!4211 = !DILocation(line: 0, scope: !691, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 722, column: 25, scope: !3608)
!4213 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4212)
!4214 = !DILocation(line: 722, column: 53, scope: !3608)
!4215 = !DILocation(line: 722, column: 44, scope: !3608)
!4216 = !DILocation(line: 722, column: 65, scope: !3608)
!4217 = !DILocation(line: 0, scope: !1698, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 722, column: 41, scope: !3608)
!4219 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !4218)
!4220 = !DILocation(line: 0, scope: !691, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 723, column: 25, scope: !3608)
!4222 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4221)
!4223 = !DILocation(line: 0, scope: !700, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 722, column: 5, scope: !3608)
!4225 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4224)
!4226 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4224)
!4227 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4224)
!4228 = !DILocation(line: 0, scope: !714, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4224)
!4230 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4229)
!4231 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4229)
!4232 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4229)
!4233 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4229)
!4234 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4224)
!4235 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4224)
!4236 = !DILocation(line: 727, column: 1, scope: !3608)
!4237 = distinct !DISubprogram(name: "halide_openglcompute_device_sync", scope: !6, file: !6, line: 729, type: !1728, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4238)
!4238 = !{!4239, !4240, !4241, !4242}
!4239 = !DILocalVariable(name: "user_context", arg: 1, scope: !4237, file: !6, line: 729, type: !126)
!4240 = !DILocalVariable(arg: 2, scope: !4237, file: !6, line: 729, type: !558)
!4241 = !DILocalVariable(name: "t_before", scope: !4237, file: !6, line: 731, type: !211)
!4242 = !DILocalVariable(name: "t_after", scope: !4237, file: !6, line: 740, type: !211)
!4243 = !DILocation(line: 0, scope: !4237)
!4244 = !DILocation(line: 731, column: 25, scope: !4237)
!4245 = !DILocation(line: 734, column: 23, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4237, file: !6, line: 734, column: 9)
!4247 = !DILocation(line: 734, column: 9, scope: !4237)
!4248 = !DILocation(line: 0, scope: !1010, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 735, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !6, line: 734, column: 36)
!4251 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4249)
!4252 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4249)
!4253 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4249)
!4254 = !DILocation(line: 0, scope: !1032, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 735, column: 29, scope: !4250)
!4256 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4255)
!4257 = !DILocation(line: 0, scope: !1079, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 735, column: 9, scope: !4250)
!4259 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4258)
!4260 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4258)
!4261 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4249)
!4262 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4249)
!4263 = !DILocation(line: 0, scope: !1090, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4258)
!4265 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4264)
!4266 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4264)
!4267 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4264)
!4268 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4264)
!4269 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4258)
!4270 = !DILocation(line: 738, column: 18, scope: !4237)
!4271 = !DILocation(line: 738, column: 5, scope: !4237)
!4272 = !DILocation(line: 740, column: 24, scope: !4237)
!4273 = !DILocation(line: 0, scope: !674, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 741, column: 5, scope: !4237)
!4275 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4274)
!4276 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4274)
!4277 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4274)
!4278 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4274)
!4279 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4274)
!4280 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4274)
!4281 = !DILocation(line: 0, scope: !688, inlinedAt: !4274)
!4282 = !DILocation(line: 0, scope: !691, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 741, column: 25, scope: !4237)
!4284 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4283)
!4285 = !DILocation(line: 741, column: 53, scope: !4237)
!4286 = !DILocation(line: 741, column: 44, scope: !4237)
!4287 = !DILocation(line: 741, column: 65, scope: !4237)
!4288 = !DILocation(line: 0, scope: !1698, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 741, column: 41, scope: !4237)
!4290 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !4289)
!4291 = !DILocation(line: 0, scope: !691, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 742, column: 25, scope: !4237)
!4293 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4292)
!4294 = !DILocation(line: 0, scope: !700, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 741, column: 5, scope: !4237)
!4296 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4295)
!4297 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4295)
!4298 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4295)
!4299 = !DILocation(line: 0, scope: !714, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4295)
!4301 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4300)
!4302 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4300)
!4303 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4300)
!4304 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4300)
!4305 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4295)
!4306 = !DILocation(line: 745, column: 1, scope: !4237)
!4307 = distinct !DISubprogram(name: "get_kernel_name", scope: !4308, file: !6, line: 748, type: !4309, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4311)
!4308 = !DINamespace(scope: null)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!194, !182, !182}
!4311 = !{!4312, !4313, !4314, !4316}
!4312 = !DILocalVariable(name: "start", arg: 1, scope: !4307, file: !6, line: 748, type: !182)
!4313 = !DILocalVariable(name: "end", arg: 2, scope: !4307, file: !6, line: 748, type: !182)
!4314 = !DILocalVariable(name: "kernel_name_length", scope: !4307, file: !6, line: 749, type: !4315)
!4315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!4316 = !DILocalVariable(name: "kernel_name", scope: !4307, file: !6, line: 750, type: !194)
!4317 = !DILocation(line: 0, scope: !4307)
!4318 = !DILocation(line: 749, column: 43, scope: !4307)
!4319 = !DILocation(line: 750, column: 59, scope: !4307)
!4320 = !DILocation(line: 750, column: 33, scope: !4307)
!4321 = !DILocation(line: 751, column: 5, scope: !4307)
!4322 = !DILocation(line: 752, column: 5, scope: !4307)
!4323 = !DILocation(line: 752, column: 37, scope: !4307)
!4324 = !DILocation(line: 753, column: 5, scope: !4307)
!4325 = !DISubprogram(name: "malloc", scope: !37, file: !37, line: 87, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!126, !18}
!4328 = distinct !DISubprogram(name: "halide_openglcompute_initialize_kernels", scope: !6, file: !6, line: 760, type: !4329, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!38, !126, !547, !182, !38}
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4339, !4340, !4341, !4342, !4343, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4357, !4370, !4373, !4374, !4375, !4378, !4379, !4382, !4383, !4384, !4385, !4386, !4388, !4392, !4393, !4397}
!4332 = !DILocalVariable(name: "user_context", arg: 1, scope: !4328, file: !6, line: 760, type: !126)
!4333 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !4328, file: !6, line: 760, type: !547)
!4334 = !DILocalVariable(name: "src", arg: 3, scope: !4328, file: !6, line: 761, type: !182)
!4335 = !DILocalVariable(name: "size", arg: 4, scope: !4328, file: !6, line: 761, type: !38)
!4336 = !DILocalVariable(name: "t_before", scope: !4328, file: !6, line: 763, type: !211)
!4337 = !DILocalVariable(name: "error", scope: !4338, file: !6, line: 766, type: !38)
!4338 = distinct !DILexicalBlock(scope: !4328, file: !6, line: 766, column: 13)
!4339 = !DILocalVariable(name: "state", scope: !4328, file: !6, line: 770, type: !559)
!4340 = !DILocalVariable(name: "module", scope: !4328, file: !6, line: 771, type: !186)
!4341 = !DILocalVariable(name: "END_OF_KERNEL_MARKER", scope: !4328, file: !6, line: 784, type: !182)
!4342 = !DILocalVariable(name: "END_OF_KERNEL_MARKER_LENGTH", scope: !4328, file: !6, line: 785, type: !4315)
!4343 = !DILocalVariable(name: "end_of_kernel_marker", scope: !4344, file: !6, line: 788, type: !182)
!4344 = distinct !DILexicalBlock(scope: !4328, file: !6, line: 787, column: 18)
!4345 = !DILocalVariable(name: "just_before_kernel_name", scope: !4344, file: !6, line: 793, type: !182)
!4346 = !DILocalVariable(name: "just_beyond_kernel_name", scope: !4344, file: !6, line: 794, type: !182)
!4347 = !DILocalVariable(name: "kernel_name", scope: !4344, file: !6, line: 799, type: !194)
!4348 = !DILocalVariable(name: "src_len", scope: !4344, file: !6, line: 801, type: !312)
!4349 = !DILocalVariable(name: "kernel", scope: !4344, file: !6, line: 803, type: !190)
!4350 = !DILocalVariable(name: "shader", scope: !4344, file: !6, line: 808, type: !17)
!4351 = !DILocalVariable(name: "sources", scope: !4344, file: !6, line: 812, type: !140)
!4352 = !DILocalVariable(name: "sources_lengths", scope: !4344, file: !6, line: 813, type: !143)
!4353 = !DILocalVariable(name: "shader_ok", scope: !4344, file: !6, line: 829, type: !105)
!4354 = !DILocalVariable(name: "log_len", scope: !4355, file: !6, line: 833, type: !105)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !6, line: 831, column: 35)
!4356 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 831, column: 13)
!4357 = !DILocalVariable(name: "log_tmp", scope: !4355, file: !6, line: 835, type: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HalideMalloc", scope: !2, file: !6, line: 92, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4359, identifier: "_ZTSN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocE")
!4359 = !{!4360, !4362, !4363, !4367}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !4358, file: !6, line: 99, baseType: !4361, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4358, file: !6, line: 100, baseType: !4361, size: 32, offset: 32)
!4363 = !DISubprogram(name: "HalideMalloc", scope: !4358, file: !6, line: 93, type: !4364, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4366, !126, !312}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!4367 = !DISubprogram(name: "~HalideMalloc", scope: !4358, file: !6, line: 96, type: !4368, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4366}
!4370 = !DILocalVariable(name: "log", scope: !4371, file: !6, line: 837, type: !194)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !6, line: 836, column: 30)
!4372 = distinct !DILexicalBlock(scope: !4355, file: !6, line: 836, column: 17)
!4373 = !DILocalVariable(name: "program", scope: !4344, file: !6, line: 846, type: !17)
!4374 = !DILocalVariable(name: "status", scope: !4344, file: !6, line: 859, type: !105)
!4375 = !DILocalVariable(name: "log_len", scope: !4376, file: !6, line: 862, type: !105)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !6, line: 861, column: 22)
!4377 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 861, column: 13)
!4378 = !DILocalVariable(name: "log_tmp", scope: !4376, file: !6, line: 864, type: !4358)
!4379 = !DILocalVariable(name: "log", scope: !4380, file: !6, line: 866, type: !194)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !6, line: 865, column: 30)
!4381 = distinct !DILexicalBlock(scope: !4376, file: !6, line: 865, column: 17)
!4382 = !DILocalVariable(name: "i", scope: !4344, file: !6, line: 877, type: !105)
!4383 = !DILocalVariable(name: "count", scope: !4344, file: !6, line: 878, type: !105)
!4384 = !DILocalVariable(name: "size", scope: !4344, file: !6, line: 880, type: !105)
!4385 = !DILocalVariable(name: "type", scope: !4344, file: !6, line: 881, type: !24)
!4386 = !DILocalVariable(name: "bufSize", scope: !4344, file: !6, line: 883, type: !4387)
!4387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4388 = !DILocalVariable(name: "name", scope: !4344, file: !6, line: 884, type: !4389)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 512, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 64)
!4392 = !DILocalVariable(name: "length", scope: !4344, file: !6, line: 885, type: !62)
!4393 = !DILocalVariable(name: "loc", scope: !4394, file: !6, line: 892, type: !105)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !6, line: 890, column: 37)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !6, line: 890, column: 9)
!4396 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 890, column: 9)
!4397 = !DILocalVariable(name: "t_after", scope: !4328, file: !6, line: 899, type: !211)
!4398 = !DILocation(line: 0, scope: !4328)
!4399 = !DILocation(line: 763, column: 25, scope: !4328)
!4400 = !DILocation(line: 766, column: 21, scope: !4338)
!4401 = !DILocation(line: 0, scope: !4338)
!4402 = !DILocation(line: 766, column: 13, scope: !4338)
!4403 = !DILocation(line: 770, column: 27, scope: !4328)
!4404 = !DILocation(line: 771, column: 27, scope: !4328)
!4405 = !DILocation(line: 772, column: 10, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4328, file: !6, line: 772, column: 9)
!4407 = !DILocation(line: 772, column: 9, scope: !4328)
!4408 = !DILocation(line: 773, column: 33, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4406, file: !6, line: 772, column: 18)
!4410 = !DILocation(line: 773, column: 18, scope: !4409)
!4411 = !DILocation(line: 774, column: 17, scope: !4409)
!4412 = !DILocation(line: 774, column: 24, scope: !4409)
!4413 = !DILocation(line: 775, column: 24, scope: !4409)
!4414 = !DILocation(line: 775, column: 17, scope: !4409)
!4415 = !DILocation(line: 775, column: 22, scope: !4409)
!4416 = !{!1655, !770, i64 4}
!4417 = !DILocation(line: 776, column: 20, scope: !4409)
!4418 = !DILocation(line: 777, column: 16, scope: !4409)
!4419 = !DILocation(line: 778, column: 5, scope: !4409)
!4420 = !DILocation(line: 780, column: 17, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4328, file: !6, line: 780, column: 9)
!4422 = !DILocation(line: 780, column: 9, scope: !4421)
!4423 = !DILocation(line: 780, column: 9, scope: !4328)
!4424 = !DILocation(line: 785, column: 48, scope: !4328)
!4425 = !DILocation(line: 788, column: 44, scope: !4344)
!4426 = !DILocation(line: 0, scope: !4344)
!4427 = !DILocation(line: 789, column: 14, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 789, column: 13)
!4429 = !DILocation(line: 789, column: 13, scope: !4344)
!4430 = !DILocation(line: 793, column: 68, scope: !4344)
!4431 = !DILocation(line: 794, column: 47, scope: !4344)
!4432 = !DILocation(line: 795, column: 14, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 795, column: 13)
!4434 = !DILocation(line: 795, column: 13, scope: !4344)
!4435 = !DILocation(line: 799, column: 29, scope: !4344)
!4436 = !DILocation(line: 0, scope: !1010, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 796, column: 13, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4433, file: !6, line: 795, column: 39)
!4439 = !DILocation(line: 44, column: 27, scope: !1019, inlinedAt: !4437)
!4440 = !DILocation(line: 48, column: 13, scope: !1024, inlinedAt: !4437)
!4441 = !DILocation(line: 48, column: 13, scope: !1022, inlinedAt: !4437)
!4442 = !DILocation(line: 0, scope: !1032, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 796, column: 33, scope: !4438)
!4444 = !DILocation(line: 62, column: 19, scope: !1038, inlinedAt: !4443)
!4445 = !DILocation(line: 0, scope: !1079, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 796, column: 13, scope: !4438)
!4447 = !DILocation(line: 168, column: 13, scope: !1086, inlinedAt: !4446)
!4448 = !DILocation(line: 169, column: 9, scope: !1086, inlinedAt: !4446)
!4449 = !DILocation(line: 49, column: 23, scope: !1027, inlinedAt: !4437)
!4450 = !DILocation(line: 50, column: 18, scope: !1027, inlinedAt: !4437)
!4451 = !DILocation(line: 0, scope: !1090, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 170, column: 13, scope: !1094, inlinedAt: !4446)
!4453 = !DILocation(line: 163, column: 81, scope: !1090, inlinedAt: !4452)
!4454 = !DILocation(line: 163, column: 87, scope: !1090, inlinedAt: !4452)
!4455 = !DILocation(line: 163, column: 77, scope: !1090, inlinedAt: !4452)
!4456 = !DILocation(line: 163, column: 15, scope: !1090, inlinedAt: !4452)
!4457 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4446)
!4458 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4446)
!4459 = !DILocation(line: 797, column: 9, scope: !4438)
!4460 = !DILocation(line: 803, column: 44, scope: !4344)
!4461 = !DILocation(line: 804, column: 17, scope: !4344)
!4462 = !DILocation(line: 804, column: 29, scope: !4344)
!4463 = !DILocation(line: 805, column: 32, scope: !4344)
!4464 = !DILocation(line: 805, column: 17, scope: !4344)
!4465 = !DILocation(line: 805, column: 22, scope: !4344)
!4466 = !DILocation(line: 806, column: 24, scope: !4344)
!4467 = !DILocation(line: 808, column: 38, scope: !4344)
!4468 = !DILocation(line: 808, column: 25, scope: !4344)
!4469 = !DILocation(line: 809, column: 26, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 809, column: 13)
!4471 = !DILocation(line: 809, column: 13, scope: !4344)
!4472 = !DILocation(line: 801, column: 50, scope: !4344)
!4473 = !DILocation(line: 812, column: 9, scope: !4344)
!4474 = !DILocation(line: 812, column: 23, scope: !4344)
!4475 = !DILocation(line: 813, column: 9, scope: !4344)
!4476 = !DILocation(line: 813, column: 21, scope: !4344)
!4477 = !DILocation(line: 0, scope: !674, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 816, column: 9, scope: !4344)
!4479 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4478)
!4480 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4478)
!4481 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4478)
!4482 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4478)
!4483 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4478)
!4484 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4478)
!4485 = !DILocation(line: 0, scope: !688, inlinedAt: !4478)
!4486 = !DILocation(line: 0, scope: !691, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 816, column: 29, scope: !4344)
!4488 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4487)
!4489 = !DILocation(line: 0, scope: !691, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 816, column: 62, scope: !4344)
!4491 = !DILocation(line: 59, column: 17, scope: !698, inlinedAt: !4490)
!4492 = !DILocation(line: 59, column: 13, scope: !691, inlinedAt: !4490)
!4493 = !DILocation(line: 60, column: 19, scope: !3678, inlinedAt: !4490)
!4494 = !DILocation(line: 61, column: 9, scope: !3678, inlinedAt: !4490)
!4495 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4490)
!4496 = !DILocation(line: 0, scope: !698, inlinedAt: !4490)
!4497 = !DILocation(line: 0, scope: !700, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 816, column: 9, scope: !4344)
!4499 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4498)
!4500 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4498)
!4501 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4498)
!4502 = !DILocation(line: 0, scope: !714, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4498)
!4504 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4503)
!4505 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4503)
!4506 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4503)
!4507 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4503)
!4508 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4498)
!4509 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4498)
!4510 = !DILocation(line: 817, column: 9, scope: !4344)
!4511 = !DILocation(line: 820, column: 22, scope: !4344)
!4512 = !DILocation(line: 820, column: 9, scope: !4344)
!4513 = !DILocation(line: 821, column: 26, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 821, column: 13)
!4515 = !DILocation(line: 821, column: 13, scope: !4344)
!4516 = !DILocation(line: 824, column: 22, scope: !4344)
!4517 = !DILocation(line: 824, column: 9, scope: !4344)
!4518 = !DILocation(line: 825, column: 26, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 825, column: 13)
!4520 = !DILocation(line: 825, column: 13, scope: !4344)
!4521 = !DILocation(line: 829, column: 9, scope: !4344)
!4522 = !DILocation(line: 829, column: 15, scope: !4344)
!4523 = !DILocation(line: 830, column: 22, scope: !4344)
!4524 = !DILocation(line: 830, column: 9, scope: !4344)
!4525 = !DILocation(line: 831, column: 13, scope: !4356)
!4526 = !DILocation(line: 831, column: 23, scope: !4356)
!4527 = !DILocation(line: 831, column: 13, scope: !4344)
!4528 = !DILocation(line: 0, scope: !674, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 832, column: 13, scope: !4355)
!4530 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4529)
!4531 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4529)
!4532 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4529)
!4533 = !DILocation(line: 0, scope: !691, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 832, column: 33, scope: !4355)
!4535 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4534)
!4536 = !DILocation(line: 0, scope: !700, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 832, column: 13, scope: !4355)
!4538 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4537)
!4539 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4537)
!4540 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4529)
!4541 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4529)
!4542 = !DILocation(line: 0, scope: !714, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4537)
!4544 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4543)
!4545 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4543)
!4546 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4543)
!4547 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4543)
!4548 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4537)
!4549 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4537)
!4550 = !DILocation(line: 833, column: 13, scope: !4355)
!4551 = !DILocation(line: 834, column: 26, scope: !4355)
!4552 = !DILocation(line: 0, scope: !4355)
!4553 = !DILocation(line: 834, column: 13, scope: !4355)
!4554 = !DILocation(line: 835, column: 48, scope: !4355)
!4555 = !DILocalVariable(name: "this", arg: 1, scope: !4556, type: !4560, flags: DIFlagArtificial | DIFlagObjectPointer)
!4556 = distinct !DISubprogram(name: "HalideMalloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocC2EPvj", scope: !4358, file: !6, line: 93, type: !4364, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !4363, retainedNodes: !4557)
!4557 = !{!4555, !4558, !4559}
!4558 = !DILocalVariable(name: "user_context", arg: 2, scope: !4556, file: !6, line: 93, type: !126)
!4559 = !DILocalVariable(name: "size", arg: 3, scope: !4556, file: !6, line: 93, type: !312)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 32)
!4561 = !DILocation(line: 0, scope: !4556, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 835, column: 26, scope: !4355)
!4563 = !DILocation(line: 94, column: 43, scope: !4556, inlinedAt: !4562)
!4564 = !DILocation(line: 836, column: 17, scope: !4372)
!4565 = !DILocation(line: 836, column: 17, scope: !4355)
!4566 = !DILocation(line: 0, scope: !4371)
!4567 = !DILocation(line: 838, column: 30, scope: !4371)
!4568 = !DILocation(line: 838, column: 55, scope: !4371)
!4569 = !DILocation(line: 838, column: 17, scope: !4371)
!4570 = !DILocation(line: 0, scope: !674, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 839, column: 17, scope: !4371)
!4572 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4571)
!4573 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4571)
!4574 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4571)
!4575 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4571)
!4576 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4571)
!4577 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4571)
!4578 = !DILocation(line: 0, scope: !688, inlinedAt: !4571)
!4579 = !DILocation(line: 0, scope: !691, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 839, column: 37, scope: !4371)
!4581 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4580)
!4582 = !DILocation(line: 0, scope: !691, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 839, column: 44, scope: !4371)
!4584 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4583)
!4585 = !DILocation(line: 0, scope: !700, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 839, column: 17, scope: !4371)
!4587 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4586)
!4588 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4586)
!4589 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4586)
!4590 = !DILocation(line: 0, scope: !714, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4586)
!4592 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4591)
!4593 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4591)
!4594 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4591)
!4595 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4591)
!4596 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4586)
!4597 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4586)
!4598 = !DILocation(line: 840, column: 13, scope: !4371)
!4599 = !DILocation(line: 841, column: 26, scope: !4355)
!4600 = !DILocation(line: 841, column: 13, scope: !4355)
!4601 = !DILocalVariable(name: "this", arg: 1, scope: !4602, type: !4560, flags: DIFlagArtificial | DIFlagObjectPointer)
!4602 = distinct !DISubprogram(name: "~HalideMalloc", linkageName: "_ZN6Halide7Runtime8Internal13OpenGLCompute12HalideMallocD2Ev", scope: !4358, file: !6, line: 96, type: !4368, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, declaration: !4367, retainedNodes: !4603)
!4603 = !{!4601}
!4604 = !DILocation(line: 0, scope: !4602, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 843, column: 9, scope: !4356)
!4606 = !DILocation(line: 97, column: 9, scope: !4607, inlinedAt: !4605)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !6, line: 96, column: 35)
!4608 = !DILocation(line: 843, column: 9, scope: !4356)
!4609 = !DILocation(line: 846, column: 39, scope: !4344)
!4610 = !DILocation(line: 846, column: 26, scope: !4344)
!4611 = !DILocation(line: 847, column: 22, scope: !4344)
!4612 = !DILocation(line: 847, column: 9, scope: !4344)
!4613 = !DILocation(line: 848, column: 26, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 848, column: 13)
!4615 = !DILocation(line: 848, column: 13, scope: !4344)
!4616 = !DILocation(line: 851, column: 22, scope: !4344)
!4617 = !DILocation(line: 851, column: 9, scope: !4344)
!4618 = !DILocation(line: 852, column: 26, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4344, file: !6, line: 852, column: 13)
!4620 = !DILocation(line: 852, column: 13, scope: !4344)
!4621 = !DILocation(line: 857, column: 22, scope: !4344)
!4622 = !DILocation(line: 857, column: 9, scope: !4344)
!4623 = !DILocation(line: 859, column: 9, scope: !4344)
!4624 = !DILocation(line: 860, column: 22, scope: !4344)
!4625 = !DILocation(line: 860, column: 9, scope: !4344)
!4626 = !DILocation(line: 861, column: 14, scope: !4377)
!4627 = !DILocation(line: 861, column: 13, scope: !4344)
!4628 = !DILocation(line: 862, column: 13, scope: !4376)
!4629 = !DILocation(line: 863, column: 26, scope: !4376)
!4630 = !DILocation(line: 0, scope: !4376)
!4631 = !DILocation(line: 863, column: 13, scope: !4376)
!4632 = !DILocation(line: 864, column: 48, scope: !4376)
!4633 = !DILocation(line: 0, scope: !4556, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 864, column: 26, scope: !4376)
!4635 = !DILocation(line: 94, column: 43, scope: !4556, inlinedAt: !4634)
!4636 = !DILocation(line: 865, column: 17, scope: !4381)
!4637 = !DILocation(line: 865, column: 17, scope: !4376)
!4638 = !DILocation(line: 0, scope: !4380)
!4639 = !DILocation(line: 867, column: 30, scope: !4380)
!4640 = !DILocation(line: 867, column: 57, scope: !4380)
!4641 = !DILocation(line: 867, column: 17, scope: !4380)
!4642 = !DILocation(line: 0, scope: !674, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 868, column: 17, scope: !4380)
!4644 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4643)
!4645 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4643)
!4646 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4643)
!4647 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4643)
!4648 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4643)
!4649 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4643)
!4650 = !DILocation(line: 0, scope: !688, inlinedAt: !4643)
!4651 = !DILocation(line: 0, scope: !691, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 868, column: 37, scope: !4380)
!4653 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4652)
!4654 = !DILocation(line: 0, scope: !691, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 869, column: 37, scope: !4380)
!4656 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4655)
!4657 = !DILocation(line: 0, scope: !691, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 869, column: 44, scope: !4380)
!4659 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4658)
!4660 = !DILocation(line: 0, scope: !700, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 868, column: 17, scope: !4380)
!4662 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4661)
!4663 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4661)
!4664 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4661)
!4665 = !DILocation(line: 0, scope: !714, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4661)
!4667 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4666)
!4668 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4666)
!4669 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4666)
!4670 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4666)
!4671 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4661)
!4672 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4661)
!4673 = !DILocation(line: 870, column: 13, scope: !4380)
!4674 = !DILocation(line: 871, column: 26, scope: !4376)
!4675 = !DILocation(line: 871, column: 13, scope: !4376)
!4676 = !DILocation(line: 0, scope: !4602, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 873, column: 9, scope: !4377)
!4678 = !DILocation(line: 97, column: 9, scope: !4607, inlinedAt: !4677)
!4679 = !DILocation(line: 873, column: 9, scope: !4377)
!4680 = !DILocation(line: 897, column: 5, scope: !4328)
!4681 = !DILocation(line: 874, column: 17, scope: !4344)
!4682 = !DILocation(line: 874, column: 28, scope: !4344)
!4683 = !DILocation(line: 878, column: 9, scope: !4344)
!4684 = !DILocation(line: 880, column: 9, scope: !4344)
!4685 = !DILocation(line: 881, column: 9, scope: !4344)
!4686 = !DILocation(line: 884, column: 9, scope: !4344)
!4687 = !DILocation(line: 884, column: 16, scope: !4344)
!4688 = !DILocation(line: 885, column: 9, scope: !4344)
!4689 = !DILocation(line: 887, column: 22, scope: !4344)
!4690 = !DILocation(line: 887, column: 9, scope: !4344)
!4691 = !DILocation(line: 0, scope: !674, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 888, column: 9, scope: !4344)
!4693 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4692)
!4694 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4692)
!4695 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4692)
!4696 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4692)
!4697 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4692)
!4698 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4692)
!4699 = !DILocation(line: 0, scope: !688, inlinedAt: !4692)
!4700 = !DILocation(line: 0, scope: !691, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 888, column: 29, scope: !4344)
!4702 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4701)
!4703 = !DILocation(line: 888, column: 55, scope: !4344)
!4704 = !DILocation(line: 0, scope: !1185, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 888, column: 52, scope: !4344)
!4706 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !4705)
!4707 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !4705)
!4708 = !DILocation(line: 0, scope: !691, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 888, column: 61, scope: !4344)
!4710 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4709)
!4711 = !DILocation(line: 0, scope: !700, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 888, column: 9, scope: !4344)
!4713 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4712)
!4714 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4712)
!4715 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4712)
!4716 = !DILocation(line: 0, scope: !714, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4712)
!4718 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4717)
!4719 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4717)
!4720 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4717)
!4721 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4717)
!4722 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4712)
!4723 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4712)
!4724 = !DILocation(line: 890, column: 25, scope: !4395)
!4725 = !DILocation(line: 890, column: 23, scope: !4395)
!4726 = !DILocation(line: 890, column: 9, scope: !4396)
!4727 = !DILocation(line: 891, column: 26, scope: !4394)
!4728 = !DILocation(line: 891, column: 13, scope: !4394)
!4729 = !DILocation(line: 892, column: 38, scope: !4394)
!4730 = !DILocation(line: 892, column: 25, scope: !4394)
!4731 = !DILocation(line: 0, scope: !4394)
!4732 = !DILocation(line: 893, column: 13, scope: !4394)
!4733 = !DILocation(line: 0, scope: !674, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 893, column: 13, scope: !4394)
!4735 = !DILocation(line: 38, column: 11, scope: !674, inlinedAt: !4734)
!4736 = !DILocation(line: 38, column: 30, scope: !674, inlinedAt: !4734)
!4737 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4734)
!4738 = !DILocation(line: 44, column: 17, scope: !683, inlinedAt: !4734)
!4739 = !DILocation(line: 47, column: 13, scope: !686, inlinedAt: !4734)
!4740 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4734)
!4741 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4734)
!4742 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4734)
!4743 = !DILocation(line: 49, column: 17, scope: !710, inlinedAt: !4734)
!4744 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4734)
!4745 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4734)
!4746 = !DILocation(line: 53, column: 17, scope: !1134, inlinedAt: !4734)
!4747 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 893, column: 33, scope: !4394)
!4749 = !DILocation(line: 0, scope: !691, inlinedAt: !4748)
!4750 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4748)
!4751 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4748)
!4752 = !DILocation(line: 0, scope: !1185, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 893, column: 47, scope: !4394)
!4754 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !4753)
!4755 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !4753)
!4756 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !4753)
!4757 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !4753)
!4758 = !DILocation(line: 0, scope: !691, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 893, column: 52, scope: !4394)
!4760 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4759)
!4761 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4759)
!4762 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4759)
!4763 = !DILocation(line: 893, column: 68, scope: !4394)
!4764 = !DILocation(line: 0, scope: !1155, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 893, column: 65, scope: !4394)
!4766 = !DILocation(line: 83, column: 44, scope: !1155, inlinedAt: !4765)
!4767 = !DILocation(line: 83, column: 49, scope: !1155, inlinedAt: !4765)
!4768 = !DILocation(line: 83, column: 15, scope: !1155, inlinedAt: !4765)
!4769 = !DILocation(line: 83, column: 13, scope: !1155, inlinedAt: !4765)
!4770 = !DILocation(line: 0, scope: !691, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 893, column: 73, scope: !4394)
!4772 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4771)
!4773 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4771)
!4774 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4771)
!4775 = !DILocation(line: 0, scope: !691, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 893, column: 86, scope: !4394)
!4777 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4776)
!4778 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4776)
!4779 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4776)
!4780 = !DILocation(line: 0, scope: !691, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 893, column: 94, scope: !4394)
!4782 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4781)
!4783 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4781)
!4784 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4781)
!4785 = !DILocation(line: 0, scope: !1185, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 893, column: 111, scope: !4394)
!4787 = !DILocation(line: 73, column: 43, scope: !1185, inlinedAt: !4786)
!4788 = !DILocation(line: 73, column: 48, scope: !1185, inlinedAt: !4786)
!4789 = !DILocation(line: 73, column: 15, scope: !1185, inlinedAt: !4786)
!4790 = !DILocation(line: 73, column: 13, scope: !1185, inlinedAt: !4786)
!4791 = !DILocation(line: 0, scope: !691, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 893, column: 118, scope: !4394)
!4793 = !DILocation(line: 62, column: 48, scope: !697, inlinedAt: !4792)
!4794 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4792)
!4795 = !DILocation(line: 62, column: 17, scope: !697, inlinedAt: !4792)
!4796 = !DILocation(line: 0, scope: !700, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 893, column: 13, scope: !4394)
!4798 = !DILocation(line: 167, column: 14, scope: !706, inlinedAt: !4797)
!4799 = !DILocation(line: 0, scope: !706, inlinedAt: !4797)
!4800 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4797)
!4801 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4797)
!4802 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4797)
!4803 = !DILocation(line: 0, scope: !714, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4797)
!4805 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4804)
!4806 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4804)
!4807 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4804)
!4808 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4804)
!4809 = !DILocation(line: 174, column: 30, scope: !724, inlinedAt: !4797)
!4810 = !DILocation(line: 174, column: 44, scope: !724, inlinedAt: !4797)
!4811 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4797)
!4812 = !DILocation(line: 180, column: 13, scope: !729, inlinedAt: !4797)
!4813 = !DILocation(line: 180, column: 21, scope: !729, inlinedAt: !4797)
!4814 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4797)
!4815 = !DILocation(line: 182, column: 9, scope: !728, inlinedAt: !4797)
!4816 = !DILocation(line: 890, column: 33, scope: !4395)
!4817 = distinct !{!4817, !4726, !4818, !619}
!4818 = !DILocation(line: 894, column: 9, scope: !4396)
!4819 = !DILocation(line: 899, column: 24, scope: !4328)
!4820 = !DILocation(line: 0, scope: !674, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 900, column: 5, scope: !4328)
!4822 = !DILocation(line: 44, column: 27, scope: !683, inlinedAt: !4821)
!4823 = !DILocation(line: 48, column: 13, scope: !688, inlinedAt: !4821)
!4824 = !DILocation(line: 48, column: 13, scope: !686, inlinedAt: !4821)
!4825 = !DILocation(line: 49, column: 23, scope: !710, inlinedAt: !4821)
!4826 = !DILocation(line: 50, column: 18, scope: !710, inlinedAt: !4821)
!4827 = !DILocation(line: 51, column: 9, scope: !710, inlinedAt: !4821)
!4828 = !DILocation(line: 0, scope: !688, inlinedAt: !4821)
!4829 = !DILocation(line: 0, scope: !691, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 900, column: 25, scope: !4328)
!4831 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4830)
!4832 = !DILocation(line: 900, column: 53, scope: !4328)
!4833 = !DILocation(line: 900, column: 44, scope: !4328)
!4834 = !DILocation(line: 900, column: 65, scope: !4328)
!4835 = !DILocation(line: 0, scope: !1698, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 900, column: 41, scope: !4328)
!4837 = !DILocation(line: 88, column: 15, scope: !1698, inlinedAt: !4836)
!4838 = !DILocation(line: 0, scope: !691, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 901, column: 25, scope: !4328)
!4840 = !DILocation(line: 62, column: 19, scope: !697, inlinedAt: !4839)
!4841 = !DILocation(line: 0, scope: !700, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 900, column: 5, scope: !4328)
!4843 = !DILocation(line: 167, column: 13, scope: !707, inlinedAt: !4842)
!4844 = !DILocation(line: 168, column: 13, scope: !705, inlinedAt: !4842)
!4845 = !DILocation(line: 169, column: 9, scope: !705, inlinedAt: !4842)
!4846 = !DILocation(line: 0, scope: !714, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 170, column: 13, scope: !718, inlinedAt: !4842)
!4848 = !DILocation(line: 163, column: 81, scope: !714, inlinedAt: !4847)
!4849 = !DILocation(line: 163, column: 87, scope: !714, inlinedAt: !4847)
!4850 = !DILocation(line: 163, column: 77, scope: !714, inlinedAt: !4847)
!4851 = !DILocation(line: 163, column: 15, scope: !714, inlinedAt: !4847)
!4852 = !DILocation(line: 174, column: 17, scope: !724, inlinedAt: !4842)
!4853 = !DILocation(line: 181, column: 13, scope: !728, inlinedAt: !4842)
!4854 = !DILocation(line: 905, column: 1, scope: !4328)
!4855 = !DISubprogram(name: "strlen", scope: !37, file: !37, line: 92, type: !4856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!18, !182}
!4858 = !DISubprogram(name: "strstr", scope: !37, file: !37, line: 88, type: !4859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!182, !182, !182}
!4861 = distinct !DISubprogram(name: "halide_openglcompute_finalize_kernels", scope: !6, file: !6, line: 907, type: !4862, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !126, !126}
!4864 = !{!4865, !4866}
!4865 = !DILocalVariable(name: "user_context", arg: 1, scope: !4861, file: !6, line: 907, type: !126)
!4866 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !4861, file: !6, line: 907, type: !126)
!4867 = !DILocation(line: 0, scope: !4861)
!4868 = !DILocation(line: 908, column: 1, scope: !4861)
!4869 = distinct !DISubprogram(name: "halide_openglcompute_device_and_host_malloc", scope: !6, file: !6, line: 910, type: !329, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4870)
!4870 = !{!4871, !4872}
!4871 = !DILocalVariable(name: "user_context", arg: 1, scope: !4869, file: !6, line: 910, type: !126)
!4872 = !DILocalVariable(name: "buf", arg: 2, scope: !4869, file: !6, line: 910, type: !207)
!4873 = !DILocation(line: 0, scope: !4869)
!4874 = !DILocation(line: 911, column: 12, scope: !4869)
!4875 = !DILocation(line: 911, column: 5, scope: !4869)
!4876 = !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !368, file: !368, line: 41, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4877 = distinct !DISubprogram(name: "halide_openglcompute_device_and_host_free", scope: !6, file: !6, line: 914, type: !329, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !4878)
!4878 = !{!4879, !4880}
!4879 = !DILocalVariable(name: "user_context", arg: 1, scope: !4877, file: !6, line: 914, type: !126)
!4880 = !DILocalVariable(name: "buf", arg: 2, scope: !4877, file: !6, line: 914, type: !207)
!4881 = !DILocation(line: 0, scope: !4877)
!4882 = !DILocation(line: 915, column: 12, scope: !4877)
!4883 = !DILocation(line: 915, column: 5, scope: !4877)
!4884 = !DISubprogram(name: "halide_default_device_and_host_free", scope: !368, file: !368, line: 43, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4885 = distinct !DISubprogram(name: "halide_openglcompute_device_interface", scope: !6, file: !6, line: 918, type: !4886, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !655)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!214}
!4888 = !DILocation(line: 919, column: 5, scope: !4885)
!4889 = !DISubprogram(name: "halide_malloc", scope: !201, file: !201, line: 354, type: !4890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!126, !126, !18}
!4892 = !DISubprogram(name: "halide_free", scope: !201, file: !201, line: 355, type: !4862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4893 = !DISubprogram(name: "halide_error", scope: !201, file: !201, line: 111, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4894 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !201, file: !201, line: 973, type: !4895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!38, !126, !444, !212}
!4897 = !DISubprogram(name: "halide_string_to_string", scope: !37, file: !37, line: 120, type: !4898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!194, !194, !194, !182}
!4900 = !DISubprogram(name: "halide_int64_to_string", scope: !37, file: !37, line: 122, type: !4901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!194, !194, !194, !424, !38}
!4903 = !DISubprogram(name: "halide_uint64_to_string", scope: !37, file: !37, line: 123, type: !4904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!194, !194, !194, !212, !38}
!4906 = !DISubprogram(name: "halide_pointer_to_string", scope: !37, file: !37, line: 124, type: !4907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!194, !194, !194, !444}
!4909 = !DISubprogram(name: "halide_type_to_string", scope: !37, file: !37, line: 126, type: !4910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!194, !194, !194, !789}
!4912 = !DISubprogram(name: "halide_double_to_string", scope: !37, file: !37, line: 121, type: !4913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !655)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!194, !194, !194, !437, !38}
