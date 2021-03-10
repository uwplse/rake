; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8 }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32 }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i32] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::spawned_thread" = type { void (i8*)*, i8*, i32 }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, [4 x i8] }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type <{ %struct.pthread_mutex_t, %struct.pthread_cond_t, i8, [7 x i8] }>
%struct.pthread_mutex_t = type { [8 x i64] }
%struct.pthread_cond_t = type { [8 x i64] }
%"struct.Halide::Runtime::Internal::Synchronization::hash_bucket" = type { %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", i32, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, i32, [4 x i8] }
%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair" = type { %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* }
%"struct.Halide::Runtime::Internal::Synchronization::validate_action" = type { i8, i32 }
%"struct.Halide::Runtime::Internal::Synchronization::parking_control" = type { i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, void (i8*)*, i32 (i8*, i32, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* }
%"class.Halide::Runtime::Internal::Synchronization::fast_mutex" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32* }
%"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%struct.halide_mutex_array = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak global [12288 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak global %"struct.Halide::Runtime::Internal::work_queue_t" zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 {
  %2 = bitcast i8* %0 to void (i8*)**
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !tbaa !3
  %4 = getelementptr inbounds i8, i8* %0, i32 4
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 4, !tbaa !9
  tail call void %3(i8* %6) #5
  ret i8* null
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i32 12) #5
  %4 = bitcast i8* %3 to void (i8*)**
  store void (i8*)* %0, void (i8*)** %4, align 4, !tbaa !3
  %5 = getelementptr inbounds i8, i8* %3, i32 4
  %6 = bitcast i8* %5 to i8**
  store i8* %1, i8** %6, align 4, !tbaa !9
  %7 = getelementptr inbounds i8, i8* %3, i32 8
  %8 = bitcast i8* %7 to i32*
  store i32 0, i32* %8, align 4, !tbaa !10
  %9 = tail call i32 @pthread_create(i32* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #5
  %10 = bitcast i8* %3 to %struct.halide_thread*
  ret %struct.halide_thread* %10
}

declare i8* @malloc(i32) local_unnamed_addr #2

declare i32 @pthread_create(i32*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 {
  %2 = alloca i8*, align 4
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  store i8* null, i8** %2, align 4, !tbaa !11
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i32 0, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !10
  %7 = call i32 @pthread_join(i32 %6, i8** nonnull %2) #5
  %8 = bitcast %struct.halide_thread* %0 to i8*
  call void @free(i8* %8) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  ret void
}

declare i32 @pthread_join(i32, i8**) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #3 align 2 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !12
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13

13:                                               ; preds = %65, %1
  %14 = phi i32 [ %4, %1 ], [ %66, %65 ]
  %15 = phi i32 [ 40, %1 ], [ %67, %65 ]
  br label %16

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = or i32 %17, 1
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %68, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = icmp sgt i32 %15, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1
  call void @halide_thread_yield() #5
  %33 = load i32, i32* %3, align 4, !tbaa !12
  br label %65

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #6
  store i8 0, i8* %6, align 8, !tbaa !14
  %36 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #5
  %37 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #5
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !19
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !tbaa !21
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !22
  store i8 1, i8* %6, align 8, !tbaa !14
  %38 = and i32 %17, -4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !22
  br label %43

41:                                               ; preds = %34
  %42 = inttoptr i32 %38 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %42, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !19
  br label %43

43:                                               ; preds = %41, %40
  %44 = and i32 %17, 3
  %45 = or i32 %44, %12
  %46 = cmpxchg i32* %3, i32 %17, i32 %45 seq_cst seq_cst
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = icmp eq i32 %17, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #5
  %51 = load i8, i8* %6, align 8, !tbaa !14, !range !23
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %53
  %54 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #5
  %55 = load i8, i8* %6, align 8, !tbaa !14, !range !23
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %53, !llvm.loop !24

57:                                               ; preds = %53, %49
  %58 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #5
  %59 = load i32, i32* %3, align 4, !tbaa !12
  br label %60

60:                                               ; preds = %57, %43
  %61 = phi i32 [ %59, %57 ], [ %47, %43 ]
  %62 = phi i32 [ 40, %57 ], [ %35, %43 ]
  %63 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #5
  %64 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #6
  br label %65

65:                                               ; preds = %60, %31
  %66 = phi i32 [ %33, %31 ], [ %61, %60 ]
  %67 = phi i32 [ %32, %31 ], [ %62, %60 ]
  br label %13

68:                                               ; preds = %20
  ret void
}

declare void @halide_thread_yield() local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !12
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ]
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7
  br i1 %9, label %67, label %10

10:                                               ; preds = %4
  %11 = or i32 %5, 2
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = icmp eq i32 %5, %13
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %65
  %16 = phi i32 [ %66, %65 ], [ %5, %10 ]
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !22
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !tbaa !19
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !tbaa !21
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !tbaa !22
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null
  br i1 %32, label %22, label %33, !llvm.loop !26

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !22
  %35 = and i32 %16, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = and i32 %16, -3
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = icmp eq i32 %16, %40
  br i1 %41, label %67, label %65

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !tbaa !21
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  %48 = and i32 %47, 1
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = icmp ult i32 %50, 4
  br i1 %53, label %46, label %63, !llvm.loop !27

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !22
  %55 = atomicrmw and i32* %2, i32 -3 seq_cst
  br label %56

56:                                               ; preds = %46, %54
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #5
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2
  store i8 0, i8* %59, align 8, !tbaa !14
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #5
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #5
  br label %67

63:                                               ; preds = %52
  %64 = extractvalue { i32, i1 } %49, 0
  br label %65

65:                                               ; preds = %37, %63
  %66 = phi i32 [ %64, %63 ], [ %40, %37 ]
  fence seq_cst
  br label %15

67:                                               ; preds = %4, %37, %56
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, -1640531527
  %3 = lshr i32 %2, 22
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0
  %6 = cmpxchg i32* %5, i32 0, i32 1 seq_cst seq_cst
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %9) #5
  br label %10

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #3 {
  %4 = mul i32 %1, -1640531527
  %5 = lshr i32 %4, 22
  %6 = mul i32 %2, -1640531527
  %7 = lshr i32 %6, 22
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0
  %12 = cmpxchg i32* %11, i32 0, i32 1 seq_cst seq_cst
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #5
  br label %46

16:                                               ; preds = %3
  %17 = icmp ult i32 %5, %7
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, i32 0
  %22 = cmpxchg i32* %21, i32 0, i32 1 seq_cst seq_cst
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %25) #5
  br label %26

26:                                               ; preds = %18, %24
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0
  %28 = cmpxchg i32* %27, i32 0, i32 1 seq_cst seq_cst
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %31) #5
  br label %46

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, i32 0
  %36 = cmpxchg i32* %35, i32 0, i32 1 seq_cst seq_cst
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %39) #5
  br label %40

40:                                               ; preds = %32, %38
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, i32 0
  %42 = cmpxchg i32* %41, i32 0, i32 1 seq_cst seq_cst
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #5
  br label %46

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 4, !tbaa !11
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !tbaa !28
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !tbaa !30
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %9 = atomicrmw and i32* %8, i32 -2 seq_cst
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  %12 = icmp ult i32 %9, 4
  %13 = or i1 %12, %11
  br i1 %13, label %56, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #5
  br label %56

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %17, label %18, label %37

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %20 = atomicrmw and i32* %19, i32 -2 seq_cst
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  %23 = icmp ult i32 %20, 4
  %24 = or i1 %23, %22
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %26) #5
  br label %27

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !tbaa !30
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, i32 0
  %30 = atomicrmw and i32* %29, i32 -2 seq_cst
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  %33 = icmp ult i32 %30, 4
  %34 = or i1 %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %36) #5
  br label %56

37:                                               ; preds = %16
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0
  %39 = atomicrmw and i32* %38, i32 -2 seq_cst
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  %42 = icmp ult i32 %39, 4
  %43 = or i1 %42, %41
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #5
  br label %46

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !tbaa !28
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, i32 0
  %49 = atomicrmw and i32* %48, i32 -2 seq_cst
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %55) #5
  br label %56

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  ret i1 true
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  ret void
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #6
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2
  store i8 0, i8* %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #5
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1
  store i32 0, i32* %11, align 8, !tbaa !31
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !tbaa !33
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3
  store i32 0, i32* %13, align 8, !tbaa !34
  %14 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #6
  store i8 0, i8* %15, align 4, !tbaa !35
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1
  store i32 0, i32* %16, align 4, !tbaa !37
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 4, !tbaa !38
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #5
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0
  %23 = atomicrmw and i32* %22, i32 -2 seq_cst
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  %26 = icmp ult i32 %23, 4
  %27 = or i1 %26, %25
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %29) #5
  br label %30

30:                                               ; preds = %21, %28
  %31 = load i32, i32* %16, align 4, !tbaa !37
  br label %62

32:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !tbaa !33
  store i32 %0, i32* %11, align 8, !tbaa !31
  store i8 1, i8* %6, align 8, !tbaa !14
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 1
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !tbaa !40
  %35 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 4
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %37, i32 0, i32 2
  %39 = select i1 %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !tbaa !11
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 4, !tbaa !43
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0
  %42 = atomicrmw and i32* %41, i32 -2 seq_cst
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  %45 = icmp ult i32 %42, 4
  %46 = or i1 %45, %44
  br i1 %46, label %49, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %48) #5
  br label %49

49:                                               ; preds = %32, %47
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1
  %51 = load void (i8*)*, void (i8*)** %50, align 4, !tbaa !44
  call void %51(i8* nonnull %19) #5
  %52 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #5
  %53 = load i8, i8* %6, align 8, !tbaa !14, !range !23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49, %55
  %56 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #5
  %57 = load i8, i8* %6, align 8, !tbaa !14, !range !23
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %55, !llvm.loop !24

59:                                               ; preds = %55, %49
  %60 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #5
  %61 = load i32, i32* %13, align 8, !tbaa !34
  br label %62

62:                                               ; preds = %59, %30
  %63 = phi i32 [ %61, %59 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #6
  %64 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #5
  %65 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #6
  ret i32 %63
}

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 {
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !tbaa !11
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %11

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ]
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ]
  %15 = phi i32 [ undef, %2 ], [ %61, %57 ]
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = icmp eq i32 %19, %0
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 4, !tbaa !33
  br i1 %20, label %23, label %57

23:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !tbaa !11
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !tbaa !43
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  br i1 %27, label %38, label %29

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !tbaa !43
  br label %38

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4, !tbaa !12
  %33 = icmp eq i32 %32, %0
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 2
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !tbaa !33
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null
  %37 = or i1 %33, %36
  br i1 %37, label %38, label %29, !llvm.loop !45

38:                                               ; preds = %29, %26, %28
  %39 = phi i1 [ false, %28 ], [ false, %26 ], [ %33, %29 ]
  %40 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !tbaa !46
  %41 = tail call i32 %40(i8* nonnull %8, i32 1, i1 zeroext %39) #5
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3
  store i32 %41, i32* %42, align 8, !tbaa !34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0
  %44 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %43) #5
  %45 = atomicrmw and i32* %9, i32 -2 seq_cst
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  %48 = icmp ult i32 %45, 4
  %49 = or i1 %48, %47
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #5
  br label %51

51:                                               ; preds = %38, %50
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 2
  store i8 0, i8* %52, align 8, !tbaa !14
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 1
  %54 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %53) #5
  %55 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %43) #5
  %56 = zext i1 %39 to i32
  br label %57

57:                                               ; preds = %17, %51
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %51 ], [ %21, %17 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %51 ], [ %14, %17 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %51 ], [ %22, %17 ]
  %61 = phi i32 [ %56, %51 ], [ %15, %17 ]
  br i1 %20, label %71, label %11, !llvm.loop !47

62:                                               ; preds = %11
  %63 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !tbaa !46
  %64 = tail call i32 %63(i8* nonnull %8, i32 0, i1 zeroext false) #5
  %65 = atomicrmw and i32* %9, i32 -2 seq_cst
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  %68 = icmp ult i32 %65, 4
  %69 = or i1 %68, %67
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #5
  br label %71

71:                                               ; preds = %57, %70, %62
  %72 = phi i32 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ]
  ret i32 %72
}

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #7
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !tbaa !11
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i32 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i32 [ 0, %10 ], [ %55, %54 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !tbaa !33
  %22 = icmp eq i32 %19, %0
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !tbaa !11
  br i1 %22, label %23, label %54

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !tbaa !43
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !tbaa !43
  br label %27

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = shl i32 %15, 3
  %31 = call i8* @malloc(i32 %30) #5
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**
  %33 = icmp eq i32 %15, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %37, %29
  %35 = shl i32 %15, 1
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8
  br i1 %36, label %46, label %44

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %29 ]
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %38
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !tbaa !11
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %38
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !tbaa !11
  %42 = add nuw i32 %38, 1
  %43 = icmp ult i32 %42, %15
  br i1 %43, label %37, label %34, !llvm.loop !48

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*
  call void @free(i8* %45) #5
  br label %46

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ]
  %48 = phi i32 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3
  store i32 %1, i32* %49, align 8, !tbaa !34
  %50 = add i32 %17, 1
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i32 %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 4, !tbaa !11
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #5
  br label %54

54:                                               ; preds = %12, %46
  %55 = phi i32 [ %50, %46 ], [ %17, %12 ]
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ]
  %57 = phi i32 [ %48, %46 ], [ %15, %12 ]
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ]
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null
  br i1 %59, label %60, label %12, !llvm.loop !49

60:                                               ; preds = %54, %2
  %61 = phi i32 [ 0, %2 ], [ %55, %54 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ]
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0
  %64 = atomicrmw and i32* %63, i32 -2 seq_cst
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  %67 = icmp ult i32 %64, 4
  %68 = or i1 %67, %66
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %70) #5
  br label %71

71:                                               ; preds = %60, %69
  %72 = icmp eq i32 %61, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %71, %73
  %74 = phi i32 [ %80, %73 ], [ 0, %71 ]
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %74
  %76 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %75, align 4, !tbaa !11
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i32 0, i32 0, i32 2
  store i8 0, i8* %77, align 8, !tbaa !14
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i32 0, i32 0, i32 1
  %79 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %78) #5
  %80 = add nuw i32 %74, 1
  %81 = icmp ult i32 %80, %61
  br i1 %81, label %73, label %84, !llvm.loop !50

82:                                               ; preds = %84, %71
  %83 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8
  br i1 %83, label %94, label %92

84:                                               ; preds = %73, %84
  %85 = phi i32 [ %90, %84 ], [ 0, %73 ]
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %85
  %87 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %86, align 4, !tbaa !11
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, i32 0, i32 0, i32 0
  %89 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %88) #5
  %90 = add nuw i32 %85, 1
  %91 = icmp ult i32 %90, %61
  br i1 %91, label %84, label %82, !llvm.loop !51

92:                                               ; preds = %82
  %93 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*
  call void @free(i8* %93) #5
  br label %94

94:                                               ; preds = %92, %82
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6
  ret i32 %61
}

; Function Attrs: nounwind
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #3 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #7
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  store i8 0, i8* %8, align 4, !tbaa !35
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1
  store i32 0, i32* %9, align 4, !tbaa !37
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !tbaa !38
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #5
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  br label %126

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !28
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !tbaa !11
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null
  br i1 %20, label %105, label %21

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1
  %32 = load i32, i32* %31, align 4, !tbaa !12
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !tbaa !33
  %35 = icmp eq i32 %32, %0
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !tbaa !11
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !28
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !tbaa !43
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !tbaa !43
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !tbaa !33
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ]
  store i32 %1, i32* %31, align 4, !tbaa !12
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ]
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ]
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ]
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null
  br i1 %56, label %86, label %24, !llvm.loop !52

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1
  %64 = load i32, i32* %63, align 4, !tbaa !12
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !tbaa !33
  %67 = icmp eq i32 %64, %0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !tbaa !11
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !28
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !tbaa !43
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !tbaa !43
  br label %74

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !tbaa !33
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ]
  store i32 %1, i32* %63, align 4, !tbaa !12
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ]
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ]
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ]
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ]
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null
  br i1 %85, label %86, label %57, !llvm.loop !52

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ]
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ]
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ]
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !tbaa !33
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !tbaa !30
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !tbaa !40
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !tbaa !43
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !tbaa !11
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !tbaa !43
  br label %105

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !tbaa !53
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #5
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3
  store i32 %3, i32* %112, align 8, !tbaa !34
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0
  %114 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %113) #5
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2
  store i8 0, i8* %115, align 8, !tbaa !14
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1
  %117 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %116) #5
  %118 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %113) #5
  br label %120

119:                                              ; preds = %105
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i8, i8* %8, align 4
  %122 = and i8 %121, 1
  %123 = icmp ne i8 %122, 0
  %124 = and i1 %110, %123
  %125 = zext i1 %124 to i32
  br label %126

126:                                              ; preds = %120, %14
  %127 = phi i32 [ %125, %120 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  ret i32 %127
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !54
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 3
  ret i1 %7
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  %4 = select i1 %2, i32 2, i32 0
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !54
  store i32 %4, i32* %7, align 4, !tbaa !12
  fence seq_cst
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !56
  store i32 0, i32* %7, align 4, !tbaa !12
  br label %8

8:                                                ; preds = %4, %3
  ret i32 0
}

; Function Attrs: nounwind
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !58
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %7 = getelementptr inbounds i8, i8* %0, i32 20
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !tbaa !60
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4, !tbaa !12
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !12
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ]
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = or i32 %16, 2
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %15

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0
  store i8 %25, i8* %26, align 4, !tbaa !35
  br label %27

27:                                               ; preds = %2, %24
  ret i1 %11
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0
  %6 = load i8, i8* %5, align 4, !tbaa !35, !range !23
  %7 = icmp ne i8 %6, 0
  %8 = and i1 %7, %3
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !tbaa !60
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0
  %14 = atomicrmw or i32* %13, i32 2 seq_cst
  br label %15

15:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !61
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds i8, i8* %0, i32 20
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !tbaa !63
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32
  br i1 %7, label %16, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !tbaa !12
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ]
  ret i1 %19
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %3 = getelementptr inbounds i8, i8* %0, i32 20
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !tbaa !63
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #6
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 4, !tbaa !44
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  store i32* %6, i32** %18, align 4, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !tbaa !38
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %16, align 4, !tbaa !46
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %21 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %20) #5
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #6
  br label %22

22:                                               ; preds = %1, %9, %12
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !61
  store i32 0, i32* %7, align 4, !tbaa !12
  br label %8

8:                                                ; preds = %4, %3
  ret i32 0
}

; Function Attrs: nounwind
define weak void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !tbaa !12
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  br label %16

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = or i32 %20, 1
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  %29 = icmp sgt i32 %18, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = icmp eq i32 %18, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1
  call void @halide_thread_yield() #5
  %34 = load i32, i32* %3, align 4, !tbaa !12
  br label %49

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  %37 = and i32 %20, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = or i32 %20, 2
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = icmp eq i32 %20, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #6
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !tbaa !44
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !tbaa !53
  store i32* %3, i32** %13, align 4, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !tbaa !38
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !tbaa !46
  %45 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #5
  %46 = icmp eq i32 %45, %14
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #6
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #6
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void
}

; Function Attrs: nounwind
define weak void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #6
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !tbaa !44
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !tbaa !53
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  store i32* %3, i32** %15, align 4, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !tbaa !38
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !tbaa !46
  %16 = ptrtoint %struct.halide_mutex* %0 to i32
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %18 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #5
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #6
  br label %19

19:                                               ; preds = %1, %6, %9
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !tbaa !46
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1
  store i32* %3, i32** %13, align 4, !tbaa !58
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !tbaa !60
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !tbaa !38
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !tbaa !53
  %15 = ptrtoint %struct.halide_cond* %0 to i32
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %15, i32 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16, i32 0) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !tbaa !38
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !tbaa !53
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1
  store i32* %3, i32** %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !tbaa !64
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !tbaa !46
  %15 = ptrtoint %struct.halide_cond* %0 to i32
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !tbaa !53
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1
  store i32* %6, i32** %11, align 4, !tbaa !61
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !tbaa !63
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !tbaa !38
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 4, !tbaa !44
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %9, align 4, !tbaa !46
  %14 = ptrtoint %struct.halide_cond* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0
  %16 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #5
  %17 = ptrtoint %struct.halide_mutex* %1 to i32
  %18 = icmp eq i32 %16, %17
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0
  br i1 %18, label %69, label %20

20:                                               ; preds = %2
  %21 = cmpxchg i32* %19, i32 0, i32 1 seq_cst seq_cst
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %74, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %19, align 4, !tbaa !12
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ]
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = or i32 %36, 1
  %41 = cmpxchg i32* %19, i32 %36, i32 %40 seq_cst seq_cst
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %74, label %35

44:                                               ; preds = %35
  %45 = icmp sgt i32 %34, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = icmp eq i32 %34, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1
  call void @halide_thread_yield() #5
  %50 = load i32, i32* %19, align 4, !tbaa !12
  br label %65

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  %53 = and i32 %36, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = or i32 %36, 2
  %57 = cmpxchg i32* %19, i32 %36, i32 %56 seq_cst seq_cst
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = icmp eq i32 %36, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #6
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 4, !tbaa !44
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !tbaa !53
  store i32* %19, i32** %30, align 4, !tbaa !54
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !tbaa !38
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %28, align 4, !tbaa !46
  %61 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #5
  %62 = icmp eq i32 %61, %17
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %19, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #6
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #6
  br label %74

69:                                               ; preds = %2
  %70 = load i32, i32* %19, align 4, !tbaa !12
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0)) #5
  call void @abort() #5
  br label %74

74:                                               ; preds = %39, %20, %68, %69, %73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #5
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = shl i32 %0, 2
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #5
  %8 = bitcast i8* %2 to i8**
  store i8* %7, i8** %8, align 4, !tbaa !65
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #5
  br label %13

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #5
  br label %13

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ]
  ret %struct.halide_mutex_array* %14
}

declare i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

declare i8* @memset(i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to i8**
  %4 = load i8*, i8** %3, align 4, !tbaa !65
  tail call void @halide_free(i8* %0, i8* %4) #5
  tail call void @halide_free(i8* %0, i8* %1) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !tbaa !65
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !tbaa !65
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #7
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
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #5
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
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %390, %1
  %11 = phi i32 [ 0, %1 ], [ %391, %390 ]
  br i1 %3, label %15, label %12

12:                                               ; preds = %10
  %13 = load i32, i32* %4, align 4, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %21

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !tbaa !70, !range !23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %405

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !tbaa !74
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %405, label %21

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  %23 = load i32, i32* %5, align 4, !tbaa !76
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !tbaa !74
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !tbaa !77
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0
  br i1 %34, label %35, label %30, !llvm.loop !78

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %28 ], [ %32, %30 ]
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !tbaa !77
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 4, !tbaa !11
  store i32 0, i32* %4, align 4, !tbaa !67
  br label %390

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !tbaa !79
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i32 0, i32 9
  %43 = load i32, i32* %42, align 4, !tbaa !76
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !tbaa !76
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #7
  br label %390

46:                                               ; preds = %25, %41, %38
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null
  br i1 %47, label %188, label %51

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null
  br i1 %50, label %198, label %52

51:                                               ; preds = %46
  br i1 %3, label %52, label %117

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54

54:                                               ; preds = %52, %113
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %115, %113 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %114, %113 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %52 ]
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 5
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 4, !tbaa !79
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 8
  %62 = load i32, i32* %61, align 4, !tbaa !74
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 0, i32 7
  %65 = load i32, i32* %64, align 4, !tbaa !80
  br i1 %63, label %69, label %66

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6
  br label %74

71:                                               ; preds = %54
  %72 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %73 = add nsw i32 %72, 1
  br label %74

74:                                               ; preds = %71, %69, %66
  %75 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %71 ], [ %70, %69 ], [ %68, %66 ]
  %76 = phi i32 [ %73, %71 ], [ %65, %69 ], [ %67, %66 ]
  %77 = load i32, i32* %75, align 4, !tbaa !12
  %78 = sub i32 %76, %77
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 7
  %80 = load i32, i32* %79, align 4, !tbaa !80
  %81 = icmp sge i32 %78, %80
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 8
  %83 = load i8, i8* %82, align 4, !tbaa !82, !range !23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 8
  %87 = load i32, i32* %86, align 4, !tbaa !74
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %85, %74
  %90 = phi i1 [ true, %74 ], [ %88, %85 ]
  %91 = and i1 %90, %81
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 10
  %94 = load i32, i32* %93, align 4, !tbaa !83
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 4
  %96 = load i32, i32* %95, align 4, !tbaa !84
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %217

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 3
  br label %100

100:                                              ; preds = %108, %98
  %101 = phi i32 [ %94, %98 ], [ %110, %108 ]
  %102 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %99, align 4, !tbaa !85
  %103 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 0
  %104 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %103, align 4, !tbaa !86
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 1
  %106 = load i32, i32* %105, align 4, !tbaa !88
  %107 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %104, i32 %106) #5
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load i32, i32* %93, align 4, !tbaa !83
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %93, align 4, !tbaa !83
  %111 = load i32, i32* %95, align 4, !tbaa !84
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %100, label %217, !llvm.loop !89

113:                                              ; preds = %100, %89
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 2
  %115 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %114, align 4, !tbaa !77
  %116 = icmp eq %"struct.Halide::Runtime::Internal::work"* %115, null
  br i1 %116, label %188, label %54

117:                                              ; preds = %51, %184
  %118 = phi %"struct.Halide::Runtime::Internal::work"* [ %186, %184 ], [ %22, %51 ]
  %119 = phi %"struct.Halide::Runtime::Internal::work"** [ %185, %184 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %51 ]
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 5
  %121 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %120, align 4, !tbaa !79
  %122 = icmp eq %"struct.Halide::Runtime::Internal::work"* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %125 = add nsw i32 %124, 1
  br label %137

126:                                              ; preds = %117
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 8
  %128 = load i32, i32* %127, align 4, !tbaa !74
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 0, i32 7
  %131 = load i32, i32* %130, align 4, !tbaa !80
  br i1 %129, label %132, label %134

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6
  br label %137

134:                                              ; preds = %126
  %135 = mul nsw i32 %131, %128
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6
  br label %137

137:                                              ; preds = %132, %134, %123
  %138 = phi i32* [ %133, %132 ], [ %136, %134 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %123 ]
  %139 = phi i32 [ %131, %132 ], [ %135, %134 ], [ %125, %123 ]
  %140 = load i32, i32* %138, align 4, !tbaa !12
  %141 = sub i32 %139, %140
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 7
  %143 = load i32, i32* %142, align 4, !tbaa !80
  %144 = icmp slt i32 %141, %143
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 3
  %146 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %145, align 4, !tbaa !90
  %147 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !tbaa !90
  %148 = icmp ne %"struct.Halide::Runtime::Internal::work"* %146, %147
  %149 = icmp ne i32 %143, 0
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 8
  %151 = load i8, i8* %150, align 4, !tbaa !82, !range !23
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %137
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 8
  %155 = load i32, i32* %154, align 4, !tbaa !74
  %156 = icmp eq i32 %155, 0
  br label %157

157:                                              ; preds = %153, %137
  %158 = phi i1 [ true, %137 ], [ %156, %153 ]
  %159 = and i1 %149, %148
  %160 = or i1 %144, %159
  %161 = xor i1 %158, true
  %162 = or i1 %160, %161
  br i1 %162, label %184, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 10
  %165 = load i32, i32* %164, align 4, !tbaa !83
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 4
  %167 = load i32, i32* %166, align 4, !tbaa !84
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %217

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 3
  br label %171

171:                                              ; preds = %179, %169
  %172 = phi i32 [ %165, %169 ], [ %181, %179 ]
  %173 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %170, align 4, !tbaa !85
  %174 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 0
  %175 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %174, align 4, !tbaa !86
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 1
  %177 = load i32, i32* %176, align 4, !tbaa !88
  %178 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %175, i32 %177) #5
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load i32, i32* %164, align 4, !tbaa !83
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %164, align 4, !tbaa !83
  %182 = load i32, i32* %166, align 4, !tbaa !84
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %171, label %217, !llvm.loop !89

184:                                              ; preds = %171, %157
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 2
  %186 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %185, align 4, !tbaa !77
  %187 = icmp eq %"struct.Halide::Runtime::Internal::work"* %186, null
  br i1 %187, label %188, label %117

188:                                              ; preds = %184, %113, %46
  br i1 %3, label %198, label %189

189:                                              ; preds = %188
  %190 = add nsw i32 %11, 1
  %191 = icmp slt i32 %11, 40
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  br label %390

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !tbaa !91
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !tbaa !91
  store i8 1, i8* %8, align 4, !tbaa !92
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  store i8 0, i8* %8, align 4, !tbaa !92
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !tbaa !91
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !tbaa !91
  br label %390

198:                                              ; preds = %48, %188
  %199 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !tbaa !93
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !tbaa !93
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !tbaa !95
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = add nsw i32 %201, -1
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %206 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  br label %213

208:                                              ; preds = %198
  %209 = add nsw i32 %11, 1
  %210 = icmp slt i32 %11, 40
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  br label %213

212:                                              ; preds = %208
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  br label %213

213:                                              ; preds = %211, %212, %204
  %214 = phi i32 [ %11, %204 ], [ %209, %211 ], [ %209, %212 ]
  %215 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !tbaa !93
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !tbaa !93
  br label %390

217:                                              ; preds = %163, %92, %179, %108
  %218 = phi i32* [ %93, %108 ], [ %164, %179 ], [ %93, %92 ], [ %164, %163 ]
  %219 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %108 ], [ %119, %179 ], [ %56, %92 ], [ %119, %163 ]
  %220 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %108 ], [ %118, %179 ], [ %55, %92 ], [ %118, %163 ]
  store i32 0, i32* %218, align 4, !tbaa !83
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 4, !tbaa !74
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4, !tbaa !74
  %224 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 5
  %225 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !tbaa !79
  %226 = icmp eq %"struct.Halide::Runtime::Internal::work"* %225, null
  %227 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7
  %228 = load i32, i32* %227, align 4, !tbaa !80
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %225, i32 0, i32 6
  %230 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229
  %231 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229
  %232 = load i32, i32* %230, align 4, !tbaa !12
  %233 = add nsw i32 %232, %228
  store i32 %233, i32* %231, align 4, !tbaa !12
  %234 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 8
  %235 = load i8, i8* %234, align 4, !tbaa !82, !range !23
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %311, label %237

237:                                              ; preds = %217
  %238 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2
  %239 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !tbaa !77
  store %"struct.Halide::Runtime::Internal::work"* %239, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !tbaa !11
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 10
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 4
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 3
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %246 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %248 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  br label %249

249:                                              ; preds = %237, %288
  %250 = phi i32 [ 1, %237 ], [ 0, %288 ]
  %251 = phi i32 [ 0, %237 ], [ %296, %288 ]
  %252 = load i32, i32* %240, align 4, !tbaa !67
  %253 = sub nsw i32 %252, %251
  %254 = icmp sgt i32 %253, %250
  br i1 %254, label %255, label %285

255:                                              ; preds = %249
  %256 = load i32, i32* %241, align 4, !tbaa !83
  %257 = load i32, i32* %242, align 4, !tbaa !84
  br label %258

258:                                              ; preds = %255, %279
  %259 = phi i32 [ %280, %279 ], [ %252, %255 ]
  %260 = phi i32 [ %281, %279 ], [ %257, %255 ]
  %261 = phi i32 [ 0, %279 ], [ %256, %255 ]
  %262 = phi i32 [ %282, %279 ], [ %250, %255 ]
  %263 = icmp slt i32 %261, %260
  br i1 %263, label %264, label %279

264:                                              ; preds = %258, %272
  %265 = phi i32 [ %274, %272 ], [ %261, %258 ]
  %266 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %243, align 4, !tbaa !85
  %267 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 0
  %268 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %267, align 4, !tbaa !86
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 1
  %270 = load i32, i32* %269, align 4, !tbaa !88
  %271 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %268, i32 %270) #5
  br i1 %271, label %272, label %285

272:                                              ; preds = %264
  %273 = load i32, i32* %241, align 4, !tbaa !83
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %241, align 4, !tbaa !83
  %275 = load i32, i32* %242, align 4, !tbaa !84
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %264, label %277, !llvm.loop !89

277:                                              ; preds = %272
  %278 = load i32, i32* %240, align 4, !tbaa !67
  br label %279

279:                                              ; preds = %277, %258
  %280 = phi i32 [ %278, %277 ], [ %259, %258 ]
  %281 = phi i32 [ %275, %277 ], [ %260, %258 ]
  store i32 0, i32* %241, align 4, !tbaa !83
  %282 = add nuw nsw i32 %262, 1
  %283 = sub nsw i32 %280, %251
  %284 = icmp sgt i32 %283, %282
  br i1 %284, label %258, label %288, !llvm.loop !96

285:                                              ; preds = %264, %249
  %286 = phi i32 [ %250, %249 ], [ %262, %264 ]
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %298, label %288

288:                                              ; preds = %279, %285
  %289 = phi i32 [ %286, %285 ], [ %282, %279 ]
  %290 = load i8*, i8** %244, align 4, !tbaa !97
  %291 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %245, align 4, !tbaa !98
  %292 = load i32, i32* %246, align 4, !tbaa !99
  %293 = add nsw i32 %292, %251
  %294 = load i8*, i8** %247, align 4, !tbaa !100
  %295 = tail call i32 @halide_do_loop_task(i8* %290, i32 (i8*, i32, i32, i8*, i8*)* %291, i32 %293, i32 %289, i8* %294, i8* nonnull %248) #7
  %296 = add nuw nsw i32 %289, %251
  %297 = icmp eq i32 %295, 0
  br i1 %297, label %249, label %298, !llvm.loop !101

298:                                              ; preds = %285, %288
  %299 = phi i1 [ true, %285 ], [ false, %288 ]
  %300 = phi i32 [ 0, %285 ], [ %295, %288 ]
  %301 = phi i32 [ %251, %285 ], [ %296, %288 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %302 = load i32, i32* %246, align 4, !tbaa !99
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %246, align 4, !tbaa !99
  %304 = load i32, i32* %240, align 4, !tbaa !67
  %305 = sub nsw i32 %304, %301
  store i32 %305, i32* %240, align 4, !tbaa !67
  br i1 %299, label %307, label %306

306:                                              ; preds = %298
  store i32 0, i32* %240, align 4, !tbaa !67
  br label %340

307:                                              ; preds = %298
  %308 = icmp sgt i32 %305, 0
  br i1 %308, label %309, label %375

309:                                              ; preds = %307
  %310 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  store %"struct.Halide::Runtime::Internal::work"* %310, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !tbaa !77
  store %"struct.Halide::Runtime::Internal::work"* %220, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  br label %375

311:                                              ; preds = %217
  %312 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %313 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %312, align 4, !tbaa.struct !102
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %315 = load i8*, i8** %314, align 4, !tbaa.struct !104
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 1
  %319 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %318, align 4, !tbaa.struct !105
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %321 = load i8*, i8** %320, align 4, !tbaa.struct !106
  %322 = add nsw i32 %317, 1
  store i32 %322, i32* %316, align 4, !tbaa !99
  %323 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %324 = load i32, i32* %323, align 4, !tbaa !67
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %323, align 4, !tbaa !67
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %311
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2
  %329 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %328, align 4, !tbaa !77
  store %"struct.Halide::Runtime::Internal::work"* %329, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !tbaa !11
  br label %330

330:                                              ; preds = %327, %311
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %331 = icmp eq i32 (i8*, i32, i8*)* %319, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %330
  %333 = tail call i32 @halide_do_task(i8* %321, i32 (i8*, i32, i8*)* nonnull %319, i32 %317, i8* %315) #7
  br label %337

334:                                              ; preds = %330
  %335 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  %336 = tail call i32 @halide_do_loop_task(i8* %321, i32 (i8*, i32, i32, i8*, i8*)* %313, i32 %317, i32 1, i8* %315, i8* %335) #7
  br label %337

337:                                              ; preds = %332, %334
  %338 = phi i32 [ %333, %332 ], [ %336, %334 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %375, label %340

340:                                              ; preds = %306, %337
  %341 = phi i32 [ %300, %306 ], [ %338, %337 ]
  %342 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9
  store i32 %341, i32* %342, align 4, !tbaa !76
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 4
  %344 = load i32, i32* %343, align 4, !tbaa !107
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 3
  %348 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %347, align 4, !tbaa !90
  br label %353

349:                                              ; preds = %371, %340
  %350 = phi i8 [ 0, %340 ], [ %372, %371 ]
  %351 = and i8 %350, 1
  %352 = icmp ne i8 %351, 0
  br label %375

353:                                              ; preds = %346, %371
  %354 = phi i32 [ 0, %346 ], [ %373, %371 ]
  %355 = phi i8 [ 0, %346 ], [ %372, %371 ]
  %356 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 9
  %357 = load i32, i32* %356, align 4, !tbaa !76
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %353
  store i32 %341, i32* %356, align 4, !tbaa !76
  %360 = load i32, i32* %221, align 4, !tbaa !74
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 11
  %364 = load i8, i8* %363, align 4, !tbaa !92, !range !23
  %365 = icmp ne i8 %364, 0
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ]
  %368 = zext i1 %367 to i8
  %369 = and i8 %355, 1
  %370 = or i8 %369, %368
  br label %371

371:                                              ; preds = %353, %366
  %372 = phi i8 [ %370, %366 ], [ %355, %353 ]
  %373 = add nuw nsw i32 %354, 1
  %374 = icmp slt i32 %373, %344
  br i1 %374, label %353, label %349, !llvm.loop !108

375:                                              ; preds = %309, %307, %349, %337
  %376 = phi i1 [ %352, %349 ], [ false, %337 ], [ false, %307 ], [ false, %309 ]
  %377 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !tbaa !79
  %378 = icmp eq %"struct.Halide::Runtime::Internal::work"* %377, null
  %379 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7
  %380 = load i32, i32* %379, align 4, !tbaa !80
  %381 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %377, i32 0, i32 6
  %382 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381
  %383 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381
  %384 = load i32, i32* %382, align 4, !tbaa !12
  %385 = sub nsw i32 %384, %380
  store i32 %385, i32* %383, align 4, !tbaa !12
  %386 = load i32, i32* %221, align 4, !tbaa !74
  %387 = add nsw i32 %386, -1
  store i32 %387, i32* %221, align 4, !tbaa !74
  br i1 %376, label %404, label %388

388:                                              ; preds = %375
  %389 = icmp eq i32 %387, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %388, %396, %400, %404, %213, %193, %192, %45, %35
  %391 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %190, %192 ], [ %190, %193 ], [ %214, %213 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ 0, %388 ]
  br label %10, !llvm.loop !109

392:                                              ; preds = %388
  %393 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %394 = load i32, i32* %393, align 4, !tbaa !67
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9
  %398 = load i32, i32* %397, align 4, !tbaa !76
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %390, label %400

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 11
  %402 = load i8, i8* %401, align 4, !tbaa !92, !range !23
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %390, label %404

404:                                              ; preds = %400, %375
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #7
  br label %390

405:                                              ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 {
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !tbaa !11
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !11
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 {
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !tbaa !110, !range !23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), %3 ]
  %8 = load i8, i8* %7, align 1, !tbaa !111
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1
  %12 = icmp ult i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*)
  br i1 %12, label %6, label %13, !llvm.loop !112

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ %11, %10 ]
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %17

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #7
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #7
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !tbaa !110
  br label %25

25:                                               ; preds = %22, %3
  %26 = icmp sgt i32 %0, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %61, %25
  %28 = phi i32 [ -1, %25 ], [ %62, %61 ]
  %29 = phi i1 [ false, %25 ], [ %45, %61 ]
  %30 = phi i1 [ false, %25 ], [ %51, %61 ]
  %31 = phi i1 [ false, %25 ], [ %47, %61 ]
  %32 = phi i32 [ 0, %25 ], [ %44, %61 ]
  %33 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null
  br i1 %33, label %65, label %93

34:                                               ; preds = %25, %61
  %35 = phi i32 [ %44, %61 ], [ 0, %25 ]
  %36 = phi i32 [ %63, %61 ], [ 0, %25 ]
  %37 = phi i1 [ %47, %61 ], [ false, %25 ]
  %38 = phi i1 [ %51, %61 ], [ false, %25 ]
  %39 = phi i1 [ %45, %61 ], [ false, %25 ]
  %40 = phi i32 [ %62, %61 ], [ -1, %25 ]
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 7
  %42 = load i32, i32* %41, align 4, !tbaa !80
  %43 = icmp eq i32 %42, 0
  %44 = add i32 %42, %35
  %45 = or i1 %39, %43
  %46 = xor i1 %43, true
  %47 = or i1 %37, %46
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 4
  %49 = load i32, i32* %48, align 4, !tbaa !84
  %50 = icmp ne i32 %49, 0
  %51 = or i1 %38, %50
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 8
  %53 = load i8, i8* %52, align 4, !tbaa !82, !range !23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %34
  %56 = add nsw i32 %40, 1
  br label %61

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 6
  %59 = load i32, i32* %58, align 4, !tbaa !67
  %60 = add nsw i32 %59, %40
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ]
  %63 = add nuw nsw i32 %36, 1
  %64 = icmp slt i32 %63, %0
  br i1 %64, label %34, label %27, !llvm.loop !114

65:                                               ; preds = %27
  %66 = or i1 %30, %31
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %32, %67
  %69 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %89

71:                                               ; preds = %65, %81
  %72 = phi i32 [ %86, %81 ], [ %69, %65 ]
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  %74 = add nsw i32 %73, -1
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = add nsw i32 %72, 1
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !tbaa !115
  %79 = sub i32 %77, %78
  %80 = icmp slt i32 %79, %68
  br i1 %80, label %81, label %89

81:                                               ; preds = %71, %76
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  %84 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #7
  %85 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %85
  store %struct.halide_thread* %84, %struct.halide_thread** %87, align 4, !tbaa !11
  %88 = icmp slt i32 %85, 255
  br i1 %88, label %71, label %89, !llvm.loop !116

89:                                               ; preds = %76, %81, %65
  br i1 %66, label %90, label %109

90:                                               ; preds = %89
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !tbaa !115
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !tbaa !115
  br label %109

93:                                               ; preds = %27
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7
  %95 = load i32, i32* %94, align 4, !tbaa !80
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8
  %97 = load i32, i32* %96, align 4, !tbaa !74
  %98 = mul nsw i32 %97, %95
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6
  %100 = load i32, i32* %99, align 4, !tbaa !117
  %101 = sub nsw i32 %98, %100
  %102 = icmp sgt i32 %32, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %104

104:                                              ; preds = %103, %93
  %105 = or i1 %30, %31
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i32, i32* %99, align 4, !tbaa !117
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %99, align 4, !tbaa !117
  br label %109

109:                                              ; preds = %104, %89, %106, %90
  br i1 %26, label %110, label %113

110:                                              ; preds = %109
  %111 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  br label %126

112:                                              ; preds = %126
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !75
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !tbaa !91
  %115 = icmp ne i32 %114, 0
  %116 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4
  %117 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4
  %118 = icmp slt i32 %116, %117
  %119 = or i1 %115, %118
  %120 = icmp sgt i32 %28, %116
  %121 = or i1 %120, %119
  %122 = select i1 %121, i32 %117, i32 %28
  store i32 %122, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !tbaa !95
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #7
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !tbaa !95
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !tbaa !94
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %136, label %138

126:                                              ; preds = %110, %126
  %127 = phi %"struct.Halide::Runtime::Internal::work"* [ %111, %110 ], [ %130, %126 ]
  %128 = phi i32 [ %0, %110 ], [ %129, %126 ]
  %129 = add nsw i32 %128, -1
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 2
  store %"struct.Halide::Runtime::Internal::work"* %127, %"struct.Halide::Runtime::Internal::work"** %131, align 4, !tbaa !77
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %132, align 4, !tbaa !90
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 4
  store i32 %0, i32* %133, align 4, !tbaa !107
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 6
  store i32 0, i32* %134, align 4, !tbaa !117
  %135 = icmp sgt i32 %128, 1
  br i1 %135, label %126, label %112, !llvm.loop !118

136:                                              ; preds = %113
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #7
  br i1 %29, label %137, label %138

137:                                              ; preds = %136
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #7
  br label %138

138:                                              ; preds = %136, %137, %113
  %139 = or i1 %30, %31
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6
  %142 = select i1 %33, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %141
  %143 = load i32, i32* %142, align 4, !tbaa !12
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 4, !tbaa !12
  br label %145

145:                                              ; preds = %140, %138
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
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !tbaa !98
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5
  store i32 %2, i32* %11, align 4, !tbaa !99
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6
  store i32 %3, i32* %12, align 4, !tbaa !67
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8
  store i8 0, i8* %13, align 4, !tbaa !82
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !tbaa !85
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4
  store i32 0, i32* %15, align 4, !tbaa !84
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1
  store i8* %4, i8** %16, align 4, !tbaa !100
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !80
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2
  store i8* null, i8** %18, align 4, !tbaa !119
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !tbaa !120
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7
  store i8* %0, i8** %20, align 4, !tbaa !97
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9
  store i32 0, i32* %21, align 4, !tbaa !76
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8
  store i32 0, i32* %22, align 4, !tbaa !74
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10
  store i32 0, i32* %23, align 4, !tbaa !83
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11
  store i8 0, i8* %24, align 4, !tbaa !92
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !tbaa !90
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4
  store i32 0, i32* %26, align 4, !tbaa !107
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !tbaa !79
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #7
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %28 = load i32, i32* %21, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #6
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 {
  %5 = mul i32 %1, 80
  %6 = alloca i8, i32 %5, align 8
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %36, %34 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %54, label %39

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi i32 [ %36, %34 ], [ %1, %4 ]
  %15 = phi %struct.halide_parallel_task_t* [ %35, %34 ], [ %2, %4 ]
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4, !tbaa !121
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1
  br label %34

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*
  %25 = bitcast %struct.halide_parallel_task_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !tbaa.struct !122
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !tbaa !120
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7
  store i8* %0, i8** %27, align 4, !tbaa !97
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9
  store i32 0, i32* %28, align 4, !tbaa !76
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8
  store i32 0, i32* %29, align 8, !tbaa !74
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10
  store i32 0, i32* %30, align 8, !tbaa !83
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11
  store i8 0, i8* %31, align 4, !tbaa !92
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**
  store i8* %3, i8** %33, align 4, !tbaa !79
  br label %34

34:                                               ; preds = %21, %19
  %35 = phi %struct.halide_parallel_task_t* [ %15, %19 ], [ %22, %21 ]
  %36 = phi i32 [ %20, %19 ], [ %14, %21 ]
  %37 = add nuw nsw i32 %13, 1
  %38 = icmp slt i32 %37, %36
  br i1 %38, label %12, label %9, !llvm.loop !123

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #7
  %41 = icmp sgt i32 %10, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #7
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9
  %49 = load i32, i32* %48, align 4, !tbaa !76
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %46, i32 %49
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp slt i32 %52, %10
  br i1 %53, label %44, label %42, !llvm.loop !124

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ]
  ret i32 %55
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #4 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  store i32 %1, i32* %3, align 4, !tbaa !12
  fence seq_cst
  ret i32 %1
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*
  fence seq_cst
  %6 = load i32, i32* %5, align 4, !tbaa !12
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ]
  %9 = sub nsw i32 %8, %1
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %7, !llvm.loop !125

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ]
  ret i1 %16
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
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
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !tbaa !110, !range !23
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !tbaa !70
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), i32 0, i32 1072) #5
  br label %15

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %9
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !tbaa !11
  tail call void @halide_join_thread(%struct.halide_thread* %11) #7
  %12 = add nuw nsw i32 %9, 1
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !tbaa !81
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %8, label %6, !llvm.loop !126

15:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  br label %8

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #7
  br label %8

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #7
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !tbaa !113
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #7
  ret i32 %10
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !11
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #4 {
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !tbaa !11
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !tbaa !11
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !tbaa !11
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !tbaa !11
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !tbaa !11
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 {
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !tbaa !11
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !tbaa !11
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !tbaa !11
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !tbaa !11
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !tbaa !11
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
!4 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !5, i64 0, !5, i64 4, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !5, i64 4}
!10 = !{!4, !8, i64 8}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !18, i64 128}
!15 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !16, i64 0, !17, i64 64, !18, i64 128}
!16 = !{!"_ZTS15pthread_mutex_t", !6, i64 0}
!17 = !{!"_ZTS14pthread_cond_t", !6, i64 0}
!18 = !{!"bool", !6, i64 0}
!19 = !{!20, !5, i64 136}
!20 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !15, i64 0, !5, i64 136, !5, i64 140, !5, i64 144}
!21 = !{!20, !5, i64 140}
!22 = !{!20, !5, i64 144}
!23 = !{i8 0, i8 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = !{!29, !5, i64 0}
!29 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !5, i64 0, !5, i64 4}
!30 = !{!29, !5, i64 4}
!31 = !{!32, !13, i64 136}
!32 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !15, i64 0, !13, i64 136, !5, i64 140, !13, i64 144}
!33 = !{!32, !5, i64 140}
!34 = !{!32, !13, i64 144}
!35 = !{!36, !18, i64 0}
!36 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !18, i64 0, !13, i64 4}
!37 = !{!36, !13, i64 4}
!38 = !{!39, !5, i64 0}
!39 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!40 = !{!41, !5, i64 4}
!41 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !42, i64 0, !5, i64 4, !5, i64 8}
!42 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !13, i64 0}
!43 = !{!41, !5, i64 8}
!44 = !{!39, !5, i64 4}
!45 = distinct !{!45, !25}
!46 = !{!39, !5, i64 8}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = !{!39, !5, i64 12}
!54 = !{!55, !5, i64 16}
!55 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !5, i64 16}
!56 = !{!57, !5, i64 16}
!57 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !5, i64 16, !5, i64 20}
!58 = !{!59, !5, i64 16}
!59 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !5, i64 16, !5, i64 20}
!60 = !{!59, !5, i64 20}
!61 = !{!62, !5, i64 16}
!62 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !5, i64 16, !5, i64 20}
!63 = !{!62, !5, i64 20}
!64 = !{!57, !5, i64 20}
!65 = !{!66, !5, i64 0}
!66 = !{!"_ZTS18halide_mutex_array", !5, i64 0}
!67 = !{!68, !13, i64 24}
!68 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !69, i64 0, !5, i64 36, !5, i64 40, !5, i64 44, !13, i64 48, !5, i64 52, !13, i64 56, !5, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !18, i64 76}
!69 = !{!"_ZTS22halide_parallel_task_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !18, i64 32}
!70 = !{!71, !18, i64 1072}
!71 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !72, i64 0, !13, i64 4, !13, i64 8, !5, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !73, i64 28, !73, i64 32, !73, i64 36, !13, i64 40, !13, i64 44, !6, i64 48, !18, i64 1072, !18, i64 1073, !13, i64 1076}
!72 = !{!"_ZTS12halide_mutex", !6, i64 0}
!73 = !{!"_ZTS11halide_cond", !6, i64 0}
!74 = !{!68, !13, i64 64}
!75 = !{!71, !5, i64 12}
!76 = !{!68, !13, i64 68}
!77 = !{!68, !5, i64 40}
!78 = distinct !{!78, !25}
!79 = !{!68, !5, i64 52}
!80 = !{!68, !13, i64 28}
!81 = !{!71, !13, i64 16}
!82 = !{!68, !18, i64 32}
!83 = !{!68, !13, i64 72}
!84 = !{!68, !13, i64 16}
!85 = !{!68, !5, i64 12}
!86 = !{!87, !5, i64 0}
!87 = !{!"_ZTS26halide_semaphore_acquire_t", !5, i64 0, !13, i64 4}
!88 = !{!87, !13, i64 4}
!89 = distinct !{!89, !25}
!90 = !{!68, !5, i64 44}
!91 = !{!71, !13, i64 44}
!92 = !{!68, !18, i64 76}
!93 = !{!71, !13, i64 40}
!94 = !{!71, !13, i64 20}
!95 = !{!71, !13, i64 24}
!96 = distinct !{!96, !25}
!97 = !{!68, !5, i64 60}
!98 = !{!68, !5, i64 0}
!99 = !{!68, !13, i64 20}
!100 = !{!68, !5, i64 4}
!101 = distinct !{!101, !25}
!102 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 1, !103, i64 36, i64 4, !11, i64 40, i64 4, !11, i64 44, i64 4, !11, i64 48, i64 4, !12, i64 52, i64 4, !11, i64 56, i64 4, !12, i64 60, i64 4, !11, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 4, !12, i64 76, i64 1, !103}
!103 = !{!18, !18, i64 0}
!104 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 1, !103, i64 32, i64 4, !11, i64 36, i64 4, !11, i64 40, i64 4, !11, i64 44, i64 4, !12, i64 48, i64 4, !11, i64 52, i64 4, !12, i64 56, i64 4, !11, i64 60, i64 4, !12, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 1, !103}
!105 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !12, i64 16, i64 4, !11, i64 20, i64 4, !12, i64 24, i64 4, !11, i64 28, i64 4, !12, i64 32, i64 4, !12, i64 36, i64 4, !12, i64 40, i64 1, !103}
!106 = !{i64 0, i64 4, !11, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 1, !103}
!107 = !{!68, !13, i64 48}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = !{!71, !18, i64 1073}
!111 = !{!6, !6, i64 0}
!112 = distinct !{!112, !25}
!113 = !{!71, !13, i64 4}
!114 = distinct !{!114, !25}
!115 = !{!71, !13, i64 1076}
!116 = distinct !{!116, !25}
!117 = !{!68, !13, i64 56}
!118 = distinct !{!118, !25}
!119 = !{!68, !5, i64 8}
!120 = !{!68, !5, i64 36}
!121 = !{!69, !13, i64 24}
!122 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 1, !103}
!123 = distinct !{!123, !25}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !25}
