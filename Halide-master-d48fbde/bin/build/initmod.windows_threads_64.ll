; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, [4 x i8], %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8, [7 x i8] }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32, [4 x i8] }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i64] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::spawned_thread" = type { void (i8*)*, i8*, i8* }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i64 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type { %struct.CriticalSection, i64, i8, [7 x i8] }
%struct.CriticalSection = type { [5 x i64] }
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

$"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@" = comdat any

$"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@" = comdat any

$"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@" = comdat any

$"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@" = comdat any

$"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

@"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"NUMBER_OF_PROCESSORS\00", comdat, align 1
@"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\0A\00", comdat, align 1
@"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" = weak dso_local global [24576 x i8] zeroinitializer, align 1
@"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", comdat, align 1
@"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", comdat, align 1
@"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A" = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" { %struct.halide_mutex zeroinitializer, i32 0, i32 0, %"struct.Halide::Runtime::Internal::work"* null, i32 0, i32 0, i32 0, [4 x i8] undef, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, i32 0, i32 0, [256 x %struct.halide_thread*] zeroinitializer, i8 0, i8 0, i32 0 }, align 8
@"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", comdat, align 1
@"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8
@"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8
@"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8
@"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8
@"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8
@"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8
@"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8
@"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", comdat, align 1
@"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", comdat, align 1
@"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", comdat, align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z"(i8* %0) #0 {
  %2 = bitcast i8* %0 to void (i8*)**
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !7
  tail call void %3(i8* %6) #5
  ret i8* null
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i64 0, i64 0)) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @atoi(i8* nonnull %1) #5
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 8, %0 ]
  ret i32 %6
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare dso_local i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 24) #5
  %4 = bitcast i8* %3 to void (i8*)**
  store void (i8*)* %0, void (i8*)** %4, align 8, !tbaa !2
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %1, i8** %6, align 8, !tbaa !7
  %7 = tail call i8* @CreateThread(i8* null, i64 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z", i8* %3, i32 0, i32* null) #5
  %8 = getelementptr inbounds i8, i8* %3, i64 16
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !8
  %10 = bitcast i8* %3 to %struct.halide_thread*
  ret %struct.halide_thread* %10
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #2

declare dso_local i8* @CreateThread(i8*, i64, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8, !tbaa !8
  %5 = tail call i32 @WaitForSingleObject(i8* %4, i32 -1) #5
  %6 = bitcast %struct.halide_thread* %0 to i8*
  tail call void @free(i8* %6) #5
  ret void
}

declare dso_local i32 @WaitForSingleObject(i8*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
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

13:                                               ; preds = %64, %1
  %14 = phi i64 [ %4, %1 ], [ %65, %64 ]
  %15 = phi i32 [ 40, %1 ], [ %66, %64 ]
  %16 = and i64 %14, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  %20 = or i64 %19, 1
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %67, label %23

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
  br label %64

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #6
  store i8 0, i8* %6, align 8, !tbaa !9
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #5
  call void @InitializeConditionVariable(i64* nonnull %8) #5
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !14
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !tbaa !16
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !17
  store i8 1, i8* %6, align 8, !tbaa !9
  %41 = and i64 %30, -4
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !17
  br label %46

44:                                               ; preds = %39
  %45 = inttoptr i64 %41 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !14
  br label %46

46:                                               ; preds = %44, %43
  %47 = and i64 %30, 3
  %48 = or i64 %47, %12
  %49 = cmpxchg weak i64* %3, i64 %30, i64 %48 release monotonic
  %50 = extractvalue { i64, i1 } %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0
  br label %61

53:                                               ; preds = %46
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #5
  %54 = load i8, i8* %6, align 8, !tbaa !9, !range !18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %56
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #5
  %57 = load i8, i8* %6, align 8, !tbaa !9, !range !18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %56, !llvm.loop !19

59:                                               ; preds = %56, %53
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #5
  %60 = load atomic i64, i64* %3 monotonic, align 8
  br label %61

61:                                               ; preds = %51, %59
  %62 = phi i64 [ %60, %59 ], [ %52, %51 ]
  %63 = phi i32 [ 40, %59 ], [ %40, %51 ]
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #6
  br label %64

64:                                               ; preds = %61, %36
  %65 = phi i64 [ %38, %36 ], [ %62, %61 ]
  %66 = phi i32 [ %37, %36 ], [ %63, %61 ]
  br label %13

67:                                               ; preds = %18
  ret void
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0
  %3 = load atomic i64, i64* %2 monotonic, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ]
  %6 = and i64 %5, 2
  %7 = icmp ne i64 %6, 0
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7
  br i1 %9, label %62, label %10

10:                                               ; preds = %4
  %11 = or i64 %5, 2
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %60
  %16 = phi { i64, i1 } [ %61, %60 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0
  %18 = and i64 %17, -4
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !17
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !tbaa !14
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !tbaa !16
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !tbaa !17
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null
  br i1 %33, label %23, label %34, !llvm.loop !21

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !17
  %36 = and i64 %17, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = and i64 %17, -3
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic
  %41 = extractvalue { i64, i1 } %40, 1
  br i1 %41, label %62, label %60

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !tbaa !16
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
  br i1 %53, label %46, label %60, !llvm.loop !22

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !tbaa !17
  %55 = atomicrmw and i64* %2, i64 -3 release
  br label %56

56:                                               ; preds = %46, %54
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %57) #5
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2
  store i8 0, i8* %58, align 8, !tbaa !9
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1
  tail call void @WakeConditionVariable(i64* nonnull %59) #5
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %57) #5
  br label %62

60:                                               ; preds = %51, %38
  %61 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire
  br label %15

62:                                               ; preds = %4, %38, %56
  ret void
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) local_unnamed_addr #0 {
  %2 = mul i64 %0, -7046029254386353131
  %3 = lshr i64 %2, 54
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0
  %6 = cmpxchg weak i64* %5, i64 0, i64 1 acquire monotonic
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %9) #5
  br label %10

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #3 {
  %4 = mul i64 %1, -7046029254386353131
  %5 = lshr i64 %4, 54
  %6 = mul i64 %2, -7046029254386353131
  %7 = lshr i64 %6, 54
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0
  %12 = cmpxchg weak i64* %11, i64 0, i64 1 acquire monotonic
  %13 = extractvalue { i64, i1 } %12, 1
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #5
  br label %46

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %7
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, i32 0
  %22 = cmpxchg weak i64* %21, i64 0, i64 1 acquire monotonic
  %23 = extractvalue { i64, i1 } %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %25) #5
  br label %26

26:                                               ; preds = %18, %24
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0
  %28 = cmpxchg weak i64* %27, i64 0, i64 1 acquire monotonic
  %29 = extractvalue { i64, i1 } %28, 1
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #5
  br label %46

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, i32 0
  %36 = cmpxchg weak i64* %35, i64 0, i64 1 acquire monotonic
  %37 = extractvalue { i64, i1 } %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %39) #5
  br label %40

40:                                               ; preds = %32, %38
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, i32 0
  %42 = cmpxchg weak i64* %41, i64 0, i64 1 acquire monotonic
  %43 = extractvalue { i64, i1 } %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #5
  br label %46

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 8, !tbaa !23
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !tbaa !26
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
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #5
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
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %26) #5
  br label %27

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !tbaa !26
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, i32 0
  %30 = atomicrmw and i64* %29, i64 -2 release
  %31 = and i64 %30, 2
  %32 = icmp ne i64 %31, 0
  %33 = icmp ult i64 %30, 4
  %34 = or i1 %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %36) #5
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
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #5
  br label %46

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !tbaa !24
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, i32 0
  %49 = atomicrmw and i64* %48, i64 -2 release
  %50 = and i64 %49, 2
  %51 = icmp ne i64 %50, 0
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %55) #5
  br label %56

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  ret i1 true
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  ret i64 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  ret void
}

; Function Attrs: nounwind
define weak dso_local i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #6
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2
  store i8 0, i8* %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #5
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1
  call void @InitializeConditionVariable(i64* nonnull %8) #5
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1
  store i64 0, i64* %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !tbaa !29
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3
  store i64 0, i64* %11, align 8, !tbaa !30
  %12 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #6
  store i8 0, i8* %13, align 8, !tbaa !31
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2
  store i64 0, i64* %14, align 8, !tbaa !33
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 8, !tbaa !34
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #5
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0
  %21 = atomicrmw and i64* %20, i64 -2 release
  %22 = and i64 %21, 2
  %23 = icmp ne i64 %22, 0
  %24 = icmp ult i64 %21, 4
  %25 = or i1 %24, %23
  br i1 %25, label %54, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #5
  br label %54

28:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !tbaa !29
  store i64 %0, i64* %9, align 8, !tbaa !27
  store i8 1, i8* %6, align 8, !tbaa !9
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 1
  %30 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, align 8, !tbaa !36
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, null
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2
  %33 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, align 8
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %33, i64 0, i32 2
  %35 = select i1 %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !tbaa !23
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 8, !tbaa !39
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0
  %38 = atomicrmw and i64* %37, i64 -2 release
  %39 = and i64 %38, 2
  %40 = icmp ne i64 %39, 0
  %41 = icmp ult i64 %38, 4
  %42 = or i1 %41, %40
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %44) #5
  br label %45

45:                                               ; preds = %28, %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1
  %47 = load void (i8*)*, void (i8*)** %46, align 8, !tbaa !40
  call void %47(i8* nonnull %17) #5
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #5
  %48 = load i8, i8* %6, align 8, !tbaa !9, !range !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45, %50
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #5
  %51 = load i8, i8* %6, align 8, !tbaa !9, !range !18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %50, !llvm.loop !19

53:                                               ; preds = %50, %45
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #5
  br label %54

54:                                               ; preds = %26, %19, %53
  %55 = phi i64* [ %11, %53 ], [ %14, %19 ], [ %14, %26 ]
  %56 = load i64, i64* %55, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #6
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #6
  ret i64 %56
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %11

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ]
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ]
  %15 = phi i64 [ undef, %2 ], [ %61, %57 ]
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1
  %19 = load atomic i64, i64* %18 monotonic, align 8
  %20 = icmp eq i64 %19, %0
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 8, !tbaa !29
  br i1 %20, label %23, label %57

23:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !tbaa !23
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !tbaa !39
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  br i1 %27, label %40, label %29

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !tbaa !39
  br label %40

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 1
  %32 = load atomic i64, i64* %31 monotonic, align 8
  %33 = icmp eq i64 %32, %0
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 2
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !tbaa !29
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null
  %37 = or i1 %33, %36
  br i1 %37, label %38, label %29, !llvm.loop !42

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8
  br label %40

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ]
  %42 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !tbaa !43
  %43 = icmp ne i8 %41, 0
  %44 = tail call i64 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #5
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3
  store i64 %44, i64* %45, align 8, !tbaa !30
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %46) #5
  %47 = atomicrmw and i64* %9, i64 -2 release
  %48 = and i64 %47, 2
  %49 = icmp ne i64 %48, 0
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #5
  br label %53

53:                                               ; preds = %40, %52
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 2
  store i8 0, i8* %54, align 8, !tbaa !9
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 1
  tail call void @WakeConditionVariable(i64* nonnull %55) #5
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %46) #5
  %56 = zext i8 %41 to i64
  br label %57

57:                                               ; preds = %17, %53
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %53 ], [ %21, %17 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %53 ], [ %14, %17 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %53 ], [ %22, %17 ]
  %61 = phi i64 [ %56, %53 ], [ %15, %17 ]
  br i1 %20, label %71, label %11, !llvm.loop !44

62:                                               ; preds = %11
  %63 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !tbaa !43
  %64 = tail call i64 %63(i8* nonnull %8, i32 0, i1 zeroext false) #5
  %65 = atomicrmw and i64* %9, i64 -2 release
  %66 = and i64 %65, 2
  %67 = icmp ne i64 %66, 0
  %68 = icmp ult i64 %65, 4
  %69 = or i1 %68, %67
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #5
  br label %71

71:                                               ; preds = %57, %70, %62
  %72 = phi i64 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ]
  ret i64 %72
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YA_K_K0@Z"(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #7
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !tbaa !23
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #6
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i64 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i64 [ 0, %10 ], [ %54, %53 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1
  %19 = load atomic i64, i64* %18 monotonic, align 8
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !tbaa !29
  %22 = icmp eq i64 %19, %0
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !tbaa !23
  br i1 %22, label %23, label %53

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !tbaa !39
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !tbaa !39
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
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !tbaa !23
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !tbaa !23
  %42 = add nuw i64 %38, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %34, label %37, !llvm.loop !45

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*
  call void @free(i8* %45) #5
  br label %46

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ]
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3
  store i64 %1, i64* %49, align 8, !tbaa !30
  %50 = add i64 %17, 1
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !tbaa !23
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %52) #5
  br label %53

53:                                               ; preds = %12, %46
  %54 = phi i64 [ %50, %46 ], [ %17, %12 ]
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ]
  %56 = phi i64 [ %48, %46 ], [ %15, %12 ]
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ]
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null
  br i1 %58, label %59, label %12, !llvm.loop !46

59:                                               ; preds = %53, %2
  %60 = phi i64 [ 0, %2 ], [ %54, %53 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ]
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0
  %63 = atomicrmw and i64* %62, i64 -2 release
  %64 = and i64 %63, 2
  %65 = icmp ne i64 %64, 0
  %66 = icmp ult i64 %63, 4
  %67 = or i1 %66, %65
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %69) #5
  br label %70

70:                                               ; preds = %59, %68
  %71 = icmp eq i64 %60, 0
  br i1 %71, label %81, label %73

72:                                               ; preds = %73
  br i1 %71, label %81, label %83

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %79, %73 ], [ 0, %70 ]
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %74
  %76 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %75, align 8, !tbaa !23
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 2
  store i8 0, i8* %77, align 8, !tbaa !9
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 1
  call void @WakeConditionVariable(i64* nonnull %78) #5
  %79 = add nuw i64 %74, 1
  %80 = icmp eq i64 %79, %60
  br i1 %80, label %72, label %73, !llvm.loop !47

81:                                               ; preds = %83, %70, %72
  %82 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8
  br i1 %82, label %92, label %90

83:                                               ; preds = %72, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %72 ]
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %84
  %86 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %85, align 8, !tbaa !23
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %86, i64 0, i32 0, i32 0
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %87) #5
  %88 = add nuw i64 %84, 1
  %89 = icmp eq i64 %88, %60
  br i1 %89, label %81, label %83, !llvm.loop !48

90:                                               ; preds = %81
  %91 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*
  call void @free(i8* %91) #5
  br label %92

92:                                               ; preds = %90, %81
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #6
  ret i64 %60
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #3 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #6
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #7
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #6
  store i8 0, i8* %8, align 8, !tbaa !31
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2
  store i64 0, i64* %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !tbaa !34
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #5
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  br label %91

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !tbaa !24
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !tbaa !23
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
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !tbaa !29
  %32 = icmp eq i64 %29, %0
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !tbaa !23
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !tbaa !24
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !tbaa !39
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !tbaa !31, !range !18
  %41 = icmp ne i8 %40, 0
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !tbaa !29
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
  br i1 %56, label %57, label %21, !llvm.loop !49

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !tbaa !29
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !tbaa !26
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !tbaa !36
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !tbaa !39
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !tbaa !23
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !tbaa !39
  br label %73

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !tbaa !50
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #5
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3
  store i64 %3, i64* %80, align 8, !tbaa !30
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %81) #5
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2
  store i8 0, i8* %82, align 8, !tbaa !9
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1
  call void @WakeConditionVariable(i64* nonnull %83) #5
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %81) #5
  br label %85

84:                                               ; preds = %73
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #7
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i8, i8* %8, align 8
  %87 = and i8 %86, 1
  %88 = icmp ne i8 %87, 0
  %89 = and i1 %78, %88
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %85, %14
  %92 = phi i32 [ %90, %85 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #6
  ret i32 %92
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !51
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = icmp eq i64 %6, 3
  ret i1 %7
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  %4 = select i1 %2, i64 2, i64 0
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !51
  store atomic i64 %4, i64* %7 release, align 8
  ret i64 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !53
  store atomic i64 0, i64* %7 monotonic, align 8
  br label %8

8:                                                ; preds = %4, %3
  ret i64 0
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !55
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 40
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !tbaa !57
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  store atomic i64 0, i64* %5 monotonic, align 8
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !tbaa !57
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
  store i8 %28, i8* %29, align 8, !tbaa !31
  br label %30

30:                                               ; preds = %2, %27
  ret i1 %11
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0
  %6 = load i8, i8* %5, align 8, !tbaa !31, !range !18
  %7 = icmp ne i8 %6, 0
  %8 = and i1 %7, %3
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0
  %14 = atomicrmw or i64* %13, i64 2 monotonic
  br label %15

15:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to i64**
  %5 = load i64*, i64** %4, align 8, !tbaa !58
  %6 = load atomic i64, i64* %5 monotonic, align 8
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds i8, i8* %0, i64 40
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !tbaa !60
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
  store i64 %11, i64* %16, align 8, !tbaa !33
  br label %17

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ]
  ret i1 %18
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %3 = getelementptr inbounds i8, i8* %0, i64 40
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !tbaa !60
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %15, align 8, !tbaa !40
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !tbaa !50
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  store i64* %6, i64** %18, align 8, !tbaa !51
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !tbaa !34
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %16, align 8, !tbaa !43
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64
  %21 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %19) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6
  br label %22

22:                                               ; preds = %1, %9, %12
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i64 32
  %6 = bitcast i8* %5 to i64**
  %7 = load i64*, i64** %6, align 8, !tbaa !58
  store atomic i64 0, i64* %7 monotonic, align 8
  br label %8

8:                                                ; preds = %4, %3
  ret i64 0
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
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
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i64
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !tbaa !40
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !50
  store i64* %3, i64** %13, align 8, !tbaa !51
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !34
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !tbaa !43
  %51 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #5
  %52 = icmp eq i64 %51, %15
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
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %15, align 8, !tbaa !51
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !tbaa !34
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %13, align 8, !tbaa !43
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %17 = ptrtoint %struct.halide_mutex* %0 to i64
  %18 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #6
  br label %19

19:                                               ; preds = %1, %6, %9
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #3 {
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2
  store i64 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !tbaa !57
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !34
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !50
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0
  %16 = ptrtoint %struct.halide_cond* %0 to i64
  %17 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %16, i64 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15, i64 0) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #3 {
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
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1
  store i64* %3, i64** %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !tbaa !61
  store i64 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !tbaa !43
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0
  %16 = ptrtoint %struct.halide_cond* %0 to i64
  %17 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #6
  br label %18

18:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #6
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1
  store i64* %6, i64** %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !tbaa !60
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !tbaa !34
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %8, align 8, !tbaa !40
  store i64 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %9, align 8, !tbaa !43
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0
  %15 = ptrtoint %struct.halide_cond* %0 to i64
  %16 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #5
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %27, align 8, !tbaa !40
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !tbaa !50
  store i64* %19, i64** %30, align 8, !tbaa !51
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !tbaa !34
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %28, align 8, !tbaa !43
  %67 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #5
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
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #5
  call void @abort() #5
  br label %80

80:                                               ; preds = %37, %20, %74, %75, %79
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #5
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #5
  %9 = bitcast i8* %2 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !62
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

declare dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !62
  tail call void @halide_free(i8* %0, i8* %4) #5
  tail call void @halide_free(i8* %0, i8* %1) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !tbaa !62
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !tbaa !62
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #7
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %0) local_unnamed_addr #4 {
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
define weak dso_local i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() local_unnamed_addr #0 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i64 0, i64 0)) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i64 0, i64 0)) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #5
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #7
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 {
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
  %13 = load i32, i32* %4, align 8, !tbaa !64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %21

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !tbaa !68, !range !18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %417

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !tbaa !72
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %417, label %21

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  %23 = load i32, i32* %5, align 4, !tbaa !74
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !tbaa !72
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !tbaa !75
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0
  br i1 %34, label %35, label %30, !llvm.loop !76

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %28 ], [ %32, %30 ]
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !tbaa !75
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !tbaa !23
  store i32 0, i32* %4, align 8, !tbaa !64
  br label %402

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !tbaa !77
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9
  %43 = load i32, i32* %42, align 4, !tbaa !74
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !tbaa !74
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #7
  br label %402

46:                                               ; preds = %25, %41, %38
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null
  br i1 %47, label %196, label %51

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null
  br i1 %50, label %206, label %52

51:                                               ; preds = %46
  br i1 %3, label %52, label %121

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %52 ]
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !tbaa !77
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8
  %62 = load i32, i32* %61, align 8, !tbaa !72
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7
  %65 = load i32, i32* %64, align 4, !tbaa !78
  br i1 %63, label %71, label %66

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6
  %69 = load i32, i32* %68, align 8, !tbaa !79
  %70 = sub nsw i32 %67, %69
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6
  %73 = load i32, i32* %72, align 8, !tbaa !79
  %74 = sub nsw i32 %65, %73
  br label %80

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %79 = sub i32 %77, %78
  br label %80

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ]
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7
  %83 = load i32, i32* %82, align 4, !tbaa !78
  %84 = icmp sge i32 %81, %83
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !82, !range !18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8
  %90 = load i32, i32* %89, align 8, !tbaa !72
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  %94 = and i1 %93, %84
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10
  %97 = load i32, i32* %96, align 8, !tbaa !83
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4
  %99 = load i32, i32* %98, align 8, !tbaa !84
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %225

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !tbaa !85
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1
  %108 = load i32, i32* %107, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0
  %110 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %109, align 8, !tbaa !88
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %110, i32 %108) #5
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !tbaa !83
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %96, align 8, !tbaa !83
  %115 = load i32, i32* %98, align 8, !tbaa !84
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %103, label %225, !llvm.loop !89

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !tbaa !75
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null
  br i1 %120, label %196, label %54

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %51 ]
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !tbaa !77
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %131 = sub i32 %129, %130
  br label %147

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8
  %134 = load i32, i32* %133, align 8, !tbaa !72
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7
  %137 = load i32, i32* %136, align 4, !tbaa !78
  br i1 %135, label %138, label %142

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6
  %140 = load i32, i32* %139, align 8, !tbaa !79
  %141 = sub nsw i32 %137, %140
  br label %147

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6
  %145 = load i32, i32* %144, align 8, !tbaa !79
  %146 = sub nsw i32 %143, %145
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ]
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7
  %150 = load i32, i32* %149, align 4, !tbaa !78
  %151 = icmp slt i32 %148, %150
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !tbaa !90
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !tbaa !90
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154
  %156 = icmp ne i32 %150, 0
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8
  %158 = load i8, i8* %157, align 8, !tbaa !82, !range !18
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8
  %162 = load i32, i32* %161, align 8, !tbaa !72
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
  %172 = load i32, i32* %171, align 8, !tbaa !83
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4
  %174 = load i32, i32* %173, align 8, !tbaa !84
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %225

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !tbaa !85
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1
  %183 = load i32, i32* %182, align 8, !tbaa !86
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0
  %185 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %184, align 8, !tbaa !88
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %185, i32 %183) #5
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !tbaa !83
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %171, align 8, !tbaa !83
  %190 = load i32, i32* %173, align 8, !tbaa !84
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %178, label %225, !llvm.loop !89

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !tbaa !75
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null
  br i1 %195, label %196, label %121

196:                                              ; preds = %192, %117, %46
  br i1 %3, label %206, label %197

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1
  %199 = icmp slt i32 %11, 40
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %402

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !tbaa !91
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !tbaa !91
  store i8 1, i8* %8, align 4, !tbaa !92
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  store i8 0, i8* %8, align 4, !tbaa !92
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !tbaa !91
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !tbaa !91
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !tbaa !93
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !tbaa !93
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !tbaa !95
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  br label %221

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1
  %218 = icmp slt i32 %11, 40
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %221

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ]
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !tbaa !93
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !tbaa !93
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !tbaa !83
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8
  %230 = load i32, i32* %229, align 8, !tbaa !72
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8, !tbaa !72
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !tbaa !77
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7
  %236 = load i32, i32* %235, align 4, !tbaa !78
  br i1 %234, label %237, label %240

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %239 = add nsw i32 %238, %236
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  br label %244

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6
  %242 = load i32, i32* %241, align 8, !tbaa !79
  %243 = add nsw i32 %242, %236
  store i32 %243, i32* %241, align 8, !tbaa !79
  br label %244

244:                                              ; preds = %240, %237
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8
  %246 = load i8, i8* %245, align 8, !tbaa !82, !range !18
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %323, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !tbaa !75
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !tbaa !23
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %259 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  br label %260

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  %263 = load i32, i32* %251, align 8, !tbaa !64
  %264 = sub nsw i32 %263, %262
  %265 = icmp sgt i32 %264, %261
  br i1 %265, label %266, label %297

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !tbaa !83
  %268 = load i32, i32* %253, align 8, !tbaa !84
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
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !tbaa !85
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1
  %280 = load i32, i32* %279, align 8, !tbaa !86
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0
  %282 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %281, align 8, !tbaa !88
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %282, i32 %280) #5
  br i1 %283, label %284, label %297

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !tbaa !83
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %252, align 8, !tbaa !83
  %287 = load i32, i32* %253, align 8, !tbaa !84
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %275, label %289, !llvm.loop !89

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !tbaa !64
  br label %291

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ]
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !tbaa !83
  %294 = add nuw nsw i32 %273, 1
  %295 = sub nsw i32 %292, %262
  %296 = icmp sgt i32 %295, %294
  br i1 %296, label %269, label %300, !llvm.loop !96

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %256, align 8, !tbaa !97
  %303 = load i32, i32* %257, align 4, !tbaa !98
  %304 = add nsw i32 %303, %262
  %305 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %258, align 8, !tbaa !99
  %306 = load i8*, i8** %259, align 8, !tbaa !100
  %307 = tail call i32 @halide_do_loop_task(i8* %306, i32 (i8*, i32, i32, i8*, i8*)* %305, i32 %304, i32 %301, i8* %302, i8* nonnull %255) #7
  %308 = add nuw nsw i32 %301, %262
  %309 = icmp eq i32 %307, 0
  br i1 %309, label %260, label %310, !llvm.loop !101

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ]
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %314 = load i32, i32* %257, align 4, !tbaa !98
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %257, align 4, !tbaa !98
  %316 = load i32, i32* %251, align 8, !tbaa !64
  %317 = sub nsw i32 %316, %313
  store i32 %317, i32* %251, align 8, !tbaa !64
  br i1 %311, label %319, label %318

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !tbaa !64
  br label %352

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0
  br i1 %320, label %321, label %382

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !tbaa !75
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  br label %382

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !tbaa.struct !102
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8, !tbaa.struct !105
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !tbaa.struct !106
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %333 = load i8*, i8** %332, align 8, !tbaa.struct !107
  %334 = add nsw i32 %329, 1
  store i32 %334, i32* %328, align 4, !tbaa !98
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %336 = load i32, i32* %335, align 8, !tbaa !64
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %335, align 8, !tbaa !64
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !tbaa !75
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !tbaa !23
  br label %342

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
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
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %382, label %352

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9
  store i32 %353, i32* %354, align 4, !tbaa !74
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4
  %356 = load i32, i32* %355, align 8, !tbaa !108
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %382

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !90
  %361 = zext i32 %356 to i64
  br label %362

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9
  %366 = load i32, i32* %365, align 4, !tbaa !74
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !tbaa !74
  %369 = load i32, i32* %229, align 8, !tbaa !72
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11
  %373 = load i8, i8* %372, align 4, !tbaa !92, !range !18
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
  br i1 %381, label %382, label %362, !llvm.loop !109

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ]
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !tbaa !77
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7
  %387 = load i32, i32* %386, align 4, !tbaa !78
  br i1 %385, label %388, label %391

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %390 = sub nsw i32 %389, %387
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  br label %395

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6
  %393 = load i32, i32* %392, align 8, !tbaa !79
  %394 = sub nsw i32 %393, %387
  store i32 %394, i32* %392, align 8, !tbaa !79
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !tbaa !72
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %229, align 8, !tbaa !72
  %398 = and i8 %383, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %416

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !llvm.loop !110

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %406 = load i32, i32* %405, align 8, !tbaa !64
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9
  %410 = load i32, i32* %409, align 4, !tbaa !74
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %402, label %412

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11
  %414 = load i8, i8* %413, align 4, !tbaa !92, !range !18
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %402, label %416

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #7
  br label %402

417:                                              ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 {
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !tbaa !23
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !tbaa !23
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 {
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !tbaa !111, !range !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), %3 ]
  %8 = load i8, i8* %7, align 1, !tbaa !112
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*)
  br i1 %12, label %13, label %6, !llvm.loop !113

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ]
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %17

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #7
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #7
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !tbaa !111
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
  %46 = load i32, i32* %45, align 4, !tbaa !78
  %47 = icmp eq i32 %46, 0
  %48 = add i32 %46, %40
  %49 = select i1 %47, i8 1, i8 %43
  %50 = select i1 %47, i8 %41, i8 1
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4
  %52 = load i32, i32* %51, align 8, !tbaa !84
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i8 %42, i8 1
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !82, !range !18
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1
  br label %64

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6
  %62 = load i32, i32* %61, align 8, !tbaa !64
  %63 = add nsw i32 %62, %44
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ]
  %66 = add nuw nsw i64 %39, 1
  %67 = icmp eq i64 %66, %28
  br i1 %67, label %29, label %38, !llvm.loop !115

68:                                               ; preds = %31
  %69 = or i8 %35, %34
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %36, %73
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %76 = icmp slt i32 %75, 256
  br i1 %76, label %77, label %96

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  %80 = add nsw i32 %79, -1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %85 = sub i32 %83, %84
  %86 = icmp slt i32 %85, %74
  br i1 %86, label %87, label %96

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z", i8* null) #7
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %93
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !tbaa !23
  %95 = icmp slt i32 %91, 255
  br i1 %95, label %77, label %96, !llvm.loop !116

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  br label %118

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7
  %102 = load i32, i32* %101, align 4, !tbaa !78
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8
  %104 = load i32, i32* %103, align 8, !tbaa !72
  %105 = mul nsw i32 %104, %102
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6
  %107 = load i32, i32* %106, align 8, !tbaa !79
  %108 = sub nsw i32 %105, %107
  %109 = icmp sgt i32 %36, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #5
  tail call void @abort() #5
  br label %111

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !tbaa !79
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %106, align 8, !tbaa !79
  br label %118

118:                                              ; preds = %111, %96, %115, %97
  br i1 %26, label %119, label %123

119:                                              ; preds = %118
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  %121 = zext i32 %0 to i64
  br label %136

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !73
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !tbaa !91
  %125 = icmp ne i32 %124, 0
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8
  %128 = icmp slt i32 %126, %127
  %129 = or i1 %125, %128
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129
  %132 = select i1 %131, i32 %127, i32 %32
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !tbaa !95
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #7
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !tbaa !95
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !tbaa !94
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %146, label %149

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ]
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ]
  %139 = add nsw i64 %137, -1
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !tbaa !75
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !tbaa !90
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4
  store i32 %0, i32* %143, align 8, !tbaa !108
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6
  store i32 0, i32* %144, align 8, !tbaa !79
  %145 = icmp sgt i64 %137, 1
  br i1 %145, label %136, label %122, !llvm.loop !117

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #7
  %147 = icmp eq i8 %33, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #7
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
  %156 = load i32, i32* %155, align 8, !tbaa !79
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8, !tbaa !79
  br label %161

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !tbaa !81
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #5
  ret i32 %5
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5
  store i32 %2, i32* %11, align 4, !tbaa !98
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6
  store i32 %3, i32* %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8
  store i8 0, i8* %13, align 8, !tbaa !82
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !tbaa !85
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4
  store i32 0, i32* %15, align 8, !tbaa !84
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1
  store i8* %4, i8** %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !78
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2
  store i8* null, i8** %18, align 8, !tbaa !118
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !tbaa !119
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7
  store i8* %0, i8** %20, align 8, !tbaa !100
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9
  store i32 0, i32* %21, align 4, !tbaa !74
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8
  store i32 0, i32* %22, align 8, !tbaa !72
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10
  store i32 0, i32* %23, align 8, !tbaa !83
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11
  store i8 0, i8* %24, align 4, !tbaa !92
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !tbaa !90
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4
  store i32 0, i32* %26, align 8, !tbaa !108
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !tbaa !77
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #7
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %28 = load i32, i32* %21, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #6
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 {
  %5 = sext i32 %1 to i64
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %34, %33 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %39

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi %struct.halide_parallel_task_t* [ %35, %33 ], [ %2, %4 ]
  %14 = phi i32 [ %34, %33 ], [ %1, %4 ]
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 0, i32 6
  %16 = load i32, i32* %15, align 8, !tbaa !120
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i32 %14, -1
  br label %33

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 1
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*
  %24 = bitcast %struct.halide_parallel_task_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !tbaa.struct !121
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !tbaa !119
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7
  store i8* %0, i8** %26, align 8, !tbaa !100
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9
  store i32 0, i32* %27, align 4, !tbaa !74
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8
  store i32 0, i32* %28, align 8, !tbaa !72
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10
  store i32 0, i32* %29, align 8, !tbaa !83
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11
  store i8 0, i8* %30, align 4, !tbaa !92
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**
  store i8* %3, i8** %32, align 8, !tbaa !77
  br label %33

33:                                               ; preds = %20, %18
  %34 = phi i32 [ %19, %18 ], [ %14, %20 ]
  %35 = phi %struct.halide_parallel_task_t* [ %13, %18 ], [ %21, %20 ]
  %36 = add nuw nsw i64 %12, 1
  %37 = sext i32 %34 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %11, label %8, !llvm.loop !122

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #7
  %41 = icmp sgt i32 %9, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64
  br label %46

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #7
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9
  %51 = load i32, i32* %50, align 4, !tbaa !74
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 %48, i32 %51
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %43
  br i1 %55, label %44, label %46, !llvm.loop !123

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ]
  ret i32 %57
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #4 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  store atomic i32 %1, i32* %3 release, align 4
  ret i32 %1
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 {
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
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1
  ret i32 %10
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 {
  tail call void @halide_shutdown_thread_pool() #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !tbaa !111, !range !18
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !tbaa !68
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i32 0, i64 2116) #5
  br label %16

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %9
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !tbaa !23
  tail call void @halide_join_thread(%struct.halide_thread* %11) #7
  %12 = add nuw nsw i64 %9, 1
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !tbaa !80
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %8, label %6, !llvm.loop !124

16:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i64 0, i64 0)) #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  br label %8

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #7
  br label %8

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #7
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !tbaa !114
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #7
  ret i32 %10
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !tbaa !23
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !tbaa !23
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !tbaa !23
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #4 {
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !tbaa !23
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !tbaa !23
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 {
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !tbaa !23
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !tbaa !23
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !tbaa !23
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i1 %4
}

declare dso_local void @InitializeCriticalSection(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local void @InitializeConditionVariable(i64*) local_unnamed_addr #2

declare dso_local void @EnterCriticalSection(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local void @SleepConditionVariableCS(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #2

declare dso_local void @LeaveCriticalSection(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local void @DeleteCriticalSection(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local void @WakeConditionVariable(i64*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!2 = !{!3, !4, i64 0}
!3 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !4, i64 0, !4, i64 8, !4, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!3, !4, i64 8}
!8 = !{!3, !4, i64 16}
!9 = !{!10, !13, i64 48}
!10 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !11, i64 0, !12, i64 40, !13, i64 48}
!11 = !{!"?AUCriticalSection@@", !5, i64 0}
!12 = !{!"long long", !5, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!15, !4, i64 56}
!15 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !10, i64 0, !4, i64 56, !4, i64 64, !4, i64 72}
!16 = !{!15, !4, i64 64}
!17 = !{!15, !4, i64 72}
!18 = !{i8 0, i8 2}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = !{!4, !4, i64 0}
!24 = !{!25, !4, i64 0}
!25 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !4, i64 0, !4, i64 8}
!26 = !{!25, !4, i64 8}
!27 = !{!28, !12, i64 56}
!28 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !10, i64 0, !12, i64 56, !4, i64 64, !12, i64 72}
!29 = !{!28, !4, i64 64}
!30 = !{!28, !12, i64 72}
!31 = !{!32, !13, i64 0}
!32 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !13, i64 0, !12, i64 8}
!33 = !{!32, !12, i64 8}
!34 = !{!35, !4, i64 0}
!35 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!36 = !{!37, !4, i64 8}
!37 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !38, i64 0, !4, i64 8, !4, i64 16}
!38 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !12, i64 0}
!39 = !{!37, !4, i64 16}
!40 = !{!35, !4, i64 8}
!41 = !{!12, !12, i64 0}
!42 = distinct !{!42, !20}
!43 = !{!35, !4, i64 16}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{!35, !4, i64 24}
!51 = !{!52, !4, i64 32}
!52 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !4, i64 32}
!53 = !{!54, !4, i64 32}
!54 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !4, i64 32, !4, i64 40}
!55 = !{!56, !4, i64 32}
!56 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !4, i64 32, !4, i64 40}
!57 = !{!56, !4, i64 40}
!58 = !{!59, !4, i64 32}
!59 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !4, i64 32, !4, i64 40}
!60 = !{!59, !4, i64 40}
!61 = !{!54, !4, i64 40}
!62 = !{!63, !4, i64 0}
!63 = !{!"?AUhalide_mutex_array@@", !4, i64 0}
!64 = !{!65, !67, i64 40}
!65 = !{!"?AUwork@Internal@Runtime@Halide@@", !66, i64 0, !4, i64 56, !4, i64 64, !4, i64 72, !67, i64 80, !4, i64 88, !67, i64 96, !4, i64 104, !67, i64 112, !67, i64 116, !67, i64 120, !13, i64 124}
!66 = !{!"?AUhalide_parallel_task_t@@", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !13, i64 48}
!67 = !{!"int", !5, i64 0}
!68 = !{!69, !13, i64 2120}
!69 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !70, i64 0, !67, i64 8, !67, i64 12, !4, i64 16, !67, i64 24, !67, i64 28, !67, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !67, i64 64, !67, i64 68, !5, i64 72, !13, i64 2120, !13, i64 2121, !67, i64 2124}
!70 = !{!"?AUhalide_mutex@@", !5, i64 0}
!71 = !{!"?AUhalide_cond@@", !5, i64 0}
!72 = !{!65, !67, i64 112}
!73 = !{!69, !4, i64 16}
!74 = !{!65, !67, i64 116}
!75 = !{!65, !4, i64 64}
!76 = distinct !{!76, !20}
!77 = !{!65, !4, i64 88}
!78 = !{!65, !67, i64 44}
!79 = !{!65, !67, i64 96}
!80 = !{!69, !67, i64 24}
!81 = !{!69, !67, i64 2124}
!82 = !{!65, !13, i64 48}
!83 = !{!65, !67, i64 120}
!84 = !{!65, !67, i64 32}
!85 = !{!65, !4, i64 24}
!86 = !{!87, !67, i64 8}
!87 = !{!"?AUhalide_semaphore_acquire_t@@", !4, i64 0, !67, i64 8}
!88 = !{!87, !4, i64 0}
!89 = distinct !{!89, !20}
!90 = !{!65, !4, i64 72}
!91 = !{!69, !67, i64 68}
!92 = !{!65, !13, i64 124}
!93 = !{!69, !67, i64 64}
!94 = !{!69, !67, i64 28}
!95 = !{!69, !67, i64 32}
!96 = distinct !{!96, !20}
!97 = !{!65, !4, i64 8}
!98 = !{!65, !67, i64 36}
!99 = !{!65, !4, i64 0}
!100 = !{!65, !4, i64 104}
!101 = distinct !{!101, !20}
!102 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 8, !23, i64 32, i64 4, !103, i64 36, i64 4, !103, i64 40, i64 4, !103, i64 44, i64 4, !103, i64 48, i64 1, !104, i64 56, i64 8, !23, i64 64, i64 8, !23, i64 72, i64 8, !23, i64 80, i64 4, !103, i64 88, i64 8, !23, i64 96, i64 4, !103, i64 104, i64 8, !23, i64 112, i64 4, !103, i64 116, i64 4, !103, i64 120, i64 4, !103, i64 124, i64 1, !104}
!103 = !{!67, !67, i64 0}
!104 = !{!13, !13, i64 0}
!105 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 4, !103, i64 28, i64 4, !103, i64 32, i64 4, !103, i64 36, i64 4, !103, i64 40, i64 1, !104, i64 48, i64 8, !23, i64 56, i64 8, !23, i64 64, i64 8, !23, i64 72, i64 4, !103, i64 80, i64 8, !23, i64 88, i64 4, !103, i64 96, i64 8, !23, i64 104, i64 4, !103, i64 108, i64 4, !103, i64 112, i64 4, !103, i64 116, i64 1, !104}
!106 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 4, !103, i64 32, i64 8, !23, i64 40, i64 4, !103, i64 48, i64 8, !23, i64 56, i64 4, !103, i64 60, i64 4, !103, i64 64, i64 4, !103, i64 68, i64 1, !104}
!107 = !{i64 0, i64 8, !23, i64 8, i64 4, !103, i64 12, i64 4, !103, i64 16, i64 4, !103, i64 20, i64 1, !104}
!108 = !{!65, !67, i64 80}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = !{!69, !13, i64 2121}
!112 = !{!5, !5, i64 0}
!113 = distinct !{!113, !20}
!114 = !{!69, !67, i64 8}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !20}
!117 = distinct !{!117, !20}
!118 = !{!65, !4, i64 16}
!119 = !{!65, !4, i64 56}
!120 = !{!66, !67, i64 40}
!121 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 8, !23, i64 32, i64 4, !103, i64 36, i64 4, !103, i64 40, i64 4, !103, i64 44, i64 4, !103, i64 48, i64 1, !104}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
