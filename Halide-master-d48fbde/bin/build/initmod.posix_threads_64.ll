; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, [4 x i8], %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8, [7 x i8] }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32, [4 x i8] }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i64] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::spawned_thread" = type { void (i8*)*, i8*, i64 }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i64 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type <{ %struct.pthread_mutex_t, %struct.pthread_cond_t, i8, [7 x i8] }>
%struct.pthread_mutex_t = type { [8 x i64] }
%struct.pthread_cond_t = type { [8 x i64] }
%"struct.Halide::Runtime::Internal::Synchronization::hash_bucket" = type { %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", i64, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, i64 }
%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair" = type { %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* }
%"struct.Halide::Runtime::Internal::Synchronization::validate_action" = type { i8, [7 x i8], i64 }
%"struct.Halide::Runtime::Internal::Synchronization::parking_control" = type { i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, void (i8*)*, i64 (i8*, i32, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* }
%"class.Halide::Runtime::Internal::Synchronization::fast_mutex" = type { i64 }
%"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i64* }
%"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i64*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i64*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i64*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%struct.halide_mutex_array = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak global [24576 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak global %"struct.Halide::Runtime::Internal::work_queue_t" { %struct.halide_mutex zeroinitializer, i32 0, i32 0, %"struct.Halide::Runtime::Internal::work"* null, i32 0, i32 0, i32 0, [4 x i8] undef, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, i32 0, i32 0, [256 x %struct.halide_thread*] zeroinitializer, i8 0, i8 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 {
  %2 = bitcast i8* %0 to void (i8*)**
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !9
  tail call void %3(i8* %6) #5
  ret i8* null
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 24) #5
  %4 = bitcast i8* %3 to void (i8*)**
  store void (i8*)* %0, void (i8*)** %4, align 8, !tbaa !3
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %1, i8** %6, align 8, !tbaa !9
  %7 = getelementptr inbounds i8, i8* %3, i64 16
  %8 = bitcast i8* %7 to i64*
  store i64 0, i64* %8, align 8, !tbaa !10
  %9 = tail call i32 @pthread_create(i64* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #5
  %10 = bitcast i8* %3 to %struct.halide_thread*
  ret %struct.halide_thread* %10
}

declare i8* @malloc(i64) local_unnamed_addr #2

declare i32 @pthread_create(i64*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 {
  %2 = alloca i8*, align 8
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store i8* null, i8** %2, align 8, !tbaa !11
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !10
  %7 = call i32 @pthread_join(i64 %6, i8** nonnull %2) #5
  %8 = bitcast %struct.halide_thread* %0 to i8*
  call void @free(i8* %8) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  ret void
}

declare i32 @pthread_join(i64, i8**) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0
  %4 = load atomic i64, i64* %3 monotonic, align 8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13

13:                                               ; preds = %71, %1
  %14 = phi i64 [ %4, %1 ], [ %72, %71 ]
  %15 = phi i32 [ 40, %1 ], [ %73, %71 ]
  %16 = and i64 %14, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  %20 = or i64 %19, 1
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %18, label %27

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ]
  %31 = icmp ugt i64 %30, 3
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = icmp sgt i32 %15, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1
  call void @halide_thread_yield() #5
  %38 = load atomic i64, i64* %3 monotonic, align 8
  br label %71

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #6
  store i8 0, i8* %6, align 8, !tbaa !12
  %41 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #5
  %42 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #5
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !17
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !tbaa !19
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !20
  store i8 1, i8* %6, align 8, !tbaa !12
  %43 = and i64 %30, -4
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !20
  br label %48

46:                                               ; preds = %39
  %47 = inttoptr i64 %43 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !17
  br label %48

48:                                               ; preds = %46, %45
  %49 = and i64 %30, 3
  %50 = or i64 %49, %12
  %51 = cmpxchg weak i64* %3, i64 %30, i64 %50 release monotonic
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  br label %66

55:                                               ; preds = %48
  %56 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #5
  %57 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %59
  %60 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #5
  %61 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %59, !llvm.loop !22

63:                                               ; preds = %59, %55
  %64 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #5
  %65 = load atomic i64, i64* %3 monotonic, align 8
  br label %66

66:                                               ; preds = %53, %63
  %67 = phi i64 [ %65, %63 ], [ %54, %53 ]
  %68 = phi i32 [ 40, %63 ], [ %40, %53 ]
  %69 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #5
  %70 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #6
  br label %71

71:                                               ; preds = %66, %36
  %72 = phi i64 [ %38, %36 ], [ %67, %66 ]
  %73 = phi i32 [ %37, %36 ], [ %68, %66 ]
  br label %13

74:                                               ; preds = %18
  ret void
}

declare void @halide_thread_yield() local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0
  %3 = load atomic i64, i64* %2 monotonic, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ]
  %6 = and i64 %5, 2
  %7 = icmp ne i64 %6, 0
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7
  br i1 %9, label %65, label %10

10:                                               ; preds = %4
  %11 = or i64 %5, 2
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %63
  %16 = phi { i64, i1 } [ %64, %63 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0
  %18 = and i64 %17, -4
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !20
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !tbaa !17
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !tbaa !19
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !tbaa !20
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null
  br i1 %33, label %23, label %34, !llvm.loop !24

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !20
  %36 = and i64 %17, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = and i64 %17, -3
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic
  %41 = extractvalue { i64, i1 } %40, 1
  br i1 %41, label %65, label %63

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !tbaa !19
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  %48 = and i64 %47, 1
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic
  %50 = extractvalue { i64, i1 } %49, 1
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %46, label %63, !llvm.loop !25

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !20
  %55 = atomicrmw and i64* %2, i64 -3 release
  br label %56

56:                                               ; preds = %46, %54
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #5
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2
  store i8 0, i8* %59, align 8, !tbaa !12
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #5
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #5
  br label %65

63:                                               ; preds = %51, %38
  %64 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire
  br label %15

65:                                               ; preds = %4, %38, %56
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) local_unnamed_addr #0 {
  %2 = mul i64 %0, -7046029254386353131
  %3 = lshr i64 %2, 54
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0
  %6 = cmpxchg weak i64* %5, i64 0, i64 1 acquire monotonic
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %9) #5
  br label %10

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #3 {
  %4 = mul i64 %1, -7046029254386353131
  %5 = lshr i64 %4, 54
  %6 = mul i64 %2, -7046029254386353131
  %7 = lshr i64 %6, 54
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0
  %12 = cmpxchg weak i64* %11, i64 0, i64 1 acquire monotonic
  %13 = extractvalue { i64, i1 } %12, 1
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #5
  br label %46

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %7
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, i32 0
  %22 = cmpxchg weak i64* %21, i64 0, i64 1 acquire monotonic
  %23 = extractvalue { i64, i1 } %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %25) #5
  br label %26

26:                                               ; preds = %18, %24
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0
  %28 = cmpxchg weak i64* %27, i64 0, i64 1 acquire monotonic
  %29 = extractvalue { i64, i1 } %28, 1
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #5
  br label %46

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, i32 0
  %36 = cmpxchg weak i64* %35, i64 0, i64 1 acquire monotonic
  %37 = extractvalue { i64, i1 } %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %39) #5
  br label %40

40:                                               ; preds = %32, %38
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, i32 0
  %42 = cmpxchg weak i64* %41, i64 0, i64 1 acquire monotonic
  %43 = extractvalue { i64, i1 } %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #5
  br label %46

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 8, !tbaa !11
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !tbaa !26
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !tbaa !28
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %9 = atomicrmw and i64* %8, i64 -2 release
  %10 = and i64 %9, 2
  %11 = icmp ne i64 %10, 0
  %12 = icmp ult i64 %9, 4
  %13 = or i1 %12, %11
  br i1 %13, label %56, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #5
  br label %56

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %17, label %18, label %37

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %20 = atomicrmw and i64* %19, i64 -2 release
  %21 = and i64 %20, 2
  %22 = icmp ne i64 %21, 0
  %23 = icmp ult i64 %20, 4
  %24 = or i1 %23, %22
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %26) #5
  br label %27

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !tbaa !28
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, i32 0
  %30 = atomicrmw and i64* %29, i64 -2 release
  %31 = and i64 %30, 2
  %32 = icmp ne i64 %31, 0
  %33 = icmp ult i64 %30, 4
  %34 = or i1 %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %36) #5
  br label %56

37:                                               ; preds = %16
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0
  %39 = atomicrmw and i64* %38, i64 -2 release
  %40 = and i64 %39, 2
  %41 = icmp ne i64 %40, 0
  %42 = icmp ult i64 %39, 4
  %43 = or i1 %42, %41
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #5
  br label %46

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !tbaa !26
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, i32 0
  %49 = atomicrmw and i64* %48, i64 -2 release
  %50 = and i64 %49, 2
  %51 = icmp ne i64 %50, 0
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %55) #5
  br label %56

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  ret i1 true
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  ret i64 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  ret void
}

; Function Attrs: nounwind
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #6
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2
  store i8 0, i8* %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #5
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1
  store i64 0, i64* %11, align 8, !tbaa !29
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !tbaa !32
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3
  store i64 0, i64* %13, align 8, !tbaa !33
  %14 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #6
  store i8 0, i8* %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2
  store i64 0, i64* %16, align 8, !tbaa !36
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 8, !tbaa !37
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #5
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0
  %23 = atomicrmw and i64* %22, i64 -2 release
  %24 = and i64 %23, 2
  %25 = icmp ne i64 %24, 0
  %26 = icmp ult i64 %23, 4
  %27 = or i1 %26, %25
  br i1 %27, label %59, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %29) #5
  br label %59

30:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !tbaa !32
  store i64 %0, i64* %11, align 8, !tbaa !29
  store i8 1, i8* %6, align 8, !tbaa !12
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 1
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, align 8, !tbaa !39
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %32, null
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, i64 0, i32 2
  %37 = select i1 %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, align 8, !tbaa !11
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 8, !tbaa !42
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0
  %40 = atomicrmw and i64* %39, i64 -2 release
  %41 = and i64 %40, 2
  %42 = icmp ne i64 %41, 0
  %43 = icmp ult i64 %40, 4
  %44 = or i1 %43, %42
  br i1 %44, label %47, label %45

45:                                               ; preds = %30
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %46) #5
  br label %47

47:                                               ; preds = %30, %45
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1
  %49 = load void (i8*)*, void (i8*)** %48, align 8, !tbaa !43
  call void %49(i8* nonnull %19) #5
  %50 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #5
  %51 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47, %53
  %54 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #5
  %55 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %53, !llvm.loop !22

57:                                               ; preds = %53, %47
  %58 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #5
  br label %59

59:                                               ; preds = %28, %21, %57
  %60 = phi i64* [ %13, %57 ], [ %16, %21 ], [ %16, %28 ]
  %61 = load i64, i64* %60, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #6
  %62 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #5
  %63 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #6
  ret i64 %61
}

; Function Attrs: nounwind mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %11

11:                                               ; preds = %60, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %61, %60 ]
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %62, %60 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %63, %60 ]
  %15 = phi i64 [ undef, %2 ], [ %64, %60 ]
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1
  %19 = load atomic i64, i64* %18 monotonic, align 8
  %20 = icmp eq i64 %19, %0
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 8, !tbaa !32
  br i1 %20, label %23, label %60

23:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !tbaa !11
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !tbaa !42
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  br i1 %27, label %40, label %29

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !tbaa !42
  br label %40

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 1
  %32 = load atomic i64, i64* %31 monotonic, align 8
  %33 = icmp eq i64 %32, %0
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 2
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !tbaa !32
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null
  %37 = or i1 %33, %36
  br i1 %37, label %38, label %29, !llvm.loop !45

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8
  br label %40

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ]
  %42 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !tbaa !46
  %43 = icmp ne i8 %41, 0
  %44 = tail call i64 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #5
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3
  store i64 %44, i64* %45, align 8, !tbaa !33
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0
  %47 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %46) #5
  %48 = atomicrmw and i64* %9, i64 -2 release
  %49 = and i64 %48, 2
  %50 = icmp ne i64 %49, 0
  %51 = icmp ult i64 %48, 4
  %52 = or i1 %51, %50
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #5
  br label %54

54:                                               ; preds = %40, %53
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 2
  store i8 0, i8* %55, align 8, !tbaa !12
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 1
  %57 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %56) #5
  %58 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %46) #5
  %59 = zext i8 %41 to i64
  br label %60

60:                                               ; preds = %17, %54
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %54 ], [ %21, %17 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %54 ], [ %14, %17 ]
  %63 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %54 ], [ %22, %17 ]
  %64 = phi i64 [ %59, %54 ], [ %15, %17 ]
  br i1 %20, label %74, label %11, !llvm.loop !47

65:                                               ; preds = %11
  %66 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !tbaa !46
  %67 = tail call i64 %66(i8* nonnull %8, i32 0, i1 zeroext false) #5
  %68 = atomicrmw and i64* %9, i64 -2 release
  %69 = and i64 %68, 2
  %70 = icmp ne i64 %69, 0
  %71 = icmp ult i64 %68, 4
  %72 = or i1 %71, %70
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #5
  br label %74

74:                                               ; preds = %60, %73, %65
  %75 = phi i64 [ 0, %65 ], [ 0, %73 ], [ %64, %60 ]
  ret i64 %75
}

; Function Attrs: nounwind mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #7
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !tbaa !11
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #6
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i64 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i64 [ 0, %10 ], [ %55, %54 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1
  %19 = load atomic i64, i64* %18 monotonic, align 8
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !tbaa !32
  %22 = icmp eq i64 %19, %0
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !tbaa !11
  br i1 %22, label %23, label %54

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !tbaa !42
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !tbaa !42
  br label %27

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = shl i64 %15, 4
  %31 = call i8* @malloc(i64 %30) #5
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**
  %33 = icmp eq i64 %15, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8
  br i1 %36, label %46, label %44

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !tbaa !11
  %42 = add nuw i64 %38, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %34, label %37, !llvm.loop !48

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*
  call void @free(i8* %45) #5
  br label %46

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ]
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3
  store i64 %1, i64* %49, align 8, !tbaa !33
  %50 = add i64 %17, 1
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !tbaa !11
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #5
  br label %54

54:                                               ; preds = %12, %46
  %55 = phi i64 [ %50, %46 ], [ %17, %12 ]
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ]
  %57 = phi i64 [ %48, %46 ], [ %15, %12 ]
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ]
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null
  br i1 %59, label %60, label %12, !llvm.loop !49

60:                                               ; preds = %54, %2
  %61 = phi i64 [ 0, %2 ], [ %55, %54 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ]
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0
  %64 = atomicrmw and i64* %63, i64 -2 release
  %65 = and i64 %64, 2
  %66 = icmp ne i64 %65, 0
  %67 = icmp ult i64 %64, 4
  %68 = or i1 %67, %66
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %70) #5
  br label %71

71:                                               ; preds = %60, %69
  %72 = icmp eq i64 %61, 0
  br i1 %72, label %83, label %74

73:                                               ; preds = %74
  br i1 %72, label %83, label %85

74:                                               ; preds = %71, %74
  %75 = phi i64 [ %81, %74 ], [ 0, %71 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %75
  %77 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %76, align 8, !tbaa !11
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i64 0, i32 0, i32 2
  store i8 0, i8* %78, align 8, !tbaa !12
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i64 0, i32 0, i32 1
  %80 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %79) #5
  %81 = add nuw i64 %75, 1
  %82 = icmp eq i64 %81, %61
  br i1 %82, label %73, label %74, !llvm.loop !50

83:                                               ; preds = %85, %71, %73
  %84 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8
  br i1 %84, label %95, label %93

85:                                               ; preds = %73, %85
  %86 = phi i64 [ %91, %85 ], [ 0, %73 ]
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %86
  %88 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, align 8, !tbaa !11
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i64 0, i32 0, i32 0
  %90 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %89) #5
  %91 = add nuw i64 %86, 1
  %92 = icmp eq i64 %91, %61
  br i1 %92, label %83, label %85, !llvm.loop !51

93:                                               ; preds = %83
  %94 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*
  call void @free(i8* %94) #5
  br label %95

95:                                               ; preds = %93, %83
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #6
  ret i64 %61
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #3 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #6
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #7
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #6
  store i8 0, i8* %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2
  store i64 0, i64* %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !tbaa !37
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #5
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  br label %94

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !tbaa !11
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null
  br i1 %20, label %73, label %21

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1
  %29 = load atomic i64, i64* %28 monotonic, align 8
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !tbaa !32
  %32 = icmp eq i64 %29, %0
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !tbaa !11
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !tbaa !26
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !tbaa !42
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !tbaa !42
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !tbaa !34, !range !21
  %41 = icmp ne i8 %40, 0
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !tbaa !32
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ]
  store atomic i64 %1, i64* %28 monotonic, align 8
  br label %50

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ]
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ]
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ]
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null
  br i1 %56, label %57, label %21, !llvm.loop !52

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !tbaa !32
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !tbaa !28
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !tbaa !39
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !tbaa !42
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !tbaa !11
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !tbaa !42
  br label %73

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !tbaa !53
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #5
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3
  store i64 %3, i64* %80, align 8, !tbaa !33
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0
  %82 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %81) #5
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2
  store i8 0, i8* %83, align 8, !tbaa !12
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1
  %85 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %84) #5
  %86 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %81) #5
  br label %88

87:                                               ; preds = %73
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i8, i8* %8, align 8
  %90 = and i8 %89, 1
  %91 = icmp ne i8 %90, 0
  %92 = and i1 %78, %91
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %88, %14
  %95 = phi i32 [ %93, %88 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #6
  ret i32 %95
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !54
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = icmp eq i64 %6, 3
  ret i1 %7
}

; Function Attrs: nounwind willreturn mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  %4 = select i1 %2, i64 2, i64 0
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !54
  store atomic i64 %4, i64* %7 release, align 8
  ret i64 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !56
  store atomic i64 0, i64* %7 monotonic, align 8
  br label %8

8:                                                ; preds = %4, %3
  ret i64 0
}

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !58
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 40
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !tbaa !60
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  store atomic i64 0, i64* %5 monotonic, align 8
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0
  %15 = load atomic i64, i64* %14 monotonic, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  %20 = or i64 %19, 2
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0
  store i8 %28, i8* %29, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %2, %27
  ret i1 %11
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0
  %6 = load i8, i8* %5, align 8, !tbaa !34, !range !21
  %7 = icmp ne i8 %6, 0
  %8 = and i1 %7, %3
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0
  %14 = atomicrmw or i64* %13, i64 2 monotonic
  br label %15

15:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !61
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds i8, i8* %0, i64 40
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !tbaa !63
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64
  br i1 %7, label %12, label %13

12:                                               ; preds = %2
  store atomic i64 %11, i64* %5 monotonic, align 8
  br label %17

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2
  store i64 %11, i64* %16, align 8, !tbaa !36
  br label %17

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ]
  ret i1 %18
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %3 = getelementptr inbounds i8, i8* %0, i64 40
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic
  %11 = extractvalue { i64, i1 } %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #6
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  store i64* %6, i64** %18, align 8, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !tbaa !37
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %16, align 8, !tbaa !46
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %21 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %20) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6
  br label %22

22:                                               ; preds = %1, %9, %12
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !61
  store atomic i64 0, i64* %7 monotonic, align 8
  br label %8

8:                                                ; preds = %4, %3
  ret i64 0
}

; Function Attrs: nounwind
define weak void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %59, label %6

6:                                                ; preds = %1
  %7 = load atomic i64, i64* %3 monotonic, align 8
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  br label %16

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  %19 = and i64 %17, 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  %23 = or i64 %22, 1
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic
  %25 = extractvalue { i64, i1 } %24, 1
  br i1 %25, label %59, label %26

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ]
  %34 = icmp sgt i32 %18, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = icmp eq i32 %18, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1
  call void @halide_thread_yield() #5
  %39 = load atomic i64, i64* %3 monotonic, align 8
  br label %55

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  %42 = and i64 %33, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = or i64 %33, 2
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #6
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !tbaa !43
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !53
  store i64* %3, i64** %13, align 8, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !37
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !tbaa !46
  %51 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #5
  %52 = icmp eq i64 %51, %14
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load atomic i64, i64* %3 monotonic, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #6
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #6
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void
}

; Function Attrs: nounwind
define weak void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #6
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %15, align 8, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !tbaa !37
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !tbaa !46
  %16 = ptrtoint %struct.halide_mutex* %0 to i64
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %18 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #6
  br label %19

19:                                               ; preds = %1, %6, %9
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0
  %4 = load atomic i64, i64* %3 monotonic, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #6
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !tbaa !60
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !37
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !53
  %15 = ptrtoint %struct.halide_cond* %0 to i64
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %15, i64 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16, i64 0) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0
  %4 = load atomic i64, i64* %3 monotonic, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #6
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !tbaa !64
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !tbaa !46
  %15 = ptrtoint %struct.halide_cond* %0 to i64
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0
  %17 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #6
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1
  store i64* %6, i64** %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !tbaa !63
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !tbaa !37
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 8, !tbaa !43
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %9, align 8, !tbaa !46
  %14 = ptrtoint %struct.halide_cond* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0
  %16 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #5
  %17 = ptrtoint %struct.halide_mutex* %1 to i64
  %18 = icmp eq i64 %16, %17
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0
  br i1 %18, label %75, label %20

20:                                               ; preds = %2
  %21 = cmpxchg weak i64* %19, i64 0, i64 1 acquire monotonic
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %80, label %23

23:                                               ; preds = %20
  %24 = load atomic i64, i64* %19 monotonic, align 8
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  %35 = and i64 %33, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  %39 = or i64 %38, 1
  %40 = cmpxchg weak i64* %19, i64 %38, i64 %39 acquire monotonic
  %41 = extractvalue { i64, i1 } %40, 1
  br i1 %41, label %80, label %42

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %37, label %46

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ]
  %50 = icmp sgt i32 %34, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = icmp eq i32 %34, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1
  call void @halide_thread_yield() #5
  %55 = load atomic i64, i64* %19 monotonic, align 8
  br label %71

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  %58 = and i64 %49, 2
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = or i64 %49, 2
  %62 = cmpxchg weak i64* %19, i64 %49, i64 %61 monotonic monotonic
  %63 = extractvalue { i64, i1 } %62, 1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #6
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 8, !tbaa !43
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !tbaa !53
  store i64* %19, i64** %30, align 8, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !tbaa !37
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %28, align 8, !tbaa !46
  %67 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #5
  %68 = icmp eq i64 %67, %17
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load atomic i64, i64* %19 monotonic, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #6
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #6
  br label %80

75:                                               ; preds = %2
  %76 = load atomic i64, i64* %19 monotonic, align 8
  %77 = and i64 %76, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0)) #5
  call void @abort() #5
  br label %80

80:                                               ; preds = %37, %20, %74, %75, %79
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #5
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #5
  %9 = bitcast i8* %2 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !65
  %10 = icmp eq i8* %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #5
  br label %14

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #5
  br label %14

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ]
  ret %struct.halide_mutex_array* %15
}

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

declare i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !65
  tail call void @halide_free(i8* %0, i8* %4) #5
  tail call void @halide_free(i8* %0, i8* %1) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !tbaa !65
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !tbaa !65
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #7
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #4 {
  %2 = icmp sgt i32 %0, 256
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1
  %5 = select i1 %4, i32 %0, i32 1
  ret i32 %5

6:                                                ; preds = %1
  ret i32 256
}

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #0 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #5
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #5
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ]
  ret i32 %12
}

declare i8* @getenv(i8*) local_unnamed_addr #2

declare i32 @atoi(i8*) local_unnamed_addr #2

declare extern_weak i32 @halide_host_cpu_count() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ]
  br i1 %3, label %15, label %12

12:                                               ; preds = %10
  %13 = load i32, i32* %4, align 8, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %21

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !tbaa !71, !range !21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %417

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !tbaa !75
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %417, label %21

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  %23 = load i32, i32* %5, align 4, !tbaa !77
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !tbaa !78
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0
  br i1 %34, label %35, label %30, !llvm.loop !79

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %28 ], [ %32, %30 ]
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !tbaa !11
  store i32 0, i32* %4, align 8, !tbaa !67
  br label %402

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !tbaa !80
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9
  %43 = load i32, i32* %42, align 4, !tbaa !77
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !tbaa !77
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #7
  br label %402

46:                                               ; preds = %25, %41, %38
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null
  br i1 %47, label %196, label %51

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null
  br i1 %50, label %206, label %52

51:                                               ; preds = %46
  br i1 %3, label %52, label %121

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %52 ]
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !tbaa !80
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8
  %62 = load i32, i32* %61, align 8, !tbaa !75
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7
  %65 = load i32, i32* %64, align 4, !tbaa !81
  br i1 %63, label %71, label %66

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6
  %69 = load i32, i32* %68, align 8, !tbaa !82
  %70 = sub nsw i32 %67, %69
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6
  %73 = load i32, i32* %72, align 8, !tbaa !82
  %74 = sub nsw i32 %65, %73
  br label %80

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %79 = sub i32 %77, %78
  br label %80

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ]
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7
  %83 = load i32, i32* %82, align 4, !tbaa !81
  %84 = icmp sge i32 %81, %83
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !85, !range !21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8
  %90 = load i32, i32* %89, align 8, !tbaa !75
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  %94 = and i1 %93, %84
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10
  %97 = load i32, i32* %96, align 8, !tbaa !86
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4
  %99 = load i32, i32* %98, align 8, !tbaa !87
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %225

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !tbaa !88
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 8, !tbaa !89
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1
  %110 = load i32, i32* %109, align 8, !tbaa !91
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %110) #5
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !tbaa !86
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %96, align 8, !tbaa !86
  %115 = load i32, i32* %98, align 8, !tbaa !87
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %103, label %225, !llvm.loop !92

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !tbaa !78
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null
  br i1 %120, label %196, label %54

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %51 ]
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !tbaa !80
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %131 = sub i32 %129, %130
  br label %147

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8
  %134 = load i32, i32* %133, align 8, !tbaa !75
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7
  %137 = load i32, i32* %136, align 4, !tbaa !81
  br i1 %135, label %138, label %142

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6
  %140 = load i32, i32* %139, align 8, !tbaa !82
  %141 = sub nsw i32 %137, %140
  br label %147

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6
  %145 = load i32, i32* %144, align 8, !tbaa !82
  %146 = sub nsw i32 %143, %145
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ]
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7
  %150 = load i32, i32* %149, align 4, !tbaa !81
  %151 = icmp slt i32 %148, %150
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !tbaa !93
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !tbaa !93
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154
  %156 = icmp ne i32 %150, 0
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8
  %158 = load i8, i8* %157, align 8, !tbaa !85, !range !21
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8
  %162 = load i32, i32* %161, align 8, !tbaa !75
  %163 = icmp eq i32 %162, 0
  br label %164

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  %166 = and i1 %156, %155
  %167 = or i1 %151, %166
  %168 = xor i1 %165, true
  %169 = or i1 %167, %168
  br i1 %169, label %192, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10
  %172 = load i32, i32* %171, align 8, !tbaa !86
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4
  %174 = load i32, i32* %173, align 8, !tbaa !87
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %225

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !tbaa !88
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0
  %183 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %182, align 8, !tbaa !89
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1
  %185 = load i32, i32* %184, align 8, !tbaa !91
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %183, i32 %185) #5
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !tbaa !86
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %171, align 8, !tbaa !86
  %190 = load i32, i32* %173, align 8, !tbaa !87
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %178, label %225, !llvm.loop !92

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !tbaa !78
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null
  br i1 %195, label %196, label %121

196:                                              ; preds = %192, %117, %46
  br i1 %3, label %206, label %197

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1
  %199 = icmp slt i32 %11, 40
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %402

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !tbaa !94
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !tbaa !94
  store i8 1, i8* %8, align 4, !tbaa !95
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  store i8 0, i8* %8, align 4, !tbaa !95
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !tbaa !94
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !tbaa !94
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !tbaa !96
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !tbaa !96
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !tbaa !98
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  br label %221

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1
  %218 = icmp slt i32 %11, 40
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %221

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ]
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !tbaa !96
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !tbaa !96
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !tbaa !86
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8
  %230 = load i32, i32* %229, align 8, !tbaa !75
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8, !tbaa !75
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !tbaa !80
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7
  %236 = load i32, i32* %235, align 4, !tbaa !81
  br i1 %234, label %237, label %240

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %239 = add nsw i32 %238, %236
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  br label %244

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6
  %242 = load i32, i32* %241, align 8, !tbaa !82
  %243 = add nsw i32 %242, %236
  store i32 %243, i32* %241, align 8, !tbaa !82
  br label %244

244:                                              ; preds = %240, %237
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8
  %246 = load i8, i8* %245, align 8, !tbaa !85, !range !21
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %323, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !tbaa !11
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %259 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  br label %260

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  %263 = load i32, i32* %251, align 8, !tbaa !67
  %264 = sub nsw i32 %263, %262
  %265 = icmp sgt i32 %264, %261
  br i1 %265, label %266, label %297

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !tbaa !86
  %268 = load i32, i32* %253, align 8, !tbaa !87
  br label %269

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ]
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ]
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  %274 = icmp slt i32 %272, %271
  br i1 %274, label %275, label %291

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !tbaa !88
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0
  %280 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %279, align 8, !tbaa !89
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1
  %282 = load i32, i32* %281, align 8, !tbaa !91
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %280, i32 %282) #5
  br i1 %283, label %284, label %297

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !tbaa !86
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %252, align 8, !tbaa !86
  %287 = load i32, i32* %253, align 8, !tbaa !87
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %275, label %289, !llvm.loop !92

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !tbaa !67
  br label %291

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ]
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !tbaa !86
  %294 = add nuw nsw i32 %273, 1
  %295 = sub nsw i32 %292, %262
  %296 = icmp sgt i32 %295, %294
  br i1 %296, label %269, label %300, !llvm.loop !99

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %255, align 8, !tbaa !100
  %303 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %256, align 8, !tbaa !101
  %304 = load i32, i32* %257, align 4, !tbaa !102
  %305 = add nsw i32 %304, %262
  %306 = load i8*, i8** %258, align 8, !tbaa !103
  %307 = tail call i32 @halide_do_loop_task(i8* %302, i32 (i8*, i32, i32, i8*, i8*)* %303, i32 %305, i32 %301, i8* %306, i8* nonnull %259) #7
  %308 = add nuw nsw i32 %301, %262
  %309 = icmp eq i32 %307, 0
  br i1 %309, label %260, label %310, !llvm.loop !104

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ]
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %314 = load i32, i32* %257, align 4, !tbaa !102
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %257, align 4, !tbaa !102
  %316 = load i32, i32* %251, align 8, !tbaa !67
  %317 = sub nsw i32 %316, %313
  store i32 %317, i32* %251, align 8, !tbaa !67
  br i1 %311, label %319, label %318

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !tbaa !67
  br label %352

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0
  br i1 %320, label %321, label %382

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  br label %382

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !tbaa.struct !105
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8, !tbaa.struct !108
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !tbaa.struct !109
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %333 = load i8*, i8** %332, align 8, !tbaa.struct !110
  %334 = add nsw i32 %329, 1
  store i32 %334, i32* %328, align 4, !tbaa !102
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %336 = load i32, i32* %335, align 8, !tbaa !67
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %335, align 8, !tbaa !67
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !tbaa !11
  br label %342

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #7
  br label %349

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #7
  br label %349

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %382, label %352

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9
  store i32 %353, i32* %354, align 4, !tbaa !77
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4
  %356 = load i32, i32* %355, align 8, !tbaa !111
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %382

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !93
  %361 = zext i32 %356 to i64
  br label %362

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9
  %366 = load i32, i32* %365, align 4, !tbaa !77
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !tbaa !77
  %369 = load i32, i32* %229, align 8, !tbaa !75
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11
  %373 = load i8, i8* %372, align 4, !tbaa !95, !range !21
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ]
  %376 = and i8 %364, 1
  %377 = or i8 %375, %376
  br label %378

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ]
  %380 = add nuw nsw i64 %363, 1
  %381 = icmp eq i64 %380, %361
  br i1 %381, label %382, label %362, !llvm.loop !112

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ]
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !tbaa !80
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7
  %387 = load i32, i32* %386, align 4, !tbaa !81
  br i1 %385, label %388, label %391

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %390 = sub nsw i32 %389, %387
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  br label %395

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6
  %393 = load i32, i32* %392, align 8, !tbaa !82
  %394 = sub nsw i32 %393, %387
  store i32 %394, i32* %392, align 8, !tbaa !82
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !tbaa !75
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %229, align 8, !tbaa !75
  %398 = and i8 %383, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %416

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !llvm.loop !113

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %406 = load i32, i32* %405, align 8, !tbaa !67
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9
  %410 = load i32, i32* %409, align 4, !tbaa !77
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %402, label %412

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11
  %414 = load i8, i8* %413, align 4, !tbaa !95, !range !21
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %402, label %416

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #7
  br label %402

417:                                              ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 {
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !tbaa !11
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !tbaa !11
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 {
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !tbaa !114, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), %3 ]
  %8 = load i8, i8* %7, align 1, !tbaa !115
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*)
  br i1 %12, label %13, label %6, !llvm.loop !116

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ]
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %17

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #7
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #7
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !tbaa !114
  br label %25

25:                                               ; preds = %22, %3
  %26 = icmp sgt i32 %0, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64
  br label %38

29:                                               ; preds = %64
  %30 = and i8 %49, 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ]
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ]
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ]
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ]
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null
  br i1 %37, label %68, label %100

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7
  %46 = load i32, i32* %45, align 4, !tbaa !81
  %47 = icmp eq i32 %46, 0
  %48 = add i32 %46, %40
  %49 = select i1 %47, i8 1, i8 %43
  %50 = select i1 %47, i8 %41, i8 1
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4
  %52 = load i32, i32* %51, align 8, !tbaa !87
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i8 %42, i8 1
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !85, !range !21
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1
  br label %64

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6
  %62 = load i32, i32* %61, align 8, !tbaa !67
  %63 = add nsw i32 %62, %44
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ]
  %66 = add nuw nsw i64 %39, 1
  %67 = icmp eq i64 %66, %28
  br i1 %67, label %29, label %38, !llvm.loop !118

68:                                               ; preds = %31
  %69 = or i8 %35, %34
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %36, %73
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %76 = icmp slt i32 %75, 256
  br i1 %76, label %77, label %96

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  %80 = add nsw i32 %79, -1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %85 = sub i32 %83, %84
  %86 = icmp slt i32 %85, %74
  br i1 %86, label %87, label %96

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #7
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %93
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !tbaa !11
  %95 = icmp slt i32 %91, 255
  br i1 %95, label %77, label %96, !llvm.loop !119

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  br label %118

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7
  %102 = load i32, i32* %101, align 4, !tbaa !81
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8
  %104 = load i32, i32* %103, align 8, !tbaa !75
  %105 = mul nsw i32 %104, %102
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6
  %107 = load i32, i32* %106, align 8, !tbaa !82
  %108 = sub nsw i32 %105, %107
  %109 = icmp sgt i32 %36, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %111

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !tbaa !82
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %106, align 8, !tbaa !82
  br label %118

118:                                              ; preds = %111, %96, %115, %97
  br i1 %26, label %119, label %123

119:                                              ; preds = %118
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  %121 = zext i32 %0 to i64
  br label %136

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !76
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !tbaa !94
  %125 = icmp ne i32 %124, 0
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8
  %128 = icmp slt i32 %126, %127
  %129 = or i1 %125, %128
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129
  %132 = select i1 %131, i32 %127, i32 %32
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !tbaa !98
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #7
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !tbaa !98
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !tbaa !97
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %146, label %149

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ]
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ]
  %139 = add nsw i64 %137, -1
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !tbaa !78
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !tbaa !93
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4
  store i32 %0, i32* %143, align 8, !tbaa !111
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6
  store i32 0, i32* %144, align 8, !tbaa !82
  %145 = icmp sgt i64 %137, 1
  br i1 %145, label %136, label %122, !llvm.loop !120

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #7
  %147 = icmp eq i8 %33, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #7
  br label %149

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %149
  br i1 %37, label %158, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6
  %156 = load i32, i32* %155, align 8, !tbaa !82
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8, !tbaa !82
  br label %161

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !tbaa !84
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #5
  ret i32 %5
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5
  store i32 %2, i32* %11, align 4, !tbaa !102
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6
  store i32 %3, i32* %12, align 8, !tbaa !67
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8
  store i8 0, i8* %13, align 8, !tbaa !85
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !tbaa !88
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4
  store i32 0, i32* %15, align 8, !tbaa !87
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1
  store i8* %4, i8** %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !81
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2
  store i8* null, i8** %18, align 8, !tbaa !121
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !tbaa !122
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7
  store i8* %0, i8** %20, align 8, !tbaa !100
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9
  store i32 0, i32* %21, align 4, !tbaa !77
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8
  store i32 0, i32* %22, align 8, !tbaa !75
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10
  store i32 0, i32* %23, align 8, !tbaa !86
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11
  store i8 0, i8* %24, align 4, !tbaa !95
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !tbaa !93
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4
  store i32 0, i32* %26, align 8, !tbaa !111
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !tbaa !80
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #7
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %28 = load i32, i32* %21, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #6
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 {
  %5 = sext i32 %1 to i64
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %35, %33 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %39

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %33 ], [ %1, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %34, %33 ], [ %2, %4 ]
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 0, i32 6
  %16 = load i32, i32* %15, align 8, !tbaa !123
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i32 %13, -1
  br label %33

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 1
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*
  %24 = bitcast %struct.halide_parallel_task_t* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !tbaa.struct !124
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !tbaa !122
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7
  store i8* %0, i8** %26, align 8, !tbaa !100
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9
  store i32 0, i32* %27, align 4, !tbaa !77
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8
  store i32 0, i32* %28, align 8, !tbaa !75
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10
  store i32 0, i32* %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11
  store i8 0, i8* %30, align 4, !tbaa !95
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**
  store i8* %3, i8** %32, align 8, !tbaa !80
  br label %33

33:                                               ; preds = %20, %18
  %34 = phi %struct.halide_parallel_task_t* [ %14, %18 ], [ %21, %20 ]
  %35 = phi i32 [ %19, %18 ], [ %13, %20 ]
  %36 = add nuw nsw i64 %12, 1
  %37 = sext i32 %35 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %11, label %8, !llvm.loop !125

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #7
  %41 = icmp sgt i32 %9, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64
  br label %46

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #7
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9
  %51 = load i32, i32* %50, align 4, !tbaa !77
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 %48, i32 %51
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %43
  br i1 %55, label %44, label %46, !llvm.loop !126

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ]
  ret i32 %57
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #4 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  store atomic i32 %1, i32* %3 release, align 4
  ret i32 %1
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*
  %6 = load atomic i32, i32* %5 acquire, align 4
  %7 = sub nsw i32 %6, %1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %20

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0
  %16 = sub nsw i32 %15, %1
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %9, label %18

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1
  br label %20

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ]
  ret i1 %21
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1
  ret i32 %10
}

; Function Attrs: nounwind mustprogress
define weak void @halide_thread_pool_cleanup() #0 {
  tail call void @halide_shutdown_thread_pool() #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_shutdown_thread_pool() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !tbaa !114, !range !21
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !tbaa !71
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i32 0, i64 2116) #5
  br label %16

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %9
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !tbaa !11
  tail call void @halide_join_thread(%struct.halide_thread* %11) #7
  %12 = add nuw nsw i64 %9, 1
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !tbaa !83
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %8, label %6, !llvm.loop !127

16:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  br label %8

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #7
  br label %8

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #7
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !tbaa !117
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #7
  ret i32 %10
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #4 {
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !tbaa !11
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !tbaa !11
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !tbaa !11
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !tbaa !11
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 {
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !tbaa !11
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !tbaa !11
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !tbaa !11
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !tbaa !11
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !tbaa !11
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i1 %4
}

declare i32 @pthread_mutex_init(%struct.pthread_mutex_t*, i8*) local_unnamed_addr #2

declare i32 @pthread_cond_init(%struct.pthread_cond_t*, i8*) local_unnamed_addr #2

declare i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) local_unnamed_addr #2

declare i32 @pthread_cond_wait(%struct.pthread_cond_t*, %struct.pthread_mutex_t*) local_unnamed_addr #2

declare i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) local_unnamed_addr #2

declare i32 @pthread_cond_destroy(%struct.pthread_cond_t*) local_unnamed_addr #2

declare i32 @pthread_mutex_destroy(%struct.pthread_mutex_t*) local_unnamed_addr #2

declare i32 @pthread_cond_signal(%struct.pthread_cond_t*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !5, i64 0, !5, i64 8, !8, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !5, i64 8}
!10 = !{!4, !8, i64 16}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !16, i64 128}
!13 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !14, i64 0, !15, i64 64, !16, i64 128}
!14 = !{!"_ZTS15pthread_mutex_t", !6, i64 0}
!15 = !{!"_ZTS14pthread_cond_t", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!18, !5, i64 136}
!18 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !13, i64 0, !5, i64 136, !5, i64 144, !5, i64 152}
!19 = !{!18, !5, i64 144}
!20 = !{!18, !5, i64 152}
!21 = !{i8 0, i8 2}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!27, !5, i64 0}
!27 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !5, i64 0, !5, i64 8}
!28 = !{!27, !5, i64 8}
!29 = !{!30, !31, i64 136}
!30 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !13, i64 0, !31, i64 136, !5, i64 144, !31, i64 152}
!31 = !{!"long long", !6, i64 0}
!32 = !{!30, !5, i64 144}
!33 = !{!30, !31, i64 152}
!34 = !{!35, !16, i64 0}
!35 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !16, i64 0, !31, i64 8}
!36 = !{!35, !31, i64 8}
!37 = !{!38, !5, i64 0}
!38 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!39 = !{!40, !5, i64 8}
!40 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !41, i64 0, !5, i64 8, !5, i64 16}
!41 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !31, i64 0}
!42 = !{!40, !5, i64 16}
!43 = !{!38, !5, i64 8}
!44 = !{!31, !31, i64 0}
!45 = distinct !{!45, !23}
!46 = !{!38, !5, i64 16}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{!38, !5, i64 24}
!54 = !{!55, !5, i64 32}
!55 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !5, i64 32}
!56 = !{!57, !5, i64 32}
!57 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !5, i64 32, !5, i64 40}
!58 = !{!59, !5, i64 32}
!59 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !5, i64 32, !5, i64 40}
!60 = !{!59, !5, i64 40}
!61 = !{!62, !5, i64 32}
!62 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !5, i64 32, !5, i64 40}
!63 = !{!62, !5, i64 40}
!64 = !{!57, !5, i64 40}
!65 = !{!66, !5, i64 0}
!66 = !{!"_ZTS18halide_mutex_array", !5, i64 0}
!67 = !{!68, !70, i64 40}
!68 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !69, i64 0, !5, i64 56, !5, i64 64, !5, i64 72, !70, i64 80, !5, i64 88, !70, i64 96, !5, i64 104, !70, i64 112, !70, i64 116, !70, i64 120, !16, i64 124}
!69 = !{!"_ZTS22halide_parallel_task_t", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !70, i64 32, !70, i64 36, !70, i64 40, !70, i64 44, !16, i64 48}
!70 = !{!"int", !6, i64 0}
!71 = !{!72, !16, i64 2120}
!72 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !73, i64 0, !70, i64 8, !70, i64 12, !5, i64 16, !70, i64 24, !70, i64 28, !70, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !70, i64 64, !70, i64 68, !6, i64 72, !16, i64 2120, !16, i64 2121, !70, i64 2124}
!73 = !{!"_ZTS12halide_mutex", !6, i64 0}
!74 = !{!"_ZTS11halide_cond", !6, i64 0}
!75 = !{!68, !70, i64 112}
!76 = !{!72, !5, i64 16}
!77 = !{!68, !70, i64 116}
!78 = !{!68, !5, i64 64}
!79 = distinct !{!79, !23}
!80 = !{!68, !5, i64 88}
!81 = !{!68, !70, i64 44}
!82 = !{!68, !70, i64 96}
!83 = !{!72, !70, i64 24}
!84 = !{!72, !70, i64 2124}
!85 = !{!68, !16, i64 48}
!86 = !{!68, !70, i64 120}
!87 = !{!68, !70, i64 32}
!88 = !{!68, !5, i64 24}
!89 = !{!90, !5, i64 0}
!90 = !{!"_ZTS26halide_semaphore_acquire_t", !5, i64 0, !70, i64 8}
!91 = !{!90, !70, i64 8}
!92 = distinct !{!92, !23}
!93 = !{!68, !5, i64 72}
!94 = !{!72, !70, i64 68}
!95 = !{!68, !16, i64 124}
!96 = !{!72, !70, i64 64}
!97 = !{!72, !70, i64 28}
!98 = !{!72, !70, i64 32}
!99 = distinct !{!99, !23}
!100 = !{!68, !5, i64 104}
!101 = !{!68, !5, i64 0}
!102 = !{!68, !70, i64 36}
!103 = !{!68, !5, i64 8}
!104 = distinct !{!104, !23}
!105 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 4, !106, i64 36, i64 4, !106, i64 40, i64 4, !106, i64 44, i64 4, !106, i64 48, i64 1, !107, i64 56, i64 8, !11, i64 64, i64 8, !11, i64 72, i64 8, !11, i64 80, i64 4, !106, i64 88, i64 8, !11, i64 96, i64 4, !106, i64 104, i64 8, !11, i64 112, i64 4, !106, i64 116, i64 4, !106, i64 120, i64 4, !106, i64 124, i64 1, !107}
!106 = !{!70, !70, i64 0}
!107 = !{!16, !16, i64 0}
!108 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 4, !106, i64 28, i64 4, !106, i64 32, i64 4, !106, i64 36, i64 4, !106, i64 40, i64 1, !107, i64 48, i64 8, !11, i64 56, i64 8, !11, i64 64, i64 8, !11, i64 72, i64 4, !106, i64 80, i64 8, !11, i64 88, i64 4, !106, i64 96, i64 8, !11, i64 104, i64 4, !106, i64 108, i64 4, !106, i64 112, i64 4, !106, i64 116, i64 1, !107}
!109 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 4, !106, i64 32, i64 8, !11, i64 40, i64 4, !106, i64 48, i64 8, !11, i64 56, i64 4, !106, i64 60, i64 4, !106, i64 64, i64 4, !106, i64 68, i64 1, !107}
!110 = !{i64 0, i64 8, !11, i64 8, i64 4, !106, i64 12, i64 4, !106, i64 16, i64 4, !106, i64 20, i64 1, !107}
!111 = !{!68, !70, i64 80}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = !{!72, !16, i64 2121}
!115 = !{!6, !6, i64 0}
!116 = distinct !{!116, !23}
!117 = !{!72, !70, i64 8}
!118 = distinct !{!118, !23}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
!121 = !{!68, !5, i64 16}
!122 = !{!68, !5, i64 56}
!123 = !{!69, !70, i64 40}
!124 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 4, !106, i64 36, i64 4, !106, i64 40, i64 4, !106, i64 44, i64 4, !106, i64 48, i64 1, !107}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
