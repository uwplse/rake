; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_thread_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_thread_pool.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8 }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32 }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_mutex_array = type { %struct.halide_mutex* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_thread = type opaque

@.str = private unnamed_addr constant [67 x i8] c"halide_default_do_parallel_tasks not implemented on this platform.\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"halide_default_semaphore_init not implemented on this platform.\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"halide_default_semaphore_release not implemented on this platform.\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"halide_default_semaphore_try_acquire not implemented on this platform.\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4
@_ZN6Halide7Runtime8Internal23halide_fake_mutex_arrayE = weak global %struct.halide_mutex_array zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"halide_spawn_thread not implemented on this platform.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"halide_join_thread not implemented on this platform.\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"halide_set_num_threads: only supports a value of 1 on this platform.\00", align 1

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #3
  ret i32 %5
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #3
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = add nsw i32 %3, %2
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %10, label %15

8:                                                ; preds = %10
  %9 = icmp slt i32 %14, %6
  br i1 %9, label %10, label %15, !llvm.loop !3

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %14, %8 ], [ %2, %5 ]
  %12 = tail call i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %11, i8* %4) #4
  %13 = icmp eq i32 %12, 0
  %14 = add nsw i32 %11, 1
  br i1 %13, label %8, label %15

15:                                               ; preds = %10, %8, %5
  %16 = phi i32 [ 0, %5 ], [ 0, %8 ], [ %12, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !5
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #3
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0)) #3
  ret i32 -1
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0)) #3
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0)) #3
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)) #3
  ret i1 false
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0)) #3
  ret %struct.halide_thread* null
}

; Function Attrs: nounwind mustprogress
define weak void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0)) #3
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 {
  ret %struct.halide_mutex_array* @_ZN6Halide7Runtime8Internal23halide_fake_mutex_arrayE
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_shutdown_thread_pool() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %4

4:                                                ; preds = %3, %1
  ret i32 1
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #2 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !5
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !5
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #2 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !5
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !5
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 {
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !5
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #3
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 {
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !tbaa !5
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #3
  ret i32 %8
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !tbaa !5
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #3
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !tbaa !5
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #3
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !tbaa !5
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #3
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !tbaa !5
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #3
  ret i1 %4
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
