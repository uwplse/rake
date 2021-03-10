; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet" = type { i8*, i32 }
%"struct.Halide::Runtime::Internal::Hexagon::module_state" = type { i32, %"struct.Halide::Runtime::Internal::Hexagon::module_state"* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%struct.hexagon_device_pointer = type { i64, i8* }
%"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle" = type { i8*, i32 }
%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32 }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32 }
%struct.halide_thread = type opaque
%struct.halide_hexagon_power_t = type { i8, i32, i32, i8, i32, i16, i8, i32 }

@_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE = weak global %struct.halide_mutex zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE = weak local_unnamed_addr global i32 (i8*, i32, i8*, i32, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE = weak local_unnamed_addr global i32 (i32, i8*, i32, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon10remote_runE = weak local_unnamed_addr global i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE = weak local_unnamed_addr global i32 (i8*, i32, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE = weak local_unnamed_addr global void (i32*, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE = weak local_unnamed_addr global i32 ()* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE = weak local_unnamed_addr global i32 ()* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE = weak local_unnamed_addr global i32 (i32, i32, i32, i32, i32, i32, i32, i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE = weak local_unnamed_addr global i32 (i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE = weak local_unnamed_addr global void ()* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE = weak local_unnamed_addr global void ()* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE = weak local_unnamed_addr global i8* (i32)* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon9host_freeE = weak local_unnamed_addr global void (i8*)* null, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Hexagon: remote_poll_log failed \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Hexagon: remote_poll_profiler_func not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"libhalide_hexagon_host.so\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"libhalide_hexagon_host.dll\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"halide_hexagon_remote_load_library\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"halide_hexagon_remote_get_symbol_v4\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"halide_hexagon_remote_run\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"halide_hexagon_remote_release_library\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"halide_hexagon_host_malloc_init\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"halide_hexagon_host_malloc_deinit\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"halide_hexagon_host_malloc\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"halide_hexagon_host_free\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"halide_hexagon_remote_poll_log\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"halide_hexagon_remote_poll_profiler_state\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"halide_hexagon_remote_profiler_set_current_func\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"halide_hexagon_remote_power_hvx_on\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"halide_hexagon_remote_power_hvx_off\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"halide_hexagon_remote_set_performance\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"halide_hexagon_remote_set_performance_mode\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"halide_hexagon_remote_set_thread_priority\00", align 1
@_ZN6Halide7Runtime8Internal7Hexagon10state_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::module_state"* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE = weak global i32 0, align 4
@__const.halide_hexagon_initialize_kernels.soname = private unnamed_addr constant [28 x i8] c"libhalide_shared_runtime.so\00", align 1
@.str.34 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:280 Assert failed: shared_runtime != 0\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"Initialization of Hexagon kernels failed\0A\00", align 1
@_ZZ33halide_hexagon_initialize_kernelsE9unique_id = internal unnamed_addr global i32 0, align 4
@.str.38 = private unnamed_addr constant [18 x i8] c"libhalide_kernels\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.42 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:392 Assert failed: state_ptr != nullptr\0A\00", align 1
@.str.43 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:393 Assert failed: function != nullptr\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Failed to find function \00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c" in module.\0A\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Hexagon pipeline failed.\0A\00", align 1
@.str.63 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:549 Assert failed: size != 0\0A\00", align 1
@.str.64 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:557 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"host_malloc failed\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"halide_malloc failed\0A\00", align 1
@.str.77 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:660 Assert failed: buf->host && buf->device\0A\00", align 1
@.str.79 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:684 Assert failed: buf->host && buf->device\0A\00", align 1
@.str.81 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:708 Assert failed: buf->device == 0\0A\00", align 1
@_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal7Hexagon29hexagon_device_interface_implE }, align 4
@.str.82 = private unnamed_addr constant [150 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:729 Assert failed: buf->device_interface == &hexagon_device_interface\0A\00", align 1
@.str.83 = private unnamed_addr constant [150 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:743 Assert failed: buf->device_interface == &hexagon_device_interface\0A\00", align 1
@.str.84 = private unnamed_addr constant [150 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:752 Assert failed: buf->device_interface == &hexagon_device_interface\0A\00", align 1
@.str.87 = private unnamed_addr constant [184 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:778 Assert failed: dst_device_interface == nullptr || dst_device_interface == &hexagon_device_interface\0A\00", align 1
@.str.88 = private unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:782 Assert failed: dst_device_interface == &hexagon_device_interface\0A\00", align 1
@.str.90 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp:793 Assert failed: to_host || dst->device\0A\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"remote_power_hvx_on failed.\0A\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"remote_power_hvx_off failed.\0A\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"remote_set_performance_mode failed.\0A\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"remote_set_performance failed.\0A\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"remote_set_thread_priority failed.\0A\00", align 1
@_ZN6Halide7Runtime8Internal7Hexagon29hexagon_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_sync, i32 (i8*)* @halide_hexagon_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 4
@.str.109 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"Required Hexagon runtime symbol '\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"' not found.\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_hexagon_cleanup, i8* null }]

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
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #6
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #7
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
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #7
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #8
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #7
  ret void
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) local_unnamed_addr #4 {
  %2 = alloca [1024 x i8], align 1
  %3 = alloca i32, align 4
  %4 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE, align 4, !tbaa !37
  %5 = icmp eq i32 (i8*, i32, i32*)* %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #8
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i32 0, i32* %3, align 4, !tbaa !38
  %9 = call i32 %4(i8* nonnull %7, i32 1024, i32* nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %35, %6
  %12 = phi i32 [ %9, %6 ], [ %37, %35 ]
  %13 = call i8* @malloc(i32 1024) #6
  %14 = icmp eq i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8* [ %16, %15 ], [ null, %11 ]
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #6
  %20 = sext i32 %12 to i64
  %21 = call i8* @halide_int64_to_string(i8* %19, i8* %18, i64 %20, i32 1) #6
  %22 = call i8* @halide_string_to_string(i8* %21, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  br i1 %14, label %23, label %24

23:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %31

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i32
  %26 = ptrtoint i8* %13 to i32
  %27 = add i32 %25, 1
  %28 = sub i32 %27, %26
  %29 = sext i32 %28 to i64
  %30 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %29) #6
  call void @halide_print(i8* %0, i8* nonnull %13) #6
  br label %31

31:                                               ; preds = %24, %23
  call void @free(i8* %13) #6
  br label %39

32:                                               ; preds = %6, %35
  %33 = load i32, i32* %3, align 4, !tbaa !38
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  call void @halide_print(i8* %0, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #8
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i32 0, i32* %3, align 4, !tbaa !38
  %36 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE, align 4, !tbaa !37
  %37 = call i32 %36(i8* nonnull %7, i32 1024, i32* nonnull %3) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %32, label %11

39:                                               ; preds = %32, %31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #8
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal7Hexagon25get_remote_profiler_stateEPiS3_(i32* %0, i32* %1) #4 {
  %3 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 4, !tbaa !37
  %4 = icmp eq void (i32*, i32*)* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = tail call i8* @malloc(i32 1024) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)) #6
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)) #6
  %13 = ptrtoint i8* %12 to i32
  %14 = ptrtoint i8* %6 to i32
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = sext i32 %16 to i64
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %6, i64 %17) #6
  tail call void @halide_error(i8* null, i8* nonnull %6) #6
  br label %19

19:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #6
  %20 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 4, !tbaa !37
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi void (i32*, i32*)* [ %20, %19 ], [ %3, %2 ]
  tail call void %22(i32* %0, i32* %1) #6
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 4, !tbaa !37
  %3 = icmp ne i32 (i8*, i32, i8*, i32, i32*)* %2, null
  %4 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 4
  %5 = icmp ne i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* %4, null
  %6 = and i1 %3, %5
  %7 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 4
  %8 = icmp ne i32 (i32)* %7, null
  %9 = and i1 %6, %8
  br i1 %9, label %242, label %10

10:                                               ; preds = %1
  %11 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i8* [ %11, %10 ], [ %14, %13 ]
  %17 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* %17, i8** bitcast (i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE to i8**), align 4, !tbaa !37
  %18 = icmp eq i8* %17, null
  %19 = bitcast i8* %17 to i32 (i8*, i32, i8*, i32, i32*)*
  br i1 %18, label %20, label %40

20:                                               ; preds = %15
  %21 = tail call i8* @malloc(i32 1024) #6
  %22 = icmp eq i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, i8* %21, i32 1023
  store i8 0, i8* %24, align 1, !tbaa !36
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i8* [ %24, %23 ], [ null, %20 ]
  %27 = tail call i8* @halide_string_to_string(i8* %21, i8* %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %26, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #6
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %26, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %22, label %30, label %31

30:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %38

31:                                               ; preds = %25
  %32 = ptrtoint i8* %29 to i32
  %33 = ptrtoint i8* %21 to i32
  %34 = sub i32 1, %33
  %35 = add i32 %34, %32
  %36 = sext i32 %35 to i64
  %37 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %36) #6
  tail call void @halide_error(i8* %0, i8* nonnull %21) #6
  br label %38

38:                                               ; preds = %31, %30
  tail call void @free(i8* %21) #6
  %39 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 4, !tbaa !37
  br label %40

40:                                               ; preds = %15, %38
  %41 = phi i32 (i8*, i32, i8*, i32, i32*)* [ %19, %15 ], [ %39, %38 ]
  %42 = icmp eq i32 (i8*, i32, i8*, i32, i32*)* %41, null
  br i1 %42, label %242, label %43

43:                                               ; preds = %40
  %44 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #6
  store i8* %44, i8** bitcast (i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE to i8**), align 4, !tbaa !37
  %45 = icmp eq i8* %44, null
  %46 = bitcast i8* %44 to i32 (i32, i8*, i32, i32*)*
  br i1 %45, label %47, label %67

47:                                               ; preds = %43
  %48 = tail call i8* @malloc(i32 1024) #6
  %49 = icmp eq i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, i8* %48, i32 1023
  store i8 0, i8* %51, align 1, !tbaa !36
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i8* [ %51, %50 ], [ null, %47 ]
  %54 = tail call i8* @halide_string_to_string(i8* %48, i8* %53, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %53, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #6
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %53, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %49, label %57, label %58

57:                                               ; preds = %52
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %65

58:                                               ; preds = %52
  %59 = ptrtoint i8* %56 to i32
  %60 = ptrtoint i8* %48 to i32
  %61 = sub i32 1, %60
  %62 = add i32 %61, %59
  %63 = sext i32 %62 to i64
  %64 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %48, i64 %63) #6
  tail call void @halide_error(i8* %0, i8* nonnull %48) #6
  br label %65

65:                                               ; preds = %58, %57
  tail call void @free(i8* %48) #6
  %66 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE, align 4, !tbaa !37
  br label %67

67:                                               ; preds = %43, %65
  %68 = phi i32 (i32, i8*, i32, i32*)* [ %46, %43 ], [ %66, %65 ]
  %69 = icmp eq i32 (i32, i8*, i32, i32*)* %68, null
  br i1 %69, label %242, label %70

70:                                               ; preds = %67
  %71 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #6
  store i8* %71, i8** bitcast (i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE to i8**), align 4, !tbaa !37
  %72 = icmp eq i8* %71, null
  %73 = bitcast i8* %71 to i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*
  br i1 %72, label %74, label %94

74:                                               ; preds = %70
  %75 = tail call i8* @malloc(i32 1024) #6
  %76 = icmp eq i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %78, align 1, !tbaa !36
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %78, %77 ], [ null, %74 ]
  %81 = tail call i8* @halide_string_to_string(i8* %75, i8* %80, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %80, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #6
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %80, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %76, label %84, label %85

84:                                               ; preds = %79
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %92

85:                                               ; preds = %79
  %86 = ptrtoint i8* %83 to i32
  %87 = ptrtoint i8* %75 to i32
  %88 = sub i32 1, %87
  %89 = add i32 %88, %86
  %90 = sext i32 %89 to i64
  %91 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %75, i64 %90) #6
  tail call void @halide_error(i8* %0, i8* nonnull %75) #6
  br label %92

92:                                               ; preds = %85, %84
  tail call void @free(i8* %75) #6
  %93 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 4, !tbaa !37
  br label %94

94:                                               ; preds = %70, %92
  %95 = phi i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* [ %73, %70 ], [ %93, %92 ]
  %96 = icmp eq i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* %95, null
  br i1 %96, label %242, label %97

97:                                               ; preds = %94
  %98 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)) #6
  store i8* %98, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE to i8**), align 4, !tbaa !37
  %99 = icmp eq i8* %98, null
  %100 = bitcast i8* %98 to i32 (i32)*
  br i1 %99, label %101, label %121

101:                                              ; preds = %97
  %102 = tail call i8* @malloc(i32 1024) #6
  %103 = icmp eq i8* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %102, i32 1023
  store i8 0, i8* %105, align 1, !tbaa !36
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i8* [ %105, %104 ], [ null, %101 ]
  %108 = tail call i8* @halide_string_to_string(i8* %102, i8* %107, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %109 = tail call i8* @halide_string_to_string(i8* %108, i8* %107, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)) #6
  %110 = tail call i8* @halide_string_to_string(i8* %109, i8* %107, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %103, label %111, label %112

111:                                              ; preds = %106
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %119

112:                                              ; preds = %106
  %113 = ptrtoint i8* %110 to i32
  %114 = ptrtoint i8* %102 to i32
  %115 = sub i32 1, %114
  %116 = add i32 %115, %113
  %117 = sext i32 %116 to i64
  %118 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %102, i64 %117) #6
  tail call void @halide_error(i8* %0, i8* nonnull %102) #6
  br label %119

119:                                              ; preds = %112, %111
  tail call void @free(i8* %102) #6
  %120 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 4, !tbaa !37
  br label %121

121:                                              ; preds = %97, %119
  %122 = phi i32 (i32)* [ %100, %97 ], [ %120, %119 ]
  %123 = icmp eq i32 (i32)* %122, null
  br i1 %123, label %242, label %124

124:                                              ; preds = %121
  %125 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)) #6
  store i8* %125, i8** bitcast (void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE to i8**), align 4, !tbaa !37
  %126 = icmp eq i8* %125, null
  %127 = bitcast i8* %125 to void ()*
  br i1 %126, label %128, label %148

128:                                              ; preds = %124
  %129 = tail call i8* @malloc(i32 1024) #6
  %130 = icmp eq i8* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds i8, i8* %129, i32 1023
  store i8 0, i8* %132, align 1, !tbaa !36
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi i8* [ %132, %131 ], [ null, %128 ]
  %135 = tail call i8* @halide_string_to_string(i8* %129, i8* %134, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %136 = tail call i8* @halide_string_to_string(i8* %135, i8* %134, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)) #6
  %137 = tail call i8* @halide_string_to_string(i8* %136, i8* %134, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %130, label %138, label %139

138:                                              ; preds = %133
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %146

139:                                              ; preds = %133
  %140 = ptrtoint i8* %137 to i32
  %141 = ptrtoint i8* %129 to i32
  %142 = sub i32 1, %141
  %143 = add i32 %142, %140
  %144 = sext i32 %143 to i64
  %145 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %129, i64 %144) #6
  tail call void @halide_error(i8* %0, i8* nonnull %129) #6
  br label %146

146:                                              ; preds = %139, %138
  tail call void @free(i8* %129) #6
  %147 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE, align 4, !tbaa !37
  br label %148

148:                                              ; preds = %124, %146
  %149 = phi void ()* [ %127, %124 ], [ %147, %146 ]
  %150 = icmp eq void ()* %149, null
  br i1 %150, label %242, label %151

151:                                              ; preds = %148
  %152 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #6
  store i8* %152, i8** bitcast (void ()** @_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE to i8**), align 4, !tbaa !37
  %153 = icmp eq i8* %152, null
  %154 = bitcast i8* %152 to void ()*
  br i1 %153, label %155, label %175

155:                                              ; preds = %151
  %156 = tail call i8* @malloc(i32 1024) #6
  %157 = icmp eq i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, i8* %156, i32 1023
  store i8 0, i8* %159, align 1, !tbaa !36
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i8* [ %159, %158 ], [ null, %155 ]
  %162 = tail call i8* @halide_string_to_string(i8* %156, i8* %161, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %163 = tail call i8* @halide_string_to_string(i8* %162, i8* %161, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #6
  %164 = tail call i8* @halide_string_to_string(i8* %163, i8* %161, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %157, label %165, label %166

165:                                              ; preds = %160
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %173

166:                                              ; preds = %160
  %167 = ptrtoint i8* %164 to i32
  %168 = ptrtoint i8* %156 to i32
  %169 = sub i32 1, %168
  %170 = add i32 %169, %167
  %171 = sext i32 %170 to i64
  %172 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %156, i64 %171) #6
  tail call void @halide_error(i8* %0, i8* nonnull %156) #6
  br label %173

173:                                              ; preds = %166, %165
  tail call void @free(i8* %156) #6
  %174 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE, align 4, !tbaa !37
  br label %175

175:                                              ; preds = %151, %173
  %176 = phi void ()* [ %154, %151 ], [ %174, %173 ]
  %177 = icmp eq void ()* %176, null
  br i1 %177, label %242, label %178

178:                                              ; preds = %175
  %179 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %179, i8** bitcast (i8* (i32)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE to i8**), align 4, !tbaa !37
  %180 = icmp eq i8* %179, null
  %181 = bitcast i8* %179 to i8* (i32)*
  br i1 %180, label %182, label %202

182:                                              ; preds = %178
  %183 = tail call i8* @malloc(i32 1024) #6
  %184 = icmp eq i8* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds i8, i8* %183, i32 1023
  store i8 0, i8* %186, align 1, !tbaa !36
  br label %187

187:                                              ; preds = %185, %182
  %188 = phi i8* [ %186, %185 ], [ null, %182 ]
  %189 = tail call i8* @halide_string_to_string(i8* %183, i8* %188, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %190 = tail call i8* @halide_string_to_string(i8* %189, i8* %188, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0)) #6
  %191 = tail call i8* @halide_string_to_string(i8* %190, i8* %188, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %184, label %192, label %193

192:                                              ; preds = %187
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %200

193:                                              ; preds = %187
  %194 = ptrtoint i8* %191 to i32
  %195 = ptrtoint i8* %183 to i32
  %196 = sub i32 1, %195
  %197 = add i32 %196, %194
  %198 = sext i32 %197 to i64
  %199 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %183, i64 %198) #6
  tail call void @halide_error(i8* %0, i8* nonnull %183) #6
  br label %200

200:                                              ; preds = %193, %192
  tail call void @free(i8* %183) #6
  %201 = load i8* (i32)*, i8* (i32)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE, align 4, !tbaa !37
  br label %202

202:                                              ; preds = %178, %200
  %203 = phi i8* (i32)* [ %181, %178 ], [ %201, %200 ]
  %204 = icmp eq i8* (i32)* %203, null
  br i1 %204, label %242, label %205

205:                                              ; preds = %202
  %206 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %206, i8** bitcast (void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE to i8**), align 4, !tbaa !37
  %207 = icmp eq i8* %206, null
  %208 = bitcast i8* %206 to void (i8*)*
  br i1 %207, label %209, label %229

209:                                              ; preds = %205
  %210 = tail call i8* @malloc(i32 1024) #6
  %211 = icmp eq i8* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds i8, i8* %210, i32 1023
  store i8 0, i8* %213, align 1, !tbaa !36
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i8* [ %213, %212 ], [ null, %209 ]
  %216 = tail call i8* @halide_string_to_string(i8* %210, i8* %215, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i32 0, i32 0)) #6
  %217 = tail call i8* @halide_string_to_string(i8* %216, i8* %215, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  %218 = tail call i8* @halide_string_to_string(i8* %217, i8* %215, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #6
  br i1 %211, label %219, label %220

219:                                              ; preds = %214
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %227

220:                                              ; preds = %214
  %221 = ptrtoint i8* %218 to i32
  %222 = ptrtoint i8* %210 to i32
  %223 = sub i32 1, %222
  %224 = add i32 %223, %221
  %225 = sext i32 %224 to i64
  %226 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %210, i64 %225) #6
  tail call void @halide_error(i8* %0, i8* nonnull %210) #6
  br label %227

227:                                              ; preds = %220, %219
  tail call void @free(i8* %210) #6
  %228 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 4, !tbaa !37
  br label %229

229:                                              ; preds = %205, %227
  %230 = phi void (i8*)* [ %208, %205 ], [ %228, %227 ]
  %231 = icmp eq void (i8*)* %230, null
  br i1 %231, label %242, label %232

232:                                              ; preds = %229
  %233 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %233, i8** bitcast (i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE to i8**), align 4, !tbaa !37
  %234 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0)) #6
  store i8* %234, i8** bitcast (void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE to i8**), align 4, !tbaa !37
  %235 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %235, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE to i8**), align 4, !tbaa !37
  %236 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0)) #6
  store i8* %236, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE to i8**), align 4, !tbaa !37
  %237 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %237, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE to i8**), align 4, !tbaa !37
  %238 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0)) #6
  store i8* %238, i8** bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE to i8**), align 4, !tbaa !37
  %239 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0)) #6
  store i8* %239, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE to i8**), align 4, !tbaa !37
  %240 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)) #6
  store i8* %240, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE to i8**), align 4, !tbaa !37
  %241 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE, align 4, !tbaa !37
  tail call void %241() #6
  br label %242

242:                                              ; preds = %232, %40, %67, %94, %121, %148, %175, %202, %229, %1
  %243 = phi i32 [ 0, %1 ], [ 0, %232 ], [ -1, %40 ], [ -1, %67 ], [ -1, %94 ], [ -1, %121 ], [ -1, %148 ], [ -1, %175 ], [ -1, %202 ], [ -1, %229 ]
  ret i32 %243
}

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_is_hexagon_available(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_initialize_kernels(i8* %0, i8** %1, i8* %2, i64 %3, i8* %4, i64 %5) local_unnamed_addr #4 {
  %7 = alloca [28 x i8], align 1
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", align 4
  %9 = alloca i32, align 4
  %10 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %160

12:                                               ; preds = %6
  %13 = trunc i64 %3 to i32
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  %14 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = trunc i64 %5 to i32
  %18 = getelementptr inbounds [28 x i8], [28 x i8]* %7, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %18) #8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(28) %18, i8* nonnull align 1 dereferenceable(28) getelementptr inbounds ([28 x i8], [28 x i8]* @__const.halide_hexagon_initialize_kernels.soname, i32 0, i32 0), i32 28, i1 false)
  %19 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 4, !tbaa !37
  %20 = call i32 %19(i8* nonnull %18, i32 28, i8* %4, i32 %17, i32* nonnull @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.34, i32 0, i32 0)) #6
  call void @abort() #6
  br label %40

26:                                               ; preds = %16
  %27 = call i8* @malloc(i32 1024) #6
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i8* @halide_string_to_string(i8* %27, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i32 1023
  store i8 0, i8* %32, align 1, !tbaa !36
  %33 = call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)) #6
  %34 = ptrtoint i8* %33 to i32
  %35 = ptrtoint i8* %27 to i32
  %36 = add i32 %34, 1
  %37 = sub i32 %36, %35
  %38 = sext i32 %37 to i64
  %39 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %38) #6
  call void @halide_error(i8* %0, i8* nonnull %27) #6
  br label %41

40:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %18) #8
  br label %42

41:                                               ; preds = %31, %29
  call void @free(i8* %27) #6
  store i32 0, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %18) #8
  br label %158

42:                                               ; preds = %12, %40
  %43 = bitcast i8** %1 to %"struct.Halide::Runtime::Internal::Hexagon::module_state"**
  %44 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %43, align 4, !tbaa !37
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = call i8* @malloc(i32 8) #6
  store i8* %47, i8** %1, align 4, !tbaa !37
  %48 = bitcast i8* %47 to i32*
  store i32 0, i32* %48, align 4, !tbaa !39
  %49 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 4, !tbaa !37
  %50 = getelementptr inbounds i8, i8* %47, i32 4
  %51 = bitcast i8* %50 to %"struct.Halide::Runtime::Internal::Hexagon::module_state"**
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %49, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %51, align 4, !tbaa !41
  %52 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %43, align 4, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %52, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 4, !tbaa !37
  %53 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %43, align 4, !tbaa !37
  br label %54

54:                                               ; preds = %46, %42
  %55 = phi %"struct.Halide::Runtime::Internal::Hexagon::module_state"* [ %53, %46 ], [ %44, %42 ]
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4, !tbaa !39
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %155

59:                                               ; preds = %54
  %60 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %60) #8
  %61 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i32 0, i32 3
  store i8* %0, i8** %61, align 4, !tbaa !42
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i32 0, i32 4
  store i8 1, i8* %62, align 4, !tbaa !45
  %63 = call i8* @malloc(i32 1024) #6
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i32 0, i32 0
  store i8* %63, i8** %64, align 4, !tbaa !46
  %65 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i32 0, i32 1
  %66 = icmp eq i8* %63, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds i8, i8* %63, i32 1023
  store i8 0, i8* %68, align 1, !tbaa !36
  br label %69

69:                                               ; preds = %59, %67
  %70 = phi i8* [ %68, %67 ], [ null, %59 ]
  %71 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i32 0, i32 2
  store i8* %70, i8** %71, align 4
  %72 = call i8* @halide_string_to_string(i8* %63, i8* %70, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #6
  %73 = load i32, i32* @_ZZ33halide_hexagon_initialize_kernelsE9unique_id, align 4, !tbaa !38
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @_ZZ33halide_hexagon_initialize_kernelsE9unique_id, align 4, !tbaa !38
  %75 = sext i32 %73 to i64
  %76 = call i8* @halide_int64_to_string(i8* %72, i8* %70, i64 %75, i32 1) #6
  %77 = call i8* @halide_string_to_string(i8* %76, i8* %70, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #6
  store i8* %77, i8** %65, align 4, !tbaa !47
  br i1 %66, label %78, label %81

78:                                               ; preds = %69
  %79 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %79) #8
  store i32 0, i32* %9, align 4, !tbaa !38
  %80 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 4, !tbaa !37
  br label %102

81:                                               ; preds = %69
  %82 = ptrtoint i8* %77 to i32
  %83 = ptrtoint i8* %63 to i32
  %84 = add i32 %82, 1
  %85 = sub i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %86) #6
  %88 = load i8*, i8** %64, align 4, !tbaa !46
  %89 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #8
  store i32 0, i32* %9, align 4, !tbaa !38
  %90 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 4, !tbaa !37
  %91 = icmp eq i8* %88, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %81
  %93 = load i8*, i8** %65, align 4, !tbaa !47
  %94 = load i8*, i8** %61, align 4, !tbaa !42
  %95 = ptrtoint i8* %93 to i32
  %96 = ptrtoint i8* %88 to i32
  %97 = sub i32 1, %96
  %98 = add i32 %97, %95
  %99 = sext i32 %98 to i64
  %100 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %94, i8* nonnull %88, i64 %99) #6
  %101 = load i8*, i8** %64, align 4, !tbaa !46
  br label %102

102:                                              ; preds = %78, %81, %92
  %103 = phi i8* [ %101, %92 ], [ null, %81 ], [ null, %78 ]
  %104 = phi i32 (i8*, i32, i8*, i32, i32*)* [ %90, %92 ], [ %90, %81 ], [ %80, %78 ]
  %105 = phi i8* [ %89, %92 ], [ %89, %81 ], [ %79, %78 ]
  %106 = phi i8* [ %101, %92 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0), %81 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0), %78 ]
  %107 = load i8*, i8** %65, align 4, !tbaa !47
  %108 = ptrtoint i8* %107 to i32
  %109 = ptrtoint i8* %103 to i32
  %110 = sub i32 1, %109
  %111 = add i32 %110, %108
  %112 = call i32 %104(i8* %106, i32 %111, i8* %2, i32 %13, i32* nonnull %9) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load i32, i32* %9, align 4, !tbaa !38
  %116 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %43, align 4, !tbaa !37
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4, !tbaa !39
  br label %134

118:                                              ; preds = %102
  %119 = call i8* @malloc(i32 1024) #6
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i8* @halide_string_to_string(i8* %119, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %132

123:                                              ; preds = %118
  %124 = getelementptr inbounds i8, i8* %119, i32 1023
  store i8 0, i8* %124, align 1, !tbaa !36
  %125 = call i8* @halide_string_to_string(i8* nonnull %119, i8* nonnull %124, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)) #6
  %126 = ptrtoint i8* %125 to i32
  %127 = ptrtoint i8* %119 to i32
  %128 = add i32 %126, 1
  %129 = sub i32 %128, %127
  %130 = sext i32 %129 to i64
  %131 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %119, i64 %130) #6
  call void @halide_error(i8* %0, i8* nonnull %119) #6
  br label %132

132:                                              ; preds = %123, %121
  call void @free(i8* %119) #6
  %133 = load i8*, i8** %64, align 4, !tbaa !46
  br label %134

134:                                              ; preds = %132, %114
  %135 = phi i8* [ %133, %132 ], [ %103, %114 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %105) #8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i8*, i8** %61, align 4, !tbaa !42
  call void @halide_error(i8* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %148

139:                                              ; preds = %134
  %140 = load i8*, i8** %65, align 4, !tbaa !47
  %141 = load i8*, i8** %61, align 4, !tbaa !42
  %142 = ptrtoint i8* %140 to i32
  %143 = ptrtoint i8* %135 to i32
  %144 = sub i32 1, %143
  %145 = add i32 %144, %142
  %146 = sext i32 %145 to i64
  %147 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %141, i8* nonnull %135, i64 %146) #6
  br label %148

148:                                              ; preds = %139, %137
  %149 = load i8, i8* %62, align 4, !tbaa !45, !range !48
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load i8*, i8** %64, align 4, !tbaa !46
  call void @free(i8* %152) #6
  br label %153

153:                                              ; preds = %148, %151
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %60) #8
  %154 = icmp ne i32 %112, 0
  br label %155

155:                                              ; preds = %54, %153
  %156 = phi i1 [ %154, %153 ], [ false, %54 ]
  %157 = sext i1 %156 to i32
  br label %158

158:                                              ; preds = %41, %155
  %159 = phi i32 [ %157, %155 ], [ -1, %41 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  br label %160

160:                                              ; preds = %6, %158
  %161 = phi i32 [ %159, %158 ], [ %10, %6 ]
  ret i32 %161
}

declare void @abort() local_unnamed_addr #2

declare i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_hexagon_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @map_arguments(i8* %0, i32 %1, i64* %2, i8** %3, i32* %4, i32 %5, i32 %6, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7) local_unnamed_addr #0 {
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %54, %8
  %11 = phi i32 [ 0, %8 ], [ %55, %54 ]
  ret i32 %11

12:                                               ; preds = %8, %54
  %13 = phi i32 [ %55, %54 ], [ 0, %8 ]
  %14 = phi i32 [ %56, %54 ], [ 0, %8 ]
  %15 = getelementptr inbounds i32, i32* %4, i32 %14
  %16 = load i32, i32* %15, align 4, !tbaa !38
  %17 = and i32 %16, %5
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7, i32 %13
  %22 = icmp eq i32 %16, 0
  %23 = getelementptr inbounds i8*, i8** %3, i32 %14
  br i1 %22, label %45, label %24

24:                                               ; preds = %19
  %25 = bitcast i8** %23 to %struct.hexagon_device_pointer**
  %26 = load %struct.hexagon_device_pointer*, %struct.hexagon_device_pointer** %25, align 4, !tbaa !37
  %27 = getelementptr inbounds %struct.hexagon_device_pointer, %struct.hexagon_device_pointer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !49
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = trunc i64 %28 to i32
  %32 = inttoptr i32 %31 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 4, !tbaa !51
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %21, i32 0, i32 0
  store i8* %34, i8** %35, align 4, !tbaa !53
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %32, i32 0, i32 1
  %37 = load i32, i32* %36, align 4, !tbaa !55
  br label %51

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.hexagon_device_pointer, %struct.hexagon_device_pointer* %26, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8, !tbaa !56
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %21, i32 0, i32 0
  store i8* %40, i8** %41, align 4, !tbaa !53
  %42 = getelementptr inbounds i64, i64* %2, i32 %14
  %43 = load i64, i64* %42, align 8, !tbaa !3
  %44 = trunc i64 %43 to i32
  br label %51

45:                                               ; preds = %19
  %46 = load i8*, i8** %23, align 4, !tbaa !37
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %21, i32 0, i32 0
  store i8* %46, i8** %47, align 4, !tbaa !53
  %48 = getelementptr inbounds i64, i64* %2, i32 %14
  %49 = load i64, i64* %48, align 8, !tbaa !3
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %45, %38, %30
  %52 = phi i32 [ %37, %30 ], [ %44, %38 ], [ %50, %45 ]
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7, i32 %13, i32 1
  store i32 %52, i32* %53, align 4, !tbaa !57
  br label %54

54:                                               ; preds = %51, %12
  %55 = phi i32 [ %13, %12 ], [ %20, %51 ]
  %56 = add nuw nsw i32 %14, 1
  %57 = icmp slt i32 %56, %1
  br i1 %57, label %12, label %10, !llvm.loop !58
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_run(i8* %0, i8* %1, i8* %2, i32* %3, i64* %4, i8** %5, i32* %6) local_unnamed_addr #4 {
  %8 = alloca i32, align 4
  %9 = icmp eq i8* %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.42, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq i32* %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.43, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %14

14:                                               ; preds = %11, %13
  %15 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %119

17:                                               ; preds = %14
  br i1 %9, label %21, label %18

18:                                               ; preds = %17
  %19 = bitcast i8* %1 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !39
  br label %21

21:                                               ; preds = %17, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %17 ]
  %23 = load i32, i32* %3, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8
  store i32 0, i32* %8, align 4, !tbaa !38
  %27 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE, align 4, !tbaa !37
  %28 = tail call i32 @strlen(i8* %2) #6
  %29 = add i32 %28, 1
  %30 = call i32 %27(i32 %22, i8* %2, i32 %29, i32* nonnull %8) #6
  %31 = icmp eq i32 %30, 0
  %32 = load i32, i32* %8, align 4
  %33 = select i1 %31, i32 %32, i32 0
  store i32 %33, i32* %3, align 4, !tbaa !38
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %34 = load i32, i32* %3, align 4, !tbaa !38
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %25
  %37 = call i8* @malloc(i32 1024) #6
  %38 = icmp eq i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %37, i32 1023
  store i8 0, i8* %40, align 1, !tbaa !36
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi i8* [ %40, %39 ], [ null, %36 ]
  %43 = call i8* @halide_string_to_string(i8* %37, i8* %42, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0)) #6
  %44 = icmp eq i8* %2, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i8* @halide_string_to_string(i8* %43, i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0)) #6
  br label %49

47:                                               ; preds = %41
  %48 = call i8* @halide_string_to_string(i8* %43, i8* %42, i8* nonnull %2) #6
  br label %49

49:                                               ; preds = %45, %47
  %50 = phi i8* [ %48, %47 ], [ %46, %45 ]
  %51 = call i8* @halide_string_to_string(i8* %50, i8* %42, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0)) #6
  br i1 %38, label %52, label %53

52:                                               ; preds = %49
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %60

53:                                               ; preds = %49
  %54 = ptrtoint i8* %51 to i32
  %55 = ptrtoint i8* %37 to i32
  %56 = add i32 %54, 1
  %57 = sub i32 %56, %55
  %58 = sext i32 %57 to i64
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %58) #6
  call void @halide_error(i8* %0, i8* nonnull %37) #6
  br label %60

60:                                               ; preds = %53, %52
  call void @free(i8* %37) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8
  br label %119

61:                                               ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8
  br label %62

62:                                               ; preds = %61, %21
  br label %63

63:                                               ; preds = %62, %63
  %64 = phi i32 [ %68, %63 ], [ 0, %62 ]
  %65 = getelementptr inbounds i64, i64* %4, i32 %64
  %66 = load i64, i64* %65, align 8, !tbaa !3
  %67 = icmp eq i64 %66, 0
  %68 = add nuw nsw i32 %64, 1
  br i1 %67, label %69, label %63, !llvm.loop !59

69:                                               ; preds = %63
  %70 = shl i32 %64, 3
  %71 = alloca i8, i32 %70, align 8
  %72 = bitcast i8* %71 to %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*
  %73 = call i32 @map_arguments(i8* %0, i32 %64, i64* nonnull %4, i8** %5, i32* %6, i32 3, i32 1, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %72) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %72, i32 %73
  %77 = call i32 @map_arguments(i8* %0, i32 %64, i64* nonnull %4, i8** %5, i32* %6, i32 2, i32 2, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %76) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %76, i32 %77
  %81 = call i32 @map_arguments(i8* %0, i32 %64, i64* nonnull %4, i8** %5, i32* %6, i32 3, i32 0, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %80) #7
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %119, label %83

83:                                               ; preds = %79
  %84 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 4, !tbaa !37
  %85 = icmp eq void (i32*, i32*)* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %88 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %87, i32 0, i32 6
  store void (i32*, i32*)* @_ZN6Halide7Runtime8Internal7Hexagon25get_remote_profiler_stateEPiS3_, void (i32*, i32*)** %88, align 4, !tbaa !60
  %89 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE, align 4, !tbaa !37
  %90 = icmp eq i32 (i32)* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %93 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4, !tbaa !63
  %95 = call i32 %89(i32 %94) #6
  br label %96

96:                                               ; preds = %86, %91, %83
  %97 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 4, !tbaa !37
  %98 = load i32, i32* %3, align 4, !tbaa !38
  %99 = call i32 %97(i32 %22, i32 %98, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %72, i32 %73, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %76, i32 %77, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %80, i32 %81) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %96
  %102 = call i8* @malloc(i32 1024) #6
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i8* @halide_string_to_string(i8* %102, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %115

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, i8* %102, i32 1023
  store i8 0, i8* %107, align 1, !tbaa !36
  %108 = call i8* @halide_string_to_string(i8* nonnull %102, i8* nonnull %107, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #6
  %109 = ptrtoint i8* %108 to i32
  %110 = ptrtoint i8* %102 to i32
  %111 = add i32 %109, 1
  %112 = sub i32 %111, %110
  %113 = sext i32 %112 to i64
  %114 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %102, i64 %113) #6
  call void @halide_error(i8* %0, i8* nonnull %102) #6
  br label %115

115:                                              ; preds = %106, %104
  call void @free(i8* %102) #6
  br label %119

116:                                              ; preds = %96
  %117 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %118 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %117, i32 0, i32 6
  store void (i32*, i32*)* null, void (i32*, i32*)** %118, align 4, !tbaa !60
  br label %119

119:                                              ; preds = %60, %75, %79, %116, %115, %69, %14
  %120 = phi i32 [ %15, %14 ], [ -1, %60 ], [ %73, %69 ], [ %77, %75 ], [ %99, %115 ], [ 0, %116 ], [ %81, %79 ]
  ret i32 %120
}

declare i32 @strlen(i8*) local_unnamed_addr #2

declare %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_hexagon_device_release(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  %2 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 4, !tbaa !37
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %12
  %5 = phi %"struct.Halide::Runtime::Internal::Hexagon::module_state"* [ %14, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 4, !tbaa !37
  %11 = tail call i32 %10(i32 %7) #6
  tail call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  store i32 0, i32* %6, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %5, i32 0, i32 1
  %14 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %13, align 4, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %14, null
  br i1 %15, label %16, label %4, !llvm.loop !64

16:                                               ; preds = %12, %1
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* null, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 4, !tbaa !37
  %17 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 4, !tbaa !37
  %21 = tail call i32 %20(i32 %17) #6
  tail call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  store i32 0, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  br label %22

22:                                               ; preds = %19, %16
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %141

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %141

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !24
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %15 = load i8, i8* %14, align 1, !tbaa !23
  br label %54

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %18 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %17, align 8, !tbaa !25
  br label %19

19:                                               ; preds = %31, %16
  %20 = phi i32 [ 0, %16 ], [ %33, %31 ]
  %21 = phi i32 [ 0, %16 ], [ %32, %31 ]
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i32 %20, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !26
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i32 %20, i32 1
  %27 = load i32, i32* %26, align 4, !tbaa !31
  %28 = add nsw i32 %27, -1
  %29 = mul nsw i32 %28, %23
  %30 = add nsw i32 %29, %21
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %30, %25 ], [ %21, %19 ]
  %33 = add nuw nsw i32 %20, 1
  %34 = icmp slt i32 %33, %11
  br i1 %34, label %19, label %35, !llvm.loop !65

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %37 = load i8, i8* %36, align 1, !tbaa !23
  br label %38

38:                                               ; preds = %50, %35
  %39 = phi i32 [ 0, %35 ], [ %52, %50 ]
  %40 = phi i32 [ 0, %35 ], [ %51, %50 ]
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i32 %39, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !26
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i32 %39, i32 1
  %46 = load i32, i32* %45, align 4, !tbaa !31
  %47 = add nsw i32 %46, -1
  %48 = mul nsw i32 %47, %42
  %49 = add nsw i32 %48, %40
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i32 [ %49, %44 ], [ %40, %38 ]
  %52 = add nuw nsw i32 %39, 1
  %53 = icmp slt i32 %52, %11
  br i1 %53, label %38, label %54, !llvm.loop !66

54:                                               ; preds = %50, %13
  %55 = phi i8 [ %15, %13 ], [ %37, %50 ]
  %56 = phi i32 [ 0, %13 ], [ %32, %50 ]
  %57 = phi i32 [ 0, %13 ], [ %51, %50 ]
  %58 = zext i8 %55 to i32
  %59 = add nuw nsw i32 %58, 7
  %60 = lshr i32 %59, 3
  %61 = add nsw i32 %56, 1
  %62 = sub i32 %61, %57
  %63 = mul i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.63, i32 0, i32 0)) #6
  tail call void @abort() #6
  %66 = load i32, i32* %10, align 4, !tbaa !24
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i32 [ %66, %65 ], [ %11, %54 ]
  %69 = add i32 %63, 128
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %76

73:                                               ; preds = %85, %67
  %74 = zext i32 %69 to i64
  %75 = icmp ugt i32 %69, 4095
  br i1 %75, label %89, label %108

76:                                               ; preds = %71, %85
  %77 = phi i32 [ %68, %71 ], [ %86, %85 ]
  %78 = phi i32 [ 0, %71 ], [ %87, %85 ]
  %79 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %72, align 8, !tbaa !25
  %80 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %79, i32 %78, i32 2
  %81 = load i32, i32* %80, align 4, !tbaa !26
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.64, i32 0, i32 0)) #6
  tail call void @abort() #6
  %84 = load i32, i32* %10, align 4, !tbaa !24
  br label %85

85:                                               ; preds = %76, %83
  %86 = phi i32 [ %77, %76 ], [ %84, %83 ]
  %87 = add nuw nsw i32 %78, 1
  %88 = icmp slt i32 %87, %86
  br i1 %88, label %76, label %73, !llvm.loop !67

89:                                               ; preds = %73
  %90 = load i8* (i32)*, i8* (i32)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE, align 4, !tbaa !37
  %91 = tail call i8* %90(i32 %69) #6
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = tail call i8* @malloc(i32 1024) #6
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = tail call i8* @halide_string_to_string(i8* %94, i8* null, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds i8, i8* %94, i32 1023
  store i8 0, i8* %99, align 1, !tbaa !36
  %100 = tail call i8* @halide_string_to_string(i8* nonnull %94, i8* nonnull %99, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0)) #6
  %101 = ptrtoint i8* %100 to i32
  %102 = ptrtoint i8* %94 to i32
  %103 = add i32 %101, 1
  %104 = sub i32 %103, %102
  %105 = sext i32 %104 to i64
  %106 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %94, i64 %105) #6
  tail call void @halide_error(i8* %0, i8* nonnull %94) #6
  br label %107

107:                                              ; preds = %98, %96
  tail call void @free(i8* %94) #6
  br label %141

108:                                              ; preds = %73
  %109 = tail call i8* @halide_malloc(i8* %0, i32 %69) #6
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = tail call i8* @malloc(i32 1024) #6
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = tail call i8* @halide_string_to_string(i8* %112, i8* null, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %125

116:                                              ; preds = %111
  %117 = getelementptr inbounds i8, i8* %112, i32 1023
  store i8 0, i8* %117, align 1, !tbaa !36
  %118 = tail call i8* @halide_string_to_string(i8* nonnull %112, i8* nonnull %117, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0)) #6
  %119 = ptrtoint i8* %118 to i32
  %120 = ptrtoint i8* %112 to i32
  %121 = add i32 %119, 1
  %122 = sub i32 %121, %120
  %123 = sext i32 %122 to i64
  %124 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %112, i64 %123) #6
  tail call void @halide_error(i8* %0, i8* nonnull %112) #6
  br label %125

125:                                              ; preds = %116, %114
  tail call void @free(i8* %112) #6
  br label %141

126:                                              ; preds = %89
  %127 = tail call i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1, i8* nonnull %91, i64 %74) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %132

129:                                              ; preds = %108
  %130 = tail call i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1, i8* nonnull %109, i64 %74) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %134

132:                                              ; preds = %126
  %133 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 4, !tbaa !37
  tail call void %133(i8* nonnull %91) #6
  br label %141

134:                                              ; preds = %129
  tail call void @halide_free(i8* %0, i8* nonnull %109) #6
  br label %141

135:                                              ; preds = %129, %126
  %136 = phi i8* [ %109, %129 ], [ %91, %126 ]
  %137 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %138 = load i8*, i8** %137, align 4, !tbaa !15
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i8* %136, i8** %137, align 4, !tbaa !15
  br label %141

141:                                              ; preds = %107, %125, %135, %140, %132, %134, %5, %2
  %142 = phi i32 [ %3, %2 ], [ 0, %5 ], [ -1, %107 ], [ -1, %125 ], [ %130, %134 ], [ %127, %132 ], [ 0, %140 ], [ 0, %135 ]
  ret i32 %142
}

declare i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i64 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.81, i32 0, i32 0)) #6
  tail call void @abort() #6
  %9 = load i64, i64* %5, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4, %8
  %12 = tail call i8* @malloc(i32 8) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = bitcast i8* %12 to i8**
  store i8* %2, i8** %15, align 4, !tbaa !51
  %16 = trunc i64 %3 to i32
  %17 = getelementptr inbounds i8, i8* %12, i32 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE, %struct.halide_device_interface_t** %19, align 8, !tbaa !68
  %20 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE, i32 0, i32 15), align 4, !tbaa !69
  %21 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %20, i32 0, i32 0
  %22 = load void ()*, void ()** %21, align 4, !tbaa !71
  tail call void %22() #6
  %23 = ptrtoint i8* %12 to i32
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %5, align 8, !tbaa !22
  br label %25

25:                                               ; preds = %14, %11, %8
  %26 = phi i32 [ -2, %8 ], [ 0, %14 ], [ -1, %11 ]
  ret i32 %26
}

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i64 @halide_hexagon_get_device_size(i8* %0, %struct.halide_buffer_t* %1) #7
  %4 = tail call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %1) #7
  %5 = tail call i32 @halide_hexagon_detach_device_handle(i8* %0, %struct.halide_buffer_t* %1) #7
  %6 = icmp ugt i64 %3, 4095
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 4, !tbaa !37
  tail call void %8(i8* %4) #6
  br label %10

9:                                                ; preds = %2
  tail call void @halide_free(i8* %0, i8* %4) #6
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %12 = load i8*, i8** %11, align 4, !tbaa !15
  %13 = icmp eq i8* %12, %4
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* null, i8** %11, align 4, !tbaa !15
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %17 = load i64, i64* %16, align 8, !tbaa !73
  %18 = and i64 %17, -3
  store i64 %18, i64* %16, align 8, !tbaa !73
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_hexagon_get_device_size(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !68
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.84, i32 0, i32 0)) #6
  tail call void @abort() #6
  %12 = load i64, i64* %3, align 8, !tbaa !3
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4, !tbaa !55
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %2, %14
  %21 = phi i64 [ %19, %14 ], [ 0, %2 ]
  ret i64 %21
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !68
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.83, i32 0, i32 0)) #6
  tail call void @abort() #6
  %12 = load i64, i64* %3, align 8, !tbaa !3
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 4, !tbaa !51
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i8* [ %18, %14 ], [ null, %2 ]
  ret i8* %20
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_detach_device_handle(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !68
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.82, i32 0, i32 0)) #6
  tail call void @abort() #6
  %12 = load i64, i64* %3, align 8, !tbaa !3
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to i8*
  tail call void @free(i8* %16) #6
  %17 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %17, i32 0, i32 15
  %19 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %18, align 4, !tbaa !69
  %20 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %19, i32 0, i32 1
  %21 = load void ()*, void ()** %20, align 4, !tbaa !74
  tail call void %21() #6
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !68
  br label %22

22:                                               ; preds = %2, %14
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %4 = tail call i32 @halide_hexagon_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %8 = load i8*, i8** %7, align 4, !tbaa !15
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.77, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %16) #8
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7
  %17 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %18 = ptrtoint i8* %17 to i32
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i32 0, i32 1
  store i64 %19, i64* %20, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %16) #8
  br label %21

21:                                               ; preds = %2, %15
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %5 = load i8*, i8** %4, align 4, !tbaa !15
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.79, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %7, %11
  %13 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %13) #8
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7
  %14 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %15 = ptrtoint i8* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i32 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !9
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %13) #8
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_hexagon_device_sync(i8* %0, %struct.halide_buffer_t* %1) #5 {
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_hexagon_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %1) #7
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  store i8* %6, i8** %7, align 4, !tbaa !15
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_hexagon_device_free(i8* %0, %struct.halide_buffer_t* %1) #7
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  store i8* null, i8** %4, align 4, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #0 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = icmp eq %struct.halide_device_interface_t* %2, null
  %7 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.87, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !73
  %13 = and i64 %12, 2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %17 = load i8*, i8** %16, align 4, !tbaa !15
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %21 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !tbaa !68
  %22 = icmp eq %struct.halide_device_interface_t* %21, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  br i1 %7, label %62, label %24

24:                                               ; preds = %23
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.88, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %62

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !68
  %28 = icmp eq %struct.halide_device_interface_t* %27, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %28, label %29, label %41

29:                                               ; preds = %19, %25
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !22
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = and i64 %12, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %38 = load i8*, i8** %37, align 4, !tbaa !15
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %36
  br label %41

41:                                               ; preds = %40, %25, %29, %36
  %42 = phi i1 [ true, %36 ], [ false, %40 ], [ true, %29 ], [ true, %25 ]
  br i1 %6, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !22
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.90, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %48

48:                                               ; preds = %47, %43, %41
  %49 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %49) #8
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %42, %struct.halide_buffer_t* %3, i1 zeroext %6) #7
  br i1 %42, label %55, label %50

50:                                               ; preds = %48
  %51 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %52 = ptrtoint i8* %51 to i32
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0
  store i64 %53, i64* %54, align 8, !tbaa !9
  br label %55

55:                                               ; preds = %50, %48
  br i1 %6, label %61, label %56

56:                                               ; preds = %55
  %57 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %3) #7
  %58 = ptrtoint i8* %57 to i32
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1
  store i64 %59, i64* %60, align 8, !tbaa !11
  br label %61

61:                                               ; preds = %56, %55
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %49) #8
  br label %62

62:                                               ; preds = %24, %23, %61
  %63 = phi i32 [ 0, %61 ], [ -42, %23 ], [ -42, %24 ]
  ret i32 %63
}

; Function Attrs: nounwind mustprogress
define weak i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = trunc i64 %5 to i32
  %7 = inttoptr i32 %6 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %8 = tail call i8* @malloc(i32 8) #6
  %9 = icmp eq i8* %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %7, i32 0, i32 0
  %12 = load i8*, i8** %11, align 4, !tbaa !51
  %13 = trunc i64 %1 to i32
  %14 = getelementptr inbounds i8, i8* %12, i32 %13
  %15 = bitcast i8* %8 to i8**
  store i8* %14, i8** %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4, !tbaa !55
  %18 = sub i32 %17, %13
  %19 = getelementptr inbounds i8, i8* %8, i32 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 4, !tbaa !55
  %21 = ptrtoint i8* %8 to i32
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0
  store i64 %22, i64* %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1
  %25 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1
  store %struct.halide_device_interface_t* %25, %struct.halide_device_interface_t** %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3
  %28 = load i64, i64* %27, align 8, !tbaa !73
  %29 = and i64 %28, 2
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 3
  %31 = load i64, i64* %30, align 8, !tbaa !73
  %32 = and i64 %31, -3
  %33 = or i64 %32, %29
  store i64 %33, i64* %30, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %10, %3
  %35 = phi i32 [ -11, %3 ], [ 0, %10 ]
  ret i32 %35
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %27, label %12, label %28, !llvm.loop !75

28:                                               ; preds = %12, %3
  %29 = phi i64 [ 0, %3 ], [ %25, %12 ]
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %29, %35
  %37 = tail call i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #7
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #7
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = trunc i64 %4 to i32
  %6 = inttoptr i32 %5 to i8*
  tail call void @free(i8* %6) #6
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_power_hvx_on(i8* %0) local_unnamed_addr #4 {
  %2 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE, align 4, !tbaa !37
  %6 = icmp eq i32 ()* %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = tail call i32 %5() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i32 1024) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i32 0, i32 0)) #6
  %18 = ptrtoint i8* %17 to i32
  %19 = ptrtoint i8* %11 to i32
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %22) #6
  tail call void @halide_error(i8* %0, i8* nonnull %11) #6
  br label %24

24:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #6
  br label %25

25:                                               ; preds = %7, %4, %1, %24
  %26 = phi i32 [ %8, %24 ], [ %2, %1 ], [ 0, %4 ], [ 0, %7 ]
  ret i32 %26
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_power_hvx_off(i8* %0) local_unnamed_addr #4 {
  %2 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE, align 4, !tbaa !37
  %6 = icmp eq i32 ()* %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = tail call i32 %5() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i32 1024) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i32 0, i32 0)) #6
  %18 = ptrtoint i8* %17 to i32
  %19 = ptrtoint i8* %11 to i32
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %22) #6
  tail call void @halide_error(i8* %0, i8* nonnull %11) #6
  br label %24

24:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #6
  br label %25

25:                                               ; preds = %7, %4, %1, %24
  %26 = phi i32 [ %8, %24 ], [ %2, %1 ], [ 0, %4 ], [ 0, %7 ]
  ret i32 %26
}

; Function Attrs: nounwind mustprogress
define weak void @halide_hexagon_power_hvx_off_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i32 @halide_hexagon_power_hvx_off(i8* %0) #7
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_set_performance_mode(i8* %0, i32 %1) local_unnamed_addr #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE, align 4, !tbaa !37
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 %6(i32 %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @malloc(i32 1024) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0)) #6
  %19 = ptrtoint i8* %18 to i32
  %20 = ptrtoint i8* %12 to i32
  %21 = add i32 %19, 1
  %22 = sub i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %23) #6
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6
  br label %26

26:                                               ; preds = %8, %5, %2, %25
  %27 = phi i32 [ %9, %25 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_set_performance(i8* %0, %struct.halide_hexagon_power_t* %1) local_unnamed_addr #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %2
  %6 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE, align 4, !tbaa !37
  %7 = icmp eq i32 (i32, i32, i32, i32, i32, i32, i32, i32)* %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 0
  %10 = load i8, i8* %9, align 4, !tbaa !76, !range !48
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !78
  %14 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !79
  %16 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 3
  %17 = load i8, i8* %16, align 4, !tbaa !80, !range !48
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 4
  %20 = load i32, i32* %19, align 4, !tbaa !81
  %21 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 5
  %22 = load i16, i16* %21, align 4, !tbaa !82
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 6
  %25 = load i8, i8* %24, align 2, !tbaa !83, !range !48
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i32 0, i32 7
  %28 = load i32, i32* %27, align 4, !tbaa !84
  %29 = tail call i32 %6(i32 %11, i32 %13, i32 %15, i32 %18, i32 %20, i32 %23, i32 %26, i32 %28) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %8
  %32 = tail call i8* @malloc(i32 1024) #6
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i32 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i32 0, i32 0)) #6
  %39 = ptrtoint i8* %38 to i32
  %40 = ptrtoint i8* %32 to i32
  %41 = add i32 %39, 1
  %42 = sub i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %43) #6
  tail call void @halide_error(i8* %0, i8* nonnull %32) #6
  br label %45

45:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #6
  br label %46

46:                                               ; preds = %8, %5, %2, %45
  %47 = phi i32 [ %29, %45 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %47
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_set_thread_priority(i8* %0, i32 %1) local_unnamed_addr #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE, align 4, !tbaa !37
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 %6(i32 %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @malloc(i32 1024) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i32 0, i32 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0)) #6
  br label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i32 0, i32 0)) #6
  %19 = ptrtoint i8* %18 to i32
  %20 = ptrtoint i8* %12 to i32
  %21 = add i32 %19, 1
  %22 = sub i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %23) #6
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6
  br label %26

26:                                               ; preds = %8, %5, %2, %25
  %27 = phi i32 [ %9, %25 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_hexagon_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
}

; Function Attrs: nounwind mustprogress
define weak void @halide_hexagon_cleanup() #0 {
  %1 = tail call i32 @halide_hexagon_device_release(i8* null) #7
  ret void
}

declare extern_weak void @halide_use_jit_module() #2

declare extern_weak void @halide_release_jit_module() #2

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

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

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
!38 = !{!21, !21, i64 0}
!39 = !{!40, !21, i64 0}
!40 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon12module_stateE", !21, i64 0, !17, i64 4}
!41 = !{!40, !17, i64 4}
!42 = !{!43, !17, i64 12}
!43 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !44, i64 16, !5, i64 17}
!44 = !{!"bool", !5, i64 0}
!45 = !{!43, !44, i64 16}
!46 = !{!43, !17, i64 0}
!47 = !{!43, !17, i64 4}
!48 = !{i8 0, i8 2}
!49 = !{!50, !4, i64 0}
!50 = !{!"_ZTSZ13map_argumentsE22hexagon_device_pointer", !4, i64 0, !17, i64 8}
!51 = !{!52, !17, i64 0}
!52 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon17ion_device_handleE", !17, i64 0, !21, i64 4}
!53 = !{!54, !17, i64 0}
!54 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon25_remote_buffer__seq_octetE", !17, i64 0, !21, i64 4}
!55 = !{!52, !21, i64 4}
!56 = !{!50, !17, i64 8}
!57 = !{!54, !21, i64 4}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = !{!61, !17, i64 24}
!61 = !{!"_ZTS21halide_profiler_state", !62, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !17, i64 20, !17, i64 24, !17, i64 28}
!62 = !{!"_ZTS12halide_mutex", !5, i64 0}
!63 = !{!61, !21, i64 12}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = !{!16, !17, i64 8}
!69 = !{!70, !17, i64 60}
!70 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!71 = !{!72, !17, i64 0}
!72 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!73 = !{!16, !4, i64 16}
!74 = !{!72, !17, i64 4}
!75 = distinct !{!75, !8}
!76 = !{!77, !44, i64 0}
!77 = !{!"_ZTS22halide_hexagon_power_t", !44, i64 0, !21, i64 4, !21, i64 8, !44, i64 12, !21, i64 16, !20, i64 20, !44, i64 22, !21, i64 24}
!78 = !{!77, !21, i64 4}
!79 = !{!77, !21, i64 8}
!80 = !{!77, !44, i64 12}
!81 = !{!77, !21, i64 16}
!82 = !{!77, !20, i64 20}
!83 = !{!77, !44, i64 22}
!84 = !{!77, !21, i64 24}
