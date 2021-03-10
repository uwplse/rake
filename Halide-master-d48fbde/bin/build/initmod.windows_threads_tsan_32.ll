; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8 }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32 }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i32] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::spawned_thread" = type { void (i8*)*, i8*, i8* }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type { %struct.CriticalSection, i64, i8 }
%struct.CriticalSection = type { [5 x i64] }
%"struct.Halide::Runtime::Internal::Synchronization::hash_bucket" = type { %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", i32, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, i32 }
%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair" = type { %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* }
%"struct.Halide::Runtime::Internal::Synchronization::validate_action" = type { i8, i32 }
%"struct.Halide::Runtime::Internal::Synchronization::parking_control" = type { i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, void (i8*)*, i32 (i8*, i32, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* }
%"class.Halide::Runtime::Internal::Synchronization::fast_mutex" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32* }
%"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
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
@"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" = weak dso_local global [12288 x i8] zeroinitializer, align 1
@"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", comdat, align 1
@"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", comdat, align 1
@"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A" = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" zeroinitializer, align 4
@"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", comdat, align 1
@"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4
@"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4
@"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4
@"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4
@"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4
@"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4
@"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4
@"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", comdat, align 1
@"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", comdat, align 1
@"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", comdat, align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z"(i8* %0) #0 {
  %2 = bitcast i8* %0 to void (i8*)**
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !tbaa !3
  %4 = getelementptr inbounds i8, i8* %0, i32 4
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 4, !tbaa !8
  tail call void %3(i8* %6) #5
  ret i8* null
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i32 0, i32 0)) #5
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
  %3 = tail call i8* @malloc(i32 12) #5
  %4 = bitcast i8* %3 to void (i8*)**
  store void (i8*)* %0, void (i8*)** %4, align 4, !tbaa !3
  %5 = getelementptr inbounds i8, i8* %3, i32 4
  %6 = bitcast i8* %5 to i8**
  store i8* %1, i8** %6, align 4, !tbaa !8
  %7 = tail call x86_stdcallcc i8* @"\01_CreateThread@24"(i8* null, i32 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z", i8* %3, i32 0, i32* null) #5
  %8 = getelementptr inbounds i8, i8* %3, i32 8
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 4, !tbaa !9
  %10 = bitcast i8* %3 to %struct.halide_thread*
  ret %struct.halide_thread* %10
}

declare dso_local i8* @malloc(i32) local_unnamed_addr #2

declare dso_local x86_stdcallcc i8* @"\01_CreateThread@24"(i8*, i32, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i32 0, i32 2
  %4 = load i8*, i8** %3, align 4, !tbaa !9
  %5 = tail call x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8* %4, i32 -1) #5
  %6 = bitcast %struct.halide_thread* %0 to i8*
  tail call void @free(i8* %6) #5
  ret void
}

declare dso_local x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #3 align 2 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !10
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13

13:                                               ; preds = %58, %1
  %14 = phi i32 [ %4, %1 ], [ %59, %58 ]
  %15 = phi i32 [ 40, %1 ], [ %60, %58 ]
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
  br i1 %24, label %61, label %16

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
  %33 = load i32, i32* %3, align 4, !tbaa !10
  br label %58

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #6
  store i8 0, i8* %6, align 8, !tbaa !12
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #5
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !17
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !tbaa !19
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !20
  store i8 1, i8* %6, align 8, !tbaa !12
  %36 = and i32 %17, -4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !tbaa !20
  br label %41

39:                                               ; preds = %34
  %40 = inttoptr i32 %36 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %39, %38
  %42 = and i32 %17, 3
  %43 = or i32 %42, %12
  %44 = cmpxchg i32* %3, i32 %17, i32 %43 seq_cst seq_cst
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = icmp eq i32 %17, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  %48 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %50
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #5
  %51 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %50, !llvm.loop !22

53:                                               ; preds = %50, %47
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  %54 = load i32, i32* %3, align 4, !tbaa !10
  br label %55

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %54, %53 ], [ %45, %41 ]
  %57 = phi i32 [ 40, %53 ], [ %35, %41 ]
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #6
  br label %58

58:                                               ; preds = %55, %31
  %59 = phi i32 [ %33, %31 ], [ %56, %55 ]
  %60 = phi i32 [ %32, %31 ], [ %57, %55 ]
  br label %13

61:                                               ; preds = %20
  ret void
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ]
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7
  br i1 %9, label %64, label %10

10:                                               ; preds = %4
  %11 = or i32 %5, 2
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = icmp eq i32 %5, %13
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %62
  %16 = phi i32 [ %63, %62 ], [ %5, %10 ]
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !20
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !tbaa !17
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !tbaa !19
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !tbaa !20
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null
  br i1 %32, label %22, label %33, !llvm.loop !24

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !20
  %35 = and i32 %16, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = and i32 %16, -3
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = icmp eq i32 %16, %40
  br i1 %41, label %64, label %62

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !tbaa !19
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  %48 = and i32 %47, 1
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = icmp ult i32 %50, 4
  br i1 %53, label %46, label %54, !llvm.loop !25

54:                                               ; preds = %52
  %55 = extractvalue { i32, i1 } %49, 0
  br label %62

56:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !tbaa !20
  %57 = atomicrmw and i32* %2, i32 -3 seq_cst
  br label %58

58:                                               ; preds = %46, %56
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %59) #5
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2
  store i8 0, i8* %60, align 8, !tbaa !12
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %61) #5
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %59) #5
  br label %64

62:                                               ; preds = %37, %54
  %63 = phi i32 [ %55, %54 ], [ %40, %37 ]
  fence seq_cst
  br label %15

64:                                               ; preds = %4, %37, %58
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, -1640531527
  %3 = lshr i32 %2, 22
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #5
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0
  %7 = cmpxchg i32* %6, i32 0, i32 1 seq_cst seq_cst
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #5
  br label %11

11:                                               ; preds = %1, %9
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #5
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #3 {
  %4 = mul i32 %1, -1640531527
  %5 = lshr i32 %4, 22
  %6 = mul i32 %2, -1640531527
  %7 = lshr i32 %6, 22
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #5
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0
  %13 = cmpxchg i32* %12, i32 0, i32 1 seq_cst seq_cst
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %51, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %16) #5
  br label %51

17:                                               ; preds = %3
  %18 = icmp ult i32 %5, %7
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #5
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0
  %24 = cmpxchg i32* %23, i32 0, i32 1 seq_cst seq_cst
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #5
  br label %28

28:                                               ; preds = %19, %26
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #5
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #5
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, i32 0
  %31 = cmpxchg i32* %30, i32 0, i32 1 seq_cst seq_cst
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %34) #5
  br label %51

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #5
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, i32 0
  %40 = cmpxchg i32* %39, i32 0, i32 1 seq_cst seq_cst
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %43) #5
  br label %44

44:                                               ; preds = %35, %42
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #5
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #5
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, i32 0
  %47 = cmpxchg i32* %46, i32 0, i32 1 seq_cst seq_cst
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #5
  br label %51

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #5
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 4, !tbaa !26
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !tbaa !27
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !tbaa !29
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #5
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %11 = atomicrmw and i32* %10, i32 -2 seq_cst
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %11, 4
  %15 = or i1 %14, %13
  br i1 %15, label %66, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %17) #5
  br label %66

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #5
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %24 = atomicrmw and i32* %23, i32 -2 seq_cst
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  %27 = icmp ult i32 %24, 4
  %28 = or i1 %27, %26
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %30) #5
  br label %31

31:                                               ; preds = %20, %29
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #5
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !tbaa !29
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #5
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, i32 0
  %36 = atomicrmw and i32* %35, i32 -2 seq_cst
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  %39 = icmp ult i32 %36, 4
  %40 = or i1 %39, %38
  br i1 %40, label %66, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %42) #5
  br label %66

43:                                               ; preds = %18
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #5
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0
  %47 = atomicrmw and i32* %46, i32 -2 seq_cst
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %53) #5
  br label %54

54:                                               ; preds = %43, %52
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #5
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !tbaa !27
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #5
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, i32 0
  %59 = atomicrmw and i32* %58, i32 -2 seq_cst
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  %62 = icmp ult i32 %59, 4
  %63 = or i1 %62, %61
  br i1 %63, label %66, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %65) #5
  br label %66

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #5
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  ret i1 true
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #4 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #6
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2
  store i8 0, i8* %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #5
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !tbaa !32
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3
  store i32 0, i32* %11, align 8, !tbaa !33
  %12 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #6
  store i8 0, i8* %13, align 4, !tbaa !34
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1
  store i32 0, i32* %14, align 4, !tbaa !36
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 4, !tbaa !37
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #5
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*
  %21 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %20, i32 1) #5
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0
  %23 = atomicrmw and i32* %22, i32 -2 seq_cst
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  %26 = icmp ult i32 %23, 4
  %27 = or i1 %26, %25
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %29) #5
  br label %30

30:                                               ; preds = %19, %28
  call void @__tsan_mutex_post_unlock(i8* nonnull %20, i32 1) #5
  %31 = load i32, i32* %14, align 4, !tbaa !36
  br label %61

32:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !tbaa !32
  store i32 %0, i32* %9, align 8, !tbaa !30
  store i8 1, i8* %6, align 8, !tbaa !12
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 1
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !tbaa !39
  %35 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 4
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %37, i32 0, i32 2
  %39 = select i1 %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !tbaa !26
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 4, !tbaa !42
  %41 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*
  %42 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %41, i32 1) #5
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0
  %44 = atomicrmw and i32* %43, i32 -2 seq_cst
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = icmp ult i32 %44, 4
  %48 = or i1 %47, %46
  br i1 %48, label %51, label %49

49:                                               ; preds = %32
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #5
  br label %51

51:                                               ; preds = %32, %49
  call void @__tsan_mutex_post_unlock(i8* nonnull %41, i32 1) #5
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1
  %53 = load void (i8*)*, void (i8*)** %52, align 4, !tbaa !43
  call void %53(i8* nonnull %17) #5
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  %54 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %56
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #5
  %57 = load i8, i8* %6, align 8, !tbaa !12, !range !21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %56, !llvm.loop !22

59:                                               ; preds = %56, %51
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  %60 = load i32, i32* %11, align 8, !tbaa !33
  br label %61

61:                                               ; preds = %59, %30
  %62 = phi i32 [ %60, %59 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #6
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #6
  ret i32 %62
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 {
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !tbaa !26
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %12

12:                                               ; preds = %59, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %60, %59 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %61, %59 ]
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %62, %59 ]
  %16 = phi i32 [ undef, %2 ], [ %63, %59 ]
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !10
  %21 = icmp eq i32 %20, %0
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 2
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 4, !tbaa !32
  br i1 %21, label %24, label %59

24:                                               ; preds = %18
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 4, !tbaa !26
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !tbaa !42
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null
  br i1 %28, label %41, label %30

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !tbaa !42
  br label %41

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4, !tbaa !10
  %34 = icmp eq i32 %33, %0
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 2
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 4, !tbaa !32
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null
  %38 = or i1 %34, %37
  br i1 %38, label %39, label %30, !llvm.loop !44

39:                                               ; preds = %30
  %40 = zext i1 %34 to i8
  br label %41

41:                                               ; preds = %39, %27, %29
  %42 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %40, %39 ]
  %43 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !tbaa !45
  %44 = icmp ne i8 %42, 0
  %45 = tail call i32 %43(i8* nonnull %8, i32 1, i1 zeroext %44) #5
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 3
  store i32 %45, i32* %46, align 8, !tbaa !33
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 0
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %47) #5
  %48 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #5
  %49 = atomicrmw and i32* %10, i32 -2 seq_cst
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #5
  br label %55

55:                                               ; preds = %41, %54
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #5
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 2
  store i8 0, i8* %56, align 8, !tbaa !12
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 1
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %57) #5
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %47) #5
  %58 = zext i8 %42 to i32
  br label %59

59:                                               ; preds = %18, %55
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %55 ], [ %22, %18 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %55 ], [ %15, %18 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %55 ], [ %23, %18 ]
  %63 = phi i32 [ %58, %55 ], [ %16, %18 ]
  br i1 %21, label %75, label %12, !llvm.loop !46

64:                                               ; preds = %12
  %65 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !tbaa !45
  %66 = tail call i32 %65(i8* nonnull %8, i32 0, i1 zeroext false) #5
  %67 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #5
  %68 = atomicrmw and i32* %10, i32 -2 seq_cst
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  %71 = icmp ult i32 %68, 4
  %72 = or i1 %71, %70
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #5
  br label %74

74:                                               ; preds = %64, %73
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #5
  br label %75

75:                                               ; preds = %59, %74
  %76 = phi i32 [ 0, %74 ], [ %63, %59 ]
  ret i32 %76
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YAIII@Z"(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #7
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !tbaa !26
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %10, %85
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %89, %85 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %85 ]
  %15 = phi i32 [ 16, %10 ], [ %88, %85 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %87, %85 ]
  %17 = phi i32 [ 0, %10 ], [ %86, %85 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !10
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !tbaa !32
  %22 = icmp eq i32 %19, %0
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !tbaa !26
  br i1 %22, label %23, label %85

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !tbaa !42
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !tbaa !42
  br label %27

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15
  br i1 %28, label %29, label %78

29:                                               ; preds = %27
  %30 = shl i32 %15, 3
  %31 = call i8* @malloc(i32 %30) #5
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**
  %33 = icmp eq i32 %15, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = add i32 %15, -1
  %36 = and i32 %15, 3
  %37 = icmp ult i32 %35, 3
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = and i32 %15, -4
  br label %55

40:                                               ; preds = %55, %34
  %41 = phi i32 [ 0, %34 ], [ %73, %55 ]
  %42 = icmp eq i32 %36, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %49, %43 ], [ %41, %40 ]
  %45 = phi i32 [ %50, %43 ], [ %36, %40 ]
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %46, align 4, !tbaa !26
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %44
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %48, align 4, !tbaa !26
  %49 = add nuw i32 %44, 1
  %50 = add i32 %45, -1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %43, !llvm.loop !47

52:                                               ; preds = %40, %43, %29
  %53 = shl i32 %15, 1
  %54 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8
  br i1 %54, label %78, label %76

55:                                               ; preds = %55, %38
  %56 = phi i32 [ 0, %38 ], [ %73, %55 ]
  %57 = phi i32 [ %39, %38 ], [ %74, %55 ]
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %56
  %59 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, align 4, !tbaa !26
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %56
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 4, !tbaa !26
  %61 = or i32 %56, 1
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %61
  %63 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !tbaa !26
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %61
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %63, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %64, align 4, !tbaa !26
  %65 = or i32 %56, 2
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %65
  %67 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %66, align 4, !tbaa !26
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %65
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %67, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %68, align 4, !tbaa !26
  %69 = or i32 %56, 3
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %69
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !tbaa !26
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %69
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 4, !tbaa !26
  %73 = add nuw i32 %56, 4
  %74 = add i32 %57, -4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %40, label %55, !llvm.loop !49

76:                                               ; preds = %52
  %77 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*
  call void @free(i8* %77) #5
  br label %78

78:                                               ; preds = %52, %76, %27
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %76 ], [ %32, %52 ]
  %80 = phi i32 [ %15, %27 ], [ %53, %76 ], [ %53, %52 ]
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3
  store i32 %1, i32* %81, align 8, !tbaa !33
  %82 = add i32 %17, 1
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %79, i32 %17
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %83, align 4, !tbaa !26
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %84) #5
  br label %85

85:                                               ; preds = %12, %78
  %86 = phi i32 [ %82, %78 ], [ %17, %12 ]
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %79, %78 ], [ %16, %12 ]
  %88 = phi i32 [ %80, %78 ], [ %15, %12 ]
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %78 ], [ %14, %12 ]
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null
  br i1 %90, label %91, label %12, !llvm.loop !50

91:                                               ; preds = %85, %2
  %92 = phi i32 [ 0, %2 ], [ %86, %85 ]
  %93 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %87, %85 ]
  %94 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*
  %95 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %94, i32 1) #5
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0
  %97 = atomicrmw and i32* %96, i32 -2 seq_cst
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  %100 = icmp ult i32 %97, 4
  %101 = or i1 %100, %99
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %103) #5
  br label %104

104:                                              ; preds = %91, %102
  call void @__tsan_mutex_post_unlock(i8* nonnull %94, i32 1) #5
  %105 = icmp eq i32 %92, 0
  br i1 %105, label %115, label %107

106:                                              ; preds = %107
  br i1 %105, label %115, label %117

107:                                              ; preds = %104, %107
  %108 = phi i32 [ %113, %107 ], [ 0, %104 ]
  %109 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %108
  %110 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %109, align 4, !tbaa !26
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %110, i32 0, i32 0, i32 2
  store i8 0, i8* %111, align 8, !tbaa !12
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %110, i32 0, i32 0, i32 1
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %112) #5
  %113 = add nuw i32 %108, 1
  %114 = icmp eq i32 %113, %92
  br i1 %114, label %106, label %107, !llvm.loop !51

115:                                              ; preds = %117, %104, %106
  %116 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, %8
  br i1 %116, label %126, label %124

117:                                              ; preds = %106, %117
  %118 = phi i32 [ %122, %117 ], [ 0, %106 ]
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %118
  %120 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %119, align 4, !tbaa !26
  %121 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %120, i32 0, i32 0, i32 0
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %121) #5
  %122 = add nuw i32 %118, 1
  %123 = icmp eq i32 %122, %92
  br i1 %123, label %115, label %117, !llvm.loop !52

124:                                              ; preds = %115
  %125 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93 to i8*
  call void @free(i8* %125) #5
  br label %126

126:                                              ; preds = %124, %115
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6
  ret i32 %92
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #3 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #7
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  store i8 0, i8* %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1
  store i32 0, i32* %9, align 4, !tbaa !36
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !tbaa !37
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #5
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  br label %123

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !27
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !tbaa !26
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
  %32 = load i32, i32* %31, align 4, !tbaa !10
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !tbaa !32
  %35 = icmp eq i32 %32, %0
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !tbaa !26
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !27
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !tbaa !42
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !tbaa !42
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !tbaa !32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ]
  store i32 %1, i32* %31, align 4, !tbaa !10
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ]
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ]
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ]
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null
  br i1 %56, label %86, label %24, !llvm.loop !53

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1
  %64 = load i32, i32* %63, align 4, !tbaa !10
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !tbaa !32
  %67 = icmp eq i32 %64, %0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !tbaa !26
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !tbaa !27
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !tbaa !42
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !tbaa !42
  br label %74

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !tbaa !32
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ]
  store i32 %1, i32* %63, align 4, !tbaa !10
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ]
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ]
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ]
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ]
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null
  br i1 %85, label %86, label %57, !llvm.loop !53

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ]
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ]
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ]
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !tbaa !32
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !tbaa !29
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !tbaa !39
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !tbaa !42
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !tbaa !26
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !tbaa !42
  br label %105

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !tbaa !54
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #5
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3
  store i32 %3, i32* %112, align 8, !tbaa !33
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %113) #5
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2
  store i8 0, i8* %114, align 8, !tbaa !12
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %115) #5
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %113) #5
  br label %117

116:                                              ; preds = %105
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #7
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i8, i8* %8, align 4
  %119 = and i8 %118, 1
  %120 = icmp ne i8 %119, 0
  %121 = and i1 %110, %120
  %122 = zext i1 %121 to i32
  br label %123

123:                                              ; preds = %117, %14
  %124 = phi i32 [ %122, %117 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  ret i32 %124
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !55
  %6 = load i32, i32* %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 3
  ret i1 %7
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  %4 = select i1 %2, i32 2, i32 0
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !55
  store i32 %4, i32* %7, align 4, !tbaa !10
  fence seq_cst
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !57
  store i32 0, i32* %7, align 4, !tbaa !10
  br label %8

8:                                                ; preds = %4, %3
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !59
  %6 = load i32, i32* %5, align 4, !tbaa !10
  %7 = getelementptr inbounds i8, i8* %0, i32 20
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !tbaa !61
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4, !tbaa !10
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !10
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
  store i8 %25, i8* %26, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %2, %24
  ret i1 %11
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #4 {
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0
  %6 = load i8, i8* %5, align 4, !tbaa !34, !range !21
  %7 = icmp ne i8 %6, 0
  %8 = and i1 %7, %3
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !tbaa !61
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0
  %14 = atomicrmw or i32* %13, i32 2 seq_cst
  br label %15

15:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i32 16
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 4, !tbaa !62
  %6 = load i32, i32* %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds i8, i8* %0, i32 20
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !tbaa !64
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
  store i32 %11, i32* %17, align 4, !tbaa !10
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ]
  ret i1 %19
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %3 = getelementptr inbounds i8, i8* %0, i32 20
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !tbaa !64
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %15, align 4, !tbaa !43
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !tbaa !54
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  store i32* %6, i32** %18, align 4, !tbaa !55
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !tbaa !37
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %16, align 4, !tbaa !45
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32
  %21 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %19) #5
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #6
  br label %22

22:                                               ; preds = %1, %9, %12
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #4 {
  br i1 %2, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i8, i8* %0, i32 16
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 4, !tbaa !62
  store i32 0, i32* %7, align 4, !tbaa !10
  br label %8

8:                                                ; preds = %4, %3
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !tbaa !10
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i32
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
  %34 = load i32, i32* %3, align 4, !tbaa !10
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %10, align 4, !tbaa !43
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !tbaa !54
  store i32* %3, i32** %13, align 4, !tbaa !55
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !tbaa !37
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %11, align 4, !tbaa !45
  %45 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #5
  %46 = icmp eq i32 %45, %15
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4, !tbaa !10
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
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #3 {
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
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !tbaa !54
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  store i32* %3, i32** %15, align 4, !tbaa !55
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !tbaa !37
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !tbaa !45
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %17 = ptrtoint %struct.halide_mutex* %0 to i32
  %18 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #5
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #6
  br label %19

19:                                               ; preds = %1, %6, %9
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  %3 = bitcast %struct.halide_cond* %0 to i8*
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #5
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #5
  br label %20

8:                                                ; preds = %1
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #6
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2
  store i32 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !tbaa !45
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1
  store i32* %4, i32** %15, align 4, !tbaa !59
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !tbaa !61
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !tbaa !37
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !tbaa !54
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0
  %18 = ptrtoint %struct.halide_cond* %0 to i32
  %19 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %18, i32 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17, i32 0) #5
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #6
  br label %20

20:                                               ; preds = %7, %8
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #3 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  %3 = bitcast %struct.halide_cond* %0 to i8*
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #5
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #5
  br label %20

8:                                                ; preds = %1
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #6
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !tbaa !37
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !tbaa !54
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1
  store i32* %4, i32** %15, align 4, !tbaa !57
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !tbaa !65
  store i32 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !tbaa !45
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0
  %18 = ptrtoint %struct.halide_cond* %0 to i32
  %19 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %18, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #5
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #6
  br label %20

20:                                               ; preds = %7, %8
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #3 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !tbaa !54
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1
  store i32* %6, i32** %11, align 4, !tbaa !62
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !tbaa !64
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !tbaa !37
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %8, align 4, !tbaa !43
  store i32 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %9, align 4, !tbaa !45
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0
  %15 = ptrtoint %struct.halide_cond* %0 to i32
  %16 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #5
  %17 = ptrtoint %struct.halide_mutex* %1 to i32
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %69, label %19

19:                                               ; preds = %2
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0
  %21 = cmpxchg i32* %20, i32 0, i32 1 seq_cst seq_cst
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %77, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %20, align 4, !tbaa !10
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
  %41 = cmpxchg i32* %20, i32 %36, i32 %40 seq_cst seq_cst
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %77, label %35

44:                                               ; preds = %35
  %45 = icmp sgt i32 %34, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = icmp eq i32 %34, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1
  call void @halide_thread_yield() #5
  %50 = load i32, i32* %20, align 4, !tbaa !10
  br label %65

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  %53 = and i32 %36, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = or i32 %36, 2
  %57 = cmpxchg i32* %20, i32 %36, i32 %56 seq_cst seq_cst
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = icmp eq i32 %36, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #6
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %27, align 4, !tbaa !43
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !tbaa !54
  store i32* %20, i32** %30, align 4, !tbaa !55
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !tbaa !37
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %28, align 4, !tbaa !45
  %61 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #5
  %62 = icmp eq i32 %61, %17
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %20, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #6
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #6
  br label %77

69:                                               ; preds = %2
  %70 = bitcast %struct.halide_mutex* %1 to i8*
  call void @__tsan_mutex_pre_lock(i8* %70, i32 1) #5
  %71 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0
  %72 = load i32, i32* %71, align 4, !tbaa !10
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #5
  call void @abort() #5
  br label %76

76:                                               ; preds = %75, %69
  call void @__tsan_mutex_post_lock(i8* nonnull %70, i32 1, i32 1) #5
  br label %77

77:                                               ; preds = %39, %19, %68, %76
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 {
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #5
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = shl i32 %0, 2
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #5
  %8 = bitcast i8* %2 to i8**
  store i8* %7, i8** %8, align 4, !tbaa !66
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

declare dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to i8**
  %4 = load i8*, i8** %3, align 4, !tbaa !66
  tail call void @halide_free(i8* %0, i8* %4) #5
  tail call void @halide_free(i8* %0, i8* %1) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #7
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
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i32 0, i32 0)) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i32 0, i32 0)) #5
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
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %388, %1
  %11 = phi i32 [ 0, %1 ], [ %389, %388 ]
  br i1 %3, label %15, label %12

12:                                               ; preds = %10
  %13 = load i32, i32* %4, align 4, !tbaa !68
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %21

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !tbaa !71, !range !21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %50, label %403

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !tbaa !75
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %403, label %21

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  %23 = load i32, i32* %5, align 4, !tbaa !77
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0
  br i1 %29, label %37, label %30

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !tbaa !78
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0
  br i1 %34, label %35, label %30, !llvm.loop !79

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %28 ], [ %36, %35 ]
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %39, %"struct.Halide::Runtime::Internal::work"** %38, align 4, !tbaa !26
  store i32 0, i32* %4, align 4, !tbaa !68
  br label %388

40:                                               ; preds = %21
  %41 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !tbaa !80
  %42 = icmp eq %"struct.Halide::Runtime::Internal::work"* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %41, i32 0, i32 9
  %45 = load i32, i32* %44, align 4, !tbaa !77
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 %45, i32* %5, align 4, !tbaa !77
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #7
  br label %388

48:                                               ; preds = %25, %43, %40
  %49 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null
  br i1 %49, label %190, label %53

50:                                               ; preds = %15
  %51 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  %52 = icmp eq %"struct.Halide::Runtime::Internal::work"* %51, null
  br i1 %52, label %200, label %54

53:                                               ; preds = %48
  br i1 %3, label %54, label %119

54:                                               ; preds = %50, %53
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %51, %50 ], [ %22, %53 ]
  br label %56

56:                                               ; preds = %54, %115
  %57 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %115 ], [ %55, %54 ]
  %58 = phi %"struct.Halide::Runtime::Internal::work"** [ %116, %115 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %54 ]
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 5
  %60 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %59, align 4, !tbaa !80
  %61 = icmp eq %"struct.Halide::Runtime::Internal::work"* %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 8
  %64 = load i32, i32* %63, align 4, !tbaa !75
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 0, i32 7
  %67 = load i32, i32* %66, align 4, !tbaa !81
  br i1 %65, label %71, label %68

68:                                               ; preds = %62
  %69 = mul nsw i32 %67, %64
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6
  br label %76

71:                                               ; preds = %62
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6
  br label %76

73:                                               ; preds = %56
  %74 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %75 = add nsw i32 %74, 1
  br label %76

76:                                               ; preds = %73, %71, %68
  %77 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %73 ], [ %72, %71 ], [ %70, %68 ]
  %78 = phi i32 [ %75, %73 ], [ %67, %71 ], [ %69, %68 ]
  %79 = load i32, i32* %77, align 4, !tbaa !10
  %80 = sub i32 %78, %79
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 7
  %82 = load i32, i32* %81, align 4, !tbaa !81
  %83 = icmp sge i32 %80, %82
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 8
  %85 = load i8, i8* %84, align 4, !tbaa !83, !range !21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 8
  %89 = load i32, i32* %88, align 4, !tbaa !75
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %87, %76
  %92 = phi i1 [ true, %76 ], [ %90, %87 ]
  %93 = and i1 %92, %83
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 10
  %96 = load i32, i32* %95, align 4, !tbaa !84
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 4
  %98 = load i32, i32* %97, align 4, !tbaa !85
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %219

100:                                              ; preds = %94
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 3
  br label %102

102:                                              ; preds = %110, %100
  %103 = phi i32 [ %96, %100 ], [ %112, %110 ]
  %104 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %101, align 4, !tbaa !86
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 1
  %106 = load i32, i32* %105, align 4, !tbaa !87
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 0
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 4, !tbaa !89
  %109 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %106) #5
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i32, i32* %95, align 4, !tbaa !84
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %95, align 4, !tbaa !84
  %113 = load i32, i32* %97, align 4, !tbaa !85
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %102, label %219, !llvm.loop !90

115:                                              ; preds = %102, %91
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 2
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %116, align 4, !tbaa !78
  %118 = icmp eq %"struct.Halide::Runtime::Internal::work"* %117, null
  br i1 %118, label %190, label %56

119:                                              ; preds = %53, %186
  %120 = phi %"struct.Halide::Runtime::Internal::work"* [ %188, %186 ], [ %22, %53 ]
  %121 = phi %"struct.Halide::Runtime::Internal::work"** [ %187, %186 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %53 ]
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 5
  %123 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %122, align 4, !tbaa !80
  %124 = icmp eq %"struct.Halide::Runtime::Internal::work"* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %127 = add nsw i32 %126, 1
  br label %139

128:                                              ; preds = %119
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 8
  %130 = load i32, i32* %129, align 4, !tbaa !75
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 0, i32 7
  %133 = load i32, i32* %132, align 4, !tbaa !81
  br i1 %131, label %134, label %136

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6
  br label %139

136:                                              ; preds = %128
  %137 = mul nsw i32 %133, %130
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6
  br label %139

139:                                              ; preds = %134, %136, %125
  %140 = phi i32* [ %135, %134 ], [ %138, %136 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %125 ]
  %141 = phi i32 [ %133, %134 ], [ %137, %136 ], [ %127, %125 ]
  %142 = load i32, i32* %140, align 4, !tbaa !10
  %143 = sub i32 %141, %142
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 7
  %145 = load i32, i32* %144, align 4, !tbaa !81
  %146 = icmp slt i32 %143, %145
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 3
  %148 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %147, align 4, !tbaa !91
  %149 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !tbaa !91
  %150 = icmp ne %"struct.Halide::Runtime::Internal::work"* %148, %149
  %151 = icmp ne i32 %145, 0
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 8
  %153 = load i8, i8* %152, align 4, !tbaa !83, !range !21
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %139
  %156 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 8
  %157 = load i32, i32* %156, align 4, !tbaa !75
  %158 = icmp eq i32 %157, 0
  br label %159

159:                                              ; preds = %155, %139
  %160 = phi i1 [ true, %139 ], [ %158, %155 ]
  %161 = and i1 %151, %150
  %162 = or i1 %146, %161
  %163 = xor i1 %160, true
  %164 = or i1 %162, %163
  br i1 %164, label %186, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 10
  %167 = load i32, i32* %166, align 4, !tbaa !84
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 4
  %169 = load i32, i32* %168, align 4, !tbaa !85
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %219

171:                                              ; preds = %165
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 3
  br label %173

173:                                              ; preds = %181, %171
  %174 = phi i32 [ %167, %171 ], [ %183, %181 ]
  %175 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %172, align 4, !tbaa !86
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 1
  %177 = load i32, i32* %176, align 4, !tbaa !87
  %178 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 0
  %179 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %178, align 4, !tbaa !89
  %180 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %179, i32 %177) #5
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load i32, i32* %166, align 4, !tbaa !84
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %166, align 4, !tbaa !84
  %184 = load i32, i32* %168, align 4, !tbaa !85
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %173, label %219, !llvm.loop !90

186:                                              ; preds = %173, %159
  %187 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 2
  %188 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %187, align 4, !tbaa !78
  %189 = icmp eq %"struct.Halide::Runtime::Internal::work"* %188, null
  br i1 %189, label %190, label %119

190:                                              ; preds = %186, %115, %48
  br i1 %3, label %200, label %191

191:                                              ; preds = %190
  %192 = add nsw i32 %11, 1
  %193 = icmp slt i32 %11, 40
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  br label %388

195:                                              ; preds = %191
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !tbaa !92
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !tbaa !92
  store i8 1, i8* %8, align 4, !tbaa !93
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  store i8 0, i8* %8, align 4, !tbaa !93
  %198 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !tbaa !92
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !tbaa !92
  br label %388

200:                                              ; preds = %50, %190
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !tbaa !94
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !tbaa !94
  %203 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !tbaa !96
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = add nsw i32 %203, -1
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %208 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  br label %215

210:                                              ; preds = %200
  %211 = add nsw i32 %11, 1
  %212 = icmp slt i32 %11, 40
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  tail call void @halide_thread_yield() #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  br label %215

214:                                              ; preds = %210
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  br label %215

215:                                              ; preds = %213, %214, %206
  %216 = phi i32 [ %11, %206 ], [ %211, %213 ], [ %211, %214 ]
  %217 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !tbaa !94
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !tbaa !94
  br label %388

219:                                              ; preds = %165, %94, %181, %110
  %220 = phi i32* [ %95, %110 ], [ %166, %181 ], [ %95, %94 ], [ %166, %165 ]
  %221 = phi %"struct.Halide::Runtime::Internal::work"** [ %58, %110 ], [ %121, %181 ], [ %58, %94 ], [ %121, %165 ]
  %222 = phi %"struct.Halide::Runtime::Internal::work"* [ %57, %110 ], [ %120, %181 ], [ %57, %94 ], [ %120, %165 ]
  store i32 0, i32* %220, align 4, !tbaa !84
  %223 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4, !tbaa !75
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4, !tbaa !75
  %226 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 5
  %227 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !tbaa !80
  %228 = icmp eq %"struct.Halide::Runtime::Internal::work"* %227, null
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7
  %230 = load i32, i32* %229, align 4, !tbaa !81
  %231 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %227, i32 0, i32 6
  %232 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231
  %233 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231
  %234 = load i32, i32* %232, align 4, !tbaa !10
  %235 = add nsw i32 %234, %230
  store i32 %235, i32* %233, align 4, !tbaa !10
  %236 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 8
  %237 = load i8, i8* %236, align 4, !tbaa !83, !range !21
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %313, label %239

239:                                              ; preds = %219
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2
  %241 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %241, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !tbaa !26
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 10
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 4
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 3
  %246 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1
  %248 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0
  %250 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7
  br label %251

251:                                              ; preds = %239, %290
  %252 = phi i32 [ 1, %239 ], [ 0, %290 ]
  %253 = phi i32 [ 0, %239 ], [ %298, %290 ]
  %254 = load i32, i32* %242, align 4, !tbaa !68
  %255 = sub nsw i32 %254, %253
  %256 = icmp sgt i32 %255, %252
  br i1 %256, label %257, label %287

257:                                              ; preds = %251
  %258 = load i32, i32* %243, align 4, !tbaa !84
  %259 = load i32, i32* %244, align 4, !tbaa !85
  br label %260

260:                                              ; preds = %257, %281
  %261 = phi i32 [ %282, %281 ], [ %254, %257 ]
  %262 = phi i32 [ %283, %281 ], [ %259, %257 ]
  %263 = phi i32 [ 0, %281 ], [ %258, %257 ]
  %264 = phi i32 [ %284, %281 ], [ %252, %257 ]
  %265 = icmp slt i32 %263, %262
  br i1 %265, label %266, label %281

266:                                              ; preds = %260, %274
  %267 = phi i32 [ %276, %274 ], [ %263, %260 ]
  %268 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %245, align 4, !tbaa !86
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 1
  %270 = load i32, i32* %269, align 4, !tbaa !87
  %271 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 0
  %272 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %271, align 4, !tbaa !89
  %273 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %272, i32 %270) #5
  br i1 %273, label %274, label %287

274:                                              ; preds = %266
  %275 = load i32, i32* %243, align 4, !tbaa !84
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %243, align 4, !tbaa !84
  %277 = load i32, i32* %244, align 4, !tbaa !85
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %266, label %279, !llvm.loop !90

279:                                              ; preds = %274
  %280 = load i32, i32* %242, align 4, !tbaa !68
  br label %281

281:                                              ; preds = %279, %260
  %282 = phi i32 [ %280, %279 ], [ %261, %260 ]
  %283 = phi i32 [ %277, %279 ], [ %262, %260 ]
  store i32 0, i32* %243, align 4, !tbaa !84
  %284 = add nuw nsw i32 %264, 1
  %285 = sub nsw i32 %282, %253
  %286 = icmp sgt i32 %285, %284
  br i1 %286, label %260, label %290, !llvm.loop !97

287:                                              ; preds = %266, %251
  %288 = phi i32 [ %252, %251 ], [ %264, %266 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %281, %287
  %291 = phi i32 [ %288, %287 ], [ %284, %281 ]
  %292 = load i8*, i8** %247, align 4, !tbaa !98
  %293 = load i32, i32* %248, align 4, !tbaa !99
  %294 = add nsw i32 %293, %253
  %295 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %249, align 4, !tbaa !100
  %296 = load i8*, i8** %250, align 4, !tbaa !101
  %297 = tail call i32 @halide_do_loop_task(i8* %296, i32 (i8*, i32, i32, i8*, i8*)* %295, i32 %294, i32 %291, i8* %292, i8* nonnull %246) #7
  %298 = add nuw nsw i32 %291, %253
  %299 = icmp eq i32 %297, 0
  br i1 %299, label %251, label %300, !llvm.loop !102

300:                                              ; preds = %287, %290
  %301 = phi i1 [ true, %287 ], [ false, %290 ]
  %302 = phi i32 [ 0, %287 ], [ %297, %290 ]
  %303 = phi i32 [ %253, %287 ], [ %298, %290 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %304 = load i32, i32* %248, align 4, !tbaa !99
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %248, align 4, !tbaa !99
  %306 = load i32, i32* %242, align 4, !tbaa !68
  %307 = sub nsw i32 %306, %303
  store i32 %307, i32* %242, align 4, !tbaa !68
  br i1 %301, label %309, label %308

308:                                              ; preds = %300
  store i32 0, i32* %242, align 4, !tbaa !68
  br label %342

309:                                              ; preds = %300
  %310 = icmp sgt i32 %307, 0
  br i1 %310, label %311, label %371

311:                                              ; preds = %309
  %312 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  store %"struct.Halide::Runtime::Internal::work"* %312, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %222, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  br label %371

313:                                              ; preds = %219
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0
  %315 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %314, align 4, !tbaa.struct !103
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1
  %317 = load i8*, i8** %316, align 4, !tbaa.struct !105
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 1
  %321 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %320, align 4, !tbaa.struct !106
  %322 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7
  %323 = load i8*, i8** %322, align 4, !tbaa.struct !107
  %324 = add nsw i32 %319, 1
  store i32 %324, i32* %318, align 4, !tbaa !99
  %325 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6
  %326 = load i32, i32* %325, align 4, !tbaa !68
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %325, align 4, !tbaa !68
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %313
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2
  %331 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %330, align 4, !tbaa !78
  store %"struct.Halide::Runtime::Internal::work"* %331, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !tbaa !26
  br label %332

332:                                              ; preds = %329, %313
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %333 = icmp eq i32 (i8*, i32, i8*)* %321, null
  br i1 %333, label %336, label %334

334:                                              ; preds = %332
  %335 = tail call i32 @halide_do_task(i8* %323, i32 (i8*, i32, i8*)* nonnull %321, i32 %319, i8* %317) #7
  br label %339

336:                                              ; preds = %332
  %337 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*
  %338 = tail call i32 @halide_do_loop_task(i8* %323, i32 (i8*, i32, i32, i8*, i8*)* %315, i32 %319, i32 1, i8* %317, i8* %337) #7
  br label %339

339:                                              ; preds = %334, %336
  %340 = phi i32 [ %335, %334 ], [ %338, %336 ]
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %371, label %342

342:                                              ; preds = %308, %339
  %343 = phi i32 [ %302, %308 ], [ %340, %339 ]
  %344 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9
  store i32 %343, i32* %344, align 4, !tbaa !77
  %345 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 4
  %346 = load i32, i32* %345, align 4, !tbaa !108
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %371

348:                                              ; preds = %342
  %349 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 3
  %350 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %349, align 4, !tbaa !91
  br label %351

351:                                              ; preds = %348, %367
  %352 = phi i32 [ 0, %348 ], [ %369, %367 ]
  %353 = phi i8 [ 0, %348 ], [ %368, %367 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 9
  %355 = load i32, i32* %354, align 4, !tbaa !77
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %367

357:                                              ; preds = %351
  store i32 %343, i32* %354, align 4, !tbaa !77
  %358 = load i32, i32* %223, align 4, !tbaa !75
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 11
  %362 = load i8, i8* %361, align 4, !tbaa !93, !range !21
  br label %363

363:                                              ; preds = %360, %357
  %364 = phi i8 [ 0, %357 ], [ %362, %360 ]
  %365 = and i8 %353, 1
  %366 = or i8 %364, %365
  br label %367

367:                                              ; preds = %351, %363
  %368 = phi i8 [ %366, %363 ], [ %353, %351 ]
  %369 = add nuw nsw i32 %352, 1
  %370 = icmp eq i32 %369, %346
  br i1 %370, label %371, label %351, !llvm.loop !109

371:                                              ; preds = %367, %342, %311, %309, %339
  %372 = phi i8 [ 0, %339 ], [ 0, %309 ], [ 0, %311 ], [ 0, %342 ], [ %368, %367 ]
  %373 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !tbaa !80
  %374 = icmp eq %"struct.Halide::Runtime::Internal::work"* %373, null
  %375 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7
  %376 = load i32, i32* %375, align 4, !tbaa !81
  %377 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %373, i32 0, i32 6
  %378 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377
  %379 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377
  %380 = load i32, i32* %378, align 4, !tbaa !10
  %381 = sub nsw i32 %380, %376
  store i32 %381, i32* %379, align 4, !tbaa !10
  %382 = load i32, i32* %223, align 4, !tbaa !75
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %223, align 4, !tbaa !75
  %384 = and i8 %372, 1
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %402

386:                                              ; preds = %371
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %386, %394, %398, %402, %215, %195, %194, %47, %37
  %389 = phi i32 [ %11, %37 ], [ %11, %47 ], [ %192, %194 ], [ %192, %195 ], [ %216, %215 ], [ 0, %402 ], [ 0, %398 ], [ 0, %394 ], [ 0, %386 ]
  br label %10, !llvm.loop !110

390:                                              ; preds = %386
  %391 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6
  %392 = load i32, i32* %391, align 4, !tbaa !68
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9
  %396 = load i32, i32* %395, align 4, !tbaa !77
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %388, label %398

398:                                              ; preds = %394, %390
  %399 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 11
  %400 = load i8, i8* %399, align 4, !tbaa !93, !range !21
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %388, label %402

402:                                              ; preds = %398, %371
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #7
  br label %388

403:                                              ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 {
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !tbaa !26
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #5
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !tbaa !26
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 {
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !tbaa !111, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), %3 ]
  %8 = load i8, i8* %7, align 1, !tbaa !112
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*)
  br i1 %12, label %13, label %6, !llvm.loop !113

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ]
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %17

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #7
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #7
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !tbaa !111
  br label %25

25:                                               ; preds = %22, %3
  %26 = icmp sgt i32 %0, 0
  br i1 %26, label %36, label %29

27:                                               ; preds = %62
  %28 = and i8 %47, 1
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ -1, %25 ], [ %63, %27 ]
  %31 = phi i8 [ 0, %25 ], [ %28, %27 ]
  %32 = phi i8 [ 0, %25 ], [ %52, %27 ]
  %33 = phi i8 [ 0, %25 ], [ %48, %27 ]
  %34 = phi i32 [ 0, %25 ], [ %46, %27 ]
  %35 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null
  br i1 %35, label %66, label %97

36:                                               ; preds = %25, %62
  %37 = phi i32 [ %46, %62 ], [ 0, %25 ]
  %38 = phi i32 [ %64, %62 ], [ 0, %25 ]
  %39 = phi i8 [ %48, %62 ], [ 0, %25 ]
  %40 = phi i8 [ %52, %62 ], [ 0, %25 ]
  %41 = phi i8 [ %47, %62 ], [ 0, %25 ]
  %42 = phi i32 [ %63, %62 ], [ -1, %25 ]
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 7
  %44 = load i32, i32* %43, align 4, !tbaa !81
  %45 = icmp eq i32 %44, 0
  %46 = add i32 %44, %37
  %47 = select i1 %45, i8 1, i8 %41
  %48 = select i1 %45, i8 %39, i8 1
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 4
  %50 = load i32, i32* %49, align 4, !tbaa !85
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i8 %40, i8 1
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 8
  %54 = load i8, i8* %53, align 4, !tbaa !83, !range !21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %36
  %57 = add nsw i32 %42, 1
  br label %62

58:                                               ; preds = %36
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 6
  %60 = load i32, i32* %59, align 4, !tbaa !68
  %61 = add nsw i32 %60, %42
  br label %62

62:                                               ; preds = %56, %58
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  %64 = add nuw nsw i32 %38, 1
  %65 = icmp eq i32 %64, %0
  br i1 %65, label %27, label %36, !llvm.loop !115

66:                                               ; preds = %29
  %67 = or i8 %33, %32
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = add nsw i32 %34, %71
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %93

75:                                               ; preds = %66, %85
  %76 = phi i32 [ %90, %85 ], [ %73, %66 ]
  %77 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  %78 = add nsw i32 %77, -1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = add nsw i32 %76, 1
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !tbaa !116
  %83 = sub i32 %81, %82
  %84 = icmp slt i32 %83, %72
  br i1 %84, label %85, label %93

85:                                               ; preds = %75, %80
  %86 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  %88 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z", i8* null) #7
  %89 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %89
  store %struct.halide_thread* %88, %struct.halide_thread** %91, align 4, !tbaa !26
  %92 = icmp slt i32 %89, 255
  br i1 %92, label %75, label %93, !llvm.loop !117

93:                                               ; preds = %80, %85, %66
  br i1 %69, label %115, label %94

94:                                               ; preds = %93
  %95 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !tbaa !116
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !tbaa !116
  br label %115

97:                                               ; preds = %29
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7
  %99 = load i32, i32* %98, align 4, !tbaa !81
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8
  %101 = load i32, i32* %100, align 4, !tbaa !75
  %102 = mul nsw i32 %101, %99
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6
  %104 = load i32, i32* %103, align 4, !tbaa !118
  %105 = sub nsw i32 %102, %104
  %106 = icmp sgt i32 %34, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #5
  tail call void @abort() #5
  br label %108

108:                                              ; preds = %107, %97
  %109 = or i8 %33, %32
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %103, align 4, !tbaa !118
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %103, align 4, !tbaa !118
  br label %115

115:                                              ; preds = %108, %93, %112, %94
  br i1 %26, label %116, label %119

116:                                              ; preds = %115
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  br label %132

118:                                              ; preds = %132
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !76
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !tbaa !92
  %121 = icmp ne i32 %120, 0
  %122 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4
  %124 = icmp slt i32 %122, %123
  %125 = or i1 %121, %124
  %126 = icmp sgt i32 %30, %122
  %127 = or i1 %126, %125
  %128 = select i1 %127, i32 %123, i32 %30
  store i32 %128, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !tbaa !96
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #7
  %129 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !tbaa !96
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !tbaa !95
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %142, label %145

132:                                              ; preds = %116, %132
  %133 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %116 ], [ %136, %132 ]
  %134 = phi i32 [ %0, %116 ], [ %135, %132 ]
  %135 = add nsw i32 %134, -1
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 2
  store %"struct.Halide::Runtime::Internal::work"* %133, %"struct.Halide::Runtime::Internal::work"** %137, align 4, !tbaa !78
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %138, align 4, !tbaa !91
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 4
  store i32 %0, i32* %139, align 4, !tbaa !108
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 6
  store i32 0, i32* %140, align 4, !tbaa !118
  %141 = icmp sgt i32 %134, 1
  br i1 %141, label %132, label %118, !llvm.loop !119

142:                                              ; preds = %119
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #7
  %143 = icmp eq i8 %31, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %142
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #7
  br label %145

145:                                              ; preds = %142, %144, %119
  %146 = or i8 %33, %32
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6
  %151 = select i1 %35, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %150
  %152 = load i32, i32* %151, align 4, !tbaa !10
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4, !tbaa !10
  br label %154

154:                                              ; preds = %149, %145
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
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5
  store i32 %2, i32* %11, align 4, !tbaa !99
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6
  store i32 %3, i32* %12, align 4, !tbaa !68
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8
  store i8 0, i8* %13, align 4, !tbaa !83
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !tbaa !86
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4
  store i32 0, i32* %15, align 4, !tbaa !85
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1
  store i8* %4, i8** %16, align 4, !tbaa !98
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !81
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2
  store i8* null, i8** %18, align 4, !tbaa !120
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !tbaa !121
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7
  store i8* %0, i8** %20, align 4, !tbaa !101
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9
  store i32 0, i32* %21, align 4, !tbaa !77
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8
  store i32 0, i32* %22, align 4, !tbaa !75
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10
  store i32 0, i32* %23, align 4, !tbaa !84
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11
  store i8 0, i8* %24, align 4, !tbaa !93
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !tbaa !91
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4
  store i32 0, i32* %26, align 4, !tbaa !108
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !tbaa !80
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #7
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %28 = load i32, i32* %21, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #6
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 {
  %5 = mul i32 %1, 80
  %6 = alloca i8, i32 %5, align 16
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %35, %34 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %54, label %39

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %36, %34 ], [ %2, %4 ]
  %15 = phi i32 [ %35, %34 ], [ %1, %4 ]
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 0, i32 6
  %17 = load i32, i32* %16, align 4, !tbaa !122
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i32 %15, -1
  br label %34

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*
  %25 = bitcast %struct.halide_parallel_task_t* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 16 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !tbaa.struct !123
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !tbaa !121
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7
  store i8* %0, i8** %27, align 4, !tbaa !101
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9
  store i32 0, i32* %28, align 4, !tbaa !77
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8
  store i32 0, i32* %29, align 16, !tbaa !75
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10
  store i32 0, i32* %30, align 8, !tbaa !84
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11
  store i8 0, i8* %31, align 4, !tbaa !93
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**
  store i8* %3, i8** %33, align 4, !tbaa !80
  br label %34

34:                                               ; preds = %21, %19
  %35 = phi i32 [ %20, %19 ], [ %15, %21 ]
  %36 = phi %struct.halide_parallel_task_t* [ %14, %19 ], [ %22, %21 ]
  %37 = add nuw nsw i32 %13, 1
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %12, label %9, !llvm.loop !124

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #7
  %41 = icmp sgt i32 %10, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #7
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9
  %49 = load i32, i32* %48, align 4, !tbaa !77
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %46, i32 %49
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %52, %10
  br i1 %53, label %42, label %44, !llvm.loop !125

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ]
  ret i32 %55
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #4 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  store i32 %1, i32* %3, align 4, !tbaa !10
  fence seq_cst
  ret i32 %1
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*
  fence seq_cst
  %6 = load i32, i32* %5, align 4, !tbaa !10
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
  br i1 %14, label %15, label %7, !llvm.loop !126

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ]
  ret i1 %16
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 {
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
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
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !tbaa !111, !range !21
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !tbaa !71
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #7
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 0, i32 1072) #5
  br label %15

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %9
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !tbaa !26
  tail call void @halide_join_thread(%struct.halide_thread* %11) #7
  %12 = add nuw nsw i32 %9, 1
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !tbaa !82
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %8, label %6, !llvm.loop !127

15:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i32 0, i32 0)) #5
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  br label %8

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #7
  br label %8

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #7
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !tbaa !114
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #7
  ret i32 %10
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !tbaa !26
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !tbaa !26
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !tbaa !26
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !tbaa !26
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #4 {
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !tbaa !26
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !tbaa !26
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #4 {
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !tbaa !26
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !tbaa !26
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !tbaa !26
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !tbaa !26
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 {
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !tbaa !26
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #5
  ret i32 %7
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 {
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !tbaa !26
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #5
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !tbaa !26
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #5
  ret i1 %4
}

declare dso_local x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64*) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #2

declare dso_local x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64*) local_unnamed_addr #2

declare dso_local void @__tsan_mutex_pre_lock(i8*, i32) local_unnamed_addr #2

declare dso_local void @__tsan_mutex_post_lock(i8*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @__tsan_mutex_pre_unlock(i8*, i32) local_unnamed_addr #2

declare dso_local void @__tsan_mutex_post_unlock(i8*, i32) local_unnamed_addr #2

declare dso_local void @__tsan_mutex_pre_signal(i8*, i32) local_unnamed_addr #2

declare dso_local void @__tsan_mutex_post_signal(i8*, i32) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !5, i64 0}
!4 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !5, i64 0, !5, i64 4, !5, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!4, !5, i64 4}
!9 = !{!4, !5, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !16, i64 48}
!13 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !14, i64 0, !15, i64 40, !16, i64 48}
!14 = !{!"?AUCriticalSection@@", !6, i64 0}
!15 = !{!"long long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!18, !5, i64 56}
!18 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !13, i64 0, !5, i64 56, !5, i64 60, !5, i64 64}
!19 = !{!18, !5, i64 60}
!20 = !{!18, !5, i64 64}
!21 = !{i8 0, i8 2}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!5, !5, i64 0}
!27 = !{!28, !5, i64 0}
!28 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !5, i64 0, !5, i64 4}
!29 = !{!28, !5, i64 4}
!30 = !{!31, !11, i64 56}
!31 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !13, i64 0, !11, i64 56, !5, i64 60, !11, i64 64}
!32 = !{!31, !5, i64 60}
!33 = !{!31, !11, i64 64}
!34 = !{!35, !16, i64 0}
!35 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !16, i64 0, !11, i64 4}
!36 = !{!35, !11, i64 4}
!37 = !{!38, !5, i64 0}
!38 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!39 = !{!40, !5, i64 4}
!40 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !41, i64 0, !5, i64 4, !5, i64 8}
!41 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !11, i64 0}
!42 = !{!40, !5, i64 8}
!43 = !{!38, !5, i64 4}
!44 = distinct !{!44, !23}
!45 = !{!38, !5, i64 8}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = !{!38, !5, i64 12}
!55 = !{!56, !5, i64 16}
!56 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !5, i64 16}
!57 = !{!58, !5, i64 16}
!58 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !5, i64 16, !5, i64 20}
!59 = !{!60, !5, i64 16}
!60 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !5, i64 16, !5, i64 20}
!61 = !{!60, !5, i64 20}
!62 = !{!63, !5, i64 16}
!63 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !5, i64 16, !5, i64 20}
!64 = !{!63, !5, i64 20}
!65 = !{!58, !5, i64 20}
!66 = !{!67, !5, i64 0}
!67 = !{!"?AUhalide_mutex_array@@", !5, i64 0}
!68 = !{!69, !11, i64 24}
!69 = !{!"?AUwork@Internal@Runtime@Halide@@", !70, i64 0, !5, i64 36, !5, i64 40, !5, i64 44, !11, i64 48, !5, i64 52, !11, i64 56, !5, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !16, i64 76}
!70 = !{!"?AUhalide_parallel_task_t@@", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !16, i64 32}
!71 = !{!72, !16, i64 1072}
!72 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !73, i64 0, !11, i64 4, !11, i64 8, !5, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !74, i64 28, !74, i64 32, !74, i64 36, !11, i64 40, !11, i64 44, !6, i64 48, !16, i64 1072, !16, i64 1073, !11, i64 1076}
!73 = !{!"?AUhalide_mutex@@", !6, i64 0}
!74 = !{!"?AUhalide_cond@@", !6, i64 0}
!75 = !{!69, !11, i64 64}
!76 = !{!72, !5, i64 12}
!77 = !{!69, !11, i64 68}
!78 = !{!69, !5, i64 40}
!79 = distinct !{!79, !23}
!80 = !{!69, !5, i64 52}
!81 = !{!69, !11, i64 28}
!82 = !{!72, !11, i64 16}
!83 = !{!69, !16, i64 32}
!84 = !{!69, !11, i64 72}
!85 = !{!69, !11, i64 16}
!86 = !{!69, !5, i64 12}
!87 = !{!88, !11, i64 4}
!88 = !{!"?AUhalide_semaphore_acquire_t@@", !5, i64 0, !11, i64 4}
!89 = !{!88, !5, i64 0}
!90 = distinct !{!90, !23}
!91 = !{!69, !5, i64 44}
!92 = !{!72, !11, i64 44}
!93 = !{!69, !16, i64 76}
!94 = !{!72, !11, i64 40}
!95 = !{!72, !11, i64 20}
!96 = !{!72, !11, i64 24}
!97 = distinct !{!97, !23}
!98 = !{!69, !5, i64 4}
!99 = !{!69, !11, i64 20}
!100 = !{!69, !5, i64 0}
!101 = !{!69, !5, i64 60}
!102 = distinct !{!102, !23}
!103 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 1, !104, i64 36, i64 4, !26, i64 40, i64 4, !26, i64 44, i64 4, !26, i64 48, i64 4, !10, i64 52, i64 4, !26, i64 56, i64 4, !10, i64 60, i64 4, !26, i64 64, i64 4, !10, i64 68, i64 4, !10, i64 72, i64 4, !10, i64 76, i64 1, !104}
!104 = !{!16, !16, i64 0}
!105 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 1, !104, i64 32, i64 4, !26, i64 36, i64 4, !26, i64 40, i64 4, !26, i64 44, i64 4, !10, i64 48, i64 4, !26, i64 52, i64 4, !10, i64 56, i64 4, !26, i64 60, i64 4, !10, i64 64, i64 4, !10, i64 68, i64 4, !10, i64 72, i64 1, !104}
!106 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !10, i64 16, i64 4, !26, i64 20, i64 4, !10, i64 24, i64 4, !26, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 4, !10, i64 40, i64 1, !104}
!107 = !{i64 0, i64 4, !26, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 1, !104}
!108 = !{!69, !11, i64 48}
!109 = distinct !{!109, !23}
!110 = distinct !{!110, !23}
!111 = !{!72, !16, i64 1073}
!112 = !{!6, !6, i64 0}
!113 = distinct !{!113, !23}
!114 = !{!72, !11, i64 4}
!115 = distinct !{!115, !23}
!116 = !{!72, !11, i64 1076}
!117 = distinct !{!117, !23}
!118 = !{!69, !11, i64 56}
!119 = distinct !{!119, !23}
!120 = !{!69, !5, i64 8}
!121 = !{!69, !5, i64 36}
!122 = !{!70, !11, i64 24}
!123 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 1, !104}
!124 = distinct !{!124, !23}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
