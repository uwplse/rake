; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_host.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet" = type { i8*, i32, [4 x i8] }
%"struct.Halide::Runtime::Internal::Hexagon::module_state" = type { i32, %"struct.Halide::Runtime::Internal::Hexagon::module_state"* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.hexagon_device_pointer = type { i64, i8* }
%"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle" = type { i8*, i64 }
%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque
%struct.halide_hexagon_power_t = type { i8, i32, i32, i8, i32, i16, i8, i32 }

@_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE = weak local_unnamed_addr global i32 (i8*, i32, i8*, i32, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE = weak local_unnamed_addr global i32 (i32, i8*, i32, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon10remote_runE = weak local_unnamed_addr global i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE = weak local_unnamed_addr global i32 (i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE = weak local_unnamed_addr global i32 (i8*, i32, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE = weak local_unnamed_addr global void (i32*, i32*)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE = weak local_unnamed_addr global i32 (i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE = weak local_unnamed_addr global i32 ()* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE = weak local_unnamed_addr global i32 ()* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE = weak local_unnamed_addr global i32 (i32, i32, i32, i32, i32, i32, i32, i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE = weak local_unnamed_addr global i32 (i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE = weak local_unnamed_addr global i32 (i32)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE = weak local_unnamed_addr global void ()* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE = weak local_unnamed_addr global void ()* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE = weak local_unnamed_addr global i8* (i64)* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon9host_freeE = weak local_unnamed_addr global void (i8*)* null, align 8
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
@_ZN6Halide7Runtime8Internal7Hexagon10state_listE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::module_state"* null, align 8
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
@_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal7Hexagon29hexagon_device_interface_implE }, align 8
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
@_ZN6Halide7Runtime8Internal7Hexagon29hexagon_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_sync, i32 (i8*)* @halide_hexagon_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_default_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_default_device_detach_native }, align 8
@.str.109 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"Required Hexagon runtime symbol '\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"' not found.\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_hexagon_cleanup, i8* null }]

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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #6
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #7
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
  %4 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE, align 8, !tbaa !37
  %5 = icmp eq i32 (i8*, i32, i32*)* %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #8
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i32 0, i32* %3, align 4, !tbaa !38
  %9 = call i32 %4(i8* nonnull %7, i32 1024, i32* nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %34, %6
  %12 = phi i32 [ %9, %6 ], [ %36, %34 ]
  %13 = call i8* @malloc(i64 1024) #6
  %14 = icmp eq i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8* [ %16, %15 ], [ null, %11 ]
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #6
  %20 = sext i32 %12 to i64
  %21 = call i8* @halide_int64_to_string(i8* %19, i8* %18, i64 %20, i32 1) #6
  %22 = call i8* @halide_string_to_string(i8* %21, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  br i1 %14, label %23, label %24

23:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %13 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %28) #6
  call void @halide_print(i8* %0, i8* nonnull %13) #6
  br label %30

30:                                               ; preds = %24, %23
  call void @free(i8* %13) #6
  br label %38

31:                                               ; preds = %6, %34
  %32 = load i32, i32* %3, align 4, !tbaa !38
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  call void @halide_print(i8* %0, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #8
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i32 0, i32* %3, align 4, !tbaa !38
  %35 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE, align 8, !tbaa !37
  %36 = call i32 %35(i8* nonnull %7, i32 1024, i32* nonnull %3) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %31, label %11

38:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #8
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal7Hexagon25get_remote_profiler_stateEPiS3_(i32* %0, i32* %1) #4 {
  %3 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 8, !tbaa !37
  %4 = icmp eq void (i32*, i32*)* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call i8* @malloc(i64 1024) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #6
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #6
  %13 = ptrtoint i8* %12 to i64
  %14 = ptrtoint i8* %6 to i64
  %15 = add i64 %13, 1
  %16 = sub i64 %15, %14
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %6, i64 %16) #6
  tail call void @halide_error(i8* null, i8* nonnull %6) #6
  br label %18

18:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #6
  %19 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 8, !tbaa !37
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi void (i32*, i32*)* [ %19, %18 ], [ %3, %2 ]
  tail call void %21(i32* %0, i32* %1) #6
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 8, !tbaa !37
  %3 = icmp ne i32 (i8*, i32, i8*, i32, i32*)* %2, null
  %4 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 8
  %5 = icmp ne i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* %4, null
  %6 = and i1 %3, %5
  %7 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 8
  %8 = icmp ne i32 (i32)* %7, null
  %9 = and i1 %6, %8
  br i1 %9, label %234, label %10

10:                                               ; preds = %1
  %11 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i8* [ %11, %10 ], [ %14, %13 ]
  %17 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #6
  store i8* %17, i8** bitcast (i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE to i8**), align 8, !tbaa !37
  %18 = icmp eq i8* %17, null
  %19 = bitcast i8* %17 to i32 (i8*, i32, i8*, i32, i32*)*
  br i1 %18, label %20, label %39

20:                                               ; preds = %15
  %21 = tail call i8* @malloc(i64 1024) #6
  %22 = icmp eq i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, i8* %21, i64 1023
  store i8 0, i8* %24, align 1, !tbaa !36
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i8* [ %24, %23 ], [ null, %20 ]
  %27 = tail call i8* @halide_string_to_string(i8* %21, i8* %26, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %26, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #6
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %26, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %22, label %30, label %31

30:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %37

31:                                               ; preds = %25
  %32 = ptrtoint i8* %29 to i64
  %33 = ptrtoint i8* %21 to i64
  %34 = sub i64 1, %33
  %35 = add i64 %34, %32
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %35) #6
  tail call void @halide_error(i8* %0, i8* nonnull %21) #6
  br label %37

37:                                               ; preds = %31, %30
  tail call void @free(i8* %21) #6
  %38 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %15, %37
  %40 = phi i32 (i8*, i32, i8*, i32, i32*)* [ %19, %15 ], [ %38, %37 ]
  %41 = icmp eq i32 (i8*, i32, i8*, i32, i32*)* %40, null
  br i1 %41, label %234, label %42

42:                                               ; preds = %39
  %43 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6
  store i8* %43, i8** bitcast (i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE to i8**), align 8, !tbaa !37
  %44 = icmp eq i8* %43, null
  %45 = bitcast i8* %43 to i32 (i32, i8*, i32, i32*)*
  br i1 %44, label %46, label %65

46:                                               ; preds = %42
  %47 = tail call i8* @malloc(i64 1024) #6
  %48 = icmp eq i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, i8* %47, i64 1023
  store i8 0, i8* %50, align 1, !tbaa !36
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i8* [ %50, %49 ], [ null, %46 ]
  %53 = tail call i8* @halide_string_to_string(i8* %47, i8* %52, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %54 = tail call i8* @halide_string_to_string(i8* %53, i8* %52, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %52, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %48, label %56, label %57

56:                                               ; preds = %51
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %63

57:                                               ; preds = %51
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %47 to i64
  %60 = sub i64 1, %59
  %61 = add i64 %60, %58
  %62 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %61) #6
  tail call void @halide_error(i8* %0, i8* nonnull %47) #6
  br label %63

63:                                               ; preds = %57, %56
  tail call void @free(i8* %47) #6
  %64 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE, align 8, !tbaa !37
  br label %65

65:                                               ; preds = %42, %63
  %66 = phi i32 (i32, i8*, i32, i32*)* [ %45, %42 ], [ %64, %63 ]
  %67 = icmp eq i32 (i32, i8*, i32, i32*)* %66, null
  br i1 %67, label %234, label %68

68:                                               ; preds = %65
  %69 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #6
  store i8* %69, i8** bitcast (i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE to i8**), align 8, !tbaa !37
  %70 = icmp eq i8* %69, null
  %71 = bitcast i8* %69 to i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*
  br i1 %70, label %72, label %91

72:                                               ; preds = %68
  %73 = tail call i8* @malloc(i64 1024) #6
  %74 = icmp eq i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, i8* %73, i64 1023
  store i8 0, i8* %76, align 1, !tbaa !36
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i8* [ %76, %75 ], [ null, %72 ]
  %79 = tail call i8* @halide_string_to_string(i8* %73, i8* %78, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %78, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #6
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %78, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %74, label %82, label %83

82:                                               ; preds = %77
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %89

83:                                               ; preds = %77
  %84 = ptrtoint i8* %81 to i64
  %85 = ptrtoint i8* %73 to i64
  %86 = sub i64 1, %85
  %87 = add i64 %86, %84
  %88 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %73, i64 %87) #6
  tail call void @halide_error(i8* %0, i8* nonnull %73) #6
  br label %89

89:                                               ; preds = %83, %82
  tail call void @free(i8* %73) #6
  %90 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 8, !tbaa !37
  br label %91

91:                                               ; preds = %68, %89
  %92 = phi i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* [ %71, %68 ], [ %90, %89 ]
  %93 = icmp eq i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)* %92, null
  br i1 %93, label %234, label %94

94:                                               ; preds = %91
  %95 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0)) #6
  store i8* %95, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE to i8**), align 8, !tbaa !37
  %96 = icmp eq i8* %95, null
  %97 = bitcast i8* %95 to i32 (i32)*
  br i1 %96, label %98, label %117

98:                                               ; preds = %94
  %99 = tail call i8* @malloc(i64 1024) #6
  %100 = icmp eq i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, i8* %99, i64 1023
  store i8 0, i8* %102, align 1, !tbaa !36
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i8* [ %102, %101 ], [ null, %98 ]
  %105 = tail call i8* @halide_string_to_string(i8* %99, i8* %104, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %106 = tail call i8* @halide_string_to_string(i8* %105, i8* %104, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0)) #6
  %107 = tail call i8* @halide_string_to_string(i8* %106, i8* %104, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %100, label %108, label %109

108:                                              ; preds = %103
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %115

109:                                              ; preds = %103
  %110 = ptrtoint i8* %107 to i64
  %111 = ptrtoint i8* %99 to i64
  %112 = sub i64 1, %111
  %113 = add i64 %112, %110
  %114 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %99, i64 %113) #6
  tail call void @halide_error(i8* %0, i8* nonnull %99) #6
  br label %115

115:                                              ; preds = %109, %108
  tail call void @free(i8* %99) #6
  %116 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 8, !tbaa !37
  br label %117

117:                                              ; preds = %94, %115
  %118 = phi i32 (i32)* [ %97, %94 ], [ %116, %115 ]
  %119 = icmp eq i32 (i32)* %118, null
  br i1 %119, label %234, label %120

120:                                              ; preds = %117
  %121 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0)) #6
  store i8* %121, i8** bitcast (void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE to i8**), align 8, !tbaa !37
  %122 = icmp eq i8* %121, null
  %123 = bitcast i8* %121 to void ()*
  br i1 %122, label %124, label %143

124:                                              ; preds = %120
  %125 = tail call i8* @malloc(i64 1024) #6
  %126 = icmp eq i8* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds i8, i8* %125, i64 1023
  store i8 0, i8* %128, align 1, !tbaa !36
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i8* [ %128, %127 ], [ null, %124 ]
  %131 = tail call i8* @halide_string_to_string(i8* %125, i8* %130, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %132 = tail call i8* @halide_string_to_string(i8* %131, i8* %130, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0)) #6
  %133 = tail call i8* @halide_string_to_string(i8* %132, i8* %130, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %126, label %134, label %135

134:                                              ; preds = %129
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %141

135:                                              ; preds = %129
  %136 = ptrtoint i8* %133 to i64
  %137 = ptrtoint i8* %125 to i64
  %138 = sub i64 1, %137
  %139 = add i64 %138, %136
  %140 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %125, i64 %139) #6
  tail call void @halide_error(i8* %0, i8* nonnull %125) #6
  br label %141

141:                                              ; preds = %135, %134
  tail call void @free(i8* %125) #6
  %142 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE, align 8, !tbaa !37
  br label %143

143:                                              ; preds = %120, %141
  %144 = phi void ()* [ %123, %120 ], [ %142, %141 ]
  %145 = icmp eq void ()* %144, null
  br i1 %145, label %234, label %146

146:                                              ; preds = %143
  %147 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #6
  store i8* %147, i8** bitcast (void ()** @_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE to i8**), align 8, !tbaa !37
  %148 = icmp eq i8* %147, null
  %149 = bitcast i8* %147 to void ()*
  br i1 %148, label %150, label %169

150:                                              ; preds = %146
  %151 = tail call i8* @malloc(i64 1024) #6
  %152 = icmp eq i8* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds i8, i8* %151, i64 1023
  store i8 0, i8* %154, align 1, !tbaa !36
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi i8* [ %154, %153 ], [ null, %150 ]
  %157 = tail call i8* @halide_string_to_string(i8* %151, i8* %156, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %158 = tail call i8* @halide_string_to_string(i8* %157, i8* %156, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #6
  %159 = tail call i8* @halide_string_to_string(i8* %158, i8* %156, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %152, label %160, label %161

160:                                              ; preds = %155
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %167

161:                                              ; preds = %155
  %162 = ptrtoint i8* %159 to i64
  %163 = ptrtoint i8* %151 to i64
  %164 = sub i64 1, %163
  %165 = add i64 %164, %162
  %166 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %151, i64 %165) #6
  tail call void @halide_error(i8* %0, i8* nonnull %151) #6
  br label %167

167:                                              ; preds = %161, %160
  tail call void @free(i8* %151) #6
  %168 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon18host_malloc_deinitE, align 8, !tbaa !37
  br label %169

169:                                              ; preds = %146, %167
  %170 = phi void ()* [ %149, %146 ], [ %168, %167 ]
  %171 = icmp eq void ()* %170, null
  br i1 %171, label %234, label %172

172:                                              ; preds = %169
  %173 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #6
  store i8* %173, i8** bitcast (i8* (i64)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE to i8**), align 8, !tbaa !37
  %174 = icmp eq i8* %173, null
  %175 = bitcast i8* %173 to i8* (i64)*
  br i1 %174, label %176, label %195

176:                                              ; preds = %172
  %177 = tail call i8* @malloc(i64 1024) #6
  %178 = icmp eq i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i64 1023
  store i8 0, i8* %180, align 1, !tbaa !36
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i8* [ %180, %179 ], [ null, %176 ]
  %183 = tail call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %184 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #6
  %185 = tail call i8* @halide_string_to_string(i8* %184, i8* %182, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %178, label %186, label %187

186:                                              ; preds = %181
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %193

187:                                              ; preds = %181
  %188 = ptrtoint i8* %185 to i64
  %189 = ptrtoint i8* %177 to i64
  %190 = sub i64 1, %189
  %191 = add i64 %190, %188
  %192 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %191) #6
  tail call void @halide_error(i8* %0, i8* nonnull %177) #6
  br label %193

193:                                              ; preds = %187, %186
  tail call void @free(i8* %177) #6
  %194 = load i8* (i64)*, i8* (i64)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE, align 8, !tbaa !37
  br label %195

195:                                              ; preds = %172, %193
  %196 = phi i8* (i64)* [ %175, %172 ], [ %194, %193 ]
  %197 = icmp eq i8* (i64)* %196, null
  br i1 %197, label %234, label %198

198:                                              ; preds = %195
  %199 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #6
  store i8* %199, i8** bitcast (void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE to i8**), align 8, !tbaa !37
  %200 = icmp eq i8* %199, null
  %201 = bitcast i8* %199 to void (i8*)*
  br i1 %200, label %202, label %221

202:                                              ; preds = %198
  %203 = tail call i8* @malloc(i64 1024) #6
  %204 = icmp eq i8* %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, i8* %203, i64 1023
  store i8 0, i8* %206, align 1, !tbaa !36
  br label %207

207:                                              ; preds = %205, %202
  %208 = phi i8* [ %206, %205 ], [ null, %202 ]
  %209 = tail call i8* @halide_string_to_string(i8* %203, i8* %208, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.113, i64 0, i64 0)) #6
  %210 = tail call i8* @halide_string_to_string(i8* %209, i8* %208, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #6
  %211 = tail call i8* @halide_string_to_string(i8* %210, i8* %208, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br i1 %204, label %212, label %213

212:                                              ; preds = %207
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %219

213:                                              ; preds = %207
  %214 = ptrtoint i8* %211 to i64
  %215 = ptrtoint i8* %203 to i64
  %216 = sub i64 1, %215
  %217 = add i64 %216, %214
  %218 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %203, i64 %217) #6
  tail call void @halide_error(i8* %0, i8* nonnull %203) #6
  br label %219

219:                                              ; preds = %213, %212
  tail call void @free(i8* %203) #6
  %220 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 8, !tbaa !37
  br label %221

221:                                              ; preds = %198, %219
  %222 = phi void (i8*)* [ %201, %198 ], [ %220, %219 ]
  %223 = icmp eq void (i8*)* %222, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %221
  %225 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #6
  store i8* %225, i8** bitcast (i32 (i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon15remote_poll_logE to i8**), align 8, !tbaa !37
  %226 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #6
  store i8* %226, i8** bitcast (void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE to i8**), align 8, !tbaa !37
  %227 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0)) #6
  store i8* %227, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE to i8**), align 8, !tbaa !37
  %228 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #6
  store i8* %228, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE to i8**), align 8, !tbaa !37
  %229 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %229, i8** bitcast (i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE to i8**), align 8, !tbaa !37
  %230 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0)) #6
  store i8* %230, i8** bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE to i8**), align 8, !tbaa !37
  %231 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #6
  store i8* %231, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE to i8**), align 8, !tbaa !37
  %232 = tail call i8* @halide_get_library_symbol(i8* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0)) #6
  store i8* %232, i8** bitcast (i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE to i8**), align 8, !tbaa !37
  %233 = load void ()*, void ()** @_ZN6Halide7Runtime8Internal7Hexagon16host_malloc_initE, align 8, !tbaa !37
  tail call void %233() #6
  br label %234

234:                                              ; preds = %224, %39, %65, %91, %117, %143, %169, %195, %221, %1
  %235 = phi i32 [ 0, %1 ], [ 0, %224 ], [ -1, %39 ], [ -1, %65 ], [ -1, %91 ], [ -1, %117 ], [ -1, %143 ], [ -1, %169 ], [ -1, %195 ], [ -1, %221 ]
  ret i32 %235
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
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", align 8
  %9 = alloca i32, align 4
  %10 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %154

12:                                               ; preds = %6
  %13 = trunc i64 %3 to i32
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  %14 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = trunc i64 %5 to i32
  %18 = getelementptr inbounds [28 x i8], [28 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %18) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(28) %18, i8* nonnull align 1 dereferenceable(28) getelementptr inbounds ([28 x i8], [28 x i8]* @__const.halide_hexagon_initialize_kernels.soname, i64 0, i64 0), i64 28, i1 false)
  %19 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 8, !tbaa !37
  %20 = call i32 %19(i8* nonnull %18, i32 28, i8* %4, i32 %17, i32* nonnull @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.34, i64 0, i64 0)) #6
  call void @abort() #6
  br label %39

26:                                               ; preds = %16
  %27 = call i8* @malloc(i64 1024) #6
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i8* @halide_string_to_string(i8* %27, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i64 1023
  store i8 0, i8* %32, align 1, !tbaa !36
  %33 = call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0)) #6
  %34 = ptrtoint i8* %33 to i64
  %35 = ptrtoint i8* %27 to i64
  %36 = add i64 %34, 1
  %37 = sub i64 %36, %35
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %37) #6
  call void @halide_error(i8* %0, i8* nonnull %27) #6
  br label %40

39:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %18) #8
  br label %41

40:                                               ; preds = %31, %29
  call void @free(i8* %27) #6
  store i32 0, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %18) #8
  br label %152

41:                                               ; preds = %12, %39
  %42 = bitcast i8** %1 to %"struct.Halide::Runtime::Internal::Hexagon::module_state"**
  %43 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %42, align 8, !tbaa !37
  %44 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i8* @malloc(i64 16) #6
  store i8* %46, i8** %1, align 8, !tbaa !37
  %47 = bitcast i8* %46 to i32*
  store i32 0, i32* %47, align 8, !tbaa !39
  %48 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 8, !tbaa !37
  %49 = getelementptr inbounds i8, i8* %46, i64 8
  %50 = bitcast i8* %49 to %"struct.Halide::Runtime::Internal::Hexagon::module_state"**
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %48, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %50, align 8, !tbaa !41
  %51 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %42, align 8, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %51, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 8, !tbaa !37
  %52 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %42, align 8, !tbaa !37
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi %"struct.Halide::Runtime::Internal::Hexagon::module_state"* [ %52, %45 ], [ %43, %41 ]
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %54, i64 0, i32 0
  %56 = load i32, i32* %55, align 8, !tbaa !39
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %152

58:                                               ; preds = %53
  %59 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %59) #8
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i64 0, i32 3
  store i8* %0, i8** %60, align 8, !tbaa !42
  %61 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i64 0, i32 4
  store i8 1, i8* %61, align 8, !tbaa !45
  %62 = call i8* @malloc(i64 1024) #6
  %63 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i64 0, i32 0
  store i8* %62, i8** %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i64 0, i32 1
  %65 = icmp eq i8* %62, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds i8, i8* %62, i64 1023
  store i8 0, i8* %67, align 1, !tbaa !36
  br label %68

68:                                               ; preds = %58, %66
  %69 = phi i8* [ %67, %66 ], [ null, %58 ]
  %70 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.2"* %8, i64 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = call i8* @halide_string_to_string(i8* %62, i8* %69, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0)) #6
  %72 = load i32, i32* @_ZZ33halide_hexagon_initialize_kernelsE9unique_id, align 4, !tbaa !38
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @_ZZ33halide_hexagon_initialize_kernelsE9unique_id, align 4, !tbaa !38
  %74 = sext i32 %72 to i64
  %75 = call i8* @halide_int64_to_string(i8* %71, i8* %69, i64 %74, i32 1) #6
  %76 = call i8* @halide_string_to_string(i8* %75, i8* %69, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #6
  store i8* %76, i8** %64, align 8, !tbaa !47
  br i1 %65, label %77, label %80

77:                                               ; preds = %68
  %78 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %78) #8
  store i32 0, i32* %9, align 4, !tbaa !38
  %79 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 8, !tbaa !37
  br label %99

80:                                               ; preds = %68
  %81 = ptrtoint i8* %76 to i64
  %82 = ptrtoint i8* %62 to i64
  %83 = add i64 %81, 1
  %84 = sub i64 %83, %82
  %85 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %62, i64 %84) #6
  %86 = load i8*, i8** %63, align 8, !tbaa !46
  %87 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %87) #8
  store i32 0, i32* %9, align 4, !tbaa !38
  %88 = load i32 (i8*, i32, i8*, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon19remote_load_libraryE, align 8, !tbaa !37
  %89 = icmp eq i8* %86, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %80
  %91 = load i8*, i8** %64, align 8, !tbaa !47
  %92 = load i8*, i8** %60, align 8, !tbaa !42
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %86 to i64
  %95 = sub i64 1, %94
  %96 = add i64 %95, %93
  %97 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %92, i8* nonnull %86, i64 %96) #6
  %98 = load i8*, i8** %63, align 8, !tbaa !46
  br label %99

99:                                               ; preds = %77, %80, %90
  %100 = phi i8* [ %98, %90 ], [ null, %80 ], [ null, %77 ]
  %101 = phi i32 (i8*, i32, i8*, i32, i32*)* [ %88, %90 ], [ %88, %80 ], [ %79, %77 ]
  %102 = phi i8* [ %87, %90 ], [ %87, %80 ], [ %78, %77 ]
  %103 = phi i8* [ %98, %90 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0), %80 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0), %77 ]
  %104 = load i8*, i8** %64, align 8, !tbaa !47
  %105 = ptrtoint i8* %104 to i64
  %106 = ptrtoint i8* %100 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = add i32 %108, 1
  %110 = call i32 %101(i8* %103, i32 %109, i8* %2, i32 %13, i32* nonnull %9) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4, !tbaa !38
  %114 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %42, align 8, !tbaa !37
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %114, i64 0, i32 0
  store i32 %113, i32* %115, align 8, !tbaa !39
  br label %131

116:                                              ; preds = %99
  %117 = call i8* @malloc(i64 1024) #6
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i8* @halide_string_to_string(i8* %117, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %129

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %122, align 1, !tbaa !36
  %123 = call i8* @halide_string_to_string(i8* nonnull %117, i8* nonnull %122, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0)) #6
  %124 = ptrtoint i8* %123 to i64
  %125 = ptrtoint i8* %117 to i64
  %126 = add i64 %124, 1
  %127 = sub i64 %126, %125
  %128 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %127) #6
  call void @halide_error(i8* %0, i8* nonnull %117) #6
  br label %129

129:                                              ; preds = %121, %119
  call void @free(i8* %117) #6
  %130 = load i8*, i8** %63, align 8, !tbaa !46
  br label %131

131:                                              ; preds = %129, %112
  %132 = phi i8* [ %130, %129 ], [ %100, %112 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %102) #8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8*, i8** %60, align 8, !tbaa !42
  call void @halide_error(i8* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %144

136:                                              ; preds = %131
  %137 = load i8*, i8** %64, align 8, !tbaa !47
  %138 = load i8*, i8** %60, align 8, !tbaa !42
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %132 to i64
  %141 = sub i64 1, %140
  %142 = add i64 %141, %139
  %143 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %138, i8* nonnull %132, i64 %142) #6
  br label %144

144:                                              ; preds = %136, %134
  %145 = load i8, i8* %61, align 8, !tbaa !45, !range !48
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %63, align 8, !tbaa !46
  call void @free(i8* %148) #6
  br label %149

149:                                              ; preds = %144, %147
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #8
  %150 = icmp ne i32 %110, 0
  %151 = sext i1 %150 to i32
  br label %152

152:                                              ; preds = %53, %40, %149
  %153 = phi i32 [ -1, %40 ], [ %151, %149 ], [ 0, %53 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  br label %154

154:                                              ; preds = %6, %152
  %155 = phi i32 [ %153, %152 ], [ %10, %6 ]
  ret i32 %155
}

declare void @abort() local_unnamed_addr #2

declare i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_hexagon_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @map_arguments(i8* %0, i32 %1, i64* %2, i8** %3, i32* %4, i32 %5, i32 %6, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7) local_unnamed_addr #0 {
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %14

12:                                               ; preds = %53, %8
  %13 = phi i32 [ 0, %8 ], [ %54, %53 ]
  ret i32 %13

14:                                               ; preds = %10, %53
  %15 = phi i64 [ 0, %10 ], [ %55, %53 ]
  %16 = phi i32 [ 0, %10 ], [ %54, %53 ]
  %17 = getelementptr inbounds i32, i32* %4, i64 %15
  %18 = load i32, i32* %17, align 4, !tbaa !38
  %19 = and i32 %18, %5
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %53

21:                                               ; preds = %14
  %22 = add nsw i32 %16, 1
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7, i64 %23
  %25 = icmp eq i32 %18, 0
  %26 = getelementptr inbounds i8*, i8** %3, i64 %15
  br i1 %25, label %44, label %27

27:                                               ; preds = %21
  %28 = bitcast i8** %26 to %struct.hexagon_device_pointer**
  %29 = load %struct.hexagon_device_pointer*, %struct.hexagon_device_pointer** %28, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.hexagon_device_pointer, %struct.hexagon_device_pointer* %29, i64 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !49
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = inttoptr i64 %31 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %34, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !51
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %24, i64 0, i32 0
  store i8* %36, i8** %37, align 8, !tbaa !54
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %34, i64 0, i32 1
  br label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.hexagon_device_pointer, %struct.hexagon_device_pointer* %29, i64 0, i32 1
  %41 = load i8*, i8** %40, align 8, !tbaa !56
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %24, i64 0, i32 0
  store i8* %41, i8** %42, align 8, !tbaa !54
  %43 = getelementptr inbounds i64, i64* %2, i64 %15
  br label %48

44:                                               ; preds = %21
  %45 = load i8*, i8** %26, align 8, !tbaa !37
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %24, i64 0, i32 0
  store i8* %45, i8** %46, align 8, !tbaa !54
  %47 = getelementptr inbounds i64, i64* %2, i64 %15
  br label %48

48:                                               ; preds = %44, %39, %33
  %49 = phi i64* [ %38, %33 ], [ %43, %39 ], [ %47, %44 ]
  %50 = load i64, i64* %49, align 8, !tbaa !36
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %7, i64 %23, i32 1
  store i32 %51, i32* %52, align 8, !tbaa !57
  br label %53

53:                                               ; preds = %48, %14
  %54 = phi i32 [ %16, %14 ], [ %22, %48 ]
  %55 = add nuw nsw i64 %15, 1
  %56 = icmp eq i64 %55, %11
  br i1 %56, label %12, label %14, !llvm.loop !58
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_run(i8* %0, i8* %1, i8* %2, i32* %3, i64* %4, i8** %5, i32* %6) local_unnamed_addr #4 {
  %8 = alloca i32, align 4
  %9 = icmp eq i8* %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.42, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq i32* %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.43, i64 0, i64 0)) #6
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
  %20 = load i32, i32* %19, align 8, !tbaa !39
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
  %27 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon17remote_get_symbolE, align 8, !tbaa !37
  %28 = tail call i64 @strlen(i8* %2) #6
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %31 = call i32 %27(i32 %22, i8* %2, i32 %30, i32* nonnull %8) #6
  %32 = icmp eq i32 %31, 0
  %33 = load i32, i32* %8, align 4
  %34 = select i1 %32, i32 %33, i32 0
  store i32 %34, i32* %3, align 4, !tbaa !38
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %35 = load i32, i32* %3, align 4, !tbaa !38
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %25
  %38 = call i8* @malloc(i64 1024) #6
  %39 = icmp eq i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, i8* %38, i64 1023
  store i8 0, i8* %41, align 1, !tbaa !36
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i8* [ %41, %40 ], [ null, %37 ]
  %44 = call i8* @halide_string_to_string(i8* %38, i8* %43, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0)) #6
  %45 = icmp eq i8* %2, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i8* @halide_string_to_string(i8* %44, i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i64 0, i64 0)) #6
  br label %50

48:                                               ; preds = %42
  %49 = call i8* @halide_string_to_string(i8* %44, i8* %43, i8* nonnull %2) #6
  br label %50

50:                                               ; preds = %46, %48
  %51 = phi i8* [ %49, %48 ], [ %47, %46 ]
  %52 = call i8* @halide_string_to_string(i8* %51, i8* %43, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0)) #6
  br i1 %39, label %53, label %54

53:                                               ; preds = %50
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %60

54:                                               ; preds = %50
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %38 to i64
  %57 = add i64 %55, 1
  %58 = sub i64 %57, %56
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %38, i64 %58) #6
  call void @halide_error(i8* %0, i8* nonnull %38) #6
  br label %60

60:                                               ; preds = %54, %53
  call void @free(i8* %38) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8
  br label %119

61:                                               ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8
  br label %62

62:                                               ; preds = %61, %21
  br label %63

63:                                               ; preds = %62, %63
  %64 = phi i64 [ %68, %63 ], [ 0, %62 ]
  %65 = getelementptr inbounds i64, i64* %4, i64 %64
  %66 = load i64, i64* %65, align 8, !tbaa !3
  %67 = icmp eq i64 %66, 0
  %68 = add nuw i64 %64, 1
  br i1 %67, label %69, label %63, !llvm.loop !59

69:                                               ; preds = %63
  %70 = trunc i64 %64 to i32
  %71 = alloca %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", i64 %64, align 8
  %72 = call i32 @map_arguments(i8* %0, i32 %70, i64* nonnull %4, i8** %5, i32* %6, i32 3, i32 1, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %71) #7
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %119, label %74

74:                                               ; preds = %69
  %75 = zext i32 %72 to i64
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %71, i64 %75
  %77 = call i32 @map_arguments(i8* %0, i32 %70, i64* nonnull %4, i8** %5, i32* %6, i32 2, i32 2, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %76) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %74
  %80 = zext i32 %77 to i64
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet", %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* %76, i64 %80
  %82 = call i32 @map_arguments(i8* %0, i32 %70, i64* nonnull %4, i8** %5, i32* %6, i32 3, i32 0, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %81) #7
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %119, label %84

84:                                               ; preds = %79
  %85 = load void (i32*, i32*)*, void (i32*, i32*)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_poll_profiler_stateE, align 8, !tbaa !37
  %86 = icmp eq void (i32*, i32*)* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %89 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %88, i64 0, i32 6
  store void (i32*, i32*)* @_ZN6Halide7Runtime8Internal7Hexagon25get_remote_profiler_stateEPiS3_, void (i32*, i32*)** %89, align 8, !tbaa !60
  %90 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon32remote_profiler_set_current_funcE, align 8, !tbaa !37
  %91 = icmp eq i32 (i32)* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %94 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %93, i64 0, i32 3
  %95 = load i32, i32* %94, align 8, !tbaa !63
  %96 = call i32 %90(i32 %95) #6
  br label %97

97:                                               ; preds = %87, %92, %84
  %98 = load i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)*, i32 (i32, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"*, i32)** @_ZN6Halide7Runtime8Internal7Hexagon10remote_runE, align 8, !tbaa !37
  %99 = load i32, i32* %3, align 4, !tbaa !38
  %100 = call i32 %98(i32 %22, i32 %99, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %71, i32 %72, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %76, i32 %77, %"struct.Halide::Runtime::Internal::Hexagon::_remote_buffer__seq_octet"* nonnull %81, i32 %82) #6
  call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = call i8* @malloc(i64 1024) #6
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i8* @halide_string_to_string(i8* %103, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0)) #6
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %115

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, i8* %103, i64 1023
  store i8 0, i8* %108, align 1, !tbaa !36
  %109 = call i8* @halide_string_to_string(i8* nonnull %103, i8* nonnull %108, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0)) #6
  %110 = ptrtoint i8* %109 to i64
  %111 = ptrtoint i8* %103 to i64
  %112 = add i64 %110, 1
  %113 = sub i64 %112, %111
  %114 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %103, i64 %113) #6
  call void @halide_error(i8* %0, i8* nonnull %103) #6
  br label %115

115:                                              ; preds = %107, %105
  call void @free(i8* %103) #6
  br label %119

116:                                              ; preds = %97
  %117 = call %struct.halide_profiler_state* @halide_profiler_get_state() #6
  %118 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %117, i64 0, i32 6
  store void (i32*, i32*)* null, void (i32*, i32*)** %118, align 8, !tbaa !60
  br label %119

119:                                              ; preds = %60, %74, %79, %116, %115, %69, %14
  %120 = phi i32 [ %15, %14 ], [ -1, %60 ], [ %72, %69 ], [ %77, %74 ], [ %100, %115 ], [ 0, %116 ], [ %82, %79 ]
  ret i32 %120
}

declare i64 @strlen(i8*) local_unnamed_addr #2

declare %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_hexagon_device_release(i8* %0) #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon11thread_lockE) #6
  %2 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 8, !tbaa !37
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %12
  %5 = phi %"struct.Halide::Runtime::Internal::Hexagon::module_state"* [ %14, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 8, !tbaa !37
  %11 = tail call i32 %10(i32 %7) #6
  tail call void @_ZN6Halide7Runtime8Internal7Hexagon8poll_logEPv(i8* %0) #7
  store i32 0, i32* %6, align 8, !tbaa !39
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::module_state", %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %5, i64 0, i32 1
  %14 = load %"struct.Halide::Runtime::Internal::Hexagon::module_state"*, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** %13, align 8, !tbaa !37
  %15 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::module_state"* %14, null
  br i1 %15, label %16, label %4, !llvm.loop !64

16:                                               ; preds = %12, %1
  store %"struct.Halide::Runtime::Internal::Hexagon::module_state"* null, %"struct.Halide::Runtime::Internal::Hexagon::module_state"** @_ZN6Halide7Runtime8Internal7Hexagon10state_listE, align 8, !tbaa !37
  %17 = load i32, i32* @_ZN6Halide7Runtime8Internal7Hexagon14shared_runtimeE, align 4, !tbaa !38
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_release_libraryE, align 8, !tbaa !37
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
  br i1 %4, label %5, label %144

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %144

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !24
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %15 = load i8, i8* %14, align 1, !tbaa !23
  br label %59

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %18 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %17, align 8, !tbaa !25
  %19 = zext i32 %11 to i64
  br label %20

20:                                               ; preds = %34, %16
  %21 = phi i64 [ 0, %16 ], [ %36, %34 ]
  %22 = phi i64 [ 0, %16 ], [ %35, %34 ]
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %21, i32 2
  %24 = load i32, i32* %23, align 4, !tbaa !26
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = zext i32 %24 to i64
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %21, i32 1
  %29 = load i32, i32* %28, align 4, !tbaa !31
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %27
  %33 = add nsw i64 %32, %22
  br label %34

34:                                               ; preds = %26, %20
  %35 = phi i64 [ %33, %26 ], [ %22, %20 ]
  %36 = add nuw nsw i64 %21, 1
  %37 = icmp eq i64 %36, %19
  br i1 %37, label %38, label %20, !llvm.loop !65

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %40 = load i8, i8* %39, align 1, !tbaa !23
  br label %41

41:                                               ; preds = %55, %38
  %42 = phi i64 [ 0, %38 ], [ %57, %55 ]
  %43 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %42, i32 2
  %45 = load i32, i32* %44, align 4, !tbaa !26
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %42, i32 1
  %50 = load i32, i32* %49, align 4, !tbaa !31
  %51 = add nsw i32 %50, -1
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, %48
  %54 = add nsw i64 %53, %43
  br label %55

55:                                               ; preds = %47, %41
  %56 = phi i64 [ %54, %47 ], [ %43, %41 ]
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, %19
  br i1 %58, label %59, label %41, !llvm.loop !66

59:                                               ; preds = %55, %13
  %60 = phi i8 [ %15, %13 ], [ %40, %55 ]
  %61 = phi i64 [ 0, %13 ], [ %35, %55 ]
  %62 = phi i64 [ 0, %13 ], [ %56, %55 ]
  %63 = zext i8 %60 to i64
  %64 = add nuw nsw i64 %63, 7
  %65 = lshr i64 %64, 3
  %66 = add nsw i64 %61, 1
  %67 = sub i64 %66, %62
  %68 = mul i64 %67, %65
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.63, i64 0, i64 0)) #6
  tail call void @abort() #6
  %71 = load i32, i32* %10, align 4, !tbaa !24
  br label %72

72:                                               ; preds = %70, %59
  %73 = phi i32 [ %71, %70 ], [ %11, %59 ]
  %74 = add i64 %68, 128
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %80

78:                                               ; preds = %89, %72
  %79 = icmp ugt i64 %74, 4095
  br i1 %79, label %94, label %112

80:                                               ; preds = %76, %89
  %81 = phi i32 [ %73, %76 ], [ %90, %89 ]
  %82 = phi i64 [ 0, %76 ], [ %91, %89 ]
  %83 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %77, align 8, !tbaa !25
  %84 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %83, i64 %82, i32 2
  %85 = load i32, i32* %84, align 4, !tbaa !26
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.64, i64 0, i64 0)) #6
  tail call void @abort() #6
  %88 = load i32, i32* %10, align 4, !tbaa !24
  br label %89

89:                                               ; preds = %80, %87
  %90 = phi i32 [ %81, %80 ], [ %88, %87 ]
  %91 = add nuw nsw i64 %82, 1
  %92 = sext i32 %90 to i64
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %80, label %78, !llvm.loop !67

94:                                               ; preds = %78
  %95 = load i8* (i64)*, i8* (i64)** @_ZN6Halide7Runtime8Internal7Hexagon11host_mallocE, align 8, !tbaa !37
  %96 = tail call i8* %95(i64 %74) #6
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = tail call i8* @malloc(i64 1024) #6
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = tail call i8* @halide_string_to_string(i8* %99, i8* null, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %111

103:                                              ; preds = %98
  %104 = getelementptr inbounds i8, i8* %99, i64 1023
  store i8 0, i8* %104, align 1, !tbaa !36
  %105 = tail call i8* @halide_string_to_string(i8* nonnull %99, i8* nonnull %104, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i64 0, i64 0)) #6
  %106 = ptrtoint i8* %105 to i64
  %107 = ptrtoint i8* %99 to i64
  %108 = add i64 %106, 1
  %109 = sub i64 %108, %107
  %110 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %99, i64 %109) #6
  tail call void @halide_error(i8* %0, i8* nonnull %99) #6
  br label %111

111:                                              ; preds = %103, %101
  tail call void @free(i8* %99) #6
  br label %144

112:                                              ; preds = %78
  %113 = tail call i8* @halide_malloc(i8* %0, i64 %74) #6
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = tail call i8* @malloc(i64 1024) #6
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = tail call i8* @halide_string_to_string(i8* %116, i8* null, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %128

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, i8* %116, i64 1023
  store i8 0, i8* %121, align 1, !tbaa !36
  %122 = tail call i8* @halide_string_to_string(i8* nonnull %116, i8* nonnull %121, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0)) #6
  %123 = ptrtoint i8* %122 to i64
  %124 = ptrtoint i8* %116 to i64
  %125 = add i64 %123, 1
  %126 = sub i64 %125, %124
  %127 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %116, i64 %126) #6
  tail call void @halide_error(i8* %0, i8* nonnull %116) #6
  br label %128

128:                                              ; preds = %120, %118
  tail call void @free(i8* %116) #6
  br label %144

129:                                              ; preds = %94
  %130 = tail call i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1, i8* nonnull %96, i64 %74) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %135

132:                                              ; preds = %112
  %133 = tail call i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1, i8* nonnull %113, i64 %74) #7
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %137

135:                                              ; preds = %129
  %136 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 8, !tbaa !37
  tail call void %136(i8* nonnull %96) #6
  br label %144

137:                                              ; preds = %132
  tail call void @halide_free(i8* %0, i8* nonnull %113) #6
  br label %144

138:                                              ; preds = %132, %129
  %139 = phi i8* [ %113, %132 ], [ %96, %129 ]
  %140 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %141 = load i8*, i8** %140, align 8, !tbaa !15
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i8* %139, i8** %140, align 8, !tbaa !15
  br label %144

144:                                              ; preds = %111, %128, %138, %143, %135, %137, %5, %2
  %145 = phi i32 [ %3, %2 ], [ 0, %5 ], [ -1, %111 ], [ -1, %128 ], [ %133, %137 ], [ %130, %135 ], [ 0, %143 ], [ 0, %138 ]
  ret i32 %145
}

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_wrap_device_handle(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i64 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.81, i64 0, i64 0)) #6
  tail call void @abort() #6
  %9 = load i64, i64* %5, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4, %8
  %12 = tail call i8* @malloc(i64 16) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = bitcast i8* %12 to i8**
  store i8* %2, i8** %15, align 8, !tbaa !51
  %16 = getelementptr inbounds i8, i8* %12, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 %3, i64* %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE, %struct.halide_device_interface_t** %18, align 8, !tbaa !69
  %19 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE, i64 0, i32 15), align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %19, i64 0, i32 0
  %21 = load void ()*, void ()** %20, align 8, !tbaa !72
  tail call void %21() #6
  %22 = ptrtoint i8* %12 to i64
  store i64 %22, i64* %5, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %14, %11, %8
  %24 = phi i32 [ -2, %8 ], [ 0, %14 ], [ -1, %11 ]
  ret i32 %24
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
  %8 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime8Internal7Hexagon9host_freeE, align 8, !tbaa !37
  tail call void %8(i8* %4) #6
  br label %10

9:                                                ; preds = %2
  tail call void @halide_free(i8* %0, i8* %4) #6
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8, !tbaa !15
  %13 = icmp eq i8* %12, %4
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* null, i8** %11, align 8, !tbaa !15
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !tbaa !74
  %18 = and i64 %17, -3
  store i64 %18, i64* %16, align 8, !tbaa !74
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_hexagon_get_device_size(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !69
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.84, i64 0, i64 0)) #6
  tail call void @abort() #6
  %11 = load i64, i64* %3, align 8, !tbaa !3
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %14, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i64 [ %16, %12 ], [ 0, %2 ]
  ret i64 %18
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !69
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.83, i64 0, i64 0)) #6
  tail call void @abort() #6
  %11 = load i64, i64* %3, align 8, !tbaa !3
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i8* [ %16, %12 ], [ null, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_detach_device_handle(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !69
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.82, i64 0, i64 0)) #6
  tail call void @abort() #6
  %11 = load i64, i64* %3, align 8, !tbaa !3
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to i8*
  tail call void @free(i8* %14) #6
  %15 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %15, i64 0, i32 15
  %17 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %17, i64 0, i32 1
  %19 = load void ()*, void ()** %18, align 8, !tbaa !75
  tail call void %19() #6
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !69
  br label %20

20:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %4 = tail call i32 @halide_hexagon_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %8 = load i8*, i8** %7, align 8, !tbaa !15
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.77, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %16) #8
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7
  %17 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %18 = ptrtoint i8* %17 to i64
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i64 0, i32 1
  store i64 %18, i64* %19, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %16) #8
  br label %20

20:                                               ; preds = %2, %15
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !15
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.79, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %7, %11
  %13 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %13) #8
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7
  %14 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %15 = ptrtoint i8* %14 to i64
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i64 0, i32 0
  store i64 %15, i64* %16, align 8, !tbaa !9
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
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  store i8* %6, i8** %7, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_hexagon_device_free(i8* %0, %struct.halide_buffer_t* %1) #7
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  store i8* null, i8** %4, align 8, !tbaa !15
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.87, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !74
  %13 = and i64 %12, 2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8, !tbaa !15
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %21 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !tbaa !69
  %22 = icmp eq %struct.halide_device_interface_t* %21, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  br i1 %7, label %60, label %24

24:                                               ; preds = %23
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.88, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %60

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !tbaa !69
  %28 = icmp eq %struct.halide_device_interface_t* %27, @_ZN6Halide7Runtime8Internal7Hexagon24hexagon_device_interfaceE
  br i1 %28, label %29, label %41

29:                                               ; preds = %19, %25
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !22
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = and i64 %12, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %38 = load i8*, i8** %37, align 8, !tbaa !15
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %36
  br label %41

41:                                               ; preds = %40, %25, %29, %36
  %42 = phi i1 [ true, %36 ], [ false, %40 ], [ true, %29 ], [ true, %25 ]
  br i1 %6, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !22
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.90, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %48

48:                                               ; preds = %47, %43, %41
  %49 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %49) #8
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %42, %struct.halide_buffer_t* %3, i1 zeroext %6) #7
  br i1 %42, label %54, label %50

50:                                               ; preds = %48
  %51 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %52 = ptrtoint i8* %51 to i64
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  store i64 %52, i64* %53, align 8, !tbaa !9
  br label %54

54:                                               ; preds = %50, %48
  br i1 %6, label %59, label %55

55:                                               ; preds = %54
  %56 = call i8* @halide_hexagon_get_device_handle(i8* %0, %struct.halide_buffer_t* %3) #7
  %57 = ptrtoint i8* %56 to i64
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  store i64 %57, i64* %58, align 8, !tbaa !11
  br label %59

59:                                               ; preds = %55, %54
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %49) #8
  br label %60

60:                                               ; preds = %24, %23, %59
  %61 = phi i32 [ 0, %59 ], [ -42, %23 ], [ -42, %24 ]
  ret i32 %61
}

; Function Attrs: nounwind mustprogress
define weak i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %0, i64 %1, %struct.halide_buffer_t* %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = inttoptr i64 %5 to %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"*
  %7 = tail call i8* @malloc(i64 16) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %6, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !51
  %12 = getelementptr inbounds i8, i8* %11, i64 %1
  %13 = bitcast i8* %7 to i8**
  store i8* %12, i8** %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle", %"struct.Halide::Runtime::Internal::Hexagon::ion_device_handle"* %6, i64 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !68
  %16 = sub i64 %15, %1
  %17 = getelementptr inbounds i8, i8* %7, i64 8
  %18 = bitcast i8* %17 to i64*
  store i64 %16, i64* %18, align 8, !tbaa !68
  %19 = ptrtoint i8* %7 to i64
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  store i64 %19, i64* %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  store %struct.halide_device_interface_t* %22, %struct.halide_device_interface_t** %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !74
  %26 = and i64 %25, 2
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3
  %28 = load i64, i64* %27, align 8, !tbaa !74
  %29 = and i64 %28, -3
  %30 = or i64 %29, %26
  store i64 %30, i64* %27, align 8, !tbaa !74
  br label %31

31:                                               ; preds = %9, %3
  %32 = phi i32 [ -11, %3 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
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
  br i1 %28, label %29, label %13, !llvm.loop !76

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #7
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
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
  %23 = tail call i32 @hexagon_device_crop_from_offset(%struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #7
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = inttoptr i64 %4 to i8*
  tail call void @free(i8* %5) #6
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_power_hvx_on(i8* %0) local_unnamed_addr #4 {
  %2 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon19remote_power_hvx_onE, align 8, !tbaa !37
  %6 = icmp eq i32 ()* %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call i32 %5() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i64 1024) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0)) #6
  %18 = ptrtoint i8* %17 to i64
  %19 = ptrtoint i8* %11 to i64
  %20 = add i64 %18, 1
  %21 = sub i64 %20, %19
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %21) #6
  tail call void @halide_error(i8* %0, i8* nonnull %11) #6
  br label %23

23:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #6
  br label %24

24:                                               ; preds = %7, %4, %1, %23
  %25 = phi i32 [ %8, %23 ], [ %2, %1 ], [ 0, %4 ], [ 0, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_power_hvx_off(i8* %0) local_unnamed_addr #4 {
  %2 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = load i32 ()*, i32 ()** @_ZN6Halide7Runtime8Internal7Hexagon20remote_power_hvx_offE, align 8, !tbaa !37
  %6 = icmp eq i32 ()* %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call i32 %5() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i64 1024) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i64 0, i64 0)) #6
  %18 = ptrtoint i8* %17 to i64
  %19 = ptrtoint i8* %11 to i64
  %20 = add i64 %18, 1
  %21 = sub i64 %20, %19
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %21) #6
  tail call void @halide_error(i8* %0, i8* nonnull %11) #6
  br label %23

23:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #6
  br label %24

24:                                               ; preds = %7, %4, %1, %23
  %25 = phi i32 [ %8, %23 ], [ %2, %1 ], [ 0, %4 ], [ 0, %7 ]
  ret i32 %25
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
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon27remote_set_performance_modeE, align 8, !tbaa !37
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = tail call i32 %6(i32 %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @malloc(i64 1024) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i64 0, i64 0)) #6
  %19 = ptrtoint i8* %18 to i64
  %20 = ptrtoint i8* %12 to i64
  %21 = add i64 %19, 1
  %22 = sub i64 %21, %20
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %22) #6
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6
  br label %25

25:                                               ; preds = %8, %5, %2, %24
  %26 = phi i32 [ %9, %24 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_set_performance(i8* %0, %struct.halide_hexagon_power_t* %1) local_unnamed_addr #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %45

5:                                                ; preds = %2
  %6 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** @_ZN6Halide7Runtime8Internal7Hexagon22remote_set_performanceE, align 8, !tbaa !37
  %7 = icmp eq i32 (i32, i32, i32, i32, i32, i32, i32, i32)* %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 0
  %10 = load i8, i8* %9, align 4, !tbaa !77, !range !48
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !79
  %14 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !80
  %16 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 3
  %17 = load i8, i8* %16, align 4, !tbaa !81, !range !48
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 4
  %20 = load i32, i32* %19, align 4, !tbaa !82
  %21 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 5
  %22 = load i16, i16* %21, align 4, !tbaa !83
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 6
  %25 = load i8, i8* %24, align 2, !tbaa !84, !range !48
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.halide_hexagon_power_t, %struct.halide_hexagon_power_t* %1, i64 0, i32 7
  %28 = load i32, i32* %27, align 4, !tbaa !85
  %29 = tail call i32 %6(i32 %11, i32 %13, i32 %15, i32 %18, i32 %20, i32 %23, i32 %26, i32 %28) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %8
  %32 = tail call i8* @malloc(i64 1024) #6
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023
  store i8 0, i8* %37, align 1, !tbaa !36
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i64 0, i64 0)) #6
  %39 = ptrtoint i8* %38 to i64
  %40 = ptrtoint i8* %32 to i64
  %41 = add i64 %39, 1
  %42 = sub i64 %41, %40
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #6
  tail call void @halide_error(i8* %0, i8* nonnull %32) #6
  br label %44

44:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #6
  br label %45

45:                                               ; preds = %8, %5, %2, %44
  %46 = phi i32 [ %29, %44 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %46
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_set_thread_priority(i8* %0, i32 %1) local_unnamed_addr #4 {
  %3 = tail call i32 @_ZN6Halide7Runtime8Internal7Hexagon20init_hexagon_runtimeEPv(i8* %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = load i32 (i32)*, i32 (i32)** @_ZN6Halide7Runtime8Internal7Hexagon26remote_set_thread_priorityE, align 8, !tbaa !37
  %7 = icmp eq i32 (i32)* %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = tail call i32 %6(i32 %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @malloc(i64 1024) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i64 0, i64 0)) #6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i64 0, i64 0)) #6
  %19 = ptrtoint i8* %18 to i64
  %20 = ptrtoint i8* %12 to i64
  %21 = add i64 %19, 1
  %22 = sub i64 %21, %20
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %22) #6
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6
  br label %25

25:                                               ; preds = %8, %5, %2, %24
  %26 = phi i32 [ %9, %24 ], [ %3, %2 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %26
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
!38 = !{!21, !21, i64 0}
!39 = !{!40, !21, i64 0}
!40 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon12module_stateE", !21, i64 0, !17, i64 8}
!41 = !{!40, !17, i64 8}
!42 = !{!43, !17, i64 24}
!43 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !44, i64 32, !5, i64 33}
!44 = !{!"bool", !5, i64 0}
!45 = !{!43, !44, i64 32}
!46 = !{!43, !17, i64 0}
!47 = !{!43, !17, i64 8}
!48 = !{i8 0, i8 2}
!49 = !{!50, !4, i64 0}
!50 = !{!"_ZTSZ13map_argumentsE22hexagon_device_pointer", !4, i64 0, !17, i64 8}
!51 = !{!52, !17, i64 0}
!52 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon17ion_device_handleE", !17, i64 0, !53, i64 8}
!53 = !{!"long", !5, i64 0}
!54 = !{!55, !17, i64 0}
!55 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon25_remote_buffer__seq_octetE", !17, i64 0, !21, i64 8}
!56 = !{!50, !17, i64 8}
!57 = !{!55, !21, i64 8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = !{!61, !17, i64 32}
!61 = !{!"_ZTS21halide_profiler_state", !62, i64 0, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !17, i64 24, !17, i64 32, !17, i64 40}
!62 = !{!"_ZTS12halide_mutex", !5, i64 0}
!63 = !{!61, !21, i64 16}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = !{!52, !53, i64 8}
!69 = !{!16, !17, i64 8}
!70 = !{!71, !17, i64 120}
!71 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!72 = !{!73, !17, i64 0}
!73 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!74 = !{!16, !4, i64 24}
!75 = !{!73, !17, i64 8}
!76 = distinct !{!76, !8}
!77 = !{!78, !44, i64 0}
!78 = !{!"_ZTS22halide_hexagon_power_t", !44, i64 0, !21, i64 4, !21, i64 8, !44, i64 12, !21, i64 16, !20, i64 20, !44, i64 22, !21, i64 24}
!79 = !{!78, !21, i64 4}
!80 = !{!78, !21, i64 8}
!81 = !{!78, !44, i64 12}
!82 = !{!78, !21, i64 16}
!83 = !{!78, !20, i64 20}
!84 = !{!78, !44, i64 22}
!85 = !{!78, !21, i64 24}
