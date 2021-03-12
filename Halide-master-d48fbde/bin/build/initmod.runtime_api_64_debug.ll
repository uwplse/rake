; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/runtime_api.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/runtime_api.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, {}*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_cond = type { [1 x i64] }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8, [7 x i8] }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32, [4 x i8] }
%struct.halide_semaphore_t = type { [2 x i64] }
%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }
%struct.halide_hexagon_power_t = type { i8, i32, i32, i8, i32, i16, i8, i32 }
%struct.halide_thread = type opaque
%struct.halide_filter_metadata_t = type { i32, i32, %struct.halide_filter_argument_t*, i8*, i8* }
%struct.halide_filter_argument_t = type { i8*, i32, i32, %struct.halide_type_t, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, i64** }
%struct.halide_scalar_value_t = type { %union.anon }
%union.anon = type { double }
%struct.mxArray = type opaque
%struct.halide_metal_device = type opaque
%struct.halide_metal_command_queue = type opaque
%struct.halide_mutex_array = type opaque
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_trace_event_t = type <{ i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32, [4 x i8] }>
%struct.halide_d3d12compute_device = type opaque
%struct.halide_d3d12compute_command_queue = type opaque

@halide_runtime_api_functions = dso_local global [186 x i8*] [i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy to i8*), i8* bitcast (i8* (i8*, i8*, %struct.halide_buffer_t*)* @halide_buffer_to_string to i8*), i8* bitcast (i32 (i32, i64*)* @halide_can_use_target_features to i8*), i8* bitcast (void (%struct.halide_cond*)* @halide_cond_broadcast to i8*), i8* bitcast (void (%struct.halide_cond*)* @halide_cond_signal to i8*), i8* bitcast (void (%struct.halide_cond*, %struct.halide_mutex*)* @halide_cond_wait to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_cuda_detach_device_ptr to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_cuda_device_interface to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_cuda_get_device_ptr to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i32)* @halide_cuda_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_cuda_finalize_kernels to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32)* @halide_cuda_run to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_cuda_wrap_device_ptr to i8*), i8* bitcast (i64 (i8*)* @halide_current_time_ns to i8*), i8* bitcast (i32 (i8*, i8*, i32, %struct.halide_buffer_t*)* @halide_debug_to_file to i8*), i8* bitcast (i32 (i32, i64*)* @halide_default_can_use_target_features to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free to i8*), i8* bitcast (void (i8*, i8*)* @halide_device_and_host_free_as_destructor to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free to i8*), i8* bitcast (void (i8*, i8*)* @halide_device_free_as_destructor to i8*), i8* bitcast (void (i8*, i8*)* @halide_device_host_nop_free to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc to i8*), i8* bitcast (void (i8*, %struct.halide_device_interface_t*)* @halide_device_release to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_do_par_for to i8*), i8* bitcast (i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_do_parallel_tasks to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_do_task to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_do_loop_task to i8*), i8* bitcast (i8* (i8*, i8*, double, i32)* @halide_double_to_string to i8*), i8* bitcast (void (i8*, i8*)* @halide_error to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32)* @halide_error_access_out_of_bounds to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32)* @halide_error_bad_dimensions to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @halide_error_bad_fold to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32)* @halide_error_bad_extern_fold to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32)* @halide_error_bad_type to i8*), i8* bitcast (i32 (i8*, i8*, i32)* @halide_error_bounds_inference_call_failed to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_buffer_allocation_too_large to i8*), i8* bitcast (i32 (i8*, i8*)* @halide_error_buffer_argument_is_null to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32)* @halide_error_buffer_extents_negative to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_buffer_extents_too_large to i8*), i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @halide_error_constraint_violated to i8*), i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32)* @halide_error_constraints_make_required_region_smaller to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32)* @halide_error_debug_to_file_failed to i8*), i8* bitcast (i32 (i8*, i8*)* @halide_error_device_dirty_with_no_device_support to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32)* @halide_error_explicit_bounds_too_small to i8*), i8* bitcast (i32 (i8*, i8*, i32)* @halide_error_extern_stage_failed to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i8*, i32)* @halide_error_fold_factor_too_small to i8*), i8* bitcast (i32 (i8*, i8*)* @halide_error_host_is_null to i8*), i8* bitcast (i32 (i8*)* @halide_error_out_of_memory to i8*), i8* bitcast (i32 (i8*, i8*, double, double)* @halide_error_param_too_large_f64 to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_param_too_large_i64 to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_param_too_large_u64 to i8*), i8* bitcast (i32 (i8*, i8*, double, double)* @halide_error_param_too_small_f64 to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_param_too_small_i64 to i8*), i8* bitcast (i32 (i8*, i8*, i64, i64)* @halide_error_param_too_small_u64 to i8*), i8* bitcast (i32 (i8*, i8*, i8*)* @halide_error_requirement_failed to i8*), i8* bitcast (i32 (i8*, i8*)* @halide_error_specialize_fail to i8*), i8* bitcast (i32 (i8*, i8*, i32)* @halide_error_unaligned_host_ptr to i8*), i8* bitcast (double (i16)* @halide_float16_bits_to_double to i8*), i8* bitcast (float (i16)* @halide_float16_bits_to_float to i8*), i8* bitcast (void (i8*, i8*)* @halide_free to i8*), i8* bitcast (void (%"struct.Halide::Runtime::Internal::CpuFeatures"*)* @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv to i8*), i8* bitcast (i32 (i8*)* @halide_get_gpu_device to i8*), i8* bitcast (i8* (i8*, i8*)* @halide_get_library_symbol to i8*), i8* bitcast (i8* (i8*)* @halide_get_symbol to i8*), i8* bitcast (i32 (i8*)* @halide_get_trace_file to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_detach_device_handle to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_hexagon_device_interface to i8*), i8* bitcast (i32 (i8*)* @halide_hexagon_device_release to i8*), i8* bitcast (i8* (i8*, %struct.halide_buffer_t*)* @halide_hexagon_get_device_handle to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_get_device_size to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i64, i8*, i64)* @halide_hexagon_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_hexagon_finalize_kernels to i8*), i8* bitcast (i32 (i8*)* @halide_hexagon_power_hvx_off to i8*), i8* bitcast (void (i8*, i8*)* @halide_hexagon_power_hvx_off_as_destructor to i8*), i8* bitcast (i32 (i8*)* @halide_hexagon_power_hvx_on to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32*, i64*, i8**, i32*)* @halide_hexagon_run to i8*), i8* bitcast (i32 (i8*, %struct.halide_hexagon_power_t*)* @halide_hexagon_set_performance to i8*), i8* bitcast (i32 (i8*, i32)* @halide_hexagon_set_performance_mode to i8*), i8* bitcast (i32 (i8*, i32)* @halide_hexagon_set_thread_priority to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i8*, i64)* @halide_hexagon_wrap_device_handle to i8*), i8* bitcast (i8* (i8*, i8*, i64, i32)* @halide_int64_to_string to i8*), i8* bitcast (void (%struct.halide_thread*)* @halide_join_thread to i8*), i8* bitcast (i8* (i8*)* @halide_load_library to i8*), i8* bitcast (i8* (i8*, i64)* @halide_malloc to i8*), i8* bitcast (i32 (i8*, i32 (i8**)*, %struct.halide_filter_metadata_t*, i32, %struct.mxArray**, i32, %struct.mxArray**)* @halide_matlab_call_pipeline to i8*), i8* bitcast (void ()* @halide_memoization_cache_cleanup to i8*), i8* bitcast (void (i8*, i64)* @halide_memoization_cache_evict to i8*), i8* bitcast (i32 (i8*, i8*, i32, %struct.halide_buffer_t*, i32, %struct.halide_buffer_t**)* @halide_memoization_cache_lookup to i8*), i8* bitcast (void (i8*, i8*)* @halide_memoization_cache_release to i8*), i8* bitcast (void (i64)* @halide_memoization_cache_set_size to i8*), i8* bitcast (i32 (i8*, i8*, i32, %struct.halide_buffer_t*, i32, %struct.halide_buffer_t**, i1, i64)* @halide_memoization_cache_store to i8*), i8* bitcast (i32 (i8*, %struct.halide_metal_device**, %struct.halide_metal_command_queue**, i1)* @halide_metal_acquire_context to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_detach_buffer to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_metal_device_interface to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_metal_get_buffer to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_metal_get_crop_offset to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i32)* @halide_metal_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_metal_finalize_kernels to i8*), i8* bitcast (i32 (i8*)* @halide_metal_release_context to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32)* @halide_metal_run to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_metal_wrap_buffer to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_msan_annotate_buffer_is_initialized to i8*), i8* bitcast (void (i8*, i8*)* @halide_msan_annotate_buffer_is_initialized_as_destructor to i8*), i8* bitcast (i32 (i8*, i8*, i64)* @halide_msan_annotate_memory_is_initialized to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i8*)* @halide_msan_check_buffer_is_initialized to i8*), i8* bitcast (i32 (i8*, i8*, i64, i8*)* @halide_msan_check_memory_is_initialized to i8*), i8* bitcast (void (%struct.halide_mutex*)* @halide_mutex_lock to i8*), i8* bitcast (void (%struct.halide_mutex*)* @halide_mutex_unlock to i8*), i8* bitcast (%struct.halide_mutex_array* (i32)* @halide_mutex_array_create to i8*), i8* bitcast (void (i8*, i8*)* @halide_mutex_array_destroy to i8*), i8* bitcast (i32 (%struct.halide_mutex_array*, i32)* @halide_mutex_array_lock to i8*), i8* bitcast (i32 (%struct.halide_mutex_array*, i32)* @halide_mutex_array_unlock to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*)* @halide_opencl_detach_cl_mem to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_opencl_device_interface to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_opencl_get_cl_mem to i8*), i8* bitcast (i8* (i8*)* @halide_opencl_get_build_options to i8*), i8* bitcast (i8* (i8*)* @halide_opencl_get_device_type to i8*), i8* bitcast (i8* (i8*)* @halide_opencl_get_platform_name to i8*), i8* bitcast (i64 (i8*, %struct.halide_buffer_t*)* @halide_opencl_get_crop_offset to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_opencl_image_device_interface to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_image_wrap_cl_mem to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i32)* @halide_opencl_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_opencl_finalize_kernels to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32)* @halide_opencl_run to i8*), i8* bitcast (void (i8*)* @halide_opencl_set_build_options to i8*), i8* bitcast (void (i8*)* @halide_opencl_set_device_type to i8*), i8* bitcast (void (i8*)* @halide_opencl_set_platform_name to i8*), i8* bitcast (i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_opencl_wrap_cl_mem to i8*), i8* bitcast (i32 (i8*)* @halide_opengl_create_context to i8*), i8* bitcast (i8* (i8*, i8*)* @halide_opengl_get_proc_address to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_openglcompute_device_interface to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i32)* @halide_openglcompute_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_openglcompute_finalize_kernels to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.halide_type_t*, i8**, i8*, i32, float*, i32, i32)* @halide_openglcompute_run to i8*), i8* bitcast (i8* (i8*, i8*, i8*)* @halide_pointer_to_string to i8*), i8* bitcast (void (i8*, i8*)* @halide_print to i8*), i8* bitcast (%struct.halide_profiler_pipeline_stats* (i8*)* @halide_profiler_get_pipeline_state to i8*), i8* bitcast (%struct.halide_profiler_state* ()* @halide_profiler_get_state to i8*), i8* bitcast (void (i8*, i8*, i32, i64)* @halide_profiler_memory_allocate to i8*), i8* bitcast (void (i8*, i8*, i32, i64)* @halide_profiler_memory_free to i8*), i8* bitcast (i32 (i8*, i8*, i32, i64*)* @halide_profiler_pipeline_start to i8*), i8* bitcast (void (i8*)* @halide_profiler_report to i8*), i8* bitcast (void ()* @halide_profiler_reset to i8*), i8* bitcast (void (i8*, i8*, i64*)* @halide_profiler_stack_peak_update to i8*), i8* bitcast (i32 (i8*)* @halide_qurt_hvx_lock to i8*), i8* bitcast (i32 (i8*)* @halide_qurt_hvx_unlock to i8*), i8* bitcast (void (i8*, i8*)* @halide_qurt_hvx_unlock_as_destructor to i8*), i8* bitcast (void ()* @halide_release_jit_module to i8*), i8* bitcast (i32 (%struct.halide_semaphore_t*, i32)* @halide_semaphore_init to i8*), i8* bitcast (i32 (%struct.halide_semaphore_t*, i32)* @halide_semaphore_release to i8*), i8* bitcast (i1 (%struct.halide_semaphore_t*, i32)* @halide_semaphore_try_acquire to i8*), i8* bitcast (i32 (i32, i64*)* (i32 (i32, i64*)*)* @halide_set_custom_can_use_target_features to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*)* @halide_set_custom_do_par_for to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* (i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*)* @halide_set_custom_do_loop_task to i8*), i8* bitcast (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* (i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*)* @halide_set_custom_do_task to i8*), i8* bitcast (void (i8*, i8*)* (void (i8*, i8*)*)* @halide_set_custom_free to i8*), i8* bitcast (i8* (i8*, i8*)* (i8* (i8*, i8*)*)* @halide_set_custom_get_library_symbol to i8*), i8* bitcast (i8* (i8*)* (i8* (i8*)*)* @halide_set_custom_get_symbol to i8*), i8* bitcast (i8* (i8*)* (i8* (i8*)*)* @halide_set_custom_load_library to i8*), i8* bitcast (i8* (i8*, i64)* (i8* (i8*, i64)*)* @halide_set_custom_malloc to i8*), i8* bitcast (void (i8*, i8*)* (void (i8*, i8*)*)* @halide_set_custom_print to i8*), i8* bitcast (i32 (i8*, %struct.halide_trace_event_t*)* (i32 (i8*, %struct.halide_trace_event_t*)*)* @halide_set_custom_trace to i8*), i8* bitcast (void (i8*, i8*)* (void (i8*, i8*)*)* @halide_set_error_handler to i8*), i8* bitcast (void (i32)* @halide_set_gpu_device to i8*), i8* bitcast (i32 (i32)* @halide_set_num_threads to i8*), i8* bitcast (void (i32)* @halide_set_trace_file to i8*), i8* bitcast (void ()* @halide_shutdown_thread_pool to i8*), i8* bitcast (i32 ()* @halide_shutdown_trace to i8*), i8* bitcast (void (i8*, i32)* @halide_sleep_ms to i8*), i8* bitcast (%struct.halide_thread* (void (i8*)*, i8*)* @halide_spawn_thread to i8*), i8* bitcast (i32 (i8*)* @halide_start_clock to i8*), i8* bitcast (i8* (i8*, i8*, i8*)* @halide_string_to_string to i8*), i8* bitcast (i32 (i8*, %struct.halide_trace_event_t*)* @halide_trace to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i8*)* @halide_trace_helper to i8*), i8* bitcast (i8* (i8*, i8*, i64, i32)* @halide_uint64_to_string to i8*), i8* bitcast (void ()* @halide_use_jit_module to i8*), i8* bitcast (i32 (i8*, %struct.halide_d3d12compute_device**, %struct.halide_d3d12compute_command_queue**, i1)* @halide_d3d12compute_acquire_context to i8*), i8* bitcast (%struct.halide_device_interface_t* ()* @halide_d3d12compute_device_interface to i8*), i8* bitcast (i32 (i8*, i8**, i8*, i32)* @halide_d3d12compute_initialize_kernels to i8*), i8* bitcast (void (i8*, i8*)* @halide_d3d12compute_finalize_kernels to i8*), i8* bitcast (i32 (i8*)* @halide_d3d12compute_release_context to i8*), i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.halide_type_t*, i8**, i8*, i32, float*, i32, i32)* @halide_d3d12compute_run to i8*)], align 8, !dbg !0
@llvm.used = appending global [1 x i8*] [i8* bitcast ([186 x i8*]* @halide_runtime_api_functions to i8*)], section "llvm.metadata"

declare dso_local i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #0

declare extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_can_use_target_features(i32, i64*) #0

declare dso_local void @halide_cond_broadcast(%struct.halide_cond*) #0

declare dso_local void @halide_cond_signal(%struct.halide_cond*) #0

declare dso_local void @halide_cond_wait(%struct.halide_cond*, %struct.halide_mutex*) #0

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #0

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_cuda_detach_device_ptr(i8*, %struct.halide_buffer_t*) #0

declare dso_local %struct.halide_device_interface_t* @halide_cuda_device_interface() #0

declare dso_local i64 @halide_cuda_get_device_ptr(i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_cuda_initialize_kernels(i8*, i8**, i8*, i32) #0

declare dso_local void @halide_cuda_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_cuda_run(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32) #0

declare dso_local i32 @halide_cuda_wrap_device_ptr(i8*, %struct.halide_buffer_t*, i64) #0

declare extern_weak dso_local i64 @halide_current_time_ns(i8*) #0

declare dso_local i32 @halide_debug_to_file(i8*, i8*, i32, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_default_can_use_target_features(i32, i64*) #0

declare extern_weak dso_local i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #0

declare extern_weak dso_local void @halide_device_and_host_free_as_destructor(i8*, i8*) #0

declare extern_weak dso_local i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #0

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #0

declare extern_weak dso_local void @halide_device_free_as_destructor(i8*, i8*) #0

declare extern_weak dso_local void @halide_device_host_nop_free(i8*, i8*) #0

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #0

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #0

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_do_par_for(i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*) #0

declare dso_local i32 @halide_do_parallel_tasks(i8*, i32, %struct.halide_parallel_task_t*, i8*) #0

declare dso_local i32 @halide_do_task(i8*, i32 (i8*, i32, i8*)*, i32, i8*) #0

declare dso_local i32 @halide_do_loop_task(i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*) #0

declare extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) #0

declare extern_weak dso_local void @halide_error(i8*, i8*) #0

declare dso_local i32 @halide_error_access_out_of_bounds(i8*, i8*, i32, i32, i32, i32, i32) #0

declare dso_local i32 @halide_error_bad_dimensions(i8*, i8*, i32, i32) #0

declare dso_local i32 @halide_error_bad_fold(i8*, i8*, i8*, i8*) #0

declare dso_local i32 @halide_error_bad_extern_fold(i8*, i8*, i32, i32, i32, i32, i32) #0

declare dso_local i32 @halide_error_bad_type(i8*, i8*, i32, i32) #0

declare dso_local i32 @halide_error_bounds_inference_call_failed(i8*, i8*, i32) #0

declare dso_local i32 @halide_error_buffer_allocation_too_large(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_buffer_argument_is_null(i8*, i8*) #0

declare dso_local i32 @halide_error_buffer_extents_negative(i8*, i8*, i32, i32) #0

declare dso_local i32 @halide_error_buffer_extents_too_large(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_constraint_violated(i8*, i8*, i32, i8*, i32) #0

declare dso_local i32 @halide_error_constraints_make_required_region_smaller(i8*, i8*, i32, i32, i32, i32, i32) #0

declare dso_local i32 @halide_error_debug_to_file_failed(i8*, i8*, i8*, i32) #0

declare dso_local i32 @halide_error_device_dirty_with_no_device_support(i8*, i8*) #0

declare dso_local i32 @halide_error_explicit_bounds_too_small(i8*, i8*, i8*, i32, i32, i32, i32) #0

declare dso_local i32 @halide_error_extern_stage_failed(i8*, i8*, i32) #0

declare dso_local i32 @halide_error_fold_factor_too_small(i8*, i8*, i8*, i32, i8*, i32) #0

declare dso_local i32 @halide_error_host_is_null(i8*, i8*) #0

declare dso_local i32 @halide_error_out_of_memory(i8*) #0

declare dso_local i32 @halide_error_param_too_large_f64(i8*, i8*, double, double) #0

declare dso_local i32 @halide_error_param_too_large_i64(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_param_too_large_u64(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_param_too_small_f64(i8*, i8*, double, double) #0

declare dso_local i32 @halide_error_param_too_small_i64(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_param_too_small_u64(i8*, i8*, i64, i64) #0

declare dso_local i32 @halide_error_requirement_failed(i8*, i8*, i8*) #0

declare dso_local i32 @halide_error_specialize_fail(i8*, i8*) #0

declare dso_local i32 @halide_error_unaligned_host_ptr(i8*, i8*, i32) #0

declare dso_local double @halide_float16_bits_to_double(i16 zeroext) #0

declare dso_local float @halide_float16_bits_to_float(i16 zeroext) #0

declare dso_local void @halide_free(i8*, i8*) #0

declare extern_weak dso_local void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8) #0

declare dso_local i32 @halide_get_gpu_device(i8*) #0

declare extern_weak dso_local i8* @halide_get_library_symbol(i8*, i8*) #0

declare extern_weak dso_local i8* @halide_get_symbol(i8*) #0

declare dso_local i32 @halide_get_trace_file(i8*) #0

declare dso_local i32 @halide_hexagon_detach_device_handle(i8*, %struct.halide_buffer_t*) #0

declare dso_local %struct.halide_device_interface_t* @halide_hexagon_device_interface() #0

declare dso_local i32 @halide_hexagon_device_release(i8*) #0

declare dso_local i8* @halide_hexagon_get_device_handle(i8*, %struct.halide_buffer_t*) #0

declare dso_local i64 @halide_hexagon_get_device_size(i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_hexagon_initialize_kernels(i8*, i8**, i8*, i64, i8*, i64) #0

declare dso_local void @halide_hexagon_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_hexagon_power_hvx_off(i8*) #0

declare dso_local void @halide_hexagon_power_hvx_off_as_destructor(i8*, i8*) #0

declare dso_local i32 @halide_hexagon_power_hvx_on(i8*) #0

declare dso_local i32 @halide_hexagon_run(i8*, i8*, i8*, i32*, i64*, i8**, i32*) #0

declare dso_local i32 @halide_hexagon_set_performance(i8*, %struct.halide_hexagon_power_t*) #0

declare dso_local i32 @halide_hexagon_set_performance_mode(i8*, i32) #0

declare dso_local i32 @halide_hexagon_set_thread_priority(i8*, i32) #0

declare dso_local i32 @halide_hexagon_wrap_device_handle(i8*, %struct.halide_buffer_t*, i8*, i64) #0

declare extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) #0

declare dso_local void @halide_join_thread(%struct.halide_thread*) #0

declare extern_weak dso_local i8* @halide_load_library(i8*) #0

declare dso_local i8* @halide_malloc(i8*, i64) #0

declare extern_weak dso_local i32 @halide_matlab_call_pipeline(i8*, i32 (i8**)*, %struct.halide_filter_metadata_t*, i32, %struct.mxArray**, i32, %struct.mxArray**) #0

declare dso_local void @halide_memoization_cache_cleanup() #0

declare dso_local void @halide_memoization_cache_evict(i8*, i64) #0

declare dso_local i32 @halide_memoization_cache_lookup(i8*, i8*, i32, %struct.halide_buffer_t*, i32, %struct.halide_buffer_t**) #0

declare dso_local void @halide_memoization_cache_release(i8*, i8*) #0

declare dso_local void @halide_memoization_cache_set_size(i64) #0

declare dso_local i32 @halide_memoization_cache_store(i8*, i8*, i32, %struct.halide_buffer_t*, i32, %struct.halide_buffer_t**, i1 zeroext, i64) #0

declare dso_local i32 @halide_metal_acquire_context(i8*, %struct.halide_metal_device**, %struct.halide_metal_command_queue**, i1 zeroext) #0

declare dso_local i32 @halide_metal_detach_buffer(i8*, %struct.halide_buffer_t*) #0

declare dso_local %struct.halide_device_interface_t* @halide_metal_device_interface() #0

declare dso_local i64 @halide_metal_get_buffer(i8*, %struct.halide_buffer_t*) #0

declare dso_local i64 @halide_metal_get_crop_offset(i8*, %struct.halide_buffer_t*) #0

declare dso_local i32 @halide_metal_initialize_kernels(i8*, i8**, i8*, i32) #0

declare dso_local void @halide_metal_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_metal_release_context(i8*) #0

declare dso_local i32 @halide_metal_run(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32) #0

declare dso_local i32 @halide_metal_wrap_buffer(i8*, %struct.halide_buffer_t*, i64) #0

declare dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8*, %struct.halide_buffer_t*) #0

declare dso_local void @halide_msan_annotate_buffer_is_initialized_as_destructor(i8*, i8*) #0

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) #0

declare dso_local i32 @halide_msan_check_buffer_is_initialized(i8*, %struct.halide_buffer_t*, i8*) #0

declare dso_local i32 @halide_msan_check_memory_is_initialized(i8*, i8*, i64, i8*) #0

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) #0

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) #0

declare dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32) #0

declare dso_local void @halide_mutex_array_destroy(i8*, i8*) #0

declare dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array*, i32) #0

declare dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array*, i32) #0

declare dso_local i32 @halide_opencl_detach_cl_mem(i8*, %struct.halide_buffer_t*) #0

declare dso_local %struct.halide_device_interface_t* @halide_opencl_device_interface() #0

declare dso_local i64 @halide_opencl_get_cl_mem(i8*, %struct.halide_buffer_t*) #0

declare dso_local i8* @halide_opencl_get_build_options(i8*) #0

declare dso_local i8* @halide_opencl_get_device_type(i8*) #0

declare dso_local i8* @halide_opencl_get_platform_name(i8*) #0

declare dso_local i64 @halide_opencl_get_crop_offset(i8*, %struct.halide_buffer_t*) #0

declare dso_local %struct.halide_device_interface_t* @halide_opencl_image_device_interface() #0

declare dso_local i32 @halide_opencl_image_wrap_cl_mem(i8*, %struct.halide_buffer_t*, i64) #0

declare dso_local i32 @halide_opencl_initialize_kernels(i8*, i8**, i8*, i32) #0

declare dso_local void @halide_opencl_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_opencl_run(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64*, i8**, i8*, i32, float*, i32, i32) #0

declare dso_local void @halide_opencl_set_build_options(i8*) #0

declare dso_local void @halide_opencl_set_device_type(i8*) #0

declare dso_local void @halide_opencl_set_platform_name(i8*) #0

declare dso_local i32 @halide_opencl_wrap_cl_mem(i8*, %struct.halide_buffer_t*, i64) #0

declare dso_local i32 @halide_opengl_create_context(i8*) #0

declare dso_local i8* @halide_opengl_get_proc_address(i8*, i8*) #0

declare dso_local %struct.halide_device_interface_t* @halide_openglcompute_device_interface() #0

declare dso_local i32 @halide_openglcompute_initialize_kernels(i8*, i8**, i8*, i32) #0

declare dso_local void @halide_openglcompute_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_openglcompute_run(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.halide_type_t*, i8**, i8*, i32, float*, i32, i32) #0

declare extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) #0

declare extern_weak dso_local void @halide_print(i8*, i8*) #0

declare dso_local %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8*) #0

declare dso_local %struct.halide_profiler_state* @halide_profiler_get_state() #0

declare extern_weak dso_local void @halide_profiler_memory_allocate(i8*, i8*, i32, i64) #0

declare extern_weak dso_local void @halide_profiler_memory_free(i8*, i8*, i32, i64) #0

declare extern_weak dso_local i32 @halide_profiler_pipeline_start(i8*, i8*, i32, i64*) #0

declare dso_local void @halide_profiler_report(i8*) #0

declare dso_local void @halide_profiler_reset() #0

declare extern_weak dso_local void @halide_profiler_stack_peak_update(i8*, i8*, i64*) #0

declare dso_local i32 @halide_qurt_hvx_lock(i8*) #0

declare dso_local i32 @halide_qurt_hvx_unlock(i8*) #0

declare dso_local void @halide_qurt_hvx_unlock_as_destructor(i8*, i8*) #0

declare extern_weak dso_local void @halide_release_jit_module() #0

declare dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t*, i32) #0

declare dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t*, i32) #0

declare dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t*, i32) #0

declare dso_local i32 (i32, i64*)* @halide_set_custom_can_use_target_features(i32 (i32, i64*)*) #0

declare dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*) #0

declare dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*) #0

declare dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*) #0

declare dso_local void (i8*, i8*)* @halide_set_custom_free(void (i8*, i8*)*) #0

declare dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)*) #0

declare dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)*) #0

declare dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)*) #0

declare dso_local i8* (i8*, i64)* @halide_set_custom_malloc(i8* (i8*, i64)*) #0

declare extern_weak dso_local void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)*) #0

declare dso_local i32 (i8*, %struct.halide_trace_event_t*)* @halide_set_custom_trace(i32 (i8*, %struct.halide_trace_event_t*)*) #0

declare extern_weak dso_local void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)*) #0

declare dso_local void @halide_set_gpu_device(i32) #0

declare dso_local i32 @halide_set_num_threads(i32) #0

declare dso_local void @halide_set_trace_file(i32) #0

declare dso_local void @halide_shutdown_thread_pool() #0

declare dso_local i32 @halide_shutdown_trace() #0

declare extern_weak dso_local void @halide_sleep_ms(i8*, i32) #0

declare dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) #0

declare extern_weak dso_local i32 @halide_start_clock(i8*) #0

declare extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) #0

declare dso_local i32 @halide_trace(i8*, %struct.halide_trace_event_t*) #0

declare extern_weak dso_local i32 @halide_trace_helper(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i8*) #0

declare extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) #0

declare extern_weak dso_local void @halide_use_jit_module() #0

declare dso_local i32 @halide_d3d12compute_acquire_context(i8*, %struct.halide_d3d12compute_device**, %struct.halide_d3d12compute_command_queue**, i1 zeroext) #0

declare dso_local %struct.halide_device_interface_t* @halide_d3d12compute_device_interface() #0

declare dso_local i32 @halide_d3d12compute_initialize_kernels(i8*, i8**, i8*, i32) #0

declare dso_local void @halide_d3d12compute_finalize_kernels(i8*, i8*) #0

declare dso_local i32 @halide_d3d12compute_release_context(i8*) #0

declare dso_local i32 @halide_d3d12compute_run(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.halide_type_t*, i8**, i8*, i32, float*, i32, i32) #0

attributes #0 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_runtime_api_functions", scope: !2, file: !12, line: 21, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, imports: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/runtime_api.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!0}
!6 = !{!7}
!7 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !8, file: !11, line: 225)
!8 = !DINamespace(name: "Internal", scope: !9)
!9 = !DINamespace(name: "Runtime", scope: !10)
!10 = !DINamespace(name: "Halide", scope: null)
!11 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!12 = !DIFile(filename: "src/runtime/runtime_api.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 11904, elements: !15)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!16}
!16 = !DISubrange(count: 186)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}