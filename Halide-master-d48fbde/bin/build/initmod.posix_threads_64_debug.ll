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
%"class.Halide::Runtime::Internal::Synchronization::spin_control" = type { i32 }
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
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak dso_local global [24576 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" { %struct.halide_mutex zeroinitializer, i32 0, i32 0, %"struct.Halide::Runtime::Internal::work"* null, i32 0, i32 0, i32 0, [4 x i8] undef, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, i32 0, i32 0, [256 x %struct.halide_thread*] zeroinitializer, i8 0, i8 0, i32 0 }, align 8, !dbg !11
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8, !dbg !121
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8, !dbg !127
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8, !dbg !133
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8, !dbg !139
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8, !dbg !146
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8, !dbg !152
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8, !dbg !158
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 !dbg !389 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !395
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !396
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !396, !tbaa !397
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !403
  %5 = bitcast i8* %4 to i8**, !dbg !403
  %6 = load i8*, i8** %5, align 8, !dbg !403, !tbaa !404
  tail call void %3(i8* %6) #6, !dbg !405
  ret i8* null, !dbg !406
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !407 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8* %1, metadata !412, metadata !DIExpression()), !dbg !414
  %3 = tail call i8* @malloc(i64 24) #6, !dbg !415
  call void @llvm.dbg.value(metadata i8* %3, metadata !413, metadata !DIExpression()), !dbg !414
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !416
  store void (i8*)* %0, void (i8*)** %4, align 8, !dbg !417, !tbaa !397
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !418
  %6 = bitcast i8* %5 to i8**, !dbg !418
  store i8* %1, i8** %6, align 8, !dbg !419, !tbaa !404
  %7 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !420
  %8 = bitcast i8* %7 to i64*, !dbg !420
  store i64 0, i64* %8, align 8, !dbg !421, !tbaa !422
  %9 = tail call i32 @pthread_create(i64* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #6, !dbg !423
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !424
  ret %struct.halide_thread* %10, !dbg !425
}

declare !dbg !426 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !430 dso_local i32 @pthread_create(i64*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !437 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !441, metadata !DIExpression()), !dbg !444
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !445
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %3, metadata !442, metadata !DIExpression()), !dbg !444
  %4 = bitcast i8** %2 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !446
  call void @llvm.dbg.value(metadata i8* null, metadata !443, metadata !DIExpression()), !dbg !444
  store i8* null, i8** %2, align 8, !dbg !447, !tbaa !448
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i64 0, i32 2, !dbg !449
  %6 = load i64, i64* %5, align 8, !dbg !449, !tbaa !422
  call void @llvm.dbg.value(metadata i8** %2, metadata !443, metadata !DIExpression(DW_OP_deref)), !dbg !444
  %7 = call i32 @pthread_join(i64 %6, i8** nonnull %2) #6, !dbg !450
  %8 = bitcast %struct.halide_thread* %0 to i8*, !dbg !451
  call void @free(i8* %8) #6, !dbg !452
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !453
  ret void, !dbg !453
}

declare !dbg !454 dso_local i32 @pthread_join(i64, i8**) local_unnamed_addr #3

declare !dbg !458 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !459 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !461, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32 40, metadata !463, metadata !DIExpression()), !dbg !483
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !484
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !495
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !497
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !498

13:                                               ; preds = %71, %1
  %14 = phi i64 [ %4, %1 ], [ %72, %71 ]
  %15 = phi i32 [ 40, %1 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !463, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i64 %14, metadata !475, metadata !DIExpression()), !dbg !483
  %16 = and i64 %14, 1, !dbg !499
  %17 = icmp eq i64 %16, 0, !dbg !500
  br i1 %17, label %18, label %29, !dbg !501

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !475, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i64 %19, metadata !475, metadata !DIExpression()), !dbg !483
  %20 = or i64 %19, 1, !dbg !502
  call void @llvm.dbg.value(metadata i64 %20, metadata !476, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i64* %3, metadata !504, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()), !dbg !511
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !514
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !514
  br i1 %22, label %74, label %23, !dbg !514

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !514
  call void @llvm.dbg.value(metadata i32 %15, metadata !463, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i64 %24, metadata !475, metadata !DIExpression()), !dbg !483
  %25 = and i64 %24, 1, !dbg !499
  %26 = icmp eq i64 %25, 0, !dbg !500
  br i1 %26, label %18, label %27, !dbg !501

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !514
  br label %29, !dbg !515

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !483
  %31 = icmp ugt i64 %30, 3, !dbg !515
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !517
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !518, metadata !DIExpression()), !dbg !522
  br i1 %33, label %34, label %39, !dbg !517

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !463, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !483
  %35 = icmp sgt i32 %15, 1, !dbg !524
  br i1 %35, label %36, label %39, !dbg !525

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !526
  call void @llvm.dbg.value(metadata i32 %37, metadata !463, metadata !DIExpression()), !dbg !483
  call void @halide_thread_yield() #6, !dbg !529
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !531
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !533
  br label %71, !dbg !534

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %40, metadata !463, metadata !DIExpression()), !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #7, !dbg !535
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !480, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !537, metadata !DIExpression()) #7, !dbg !540
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !542, metadata !DIExpression()) #7, !dbg !546
  store i8 0, i8* %6, align 8, !dbg !548, !tbaa !549
  %41 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !554
  %42 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #6, !dbg !556
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !557, !tbaa !558
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !560, !tbaa !561
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !562, !tbaa !563
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !564, metadata !DIExpression()), !dbg !567
  store i8 1, i8* %6, align 8, !dbg !569, !tbaa !549
  call void @llvm.dbg.value(metadata i64 %30, metadata !475, metadata !DIExpression()), !dbg !483
  %43 = and i64 %30, -4, !dbg !570
  call void @llvm.dbg.value(metadata i64 %43, metadata !481, metadata !DIExpression()), !dbg !571
  %44 = icmp eq i64 %43, 0, !dbg !572
  br i1 %44, label %45, label %46, !dbg !574

45:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !575, !tbaa !563
  br label %48, !dbg !577

46:                                               ; preds = %39
  %47 = inttoptr i64 %43 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %47, metadata !481, metadata !DIExpression()), !dbg !571
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !579, !tbaa !558
  br label %48

48:                                               ; preds = %46, %45
  call void @llvm.dbg.value(metadata i64 %30, metadata !475, metadata !DIExpression()), !dbg !483
  %49 = and i64 %30, 3, !dbg !581
  %50 = or i64 %49, %12, !dbg !582
  call void @llvm.dbg.value(metadata i64 %50, metadata !482, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i64* %3, metadata !583, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64* undef, metadata !586, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64* undef, metadata !587, metadata !DIExpression()), !dbg !588
  %51 = cmpxchg weak i64* %3, i64 %30, i64 %50 release monotonic, !dbg !591
  %52 = extractvalue { i64, i1 } %51, 1, !dbg !591
  br i1 %52, label %55, label %53, !dbg !591

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0, !dbg !591
  br label %66

55:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !592, metadata !DIExpression()) #7, !dbg !595
  %56 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !598
  %57 = load i8, i8* %6, align 8, !dbg !599, !tbaa !549, !range !600
  %58 = icmp eq i8 %57, 0, !dbg !599
  br i1 %58, label %63, label %59, !dbg !601

59:                                               ; preds = %55, %59
  %60 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !602
  %61 = load i8, i8* %6, align 8, !dbg !599, !tbaa !549, !range !600
  %62 = icmp eq i8 %61, 0, !dbg !599
  br i1 %62, label %63, label %59, !dbg !601, !llvm.loop !604

63:                                               ; preds = %59, %55
  %64 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !607
  call void @llvm.dbg.value(metadata i32 40, metadata !463, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !608
  %65 = load atomic i64, i64* %3 monotonic, align 8, !dbg !610
  br label %66, !dbg !611

66:                                               ; preds = %53, %63
  %67 = phi i64 [ %65, %63 ], [ %54, %53 ], !dbg !483
  %68 = phi i32 [ 40, %63 ], [ %40, %53 ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %68, metadata !463, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !612, metadata !DIExpression()) #7, !dbg !615
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !617, metadata !DIExpression()) #7, !dbg !620
  %69 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #6, !dbg !623
  %70 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !625
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #7, !dbg !626
  br label %71, !dbg !498

71:                                               ; preds = %66, %36
  %72 = phi i64 [ %38, %36 ], [ %67, %66 ]
  %73 = phi i32 [ %37, %36 ], [ %68, %66 ]
  br label %13, !dbg !483, !llvm.loop !627

74:                                               ; preds = %18
  ret void, !dbg !628
}

declare !dbg !629 dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !632 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !634, metadata !DIExpression()), !dbg !656
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !657
  call void @llvm.dbg.value(metadata i64* %2, metadata !485, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !658
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !660
  br label %4, !dbg !661

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !660
  call void @llvm.dbg.value(metadata i64 %5, metadata !635, metadata !DIExpression()), !dbg !656
  %6 = and i64 %5, 2, !dbg !662
  %7 = icmp ne i64 %6, 0, !dbg !663
  call void @llvm.dbg.value(metadata i1 %7, metadata !636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !664
  call void @llvm.dbg.value(metadata i1 undef, metadata !638, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !664
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !665
  call void @llvm.dbg.value(metadata i1 %8, metadata !638, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !664
  br i1 %9, label %65, label %10, !dbg !665

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !635, metadata !DIExpression()), !dbg !656
  %11 = or i64 %5, 2, !dbg !667
  call void @llvm.dbg.value(metadata i64 %11, metadata !639, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64* %2, metadata !504, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()), !dbg !668
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !671
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !671
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %63
  %16 = phi { i64, i1 } [ %64, %63 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !660
  call void @llvm.dbg.value(metadata i64 %17, metadata !635, metadata !DIExpression()), !dbg !656
  %18 = and i64 %17, -4, !dbg !672
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !673
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !640, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !642, metadata !DIExpression()), !dbg !674
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !675
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !643, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !674
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !674, !tbaa !563
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !642, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !643, metadata !DIExpression()), !dbg !674
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !676
  br i1 %22, label %23, label %34, !dbg !677

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !642, metadata !DIExpression()), !dbg !674
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !678
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !678, !tbaa !558
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !645, metadata !DIExpression()), !dbg !679
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !680
  br i1 %27, label %28, label %29, !dbg !683

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0)) #6, !dbg !684
  tail call void @abort() #6, !dbg !684
  br label %29, !dbg !684

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !686
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !687, !tbaa !561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !642, metadata !DIExpression()), !dbg !674
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !688
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !643, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !674
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !674, !tbaa !563
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !643, metadata !DIExpression()), !dbg !674
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !676
  br i1 %33, label %23, label %34, !dbg !677, !llvm.loop !689

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !674
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !691, !tbaa !563
  call void @llvm.dbg.value(metadata i64 %17, metadata !635, metadata !DIExpression()), !dbg !656
  %36 = and i64 %17, 1, !dbg !692
  %37 = icmp eq i64 %36, 0, !dbg !693
  br i1 %37, label %42, label %38, !dbg !694

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !635, metadata !DIExpression()), !dbg !656
  %39 = and i64 %17, -3, !dbg !695
  call void @llvm.dbg.value(metadata i64 %39, metadata !647, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64* %2, metadata !697, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i64* undef, metadata !702, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i64* undef, metadata !703, metadata !DIExpression()), !dbg !704
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !707
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !707
  br i1 %41, label %65, label %63, !dbg !707, !llvm.loop !708

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !711
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !711, !tbaa !561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !650, metadata !DIExpression()), !dbg !674
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !712
  br i1 %45, label %46, label %54, !dbg !713

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !651, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i64 %47, metadata !635, metadata !DIExpression()), !dbg !656
  %48 = and i64 %47, 1, !dbg !715
  call void @llvm.dbg.value(metadata i64 %48, metadata !654, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i64* %2, metadata !697, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64* undef, metadata !702, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64* undef, metadata !703, metadata !DIExpression()), !dbg !717
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !720
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !720
  br i1 %50, label %56, label %51, !dbg !720

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !720
  call void @llvm.dbg.value(metadata i64 %52, metadata !635, metadata !DIExpression()), !dbg !656
  %53 = icmp ult i64 %52, 4, !dbg !721
  br i1 %53, label %46, label %63, !dbg !723, !llvm.loop !724

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !727, !tbaa !563
  call void @llvm.dbg.value(metadata i64* %2, metadata !729, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 -3, metadata !734, metadata !DIExpression()), !dbg !735
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !737
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !738, metadata !DIExpression()) #7, !dbg !741
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !743
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !744
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !745, metadata !DIExpression()) #7, !dbg !748
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !750
  store i8 0, i8* %59, align 8, !dbg !751, !tbaa !549
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !752
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #6, !dbg !753
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !754, metadata !DIExpression()) #7, !dbg !757
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !759
  br label %65, !dbg !760

63:                                               ; preds = %51, %38
  %64 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !674
  br label %15

65:                                               ; preds = %4, %38, %56
  ret void, !dbg !761
}

declare !dbg !762 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !765 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) local_unnamed_addr #0 !dbg !766 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !771, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i64 %0, metadata !775, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 10, metadata !782, metadata !DIExpression()), !dbg !783
  %2 = mul i64 %0, -7046029254386353131, !dbg !785
  %3 = lshr i64 %2, 54, !dbg !788
  call void @llvm.dbg.value(metadata i64 %3, metadata !772, metadata !DIExpression()), !dbg !774
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !789
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !790, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !795
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !797
  call void @llvm.dbg.value(metadata i64* %5, metadata !504, metadata !DIExpression()) #7, !dbg !799
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !799
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !799
  %6 = cmpxchg weak i64* %5, i64 0, i64 1 acquire monotonic, !dbg !801
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !801
  br i1 %7, label %10, label %8, !dbg !802

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !790, metadata !DIExpression()) #7, !dbg !795
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %9) #6, !dbg !804
  br label %10, !dbg !806

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !807
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #4 !dbg !808 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !820, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i64 %2, metadata !821, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i64 %1, metadata !775, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 10, metadata !782, metadata !DIExpression()), !dbg !835
  %4 = mul i64 %1, -7046029254386353131, !dbg !837
  %5 = lshr i64 %4, 54, !dbg !838
  call void @llvm.dbg.value(metadata i64 %5, metadata !822, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i64 %2, metadata !775, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i32 10, metadata !782, metadata !DIExpression()), !dbg !839
  %6 = mul i64 %2, -7046029254386353131, !dbg !841
  %7 = lshr i64 %6, 54, !dbg !842
  call void @llvm.dbg.value(metadata i64 %7, metadata !823, metadata !DIExpression()), !dbg !834
  %8 = icmp eq i64 %5, %7, !dbg !843
  br i1 %8, label %9, label %16, !dbg !844

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !845
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !824, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !790, metadata !DIExpression()) #7, !dbg !847
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !847
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !847
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !849
  call void @llvm.dbg.value(metadata i64* %11, metadata !504, metadata !DIExpression()) #7, !dbg !850
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !850
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !850
  %12 = cmpxchg weak i64* %11, i64 0, i64 1 acquire monotonic, !dbg !852
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !852
  br i1 %13, label %46, label %14, !dbg !853

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !854
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !790, metadata !DIExpression()) #7, !dbg !847
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #6, !dbg !855
  br label %46, !dbg !856

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %7, !dbg !857
  br i1 %17, label %18, label %32, !dbg !858

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !859
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !827, metadata !DIExpression()), !dbg !860
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !861
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !830, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !790, metadata !DIExpression()) #7, !dbg !862
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !862
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !862
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, i32 0, !dbg !864
  call void @llvm.dbg.value(metadata i64* %21, metadata !504, metadata !DIExpression()) #7, !dbg !865
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !865
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !865
  %22 = cmpxchg weak i64* %21, i64 0, i64 1 acquire monotonic, !dbg !867
  %23 = extractvalue { i64, i1 } %22, 1, !dbg !867
  br i1 %23, label %26, label %24, !dbg !868

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, !dbg !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !790, metadata !DIExpression()) #7, !dbg !862
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %25) #6, !dbg !870
  br label %26, !dbg !871

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !790, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !872
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !874
  call void @llvm.dbg.value(metadata i64* %27, metadata !504, metadata !DIExpression()) #7, !dbg !875
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !875
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !875
  %28 = cmpxchg weak i64* %27, i64 0, i64 1 acquire monotonic, !dbg !877
  %29 = extractvalue { i64, i1 } %28, 1, !dbg !877
  br i1 %29, label %46, label %30, !dbg !878

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !879
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !790, metadata !DIExpression()) #7, !dbg !872
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #6, !dbg !880
  br label %46, !dbg !881

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !882
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !831, metadata !DIExpression()), !dbg !883
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !833, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !790, metadata !DIExpression()) #7, !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !885
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !885
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, i32 0, !dbg !887
  call void @llvm.dbg.value(metadata i64* %35, metadata !504, metadata !DIExpression()) #7, !dbg !888
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !888
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !888
  %36 = cmpxchg weak i64* %35, i64 0, i64 1 acquire monotonic, !dbg !890
  %37 = extractvalue { i64, i1 } %36, 1, !dbg !890
  br i1 %37, label %40, label %38, !dbg !891

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, !dbg !892
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !790, metadata !DIExpression()) #7, !dbg !885
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %39) #6, !dbg !893
  br label %40, !dbg !894

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !790, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #7, !dbg !895
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, i32 0, !dbg !897
  call void @llvm.dbg.value(metadata i64* %41, metadata !504, metadata !DIExpression()) #7, !dbg !898
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !898
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !898
  %42 = cmpxchg weak i64* %41, i64 0, i64 1 acquire monotonic, !dbg !900
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !900
  br i1 %43, label %46, label %44, !dbg !901

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, !dbg !902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !790, metadata !DIExpression()) #7, !dbg !895
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #6, !dbg !903
  br label %46, !dbg !904

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !905
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 8, !dbg !905, !tbaa !448
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !905
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 8, !dbg !905, !tbaa !448
  ret void, !dbg !906
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 !dbg !907 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !912, metadata !DIExpression()), !dbg !913
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !914
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !914, !tbaa !916
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !918
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !918, !tbaa !919
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !920
  br i1 %6, label %7, label %16, !dbg !921

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !922, metadata !DIExpression()) #7, !dbg !928
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !931
  call void @llvm.dbg.value(metadata i64* %8, metadata !932, metadata !DIExpression()) #7, !dbg !936
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !936
  %9 = atomicrmw and i64* %8, i64 -2 release, !dbg !938
  call void @llvm.dbg.value(metadata i64 %9, metadata !925, metadata !DIExpression()) #7, !dbg !928
  %10 = and i64 %9, 2, !dbg !939
  %11 = icmp ne i64 %10, 0, !dbg !940
  call void @llvm.dbg.value(metadata i1 %11, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !928
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !928
  %12 = icmp ult i64 %9, 4
  %13 = or i1 %12, %11, !dbg !941
  call void @llvm.dbg.value(metadata i1 %12, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !928
  br i1 %13, label %56, label %14, !dbg !941

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !943
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !922, metadata !DIExpression()) #7, !dbg !928
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #6, !dbg !944
  br label %56, !dbg !946

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !947
  br i1 %17, label %18, label %37, !dbg !949

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !922, metadata !DIExpression()) #7, !dbg !950
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !953
  call void @llvm.dbg.value(metadata i64* %19, metadata !932, metadata !DIExpression()) #7, !dbg !954
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !954
  %20 = atomicrmw and i64* %19, i64 -2 release, !dbg !956
  call void @llvm.dbg.value(metadata i64 %20, metadata !925, metadata !DIExpression()) #7, !dbg !950
  %21 = and i64 %20, 2, !dbg !957
  %22 = icmp ne i64 %21, 0, !dbg !958
  call void @llvm.dbg.value(metadata i1 %22, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !950
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !950
  %23 = icmp ult i64 %20, 4
  %24 = or i1 %23, %22, !dbg !959
  call void @llvm.dbg.value(metadata i1 %23, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !950
  br i1 %24, label %27, label %25, !dbg !959

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !960
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !922, metadata !DIExpression()) #7, !dbg !950
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %26) #6, !dbg !961
  br label %27, !dbg !962

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !963, !tbaa !919
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !922, metadata !DIExpression()) #7, !dbg !964
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, i32 0, !dbg !966
  call void @llvm.dbg.value(metadata i64* %29, metadata !932, metadata !DIExpression()) #7, !dbg !967
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !967
  %30 = atomicrmw and i64* %29, i64 -2 release, !dbg !969
  call void @llvm.dbg.value(metadata i64 %30, metadata !925, metadata !DIExpression()) #7, !dbg !964
  %31 = and i64 %30, 2, !dbg !970
  %32 = icmp ne i64 %31, 0, !dbg !971
  call void @llvm.dbg.value(metadata i1 %32, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !964
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !964
  %33 = icmp ult i64 %30, 4
  %34 = or i1 %33, %32, !dbg !972
  call void @llvm.dbg.value(metadata i1 %33, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !964
  br i1 %34, label %56, label %35, !dbg !972

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, !dbg !973
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !922, metadata !DIExpression()) #7, !dbg !964
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %36) #6, !dbg !974
  br label %56, !dbg !975

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !922, metadata !DIExpression()) #7, !dbg !976
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !979
  call void @llvm.dbg.value(metadata i64* %38, metadata !932, metadata !DIExpression()) #7, !dbg !980
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !980
  %39 = atomicrmw and i64* %38, i64 -2 release, !dbg !982
  call void @llvm.dbg.value(metadata i64 %39, metadata !925, metadata !DIExpression()) #7, !dbg !976
  %40 = and i64 %39, 2, !dbg !983
  %41 = icmp ne i64 %40, 0, !dbg !984
  call void @llvm.dbg.value(metadata i1 %41, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !976
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !976
  %42 = icmp ult i64 %39, 4
  %43 = or i1 %42, %41, !dbg !985
  call void @llvm.dbg.value(metadata i1 %42, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !976
  br i1 %43, label %46, label %44, !dbg !985

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !986
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !922, metadata !DIExpression()) #7, !dbg !976
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #6, !dbg !987
  br label %46, !dbg !988

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !989, !tbaa !916
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !922, metadata !DIExpression()) #7, !dbg !990
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, i32 0, !dbg !992
  call void @llvm.dbg.value(metadata i64* %48, metadata !932, metadata !DIExpression()) #7, !dbg !993
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !993
  %49 = atomicrmw and i64* %48, i64 -2 release, !dbg !995
  call void @llvm.dbg.value(metadata i64 %49, metadata !925, metadata !DIExpression()) #7, !dbg !990
  %50 = and i64 %49, 2, !dbg !996
  %51 = icmp ne i64 %50, 0, !dbg !997
  call void @llvm.dbg.value(metadata i1 %51, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51, !dbg !998
  call void @llvm.dbg.value(metadata i1 %52, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  br i1 %53, label %56, label %54, !dbg !998

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, !dbg !999
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !922, metadata !DIExpression()) #7, !dbg !990
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %55) #6, !dbg !1000
  br label %56, !dbg !1001

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !1002
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1006, metadata !DIExpression()), !dbg !1007
  ret i1 true, !dbg !1008
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #5 !dbg !1009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1011, metadata !DIExpression()), !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1016, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i32 %1, metadata !1017, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i1 %2, metadata !1018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1019
  ret i64 0, !dbg !1020
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1023, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1024, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i1 %2, metadata !1025, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1027
  call void @llvm.dbg.value(metadata i1 %3, metadata !1026, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: nounwind
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 !dbg !1029 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1034, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1035, metadata !DIExpression()), !dbg !1039
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #7, !dbg !1040
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1042, metadata !DIExpression()) #7, !dbg !1045
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !542, metadata !DIExpression()) #7, !dbg !1047
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !1049
  store i8 0, i8* %6, align 8, !dbg !1049, !tbaa !549
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !1050
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !1051
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !1052
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #6, !dbg !1053
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !1054
  store i64 0, i64* %11, align 8, !dbg !1054, !tbaa !1055
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !1058
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1058, !tbaa !1059
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !1060
  store i64 0, i64* %13, align 8, !dbg !1060, !tbaa !1061
  %14 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1062
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1037, metadata !DIExpression()), !dbg !1039
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1063
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1038, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1065, metadata !DIExpression()), !dbg !1069
  store i8 0, i8* %15, align 8, !dbg !1071, !tbaa !1072
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !1074
  store i64 0, i64* %16, align 8, !dbg !1074, !tbaa !1075
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !1076
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 8, !dbg !1076, !tbaa !1078
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1080
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #6, !dbg !1081
  br i1 %20, label %30, label %21, !dbg !1082

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !922, metadata !DIExpression()) #7, !dbg !1083
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0, !dbg !1086
  call void @llvm.dbg.value(metadata i64* %22, metadata !932, metadata !DIExpression()) #7, !dbg !1087
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !1087
  %23 = atomicrmw and i64* %22, i64 -2 release, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %23, metadata !925, metadata !DIExpression()) #7, !dbg !1083
  %24 = and i64 %23, 2, !dbg !1090
  %25 = icmp ne i64 %24, 0, !dbg !1091
  call void @llvm.dbg.value(metadata i1 %25, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1083
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1083
  %26 = icmp ult i64 %23, 4
  %27 = or i1 %26, %25, !dbg !1092
  call void @llvm.dbg.value(metadata i1 %26, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1083
  br i1 %27, label %59, label %28, !dbg !1092

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, !dbg !1093
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !922, metadata !DIExpression()) #7, !dbg !1083
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %29) #6, !dbg !1094
  br label %59, !dbg !1095

30:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1096, !tbaa !1059
  store i64 %0, i64* %11, align 8, !dbg !1097, !tbaa !1055
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !564, metadata !DIExpression()), !dbg !1098
  store i8 1, i8* %6, align 8, !dbg !1100, !tbaa !549
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 1, !dbg !1101
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, align 8, !dbg !1101, !tbaa !1103
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %32, null, !dbg !1106
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2, !dbg !1107
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !dbg !1107
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, i64 0, i32 2, !dbg !1107
  %37 = select i1 %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, !dbg !1107
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, align 8, !dbg !1108, !tbaa !448
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2, !dbg !1109
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 8, !dbg !1110, !tbaa !1111
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !922, metadata !DIExpression()) #7, !dbg !1112
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0, !dbg !1114
  call void @llvm.dbg.value(metadata i64* %39, metadata !932, metadata !DIExpression()) #7, !dbg !1115
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !1115
  %40 = atomicrmw and i64* %39, i64 -2 release, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %40, metadata !925, metadata !DIExpression()) #7, !dbg !1112
  %41 = and i64 %40, 2, !dbg !1118
  %42 = icmp ne i64 %41, 0, !dbg !1119
  call void @llvm.dbg.value(metadata i1 %42, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1112
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1112
  %43 = icmp ult i64 %40, 4
  %44 = or i1 %43, %42, !dbg !1120
  call void @llvm.dbg.value(metadata i1 %43, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1112
  br i1 %44, label %47, label %45, !dbg !1120

45:                                               ; preds = %30
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, !dbg !1121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %46, metadata !922, metadata !DIExpression()) #7, !dbg !1112
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %46) #6, !dbg !1122
  br label %47, !dbg !1123

47:                                               ; preds = %30, %45
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1124
  %49 = load void (i8*)*, void (i8*)** %48, align 8, !dbg !1124, !tbaa !1125
  call void %49(i8* nonnull %19) #6, !dbg !1126
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !592, metadata !DIExpression()) #7, !dbg !1127
  %50 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1129
  %51 = load i8, i8* %6, align 8, !dbg !1130, !tbaa !549, !range !600
  %52 = icmp eq i8 %51, 0, !dbg !1130
  br i1 %52, label %57, label %53, !dbg !1131

53:                                               ; preds = %47, %53
  %54 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !1132
  %55 = load i8, i8* %6, align 8, !dbg !1130, !tbaa !549, !range !600
  %56 = icmp eq i8 %55, 0, !dbg !1130
  br i1 %56, label %57, label %53, !dbg !1131, !llvm.loop !1133

57:                                               ; preds = %53, %47
  %58 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1135
  br label %59, !dbg !1136

59:                                               ; preds = %28, %21, %57
  %60 = phi i64* [ %13, %57 ], [ %16, %21 ], [ %16, %28 ]
  %61 = load i64, i64* %60, align 8, !dbg !1039, !tbaa !1137
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1138
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1139, metadata !DIExpression()) #7, !dbg !1142
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !617, metadata !DIExpression()) #7, !dbg !1144
  %62 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #6, !dbg !1147
  %63 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1148
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #7, !dbg !1138
  ret i64 %61, !dbg !1138
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 !dbg !1149 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1151, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1152, metadata !DIExpression()), !dbg !1168
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1169
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1153, metadata !DIExpression()), !dbg !1168
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1170
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1154, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1155, metadata !DIExpression()), !dbg !1168
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1171, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1156, metadata !DIExpression()), !dbg !1168
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %11, !dbg !1172

11:                                               ; preds = %60, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %61, %60 ], !dbg !1173
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %62, %60 ], !dbg !1174
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %63, %60 ], !dbg !1175
  %15 = phi i64 [ undef, %2 ], [ %64, %60 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1156, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1155, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1154, metadata !DIExpression()), !dbg !1168
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1176
  br i1 %16, label %65, label %17, !dbg !1172

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1177
  call void @llvm.dbg.value(metadata i64* %18, metadata !485, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1178
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %19, metadata !1157, metadata !DIExpression()), !dbg !1181
  %20 = icmp eq i64 %19, %0, !dbg !1182
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1183
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 8, !dbg !1183, !tbaa !1059
  br i1 %20, label %23, label %60, !dbg !1184

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1159, metadata !DIExpression()), !dbg !1185
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1186, !tbaa !448
  call void @llvm.dbg.value(metadata i8 0, metadata !1162, metadata !DIExpression()), !dbg !1185
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1187, !tbaa !1111
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1188
  br i1 %25, label %28, label %26, !dbg !1189

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1163, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1162, metadata !DIExpression()), !dbg !1185
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1191
  br i1 %27, label %40, label %29, !dbg !1192

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1193, !tbaa !1111
  br label %40, !dbg !1195

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1163, metadata !DIExpression()), !dbg !1190
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64* %31, metadata !485, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1197
  %32 = load atomic i64, i64* %31 monotonic, align 8, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %32, metadata !1166, metadata !DIExpression()), !dbg !1200
  %33 = icmp eq i64 %32, %0, !dbg !1201
  call void @llvm.dbg.value(metadata i1 %33, metadata !1162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1185
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 2, !dbg !1202
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !dbg !1202, !tbaa !1059
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1163, metadata !DIExpression()), !dbg !1190
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1191
  %37 = or i1 %33, %36, !dbg !1203
  br i1 %37, label %38, label %29, !dbg !1192, !llvm.loop !1204

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8, !dbg !1206
  call void @llvm.dbg.value(metadata i8 %39, metadata !1162, metadata !DIExpression()), !dbg !1185
  br label %40, !dbg !1207

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ], !dbg !1208
  call void @llvm.dbg.value(metadata i8 %41, metadata !1162, metadata !DIExpression()), !dbg !1185
  %42 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1207, !tbaa !1209
  %43 = icmp ne i8 %41, 0, !dbg !1210
  %44 = tail call i64 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #6, !dbg !1211
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1212
  store i64 %44, i64* %45, align 8, !dbg !1213, !tbaa !1061
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !738, metadata !DIExpression()) #7, !dbg !1214
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1216
  %47 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %46) #6, !dbg !1217
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !922, metadata !DIExpression()) #7, !dbg !1218
  call void @llvm.dbg.value(metadata i64* %9, metadata !932, metadata !DIExpression()) #7, !dbg !1220
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !1220
  %48 = atomicrmw and i64* %9, i64 -2 release, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %48, metadata !925, metadata !DIExpression()) #7, !dbg !1218
  %49 = and i64 %48, 2, !dbg !1223
  %50 = icmp ne i64 %49, 0, !dbg !1224
  call void @llvm.dbg.value(metadata i1 %50, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1218
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1218
  %51 = icmp ult i64 %48, 4
  %52 = or i1 %51, %50, !dbg !1225
  call void @llvm.dbg.value(metadata i1 %51, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1218
  br i1 %52, label %54, label %53, !dbg !1225

53:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !922, metadata !DIExpression()) #7, !dbg !1218
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !1226
  br label %54, !dbg !1227

54:                                               ; preds = %40, %53
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !745, metadata !DIExpression()) #7, !dbg !1228
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 2, !dbg !1230
  store i8 0, i8* %55, align 8, !dbg !1231, !tbaa !549
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 1, !dbg !1232
  %57 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %56) #6, !dbg !1233
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !754, metadata !DIExpression()) #7, !dbg !1234
  %58 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %46) #6, !dbg !1236
  %59 = zext i8 %41 to i64
  br label %60

60:                                               ; preds = %17, %54
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %54 ], [ %21, %17 ], !dbg !1168
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %54 ], [ %14, %17 ], !dbg !1168
  %63 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %54 ], [ %22, %17 ], !dbg !1168
  %64 = phi i64 [ %59, %54 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %63, metadata !1156, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %62, metadata !1155, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, metadata !1154, metadata !DIExpression()), !dbg !1168
  br i1 %20, label %74, label %11, !llvm.loop !1237

65:                                               ; preds = %11
  %66 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1239, !tbaa !1209
  %67 = tail call i64 %66(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1240
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !922, metadata !DIExpression()) #7, !dbg !1241
  call void @llvm.dbg.value(metadata i64* %9, metadata !932, metadata !DIExpression()) #7, !dbg !1243
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !1243
  %68 = atomicrmw and i64* %9, i64 -2 release, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %68, metadata !925, metadata !DIExpression()) #7, !dbg !1241
  %69 = and i64 %68, 2, !dbg !1246
  %70 = icmp ne i64 %69, 0, !dbg !1247
  call void @llvm.dbg.value(metadata i1 %70, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1241
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1241
  %71 = icmp ult i64 %68, 4
  %72 = or i1 %71, %70, !dbg !1248
  call void @llvm.dbg.value(metadata i1 %71, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1241
  br i1 %72, label %74, label %73, !dbg !1248

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !922, metadata !DIExpression()) #7, !dbg !1241
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !1249
  br label %74, !dbg !1250

74:                                               ; preds = %60, %73, %65
  %75 = phi i64 [ 0, %65 ], [ 0, %73 ], [ %64, %60 ], !dbg !1168
  ret i64 %75, !dbg !1251
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy(i64 %0, i64 %1) local_unnamed_addr #0 !dbg !1252 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1256, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %1, metadata !1257, metadata !DIExpression()), !dbg !1284
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1285
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1258, metadata !DIExpression()), !dbg !1284
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1286
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1259, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1260, metadata !DIExpression()), !dbg !1284
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1287, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1261, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 0, metadata !1262, metadata !DIExpression()), !dbg !1284
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1288
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1288
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1264, metadata !DIExpression()), !dbg !1289
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1290
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1268, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 16, metadata !1269, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1260, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1261, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 0, metadata !1262, metadata !DIExpression()), !dbg !1284
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1291
  br i1 %9, label %60, label %10, !dbg !1292

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1292

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i64 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i64 [ 0, %10 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1260, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1261, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %15, metadata !1269, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1268, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %17, metadata !1262, metadata !DIExpression()), !dbg !1284
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1293
  call void @llvm.dbg.value(metadata i64* %18, metadata !485, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1294
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1296
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1297
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1297, !tbaa !1059
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1272, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %19, metadata !1270, metadata !DIExpression()), !dbg !1298
  %22 = icmp eq i64 %19, %0, !dbg !1299
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1300, !tbaa !448
  br i1 %22, label %23, label %54, !dbg !1301

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1302, !tbaa !1111
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1304
  br i1 %25, label %26, label %27, !dbg !1305

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1306, !tbaa !1111
  br label %27, !dbg !1308

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1309
  br i1 %28, label %29, label %46, !dbg !1310

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1273, metadata !DIExpression()), !dbg !1311
  %30 = shl i64 %15, 4, !dbg !1312
  %31 = call i8* @malloc(i64 %30) #6, !dbg !1313
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1314
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1268, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 0, metadata !1278, metadata !DIExpression()), !dbg !1315
  %33 = icmp eq i64 %15, 0, !dbg !1316
  br i1 %33, label %34, label %37, !dbg !1318

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %35, metadata !1269, metadata !DIExpression()), !dbg !1284
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1320
  br i1 %36, label %46, label %44, !dbg !1322

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1278, metadata !DIExpression()), !dbg !1315
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1323
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1323, !tbaa !448
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1325
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1326, !tbaa !448
  %42 = add nuw i64 %38, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %42, metadata !1278, metadata !DIExpression()), !dbg !1315
  %43 = icmp eq i64 %42, %15, !dbg !1316
  br i1 %43, label %34, label %37, !dbg !1318, !llvm.loop !1328

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1330
  call void @free(i8* %45) #6, !dbg !1332
  br label %46, !dbg !1333

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1284
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1284
  call void @llvm.dbg.value(metadata i64 %48, metadata !1269, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1268, metadata !DIExpression()), !dbg !1284
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1334
  store i64 %1, i64* %49, align 8, !dbg !1335, !tbaa !1061
  %50 = add i64 %17, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %50, metadata !1262, metadata !DIExpression()), !dbg !1284
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1337
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1338, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !738, metadata !DIExpression()) #7, !dbg !1339
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1341
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #6, !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1261, metadata !DIExpression()), !dbg !1284
  br label %54, !dbg !1343

54:                                               ; preds = %12, %46
  %55 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1284
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1284
  %57 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1284
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1260, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1261, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %57, metadata !1269, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %56, metadata !1268, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %55, metadata !1262, metadata !DIExpression()), !dbg !1284
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1291
  br i1 %59, label %60, label %12, !dbg !1292, !llvm.loop !1344

60:                                               ; preds = %54, %2
  %61 = phi i64 [ 0, %2 ], [ %55, %54 ], !dbg !1284
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ], !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !922, metadata !DIExpression()) #7, !dbg !1346
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1348
  call void @llvm.dbg.value(metadata i64* %63, metadata !932, metadata !DIExpression()) #7, !dbg !1349
  call void @llvm.dbg.value(metadata i64 -2, metadata !935, metadata !DIExpression()) #7, !dbg !1349
  %64 = atomicrmw and i64* %63, i64 -2 release, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %64, metadata !925, metadata !DIExpression()) #7, !dbg !1346
  %65 = and i64 %64, 2, !dbg !1352
  %66 = icmp ne i64 %65, 0, !dbg !1353
  call void @llvm.dbg.value(metadata i1 %66, metadata !926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1346
  call void @llvm.dbg.value(metadata i1 undef, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1346
  %67 = icmp ult i64 %64, 4
  %68 = or i1 %67, %66, !dbg !1354
  call void @llvm.dbg.value(metadata i1 %67, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1346
  br i1 %68, label %71, label %69, !dbg !1354

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1355
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %70, metadata !922, metadata !DIExpression()) #7, !dbg !1346
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %70) #6, !dbg !1356
  br label %71, !dbg !1357

71:                                               ; preds = %60, %69
  call void @llvm.dbg.value(metadata i64 0, metadata !1280, metadata !DIExpression()), !dbg !1358
  %72 = icmp eq i64 %61, 0, !dbg !1359
  br i1 %72, label %83, label %74, !dbg !1361

73:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1362
  br i1 %72, label %83, label %85, !dbg !1363

74:                                               ; preds = %71, %74
  %75 = phi i64 [ %81, %74 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i64 %75, metadata !1280, metadata !DIExpression()), !dbg !1358
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %75, !dbg !1364
  %77 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %76, align 8, !dbg !1364, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, metadata !745, metadata !DIExpression()) #7, !dbg !1366
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i64 0, i32 0, i32 2, !dbg !1368
  store i8 0, i8* %78, align 8, !dbg !1369, !tbaa !549
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i64 0, i32 0, i32 1, !dbg !1370
  %80 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %79) #6, !dbg !1371
  %81 = add nuw i64 %75, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %81, metadata !1280, metadata !DIExpression()), !dbg !1358
  %82 = icmp eq i64 %81, %61, !dbg !1359
  br i1 %82, label %73, label %74, !dbg !1361, !llvm.loop !1373

83:                                               ; preds = %85, %71, %73
  %84 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8, !dbg !1375
  br i1 %84, label %95, label %93, !dbg !1377

85:                                               ; preds = %73, %85
  %86 = phi i64 [ %91, %85 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1282, metadata !DIExpression()), !dbg !1362
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %86, !dbg !1378
  %88 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, align 8, !dbg !1378, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, metadata !754, metadata !DIExpression()) #7, !dbg !1381
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i64 0, i32 0, i32 0, !dbg !1383
  %90 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %89) #6, !dbg !1384
  %91 = add nuw i64 %86, 1, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %91, metadata !1282, metadata !DIExpression()), !dbg !1362
  %92 = icmp eq i64 %91, %61, !dbg !1386
  br i1 %92, label %83, label %85, !dbg !1363, !llvm.loop !1387

93:                                               ; preds = %83
  %94 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*, !dbg !1389
  call void @free(i8* %94) #6, !dbg !1391
  br label %95, !dbg !1392

95:                                               ; preds = %93, %83
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1393
  ret i64 %61, !dbg !1394
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #4 !dbg !1395 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1399, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %1, metadata !1400, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1401, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %3, metadata !1402, metadata !DIExpression()), !dbg !1414
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1415
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1415
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1403, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %1, metadata !1400, metadata !DIExpression()), !dbg !1414
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #8, !dbg !1417
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1418
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1418
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1404, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1065, metadata !DIExpression()), !dbg !1420
  store i8 0, i8* %8, align 8, !dbg !1422, !tbaa !1072
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1423
  store i64 0, i64* %9, align 8, !dbg !1423, !tbaa !1075
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1424
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1424, !tbaa !1078
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1426
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #6, !dbg !1427
  br i1 %13, label %15, label %14, !dbg !1428

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1429
  br label %94, !dbg !1431

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1432
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1432, !tbaa !916
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1433
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1405, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1406, metadata !DIExpression()), !dbg !1414
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1434, !tbaa !448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1406, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1405, metadata !DIExpression()), !dbg !1414
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1435
  br i1 %20, label %73, label %21, !dbg !1436

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1406, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1405, metadata !DIExpression()), !dbg !1414
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64* %28, metadata !485, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1438
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1440
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1441
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1441, !tbaa !1059
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1413, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %29, metadata !1411, metadata !DIExpression()), !dbg !1442
  %32 = icmp eq i64 %29, %0, !dbg !1443
  br i1 %32, label %33, label %50, !dbg !1445

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1446, !tbaa !448
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1448, !tbaa !916
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1450
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1450, !tbaa !1111
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1451
  br i1 %37, label %38, label %39, !dbg !1452

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1453, !tbaa !1111
  br label %39, !dbg !1455

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1456, !tbaa !1072, !range !600
  %41 = icmp ne i8 %40, 0, !dbg !1456
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41, !dbg !1458
  br i1 %43, label %50, label %44, !dbg !1458

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1459
  br i1 %45, label %48, label %46, !dbg !1462

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1463
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1465, !tbaa !1059
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64* %28, metadata !1466, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64* undef, metadata !1471, metadata !DIExpression()), !dbg !1472
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1474
  br label %50

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1414
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1414
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1475
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1476
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1406, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1405, metadata !DIExpression()), !dbg !1414
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1435
  br i1 %56, label %57, label %21, !dbg !1436, !llvm.loop !1477

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1479
  br i1 %58, label %73, label %59, !dbg !1481

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1482
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1484, !tbaa !1059
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1485
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1485, !tbaa !919
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1487
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1487, !tbaa !1103
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1488
  br i1 %65, label %70, label %66, !dbg !1489

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1490
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1490, !tbaa !1111
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1492
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1493, !tbaa !448
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1494
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1495, !tbaa !1111
  br label %73, !dbg !1496

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1497
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1497, !tbaa !1498
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1499
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #6, !dbg !1500
  br i1 %78, label %79, label %87, !dbg !1501

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1502
  store i64 %3, i64* %80, align 8, !dbg !1505, !tbaa !1061
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !738, metadata !DIExpression()) #7, !dbg !1506
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1508
  %82 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %81) #6, !dbg !1509
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1510
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !745, metadata !DIExpression()) #7, !dbg !1511
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1513
  store i8 0, i8* %83, align 8, !dbg !1514, !tbaa !549
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1515
  %85 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %84) #6, !dbg !1516
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !754, metadata !DIExpression()) #7, !dbg !1517
  %86 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %81) #6, !dbg !1519
  br label %88, !dbg !1520

87:                                               ; preds = %73
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1521
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i8, i8* %8, align 8, !dbg !1523
  %90 = and i8 %89, 1, !dbg !1523
  %91 = icmp ne i8 %90, 0, !dbg !1523
  %92 = and i1 %78, %91, !dbg !1523
  %93 = zext i1 %92 to i32, !dbg !1524
  br label %94

94:                                               ; preds = %88, %14
  %95 = phi i32 [ %93, %88 ], [ 0, %14 ], !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1525
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1525
  ret i32 %95, !dbg !1525
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1528, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1529, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8* %0, metadata !1530, metadata !DIExpression()), !dbg !1532
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1533
  %4 = bitcast i8* %3 to i64**, !dbg !1533
  %5 = load i64*, i64** %4, align 8, !dbg !1533, !tbaa !1534
  call void @llvm.dbg.value(metadata i64* %5, metadata !485, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1536
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %6, metadata !1531, metadata !DIExpression()), !dbg !1532
  %7 = icmp eq i64 %6, 3, !dbg !1539
  ret i1 %7, !dbg !1540
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1541 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1543, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i1 %2, metadata !1545, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()), !dbg !1548
  %4 = select i1 %2, i64 2, i64 0, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %4, metadata !1547, metadata !DIExpression()), !dbg !1548
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1550
  %6 = bitcast i8* %5 to i64**, !dbg !1550
  %7 = load i64*, i64** %6, align 8, !dbg !1550, !tbaa !1534
  call void @llvm.dbg.value(metadata i64* %7, metadata !1551, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64* undef, metadata !1554, metadata !DIExpression()), !dbg !1555
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1557
  ret i64 0, !dbg !1558
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1561, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %1, metadata !1562, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i1 %2, metadata !1563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %0, metadata !1564, metadata !DIExpression()), !dbg !1568
  br i1 %2, label %8, label %4, !dbg !1569

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 0, metadata !1565, metadata !DIExpression()), !dbg !1570
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1571
  %6 = bitcast i8* %5 to i64**, !dbg !1571
  %7 = load i64*, i64** %6, align 8, !dbg !1571, !tbaa !1572
  call void @llvm.dbg.value(metadata i64* %7, metadata !1466, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64* undef, metadata !1471, metadata !DIExpression()), !dbg !1574
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1576
  br label %8, !dbg !1577

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1578
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 !dbg !1579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1581, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1582, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %0, metadata !1583, metadata !DIExpression()), !dbg !1585
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1586
  %4 = bitcast i8* %3 to i64**, !dbg !1586
  %5 = load i64*, i64** %4, align 8, !dbg !1586, !tbaa !1587
  call void @llvm.dbg.value(metadata i64* %5, metadata !485, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1589
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %6, metadata !1584, metadata !DIExpression()), !dbg !1585
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1592
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1592
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1592, !tbaa !1594
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1595
  %11 = icmp eq i64 %6, %10, !dbg !1596
  br i1 %11, label %12, label %30, !dbg !1597

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1584, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64* %5, metadata !1466, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64* undef, metadata !1471, metadata !DIExpression()), !dbg !1598
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1600
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1601, !tbaa !1594
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1602, metadata !DIExpression()), !dbg !1608
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1610
  call void @llvm.dbg.value(metadata i64* %14, metadata !485, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1611
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %15, metadata !1605, metadata !DIExpression()), !dbg !1608
  %16 = and i64 %15, 1, !dbg !1614
  %17 = icmp eq i64 %16, 0, !dbg !1616
  br i1 %17, label %27, label %18, !dbg !1617

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1605, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %19, metadata !1605, metadata !DIExpression()), !dbg !1608
  %20 = or i64 %19, 2, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %20, metadata !1606, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64* %14, metadata !1620, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64* undef, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64* undef, metadata !1624, metadata !DIExpression()), !dbg !1625
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1628
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1628
  br i1 %22, label %27, label %23, !dbg !1628

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %24, metadata !1605, metadata !DIExpression()), !dbg !1608
  %25 = and i64 %24, 1, !dbg !1614
  %26 = icmp eq i64 %25, 0, !dbg !1616
  br i1 %26, label %27, label %18, !dbg !1617

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1629
  store i8 %28, i8* %29, align 8, !dbg !1630, !tbaa !1072
  br label %30, !dbg !1631

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1632
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1635, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1636, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i1 %2, metadata !1637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1640
  call void @llvm.dbg.value(metadata i1 %3, metadata !1638, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1640
  call void @llvm.dbg.value(metadata i8* %0, metadata !1639, metadata !DIExpression()), !dbg !1640
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1641
  %6 = load i8, i8* %5, align 8, !dbg !1641, !tbaa !1072, !range !600
  %7 = icmp ne i8 %6, 0, !dbg !1641
  %8 = and i1 %7, %3, !dbg !1643
  br i1 %8, label %9, label %15, !dbg !1643

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1644
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1644
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1644, !tbaa !1594
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1646, metadata !DIExpression()), !dbg !1649
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1651
  call void @llvm.dbg.value(metadata i64* %13, metadata !1652, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 2, metadata !1655, metadata !DIExpression()), !dbg !1656
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1658
  br label %15, !dbg !1659

15:                                               ; preds = %4, %9
  ret void, !dbg !1660
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1663, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1664, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8* %0, metadata !1665, metadata !DIExpression()), !dbg !1667
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1668
  %4 = bitcast i8* %3 to i64**, !dbg !1668
  %5 = load i64*, i64** %4, align 8, !dbg !1668, !tbaa !1669
  call void @llvm.dbg.value(metadata i64* %5, metadata !485, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()), !dbg !1671
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %6, metadata !1666, metadata !DIExpression()), !dbg !1667
  %7 = icmp eq i64 %6, 0, !dbg !1674
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1676
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1676
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1676, !tbaa !1677
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1676
  br i1 %7, label %12, label %13, !dbg !1678

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1665, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %11, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64* %5, metadata !1466, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i64* undef, metadata !1471, metadata !DIExpression()), !dbg !1679
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1682
  br label %17, !dbg !1683

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1684
  br i1 %14, label %17, label %15, !dbg !1686

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1687
  store i64 %11, i64* %16, align 8, !dbg !1689, !tbaa !1075
  br label %17, !dbg !1690

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1667
  ret i1 %18, !dbg !1691
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #4 !dbg !1692 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()), !dbg !1696
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1697
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1697
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1697, !tbaa !1677
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1698, metadata !DIExpression()) #7, !dbg !1703
  call void @llvm.dbg.value(metadata i64 1, metadata !1701, metadata !DIExpression()) #7, !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, metadata !1702, metadata !DIExpression()) #7, !dbg !1703
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1705
  call void @llvm.dbg.value(metadata i64* %6, metadata !583, metadata !DIExpression()) #7, !dbg !1707
  call void @llvm.dbg.value(metadata i64* undef, metadata !586, metadata !DIExpression()) #7, !dbg !1707
  call void @llvm.dbg.value(metadata i64* undef, metadata !587, metadata !DIExpression()) #7, !dbg !1707
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1709
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1709
  br i1 %8, label %22, label %9, !dbg !1710

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1711, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i64 1, metadata !1714, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i64* %6, metadata !1720, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata i64* undef, metadata !1723, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata i64* undef, metadata !1724, metadata !DIExpression()) #7, !dbg !1725
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1728
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1728
  br i1 %11, label %22, label %12, !dbg !1729

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1730
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1730
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1716, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1732, metadata !DIExpression()) #7, !dbg !1736
  call void @llvm.dbg.value(metadata i64* %6, metadata !1735, metadata !DIExpression()) #7, !dbg !1736
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1738, metadata !DIExpression()) #7, !dbg !1742
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1744
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1745
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 8, !dbg !1745, !tbaa !1125
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1746
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1747
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1747, !tbaa !1498
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1748
  store i64* %6, i64** %18, align 8, !dbg !1748, !tbaa !1534
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1749, !tbaa !1078
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %16, align 8, !dbg !1751, !tbaa !1209
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1752
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1753
  %21 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %20) #6, !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1755
  br label %22, !dbg !1755

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1756
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %1, metadata !1760, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i1 %2, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %0, metadata !1762, metadata !DIExpression()), !dbg !1766
  br i1 %2, label %8, label %4, !dbg !1767

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1762, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1768
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1769
  %6 = bitcast i8* %5 to i64**, !dbg !1769
  %7 = load i64*, i64** %6, align 8, !dbg !1769, !tbaa !1669
  call void @llvm.dbg.value(metadata i64* %7, metadata !1466, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64* undef, metadata !1471, metadata !DIExpression()), !dbg !1770
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1772
  br label %8, !dbg !1773

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1774
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1775 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1782, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata i64 0, metadata !1785, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata i64 1, metadata !1786, metadata !DIExpression()) #7, !dbg !1787
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1789
  call void @llvm.dbg.value(metadata i64* %3, metadata !504, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !1791
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !1793
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1793
  br i1 %5, label %59, label %6, !dbg !1794

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1782, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1795, metadata !DIExpression()) #7, !dbg !1809
  call void @llvm.dbg.value(metadata i32 40, metadata !1798, metadata !DIExpression()) #7, !dbg !1809
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()) #7, !dbg !1812
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !1812
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1814
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  br label %16, !dbg !1815

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1798, metadata !DIExpression()) #7, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %17, metadata !1799, metadata !DIExpression()) #7, !dbg !1809
  %19 = and i64 %17, 1, !dbg !1816
  %20 = icmp eq i64 %19, 0, !dbg !1817
  br i1 %20, label %21, label %32, !dbg !1818

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1799, metadata !DIExpression()) #7, !dbg !1809
  %23 = or i64 %22, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %23, metadata !1800, metadata !DIExpression()) #7, !dbg !1820
  call void @llvm.dbg.value(metadata i64* %3, metadata !504, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !1821
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !1824
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1824
  br i1 %25, label %59, label %26, !dbg !1824

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %18, metadata !1798, metadata !DIExpression()) #7, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %27, metadata !1799, metadata !DIExpression()) #7, !dbg !1809
  %28 = and i64 %27, 1, !dbg !1816
  %29 = icmp eq i64 %28, 0, !dbg !1817
  br i1 %29, label %21, label %30, !dbg !1818

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !1824
  br label %32, !dbg !1825

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !1809
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !518, metadata !DIExpression()) #7, !dbg !1828
  %34 = icmp sgt i32 %18, 0, !dbg !1825
  br i1 %34, label %35, label %40, !dbg !1829

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !1798, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1809
  %36 = icmp eq i32 %18, 1, !dbg !1830
  br i1 %36, label %40, label %37, !dbg !1831

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %38, metadata !1798, metadata !DIExpression()) #7, !dbg !1809
  call void @halide_thread_yield() #6, !dbg !1833
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()) #7, !dbg !1835
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !1835
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1837
  br label %55, !dbg !1838

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1799, metadata !DIExpression()) #7, !dbg !1809
  %42 = and i64 %33, 2, !dbg !1839
  %43 = icmp eq i64 %42, 0, !dbg !1840
  br i1 %43, label %44, label %50, !dbg !1841

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !1799, metadata !DIExpression()) #7, !dbg !1809
  %45 = or i64 %33, 2, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %45, metadata !1804, metadata !DIExpression()) #7, !dbg !1843
  call void @llvm.dbg.value(metadata i64* %3, metadata !1620, metadata !DIExpression()) #7, !dbg !1844
  call void @llvm.dbg.value(metadata i64* undef, metadata !1623, metadata !DIExpression()) #7, !dbg !1844
  call void @llvm.dbg.value(metadata i64* undef, metadata !1624, metadata !DIExpression()) #7, !dbg !1844
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !1847
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !1847
  br i1 %47, label %50, label %48, !dbg !1847

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !1847
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1848
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1807, metadata !DIExpression()) #7, !dbg !1849
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1732, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i64* %3, metadata !1735, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1738, metadata !DIExpression()) #7, !dbg !1852
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !1854, !tbaa !1125
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1855, !tbaa !1498
  store i64* %3, i64** %13, align 8, !dbg !1856, !tbaa !1534
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1857, !tbaa !1078
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !1858, !tbaa !1209
  %51 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #6, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %51, metadata !1808, metadata !DIExpression()) #7, !dbg !1860
  %52 = icmp eq i64 %51, %14, !dbg !1861
  br i1 %52, label %58, label %53, !dbg !1863

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !1798, metadata !DIExpression()) #7, !dbg !1809
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()) #7, !dbg !1864
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !1864
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1866
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1867
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !1809, !llvm.loop !1868

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1867
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !1869
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1870 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1698, metadata !DIExpression()) #7, !dbg !1875
  call void @llvm.dbg.value(metadata i64 1, metadata !1701, metadata !DIExpression()) #7, !dbg !1875
  call void @llvm.dbg.value(metadata i64 0, metadata !1702, metadata !DIExpression()) #7, !dbg !1875
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1877
  call void @llvm.dbg.value(metadata i64* %3, metadata !583, metadata !DIExpression()) #7, !dbg !1878
  call void @llvm.dbg.value(metadata i64* undef, metadata !586, metadata !DIExpression()) #7, !dbg !1878
  call void @llvm.dbg.value(metadata i64* undef, metadata !587, metadata !DIExpression()) #7, !dbg !1878
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !1880
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1880
  br i1 %5, label %19, label %6, !dbg !1881

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1711, metadata !DIExpression()) #7, !dbg !1882
  call void @llvm.dbg.value(metadata i64 1, metadata !1714, metadata !DIExpression()) #7, !dbg !1882
  call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()) #7, !dbg !1882
  call void @llvm.dbg.value(metadata i64* %3, metadata !1720, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata i64* undef, metadata !1723, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata i64* undef, metadata !1724, metadata !DIExpression()) #7, !dbg !1884
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !1886
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1886
  br i1 %8, label %19, label %9, !dbg !1887

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1888
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1888
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1716, metadata !DIExpression()) #7, !dbg !1889
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1732, metadata !DIExpression()) #7, !dbg !1890
  call void @llvm.dbg.value(metadata i64* %3, metadata !1735, metadata !DIExpression()) #7, !dbg !1890
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1738, metadata !DIExpression()) #7, !dbg !1892
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1894
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1895
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !1895, !tbaa !1125
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1896
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1897
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !1897, !tbaa !1498
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1898
  store i64* %3, i64** %15, align 8, !dbg !1898, !tbaa !1534
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !1899, !tbaa !1078
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !1900, !tbaa !1209
  %16 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !1901
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1902
  %18 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #6, !dbg !1903
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1904
  br label %19, !dbg !1904

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1905
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1906 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1912, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1914, metadata !DIExpression()) #7, !dbg !1919
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1921
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()) #7, !dbg !1922
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !1922
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %4, metadata !1917, metadata !DIExpression()) #7, !dbg !1919
  %5 = icmp eq i64 %4, 0, !dbg !1925
  br i1 %5, label %18, label %6, !dbg !1927

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1914, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1912, metadata !DIExpression()), !dbg !1913
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1928
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1918, metadata !DIExpression()) #7, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %4, metadata !1917, metadata !DIExpression()) #7, !dbg !1919
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1930
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1931, metadata !DIExpression()) #7, !dbg !1936
  call void @llvm.dbg.value(metadata i64* %3, metadata !1934, metadata !DIExpression()) #7, !dbg !1936
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1935, metadata !DIExpression()) #7, !dbg !1936
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1738, metadata !DIExpression()) #7, !dbg !1938
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1940
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1941
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !1941, !tbaa !1125
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1942
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !1942, !tbaa !1209
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1943
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !1944
  store i64* %3, i64** %13, align 8, !dbg !1944, !tbaa !1587
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !1945
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !1945, !tbaa !1594
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1946, !tbaa !1078
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1948, !tbaa !1498
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1949
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !1950
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %15, i64 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16, i64 0) #6, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1952
  br label %18, !dbg !1952

18:                                               ; preds = %1, %6
  ret void, !dbg !1953
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1954 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1959, metadata !DIExpression()) #7, !dbg !1964
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1966
  call void @llvm.dbg.value(metadata i64* %3, metadata !485, metadata !DIExpression()) #7, !dbg !1967
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !1967
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %4, metadata !1962, metadata !DIExpression()) #7, !dbg !1964
  %5 = icmp eq i64 %4, 0, !dbg !1970
  br i1 %5, label %18, label %6, !dbg !1972

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1959, metadata !DIExpression()) #7, !dbg !1964
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1957, metadata !DIExpression()), !dbg !1958
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !1973
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1973
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1963, metadata !DIExpression()) #7, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %4, metadata !1962, metadata !DIExpression()) #7, !dbg !1964
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1975
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1976, metadata !DIExpression()) #7, !dbg !1981
  call void @llvm.dbg.value(metadata i64* %3, metadata !1979, metadata !DIExpression()) #7, !dbg !1981
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1980, metadata !DIExpression()) #7, !dbg !1981
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1738, metadata !DIExpression()) #7, !dbg !1983
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1985
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1985, !tbaa !1078
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1986
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !1986, !tbaa !1125
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1987
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1988
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1988, !tbaa !1498
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !1989
  store i64* %3, i64** %13, align 8, !dbg !1989, !tbaa !1572
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !1990
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !1990, !tbaa !1991
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !1992, !tbaa !1209
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1994
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !1995
  %17 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #6, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1997
  br label %18, !dbg !1997

18:                                               ; preds = %1, %6
  ret void, !dbg !1998
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !1999 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2008, metadata !DIExpression()) #7, !dbg !2017
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2011, metadata !DIExpression()) #7, !dbg !2017
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2019
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2012, metadata !DIExpression()) #7, !dbg !2020
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2022, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata i64* %6, metadata !2025, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2026, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1738, metadata !DIExpression()) #7, !dbg !2029
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !2031
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !2032
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !2033
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !2034
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !2034, !tbaa !1498
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !2035
  store i64* %6, i64** %11, align 8, !dbg !2035, !tbaa !1669
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !2036
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2036
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !2036, !tbaa !1677
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !2037, !tbaa !1078
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 8, !dbg !2039, !tbaa !1125
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %9, align 8, !dbg !2040, !tbaa !1209
  %14 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2041
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !2042
  %16 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #6, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %16, metadata !2013, metadata !DIExpression()) #7, !dbg !2017
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !2044
  %18 = icmp eq i64 %16, %17, !dbg !2045
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2046
  br i1 %18, label %75, label %20, !dbg !2047

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1782, metadata !DIExpression()) #7, !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, metadata !1785, metadata !DIExpression()) #7, !dbg !2048
  call void @llvm.dbg.value(metadata i64 1, metadata !1786, metadata !DIExpression()) #7, !dbg !2048
  call void @llvm.dbg.value(metadata i64* %19, metadata !504, metadata !DIExpression()) #7, !dbg !2051
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !2051
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !2051
  %21 = cmpxchg weak i64* %19, i64 0, i64 1 acquire monotonic, !dbg !2053
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !2053
  br i1 %22, label %80, label %23, !dbg !2054

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1795, metadata !DIExpression()) #7, !dbg !2055
  call void @llvm.dbg.value(metadata i32 40, metadata !1798, metadata !DIExpression()) #7, !dbg !2055
  call void @llvm.dbg.value(metadata i64* %19, metadata !485, metadata !DIExpression()) #7, !dbg !2057
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !2057
  %24 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2059
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !2060

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1798, metadata !DIExpression()) #7, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %33, metadata !1799, metadata !DIExpression()) #7, !dbg !2055
  %35 = and i64 %33, 1, !dbg !2061
  %36 = icmp eq i64 %35, 0, !dbg !2062
  br i1 %36, label %37, label %48, !dbg !2063

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1799, metadata !DIExpression()) #7, !dbg !2055
  %39 = or i64 %38, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %39, metadata !1800, metadata !DIExpression()) #7, !dbg !2065
  call void @llvm.dbg.value(metadata i64* %19, metadata !504, metadata !DIExpression()) #7, !dbg !2066
  call void @llvm.dbg.value(metadata i64* undef, metadata !509, metadata !DIExpression()) #7, !dbg !2066
  call void @llvm.dbg.value(metadata i64* undef, metadata !510, metadata !DIExpression()) #7, !dbg !2066
  %40 = cmpxchg weak i64* %19, i64 %38, i64 %39 acquire monotonic, !dbg !2068
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !2068
  br i1 %41, label %80, label %42, !dbg !2068

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %34, metadata !1798, metadata !DIExpression()) #7, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %43, metadata !1799, metadata !DIExpression()) #7, !dbg !2055
  %44 = and i64 %43, 1, !dbg !2061
  %45 = icmp eq i64 %44, 0, !dbg !2062
  br i1 %45, label %37, label %46, !dbg !2063

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !2068
  br label %48, !dbg !2069

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !2055
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !518, metadata !DIExpression()) #7, !dbg !2071
  %50 = icmp sgt i32 %34, 0, !dbg !2069
  br i1 %50, label %51, label %56, !dbg !2072

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !1798, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2055
  %52 = icmp eq i32 %34, 1, !dbg !2073
  br i1 %52, label %56, label %53, !dbg !2074

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %54, metadata !1798, metadata !DIExpression()) #7, !dbg !2055
  call void @halide_thread_yield() #6, !dbg !2076
  call void @llvm.dbg.value(metadata i64* %19, metadata !485, metadata !DIExpression()) #7, !dbg !2077
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !2077
  %55 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2079
  br label %71, !dbg !2080

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1799, metadata !DIExpression()) #7, !dbg !2055
  %58 = and i64 %49, 2, !dbg !2081
  %59 = icmp eq i64 %58, 0, !dbg !2082
  br i1 %59, label %60, label %66, !dbg !2083

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !1799, metadata !DIExpression()) #7, !dbg !2055
  %61 = or i64 %49, 2, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %61, metadata !1804, metadata !DIExpression()) #7, !dbg !2085
  call void @llvm.dbg.value(metadata i64* %19, metadata !1620, metadata !DIExpression()) #7, !dbg !2086
  call void @llvm.dbg.value(metadata i64* undef, metadata !1623, metadata !DIExpression()) #7, !dbg !2086
  call void @llvm.dbg.value(metadata i64* undef, metadata !1624, metadata !DIExpression()) #7, !dbg !2086
  %62 = cmpxchg weak i64* %19, i64 %49, i64 %61 monotonic monotonic, !dbg !2088
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !2088
  br i1 %63, label %66, label %64, !dbg !2088

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !2088
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2089
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1807, metadata !DIExpression()) #7, !dbg !2090
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1732, metadata !DIExpression()) #7, !dbg !2091
  call void @llvm.dbg.value(metadata i64* %19, metadata !1735, metadata !DIExpression()) #7, !dbg !2091
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1738, metadata !DIExpression()) #7, !dbg !2093
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 8, !dbg !2095, !tbaa !1125
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !2096, !tbaa !1498
  store i64* %19, i64** %30, align 8, !dbg !2097, !tbaa !1534
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !2098, !tbaa !1078
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %28, align 8, !dbg !2099, !tbaa !1209
  %67 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #6, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %67, metadata !1808, metadata !DIExpression()) #7, !dbg !2101
  %68 = icmp eq i64 %67, %17, !dbg !2102
  br i1 %68, label %74, label %69, !dbg !2103

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !1798, metadata !DIExpression()) #7, !dbg !2055
  call void @llvm.dbg.value(metadata i64* %19, metadata !485, metadata !DIExpression()) #7, !dbg !2104
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !2104
  %70 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2107
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !2055, !llvm.loop !2108

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2107
  br label %80

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2026, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2011, metadata !DIExpression()) #7, !dbg !2017
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64* %19, metadata !485, metadata !DIExpression()) #7, !dbg !2109
  call void @llvm.dbg.value(metadata i64* undef, metadata !492, metadata !DIExpression()) #7, !dbg !2109
  %76 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %76, metadata !2014, metadata !DIExpression()) #7, !dbg !2112
  %77 = and i64 %76, 1, !dbg !2113
  %78 = icmp eq i64 %77, 0, !dbg !2113
  br i1 %78, label %79, label %80, !dbg !2116

79:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2117
  call void @abort() #6, !dbg !2117
  br label %80, !dbg !2117

80:                                               ; preds = %37, %20, %74, %75, %79
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2119
  ret void, !dbg !2120
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #6, !dbg !2128
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2129
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2126, metadata !DIExpression()), !dbg !2127
  %4 = icmp eq i8* %2, null, !dbg !2130
  br i1 %4, label %14, label %5, !dbg !2132

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !2133
  %7 = shl nsw i64 %6, 3, !dbg !2134
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #6, !dbg !2135
  %9 = bitcast i8* %2 to i8**, !dbg !2136
  store i8* %8, i8** %9, align 8, !dbg !2136, !tbaa !2137
  %10 = icmp eq i8* %8, null, !dbg !2139
  br i1 %10, label %11, label %12, !dbg !2141

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2142
  br label %14, !dbg !2144

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #6, !dbg !2145
  br label %14, !dbg !2146

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !2127
  ret %struct.halide_mutex_array* %15, !dbg !2147
}

declare !dbg !2148 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

declare !dbg !2151 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !2154 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2157 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()), !dbg !2162
  %3 = bitcast i8* %1 to i8**, !dbg !2163
  %4 = load i8*, i8** %3, align 8, !dbg !2163, !tbaa !2137
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2164
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2165
  ret void, !dbg !2166
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2167 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2173
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2174
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2174, !tbaa !2137
  %5 = sext i32 %1 to i64, !dbg !2175
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2175
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #8, !dbg !2176
  ret i32 0, !dbg !2177
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2178 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2180, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %1, metadata !2181, metadata !DIExpression()), !dbg !2182
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2183
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2183, !tbaa !2137
  %5 = sext i32 %1 to i64, !dbg !2184
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2184
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #8, !dbg !2185
  ret i32 0, !dbg !2186
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #5 !dbg !2187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2191, metadata !DIExpression()), !dbg !2192
  %2 = icmp sgt i32 %0, 256, !dbg !2193
  br i1 %2, label %6, label %3, !dbg !2195

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2196
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2196
  ret i32 %5, !dbg !2196

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2191, metadata !DIExpression()), !dbg !2192
  ret i32 256, !dbg !2197
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #0 !dbg !2198 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2202, metadata !DIExpression()), !dbg !2204
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2205
  call void @llvm.dbg.value(metadata i8* %1, metadata !2203, metadata !DIExpression()), !dbg !2204
  %2 = icmp eq i8* %1, null, !dbg !2206
  br i1 %2, label %3, label %6, !dbg !2208

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %4, metadata !2203, metadata !DIExpression()), !dbg !2204
  %5 = icmp eq i8* %4, null, !dbg !2211
  br i1 %5, label %9, label %6, !dbg !2213

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %8, metadata !2202, metadata !DIExpression()), !dbg !2204
  br label %11, !dbg !2216

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %10, metadata !2202, metadata !DIExpression()), !dbg !2204
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2219
  call void @llvm.dbg.value(metadata i32 %12, metadata !2202, metadata !DIExpression()), !dbg !2204
  ret i32 %12, !dbg !2220
}

declare !dbg !2221 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !2224 dso_local i32 @atoi(i8*) local_unnamed_addr #3

declare !dbg !2227 extern_weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2228 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2232, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 40, metadata !2234, metadata !DIExpression()), !dbg !2258
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !2259
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !2265

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !2266
  call void @llvm.dbg.value(metadata i32 %11, metadata !2233, metadata !DIExpression()), !dbg !2258
  br i1 %3, label %15, label %12, !dbg !2267

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2262, metadata !DIExpression()), !dbg !2268
  %13 = load i32, i32* %4, align 8, !dbg !2269, !tbaa !2270
  %14 = icmp eq i32 %13, 0, !dbg !2274
  br i1 %14, label %18, label %21, !dbg !2275

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !2276, !tbaa !2277, !range !600
  %17 = icmp eq i8 %16, 0, !dbg !2276
  br i1 %17, label %48, label %417, !dbg !2265

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !2259, !tbaa !2281
  %20 = icmp eq i32 %19, 0, !dbg !2259
  br i1 %20, label %417, label %21, !dbg !2265

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2282, !tbaa !2283
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2236, metadata !DIExpression()), !dbg !2284
  %23 = load i32, i32* %5, align 4, !dbg !2285, !tbaa !2289
  %24 = icmp eq i32 %23, 0, !dbg !2290
  br i1 %24, label %38, label %25, !dbg !2291

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2292, !tbaa !2281
  %27 = icmp eq i32 %26, 0, !dbg !2295
  br i1 %27, label %28, label %46, !dbg !2296

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2238, metadata !DIExpression()), !dbg !2284
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2297
  br i1 %29, label %35, label %30, !dbg !2299

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2236, metadata !DIExpression()), !dbg !2284
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2300
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2238, metadata !DIExpression()), !dbg !2284
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2302, !tbaa !2303
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2236, metadata !DIExpression()), !dbg !2284
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2297
  br i1 %34, label %35, label %30, !dbg !2299, !llvm.loop !2304

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2284
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2306, !tbaa !2303
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2307, !tbaa !448
  store i32 0, i32* %4, align 8, !dbg !2308, !tbaa !2270
  br label %402, !dbg !2309

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2310, !tbaa !2312
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2313
  br i1 %40, label %46, label %41, !dbg !2314

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2315
  %43 = load i32, i32* %42, align 4, !dbg !2315, !tbaa !2289
  %44 = icmp eq i32 %43, 0, !dbg !2316
  br i1 %44, label %46, label %45, !dbg !2317

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2318, !tbaa !2289
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2320
  br label %402, !dbg !2321

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2238, metadata !DIExpression()), !dbg !2284
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2322
  br i1 %47, label %196, label %51, !dbg !2323

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2282, !tbaa !2283
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2238, metadata !DIExpression()), !dbg !2284
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2322
  br i1 %50, label %206, label %52, !dbg !2323

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2323

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2324

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2238, metadata !DIExpression()), !dbg !2284
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2325
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2325, !tbaa !2312
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2242, metadata !DIExpression()), !dbg !2326
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2327
  br i1 %59, label %75, label %60, !dbg !2324

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2329
  %62 = load i32, i32* %61, align 8, !dbg !2329, !tbaa !2281
  %63 = icmp eq i32 %62, 0, !dbg !2332
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2333
  %65 = load i32, i32* %64, align 4, !dbg !2333, !tbaa !2334
  br i1 %63, label %71, label %66, !dbg !2335

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2336
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2338
  %69 = load i32, i32* %68, align 8, !dbg !2338, !tbaa !2339
  %70 = sub nsw i32 %67, %69, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %70, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2341
  %73 = load i32, i32* %72, align 8, !dbg !2341, !tbaa !2339
  %74 = sub nsw i32 %65, %73, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %74, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %80, !dbg !2344

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2345, !tbaa !2347
  %77 = add nsw i32 %76, 1, !dbg !2348
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2349, !tbaa !2350
  %79 = sub i32 %77, %78, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %79, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %80, !dbg !2352

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2353
  call void @llvm.dbg.value(metadata i32 %81, metadata !2243, metadata !DIExpression()), !dbg !2326
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2354
  %83 = load i32, i32* %82, align 4, !dbg !2354, !tbaa !2334
  %84 = icmp sge i32 %81, %83, !dbg !2355
  call void @llvm.dbg.value(metadata i1 %84, metadata !2240, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  call void @llvm.dbg.value(metadata i1 true, metadata !2244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2356
  %86 = load i8, i8* %85, align 8, !dbg !2356, !tbaa !2357, !range !600
  %87 = icmp eq i8 %86, 0, !dbg !2356
  br i1 %87, label %92, label %88, !dbg !2358

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2359
  %90 = load i32, i32* %89, align 8, !dbg !2359, !tbaa !2281
  %91 = icmp eq i32 %90, 0, !dbg !2360
  br label %92, !dbg !2358

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !2245, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %94 = and i1 %93, %84, !dbg !2361
  br i1 %94, label %95, label %117, !dbg !2361

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2363, metadata !DIExpression()) #7, !dbg !2366
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2370
  %97 = load i32, i32* %96, align 8, !dbg !2370, !tbaa !2373
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2374
  %99 = load i32, i32* %98, align 8, !dbg !2374, !tbaa !2375
  %100 = icmp slt i32 %97, %99, !dbg !2376
  br i1 %100, label %101, label %225, !dbg !2377

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2377

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2378, !tbaa !2381
  %106 = sext i32 %104 to i64, !dbg !2382
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2383
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 8, !dbg !2383, !tbaa !2384
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2386
  %110 = load i32, i32* %109, align 8, !dbg !2386, !tbaa !2387
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %110) #6, !dbg !2388
  br i1 %111, label %112, label %117, !dbg !2389

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2390, !tbaa !2373
  %114 = add nsw i32 %113, 1, !dbg !2390
  store i32 %114, i32* %96, align 8, !dbg !2390, !tbaa !2373
  %115 = load i32, i32* %98, align 8, !dbg !2374, !tbaa !2375
  %116 = icmp slt i32 %114, %115, !dbg !2376
  br i1 %116, label %103, label %225, !dbg !2377, !llvm.loop !2391

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2393
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !2238, metadata !DIExpression()), !dbg !2284
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2394, !tbaa !2303
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !2236, metadata !DIExpression()), !dbg !2284
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2322
  br i1 %120, label %196, label %54, !dbg !2323

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !2238, metadata !DIExpression()), !dbg !2284
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2325
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2325, !tbaa !2312
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !2242, metadata !DIExpression()), !dbg !2326
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2327
  br i1 %126, label %127, label %132, !dbg !2324

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2345, !tbaa !2347
  %129 = add nsw i32 %128, 1, !dbg !2348
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2349, !tbaa !2350
  %131 = sub i32 %129, %130, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %131, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %147, !dbg !2352

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2329
  %134 = load i32, i32* %133, align 8, !dbg !2329, !tbaa !2281
  %135 = icmp eq i32 %134, 0, !dbg !2332
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2333
  %137 = load i32, i32* %136, align 4, !dbg !2333, !tbaa !2334
  br i1 %135, label %138, label %142, !dbg !2335

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2341
  %140 = load i32, i32* %139, align 8, !dbg !2341, !tbaa !2339
  %141 = sub nsw i32 %137, %140, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %141, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %147, !dbg !2344

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2336
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2338
  %145 = load i32, i32* %144, align 8, !dbg !2338, !tbaa !2339
  %146 = sub nsw i32 %143, %145, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %146, metadata !2243, metadata !DIExpression()), !dbg !2326
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2353
  call void @llvm.dbg.value(metadata i32 %148, metadata !2243, metadata !DIExpression()), !dbg !2326
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2354
  %150 = load i32, i32* %149, align 4, !dbg !2354, !tbaa !2334
  %151 = icmp slt i32 %148, %150, !dbg !2355
  call void @llvm.dbg.value(metadata i1 %151, metadata !2240, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2395
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2395, !tbaa !2396
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2397, !tbaa !2396
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2398
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2356
  %158 = load i8, i8* %157, align 8, !dbg !2356, !tbaa !2357, !range !600
  %159 = icmp eq i8 %158, 0, !dbg !2356
  br i1 %159, label %164, label %160, !dbg !2358

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2359
  %162 = load i32, i32* %161, align 8, !dbg !2359, !tbaa !2281
  %163 = icmp eq i32 %162, 0, !dbg !2360
  br label %164, !dbg !2358

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !2245, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %166 = and i1 %156, %155, !dbg !2361
  %167 = or i1 %151, %166, !dbg !2361
  %168 = xor i1 %165, true, !dbg !2361
  %169 = or i1 %167, %168, !dbg !2361
  br i1 %169, label %192, label %170, !dbg !2361

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2363, metadata !DIExpression()) #7, !dbg !2366
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2370
  %172 = load i32, i32* %171, align 8, !dbg !2370, !tbaa !2373
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2374
  %174 = load i32, i32* %173, align 8, !dbg !2374, !tbaa !2375
  %175 = icmp slt i32 %172, %174, !dbg !2376
  br i1 %175, label %176, label %225, !dbg !2377

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2377

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2378, !tbaa !2381
  %181 = sext i32 %179 to i64, !dbg !2382
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2383
  %183 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %182, align 8, !dbg !2383, !tbaa !2384
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2386
  %185 = load i32, i32* %184, align 8, !dbg !2386, !tbaa !2387
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %183, i32 %185) #6, !dbg !2388
  br i1 %186, label %187, label %192, !dbg !2389

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2390, !tbaa !2373
  %189 = add nsw i32 %188, 1, !dbg !2390
  store i32 %189, i32* %171, align 8, !dbg !2390, !tbaa !2373
  %190 = load i32, i32* %173, align 8, !dbg !2374, !tbaa !2375
  %191 = icmp slt i32 %189, %190, !dbg !2376
  br i1 %191, label %178, label %225, !dbg !2377, !llvm.loop !2391

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2393
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !2238, metadata !DIExpression()), !dbg !2284
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2394, !tbaa !2303
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !2236, metadata !DIExpression()), !dbg !2284
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2322
  br i1 %195, label %196, label %121, !dbg !2323

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2238, metadata !DIExpression()), !dbg !2284
  br i1 %3, label %206, label %197, !dbg !2399

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %198, metadata !2233, metadata !DIExpression()), !dbg !2258
  %199 = icmp slt i32 %11, 40, !dbg !2406
  br i1 %199, label %200, label %201, !dbg !2407

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2408
  tail call void @halide_thread_yield() #6, !dbg !2410
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2411
  br label %402, !dbg !2412

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2413, !tbaa !2415
  %203 = add nsw i32 %202, 1, !dbg !2413
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2413, !tbaa !2415
  store i8 1, i8* %8, align 4, !dbg !2416, !tbaa !2417
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2418
  store i8 0, i8* %8, align 4, !dbg !2419, !tbaa !2417
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2420, !tbaa !2415
  %205 = add nsw i32 %204, -1, !dbg !2420
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2420, !tbaa !2415
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2421, !tbaa !2423
  %208 = add nsw i32 %207, 1, !dbg !2421
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2421, !tbaa !2423
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2424, !tbaa !2426
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2427, !tbaa !2428
  %211 = icmp sgt i32 %209, %210, !dbg !2429
  br i1 %211, label %212, label %216, !dbg !2430

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2431
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2431, !tbaa !2426
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2433
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2434, !tbaa !2426
  %215 = add nsw i32 %214, 1, !dbg !2434
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2434, !tbaa !2426
  br label %221, !dbg !2435

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %217, metadata !2233, metadata !DIExpression()), !dbg !2258
  %218 = icmp slt i32 %11, 40, !dbg !2438
  br i1 %218, label %219, label %220, !dbg !2439

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2440
  tail call void @halide_thread_yield() #6, !dbg !2442
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2443
  br label %221, !dbg !2444

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2445
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !2258
  call void @llvm.dbg.value(metadata i32 %222, metadata !2233, metadata !DIExpression()), !dbg !2258
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2447, !tbaa !2423
  %224 = add nsw i32 %223, -1, !dbg !2447
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2447, !tbaa !2423
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2448, !tbaa !2373
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2236, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !2238, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()), !dbg !2258
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2449
  %230 = load i32, i32* %229, align 8, !dbg !2450, !tbaa !2281
  %231 = add nsw i32 %230, 1, !dbg !2450
  store i32 %231, i32* %229, align 8, !dbg !2450, !tbaa !2281
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2451
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2451, !tbaa !2312
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2453
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2454
  %236 = load i32, i32* %235, align 4, !dbg !2454, !tbaa !2334
  br i1 %234, label %237, label %240, !dbg !2455

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2456, !tbaa !2350
  %239 = add nsw i32 %238, %236, !dbg !2456
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2456, !tbaa !2350
  br label %244, !dbg !2458

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2459
  %242 = load i32, i32* %241, align 8, !dbg !2461, !tbaa !2339
  %243 = add nsw i32 %242, %236, !dbg !2461
  store i32 %243, i32* %241, align 8, !dbg !2461, !tbaa !2339
  br label %244

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2284
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2462
  %246 = load i8, i8* %245, align 8, !dbg !2462, !tbaa !2357, !range !600
  %247 = icmp eq i8 %246, 0, !dbg !2462
  br i1 %247, label %323, label %248, !dbg !2463

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2464
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2464, !tbaa !2303
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2465, !tbaa !448
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2247, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 1, metadata !2250, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2284
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %259 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  br label %260, !dbg !2468

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2247, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %261, metadata !2250, metadata !DIExpression()), !dbg !2467
  %263 = load i32, i32* %251, align 8, !dbg !2469, !tbaa !2270
  %264 = sub nsw i32 %263, %262, !dbg !2471
  %265 = icmp sgt i32 %264, %261, !dbg !2472
  br i1 %265, label %266, label %297, !dbg !2473

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2474, !tbaa !2373
  %268 = load i32, i32* %253, align 8, !dbg !2476, !tbaa !2375
  br label %269, !dbg !2477

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2476
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2474
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !2250, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2363, metadata !DIExpression()) #7, !dbg !2478
  %274 = icmp slt i32 %272, %271, !dbg !2479
  br i1 %274, label %275, label %291, !dbg !2480

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2481, !tbaa !2381
  %278 = sext i32 %276 to i64, !dbg !2482
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2483
  %280 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %279, align 8, !dbg !2483, !tbaa !2384
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2484
  %282 = load i32, i32* %281, align 8, !dbg !2484, !tbaa !2387
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %280, i32 %282) #6, !dbg !2485
  br i1 %283, label %284, label %297, !dbg !2486

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2487, !tbaa !2373
  %286 = add nsw i32 %285, 1, !dbg !2487
  store i32 %286, i32* %252, align 8, !dbg !2487, !tbaa !2373
  %287 = load i32, i32* %253, align 8, !dbg !2476, !tbaa !2375
  %288 = icmp slt i32 %286, %287, !dbg !2479
  br i1 %288, label %275, label %289, !dbg !2480, !llvm.loop !2488

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2469, !tbaa !2270
  br label %291, !dbg !2490

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2469
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2490, !tbaa !2373
  %294 = add nuw nsw i32 %273, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %294, metadata !2250, metadata !DIExpression()), !dbg !2467
  %295 = sub nsw i32 %292, %262, !dbg !2471
  %296 = icmp sgt i32 %295, %294, !dbg !2472
  br i1 %296, label %269, label %300, !dbg !2473, !llvm.loop !2493

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2495
  br i1 %299, label %310, label %300, !dbg !2497

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %255, align 8, !dbg !2498, !tbaa !2499
  %303 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %256, align 8, !dbg !2500, !tbaa !2501
  %304 = load i32, i32* %257, align 4, !dbg !2502, !tbaa !2503
  %305 = add nsw i32 %304, %262, !dbg !2504
  %306 = load i8*, i8** %258, align 8, !dbg !2505, !tbaa !2506
  %307 = tail call i32 @halide_do_loop_task(i8* %302, i32 (i8*, i32, i32, i8*, i8*)* %303, i32 %305, i32 %301, i8* %306, i8* nonnull %259) #8, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %307, metadata !2246, metadata !DIExpression()), !dbg !2284
  %308 = add nuw nsw i32 %301, %262, !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %308, metadata !2247, metadata !DIExpression()), !dbg !2467
  %309 = icmp eq i32 %307, 0, !dbg !2509
  br i1 %309, label %260, label %310, !dbg !2468, !llvm.loop !2510

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2284
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2467
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2512
  %314 = load i32, i32* %257, align 4, !dbg !2513, !tbaa !2503
  %315 = add nsw i32 %314, %313, !dbg !2513
  store i32 %315, i32* %257, align 4, !dbg !2513, !tbaa !2503
  %316 = load i32, i32* %251, align 8, !dbg !2514, !tbaa !2270
  %317 = sub nsw i32 %316, %313, !dbg !2514
  store i32 %317, i32* %251, align 8, !dbg !2514, !tbaa !2270
  br i1 %311, label %319, label %318, !dbg !2515

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2516, !tbaa !2270
  call void @llvm.dbg.value(metadata i32 %350, metadata !2246, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2284
  br label %352, !dbg !2519

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2520
  br i1 %320, label %321, label %382, !dbg !2522

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2523, !tbaa !2283
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2525, !tbaa !2303
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2526, !tbaa !2283
  br label %382, !dbg !2527

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2528
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2528, !tbaa.struct !2529
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !2251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2532
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2528
  %327 = load i8*, i8** %326, align 8, !dbg !2528, !tbaa.struct !2533
  call void @llvm.dbg.value(metadata i8* %327, metadata !2251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2532
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2528
  %329 = load i32, i32* %328, align 4, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %329, metadata !2251, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2532
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2528
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2528, !tbaa.struct !2534
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !2251, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2532
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2528
  %333 = load i8*, i8** %332, align 8, !dbg !2528, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata i8* %333, metadata !2251, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2532
  %334 = add nsw i32 %329, 1, !dbg !2536
  store i32 %334, i32* %328, align 4, !dbg !2536, !tbaa !2503
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2537
  %336 = load i32, i32* %335, align 8, !dbg !2538, !tbaa !2270
  %337 = add nsw i32 %336, -1, !dbg !2538
  store i32 %337, i32* %335, align 8, !dbg !2538, !tbaa !2270
  %338 = icmp eq i32 %337, 0, !dbg !2539
  br i1 %338, label %339, label %342, !dbg !2541

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2542
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2542, !tbaa !2303
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2544, !tbaa !448
  br label %342, !dbg !2545

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2546
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2547
  br i1 %343, label %346, label %344, !dbg !2549

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #8, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %345, metadata !2246, metadata !DIExpression()), !dbg !2284
  br label %349, !dbg !2552

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2553
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #8, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %348, metadata !2246, metadata !DIExpression()), !dbg !2284
  br label %349

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2556
  call void @llvm.dbg.value(metadata i32 %350, metadata !2246, metadata !DIExpression()), !dbg !2284
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2284
  %351 = icmp eq i32 %350, 0, !dbg !2558
  br i1 %351, label %382, label %352, !dbg !2519

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2559
  store i32 %353, i32* %354, align 4, !dbg !2560, !tbaa !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2284
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2562
  %356 = load i32, i32* %355, align 8, !dbg !2562, !tbaa !2564
  %357 = icmp sgt i32 %356, 0, !dbg !2565
  br i1 %357, label %358, label %382, !dbg !2566

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2396
  %361 = zext i32 %356 to i64, !dbg !2565
  br label %362, !dbg !2566

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !2254, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 %364, metadata !2253, metadata !DIExpression()), !dbg !2284
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2567
  %366 = load i32, i32* %365, align 4, !dbg !2567, !tbaa !2289
  %367 = icmp eq i32 %366, 0, !dbg !2570
  br i1 %367, label %368, label %378, !dbg !2571

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2572, !tbaa !2289
  %369 = load i32, i32* %229, align 8, !dbg !2574, !tbaa !2281
  %370 = icmp eq i32 %369, 0, !dbg !2575
  br i1 %370, label %371, label %374, !dbg !2576

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2577
  %373 = load i8, i8* %372, align 4, !dbg !2577, !tbaa !2417, !range !600
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2578
  %376 = and i8 %364, 1, !dbg !2579
  %377 = or i8 %375, %376, !dbg !2579
  call void @llvm.dbg.value(metadata i8 %377, metadata !2253, metadata !DIExpression()), !dbg !2284
  br label %378, !dbg !2580

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2284
  call void @llvm.dbg.value(metadata i8 %379, metadata !2253, metadata !DIExpression()), !dbg !2284
  %380 = add nuw nsw i64 %363, 1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %380, metadata !2254, metadata !DIExpression()), !dbg !2561
  %381 = icmp eq i64 %380, %361, !dbg !2565
  br i1 %381, label %382, label %362, !dbg !2566, !llvm.loop !2582

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2584
  call void @llvm.dbg.value(metadata i8 %383, metadata !2253, metadata !DIExpression()), !dbg !2284
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2585, !tbaa !2312
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2587
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2588
  %387 = load i32, i32* %386, align 4, !dbg !2588, !tbaa !2334
  br i1 %385, label %388, label %391, !dbg !2589

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2590, !tbaa !2350
  %390 = sub nsw i32 %389, %387, !dbg !2590
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2590, !tbaa !2350
  br label %395, !dbg !2592

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2593
  %393 = load i32, i32* %392, align 8, !dbg !2595, !tbaa !2339
  %394 = sub nsw i32 %393, %387, !dbg !2595
  store i32 %394, i32* %392, align 8, !dbg !2595, !tbaa !2339
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2596, !tbaa !2281
  %397 = add nsw i32 %396, -1, !dbg !2596
  store i32 %397, i32* %229, align 8, !dbg !2596, !tbaa !2281
  %398 = and i8 %383, 1, !dbg !2597
  %399 = icmp eq i8 %398, 0, !dbg !2597
  br i1 %399, label %400, label %416, !dbg !2599

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2600
  br i1 %401, label %404, label %402, !dbg !2601

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !2258, !llvm.loop !2602

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2604
  %406 = load i32, i32* %405, align 8, !dbg !2604, !tbaa !2270
  %407 = icmp eq i32 %406, 0, !dbg !2605
  br i1 %407, label %412, label %408, !dbg !2606

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2607
  %410 = load i32, i32* %409, align 4, !dbg !2607, !tbaa !2289
  %411 = icmp eq i32 %410, 0, !dbg !2608
  br i1 %411, label %402, label %412, !dbg !2609

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2610
  %414 = load i8, i8* %413, align 4, !dbg !2610, !tbaa !2417, !range !600
  %415 = icmp eq i8 %414, 0, !dbg !2610
  br i1 %415, label %402, label %416, !dbg !2611

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2612
  br label %402, !dbg !2614

417:                                              ; preds = %15, %18
  ret void, !dbg !2615
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2616 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %2, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %3, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %4, metadata !2622, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %5, metadata !2623, metadata !DIExpression()), !dbg !2624
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !2625, !tbaa !448
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2625
  ret i32 %8, !dbg !2626
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %2, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* %3, metadata !2632, metadata !DIExpression()), !dbg !2633
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !2634, !tbaa !448
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2635
  ret i32 %6, !dbg !2636
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 !dbg !2637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()), !dbg !2640
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2641
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2642
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2643
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2644
  ret void, !dbg !2645
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2651, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2652, metadata !DIExpression()), !dbg !2663
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2664, !tbaa !2666, !range !600
  %5 = icmp eq i8 %4, 0, !dbg !2664
  br i1 %5, label %6, label %25, !dbg !2667

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2668, metadata !DIExpression()) #7, !dbg !2674
  %8 = load i8, i8* %7, align 1, !dbg !2677, !tbaa !2678
  %9 = icmp eq i8 %8, 0, !dbg !2679
  br i1 %9, label %10, label %13, !dbg !2680

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %11, metadata !2668, metadata !DIExpression()) #7, !dbg !2674
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2683
  br i1 %12, label %13, label %6, !dbg !2684, !llvm.loop !2685

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2674
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), !dbg !2687
  br i1 %15, label %17, label %16, !dbg !2690

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2691
  tail call void @abort() #6, !dbg !2691
  br label %17, !dbg !2691

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2693, !tbaa !2695
  %19 = icmp eq i32 %18, 0, !dbg !2696
  br i1 %19, label %20, label %22, !dbg !2697

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !2698
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2700, !tbaa !2695
  br label %22, !dbg !2701

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2702
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #8, !dbg !2703
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2704, !tbaa !2695
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2705, !tbaa !2666
  br label %25, !dbg !2706

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 -1, metadata !2654, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()), !dbg !2707
  %26 = icmp sgt i32 %0, 0, !dbg !2708
  br i1 %26, label %27, label %31, !dbg !2710

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2708
  br label %38, !dbg !2710

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2711
  br label %31, !dbg !2711

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2663
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2663
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2713
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2714
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2711
  br i1 %37, label %68, label %100, !dbg !2715

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %39, metadata !2658, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %41, metadata !2657, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %42, metadata !2656, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %43, metadata !2655, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %44, metadata !2654, metadata !DIExpression()), !dbg !2663
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2716
  %46 = load i32, i32* %45, align 4, !dbg !2716, !tbaa !2334
  %47 = icmp eq i32 %46, 0, !dbg !2719
  %48 = add i32 %46, %40, !dbg !2720
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2720
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %48, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %50, metadata !2657, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %49, metadata !2655, metadata !DIExpression()), !dbg !2663
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2721
  %52 = load i32, i32* %51, align 8, !dbg !2721, !tbaa !2375
  %53 = icmp eq i32 %52, 0, !dbg !2723
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2724
  call void @llvm.dbg.value(metadata i8 %54, metadata !2656, metadata !DIExpression()), !dbg !2663
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !2725
  %56 = load i8, i8* %55, align 8, !dbg !2725, !tbaa !2357, !range !600
  %57 = icmp eq i8 %56, 0, !dbg !2725
  br i1 %57, label %60, label %58, !dbg !2727

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i32 %59, metadata !2654, metadata !DIExpression()), !dbg !2663
  br label %64, !dbg !2730

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !2731
  %62 = load i32, i32* %61, align 8, !dbg !2731, !tbaa !2270
  %63 = add nsw i32 %62, %44, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %63, metadata !2654, metadata !DIExpression()), !dbg !2663
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !2734
  call void @llvm.dbg.value(metadata i32 %65, metadata !2654, metadata !DIExpression()), !dbg !2663
  %66 = add nuw nsw i64 %39, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %48, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %66, metadata !2658, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %50, metadata !2657, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %54, metadata !2656, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %49, metadata !2655, metadata !DIExpression()), !dbg !2663
  %67 = icmp eq i64 %66, %28, !dbg !2708
  br i1 %67, label %29, label %38, !dbg !2710, !llvm.loop !2736

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !2738
  %70 = and i8 %69, 1, !dbg !2738
  %71 = icmp eq i8 %70, 0, !dbg !2738
  %72 = xor i1 %71, true, !dbg !2738
  %73 = zext i1 %72 to i32, !dbg !2738
  %74 = add nsw i32 %36, %73, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %74, metadata !2653, metadata !DIExpression()), !dbg !2663
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2741, !tbaa !2347
  %76 = icmp slt i32 %75, 256, !dbg !2742
  br i1 %76, label %77, label %96, !dbg !2743

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2744, !tbaa !2695
  %80 = add nsw i32 %79, -1, !dbg !2745
  %81 = icmp slt i32 %78, %80, !dbg !2746
  br i1 %81, label %87, label %82, !dbg !2747

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !2748
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2749, !tbaa !2350
  %85 = sub i32 %83, %84, !dbg !2750
  %86 = icmp slt i32 %85, %74, !dbg !2751
  br i1 %86, label %87, label %96, !dbg !2752

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2753, !tbaa !2426
  %89 = add nsw i32 %88, 1, !dbg !2753
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2753, !tbaa !2426
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #8, !dbg !2755
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2756, !tbaa !2347
  %92 = add nsw i32 %91, 1, !dbg !2756
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2756, !tbaa !2347
  %93 = sext i32 %91 to i64, !dbg !2757
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %93, !dbg !2757
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !2758, !tbaa !448
  %95 = icmp slt i32 %91, 255, !dbg !2742
  br i1 %95, label %77, label %96, !dbg !2743, !llvm.loop !2759

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !2761

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2763, !tbaa !2350
  %99 = add nsw i32 %98, 1, !dbg !2763
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2763, !tbaa !2350
  br label %118, !dbg !2765

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !2766
  %102 = load i32, i32* %101, align 4, !dbg !2766, !tbaa !2334
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !2766
  %104 = load i32, i32* %103, align 8, !dbg !2766, !tbaa !2281
  %105 = mul nsw i32 %104, %102, !dbg !2766
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2766
  %107 = load i32, i32* %106, align 8, !dbg !2766, !tbaa !2339
  %108 = sub nsw i32 %105, %107, !dbg !2766
  %109 = icmp sgt i32 %36, %108, !dbg !2766
  br i1 %109, label %110, label %111, !dbg !2770

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2771
  tail call void @abort() #6, !dbg !2771
  br label %111, !dbg !2771

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !2773
  %113 = and i8 %112, 1, !dbg !2773
  %114 = icmp eq i8 %113, 0, !dbg !2773
  br i1 %114, label %118, label %115, !dbg !2773

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !2775, !tbaa !2339
  %117 = add nsw i32 %116, 1, !dbg !2775
  store i32 %117, i32* %106, align 8, !dbg !2775, !tbaa !2339
  br label %118, !dbg !2777

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2778
  br i1 %26, label %119, label %123, !dbg !2779

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2778
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !2283
  %121 = zext i32 %0 to i64, !dbg !2779
  br label %136, !dbg !2779

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2780, !tbaa !2283
  br label %123, !dbg !2779

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2783, !tbaa !2415
  %125 = icmp ne i32 %124, 0, !dbg !2784
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2785
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2785
  %128 = icmp slt i32 %126, %127, !dbg !2785
  %129 = or i1 %125, %128, !dbg !2785
  call void @llvm.dbg.value(metadata i1 %129, metadata !2662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129, !dbg !2786
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !2786
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2788, !tbaa !2428
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !2789
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2790, !tbaa !2428
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2792, !tbaa !2426
  %135 = icmp sgt i32 %133, %134, !dbg !2793
  br i1 %135, label %146, label %149, !dbg !2794

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !2795
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !2795
  %139 = add nsw i64 %137, -1, !dbg !2778
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !2796
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !2797
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !2798, !tbaa !2303
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !2799
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !2800, !tbaa !2396
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !2801
  store i32 %0, i32* %143, align 8, !dbg !2802, !tbaa !2564
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !2803
  store i32 0, i32* %144, align 8, !dbg !2804, !tbaa !2339
  call void @llvm.dbg.value(metadata i64 %139, metadata !2660, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2778
  %145 = icmp sgt i64 %137, 1, !dbg !2805
  br i1 %145, label %136, label %122, !dbg !2779, !llvm.loop !2806

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #8, !dbg !2808
  %147 = icmp eq i8 %33, 0, !dbg !2810
  br i1 %147, label %149, label %148, !dbg !2812

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2813
  br label %149, !dbg !2815

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !2816
  %151 = and i8 %150, 1, !dbg !2816
  %152 = icmp eq i8 %151, 0, !dbg !2816
  br i1 %152, label %161, label %153, !dbg !2816

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !2818

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2820
  %156 = load i32, i32* %155, align 8, !dbg !2823, !tbaa !2339
  %157 = add nsw i32 %156, -1, !dbg !2823
  store i32 %157, i32* %155, align 8, !dbg !2823, !tbaa !2339
  br label %161, !dbg !2824

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2825, !tbaa !2350
  %160 = add nsw i32 %159, -1, !dbg !2825
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2825, !tbaa !2350
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !2827
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %2, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %3, metadata !2833, metadata !DIExpression()), !dbg !2834
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2835
  ret i32 %5, !dbg !2836
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2840, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %2, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %3, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %4, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %5, metadata !2844, metadata !DIExpression()), !dbg !2845
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2846
  ret i32 %7, !dbg !2847
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2848 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2850, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2851, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %2, metadata !2852, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %3, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %4, metadata !2854, metadata !DIExpression()), !dbg !2856
  %7 = icmp slt i32 %3, 1, !dbg !2857
  br i1 %7, label %29, label %8, !dbg !2859

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2860
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2855, metadata !DIExpression()), !dbg !2861
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !2862
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !2863, !tbaa !2501
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !2864
  store i32 %2, i32* %11, align 4, !dbg !2865, !tbaa !2503
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !2866
  store i32 %3, i32* %12, align 8, !dbg !2867, !tbaa !2270
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !2868
  store i8 0, i8* %13, align 8, !dbg !2869, !tbaa !2357
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !2870
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !2871, !tbaa !2381
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !2872
  store i32 0, i32* %15, align 8, !dbg !2873, !tbaa !2375
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !2874
  store i8* %4, i8** %16, align 8, !dbg !2875, !tbaa !2506
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !2876
  store i32 0, i32* %17, align 4, !dbg !2877, !tbaa !2334
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !2878
  store i8* null, i8** %18, align 8, !dbg !2879, !tbaa !2880
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !2881
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !2882, !tbaa !2883
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !2884
  store i8* %0, i8** %20, align 8, !dbg !2885, !tbaa !2499
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !2886
  store i32 0, i32* %21, align 4, !dbg !2887, !tbaa !2289
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !2888
  store i32 0, i32* %22, align 8, !dbg !2889, !tbaa !2281
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !2890
  store i32 0, i32* %23, align 8, !dbg !2891, !tbaa !2373
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !2892
  store i8 0, i8* %24, align 4, !dbg !2893, !tbaa !2417
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !2894
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !2895, !tbaa !2396
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !2896
  store i32 0, i32* %26, align 8, !dbg !2897, !tbaa !2564
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !2898
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !2899, !tbaa !2312
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2900
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2901
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2902
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2903
  %28 = load i32, i32* %21, align 4, !dbg !2904, !tbaa !2289
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2905
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2856
  ret i32 %30, !dbg !2905
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2906 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 %1, metadata !2909, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2910, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2911, metadata !DIExpression()), !dbg !2918
  %5 = sext i32 %1 to i64, !dbg !2919
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !2920
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2912, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 %1, metadata !2909, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2910, metadata !DIExpression()), !dbg !2918
  %7 = icmp sgt i32 %1, 0, !dbg !2922
  br i1 %7, label %11, label %8, !dbg !2924

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %35, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !2925
  br i1 %10, label %56, label %39, !dbg !2927

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %33 ], [ %1, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %34, %33 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !2913, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 %13, metadata !2909, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !2910, metadata !DIExpression()), !dbg !2918
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 0, i32 6, !dbg !2928
  %16 = load i32, i32* %15, align 8, !dbg !2928, !tbaa !2931
  %17 = icmp slt i32 %16, 1, !dbg !2932
  br i1 %17, label %18, label %20, !dbg !2933

18:                                               ; preds = %11
  %19 = add nsw i32 %13, -1, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %19, metadata !2909, metadata !DIExpression()), !dbg !2918
  br label %33, !dbg !2936

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 1, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !2910, metadata !DIExpression()), !dbg !2918
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !2938
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !2939
  %24 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !2939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !2939, !tbaa.struct !2940
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !2941
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !2942, !tbaa !2883
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !2943
  store i8* %0, i8** %26, align 8, !dbg !2944, !tbaa !2499
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !2945
  store i32 0, i32* %27, align 4, !dbg !2946, !tbaa !2289
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !2947
  store i32 0, i32* %28, align 8, !dbg !2948, !tbaa !2281
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !2949
  store i32 0, i32* %29, align 8, !dbg !2950, !tbaa !2373
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !2951
  store i8 0, i8* %30, align 4, !dbg !2952, !tbaa !2417
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !2953
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !2954
  store i8* %3, i8** %32, align 8, !dbg !2954, !tbaa !2312
  br label %33, !dbg !2955

33:                                               ; preds = %20, %18
  %34 = phi %struct.halide_parallel_task_t* [ %14, %18 ], [ %21, %20 ]
  %35 = phi i32 [ %19, %18 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !2909, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %34, metadata !2910, metadata !DIExpression()), !dbg !2918
  %36 = add nuw nsw i64 %12, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %36, metadata !2913, metadata !DIExpression()), !dbg !2921
  %37 = sext i32 %35 to i64, !dbg !2922
  %38 = icmp slt i64 %36, %37, !dbg !2922
  br i1 %38, label %11, label %8, !dbg !2924, !llvm.loop !2957

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2959
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2960
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2916, metadata !DIExpression()), !dbg !2962
  %41 = icmp sgt i32 %9, 0, !dbg !2963
  br i1 %41, label %42, label %44, !dbg !2965

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !2963
  br label %46, !dbg !2965

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !2918
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2966
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !2916, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %48, metadata !2915, metadata !DIExpression()), !dbg !2918
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !2967
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #8, !dbg !2969
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !2970
  %51 = load i32, i32* %50, align 4, !dbg !2970, !tbaa !2289
  %52 = icmp eq i32 %51, 0, !dbg !2972
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %53, metadata !2915, metadata !DIExpression()), !dbg !2918
  %54 = add nuw nsw i64 %47, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %54, metadata !2916, metadata !DIExpression()), !dbg !2962
  %55 = icmp eq i64 %54, %43, !dbg !2963
  br i1 %55, label %44, label %46, !dbg !2965, !llvm.loop !2975

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !2918
  ret i32 %57, !dbg !2977
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2978 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2982, metadata !DIExpression()), !dbg !2983
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2984
  call void @llvm.dbg.value(metadata i32* %3, metadata !2985, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32* undef, metadata !2991, metadata !DIExpression()), !dbg !2994
  store atomic i32 %1, i32* %3 release, align 4, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  ret i32 %1, !dbg !2997
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2998 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %1, metadata !3001, metadata !DIExpression()), !dbg !3005
  %3 = icmp eq i32 %1, 0, !dbg !3006
  br i1 %3, label %20, label %4, !dbg !3008

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3002, metadata !DIExpression()), !dbg !3005
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3009
  call void @llvm.dbg.value(metadata i32* %5, metadata !3010, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32* undef, metadata !3013, metadata !DIExpression()), !dbg !3014
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %6, metadata !3003, metadata !DIExpression()), !dbg !3005
  %7 = sub nsw i32 %6, %1, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %7, metadata !3004, metadata !DIExpression()), !dbg !3005
  %8 = icmp sgt i32 %7, -1, !dbg !3019
  br i1 %8, label %9, label %20, !dbg !3020

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32* %5, metadata !3021, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32* undef, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32* undef, metadata !3027, metadata !DIExpression()), !dbg !3028
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !3030
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !3030
  br i1 %13, label %18, label %14, !dbg !3030

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %15, metadata !3003, metadata !DIExpression()), !dbg !3005
  %16 = sub nsw i32 %15, %1, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %16, metadata !3004, metadata !DIExpression()), !dbg !3005
  %17 = icmp sgt i32 %16, -1, !dbg !3019
  br i1 %17, label %9, label %18, !dbg !3020

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !3030
  br label %20, !dbg !3031

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !3005
  ret i1 %21, !dbg !3031
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3032 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3034, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 %1, metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3036, metadata !DIExpression()), !dbg !3038
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3039
  call void @llvm.dbg.value(metadata i32* %3, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %1, metadata !3045, metadata !DIExpression()), !dbg !3046
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %4, metadata !3037, metadata !DIExpression()), !dbg !3038
  %5 = icmp eq i32 %4, 0, !dbg !3049
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3051
  br i1 %7, label %8, label %9, !dbg !3051

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3052
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !3054
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !3055
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3056
  br label %9, !dbg !3057

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3058
  ret i32 %10, !dbg !3059
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !3060 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !3062
  ret void, !dbg !3063
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !3064 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !3070, !tbaa !2666, !range !600
  %2 = icmp eq i8 %1, 0, !dbg !3070
  br i1 %2, label %16, label %3, !dbg !3071

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3072
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !3073, !tbaa !2277
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !3074
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !3075
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #8, !dbg !3076
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3077
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3078
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3079, !tbaa !2347
  %5 = icmp sgt i32 %4, 0, !dbg !3081
  br i1 %5, label %8, label %6, !dbg !3082

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3083, metadata !DIExpression()) #7, !dbg !3089
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), metadata !3086, metadata !DIExpression()) #7, !dbg !3089
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3087, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #7, !dbg !3089
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i32 0, i64 2116) #6, !dbg !3091
  br label %16, !dbg !3092

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3066, metadata !DIExpression()), !dbg !3078
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %9, !dbg !3093
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !3093, !tbaa !448
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !3095
  %12 = add nuw nsw i64 %9, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %12, metadata !3066, metadata !DIExpression()), !dbg !3078
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3079, !tbaa !2347
  %14 = sext i32 %13 to i64, !dbg !3081
  %15 = icmp slt i64 %12, %14, !dbg !3081
  br i1 %15, label %8, label %6, !dbg !3082, !llvm.loop !3097

16:                                               ; preds = %6, %0
  ret void, !dbg !3099
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !3100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  %2 = icmp slt i32 %0, 0, !dbg !3105
  br i1 %2, label %3, label %4, !dbg !3107

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3108
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3110
  br label %8, !dbg !3111

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3110
  %5 = icmp eq i32 %0, 0, !dbg !3112
  br i1 %5, label %6, label %8, !dbg !3111

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %7, metadata !3102, metadata !DIExpression()), !dbg !3104
  br label %8, !dbg !3116

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3102, metadata !DIExpression()), !dbg !3104
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3117, !tbaa !2695
  call void @llvm.dbg.value(metadata i32 %10, metadata !3103, metadata !DIExpression()), !dbg !3104
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #8, !dbg !3118
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3119, !tbaa !2695
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3120
  ret i32 %10, !dbg !3121
}

declare !dbg !3122 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3123 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3127, metadata !DIExpression()), !dbg !3129
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3130, !tbaa !448
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3128, metadata !DIExpression()), !dbg !3129
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3131, !tbaa !448
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3132
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !3133 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3137, metadata !DIExpression()), !dbg !3139
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3140, !tbaa !448
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3138, metadata !DIExpression()), !dbg !3139
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3141, !tbaa !448
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3142
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3143 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3147, metadata !DIExpression()), !dbg !3149
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3150, !tbaa !448
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3151, !tbaa !448
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3152
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !3153 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3157, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3158, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3159, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3162, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3165, !tbaa !448
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3166, !tbaa !448
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3167, !tbaa !448
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3168, !tbaa !448
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3169, !tbaa !448
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3170, !tbaa !448
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3171, !tbaa !448
  ret void, !dbg !3172
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !3173 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3176, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %2, metadata !3177, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %3, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %4, metadata !3179, metadata !DIExpression()), !dbg !3180
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3181, !tbaa !448
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !3182
  ret i32 %7, !dbg !3183
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !3184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 %1, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %3, metadata !3189, metadata !DIExpression()), !dbg !3190
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3191, !tbaa !448
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !3191
  ret i32 %6, !dbg !3192
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3193 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3198, !tbaa !448
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3198
  ret i32 %4, !dbg !3199
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3200 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()), !dbg !3204
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3205, !tbaa !448
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3205
  ret i32 %4, !dbg !3206
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3207 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3209, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %1, metadata !3210, metadata !DIExpression()), !dbg !3211
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3212, !tbaa !448
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3212
  ret i1 %4, !dbg !3213
}

declare !dbg !3214 dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t*, i8*) local_unnamed_addr #3

declare !dbg !3218 dso_local i32 @pthread_cond_init(%struct.pthread_cond_t*, i8*) local_unnamed_addr #3

declare !dbg !3222 dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3225 dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t*, %struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3228 dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3229 dso_local i32 @pthread_cond_destroy(%struct.pthread_cond_t*) local_unnamed_addr #3

declare !dbg !3232 dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3233 dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!161}
!llvm.module.flags = !{!385, !386, !387}
!llvm.ident = !{!388}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13table_storageE", scope: !2, file: !6, line: 478, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Synchronization", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 196608, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 24576)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "_ZN6Halide7Runtime8Internal10work_queueE", scope: !3, file: !13, line: 166, type: !14, isLocal: false, isDefinition: true)
!13 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !3, file: !13, line: 94, size: 17024, flags: DIFlagTypePassByValue, elements: !15, identifier: "_ZTSN6Halide7Runtime8Internal12work_queue_tE")
!15 = !{!16, !28, !30, !31, !89, !90, !91, !92, !96, !97, !98, !99, !100, !106, !107, !108, !109, !114, !117}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !14, file: !13, line: 96, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !18, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS12halide_mutex")
!18 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !17, file: !18, line: 121, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !26)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 61, baseType: !24)
!23 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 10, baseType: !25)
!25 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 1)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !14, file: !13, line: 99, baseType: !29, size: 32, offset: 64)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !14, file: !13, line: 103, baseType: !29, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !14, file: !13, line: 106, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !3, file: !13, line: 26, size: 1024, flags: DIFlagTypePassByValue, elements: !34, identifier: "_ZTSN6Halide7Runtime8Internal4workE")
!34 = !{!35, !65, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !84}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !33, file: !13, line: 27, baseType: !36, size: 448)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !18, line: 201, size: 448, flags: DIFlagTypePassByValue, elements: !37, identifier: "_ZTS22halide_parallel_task_t")
!37 = !{!38, !47, !48, !51, !59, !60, !61, !62, !63}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !36, file: !18, line: 204, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_loop_task_t", file: !18, line: 192, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!29, !43, !29, !29, !44, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 16, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !36, file: !18, line: 207, baseType: !44, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !18, line: 210, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "semaphores", scope: !36, file: !18, line: 214, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !18, line: 177, size: 128, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTS26halide_semaphore_acquire_t")
!54 = !{!55, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !53, file: !18, line: 178, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !18, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS18halide_semaphore_t")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !53, file: !18, line: 179, baseType: !29, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "num_semaphores", scope: !36, file: !18, line: 215, baseType: !29, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !36, file: !18, line: 219, baseType: !29, size: 32, offset: 288)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !36, file: !18, line: 219, baseType: !29, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "min_threads", scope: !36, file: !18, line: 238, baseType: !29, size: 32, offset: 352)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !36, file: !18, line: 243, baseType: !64, size: 8, offset: 384)
!64 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "task_fn", scope: !33, file: !13, line: 31, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_task_t", file: !18, line: 158, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!29, !43, !29, !44}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_job", scope: !33, file: !13, line: 33, baseType: !32, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !33, file: !13, line: 34, baseType: !32, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_count", scope: !33, file: !13, line: 35, baseType: !29, size: 32, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "parent_job", scope: !33, file: !13, line: 36, baseType: !32, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !33, file: !13, line: 37, baseType: !29, size: 32, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !33, file: !13, line: 39, baseType: !43, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "active_workers", scope: !33, file: !13, line: 40, baseType: !29, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "exit_status", scope: !33, file: !13, line: 41, baseType: !29, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_semaphore", scope: !33, file: !13, line: 42, baseType: !29, size: 32, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "owner_is_sleeping", scope: !33, file: !13, line: 44, baseType: !64, size: 8, offset: 992)
!80 = !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!64, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!84 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!64, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !14, file: !13, line: 109, baseType: !29, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 320)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !18, line: 125, size: 64, flags: DIFlagTypePassByValue, elements: !94, identifier: "_ZTS11halide_cond")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !93, file: !18, line: 126, baseType: !21, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 544)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !14, file: !13, line: 129, baseType: !101, size: 16384, offset: 576)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !18, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 16960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 16968)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !14, file: !13, line: 139, baseType: !29, size: 32, offset: 16992)
!109 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t7runningEv", scope: !14, file: !13, line: 141, type: !110, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!64, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!114 = !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !112}
!117 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "_ZN6Halide7Runtime8Internal14custom_do_taskE", scope: !3, file: !13, line: 567, type: !123, isLocal: false, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !18, line: 259, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!29, !43, !66, !29, !44}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "_ZN6Halide7Runtime8Internal19custom_do_loop_taskE", scope: !3, file: !13, line: 568, type: !129, isLocal: false, isDefinition: true)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !18, line: 268, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!29, !43, !39, !29, !29, !44, !43}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "_ZN6Halide7Runtime8Internal17custom_do_par_forE", scope: !3, file: !13, line: 569, type: !135, isLocal: false, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !18, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!29, !43, !66, !29, !29, !44}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE", scope: !3, file: !13, line: 570, type: !141, isLocal: false, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !18, line: 281, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!29, !43, !29, !145, !43}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "_ZN6Halide7Runtime8Internal21custom_semaphore_initE", scope: !3, file: !13, line: 571, type: !148, isLocal: false, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !18, line: 184, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!29, !56, !29}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE", scope: !3, file: !13, line: 572, type: !154, isLocal: false, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !18, line: 186, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!64, !56, !29}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE", scope: !3, file: !13, line: 573, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !18, line: 185, baseType: !149)
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !373, imports: !381, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!163 = !{}
!164 = !{!165, !102, !22, !177, !229, !264, !265, !305, !330, !340, !311, !350, !363, !367, !32, !368, !300, !49, !372}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !3, file: !167, line: 45, size: 192, flags: DIFlagTypePassByValue, elements: !168, identifier: "_ZTSN6Halide7Runtime8Internal14spawned_threadE")
!167 = !DIFile(filename: "src/runtime/posix_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!168 = !{!169, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !166, file: !167, line: 46, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !166, file: !167, line: 47, baseType: !43, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !167, line: 48, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !167, line: 20, baseType: !176)
!176 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !2, file: !6, line: 254, size: 1280, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !179, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE")
!179 = !{!180, !221, !222, !223, !224, !228}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !178, file: !6, line: 255, baseType: !181, size: 1088)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !2, file: !167, line: 93, size: 1088, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !182, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE")
!182 = !{!183, !190, !194, !195, !201, !205, !209, !212, !215, !216, !217, !218, !219, !220}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !181, file: !167, line: 94, baseType: !184, size: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t", file: !167, line: 12, size: 512, flags: DIFlagTypePassByValue, elements: !185, identifier: "_ZTS15pthread_mutex_t")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !184, file: !167, line: 13, baseType: !187, size: 512)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !181, file: !167, line: 95, baseType: !191, size: 512, offset: 512)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t", file: !167, line: 16, size: 512, flags: DIFlagTypePassByValue, elements: !192, identifier: "_ZTS14pthread_cond_t")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !191, file: !167, line: 17, baseType: !187, size: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !181, file: !167, line: 96, baseType: !64, size: 8, offset: 1024)
!195 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 98, type: !196, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !199}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!201 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSERKS3_", scope: !181, file: !167, line: 99, type: !202, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !198, !199}
!204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!205 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 100, type: !206, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !198, !208}
!208 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !181, size: 64)
!209 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSEOS3_", scope: !181, file: !167, line: 101, type: !210, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!210 = !DISubroutineType(types: !211)
!211 = !{!204, !198, !208}
!212 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 103, type: !213, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !198}
!215 = !DISubprogram(name: "~thread_parker", scope: !181, file: !167, line: 108, type: !213, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !213, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !213, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !213, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !213, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !213, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !6, line: 273, baseType: !177, size: 64, offset: 1088)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !6, line: 274, baseType: !177, size: 64, offset: 1152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !178, file: !6, line: 275, baseType: !177, size: 64, offset: 1216)
!224 = !DISubprogram(name: "word_lock_queue_data", scope: !178, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = !DISubprogram(name: "~word_lock_queue_data", scope: !178, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !2, file: !6, line: 475, size: 196608, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !231, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10hash_tableE")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !230, file: !6, line: 476, baseType: !233, size: 196608)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 196608, elements: !262)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !2, file: !6, line: 463, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !235, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE")
!235 = !{!236, !248, !261}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !234, file: !6, line: 464, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !2, file: !6, line: 283, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !238, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE")
!238 = !{!239, !240, !244, !245, !246, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !6, line: 284, baseType: !22, size: 64)
!240 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !237, file: !6, line: 286, type: !241, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!244 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !237, file: !6, line: 287, type: !241, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "word_lock", scope: !237, file: !6, line: 290, type: !241, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !234, file: !6, line: 466, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !2, file: !6, line: 448, size: 1280, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !251, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE")
!251 = !{!252, !253, !254, !255, !256, !260}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !250, file: !6, line: 449, baseType: !181, size: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !250, file: !6, line: 451, baseType: !22, size: 64, offset: 1088)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !6, line: 452, baseType: !249, size: 64, offset: 1152)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !250, file: !6, line: 453, baseType: !22, size: 64, offset: 1216)
!256 = !DISubprogram(name: "queue_data", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "~queue_data", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !6, line: 467, baseType: !249, size: 64, offset: 128)
!262 = !{!263}
!263 = !DISubrange(count: 1024)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !2, file: !6, line: 829, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !267, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE")
!267 = !{!268, !299, !301}
!268 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !266, baseType: !269, extraData: i32 0)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !2, file: !6, line: 592, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !270, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE")
!270 = !{!271, !284, !285, !289, !295}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !269, file: !6, line: 593, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!64, !43, !275}
!275 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !2, file: !6, line: 576, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !277, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE")
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !276, file: !6, line: 577, baseType: !64, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !276, file: !6, line: 578, baseType: !22, size: 64, offset: 64)
!280 = !DISubprogram(name: "validate_action", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !269, file: !6, line: 594, baseType: !170, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !269, file: !6, line: 595, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!22, !43, !29, !64}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !269, file: !6, line: 596, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !43, !293, !64, !64}
!293 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!295 = !DISubprogram(name: "parking_control", scope: !269, file: !6, line: 598, type: !296, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !266, file: !6, line: 830, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!301 = !DISubprogram(name: "mutex_parking_control", scope: !266, file: !6, line: 832, type: !302, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304, !300}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !2, file: !6, line: 958, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !307, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE")
!307 = !{!308, !309, !310, !326}
!308 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !306, baseType: !269, extraData: i32 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !306, file: !6, line: 959, baseType: !300, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !306, file: !6, line: 960, baseType: !311, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !2, file: !6, line: 859, size: 64, flags: DIFlagTypePassByValue, elements: !313, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10fast_mutexE")
!313 = !{!314, !315, !319, !320, !321, !322, !325}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !6, line: 860, baseType: !22, size: 64)
!315 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!319 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{!64, !318}
!325 = !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubprogram(name: "signal_parking_control", scope: !306, file: !6, line: 962, type: !327, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !300, !311}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !2, file: !6, line: 985, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !332, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE")
!332 = !{!333, !334, !335, !336}
!333 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !331, baseType: !269, extraData: i32 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !331, file: !6, line: 986, baseType: !300, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !331, file: !6, line: 987, baseType: !311, size: 64, offset: 320)
!336 = !DISubprogram(name: "broadcast_parking_control", scope: !331, file: !6, line: 989, type: !337, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !300, !311}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !2, file: !6, line: 1026, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !342, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE")
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !341, baseType: !269, extraData: i32 0)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !341, file: !6, line: 1027, baseType: !300, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !341, file: !6, line: 1028, baseType: !311, size: 64, offset: 320)
!346 = !DISubprogram(name: "wait_parking_control", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349, !300, !311}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !2, file: !6, line: 1072, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !352, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9fast_condE")
!352 = !{!353, !354, !358, !359, !360}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !6, line: 1073, baseType: !22, size: 64)
!354 = !DISubprogram(name: "fast_cond", scope: !351, file: !6, line: 1076, type: !355, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!358 = !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !357, !311}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !6, line: 1164, size: 64, flags: DIFlagTypePassByValue, elements: !365, identifier: "_ZTS18halide_mutex_array")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !364, file: !6, line: 1165, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !13, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !370, identifier: "_ZTS23halide_semaphore_impl_t")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !13, line: 712, baseType: !29, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!373 = !{!374, !377, !0, !379, !11, !121, !127, !133, !139, !146, !152, !158}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!375 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !376, isLocal: true, isDefinition: true)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !376, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !376, isLocal: true, isDefinition: true)
!381 = !{!382, !383, !384}
!382 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!383 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !167, line: 62)
!384 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!385 = !{i32 7, !"Dwarf Version", i32 4}
!386 = !{i32 2, !"Debug Info Version", i32 3}
!387 = !{i32 1, !"wchar_size", i32 4}
!388 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!389 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv", scope: !3, file: !167, line: 50, type: !390, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!43, !43}
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "arg", arg: 1, scope: !389, file: !167, line: 50, type: !43)
!394 = !DILocalVariable(name: "t", scope: !389, file: !167, line: 51, type: !165)
!395 = !DILocation(line: 0, scope: !389)
!396 = !DILocation(line: 52, column: 8, scope: !389)
!397 = !{!398, !399, i64 0}
!398 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !399, i64 0, !399, i64 8, !402, i64 16}
!399 = !{!"any pointer", !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C++ TBAA"}
!402 = !{!"long", !400, i64 0}
!403 = !DILocation(line: 52, column: 13, scope: !389)
!404 = !{!398, !399, i64 8}
!405 = !DILocation(line: 52, column: 5, scope: !389)
!406 = !DILocation(line: 53, column: 5, scope: !389)
!407 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 64, type: !408, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!102, !170, !43}
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(name: "f", arg: 1, scope: !407, file: !167, line: 64, type: !170)
!412 = !DILocalVariable(name: "closure", arg: 2, scope: !407, file: !167, line: 64, type: !43)
!413 = !DILocalVariable(name: "t", scope: !407, file: !167, line: 65, type: !165)
!414 = !DILocation(line: 0, scope: !407)
!415 = !DILocation(line: 65, column: 43, scope: !407)
!416 = !DILocation(line: 66, column: 8, scope: !407)
!417 = !DILocation(line: 66, column: 10, scope: !407)
!418 = !DILocation(line: 67, column: 8, scope: !407)
!419 = !DILocation(line: 67, column: 16, scope: !407)
!420 = !DILocation(line: 68, column: 8, scope: !407)
!421 = !DILocation(line: 68, column: 15, scope: !407)
!422 = !{!398, !402, i64 16}
!423 = !DILocation(line: 69, column: 5, scope: !407)
!424 = !DILocation(line: 70, column: 12, scope: !407)
!425 = !DILocation(line: 70, column: 5, scope: !407)
!426 = !DISubprogram(name: "malloc", scope: !23, file: !23, line: 87, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!427 = !DISubroutineType(types: !428)
!428 = !{!43, !429}
!429 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!430 = !DISubprogram(name: "pthread_create", scope: !167, file: !167, line: 21, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!431 = !DISubroutineType(types: !432)
!432 = !{!29, !433, !434, !436, !43}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!437 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !438, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !102}
!440 = !{!441, !442, !443}
!441 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !437, file: !167, line: 73, type: !102)
!442 = !DILocalVariable(name: "t", scope: !437, file: !167, line: 74, type: !165)
!443 = !DILocalVariable(name: "ret", scope: !437, file: !167, line: 75, type: !43)
!444 = !DILocation(line: 0, scope: !437)
!445 = !DILocation(line: 74, column: 25, scope: !437)
!446 = !DILocation(line: 75, column: 5, scope: !437)
!447 = !DILocation(line: 75, column: 11, scope: !437)
!448 = !{!399, !399, i64 0}
!449 = !DILocation(line: 76, column: 21, scope: !437)
!450 = !DILocation(line: 76, column: 5, scope: !437)
!451 = !DILocation(line: 77, column: 10, scope: !437)
!452 = !DILocation(line: 77, column: 5, scope: !437)
!453 = !DILocation(line: 78, column: 1, scope: !437)
!454 = !DISubprogram(name: "pthread_join", scope: !167, file: !167, line: 23, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!455 = !DISubroutineType(types: !456)
!456 = !{!29, !176, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!458 = !DISubprogram(name: "free", scope: !23, file: !23, line: 86, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!459 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !237, file: !6, line: 321, type: !241, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !240, retainedNodes: !460)
!460 = !{!461, !463, !475, !476, !480, !481, !482}
!461 = !DILocalVariable(name: "this", arg: 1, scope: !459, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!463 = !DILocalVariable(name: "spinner", scope: !459, file: !6, line: 322, type: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !465, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!465 = !{!466, !467, !471, !474}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !464, file: !6, line: 231, baseType: !29, size: 32)
!467 = !DISubprogram(name: "spin_control", scope: !464, file: !6, line: 235, type: !468, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!471 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !464, file: !6, line: 237, type: !472, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{!64, !470}
!474 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !464, file: !6, line: 244, type: !468, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DILocalVariable(name: "expected", scope: !459, file: !6, line: 323, type: !22)
!476 = !DILocalVariable(name: "desired", scope: !477, file: !6, line: 328, type: !22)
!477 = distinct !DILexicalBlock(scope: !478, file: !6, line: 327, column: 37)
!478 = distinct !DILexicalBlock(scope: !479, file: !6, line: 327, column: 13)
!479 = distinct !DILexicalBlock(scope: !459, file: !6, line: 326, column: 18)
!480 = !DILocalVariable(name: "node", scope: !479, file: !6, line: 342, type: !178)
!481 = !DILocalVariable(name: "head", scope: !479, file: !6, line: 347, type: !177)
!482 = !DILocalVariable(name: "desired", scope: !479, file: !6, line: 359, type: !22)
!483 = !DILocation(line: 0, scope: !459)
!484 = !DILocation(line: 324, column: 26, scope: !459)
!485 = !DILocalVariable(name: "addr", arg: 1, scope: !486, file: !6, line: 200, type: !490)
!486 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIyEEvPT_S6_", scope: !487, file: !6, line: 200, type: !488, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !493, retainedNodes: !491)
!487 = !DINamespace(scope: !2)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !490, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!491 = !{!485, !492}
!492 = !DILocalVariable(name: "val", arg: 2, scope: !486, file: !6, line: 200, type: !490)
!493 = !{!494}
!494 = !DITemplateTypeParameter(name: "T", type: !25)
!495 = !DILocation(line: 0, scope: !486, inlinedAt: !496)
!496 = distinct !DILocation(line: 324, column: 5, scope: !459)
!497 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !496)
!498 = !DILocation(line: 326, column: 5, scope: !459)
!499 = !DILocation(line: 327, column: 24, scope: !478)
!500 = !DILocation(line: 327, column: 14, scope: !478)
!501 = !DILocation(line: 327, column: 13, scope: !479)
!502 = !DILocation(line: 328, column: 42, scope: !477)
!503 = !DILocation(line: 0, scope: !477)
!504 = !DILocalVariable(name: "addr", arg: 1, scope: !505, file: !6, line: 191, type: !300)
!505 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPyS4_S4_", scope: !487, file: !6, line: 191, type: !506, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!64, !300, !300, !300}
!508 = !{!504, !509, !510}
!509 = !DILocalVariable(name: "expected", arg: 2, scope: !505, file: !6, line: 191, type: !300)
!510 = !DILocalVariable(name: "desired", arg: 3, scope: !505, file: !6, line: 191, type: !300)
!511 = !DILocation(line: 0, scope: !505, inlinedAt: !512)
!512 = distinct !DILocation(line: 330, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !477, file: !6, line: 330, column: 17)
!514 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !512)
!515 = !DILocation(line: 336, column: 67, scope: !516)
!516 = distinct !DILexicalBlock(scope: !479, file: !6, line: 336, column: 13)
!517 = !DILocation(line: 336, column: 73, scope: !516)
!518 = !DILocalVariable(name: "this", arg: 1, scope: !519, type: !521, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !464, file: !6, line: 237, type: !472, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !471, retainedNodes: !520)
!520 = !{!518}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!522 = !DILocation(line: 0, scope: !519, inlinedAt: !523)
!523 = distinct !DILocation(line: 336, column: 84, scope: !516)
!524 = !DILocation(line: 241, column: 27, scope: !519, inlinedAt: !523)
!525 = !DILocation(line: 336, column: 13, scope: !479)
!526 = !DILocation(line: 239, column: 23, scope: !527, inlinedAt: !523)
!527 = distinct !DILexicalBlock(scope: !528, file: !6, line: 238, column: 29)
!528 = distinct !DILexicalBlock(scope: !519, file: !6, line: 238, column: 13)
!529 = !DILocation(line: 337, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !516, file: !6, line: 336, column: 99)
!531 = !DILocation(line: 0, scope: !486, inlinedAt: !532)
!532 = distinct !DILocation(line: 338, column: 13, scope: !530)
!533 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !532)
!534 = !DILocation(line: 339, column: 13, scope: !530)
!535 = !DILocation(line: 342, column: 9, scope: !479)
!536 = !DILocation(line: 342, column: 30, scope: !479)
!537 = !DILocalVariable(name: "this", arg: 1, scope: !538, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!538 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !178, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !224, retainedNodes: !539)
!539 = !{!537}
!540 = !DILocation(line: 0, scope: !538, inlinedAt: !541)
!541 = distinct !DILocation(line: 342, column: 30, scope: !479)
!542 = !DILocalVariable(name: "this", arg: 1, scope: !543, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!543 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !181, file: !167, line: 103, type: !213, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !212, retainedNodes: !544)
!544 = !{!542}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!546 = !DILocation(line: 0, scope: !543, inlinedAt: !547)
!547 = distinct !DILocation(line: 277, column: 19, scope: !538, inlinedAt: !541)
!548 = !DILocation(line: 96, column: 10, scope: !543, inlinedAt: !547)
!549 = !{!550, !553, i64 128}
!550 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !551, i64 0, !552, i64 64, !553, i64 128}
!551 = !{!"_ZTS15pthread_mutex_t", !400, i64 0}
!552 = !{!"_ZTS14pthread_cond_t", !400, i64 0}
!553 = !{!"bool", !400, i64 0}
!554 = !DILocation(line: 104, column: 9, scope: !555, inlinedAt: !547)
!555 = distinct !DILexicalBlock(scope: !543, file: !167, line: 103, column: 35)
!556 = !DILocation(line: 105, column: 9, scope: !555, inlinedAt: !547)
!557 = !DILocation(line: 273, column: 27, scope: !538, inlinedAt: !541)
!558 = !{!559, !399, i64 136}
!559 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !550, i64 0, !399, i64 136, !399, i64 144, !399, i64 152}
!560 = !DILocation(line: 274, column: 27, scope: !538, inlinedAt: !541)
!561 = !{!559, !399, i64 144}
!562 = !DILocation(line: 275, column: 27, scope: !538, inlinedAt: !541)
!563 = !{!559, !399, i64 152}
!564 = !DILocalVariable(name: "this", arg: 1, scope: !565, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!565 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !213, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !566)
!566 = !{!564}
!567 = !DILocation(line: 0, scope: !565, inlinedAt: !568)
!568 = distinct !DILocation(line: 344, column: 21, scope: !479)
!569 = !DILocation(line: 114, column: 21, scope: !565, inlinedAt: !568)
!570 = !DILocation(line: 347, column: 72, scope: !479)
!571 = !DILocation(line: 0, scope: !479)
!572 = !DILocation(line: 348, column: 18, scope: !573)
!573 = distinct !DILexicalBlock(scope: !479, file: !6, line: 348, column: 13)
!574 = !DILocation(line: 348, column: 13, scope: !479)
!575 = !DILocation(line: 349, column: 23, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !6, line: 348, column: 30)
!577 = !DILocation(line: 351, column: 9, scope: !576)
!578 = !DILocation(line: 347, column: 38, scope: !479)
!579 = !DILocation(line: 356, column: 23, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !6, line: 351, column: 16)
!581 = !DILocation(line: 359, column: 60, scope: !479)
!582 = !DILocation(line: 359, column: 48, scope: !479)
!583 = !DILocalVariable(name: "addr", arg: 1, scope: !584, file: !6, line: 183, type: !300)
!584 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPyS4_S4_", scope: !487, file: !6, line: 183, type: !506, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !585)
!585 = !{!583, !586, !587}
!586 = !DILocalVariable(name: "expected", arg: 2, scope: !584, file: !6, line: 183, type: !300)
!587 = !DILocalVariable(name: "desired", arg: 3, scope: !584, file: !6, line: 183, type: !300)
!588 = !DILocation(line: 0, scope: !584, inlinedAt: !589)
!589 = distinct !DILocation(line: 360, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !479, file: !6, line: 360, column: 13)
!591 = !DILocation(line: 184, column: 12, scope: !584, inlinedAt: !589)
!592 = !DILocalVariable(name: "this", arg: 1, scope: !593, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!593 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !213, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !594)
!594 = !{!592}
!595 = !DILocation(line: 0, scope: !593, inlinedAt: !596)
!596 = distinct !DILocation(line: 361, column: 25, scope: !597)
!597 = distinct !DILexicalBlock(scope: !590, file: !6, line: 360, column: 75)
!598 = !DILocation(line: 118, column: 9, scope: !593, inlinedAt: !596)
!599 = !DILocation(line: 119, column: 16, scope: !593, inlinedAt: !596)
!600 = !{i8 0, i8 2}
!601 = !DILocation(line: 119, column: 9, scope: !593, inlinedAt: !596)
!602 = !DILocation(line: 120, column: 13, scope: !603, inlinedAt: !596)
!603 = distinct !DILexicalBlock(scope: !593, file: !167, line: 119, column: 29)
!604 = distinct !{!604, !601, !605, !606}
!605 = !DILocation(line: 121, column: 9, scope: !593, inlinedAt: !596)
!606 = !{!"llvm.loop.mustprogress"}
!607 = !DILocation(line: 122, column: 9, scope: !593, inlinedAt: !596)
!608 = !DILocation(line: 0, scope: !486, inlinedAt: !609)
!609 = distinct !DILocation(line: 363, column: 13, scope: !597)
!610 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !609)
!611 = !DILocation(line: 364, column: 9, scope: !597)
!612 = !DILocalVariable(name: "this", arg: 1, scope: !613, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!613 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !178, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !228, retainedNodes: !614)
!614 = !{!612}
!615 = !DILocation(line: 0, scope: !613, inlinedAt: !616)
!616 = distinct !DILocation(line: 365, column: 5, scope: !459)
!617 = !DILocalVariable(name: "this", arg: 1, scope: !618, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!618 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !181, file: !167, line: 108, type: !213, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !619)
!619 = !{!617}
!620 = !DILocation(line: 0, scope: !618, inlinedAt: !621)
!621 = distinct !DILocation(line: 280, column: 51, scope: !622, inlinedAt: !616)
!622 = distinct !DILexicalBlock(scope: !613, file: !6, line: 280, column: 51)
!623 = !DILocation(line: 109, column: 9, scope: !624, inlinedAt: !621)
!624 = distinct !DILexicalBlock(scope: !618, file: !167, line: 108, column: 36)
!625 = !DILocation(line: 110, column: 9, scope: !624, inlinedAt: !621)
!626 = !DILocation(line: 365, column: 5, scope: !459)
!627 = distinct !{!627, !498, !626}
!628 = !DILocation(line: 366, column: 1, scope: !459)
!629 = !DISubprogram(name: "halide_thread_yield", scope: !23, file: !23, line: 190, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!630 = !DISubroutineType(types: !631)
!631 = !{null}
!632 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !237, file: !6, line: 368, type: !241, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !633)
!633 = !{!634, !635, !636, !638, !639, !640, !642, !643, !644, !645, !647, !650, !651, !654}
!634 = !DILocalVariable(name: "this", arg: 1, scope: !632, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !DILocalVariable(name: "expected", scope: !632, file: !6, line: 369, type: !22)
!636 = !DILocalVariable(name: "thread_queuing", scope: !637, file: !6, line: 375, type: !64)
!637 = distinct !DILexicalBlock(scope: !632, file: !6, line: 372, column: 18)
!638 = !DILocalVariable(name: "none_queued", scope: !637, file: !6, line: 377, type: !64)
!639 = !DILocalVariable(name: "desired", scope: !637, file: !6, line: 382, type: !22)
!640 = !DILocalVariable(name: "head", scope: !641, file: !6, line: 389, type: !177)
!641 = distinct !DILexicalBlock(scope: !632, file: !6, line: 388, column: 18)
!642 = !DILocalVariable(name: "current", scope: !641, file: !6, line: 390, type: !177)
!643 = !DILocalVariable(name: "tail", scope: !641, file: !6, line: 391, type: !177)
!644 = !DILocalVariable(name: "times_through", scope: !641, file: !6, line: 392, type: !29)
!645 = !DILocalVariable(name: "next", scope: !646, file: !6, line: 394, type: !177)
!646 = distinct !DILexicalBlock(scope: !641, file: !6, line: 393, column: 33)
!647 = !DILocalVariable(name: "desired", scope: !648, file: !6, line: 406, type: !22)
!648 = distinct !DILexicalBlock(scope: !649, file: !6, line: 405, column: 34)
!649 = distinct !DILexicalBlock(scope: !641, file: !6, line: 405, column: 13)
!650 = !DILocalVariable(name: "new_tail", scope: !641, file: !6, line: 414, type: !177)
!651 = !DILocalVariable(name: "continue_outer", scope: !652, file: !6, line: 416, type: !64)
!652 = distinct !DILexicalBlock(scope: !653, file: !6, line: 415, column: 34)
!653 = distinct !DILexicalBlock(scope: !641, file: !6, line: 415, column: 13)
!654 = !DILocalVariable(name: "desired", scope: !655, file: !6, line: 418, type: !22)
!655 = distinct !DILexicalBlock(scope: !652, file: !6, line: 417, column: 37)
!656 = !DILocation(line: 0, scope: !632)
!657 = !DILocation(line: 370, column: 26, scope: !632)
!658 = !DILocation(line: 0, scope: !486, inlinedAt: !659)
!659 = distinct !DILocation(line: 370, column: 5, scope: !632)
!660 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !659)
!661 = !DILocation(line: 372, column: 5, scope: !632)
!662 = !DILocation(line: 375, column: 41, scope: !637)
!663 = !DILocation(line: 375, column: 31, scope: !637)
!664 = !DILocation(line: 0, scope: !637)
!665 = !DILocation(line: 378, column: 28, scope: !666)
!666 = distinct !DILexicalBlock(scope: !637, file: !6, line: 378, column: 13)
!667 = !DILocation(line: 382, column: 38, scope: !637)
!668 = !DILocation(line: 0, scope: !505, inlinedAt: !669)
!669 = distinct !DILocation(line: 383, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !637, file: !6, line: 383, column: 13)
!671 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !669)
!672 = !DILocation(line: 389, column: 72, scope: !641)
!673 = !DILocation(line: 389, column: 38, scope: !641)
!674 = !DILocation(line: 0, scope: !641)
!675 = !DILocation(line: 391, column: 47, scope: !641)
!676 = !DILocation(line: 393, column: 21, scope: !641)
!677 = !DILocation(line: 393, column: 9, scope: !641)
!678 = !DILocation(line: 394, column: 51, scope: !646)
!679 = !DILocation(line: 0, scope: !646)
!680 = !DILocation(line: 395, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !6, line: 395, column: 13)
!682 = distinct !DILexicalBlock(scope: !646, file: !6, line: 395, column: 13)
!683 = !DILocation(line: 395, column: 13, scope: !682)
!684 = !DILocation(line: 395, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !6, line: 395, column: 13)
!686 = !DILocation(line: 396, column: 19, scope: !646)
!687 = !DILocation(line: 396, column: 24, scope: !646)
!688 = !DILocation(line: 398, column: 29, scope: !646)
!689 = distinct !{!689, !677, !690, !606}
!690 = !DILocation(line: 400, column: 9, scope: !641)
!691 = !DILocation(line: 401, column: 20, scope: !641)
!692 = !DILocation(line: 405, column: 22, scope: !649)
!693 = !DILocation(line: 405, column: 13, scope: !649)
!694 = !DILocation(line: 405, column: 13, scope: !641)
!695 = !DILocation(line: 406, column: 42, scope: !648)
!696 = !DILocation(line: 0, scope: !648)
!697 = !DILocalVariable(name: "addr", arg: 1, scope: !698, file: !6, line: 179, type: !490)
!698 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIyEEbPT_S6_S6_", scope: !487, file: !6, line: 179, type: !699, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !493, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!64, !490, !490, !490}
!701 = !{!697, !702, !703}
!702 = !DILocalVariable(name: "expected", arg: 2, scope: !698, file: !6, line: 179, type: !490)
!703 = !DILocalVariable(name: "desired", arg: 3, scope: !698, file: !6, line: 179, type: !490)
!704 = !DILocation(line: 0, scope: !698, inlinedAt: !705)
!705 = distinct !DILocation(line: 407, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !648, file: !6, line: 407, column: 17)
!707 = !DILocation(line: 180, column: 12, scope: !698, inlinedAt: !705)
!708 = distinct !{!708, !709, !710}
!709 = !DILocation(line: 388, column: 5, scope: !632)
!710 = !DILocation(line: 445, column: 5, scope: !632)
!711 = !DILocation(line: 414, column: 48, scope: !641)
!712 = !DILocation(line: 415, column: 22, scope: !653)
!713 = !DILocation(line: 415, column: 13, scope: !641)
!714 = !DILocation(line: 0, scope: !652)
!715 = !DILocation(line: 418, column: 46, scope: !655)
!716 = !DILocation(line: 0, scope: !655)
!717 = !DILocation(line: 0, scope: !698, inlinedAt: !718)
!718 = distinct !DILocation(line: 419, column: 21, scope: !719)
!719 = distinct !DILexicalBlock(scope: !655, file: !6, line: 419, column: 21)
!720 = !DILocation(line: 180, column: 12, scope: !698, inlinedAt: !718)
!721 = !DILocation(line: 422, column: 74, scope: !722)
!722 = distinct !DILexicalBlock(scope: !655, file: !6, line: 422, column: 21)
!723 = !DILocation(line: 422, column: 21, scope: !655)
!724 = distinct !{!724, !725, !726, !606}
!725 = !DILocation(line: 417, column: 13, scope: !652)
!726 = !DILocation(line: 428, column: 13, scope: !652)
!727 = !DILocation(line: 434, column: 24, scope: !728)
!728 = distinct !DILexicalBlock(scope: !653, file: !6, line: 433, column: 16)
!729 = !DILocalVariable(name: "addr", arg: 1, scope: !730, file: !6, line: 165, type: !300)
!730 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPyy", scope: !487, file: !6, line: 165, type: !731, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!22, !300, !22}
!733 = !{!729, !734}
!734 = !DILocalVariable(name: "val", arg: 2, scope: !730, file: !6, line: 165, type: !22)
!735 = !DILocation(line: 0, scope: !730, inlinedAt: !736)
!736 = distinct !DILocation(line: 435, column: 13, scope: !728)
!737 = !DILocation(line: 166, column: 12, scope: !730, inlinedAt: !736)
!738 = !DILocalVariable(name: "this", arg: 1, scope: !739, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!739 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !213, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !740)
!740 = !{!738}
!741 = !DILocation(line: 0, scope: !739, inlinedAt: !742)
!742 = distinct !DILocation(line: 441, column: 22, scope: !641)
!743 = !DILocation(line: 126, column: 29, scope: !739, inlinedAt: !742)
!744 = !DILocation(line: 126, column: 9, scope: !739, inlinedAt: !742)
!745 = !DILocalVariable(name: "this", arg: 1, scope: !746, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!746 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !213, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !747)
!747 = !{!745}
!748 = !DILocation(line: 0, scope: !746, inlinedAt: !749)
!749 = distinct !DILocation(line: 442, column: 22, scope: !641)
!750 = !DILocation(line: 130, column: 9, scope: !746, inlinedAt: !749)
!751 = !DILocation(line: 130, column: 21, scope: !746, inlinedAt: !749)
!752 = !DILocation(line: 131, column: 30, scope: !746, inlinedAt: !749)
!753 = !DILocation(line: 131, column: 9, scope: !746, inlinedAt: !749)
!754 = !DILocalVariable(name: "this", arg: 1, scope: !755, type: !545, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !213, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !756)
!756 = !{!754}
!757 = !DILocation(line: 0, scope: !755, inlinedAt: !758)
!758 = distinct !DILocation(line: 443, column: 22, scope: !641)
!759 = !DILocation(line: 135, column: 9, scope: !755, inlinedAt: !758)
!760 = !DILocation(line: 444, column: 9, scope: !641)
!761 = !DILocation(line: 446, column: 1, scope: !632)
!762 = !DISubprogram(name: "halide_print", scope: !18, file: !18, line: 97, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !43, !49}
!765 = !DISubprogram(name: "abort", scope: !23, file: !23, line: 108, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!766 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy", scope: !2, file: !6, line: 509, type: !767, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !770)
!767 = !DISubroutineType(types: !768)
!768 = !{!769, !22}
!769 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 64)
!770 = !{!771, !772, !773}
!771 = !DILocalVariable(name: "addr", arg: 1, scope: !766, file: !6, line: 509, type: !22)
!772 = !DILocalVariable(name: "hash", scope: !766, file: !6, line: 510, type: !22)
!773 = !DILocalVariable(name: "bucket", scope: !766, file: !6, line: 515, type: !769)
!774 = !DILocation(line: 0, scope: !766)
!775 = !DILocalVariable(name: "addr", arg: 1, scope: !776, file: !6, line: 499, type: !22)
!776 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEyj", scope: !2, file: !6, line: 499, type: !777, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !781)
!777 = !DISubroutineType(types: !778)
!778 = !{!22, !22, !779}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !780)
!780 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!781 = !{!775, !782}
!782 = !DILocalVariable(name: "bits", arg: 2, scope: !776, file: !6, line: 499, type: !779)
!783 = !DILocation(line: 0, scope: !776, inlinedAt: !784)
!784 = distinct !DILocation(line: 510, column: 22, scope: !766)
!785 = !DILocation(line: 503, column: 22, scope: !786, inlinedAt: !784)
!786 = distinct !DILexicalBlock(scope: !787, file: !6, line: 502, column: 33)
!787 = distinct !DILexicalBlock(scope: !776, file: !6, line: 502, column: 9)
!788 = !DILocation(line: 503, column: 55, scope: !786, inlinedAt: !784)
!789 = !DILocation(line: 515, column: 27, scope: !766)
!790 = !DILocalVariable(name: "this", arg: 1, scope: !791, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!791 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !792)
!792 = !{!790, !793, !794}
!793 = !DILocalVariable(name: "expected", scope: !791, file: !6, line: 294, type: !22)
!794 = !DILocalVariable(name: "desired", scope: !791, file: !6, line: 295, type: !22)
!795 = !DILocation(line: 0, scope: !791, inlinedAt: !796)
!796 = distinct !DILocation(line: 517, column: 18, scope: !766)
!797 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !796)
!798 = distinct !DILexicalBlock(scope: !791, file: !6, line: 297, column: 13)
!799 = !DILocation(line: 0, scope: !505, inlinedAt: !800)
!800 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !796)
!801 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !800)
!802 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !796)
!803 = !DILocation(line: 517, column: 12, scope: !766)
!804 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !796)
!805 = distinct !DILexicalBlock(scope: !798, file: !6, line: 297, column: 76)
!806 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !796)
!807 = !DILocation(line: 519, column: 5, scope: !766)
!808 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy", scope: !2, file: !6, line: 531, type: !809, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !819)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !22, !22}
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !812, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !811, file: !6, line: 523, baseType: !769, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !811, file: !6, line: 524, baseType: !769, size: 64, offset: 64)
!815 = !DISubprogram(name: "bucket_pair", scope: !811, file: !6, line: 526, type: !816, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !818, !769, !769}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!819 = !{!820, !821, !822, !823, !824, !827, !830, !831, !833}
!820 = !DILocalVariable(name: "addr_from", arg: 1, scope: !808, file: !6, line: 531, type: !22)
!821 = !DILocalVariable(name: "addr_to", arg: 2, scope: !808, file: !6, line: 531, type: !22)
!822 = !DILocalVariable(name: "hash_from", scope: !808, file: !6, line: 533, type: !22)
!823 = !DILocalVariable(name: "hash_to", scope: !808, file: !6, line: 534, type: !22)
!824 = !DILocalVariable(name: "first", scope: !825, file: !6, line: 542, type: !769)
!825 = distinct !DILexicalBlock(scope: !826, file: !6, line: 541, column: 31)
!826 = distinct !DILexicalBlock(scope: !808, file: !6, line: 541, column: 9)
!827 = !DILocalVariable(name: "first", scope: !828, file: !6, line: 546, type: !769)
!828 = distinct !DILexicalBlock(scope: !829, file: !6, line: 545, column: 37)
!829 = distinct !DILexicalBlock(scope: !826, file: !6, line: 545, column: 16)
!830 = !DILocalVariable(name: "second", scope: !828, file: !6, line: 547, type: !769)
!831 = !DILocalVariable(name: "first", scope: !832, file: !6, line: 552, type: !769)
!832 = distinct !DILexicalBlock(scope: !829, file: !6, line: 551, column: 12)
!833 = !DILocalVariable(name: "second", scope: !832, file: !6, line: 553, type: !769)
!834 = !DILocation(line: 0, scope: !808)
!835 = !DILocation(line: 0, scope: !776, inlinedAt: !836)
!836 = distinct !DILocation(line: 533, column: 27, scope: !808)
!837 = !DILocation(line: 503, column: 22, scope: !786, inlinedAt: !836)
!838 = !DILocation(line: 503, column: 55, scope: !786, inlinedAt: !836)
!839 = !DILocation(line: 0, scope: !776, inlinedAt: !840)
!840 = distinct !DILocation(line: 534, column: 25, scope: !808)
!841 = !DILocation(line: 503, column: 22, scope: !786, inlinedAt: !840)
!842 = !DILocation(line: 503, column: 55, scope: !786, inlinedAt: !840)
!843 = !DILocation(line: 541, column: 19, scope: !826)
!844 = !DILocation(line: 541, column: 9, scope: !808)
!845 = !DILocation(line: 542, column: 30, scope: !825)
!846 = !DILocation(line: 0, scope: !825)
!847 = !DILocation(line: 0, scope: !791, inlinedAt: !848)
!848 = distinct !DILocation(line: 543, column: 21, scope: !825)
!849 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !848)
!850 = !DILocation(line: 0, scope: !505, inlinedAt: !851)
!851 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !848)
!852 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !851)
!853 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !848)
!854 = !DILocation(line: 543, column: 15, scope: !825)
!855 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !848)
!856 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !848)
!857 = !DILocation(line: 545, column: 26, scope: !829)
!858 = !DILocation(line: 545, column: 16, scope: !826)
!859 = !DILocation(line: 546, column: 30, scope: !828)
!860 = !DILocation(line: 0, scope: !828)
!861 = !DILocation(line: 547, column: 31, scope: !828)
!862 = !DILocation(line: 0, scope: !791, inlinedAt: !863)
!863 = distinct !DILocation(line: 548, column: 21, scope: !828)
!864 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !863)
!865 = !DILocation(line: 0, scope: !505, inlinedAt: !866)
!866 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !863)
!867 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !866)
!868 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !863)
!869 = !DILocation(line: 548, column: 15, scope: !828)
!870 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !863)
!871 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !863)
!872 = !DILocation(line: 0, scope: !791, inlinedAt: !873)
!873 = distinct !DILocation(line: 549, column: 22, scope: !828)
!874 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !873)
!875 = !DILocation(line: 0, scope: !505, inlinedAt: !876)
!876 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !873)
!877 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !876)
!878 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !873)
!879 = !DILocation(line: 549, column: 16, scope: !828)
!880 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !873)
!881 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !873)
!882 = !DILocation(line: 552, column: 30, scope: !832)
!883 = !DILocation(line: 0, scope: !832)
!884 = !DILocation(line: 553, column: 31, scope: !832)
!885 = !DILocation(line: 0, scope: !791, inlinedAt: !886)
!886 = distinct !DILocation(line: 554, column: 21, scope: !832)
!887 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !886)
!888 = !DILocation(line: 0, scope: !505, inlinedAt: !889)
!889 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !886)
!890 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !889)
!891 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !886)
!892 = !DILocation(line: 554, column: 15, scope: !832)
!893 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !886)
!894 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !886)
!895 = !DILocation(line: 0, scope: !791, inlinedAt: !896)
!896 = distinct !DILocation(line: 555, column: 22, scope: !832)
!897 = !DILocation(line: 297, column: 47, scope: !798, inlinedAt: !896)
!898 = !DILocation(line: 0, scope: !505, inlinedAt: !899)
!899 = distinct !DILocation(line: 297, column: 14, scope: !798, inlinedAt: !896)
!900 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !899)
!901 = !DILocation(line: 297, column: 13, scope: !791, inlinedAt: !896)
!902 = !DILocation(line: 555, column: 16, scope: !832)
!903 = !DILocation(line: 298, column: 13, scope: !805, inlinedAt: !896)
!904 = !DILocation(line: 299, column: 9, scope: !805, inlinedAt: !896)
!905 = !DILocation(line: 0, scope: !826)
!906 = !DILocation(line: 558, column: 1, scope: !808)
!907 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !2, file: !6, line: 560, type: !908, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !911)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !910}
!910 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !811, size: 64)
!911 = !{!912}
!912 = !DILocalVariable(name: "buckets", arg: 1, scope: !907, file: !6, line: 560, type: !910)
!913 = !DILocation(line: 0, scope: !907)
!914 = !DILocation(line: 565, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !907, file: !6, line: 565, column: 9)
!916 = !{!917, !399, i64 0}
!917 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !399, i64 0, !399, i64 8}
!918 = !DILocation(line: 565, column: 35, scope: !915)
!919 = !{!917, !399, i64 8}
!920 = !DILocation(line: 565, column: 23, scope: !915)
!921 = !DILocation(line: 565, column: 9, scope: !907)
!922 = !DILocalVariable(name: "this", arg: 1, scope: !923, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!923 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !247, retainedNodes: !924)
!924 = !{!922, !925, !926, !927}
!925 = !DILocalVariable(name: "val", scope: !923, file: !6, line: 307, type: !22)
!926 = !DILocalVariable(name: "no_thread_queuing", scope: !923, file: !6, line: 310, type: !64)
!927 = !DILocalVariable(name: "some_queued", scope: !923, file: !6, line: 312, type: !64)
!928 = !DILocation(line: 0, scope: !923, inlinedAt: !929)
!929 = distinct !DILocation(line: 566, column: 28, scope: !930)
!930 = distinct !DILexicalBlock(scope: !915, file: !6, line: 565, column: 39)
!931 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !929)
!932 = !DILocalVariable(name: "addr", arg: 1, scope: !933, file: !6, line: 195, type: !300)
!933 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPyy", scope: !487, file: !6, line: 195, type: !731, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !934)
!934 = !{!932, !935}
!935 = !DILocalVariable(name: "val", arg: 2, scope: !933, file: !6, line: 195, type: !22)
!936 = !DILocation(line: 0, scope: !933, inlinedAt: !937)
!937 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !929)
!938 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !937)
!939 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !929)
!940 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !929)
!941 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !929)
!942 = distinct !DILexicalBlock(scope: !923, file: !6, line: 313, column: 13)
!943 = !DILocation(line: 566, column: 22, scope: !930)
!944 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !929)
!945 = distinct !DILexicalBlock(scope: !942, file: !6, line: 313, column: 47)
!946 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !929)
!947 = !DILocation(line: 567, column: 30, scope: !948)
!948 = distinct !DILexicalBlock(scope: !915, file: !6, line: 567, column: 16)
!949 = !DILocation(line: 567, column: 16, scope: !915)
!950 = !DILocation(line: 0, scope: !923, inlinedAt: !951)
!951 = distinct !DILocation(line: 568, column: 28, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !6, line: 567, column: 45)
!953 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !951)
!954 = !DILocation(line: 0, scope: !933, inlinedAt: !955)
!955 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !951)
!956 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !955)
!957 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !951)
!958 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !951)
!959 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !951)
!960 = !DILocation(line: 568, column: 22, scope: !952)
!961 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !951)
!962 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !951)
!963 = !DILocation(line: 569, column: 17, scope: !952)
!964 = !DILocation(line: 0, scope: !923, inlinedAt: !965)
!965 = distinct !DILocation(line: 569, column: 26, scope: !952)
!966 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !965)
!967 = !DILocation(line: 0, scope: !933, inlinedAt: !968)
!968 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !965)
!969 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !968)
!970 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !965)
!971 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !965)
!972 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !965)
!973 = !DILocation(line: 569, column: 20, scope: !952)
!974 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !965)
!975 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !965)
!976 = !DILocation(line: 0, scope: !923, inlinedAt: !977)
!977 = distinct !DILocation(line: 571, column: 26, scope: !978)
!978 = distinct !DILexicalBlock(scope: !948, file: !6, line: 570, column: 12)
!979 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !977)
!980 = !DILocation(line: 0, scope: !933, inlinedAt: !981)
!981 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !977)
!982 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !981)
!983 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !977)
!984 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !977)
!985 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !977)
!986 = !DILocation(line: 571, column: 20, scope: !978)
!987 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !977)
!988 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !977)
!989 = !DILocation(line: 572, column: 17, scope: !978)
!990 = !DILocation(line: 0, scope: !923, inlinedAt: !991)
!991 = distinct !DILocation(line: 572, column: 28, scope: !978)
!992 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !991)
!993 = !DILocation(line: 0, scope: !933, inlinedAt: !994)
!994 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !991)
!995 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !994)
!996 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !991)
!997 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !991)
!998 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !991)
!999 = !DILocation(line: 572, column: 22, scope: !978)
!1000 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !991)
!1001 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !991)
!1002 = !DILocation(line: 574, column: 1, scope: !907)
!1003 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 583, type: !273, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1004)
!1004 = !{!1005, !1006}
!1005 = !DILocalVariable(name: "control", arg: 1, scope: !1003, file: !6, line: 583, type: !43)
!1006 = !DILocalVariable(name: "action", arg: 2, scope: !1003, file: !6, line: 583, type: !275)
!1007 = !DILocation(line: 0, scope: !1003)
!1008 = !DILocation(line: 584, column: 5, scope: !1003)
!1009 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1010)
!1010 = !{!1011}
!1011 = !DILocalVariable(name: "control", arg: 1, scope: !1009, file: !6, line: 586, type: !43)
!1012 = !DILocation(line: 0, scope: !1009)
!1013 = !DILocation(line: 586, column: 55, scope: !1009)
!1014 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !2, file: !6, line: 587, type: !287, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "control", arg: 1, scope: !1014, file: !6, line: 587, type: !43)
!1017 = !DILocalVariable(name: "unparked", arg: 2, scope: !1014, file: !6, line: 587, type: !29)
!1018 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1014, file: !6, line: 587, type: !64)
!1019 = !DILocation(line: 0, scope: !1014)
!1020 = !DILocation(line: 588, column: 5, scope: !1014)
!1021 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 590, type: !291, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1022)
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DILocalVariable(name: "control", arg: 1, scope: !1021, file: !6, line: 590, type: !43)
!1024 = !DILocalVariable(name: "action", arg: 2, scope: !1021, file: !6, line: 590, type: !293)
!1025 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1021, file: !6, line: 590, type: !64)
!1026 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1021, file: !6, line: 590, type: !64)
!1027 = !DILocation(line: 0, scope: !1021)
!1028 = !DILocation(line: 590, column: 128, scope: !1021)
!1029 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE", scope: !2, file: !6, line: 605, type: !1030, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1033)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!22, !22, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 64)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DILocalVariable(name: "addr", arg: 1, scope: !1029, file: !6, line: 605, type: !22)
!1035 = !DILocalVariable(name: "control", arg: 2, scope: !1029, file: !6, line: 605, type: !1032)
!1036 = !DILocalVariable(name: "queue_data", scope: !1029, file: !6, line: 606, type: !250)
!1037 = !DILocalVariable(name: "bucket", scope: !1029, file: !6, line: 608, type: !769)
!1038 = !DILocalVariable(name: "action", scope: !1029, file: !6, line: 610, type: !276)
!1039 = !DILocation(line: 0, scope: !1029)
!1040 = !DILocation(line: 606, column: 5, scope: !1029)
!1041 = !DILocation(line: 606, column: 16, scope: !1029)
!1042 = !DILocalVariable(name: "this", arg: 1, scope: !1043, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1043 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !256, retainedNodes: !1044)
!1044 = !{!1042}
!1045 = !DILocation(line: 0, scope: !1043, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 606, column: 16, scope: !1029)
!1047 = !DILocation(line: 0, scope: !543, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 455, column: 19, scope: !1043, inlinedAt: !1046)
!1049 = !DILocation(line: 96, column: 10, scope: !543, inlinedAt: !1048)
!1050 = !DILocation(line: 104, column: 29, scope: !555, inlinedAt: !1048)
!1051 = !DILocation(line: 104, column: 9, scope: !555, inlinedAt: !1048)
!1052 = !DILocation(line: 105, column: 28, scope: !555, inlinedAt: !1048)
!1053 = !DILocation(line: 105, column: 9, scope: !555, inlinedAt: !1048)
!1054 = !DILocation(line: 451, column: 15, scope: !1043, inlinedAt: !1046)
!1055 = !{!1056, !1057, i64 136}
!1056 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !550, i64 0, !1057, i64 136, !399, i64 144, !1057, i64 152}
!1057 = !{!"long long", !400, i64 0}
!1058 = !DILocation(line: 452, column: 17, scope: !1043, inlinedAt: !1046)
!1059 = !{!1056, !399, i64 144}
!1060 = !DILocation(line: 453, column: 15, scope: !1043, inlinedAt: !1046)
!1061 = !{!1056, !1057, i64 152}
!1062 = !DILocation(line: 608, column: 27, scope: !1029)
!1063 = !DILocation(line: 610, column: 5, scope: !1029)
!1064 = !DILocation(line: 610, column: 21, scope: !1029)
!1065 = !DILocalVariable(name: "this", arg: 1, scope: !1066, type: !1068, flags: DIFlagArtificial | DIFlagObjectPointer)
!1066 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !280, retainedNodes: !1067)
!1067 = !{!1065}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1069 = !DILocation(line: 0, scope: !1066, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 610, column: 21, scope: !1029)
!1071 = !DILocation(line: 577, column: 10, scope: !1066, inlinedAt: !1070)
!1072 = !{!1073, !553, i64 0}
!1073 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !553, i64 0, !1057, i64 8}
!1074 = !DILocation(line: 578, column: 15, scope: !1066, inlinedAt: !1070)
!1075 = !{!1073, !1057, i64 8}
!1076 = !DILocation(line: 611, column: 18, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 611, column: 9)
!1078 = !{!1079, !399, i64 0}
!1079 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24}
!1080 = !DILocation(line: 611, column: 27, scope: !1077)
!1081 = !DILocation(line: 611, column: 10, scope: !1077)
!1082 = !DILocation(line: 611, column: 9, scope: !1029)
!1083 = !DILocation(line: 0, scope: !923, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 612, column: 22, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !6, line: 611, column: 46)
!1086 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !1084)
!1087 = !DILocation(line: 0, scope: !933, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !1084)
!1089 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !1088)
!1090 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !1084)
!1091 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !1084)
!1092 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !1084)
!1093 = !DILocation(line: 612, column: 16, scope: !1085)
!1094 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !1084)
!1095 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1084)
!1096 = !DILocation(line: 616, column: 21, scope: !1029)
!1097 = !DILocation(line: 617, column: 30, scope: !1029)
!1098 = !DILocation(line: 0, scope: !565, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 618, column: 23, scope: !1029)
!1100 = !DILocation(line: 114, column: 21, scope: !565, inlinedAt: !1099)
!1101 = !DILocation(line: 619, column: 16, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 619, column: 9)
!1103 = !{!1104, !399, i64 8}
!1104 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1105, i64 0, !399, i64 8, !399, i64 16}
!1105 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !1057, i64 0}
!1106 = !DILocation(line: 619, column: 21, scope: !1102)
!1107 = !DILocation(line: 619, column: 9, scope: !1029)
!1108 = !DILocation(line: 0, scope: !1102)
!1109 = !DILocation(line: 624, column: 12, scope: !1029)
!1110 = !DILocation(line: 624, column: 17, scope: !1029)
!1111 = !{!1104, !399, i64 16}
!1112 = !DILocation(line: 0, scope: !923, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 625, column: 18, scope: !1029)
!1114 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !1113)
!1115 = !DILocation(line: 0, scope: !933, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !1113)
!1117 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !1116)
!1118 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !1113)
!1119 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !1113)
!1120 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !1113)
!1121 = !DILocation(line: 625, column: 12, scope: !1029)
!1122 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !1113)
!1123 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1113)
!1124 = !DILocation(line: 627, column: 13, scope: !1029)
!1125 = !{!1079, !399, i64 8}
!1126 = !DILocation(line: 627, column: 5, scope: !1029)
!1127 = !DILocation(line: 0, scope: !593, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 629, column: 23, scope: !1029)
!1129 = !DILocation(line: 118, column: 9, scope: !593, inlinedAt: !1128)
!1130 = !DILocation(line: 119, column: 16, scope: !593, inlinedAt: !1128)
!1131 = !DILocation(line: 119, column: 9, scope: !593, inlinedAt: !1128)
!1132 = !DILocation(line: 120, column: 13, scope: !603, inlinedAt: !1128)
!1133 = distinct !{!1133, !1131, !1134, !606}
!1134 = !DILocation(line: 121, column: 9, scope: !593, inlinedAt: !1128)
!1135 = !DILocation(line: 122, column: 9, scope: !593, inlinedAt: !1128)
!1136 = !DILocation(line: 631, column: 5, scope: !1029)
!1137 = !{!1057, !1057, i64 0}
!1138 = !DILocation(line: 634, column: 1, scope: !1029)
!1139 = !DILocalVariable(name: "this", arg: 1, scope: !1140, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1140 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !260, retainedNodes: !1141)
!1141 = !{!1139}
!1142 = !DILocation(line: 0, scope: !1140, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 634, column: 1, scope: !1029)
!1144 = !DILocation(line: 0, scope: !618, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 457, column: 41, scope: !1146, inlinedAt: !1143)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !6, line: 457, column: 41)
!1147 = !DILocation(line: 109, column: 9, scope: !624, inlinedAt: !1145)
!1148 = !DILocation(line: 110, column: 9, scope: !624, inlinedAt: !1145)
!1149 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE", scope: !2, file: !6, line: 636, type: !1030, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1159, !1162, !1163, !1166}
!1151 = !DILocalVariable(name: "addr", arg: 1, scope: !1149, file: !6, line: 636, type: !22)
!1152 = !DILocalVariable(name: "control", arg: 2, scope: !1149, file: !6, line: 636, type: !1032)
!1153 = !DILocalVariable(name: "bucket", scope: !1149, file: !6, line: 637, type: !769)
!1154 = !DILocalVariable(name: "data_location", scope: !1149, file: !6, line: 639, type: !264)
!1155 = !DILocalVariable(name: "prev", scope: !1149, file: !6, line: 640, type: !249)
!1156 = !DILocalVariable(name: "data", scope: !1149, file: !6, line: 641, type: !249)
!1157 = !DILocalVariable(name: "cur_addr", scope: !1158, file: !6, line: 643, type: !22)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !6, line: 642, column: 29)
!1159 = !DILocalVariable(name: "next", scope: !1160, file: !6, line: 646, type: !249)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !6, line: 645, column: 31)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !6, line: 645, column: 13)
!1162 = !DILocalVariable(name: "more_waiters", scope: !1160, file: !6, line: 649, type: !64)
!1163 = !DILocalVariable(name: "data2", scope: !1164, file: !6, line: 654, type: !249)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !6, line: 653, column: 20)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !6, line: 651, column: 17)
!1166 = !DILocalVariable(name: "cur_addr2", scope: !1167, file: !6, line: 656, type: !22)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 655, column: 59)
!1168 = !DILocation(line: 0, scope: !1149)
!1169 = !DILocation(line: 637, column: 27, scope: !1149)
!1170 = !DILocation(line: 639, column: 42, scope: !1149)
!1171 = !DILocation(line: 641, column: 24, scope: !1149)
!1172 = !DILocation(line: 642, column: 5, scope: !1149)
!1173 = !DILocation(line: 639, column: 18, scope: !1149)
!1174 = !DILocation(line: 640, column: 17, scope: !1149)
!1175 = !DILocation(line: 641, column: 17, scope: !1149)
!1176 = !DILocation(line: 642, column: 17, scope: !1149)
!1177 = !DILocation(line: 644, column: 36, scope: !1158)
!1178 = !DILocation(line: 0, scope: !486, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 644, column: 9, scope: !1158)
!1180 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1179)
!1181 = !DILocation(line: 0, scope: !1158)
!1182 = !DILocation(line: 645, column: 22, scope: !1161)
!1183 = !DILocation(line: 0, scope: !1161)
!1184 = !DILocation(line: 645, column: 13, scope: !1158)
!1185 = !DILocation(line: 0, scope: !1160)
!1186 = !DILocation(line: 647, column: 28, scope: !1160)
!1187 = !DILocation(line: 651, column: 24, scope: !1165)
!1188 = !DILocation(line: 651, column: 29, scope: !1165)
!1189 = !DILocation(line: 651, column: 17, scope: !1160)
!1190 = !DILocation(line: 0, scope: !1164)
!1191 = !DILocation(line: 655, column: 30, scope: !1164)
!1192 = !DILocation(line: 655, column: 17, scope: !1164)
!1193 = !DILocation(line: 652, column: 29, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1165, file: !6, line: 651, column: 38)
!1195 = !DILocation(line: 653, column: 13, scope: !1194)
!1196 = !DILocation(line: 657, column: 49, scope: !1167)
!1197 = !DILocation(line: 0, scope: !486, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 657, column: 21, scope: !1167)
!1199 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1198)
!1200 = !DILocation(line: 0, scope: !1167)
!1201 = !DILocation(line: 658, column: 47, scope: !1167)
!1202 = !DILocation(line: 659, column: 36, scope: !1167)
!1203 = !DILocation(line: 655, column: 41, scope: !1164)
!1204 = distinct !{!1204, !1192, !1205, !606}
!1205 = !DILocation(line: 660, column: 17, scope: !1164)
!1206 = !DILocation(line: 658, column: 34, scope: !1167)
!1207 = !DILocation(line: 663, column: 41, scope: !1160)
!1208 = !DILocation(line: 649, column: 18, scope: !1160)
!1209 = !{!1079, !399, i64 16}
!1210 = !DILocation(line: 663, column: 61, scope: !1160)
!1211 = !DILocation(line: 663, column: 33, scope: !1160)
!1212 = !DILocation(line: 663, column: 19, scope: !1160)
!1213 = !DILocation(line: 663, column: 31, scope: !1160)
!1214 = !DILocation(line: 0, scope: !739, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 665, column: 26, scope: !1160)
!1216 = !DILocation(line: 126, column: 29, scope: !739, inlinedAt: !1215)
!1217 = !DILocation(line: 126, column: 9, scope: !739, inlinedAt: !1215)
!1218 = !DILocation(line: 0, scope: !923, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 666, column: 26, scope: !1160)
!1220 = !DILocation(line: 0, scope: !933, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !1219)
!1222 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !1221)
!1223 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !1219)
!1224 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !1219)
!1225 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !1219)
!1226 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !1219)
!1227 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1219)
!1228 = !DILocation(line: 0, scope: !746, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 667, column: 26, scope: !1160)
!1230 = !DILocation(line: 130, column: 9, scope: !746, inlinedAt: !1229)
!1231 = !DILocation(line: 130, column: 21, scope: !746, inlinedAt: !1229)
!1232 = !DILocation(line: 131, column: 30, scope: !746, inlinedAt: !1229)
!1233 = !DILocation(line: 131, column: 9, scope: !746, inlinedAt: !1229)
!1234 = !DILocation(line: 0, scope: !755, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 668, column: 26, scope: !1160)
!1236 = !DILocation(line: 135, column: 9, scope: !755, inlinedAt: !1235)
!1237 = distinct !{!1237, !1172, !1238, !606}
!1238 = !DILocation(line: 677, column: 5, scope: !1149)
!1239 = !DILocation(line: 679, column: 13, scope: !1149)
!1240 = !DILocation(line: 679, column: 5, scope: !1149)
!1241 = !DILocation(line: 0, scope: !923, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 681, column: 18, scope: !1149)
!1243 = !DILocation(line: 0, scope: !933, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !1242)
!1245 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !1244)
!1246 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !1242)
!1247 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !1242)
!1248 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !1242)
!1249 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !1242)
!1250 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1242)
!1251 = !DILocation(line: 685, column: 1, scope: !1149)
!1252 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy", scope: !2, file: !6, line: 687, type: !1253, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!22, !22, !22}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1264, !1268, !1269, !1270, !1272, !1273, !1278, !1280, !1282}
!1256 = !DILocalVariable(name: "addr", arg: 1, scope: !1252, file: !6, line: 687, type: !22)
!1257 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1252, file: !6, line: 687, type: !22)
!1258 = !DILocalVariable(name: "bucket", scope: !1252, file: !6, line: 688, type: !769)
!1259 = !DILocalVariable(name: "data_location", scope: !1252, file: !6, line: 690, type: !264)
!1260 = !DILocalVariable(name: "prev", scope: !1252, file: !6, line: 691, type: !249)
!1261 = !DILocalVariable(name: "data", scope: !1252, file: !6, line: 692, type: !249)
!1262 = !DILocalVariable(name: "waiters", scope: !1252, file: !6, line: 693, type: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !429)
!1264 = !DILocalVariable(name: "temp_list_storage", scope: !1252, file: !6, line: 694, type: !1265)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 16)
!1268 = !DILocalVariable(name: "temp_list", scope: !1252, file: !6, line: 695, type: !264)
!1269 = !DILocalVariable(name: "max_waiters", scope: !1252, file: !6, line: 696, type: !1263)
!1270 = !DILocalVariable(name: "cur_addr", scope: !1271, file: !6, line: 699, type: !22)
!1271 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 698, column: 29)
!1272 = !DILocalVariable(name: "next", scope: !1271, file: !6, line: 702, type: !249)
!1273 = !DILocalVariable(name: "temp", scope: !1274, file: !6, line: 711, type: !264)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 710, column: 41)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 710, column: 17)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !6, line: 703, column: 31)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 703, column: 13)
!1278 = !DILocalVariable(name: "i", scope: !1279, file: !6, line: 713, type: !1263)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 713, column: 17)
!1280 = !DILocalVariable(name: "i", scope: !1281, file: !6, line: 737, type: !1263)
!1281 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 737, column: 5)
!1282 = !DILocalVariable(name: "i", scope: !1283, file: !6, line: 742, type: !1263)
!1283 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 742, column: 5)
!1284 = !DILocation(line: 0, scope: !1252)
!1285 = !DILocation(line: 688, column: 27, scope: !1252)
!1286 = !DILocation(line: 690, column: 42, scope: !1252)
!1287 = !DILocation(line: 692, column: 24, scope: !1252)
!1288 = !DILocation(line: 694, column: 5, scope: !1252)
!1289 = !DILocation(line: 694, column: 17, scope: !1252)
!1290 = !DILocation(line: 695, column: 31, scope: !1252)
!1291 = !DILocation(line: 698, column: 17, scope: !1252)
!1292 = !DILocation(line: 698, column: 5, scope: !1252)
!1293 = !DILocation(line: 700, column: 36, scope: !1271)
!1294 = !DILocation(line: 0, scope: !486, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 700, column: 9, scope: !1271)
!1296 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1295)
!1297 = !DILocation(line: 702, column: 34, scope: !1271)
!1298 = !DILocation(line: 0, scope: !1271)
!1299 = !DILocation(line: 703, column: 22, scope: !1277)
!1300 = !DILocation(line: 0, scope: !1277)
!1301 = !DILocation(line: 703, column: 13, scope: !1271)
!1302 = !DILocation(line: 706, column: 24, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 706, column: 17)
!1304 = !DILocation(line: 706, column: 29, scope: !1303)
!1305 = !DILocation(line: 706, column: 17, scope: !1276)
!1306 = !DILocation(line: 707, column: 29, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !6, line: 706, column: 38)
!1308 = !DILocation(line: 708, column: 13, scope: !1307)
!1309 = !DILocation(line: 710, column: 25, scope: !1275)
!1310 = !DILocation(line: 710, column: 17, scope: !1276)
!1311 = !DILocation(line: 0, scope: !1274)
!1312 = !DILocation(line: 712, column: 86, scope: !1274)
!1313 = !DILocation(line: 712, column: 44, scope: !1274)
!1314 = !DILocation(line: 712, column: 29, scope: !1274)
!1315 = !DILocation(line: 0, scope: !1279)
!1316 = !DILocation(line: 713, column: 38, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1279, file: !6, line: 713, column: 17)
!1318 = !DILocation(line: 713, column: 17, scope: !1279)
!1319 = !DILocation(line: 716, column: 29, scope: !1274)
!1320 = !DILocation(line: 717, column: 26, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 717, column: 21)
!1322 = !DILocation(line: 717, column: 21, scope: !1274)
!1323 = !DILocation(line: 714, column: 36, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !6, line: 713, column: 58)
!1325 = !DILocation(line: 714, column: 21, scope: !1324)
!1326 = !DILocation(line: 714, column: 34, scope: !1324)
!1327 = !DILocation(line: 713, column: 54, scope: !1317)
!1328 = distinct !{!1328, !1318, !1329, !606}
!1329 = !DILocation(line: 715, column: 17, scope: !1279)
!1330 = !DILocation(line: 718, column: 26, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1321, file: !6, line: 717, column: 52)
!1332 = !DILocation(line: 718, column: 21, scope: !1331)
!1333 = !DILocation(line: 719, column: 17, scope: !1331)
!1334 = !DILocation(line: 722, column: 19, scope: !1276)
!1335 = !DILocation(line: 722, column: 31, scope: !1276)
!1336 = !DILocation(line: 724, column: 30, scope: !1276)
!1337 = !DILocation(line: 724, column: 13, scope: !1276)
!1338 = !DILocation(line: 724, column: 34, scope: !1276)
!1339 = !DILocation(line: 0, scope: !739, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 725, column: 26, scope: !1276)
!1341 = !DILocation(line: 126, column: 29, scope: !739, inlinedAt: !1340)
!1342 = !DILocation(line: 126, column: 9, scope: !739, inlinedAt: !1340)
!1343 = !DILocation(line: 728, column: 9, scope: !1276)
!1344 = distinct !{!1344, !1292, !1345, !606}
!1345 = !DILocation(line: 733, column: 5, scope: !1252)
!1346 = !DILocation(line: 0, scope: !923, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 735, column: 18, scope: !1252)
!1348 = !DILocation(line: 307, column: 51, scope: !923, inlinedAt: !1347)
!1349 = !DILocation(line: 0, scope: !933, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 307, column: 25, scope: !923, inlinedAt: !1347)
!1351 = !DILocation(line: 196, column: 12, scope: !933, inlinedAt: !1350)
!1352 = !DILocation(line: 310, column: 39, scope: !923, inlinedAt: !1347)
!1353 = !DILocation(line: 310, column: 57, scope: !923, inlinedAt: !1347)
!1354 = !DILocation(line: 313, column: 31, scope: !942, inlinedAt: !1347)
!1355 = !DILocation(line: 735, column: 12, scope: !1252)
!1356 = !DILocation(line: 314, column: 13, scope: !945, inlinedAt: !1347)
!1357 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1347)
!1358 = !DILocation(line: 0, scope: !1281)
!1359 = !DILocation(line: 737, column: 26, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1281, file: !6, line: 737, column: 5)
!1361 = !DILocation(line: 737, column: 5, scope: !1281)
!1362 = !DILocation(line: 0, scope: !1283)
!1363 = !DILocation(line: 742, column: 5, scope: !1283)
!1364 = !DILocation(line: 738, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !6, line: 737, column: 42)
!1366 = !DILocation(line: 0, scope: !746, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 738, column: 30, scope: !1365)
!1368 = !DILocation(line: 130, column: 9, scope: !746, inlinedAt: !1367)
!1369 = !DILocation(line: 130, column: 21, scope: !746, inlinedAt: !1367)
!1370 = !DILocation(line: 131, column: 30, scope: !746, inlinedAt: !1367)
!1371 = !DILocation(line: 131, column: 9, scope: !746, inlinedAt: !1367)
!1372 = !DILocation(line: 737, column: 38, scope: !1360)
!1373 = distinct !{!1373, !1361, !1374, !606}
!1374 = !DILocation(line: 739, column: 5, scope: !1281)
!1375 = !DILocation(line: 746, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 746, column: 9)
!1377 = !DILocation(line: 746, column: 9, scope: !1252)
!1378 = !DILocation(line: 743, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !6, line: 742, column: 42)
!1380 = distinct !DILexicalBlock(scope: !1283, file: !6, line: 742, column: 5)
!1381 = !DILocation(line: 0, scope: !755, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 743, column: 30, scope: !1379)
!1383 = !DILocation(line: 135, column: 31, scope: !755, inlinedAt: !1382)
!1384 = !DILocation(line: 135, column: 9, scope: !755, inlinedAt: !1382)
!1385 = !DILocation(line: 742, column: 38, scope: !1380)
!1386 = !DILocation(line: 742, column: 26, scope: !1380)
!1387 = distinct !{!1387, !1363, !1388, !606}
!1388 = !DILocation(line: 744, column: 5, scope: !1283)
!1389 = !DILocation(line: 747, column: 14, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1376, file: !6, line: 746, column: 45)
!1391 = !DILocation(line: 747, column: 9, scope: !1390)
!1392 = !DILocation(line: 748, column: 5, scope: !1390)
!1393 = !DILocation(line: 751, column: 1, scope: !1252)
!1394 = !DILocation(line: 750, column: 5, scope: !1252)
!1395 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy", scope: !2, file: !6, line: 753, type: !1396, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!29, !22, !22, !1032, !22}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413}
!1399 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1395, file: !6, line: 753, type: !22)
!1400 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1395, file: !6, line: 753, type: !22)
!1401 = !DILocalVariable(name: "control", arg: 3, scope: !1395, file: !6, line: 753, type: !1032)
!1402 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1395, file: !6, line: 753, type: !22)
!1403 = !DILocalVariable(name: "buckets", scope: !1395, file: !6, line: 754, type: !811)
!1404 = !DILocalVariable(name: "action", scope: !1395, file: !6, line: 756, type: !276)
!1405 = !DILocalVariable(name: "data_location", scope: !1395, file: !6, line: 762, type: !264)
!1406 = !DILocalVariable(name: "prev", scope: !1395, file: !6, line: 763, type: !249)
!1407 = !DILocalVariable(name: "data", scope: !1395, file: !6, line: 764, type: !249)
!1408 = !DILocalVariable(name: "requeue", scope: !1395, file: !6, line: 765, type: !249)
!1409 = !DILocalVariable(name: "requeue_tail", scope: !1395, file: !6, line: 766, type: !249)
!1410 = !DILocalVariable(name: "wakeup", scope: !1395, file: !6, line: 767, type: !249)
!1411 = !DILocalVariable(name: "cur_addr", scope: !1412, file: !6, line: 770, type: !22)
!1412 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 769, column: 29)
!1413 = !DILocalVariable(name: "next", scope: !1412, file: !6, line: 773, type: !249)
!1414 = !DILocation(line: 0, scope: !1395)
!1415 = !DILocation(line: 754, column: 5, scope: !1395)
!1416 = !DILocation(line: 754, column: 17, scope: !1395)
!1417 = !DILocation(line: 754, column: 27, scope: !1395)
!1418 = !DILocation(line: 756, column: 5, scope: !1395)
!1419 = !DILocation(line: 756, column: 21, scope: !1395)
!1420 = !DILocation(line: 0, scope: !1066, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 756, column: 21, scope: !1395)
!1422 = !DILocation(line: 577, column: 10, scope: !1066, inlinedAt: !1421)
!1423 = !DILocation(line: 578, column: 15, scope: !1066, inlinedAt: !1421)
!1424 = !DILocation(line: 757, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 757, column: 9)
!1426 = !DILocation(line: 757, column: 27, scope: !1425)
!1427 = !DILocation(line: 757, column: 10, scope: !1425)
!1428 = !DILocation(line: 757, column: 9, scope: !1395)
!1429 = !DILocation(line: 758, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !6, line: 757, column: 46)
!1431 = !DILocation(line: 759, column: 9, scope: !1430)
!1432 = !DILocation(line: 762, column: 43, scope: !1395)
!1433 = !DILocation(line: 762, column: 48, scope: !1395)
!1434 = !DILocation(line: 764, column: 24, scope: !1395)
!1435 = !DILocation(line: 769, column: 17, scope: !1395)
!1436 = !DILocation(line: 769, column: 5, scope: !1395)
!1437 = !DILocation(line: 771, column: 36, scope: !1412)
!1438 = !DILocation(line: 0, scope: !486, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 771, column: 9, scope: !1412)
!1440 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1439)
!1441 = !DILocation(line: 773, column: 34, scope: !1412)
!1442 = !DILocation(line: 0, scope: !1412)
!1443 = !DILocation(line: 774, column: 22, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1412, file: !6, line: 774, column: 13)
!1445 = !DILocation(line: 774, column: 13, scope: !1412)
!1446 = !DILocation(line: 775, column: 28, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !6, line: 774, column: 36)
!1448 = !DILocation(line: 777, column: 25, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !6, line: 777, column: 17)
!1450 = !DILocation(line: 777, column: 30, scope: !1449)
!1451 = !DILocation(line: 777, column: 35, scope: !1449)
!1452 = !DILocation(line: 777, column: 17, scope: !1447)
!1453 = !DILocation(line: 778, column: 35, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !6, line: 777, column: 44)
!1455 = !DILocation(line: 779, column: 13, scope: !1454)
!1456 = !DILocation(line: 781, column: 24, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !6, line: 781, column: 17)
!1458 = !DILocation(line: 781, column: 35, scope: !1457)
!1459 = !DILocation(line: 784, column: 29, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !6, line: 784, column: 21)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !6, line: 783, column: 20)
!1462 = !DILocation(line: 784, column: 21, scope: !1461)
!1463 = !DILocation(line: 787, column: 35, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !6, line: 786, column: 24)
!1465 = !DILocation(line: 787, column: 40, scope: !1464)
!1466 = !DILocalVariable(name: "addr", arg: 1, scope: !1467, file: !6, line: 213, type: !300)
!1467 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPyS4_", scope: !487, file: !6, line: 213, type: !1468, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !300, !300}
!1470 = !{!1466, !1471}
!1471 = !DILocalVariable(name: "val", arg: 2, scope: !1467, file: !6, line: 213, type: !300)
!1472 = !DILocation(line: 0, scope: !1467, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 791, column: 17, scope: !1461)
!1474 = !DILocation(line: 214, column: 5, scope: !1467, inlinedAt: !1473)
!1475 = !DILocation(line: 765, column: 17, scope: !1395)
!1476 = !DILocation(line: 766, column: 17, scope: !1395)
!1477 = distinct !{!1477, !1436, !1478, !606}
!1478 = !DILocation(line: 800, column: 5, scope: !1395)
!1479 = !DILocation(line: 802, column: 17, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 802, column: 9)
!1481 = !DILocation(line: 802, column: 9, scope: !1395)
!1482 = !DILocation(line: 803, column: 23, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !6, line: 802, column: 29)
!1484 = !DILocation(line: 803, column: 28, scope: !1483)
!1485 = !DILocation(line: 804, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !6, line: 804, column: 13)
!1487 = !DILocation(line: 804, column: 24, scope: !1486)
!1488 = !DILocation(line: 804, column: 29, scope: !1486)
!1489 = !DILocation(line: 804, column: 13, scope: !1483)
!1490 = !DILocation(line: 807, column: 24, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !6, line: 806, column: 16)
!1492 = !DILocation(line: 807, column: 30, scope: !1491)
!1493 = !DILocation(line: 0, scope: !1486)
!1494 = !DILocation(line: 809, column: 20, scope: !1483)
!1495 = !DILocation(line: 809, column: 25, scope: !1483)
!1496 = !DILocation(line: 810, column: 5, scope: !1483)
!1497 = !DILocation(line: 812, column: 13, scope: !1395)
!1498 = !{!1079, !399, i64 24}
!1499 = !DILocation(line: 812, column: 55, scope: !1395)
!1500 = !DILocation(line: 812, column: 5, scope: !1395)
!1501 = !DILocation(line: 814, column: 9, scope: !1395)
!1502 = !DILocation(line: 815, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 814, column: 28)
!1504 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 814, column: 9)
!1505 = !DILocation(line: 815, column: 29, scope: !1503)
!1506 = !DILocation(line: 0, scope: !739, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 816, column: 24, scope: !1503)
!1508 = !DILocation(line: 126, column: 29, scope: !739, inlinedAt: !1507)
!1509 = !DILocation(line: 126, column: 9, scope: !739, inlinedAt: !1507)
!1510 = !DILocation(line: 817, column: 9, scope: !1503)
!1511 = !DILocation(line: 0, scope: !746, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 818, column: 24, scope: !1503)
!1513 = !DILocation(line: 130, column: 9, scope: !746, inlinedAt: !1512)
!1514 = !DILocation(line: 130, column: 21, scope: !746, inlinedAt: !1512)
!1515 = !DILocation(line: 131, column: 30, scope: !746, inlinedAt: !1512)
!1516 = !DILocation(line: 131, column: 9, scope: !746, inlinedAt: !1512)
!1517 = !DILocation(line: 0, scope: !755, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 819, column: 24, scope: !1503)
!1519 = !DILocation(line: 135, column: 9, scope: !755, inlinedAt: !1518)
!1520 = !DILocation(line: 820, column: 5, scope: !1503)
!1521 = !DILocation(line: 821, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 820, column: 12)
!1523 = !DILocation(line: 824, column: 30, scope: !1395)
!1524 = !DILocation(line: 824, column: 12, scope: !1395)
!1525 = !DILocation(line: 825, column: 1, scope: !1395)
!1526 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 840, type: !273, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1530, !1531}
!1528 = !DILocalVariable(name: "control", arg: 1, scope: !1526, file: !6, line: 840, type: !43)
!1529 = !DILocalVariable(name: "action", arg: 2, scope: !1526, file: !6, line: 840, type: !275)
!1530 = !DILocalVariable(name: "mutex_control", scope: !1526, file: !6, line: 841, type: !265)
!1531 = !DILocalVariable(name: "result", scope: !1526, file: !6, line: 843, type: !22)
!1532 = !DILocation(line: 0, scope: !1526)
!1533 = !DILocation(line: 844, column: 40, scope: !1526)
!1534 = !{!1535, !399, i64 32}
!1535 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !399, i64 32}
!1536 = !DILocation(line: 0, scope: !486, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 844, column: 5, scope: !1526)
!1538 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1537)
!1539 = !DILocation(line: 845, column: 19, scope: !1526)
!1540 = !DILocation(line: 845, column: 5, scope: !1526)
!1541 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !2, file: !6, line: 849, type: !287, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547}
!1543 = !DILocalVariable(name: "control", arg: 1, scope: !1541, file: !6, line: 849, type: !43)
!1544 = !DILocalVariable(name: "unparked", arg: 2, scope: !1541, file: !6, line: 849, type: !29)
!1545 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1541, file: !6, line: 849, type: !64)
!1546 = !DILocalVariable(name: "mutex_control", scope: !1541, file: !6, line: 850, type: !265)
!1547 = !DILocalVariable(name: "return_state", scope: !1541, file: !6, line: 853, type: !22)
!1548 = !DILocation(line: 0, scope: !1541)
!1549 = !DILocation(line: 853, column: 30, scope: !1541)
!1550 = !DILocation(line: 854, column: 41, scope: !1541)
!1551 = !DILocalVariable(name: "addr", arg: 1, scope: !1552, file: !6, line: 218, type: !490)
!1552 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIyEEvPT_S6_", scope: !487, file: !6, line: 218, type: !488, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !493, retainedNodes: !1553)
!1553 = !{!1551, !1554}
!1554 = !DILocalVariable(name: "val", arg: 2, scope: !1552, file: !6, line: 218, type: !490)
!1555 = !DILocation(line: 0, scope: !1552, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 854, column: 5, scope: !1541)
!1557 = !DILocation(line: 219, column: 5, scope: !1552, inlinedAt: !1556)
!1558 = !DILocation(line: 856, column: 5, scope: !1541)
!1559 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !2, file: !6, line: 968, type: !287, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DILocalVariable(name: "control", arg: 1, scope: !1559, file: !6, line: 968, type: !43)
!1562 = !DILocalVariable(name: "unparked", arg: 2, scope: !1559, file: !6, line: 968, type: !29)
!1563 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1559, file: !6, line: 968, type: !64)
!1564 = !DILocalVariable(name: "signal_control", scope: !1559, file: !6, line: 969, type: !305)
!1565 = !DILocalVariable(name: "val", scope: !1566, file: !6, line: 972, type: !22)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 971, column: 24)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !6, line: 971, column: 9)
!1568 = !DILocation(line: 0, scope: !1559)
!1569 = !DILocation(line: 971, column: 9, scope: !1559)
!1570 = !DILocation(line: 0, scope: !1566)
!1571 = !DILocation(line: 973, column: 46, scope: !1566)
!1572 = !{!1573, !399, i64 32}
!1573 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !399, i64 32, !399, i64 40}
!1574 = !DILocation(line: 0, scope: !1467, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 973, column: 9, scope: !1566)
!1576 = !DILocation(line: 214, column: 5, scope: !1467, inlinedAt: !1575)
!1577 = !DILocation(line: 974, column: 5, scope: !1566)
!1578 = !DILocation(line: 979, column: 5, scope: !1559)
!1579 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 996, type: !273, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "control", arg: 1, scope: !1579, file: !6, line: 996, type: !43)
!1582 = !DILocalVariable(name: "action", arg: 2, scope: !1579, file: !6, line: 996, type: !275)
!1583 = !DILocalVariable(name: "broadcast_control", scope: !1579, file: !6, line: 997, type: !330)
!1584 = !DILocalVariable(name: "val", scope: !1579, file: !6, line: 999, type: !22)
!1585 = !DILocation(line: 0, scope: !1579)
!1586 = !DILocation(line: 1000, column: 44, scope: !1579)
!1587 = !{!1588, !399, i64 32}
!1588 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !399, i64 32, !399, i64 40}
!1589 = !DILocation(line: 0, scope: !486, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 1000, column: 5, scope: !1579)
!1591 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1590)
!1592 = !DILocation(line: 1004, column: 46, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1579, file: !6, line: 1004, column: 9)
!1594 = !{!1588, !399, i64 40}
!1595 = !DILocation(line: 1004, column: 16, scope: !1593)
!1596 = !DILocation(line: 1004, column: 13, scope: !1593)
!1597 = !DILocation(line: 1004, column: 9, scope: !1579)
!1598 = !DILocation(line: 0, scope: !1467, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1009, column: 5, scope: !1579)
!1600 = !DILocation(line: 214, column: 5, scope: !1467, inlinedAt: !1599)
!1601 = !DILocation(line: 1011, column: 45, scope: !1579)
!1602 = !DILocalVariable(name: "this", arg: 1, scope: !1603, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1603 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1604)
!1604 = !{!1602, !1605, !1606}
!1605 = !DILocalVariable(name: "val", scope: !1603, file: !6, line: 939, type: !22)
!1606 = !DILocalVariable(name: "desired", scope: !1607, file: !6, line: 946, type: !22)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !6, line: 941, column: 22)
!1608 = !DILocation(line: 0, scope: !1603, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 1011, column: 52, scope: !1579)
!1610 = !DILocation(line: 940, column: 30, scope: !1603, inlinedAt: !1609)
!1611 = !DILocation(line: 0, scope: !486, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 940, column: 9, scope: !1603, inlinedAt: !1609)
!1613 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1612)
!1614 = !DILocation(line: 942, column: 23, scope: !1615, inlinedAt: !1609)
!1615 = distinct !DILexicalBlock(scope: !1607, file: !6, line: 942, column: 17)
!1616 = !DILocation(line: 942, column: 18, scope: !1615, inlinedAt: !1609)
!1617 = !DILocation(line: 942, column: 17, scope: !1607, inlinedAt: !1609)
!1618 = !DILocation(line: 946, column: 37, scope: !1607, inlinedAt: !1609)
!1619 = !DILocation(line: 0, scope: !1607, inlinedAt: !1609)
!1620 = !DILocalVariable(name: "addr", arg: 1, scope: !1621, file: !6, line: 187, type: !300)
!1621 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPyS4_S4_", scope: !487, file: !6, line: 187, type: !506, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1622)
!1622 = !{!1620, !1623, !1624}
!1623 = !DILocalVariable(name: "expected", arg: 2, scope: !1621, file: !6, line: 187, type: !300)
!1624 = !DILocalVariable(name: "desired", arg: 3, scope: !1621, file: !6, line: 187, type: !300)
!1625 = !DILocation(line: 0, scope: !1621, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 947, column: 17, scope: !1627, inlinedAt: !1609)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !6, line: 947, column: 17)
!1628 = !DILocation(line: 188, column: 12, scope: !1621, inlinedAt: !1626)
!1629 = !DILocation(line: 1011, column: 12, scope: !1579)
!1630 = !DILocation(line: 1011, column: 23, scope: !1579)
!1631 = !DILocation(line: 1013, column: 5, scope: !1579)
!1632 = !DILocation(line: 1014, column: 1, scope: !1579)
!1633 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 1016, type: !291, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639}
!1635 = !DILocalVariable(name: "control", arg: 1, scope: !1633, file: !6, line: 1016, type: !43)
!1636 = !DILocalVariable(name: "action", arg: 2, scope: !1633, file: !6, line: 1016, type: !293)
!1637 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1633, file: !6, line: 1016, type: !64)
!1638 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1633, file: !6, line: 1016, type: !64)
!1639 = !DILocalVariable(name: "broadcast_control", scope: !1633, file: !6, line: 1017, type: !330)
!1640 = !DILocation(line: 0, scope: !1633)
!1641 = !DILocation(line: 1019, column: 16, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1633, file: !6, line: 1019, column: 9)
!1643 = !DILocation(line: 1019, column: 27, scope: !1642)
!1644 = !DILocation(line: 1020, column: 28, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !6, line: 1019, column: 45)
!1646 = !DILocalVariable(name: "this", arg: 1, scope: !1647, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1647 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !325, retainedNodes: !1648)
!1648 = !{!1646}
!1649 = !DILocation(line: 0, scope: !1647, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 1020, column: 35, scope: !1645)
!1651 = !DILocation(line: 954, column: 34, scope: !1647, inlinedAt: !1650)
!1652 = !DILocalVariable(name: "addr", arg: 1, scope: !1653, file: !6, line: 209, type: !300)
!1653 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPyy", scope: !487, file: !6, line: 209, type: !731, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1654)
!1654 = !{!1652, !1655}
!1655 = !DILocalVariable(name: "val", arg: 2, scope: !1653, file: !6, line: 209, type: !22)
!1656 = !DILocation(line: 0, scope: !1653, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 954, column: 9, scope: !1647, inlinedAt: !1650)
!1658 = !DILocation(line: 210, column: 12, scope: !1653, inlinedAt: !1657)
!1659 = !DILocation(line: 1021, column: 5, scope: !1645)
!1660 = !DILocation(line: 1022, column: 1, scope: !1633)
!1661 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 1038, type: !273, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DILocalVariable(name: "control", arg: 1, scope: !1661, file: !6, line: 1038, type: !43)
!1664 = !DILocalVariable(name: "action", arg: 2, scope: !1661, file: !6, line: 1038, type: !275)
!1665 = !DILocalVariable(name: "wait_control", scope: !1661, file: !6, line: 1039, type: !340)
!1666 = !DILocalVariable(name: "val", scope: !1661, file: !6, line: 1041, type: !22)
!1667 = !DILocation(line: 0, scope: !1661)
!1668 = !DILocation(line: 1042, column: 39, scope: !1661)
!1669 = !{!1670, !399, i64 32}
!1670 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !399, i64 32, !399, i64 40}
!1671 = !DILocation(line: 0, scope: !486, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1042, column: 5, scope: !1661)
!1673 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1672)
!1674 = !DILocation(line: 1044, column: 13, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1661, file: !6, line: 1044, column: 9)
!1676 = !DILocation(line: 0, scope: !1675)
!1677 = !{!1670, !399, i64 40}
!1678 = !DILocation(line: 1044, column: 9, scope: !1661)
!1679 = !DILocation(line: 0, scope: !1467, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 1046, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !6, line: 1044, column: 19)
!1682 = !DILocation(line: 214, column: 5, scope: !1467, inlinedAt: !1680)
!1683 = !DILocation(line: 1047, column: 5, scope: !1681)
!1684 = !DILocation(line: 1047, column: 20, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1675, file: !6, line: 1047, column: 16)
!1686 = !DILocation(line: 1047, column: 16, scope: !1675)
!1687 = !DILocation(line: 1049, column: 16, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 1047, column: 55)
!1689 = !DILocation(line: 1049, column: 36, scope: !1688)
!1690 = !DILocation(line: 1050, column: 9, scope: !1688)
!1691 = !DILocation(line: 1054, column: 1, scope: !1661)
!1692 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1693)
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "control", arg: 1, scope: !1692, file: !6, line: 1056, type: !43)
!1695 = !DILocalVariable(name: "wait_control", scope: !1692, file: !6, line: 1057, type: !340)
!1696 = !DILocation(line: 0, scope: !1692)
!1697 = !DILocation(line: 1059, column: 19, scope: !1692)
!1698 = !DILocalVariable(name: "this", arg: 1, scope: !1699, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1699 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1700)
!1700 = !{!1698, !1701, !1702}
!1701 = !DILocalVariable(name: "expected", scope: !1699, file: !6, line: 930, type: !22)
!1702 = !DILocalVariable(name: "desired", scope: !1699, file: !6, line: 931, type: !22)
!1703 = !DILocation(line: 0, scope: !1699, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 1059, column: 26, scope: !1692)
!1705 = !DILocation(line: 933, column: 47, scope: !1706, inlinedAt: !1704)
!1706 = distinct !DILexicalBlock(scope: !1699, file: !6, line: 933, column: 13)
!1707 = !DILocation(line: 0, scope: !584, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 933, column: 14, scope: !1706, inlinedAt: !1704)
!1709 = !DILocation(line: 184, column: 12, scope: !584, inlinedAt: !1708)
!1710 = !DILocation(line: 933, column: 13, scope: !1699, inlinedAt: !1704)
!1711 = !DILocalVariable(name: "this", arg: 1, scope: !1712, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1712 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1713)
!1713 = !{!1711, !1714, !1715, !1716}
!1714 = !DILocalVariable(name: "expected", scope: !1712, file: !6, line: 907, type: !22)
!1715 = !DILocalVariable(name: "desired", scope: !1712, file: !6, line: 908, type: !22)
!1716 = !DILocalVariable(name: "control", scope: !1712, file: !6, line: 915, type: !266)
!1717 = !DILocation(line: 0, scope: !1712, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 934, column: 13, scope: !1719, inlinedAt: !1704)
!1719 = distinct !DILexicalBlock(scope: !1706, file: !6, line: 933, column: 76)
!1720 = !DILocalVariable(name: "addr", arg: 1, scope: !1721, file: !6, line: 174, type: !300)
!1721 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPyS4_S4_", scope: !487, file: !6, line: 174, type: !506, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1722)
!1722 = !{!1720, !1723, !1724}
!1723 = !DILocalVariable(name: "expected", arg: 2, scope: !1721, file: !6, line: 174, type: !300)
!1724 = !DILocalVariable(name: "desired", arg: 3, scope: !1721, file: !6, line: 174, type: !300)
!1725 = !DILocation(line: 0, scope: !1721, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 911, column: 13, scope: !1727, inlinedAt: !1718)
!1727 = distinct !DILexicalBlock(scope: !1712, file: !6, line: 911, column: 13)
!1728 = !DILocation(line: 175, column: 12, scope: !1721, inlinedAt: !1726)
!1729 = !DILocation(line: 911, column: 13, scope: !1712, inlinedAt: !1718)
!1730 = !DILocation(line: 915, column: 9, scope: !1712, inlinedAt: !1718)
!1731 = !DILocation(line: 915, column: 31, scope: !1712, inlinedAt: !1718)
!1732 = !DILocalVariable(name: "this", arg: 1, scope: !1733, type: !265, flags: DIFlagArtificial | DIFlagObjectPointer)
!1733 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPy", scope: !266, file: !6, line: 832, type: !302, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !301, retainedNodes: !1734)
!1734 = !{!1732, !1735}
!1735 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1733, file: !6, line: 832, type: !300)
!1736 = !DILocation(line: 0, scope: !1733, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 915, column: 31, scope: !1712, inlinedAt: !1718)
!1738 = !DILocalVariable(name: "this", arg: 1, scope: !1739, type: !1741, flags: DIFlagArtificial | DIFlagObjectPointer)
!1739 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !269, file: !6, line: 598, type: !296, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !295, retainedNodes: !1740)
!1740 = !{!1738}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1742 = !DILocation(line: 0, scope: !1739, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 832, column: 19, scope: !1733, inlinedAt: !1737)
!1744 = !DILocation(line: 599, column: 11, scope: !1739, inlinedAt: !1743)
!1745 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !1743)
!1746 = !DILocation(line: 600, column: 11, scope: !1739, inlinedAt: !1743)
!1747 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !1743)
!1748 = !DILocation(line: 833, column: 11, scope: !1733, inlinedAt: !1737)
!1749 = !DILocation(line: 834, column: 18, scope: !1750, inlinedAt: !1737)
!1750 = distinct !DILexicalBlock(scope: !1733, file: !6, line: 833, column: 34)
!1751 = !DILocation(line: 835, column: 16, scope: !1750, inlinedAt: !1737)
!1752 = !DILocation(line: 916, column: 20, scope: !1712, inlinedAt: !1718)
!1753 = !DILocation(line: 916, column: 37, scope: !1712, inlinedAt: !1718)
!1754 = !DILocation(line: 916, column: 9, scope: !1712, inlinedAt: !1718)
!1755 = !DILocation(line: 917, column: 5, scope: !1712, inlinedAt: !1718)
!1756 = !DILocation(line: 1060, column: 1, scope: !1692)
!1757 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !2, file: !6, line: 1062, type: !287, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763}
!1759 = !DILocalVariable(name: "control", arg: 1, scope: !1757, file: !6, line: 1062, type: !43)
!1760 = !DILocalVariable(name: "unparked", arg: 2, scope: !1757, file: !6, line: 1062, type: !29)
!1761 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1757, file: !6, line: 1062, type: !64)
!1762 = !DILocalVariable(name: "wait_control", scope: !1757, file: !6, line: 1063, type: !340)
!1763 = !DILocalVariable(name: "val", scope: !1764, file: !6, line: 1066, type: !22)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !6, line: 1065, column: 24)
!1765 = distinct !DILexicalBlock(scope: !1757, file: !6, line: 1065, column: 9)
!1766 = !DILocation(line: 0, scope: !1757)
!1767 = !DILocation(line: 1065, column: 9, scope: !1757)
!1768 = !DILocation(line: 0, scope: !1764)
!1769 = !DILocation(line: 1067, column: 44, scope: !1764)
!1770 = !DILocation(line: 0, scope: !1467, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 1067, column: 9, scope: !1764)
!1772 = !DILocation(line: 214, column: 5, scope: !1467, inlinedAt: !1771)
!1773 = !DILocation(line: 1068, column: 5, scope: !1764)
!1774 = !DILocation(line: 1069, column: 5, scope: !1757)
!1775 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1776, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !367}
!1778 = !{!1779, !1780}
!1779 = !DILocalVariable(name: "mutex", arg: 1, scope: !1775, file: !6, line: 1131, type: !367)
!1780 = !DILocalVariable(name: "fast_mutex", scope: !1775, file: !6, line: 1132, type: !311)
!1781 = !DILocation(line: 0, scope: !1775)
!1782 = !DILocalVariable(name: "this", arg: 1, scope: !1783, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1783 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1784)
!1784 = !{!1782, !1785, !1786}
!1785 = !DILocalVariable(name: "expected", scope: !1783, file: !6, line: 921, type: !22)
!1786 = !DILocalVariable(name: "desired", scope: !1783, file: !6, line: 922, type: !22)
!1787 = !DILocation(line: 0, scope: !1783, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1134, column: 17, scope: !1775)
!1789 = !DILocation(line: 924, column: 47, scope: !1790, inlinedAt: !1788)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !6, line: 924, column: 13)
!1791 = !DILocation(line: 0, scope: !505, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 924, column: 14, scope: !1790, inlinedAt: !1788)
!1793 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !1792)
!1794 = !DILocation(line: 924, column: 13, scope: !1783, inlinedAt: !1788)
!1795 = !DILocalVariable(name: "this", arg: 1, scope: !1796, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1796 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !315, retainedNodes: !1797)
!1797 = !{!1795, !1798, !1799, !1800, !1804, !1807, !1808}
!1798 = !DILocalVariable(name: "spinner", scope: !1796, file: !6, line: 864, type: !464)
!1799 = !DILocalVariable(name: "expected", scope: !1796, file: !6, line: 865, type: !22)
!1800 = !DILocalVariable(name: "desired", scope: !1801, file: !6, line: 870, type: !22)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !6, line: 869, column: 41)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !6, line: 869, column: 17)
!1803 = distinct !DILexicalBlock(scope: !1796, file: !6, line: 868, column: 22)
!1804 = !DILocalVariable(name: "desired", scope: !1805, file: !6, line: 888, type: !22)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !6, line: 887, column: 47)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !6, line: 887, column: 17)
!1807 = !DILocalVariable(name: "control", scope: !1803, file: !6, line: 895, type: !266)
!1808 = !DILocalVariable(name: "result", scope: !1803, file: !6, line: 896, type: !22)
!1809 = !DILocation(line: 0, scope: !1796, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 925, column: 13, scope: !1811, inlinedAt: !1788)
!1811 = distinct !DILexicalBlock(scope: !1790, file: !6, line: 924, column: 76)
!1812 = !DILocation(line: 0, scope: !486, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 866, column: 9, scope: !1796, inlinedAt: !1810)
!1814 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1813)
!1815 = !DILocation(line: 868, column: 9, scope: !1796, inlinedAt: !1810)
!1816 = !DILocation(line: 869, column: 28, scope: !1802, inlinedAt: !1810)
!1817 = !DILocation(line: 869, column: 18, scope: !1802, inlinedAt: !1810)
!1818 = !DILocation(line: 869, column: 17, scope: !1803, inlinedAt: !1810)
!1819 = !DILocation(line: 870, column: 46, scope: !1801, inlinedAt: !1810)
!1820 = !DILocation(line: 0, scope: !1801, inlinedAt: !1810)
!1821 = !DILocation(line: 0, scope: !505, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 871, column: 21, scope: !1823, inlinedAt: !1810)
!1823 = distinct !DILexicalBlock(scope: !1801, file: !6, line: 871, column: 21)
!1824 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !1822)
!1825 = !DILocation(line: 238, column: 24, scope: !528, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 880, column: 25, scope: !1827, inlinedAt: !1810)
!1827 = distinct !DILexicalBlock(scope: !1803, file: !6, line: 880, column: 17)
!1828 = !DILocation(line: 0, scope: !519, inlinedAt: !1826)
!1829 = !DILocation(line: 238, column: 13, scope: !519, inlinedAt: !1826)
!1830 = !DILocation(line: 241, column: 27, scope: !519, inlinedAt: !1826)
!1831 = !DILocation(line: 880, column: 17, scope: !1803, inlinedAt: !1810)
!1832 = !DILocation(line: 239, column: 23, scope: !527, inlinedAt: !1826)
!1833 = !DILocation(line: 881, column: 17, scope: !1834, inlinedAt: !1810)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !6, line: 880, column: 40)
!1835 = !DILocation(line: 0, scope: !486, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 882, column: 17, scope: !1834, inlinedAt: !1810)
!1837 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1836)
!1838 = !DILocation(line: 883, column: 17, scope: !1834, inlinedAt: !1810)
!1839 = !DILocation(line: 887, column: 27, scope: !1806, inlinedAt: !1810)
!1840 = !DILocation(line: 887, column: 41, scope: !1806, inlinedAt: !1810)
!1841 = !DILocation(line: 887, column: 17, scope: !1803, inlinedAt: !1810)
!1842 = !DILocation(line: 888, column: 46, scope: !1805, inlinedAt: !1810)
!1843 = !DILocation(line: 0, scope: !1805, inlinedAt: !1810)
!1844 = !DILocation(line: 0, scope: !1621, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 889, column: 22, scope: !1846, inlinedAt: !1810)
!1846 = distinct !DILexicalBlock(scope: !1805, file: !6, line: 889, column: 21)
!1847 = !DILocation(line: 188, column: 12, scope: !1621, inlinedAt: !1845)
!1848 = !DILocation(line: 895, column: 13, scope: !1803, inlinedAt: !1810)
!1849 = !DILocation(line: 895, column: 35, scope: !1803, inlinedAt: !1810)
!1850 = !DILocation(line: 0, scope: !1733, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 895, column: 35, scope: !1803, inlinedAt: !1810)
!1852 = !DILocation(line: 0, scope: !1739, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 832, column: 19, scope: !1733, inlinedAt: !1851)
!1854 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !1853)
!1855 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !1853)
!1856 = !DILocation(line: 833, column: 11, scope: !1733, inlinedAt: !1851)
!1857 = !DILocation(line: 834, column: 18, scope: !1750, inlinedAt: !1851)
!1858 = !DILocation(line: 835, column: 16, scope: !1750, inlinedAt: !1851)
!1859 = !DILocation(line: 896, column: 32, scope: !1803, inlinedAt: !1810)
!1860 = !DILocation(line: 0, scope: !1803, inlinedAt: !1810)
!1861 = !DILocation(line: 897, column: 24, scope: !1862, inlinedAt: !1810)
!1862 = distinct !DILexicalBlock(scope: !1803, file: !6, line: 897, column: 17)
!1863 = !DILocation(line: 897, column: 17, scope: !1803, inlinedAt: !1810)
!1864 = !DILocation(line: 0, scope: !486, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 902, column: 13, scope: !1803, inlinedAt: !1810)
!1866 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1865)
!1867 = !DILocation(line: 903, column: 9, scope: !1796, inlinedAt: !1810)
!1868 = distinct !{!1868, !1815, !1867}
!1869 = !DILocation(line: 1135, column: 1, scope: !1775)
!1870 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1776, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1871)
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "mutex", arg: 1, scope: !1870, file: !6, line: 1137, type: !367)
!1873 = !DILocalVariable(name: "fast_mutex", scope: !1870, file: !6, line: 1138, type: !311)
!1874 = !DILocation(line: 0, scope: !1870)
!1875 = !DILocation(line: 0, scope: !1699, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1140, column: 17, scope: !1870)
!1877 = !DILocation(line: 933, column: 47, scope: !1706, inlinedAt: !1876)
!1878 = !DILocation(line: 0, scope: !584, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 933, column: 14, scope: !1706, inlinedAt: !1876)
!1880 = !DILocation(line: 184, column: 12, scope: !584, inlinedAt: !1879)
!1881 = !DILocation(line: 933, column: 13, scope: !1699, inlinedAt: !1876)
!1882 = !DILocation(line: 0, scope: !1712, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 934, column: 13, scope: !1719, inlinedAt: !1876)
!1884 = !DILocation(line: 0, scope: !1721, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 911, column: 13, scope: !1727, inlinedAt: !1883)
!1886 = !DILocation(line: 175, column: 12, scope: !1721, inlinedAt: !1885)
!1887 = !DILocation(line: 911, column: 13, scope: !1712, inlinedAt: !1883)
!1888 = !DILocation(line: 915, column: 9, scope: !1712, inlinedAt: !1883)
!1889 = !DILocation(line: 915, column: 31, scope: !1712, inlinedAt: !1883)
!1890 = !DILocation(line: 0, scope: !1733, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 915, column: 31, scope: !1712, inlinedAt: !1883)
!1892 = !DILocation(line: 0, scope: !1739, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 832, column: 19, scope: !1733, inlinedAt: !1891)
!1894 = !DILocation(line: 599, column: 11, scope: !1739, inlinedAt: !1893)
!1895 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !1893)
!1896 = !DILocation(line: 600, column: 11, scope: !1739, inlinedAt: !1893)
!1897 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !1893)
!1898 = !DILocation(line: 833, column: 11, scope: !1733, inlinedAt: !1891)
!1899 = !DILocation(line: 834, column: 18, scope: !1750, inlinedAt: !1891)
!1900 = !DILocation(line: 835, column: 16, scope: !1750, inlinedAt: !1891)
!1901 = !DILocation(line: 916, column: 20, scope: !1712, inlinedAt: !1883)
!1902 = !DILocation(line: 916, column: 37, scope: !1712, inlinedAt: !1883)
!1903 = !DILocation(line: 916, column: 9, scope: !1712, inlinedAt: !1883)
!1904 = !DILocation(line: 917, column: 5, scope: !1712, inlinedAt: !1883)
!1905 = !DILocation(line: 1141, column: 1, scope: !1870)
!1906 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1907, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1910)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1910 = !{!1911, !1912}
!1911 = !DILocalVariable(name: "cond", arg: 1, scope: !1906, file: !6, line: 1143, type: !1909)
!1912 = !DILocalVariable(name: "fast_cond", scope: !1906, file: !6, line: 1144, type: !350)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocalVariable(name: "this", arg: 1, scope: !1915, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1915 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !359, retainedNodes: !1916)
!1916 = !{!1914, !1917, !1918}
!1917 = !DILocalVariable(name: "val", scope: !1915, file: !6, line: 1094, type: !22)
!1918 = !DILocalVariable(name: "control", scope: !1915, file: !6, line: 1100, type: !331)
!1919 = !DILocation(line: 0, scope: !1915, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 1146, column: 16, scope: !1906)
!1921 = !DILocation(line: 1095, column: 30, scope: !1915, inlinedAt: !1920)
!1922 = !DILocation(line: 0, scope: !486, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 1095, column: 9, scope: !1915, inlinedAt: !1920)
!1924 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1923)
!1925 = !DILocation(line: 1096, column: 17, scope: !1926, inlinedAt: !1920)
!1926 = distinct !DILexicalBlock(scope: !1915, file: !6, line: 1096, column: 13)
!1927 = !DILocation(line: 1096, column: 13, scope: !1915, inlinedAt: !1920)
!1928 = !DILocation(line: 1100, column: 9, scope: !1915, inlinedAt: !1920)
!1929 = !DILocation(line: 1100, column: 35, scope: !1915, inlinedAt: !1920)
!1930 = !DILocation(line: 1100, column: 51, scope: !1915, inlinedAt: !1920)
!1931 = !DILocalVariable(name: "this", arg: 1, scope: !1932, type: !330, flags: DIFlagArtificial | DIFlagObjectPointer)
!1932 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPyPNS2_10fast_mutexE", scope: !331, file: !6, line: 989, type: !337, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !336, retainedNodes: !1933)
!1933 = !{!1931, !1934, !1935}
!1934 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1932, file: !6, line: 989, type: !300)
!1935 = !DILocalVariable(name: "mutex", arg: 3, scope: !1932, file: !6, line: 989, type: !311)
!1936 = !DILocation(line: 0, scope: !1932, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1100, column: 35, scope: !1915, inlinedAt: !1920)
!1938 = !DILocation(line: 0, scope: !1739, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 989, column: 19, scope: !1932, inlinedAt: !1937)
!1940 = !DILocation(line: 599, column: 11, scope: !1739, inlinedAt: !1939)
!1941 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !1939)
!1942 = !DILocation(line: 600, column: 11, scope: !1739, inlinedAt: !1939)
!1943 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !1939)
!1944 = !DILocation(line: 990, column: 11, scope: !1932, inlinedAt: !1937)
!1945 = !DILocation(line: 990, column: 35, scope: !1932, inlinedAt: !1937)
!1946 = !DILocation(line: 991, column: 18, scope: !1947, inlinedAt: !1937)
!1947 = distinct !DILexicalBlock(scope: !1932, file: !6, line: 990, column: 48)
!1948 = !DILocation(line: 992, column: 26, scope: !1947, inlinedAt: !1937)
!1949 = !DILocation(line: 1101, column: 24, scope: !1915, inlinedAt: !1920)
!1950 = !DILocation(line: 1101, column: 46, scope: !1915, inlinedAt: !1920)
!1951 = !DILocation(line: 1101, column: 9, scope: !1915, inlinedAt: !1920)
!1952 = !DILocation(line: 1103, column: 5, scope: !1915, inlinedAt: !1920)
!1953 = !DILocation(line: 1147, column: 1, scope: !1906)
!1954 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1907, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "cond", arg: 1, scope: !1954, file: !6, line: 1149, type: !1909)
!1957 = !DILocalVariable(name: "fast_cond", scope: !1954, file: !6, line: 1150, type: !350)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocalVariable(name: "this", arg: 1, scope: !1960, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1960 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !1961)
!1961 = !{!1959, !1962, !1963}
!1962 = !DILocalVariable(name: "val", scope: !1960, file: !6, line: 1081, type: !22)
!1963 = !DILocalVariable(name: "control", scope: !1960, file: !6, line: 1087, type: !306)
!1964 = !DILocation(line: 0, scope: !1960, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 1152, column: 16, scope: !1954)
!1966 = !DILocation(line: 1082, column: 30, scope: !1960, inlinedAt: !1965)
!1967 = !DILocation(line: 0, scope: !486, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 1082, column: 9, scope: !1960, inlinedAt: !1965)
!1969 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !1968)
!1970 = !DILocation(line: 1083, column: 17, scope: !1971, inlinedAt: !1965)
!1971 = distinct !DILexicalBlock(scope: !1960, file: !6, line: 1083, column: 13)
!1972 = !DILocation(line: 1083, column: 13, scope: !1960, inlinedAt: !1965)
!1973 = !DILocation(line: 1087, column: 9, scope: !1960, inlinedAt: !1965)
!1974 = !DILocation(line: 1087, column: 32, scope: !1960, inlinedAt: !1965)
!1975 = !DILocation(line: 1087, column: 48, scope: !1960, inlinedAt: !1965)
!1976 = !DILocalVariable(name: "this", arg: 1, scope: !1977, type: !305, flags: DIFlagArtificial | DIFlagObjectPointer)
!1977 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPyPNS2_10fast_mutexE", scope: !306, file: !6, line: 962, type: !327, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !326, retainedNodes: !1978)
!1978 = !{!1976, !1979, !1980}
!1979 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1977, file: !6, line: 962, type: !300)
!1980 = !DILocalVariable(name: "mutex", arg: 3, scope: !1977, file: !6, line: 962, type: !311)
!1981 = !DILocation(line: 0, scope: !1977, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 1087, column: 32, scope: !1960, inlinedAt: !1965)
!1983 = !DILocation(line: 0, scope: !1739, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 962, column: 19, scope: !1977, inlinedAt: !1982)
!1985 = !DILocation(line: 599, column: 11, scope: !1739, inlinedAt: !1984)
!1986 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !1984)
!1987 = !DILocation(line: 600, column: 11, scope: !1739, inlinedAt: !1984)
!1988 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !1984)
!1989 = !DILocation(line: 963, column: 11, scope: !1977, inlinedAt: !1982)
!1990 = !DILocation(line: 963, column: 35, scope: !1977, inlinedAt: !1982)
!1991 = !{!1573, !399, i64 40}
!1992 = !DILocation(line: 964, column: 16, scope: !1993, inlinedAt: !1982)
!1993 = distinct !DILexicalBlock(scope: !1977, file: !6, line: 963, column: 48)
!1994 = !DILocation(line: 1088, column: 20, scope: !1960, inlinedAt: !1965)
!1995 = !DILocation(line: 1088, column: 37, scope: !1960, inlinedAt: !1965)
!1996 = !DILocation(line: 1088, column: 9, scope: !1960, inlinedAt: !1965)
!1997 = !DILocation(line: 1090, column: 5, scope: !1960, inlinedAt: !1965)
!1998 = !DILocation(line: 1153, column: 1, scope: !1954)
!1999 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !2000, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1909, !367}
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "cond", arg: 1, scope: !1999, file: !6, line: 1155, type: !1909)
!2004 = !DILocalVariable(name: "mutex", arg: 2, scope: !1999, file: !6, line: 1155, type: !367)
!2005 = !DILocalVariable(name: "fast_cond", scope: !1999, file: !6, line: 1156, type: !350)
!2006 = !DILocalVariable(name: "fast_mutex", scope: !1999, file: !6, line: 1158, type: !311)
!2007 = !DILocation(line: 0, scope: !1999)
!2008 = !DILocalVariable(name: "this", arg: 1, scope: !2009, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!2009 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !2010)
!2010 = !{!2008, !2011, !2012, !2013, !2014}
!2011 = !DILocalVariable(name: "mutex", arg: 2, scope: !2009, file: !6, line: 1105, type: !311)
!2012 = !DILocalVariable(name: "control", scope: !2009, file: !6, line: 1106, type: !341)
!2013 = !DILocalVariable(name: "result", scope: !2009, file: !6, line: 1107, type: !22)
!2014 = !DILocalVariable(name: "val", scope: !2015, file: !6, line: 1114, type: !22)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !6, line: 1110, column: 16)
!2016 = distinct !DILexicalBlock(scope: !2009, file: !6, line: 1108, column: 13)
!2017 = !DILocation(line: 0, scope: !2009, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 1160, column: 16, scope: !1999)
!2019 = !DILocation(line: 1106, column: 9, scope: !2009, inlinedAt: !2018)
!2020 = !DILocation(line: 1106, column: 30, scope: !2009, inlinedAt: !2018)
!2021 = !DILocation(line: 1106, column: 39, scope: !2009, inlinedAt: !2018)
!2022 = !DILocalVariable(name: "this", arg: 1, scope: !2023, type: !340, flags: DIFlagArtificial | DIFlagObjectPointer)
!2023 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPyPNS2_10fast_mutexE", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !346, retainedNodes: !2024)
!2024 = !{!2022, !2025, !2026}
!2025 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2023, file: !6, line: 1030, type: !300)
!2026 = !DILocalVariable(name: "mutex", arg: 3, scope: !2023, file: !6, line: 1030, type: !311)
!2027 = !DILocation(line: 0, scope: !2023, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 1106, column: 30, scope: !2009, inlinedAt: !2018)
!2029 = !DILocation(line: 0, scope: !1739, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 1030, column: 19, scope: !2023, inlinedAt: !2028)
!2031 = !DILocation(line: 599, column: 11, scope: !1739, inlinedAt: !2030)
!2032 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !2030)
!2033 = !DILocation(line: 600, column: 11, scope: !1739, inlinedAt: !2030)
!2034 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !2030)
!2035 = !DILocation(line: 1031, column: 11, scope: !2023, inlinedAt: !2028)
!2036 = !DILocation(line: 1031, column: 35, scope: !2023, inlinedAt: !2028)
!2037 = !DILocation(line: 1032, column: 18, scope: !2038, inlinedAt: !2028)
!2038 = distinct !DILexicalBlock(scope: !2023, file: !6, line: 1031, column: 48)
!2039 = !DILocation(line: 1033, column: 22, scope: !2038, inlinedAt: !2028)
!2040 = !DILocation(line: 1034, column: 16, scope: !2038, inlinedAt: !2028)
!2041 = !DILocation(line: 1107, column: 33, scope: !2009, inlinedAt: !2018)
!2042 = !DILocation(line: 1107, column: 50, scope: !2009, inlinedAt: !2018)
!2043 = !DILocation(line: 1107, column: 28, scope: !2009, inlinedAt: !2018)
!2044 = !DILocation(line: 1108, column: 23, scope: !2016, inlinedAt: !2018)
!2045 = !DILocation(line: 1108, column: 20, scope: !2016, inlinedAt: !2018)
!2046 = !DILocation(line: 0, scope: !2016, inlinedAt: !2018)
!2047 = !DILocation(line: 1108, column: 13, scope: !2009, inlinedAt: !2018)
!2048 = !DILocation(line: 0, scope: !1783, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1109, column: 20, scope: !2050, inlinedAt: !2018)
!2050 = distinct !DILexicalBlock(scope: !2016, file: !6, line: 1108, column: 41)
!2051 = !DILocation(line: 0, scope: !505, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 924, column: 14, scope: !1790, inlinedAt: !2049)
!2053 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !2052)
!2054 = !DILocation(line: 924, column: 13, scope: !1783, inlinedAt: !2049)
!2055 = !DILocation(line: 0, scope: !1796, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 925, column: 13, scope: !1811, inlinedAt: !2049)
!2057 = !DILocation(line: 0, scope: !486, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 866, column: 9, scope: !1796, inlinedAt: !2056)
!2059 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !2058)
!2060 = !DILocation(line: 868, column: 9, scope: !1796, inlinedAt: !2056)
!2061 = !DILocation(line: 869, column: 28, scope: !1802, inlinedAt: !2056)
!2062 = !DILocation(line: 869, column: 18, scope: !1802, inlinedAt: !2056)
!2063 = !DILocation(line: 869, column: 17, scope: !1803, inlinedAt: !2056)
!2064 = !DILocation(line: 870, column: 46, scope: !1801, inlinedAt: !2056)
!2065 = !DILocation(line: 0, scope: !1801, inlinedAt: !2056)
!2066 = !DILocation(line: 0, scope: !505, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 871, column: 21, scope: !1823, inlinedAt: !2056)
!2068 = !DILocation(line: 192, column: 12, scope: !505, inlinedAt: !2067)
!2069 = !DILocation(line: 238, column: 24, scope: !528, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 880, column: 25, scope: !1827, inlinedAt: !2056)
!2071 = !DILocation(line: 0, scope: !519, inlinedAt: !2070)
!2072 = !DILocation(line: 238, column: 13, scope: !519, inlinedAt: !2070)
!2073 = !DILocation(line: 241, column: 27, scope: !519, inlinedAt: !2070)
!2074 = !DILocation(line: 880, column: 17, scope: !1803, inlinedAt: !2056)
!2075 = !DILocation(line: 239, column: 23, scope: !527, inlinedAt: !2070)
!2076 = !DILocation(line: 881, column: 17, scope: !1834, inlinedAt: !2056)
!2077 = !DILocation(line: 0, scope: !486, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 882, column: 17, scope: !1834, inlinedAt: !2056)
!2079 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !2078)
!2080 = !DILocation(line: 883, column: 17, scope: !1834, inlinedAt: !2056)
!2081 = !DILocation(line: 887, column: 27, scope: !1806, inlinedAt: !2056)
!2082 = !DILocation(line: 887, column: 41, scope: !1806, inlinedAt: !2056)
!2083 = !DILocation(line: 887, column: 17, scope: !1803, inlinedAt: !2056)
!2084 = !DILocation(line: 888, column: 46, scope: !1805, inlinedAt: !2056)
!2085 = !DILocation(line: 0, scope: !1805, inlinedAt: !2056)
!2086 = !DILocation(line: 0, scope: !1621, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 889, column: 22, scope: !1846, inlinedAt: !2056)
!2088 = !DILocation(line: 188, column: 12, scope: !1621, inlinedAt: !2087)
!2089 = !DILocation(line: 895, column: 13, scope: !1803, inlinedAt: !2056)
!2090 = !DILocation(line: 895, column: 35, scope: !1803, inlinedAt: !2056)
!2091 = !DILocation(line: 0, scope: !1733, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 895, column: 35, scope: !1803, inlinedAt: !2056)
!2093 = !DILocation(line: 0, scope: !1739, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 832, column: 19, scope: !1733, inlinedAt: !2092)
!2095 = !DILocation(line: 599, column: 47, scope: !1739, inlinedAt: !2094)
!2096 = !DILocation(line: 600, column: 43, scope: !1739, inlinedAt: !2094)
!2097 = !DILocation(line: 833, column: 11, scope: !1733, inlinedAt: !2092)
!2098 = !DILocation(line: 834, column: 18, scope: !1750, inlinedAt: !2092)
!2099 = !DILocation(line: 835, column: 16, scope: !1750, inlinedAt: !2092)
!2100 = !DILocation(line: 896, column: 32, scope: !1803, inlinedAt: !2056)
!2101 = !DILocation(line: 0, scope: !1803, inlinedAt: !2056)
!2102 = !DILocation(line: 897, column: 24, scope: !1862, inlinedAt: !2056)
!2103 = !DILocation(line: 897, column: 17, scope: !1803, inlinedAt: !2056)
!2104 = !DILocation(line: 0, scope: !486, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 902, column: 13, scope: !1803, inlinedAt: !2056)
!2106 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !2105)
!2107 = !DILocation(line: 903, column: 9, scope: !1796, inlinedAt: !2056)
!2108 = distinct !{!2108, !2060, !2107}
!2109 = !DILocation(line: 0, scope: !486, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 1115, column: 13, scope: !2015, inlinedAt: !2018)
!2111 = !DILocation(line: 201, column: 5, scope: !486, inlinedAt: !2110)
!2112 = !DILocation(line: 0, scope: !2015, inlinedAt: !2018)
!2113 = !DILocation(line: 1116, column: 13, scope: !2114, inlinedAt: !2018)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !6, line: 1116, column: 13)
!2115 = distinct !DILexicalBlock(scope: !2015, file: !6, line: 1116, column: 13)
!2116 = !DILocation(line: 1116, column: 13, scope: !2115, inlinedAt: !2018)
!2117 = !DILocation(line: 1116, column: 13, scope: !2118, inlinedAt: !2018)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !6, line: 1116, column: 13)
!2119 = !DILocation(line: 1120, column: 5, scope: !2009, inlinedAt: !2018)
!2120 = !DILocation(line: 1161, column: 1, scope: !1999)
!2121 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2122, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!363, !29}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "sz", arg: 1, scope: !2121, file: !6, line: 1168, type: !29)
!2126 = !DILocalVariable(name: "array", scope: !2121, file: !6, line: 1171, type: !363)
!2127 = !DILocation(line: 0, scope: !2121)
!2128 = !DILocation(line: 1171, column: 55, scope: !2121)
!2129 = !DILocation(line: 1171, column: 33, scope: !2121)
!2130 = !DILocation(line: 1173, column: 15, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !6, line: 1173, column: 9)
!2132 = !DILocation(line: 1173, column: 9, scope: !2121)
!2133 = !DILocation(line: 1178, column: 18, scope: !2121)
!2134 = !DILocation(line: 1178, column: 21, scope: !2121)
!2135 = !DILocation(line: 1177, column: 36, scope: !2121)
!2136 = !DILocation(line: 1177, column: 18, scope: !2121)
!2137 = !{!2138, !399, i64 0}
!2138 = !{!"_ZTS18halide_mutex_array", !399, i64 0}
!2139 = !DILocation(line: 1179, column: 22, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2121, file: !6, line: 1179, column: 9)
!2141 = !DILocation(line: 1179, column: 9, scope: !2121)
!2142 = !DILocation(line: 1180, column: 9, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !6, line: 1179, column: 34)
!2144 = !DILocation(line: 1182, column: 9, scope: !2143)
!2145 = !DILocation(line: 1184, column: 5, scope: !2121)
!2146 = !DILocation(line: 1185, column: 5, scope: !2121)
!2147 = !DILocation(line: 1186, column: 1, scope: !2121)
!2148 = !DISubprogram(name: "halide_malloc", scope: !18, file: !18, line: 354, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!43, !43, !429}
!2151 = !DISubprogram(name: "halide_free", scope: !18, file: !18, line: 355, type: !2152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !43, !43}
!2154 = !DISubprogram(name: "memset", scope: !23, file: !23, line: 96, type: !2155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!43, !43, !29, !429}
!2157 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2152, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "user_context", arg: 1, scope: !2157, file: !6, line: 1188, type: !43)
!2160 = !DILocalVariable(name: "array", arg: 2, scope: !2157, file: !6, line: 1188, type: !43)
!2161 = !DILocalVariable(name: "arr_ptr", scope: !2157, file: !6, line: 1189, type: !363)
!2162 = !DILocation(line: 0, scope: !2157)
!2163 = !DILocation(line: 1190, column: 40, scope: !2157)
!2164 = !DILocation(line: 1190, column: 5, scope: !2157)
!2165 = !DILocation(line: 1191, column: 5, scope: !2157)
!2166 = !DILocation(line: 1192, column: 1, scope: !2157)
!2167 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2168, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!29, !363, !29}
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "array", arg: 1, scope: !2167, file: !6, line: 1194, type: !363)
!2172 = !DILocalVariable(name: "entry", arg: 2, scope: !2167, file: !6, line: 1194, type: !29)
!2173 = !DILocation(line: 0, scope: !2167)
!2174 = !DILocation(line: 1195, column: 31, scope: !2167)
!2175 = !DILocation(line: 1195, column: 24, scope: !2167)
!2176 = !DILocation(line: 1195, column: 5, scope: !2167)
!2177 = !DILocation(line: 1196, column: 5, scope: !2167)
!2178 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2168, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2179)
!2179 = !{!2180, !2181}
!2180 = !DILocalVariable(name: "array", arg: 1, scope: !2178, file: !6, line: 1199, type: !363)
!2181 = !DILocalVariable(name: "entry", arg: 2, scope: !2178, file: !6, line: 1199, type: !29)
!2182 = !DILocation(line: 0, scope: !2178)
!2183 = !DILocation(line: 1200, column: 33, scope: !2178)
!2184 = !DILocation(line: 1200, column: 26, scope: !2178)
!2185 = !DILocation(line: 1200, column: 5, scope: !2178)
!2186 = !DILocation(line: 1201, column: 5, scope: !2178)
!2187 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !3, file: !13, line: 69, type: !2188, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!29, !29}
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "threads", arg: 1, scope: !2187, file: !13, line: 69, type: !29)
!2192 = !DILocation(line: 0, scope: !2187)
!2193 = !DILocation(line: 70, column: 17, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2187, file: !13, line: 70, column: 9)
!2195 = !DILocation(line: 70, column: 9, scope: !2187)
!2196 = !DILocation(line: 72, column: 16, scope: !2194)
!2197 = !DILocation(line: 75, column: 5, scope: !2187)
!2198 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !3, file: !13, line: 78, type: !2199, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!29}
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "desired_num_threads", scope: !2198, file: !13, line: 79, type: !29)
!2203 = !DILocalVariable(name: "threads_str", scope: !2198, file: !13, line: 80, type: !372)
!2204 = !DILocation(line: 0, scope: !2198)
!2205 = !DILocation(line: 80, column: 25, scope: !2198)
!2206 = !DILocation(line: 81, column: 10, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2198, file: !13, line: 81, column: 9)
!2208 = !DILocation(line: 81, column: 9, scope: !2198)
!2209 = !DILocation(line: 83, column: 23, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !13, line: 81, column: 23)
!2211 = !DILocation(line: 85, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2198, file: !13, line: 85, column: 9)
!2213 = !DILocation(line: 85, column: 9, scope: !2198)
!2214 = !DILocation(line: 86, column: 31, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !13, line: 85, column: 22)
!2216 = !DILocation(line: 87, column: 5, scope: !2215)
!2217 = !DILocation(line: 88, column: 31, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !13, line: 87, column: 12)
!2219 = !DILocation(line: 0, scope: !2212)
!2220 = !DILocation(line: 90, column: 5, scope: !2198)
!2221 = !DISubprogram(name: "getenv", scope: !23, file: !23, line: 85, type: !2222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!372, !49}
!2224 = !DISubprogram(name: "atoi", scope: !23, file: !23, line: 89, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!29, !49}
!2227 = !DISubprogram(name: "halide_host_cpu_count", scope: !23, file: !23, line: 159, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2228 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !3, file: !13, line: 197, type: !2229, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !32}
!2231 = !{!2232, !2233, !2234, !2236, !2238, !2240, !2242, !2243, !2244, !2245, !2246, !2247, !2250, !2251, !2253, !2254}
!2232 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2228, file: !13, line: 197, type: !32)
!2233 = !DILocalVariable(name: "spin_count", scope: !2228, file: !13, line: 198, type: !29)
!2234 = !DILocalVariable(name: "max_spin_count", scope: !2228, file: !13, line: 199, type: !2235)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2236 = !DILocalVariable(name: "job", scope: !2237, file: !13, line: 202, type: !32)
!2237 = distinct !DILexicalBlock(scope: !2228, file: !13, line: 201, column: 69)
!2238 = !DILocalVariable(name: "prev_ptr", scope: !2237, file: !13, line: 203, type: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2240 = !DILocalVariable(name: "enough_threads", scope: !2241, file: !13, line: 235, type: !64)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 229, column: 21)
!2242 = !DILocalVariable(name: "parent_job", scope: !2241, file: !13, line: 237, type: !32)
!2243 = !DILocalVariable(name: "threads_available", scope: !2241, file: !13, line: 239, type: !29)
!2244 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2241, file: !13, line: 256, type: !64)
!2245 = !DILocalVariable(name: "can_add_worker", scope: !2241, file: !13, line: 260, type: !64)
!2246 = !DILocalVariable(name: "result", scope: !2237, file: !13, line: 328, type: !29)
!2247 = !DILocalVariable(name: "total_iters", scope: !2248, file: !13, line: 336, type: !29)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !13, line: 330, column: 31)
!2249 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 330, column: 13)
!2250 = !DILocalVariable(name: "iters", scope: !2248, file: !13, line: 337, type: !29)
!2251 = !DILocalVariable(name: "myjob", scope: !2252, file: !13, line: 369, type: !33)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !13, line: 367, column: 16)
!2253 = !DILocalVariable(name: "wake_owners", scope: !2237, file: !13, line: 396, type: !64)
!2254 = !DILocalVariable(name: "i", scope: !2255, file: !13, line: 402, type: !29)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !13, line: 402, column: 13)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !13, line: 399, column: 26)
!2257 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 399, column: 13)
!2258 = !DILocation(line: 0, scope: !2228)
!2259 = !DILocation(line: 63, column: 31, scope: !2260, inlinedAt: !2264)
!2260 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2261)
!2261 = !{!2262}
!2262 = !DILocalVariable(name: "this", arg: 1, scope: !2260, type: !2263, flags: DIFlagArtificial | DIFlagObjectPointer)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2264 = distinct !DILocation(line: 201, column: 35, scope: !2228)
!2265 = !DILocation(line: 201, column: 5, scope: !2228)
!2266 = !DILocation(line: 198, column: 9, scope: !2228)
!2267 = !DILocation(line: 201, column: 12, scope: !2228)
!2268 = !DILocation(line: 0, scope: !2260, inlinedAt: !2264)
!2269 = !DILocation(line: 63, column: 21, scope: !2260, inlinedAt: !2264)
!2270 = !{!2271, !2273, i64 40}
!2271 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2272, i64 0, !399, i64 56, !399, i64 64, !399, i64 72, !2273, i64 80, !399, i64 88, !2273, i64 96, !399, i64 104, !2273, i64 112, !2273, i64 116, !2273, i64 120, !553, i64 124}
!2272 = !{!"_ZTS22halide_parallel_task_t", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !2273, i64 32, !2273, i64 36, !2273, i64 40, !2273, i64 44, !553, i64 48}
!2273 = !{!"int", !400, i64 0}
!2274 = !DILocation(line: 63, column: 16, scope: !2260, inlinedAt: !2264)
!2275 = !DILocation(line: 63, column: 28, scope: !2260, inlinedAt: !2264)
!2276 = !DILocation(line: 201, column: 59, scope: !2228)
!2277 = !{!2278, !553, i64 2120}
!2278 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2279, i64 0, !2273, i64 8, !2273, i64 12, !399, i64 16, !2273, i64 24, !2273, i64 28, !2273, i64 32, !2280, i64 40, !2280, i64 48, !2280, i64 56, !2273, i64 64, !2273, i64 68, !400, i64 72, !553, i64 2120, !553, i64 2121, !2273, i64 2124}
!2279 = !{!"_ZTS12halide_mutex", !400, i64 0}
!2280 = !{!"_ZTS11halide_cond", !400, i64 0}
!2281 = !{!2271, !2273, i64 112}
!2282 = !DILocation(line: 202, column: 32, scope: !2237)
!2283 = !{!2278, !399, i64 16}
!2284 = !DILocation(line: 0, scope: !2237)
!2285 = !DILocation(line: 206, column: 28, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !13, line: 206, column: 17)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !13, line: 205, column: 24)
!2288 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 205, column: 13)
!2289 = !{!2271, !2273, i64 116}
!2290 = !DILocation(line: 206, column: 40, scope: !2286)
!2291 = !DILocation(line: 206, column: 17, scope: !2287)
!2292 = !DILocation(line: 207, column: 32, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !13, line: 207, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !13, line: 206, column: 46)
!2295 = !DILocation(line: 207, column: 47, scope: !2293)
!2296 = !DILocation(line: 207, column: 21, scope: !2294)
!2297 = !DILocation(line: 208, column: 32, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !13, line: 207, column: 53)
!2299 = !DILocation(line: 208, column: 21, scope: !2298)
!2300 = !DILocation(line: 209, column: 42, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !13, line: 208, column: 46)
!2302 = !DILocation(line: 210, column: 36, scope: !2301)
!2303 = !{!2271, !399, i64 64}
!2304 = distinct !{!2304, !2299, !2305, !606}
!2305 = !DILocation(line: 211, column: 21, scope: !2298)
!2306 = !DILocation(line: 212, column: 38, scope: !2298)
!2307 = !DILocation(line: 212, column: 31, scope: !2298)
!2308 = !DILocation(line: 213, column: 38, scope: !2298)
!2309 = !DILocation(line: 214, column: 21, scope: !2298)
!2310 = !DILocation(line: 216, column: 35, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2286, file: !13, line: 216, column: 24)
!2312 = !{!2271, !399, i64 88}
!2313 = !DILocation(line: 216, column: 24, scope: !2311)
!2314 = !DILocation(line: 216, column: 46, scope: !2311)
!2315 = !DILocation(line: 216, column: 72, scope: !2311)
!2316 = !DILocation(line: 216, column: 84, scope: !2311)
!2317 = !DILocation(line: 216, column: 24, scope: !2286)
!2318 = !DILocation(line: 217, column: 40, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !13, line: 216, column: 90)
!2320 = !DILocation(line: 221, column: 17, scope: !2319)
!2321 = !DILocation(line: 222, column: 17, scope: !2319)
!2322 = !DILocation(line: 229, column: 16, scope: !2237)
!2323 = !DILocation(line: 229, column: 9, scope: !2237)
!2324 = !DILocation(line: 240, column: 17, scope: !2241)
!2325 = !DILocation(line: 237, column: 37, scope: !2241)
!2326 = !DILocation(line: 0, scope: !2241)
!2327 = !DILocation(line: 240, column: 28, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 240, column: 17)
!2329 = !DILocation(line: 244, column: 33, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !13, line: 244, column: 21)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !13, line: 243, column: 20)
!2332 = !DILocation(line: 244, column: 48, scope: !2330)
!2333 = !DILocation(line: 0, scope: !2330)
!2334 = !{!2271, !2273, i64 44}
!2335 = !DILocation(line: 244, column: 21, scope: !2331)
!2336 = !DILocation(line: 247, column: 68, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2330, file: !13, line: 246, column: 24)
!2338 = !DILocation(line: 247, column: 113, scope: !2337)
!2339 = !{!2271, !2273, i64 96}
!2340 = !DILocation(line: 247, column: 99, scope: !2337)
!2341 = !DILocation(line: 245, column: 84, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2330, file: !13, line: 244, column: 54)
!2343 = !DILocation(line: 245, column: 70, scope: !2342)
!2344 = !DILocation(line: 246, column: 17, scope: !2342)
!2345 = !DILocation(line: 242, column: 49, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2328, file: !13, line: 240, column: 40)
!2347 = !{!2278, !2273, i64 24}
!2348 = !DILocation(line: 242, column: 65, scope: !2346)
!2349 = !DILocation(line: 242, column: 83, scope: !2346)
!2350 = !{!2278, !2273, i64 2124}
!2351 = !DILocation(line: 242, column: 70, scope: !2346)
!2352 = !DILocation(line: 243, column: 13, scope: !2346)
!2353 = !DILocation(line: 0, scope: !2328)
!2354 = !DILocation(line: 250, column: 61, scope: !2241)
!2355 = !DILocation(line: 250, column: 48, scope: !2241)
!2356 = !DILocation(line: 260, column: 47, scope: !2241)
!2357 = !{!2271, !553, i64 48}
!2358 = !DILocation(line: 260, column: 54, scope: !2241)
!2359 = !DILocation(line: 260, column: 63, scope: !2241)
!2360 = !DILocation(line: 260, column: 78, scope: !2241)
!2361 = !DILocation(line: 265, column: 32, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 265, column: 17)
!2363 = !DILocalVariable(name: "this", arg: 1, scope: !2364, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2364 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2365)
!2365 = !{!2363}
!2366 = !DILocation(line: 0, scope: !2364, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 266, column: 26, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !13, line: 266, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !13, line: 265, column: 80)
!2370 = !DILocation(line: 47, column: 16, scope: !2371, inlinedAt: !2367)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !13, line: 47, column: 9)
!2372 = distinct !DILexicalBlock(scope: !2364, file: !13, line: 47, column: 9)
!2373 = !{!2271, !2273, i64 120}
!2374 = !DILocation(line: 47, column: 38, scope: !2371, inlinedAt: !2367)
!2375 = !{!2271, !2273, i64 32}
!2376 = !DILocation(line: 47, column: 31, scope: !2371, inlinedAt: !2367)
!2377 = !DILocation(line: 47, column: 9, scope: !2372, inlinedAt: !2367)
!2378 = !DILocation(line: 48, column: 60, scope: !2379, inlinedAt: !2367)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !13, line: 48, column: 17)
!2380 = distinct !DILexicalBlock(scope: !2371, file: !13, line: 47, column: 72)
!2381 = !{!2271, !399, i64 24}
!2382 = !DILocation(line: 48, column: 55, scope: !2379, inlinedAt: !2367)
!2383 = !DILocation(line: 48, column: 87, scope: !2379, inlinedAt: !2367)
!2384 = !{!2385, !399, i64 0}
!2385 = !{!"_ZTS26halide_semaphore_acquire_t", !399, i64 0, !2273, i64 8}
!2386 = !DILocation(line: 49, column: 87, scope: !2379, inlinedAt: !2367)
!2387 = !{!2385, !2273, i64 8}
!2388 = !DILocation(line: 48, column: 18, scope: !2379, inlinedAt: !2367)
!2389 = !DILocation(line: 48, column: 17, scope: !2380, inlinedAt: !2367)
!2390 = !DILocation(line: 47, column: 68, scope: !2371, inlinedAt: !2367)
!2391 = distinct !{!2391, !2377, !2392, !606}
!2392 = !DILocation(line: 56, column: 9, scope: !2372, inlinedAt: !2367)
!2393 = !DILocation(line: 272, column: 31, scope: !2241)
!2394 = !DILocation(line: 273, column: 24, scope: !2241)
!2395 = !DILocation(line: 256, column: 66, scope: !2241)
!2396 = !{!2271, !399, i64 72}
!2397 = !DILocation(line: 256, column: 89, scope: !2241)
!2398 = !DILocation(line: 256, column: 75, scope: !2241)
!2399 = !DILocation(line: 278, column: 17, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !13, line: 276, column: 19)
!2401 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 276, column: 13)
!2402 = !DILocation(line: 279, column: 31, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !13, line: 279, column: 21)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !13, line: 278, column: 28)
!2405 = distinct !DILexicalBlock(scope: !2400, file: !13, line: 278, column: 17)
!2406 = !DILocation(line: 279, column: 34, scope: !2403)
!2407 = !DILocation(line: 279, column: 21, scope: !2404)
!2408 = !DILocation(line: 281, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2403, file: !13, line: 279, column: 52)
!2410 = !DILocation(line: 282, column: 21, scope: !2409)
!2411 = !DILocation(line: 283, column: 21, scope: !2409)
!2412 = !DILocation(line: 284, column: 17, scope: !2409)
!2413 = !DILocation(line: 285, column: 47, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !13, line: 284, column: 24)
!2415 = !{!2278, !2273, i64 68}
!2416 = !DILocation(line: 286, column: 50, scope: !2414)
!2417 = !{!2271, !553, i64 124}
!2418 = !DILocation(line: 287, column: 21, scope: !2414)
!2419 = !DILocation(line: 288, column: 50, scope: !2414)
!2420 = !DILocation(line: 289, column: 47, scope: !2414)
!2421 = !DILocation(line: 292, column: 44, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2405, file: !13, line: 291, column: 20)
!2423 = !{!2278, !2273, i64 64}
!2424 = !DILocation(line: 293, column: 32, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !13, line: 293, column: 21)
!2426 = !{!2278, !2273, i64 28}
!2427 = !DILocation(line: 293, column: 57, scope: !2425)
!2428 = !{!2278, !2273, i64 32}
!2429 = !DILocation(line: 293, column: 44, scope: !2425)
!2430 = !DILocation(line: 293, column: 21, scope: !2422)
!2431 = !DILocation(line: 295, column: 43, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2425, file: !13, line: 293, column: 77)
!2433 = !DILocation(line: 296, column: 21, scope: !2432)
!2434 = !DILocation(line: 297, column: 43, scope: !2432)
!2435 = !DILocation(line: 298, column: 17, scope: !2432)
!2436 = !DILocation(line: 298, column: 38, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2425, file: !13, line: 298, column: 28)
!2438 = !DILocation(line: 298, column: 41, scope: !2437)
!2439 = !DILocation(line: 298, column: 28, scope: !2425)
!2440 = !DILocation(line: 300, column: 21, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !13, line: 298, column: 59)
!2442 = !DILocation(line: 301, column: 21, scope: !2441)
!2443 = !DILocation(line: 302, column: 21, scope: !2441)
!2444 = !DILocation(line: 303, column: 17, scope: !2441)
!2445 = !DILocation(line: 304, column: 21, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2437, file: !13, line: 303, column: 24)
!2447 = !DILocation(line: 306, column: 44, scope: !2422)
!2448 = !DILocation(line: 58, column: 24, scope: !2364, inlinedAt: !2367)
!2449 = !DILocation(line: 318, column: 14, scope: !2237)
!2450 = !DILocation(line: 318, column: 28, scope: !2237)
!2451 = !DILocation(line: 320, column: 18, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 320, column: 13)
!2453 = !DILocation(line: 320, column: 29, scope: !2452)
!2454 = !DILocation(line: 0, scope: !2452)
!2455 = !DILocation(line: 320, column: 13, scope: !2237)
!2456 = !DILocation(line: 321, column: 41, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !13, line: 320, column: 41)
!2458 = !DILocation(line: 323, column: 9, scope: !2457)
!2459 = !DILocation(line: 324, column: 30, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2452, file: !13, line: 323, column: 16)
!2461 = !DILocation(line: 324, column: 47, scope: !2460)
!2462 = !DILocation(line: 330, column: 23, scope: !2249)
!2463 = !DILocation(line: 330, column: 13, scope: !2237)
!2464 = !DILocation(line: 332, column: 30, scope: !2248)
!2465 = !DILocation(line: 332, column: 23, scope: !2248)
!2466 = !DILocation(line: 335, column: 13, scope: !2248)
!2467 = !DILocation(line: 0, scope: !2248)
!2468 = !DILocation(line: 338, column: 13, scope: !2248)
!2469 = !DILocation(line: 340, column: 35, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2248, file: !13, line: 338, column: 33)
!2471 = !DILocation(line: 340, column: 42, scope: !2470)
!2472 = !DILocation(line: 340, column: 57, scope: !2470)
!2473 = !DILocation(line: 340, column: 65, scope: !2470)
!2474 = !DILocation(line: 47, column: 16, scope: !2371, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 341, column: 29, scope: !2470)
!2476 = !DILocation(line: 47, column: 38, scope: !2371, inlinedAt: !2475)
!2477 = !DILocation(line: 340, column: 17, scope: !2470)
!2478 = !DILocation(line: 0, scope: !2364, inlinedAt: !2475)
!2479 = !DILocation(line: 47, column: 31, scope: !2371, inlinedAt: !2475)
!2480 = !DILocation(line: 47, column: 9, scope: !2372, inlinedAt: !2475)
!2481 = !DILocation(line: 48, column: 60, scope: !2379, inlinedAt: !2475)
!2482 = !DILocation(line: 48, column: 55, scope: !2379, inlinedAt: !2475)
!2483 = !DILocation(line: 48, column: 87, scope: !2379, inlinedAt: !2475)
!2484 = !DILocation(line: 49, column: 87, scope: !2379, inlinedAt: !2475)
!2485 = !DILocation(line: 48, column: 18, scope: !2379, inlinedAt: !2475)
!2486 = !DILocation(line: 48, column: 17, scope: !2380, inlinedAt: !2475)
!2487 = !DILocation(line: 47, column: 68, scope: !2371, inlinedAt: !2475)
!2488 = distinct !{!2488, !2480, !2489, !606}
!2489 = !DILocation(line: 56, column: 9, scope: !2372, inlinedAt: !2475)
!2490 = !DILocation(line: 58, column: 24, scope: !2364, inlinedAt: !2475)
!2491 = !DILocation(line: 342, column: 26, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2470, file: !13, line: 341, column: 46)
!2493 = distinct !{!2493, !2477, !2494, !606}
!2494 = !DILocation(line: 343, column: 17, scope: !2470)
!2495 = !DILocation(line: 344, column: 27, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2470, file: !13, line: 344, column: 21)
!2497 = !DILocation(line: 344, column: 21, scope: !2470)
!2498 = !DILocation(line: 349, column: 51, scope: !2470)
!2499 = !{!2271, !399, i64 104}
!2500 = !DILocation(line: 349, column: 75, scope: !2470)
!2501 = !{!2271, !399, i64 0}
!2502 = !DILocation(line: 350, column: 56, scope: !2470)
!2503 = !{!2271, !2273, i64 36}
!2504 = !DILocation(line: 350, column: 60, scope: !2470)
!2505 = !DILocation(line: 351, column: 56, scope: !2470)
!2506 = !{!2271, !399, i64 8}
!2507 = !DILocation(line: 349, column: 26, scope: !2470)
!2508 = !DILocation(line: 352, column: 29, scope: !2470)
!2509 = !DILocation(line: 338, column: 27, scope: !2248)
!2510 = distinct !{!2510, !2468, !2511, !606}
!2511 = !DILocation(line: 354, column: 13, scope: !2248)
!2512 = !DILocation(line: 355, column: 13, scope: !2248)
!2513 = !DILocation(line: 357, column: 27, scope: !2248)
!2514 = !DILocation(line: 358, column: 30, scope: !2248)
!2515 = !DILocation(line: 361, column: 17, scope: !2248)
!2516 = !DILocation(line: 362, column: 34, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !13, line: 361, column: 30)
!2518 = distinct !DILexicalBlock(scope: !2248, file: !13, line: 361, column: 17)
!2519 = !DILocation(line: 399, column: 13, scope: !2237)
!2520 = !DILocation(line: 363, column: 41, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !13, line: 363, column: 24)
!2522 = !DILocation(line: 363, column: 24, scope: !2518)
!2523 = !DILocation(line: 364, column: 44, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !13, line: 363, column: 46)
!2525 = !DILocation(line: 364, column: 31, scope: !2524)
!2526 = !DILocation(line: 365, column: 33, scope: !2524)
!2527 = !DILocation(line: 366, column: 13, scope: !2524)
!2528 = !DILocation(line: 369, column: 26, scope: !2252)
!2529 = !{i64 0, i64 8, !448, i64 8, i64 8, !448, i64 16, i64 8, !448, i64 24, i64 8, !448, i64 32, i64 4, !2530, i64 36, i64 4, !2530, i64 40, i64 4, !2530, i64 44, i64 4, !2530, i64 48, i64 1, !2531, i64 56, i64 8, !448, i64 64, i64 8, !448, i64 72, i64 8, !448, i64 80, i64 4, !2530, i64 88, i64 8, !448, i64 96, i64 4, !2530, i64 104, i64 8, !448, i64 112, i64 4, !2530, i64 116, i64 4, !2530, i64 120, i64 4, !2530, i64 124, i64 1, !2531}
!2530 = !{!2273, !2273, i64 0}
!2531 = !{!553, !553, i64 0}
!2532 = !DILocation(line: 0, scope: !2252)
!2533 = !{i64 0, i64 8, !448, i64 8, i64 8, !448, i64 16, i64 8, !448, i64 24, i64 4, !2530, i64 28, i64 4, !2530, i64 32, i64 4, !2530, i64 36, i64 4, !2530, i64 40, i64 1, !2531, i64 48, i64 8, !448, i64 56, i64 8, !448, i64 64, i64 8, !448, i64 72, i64 4, !2530, i64 80, i64 8, !448, i64 88, i64 4, !2530, i64 96, i64 8, !448, i64 104, i64 4, !2530, i64 108, i64 4, !2530, i64 112, i64 4, !2530, i64 116, i64 1, !2531}
!2534 = !{i64 0, i64 8, !448, i64 8, i64 8, !448, i64 16, i64 8, !448, i64 24, i64 4, !2530, i64 32, i64 8, !448, i64 40, i64 4, !2530, i64 48, i64 8, !448, i64 56, i64 4, !2530, i64 60, i64 4, !2530, i64 64, i64 4, !2530, i64 68, i64 1, !2531}
!2535 = !{i64 0, i64 8, !448, i64 8, i64 4, !2530, i64 12, i64 4, !2530, i64 16, i64 4, !2530, i64 20, i64 1, !2531}
!2536 = !DILocation(line: 370, column: 26, scope: !2252)
!2537 = !DILocation(line: 371, column: 23, scope: !2252)
!2538 = !DILocation(line: 371, column: 29, scope: !2252)
!2539 = !DILocation(line: 375, column: 34, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2252, file: !13, line: 375, column: 17)
!2541 = !DILocation(line: 375, column: 17, scope: !2252)
!2542 = !DILocation(line: 376, column: 34, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !13, line: 375, column: 40)
!2544 = !DILocation(line: 376, column: 27, scope: !2543)
!2545 = !DILocation(line: 377, column: 13, scope: !2543)
!2546 = !DILocation(line: 380, column: 13, scope: !2252)
!2547 = !DILocation(line: 381, column: 17, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2252, file: !13, line: 381, column: 17)
!2549 = !DILocation(line: 381, column: 17, scope: !2252)
!2550 = !DILocation(line: 382, column: 26, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !13, line: 381, column: 32)
!2552 = !DILocation(line: 384, column: 13, scope: !2551)
!2553 = !DILocation(line: 387, column: 66, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2548, file: !13, line: 384, column: 20)
!2555 = !DILocation(line: 385, column: 26, scope: !2554)
!2556 = !DILocation(line: 0, scope: !2548)
!2557 = !DILocation(line: 389, column: 13, scope: !2252)
!2558 = !DILocation(line: 399, column: 20, scope: !2257)
!2559 = !DILocation(line: 400, column: 18, scope: !2256)
!2560 = !DILocation(line: 400, column: 30, scope: !2256)
!2561 = !DILocation(line: 0, scope: !2255)
!2562 = !DILocation(line: 402, column: 38, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2255, file: !13, line: 402, column: 13)
!2564 = !{!2271, !2273, i64 80}
!2565 = !DILocation(line: 402, column: 31, scope: !2563)
!2566 = !DILocation(line: 402, column: 13, scope: !2255)
!2567 = !DILocation(line: 404, column: 38, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !13, line: 404, column: 21)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !13, line: 402, column: 58)
!2570 = !DILocation(line: 404, column: 50, scope: !2568)
!2571 = !DILocation(line: 404, column: 21, scope: !2569)
!2572 = !DILocation(line: 405, column: 50, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !13, line: 404, column: 56)
!2574 = !DILocation(line: 406, column: 42, scope: !2573)
!2575 = !DILocation(line: 406, column: 57, scope: !2573)
!2576 = !DILocation(line: 406, column: 62, scope: !2573)
!2577 = !DILocation(line: 406, column: 82, scope: !2573)
!2578 = !DILocation(line: 0, scope: !2573)
!2579 = !DILocation(line: 406, column: 33, scope: !2573)
!2580 = !DILocation(line: 407, column: 17, scope: !2573)
!2581 = !DILocation(line: 402, column: 54, scope: !2563)
!2582 = distinct !{!2582, !2566, !2583, !606}
!2583 = !DILocation(line: 409, column: 13, scope: !2255)
!2584 = !DILocation(line: 396, column: 14, scope: !2237)
!2585 = !DILocation(line: 412, column: 18, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 412, column: 13)
!2587 = !DILocation(line: 412, column: 29, scope: !2586)
!2588 = !DILocation(line: 0, scope: !2586)
!2589 = !DILocation(line: 412, column: 13, scope: !2237)
!2590 = !DILocation(line: 413, column: 41, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !13, line: 412, column: 41)
!2592 = !DILocation(line: 415, column: 9, scope: !2591)
!2593 = !DILocation(line: 416, column: 30, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !13, line: 415, column: 16)
!2595 = !DILocation(line: 416, column: 47, scope: !2594)
!2596 = !DILocation(line: 421, column: 28, scope: !2237)
!2597 = !DILocation(line: 425, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 425, column: 13)
!2599 = !DILocation(line: 425, column: 25, scope: !2598)
!2600 = !DILocation(line: 426, column: 34, scope: !2598)
!2601 = !DILocation(line: 426, column: 39, scope: !2598)
!2602 = distinct !{!2602, !2265, !2603, !606}
!2603 = !DILocation(line: 430, column: 5, scope: !2228)
!2604 = !DILocation(line: 426, column: 53, scope: !2598)
!2605 = !DILocation(line: 426, column: 60, scope: !2598)
!2606 = !DILocation(line: 426, column: 65, scope: !2598)
!2607 = !DILocation(line: 426, column: 73, scope: !2598)
!2608 = !DILocation(line: 426, column: 85, scope: !2598)
!2609 = !DILocation(line: 426, column: 91, scope: !2598)
!2610 = !DILocation(line: 426, column: 99, scope: !2598)
!2611 = !DILocation(line: 425, column: 13, scope: !2237)
!2612 = !DILocation(line: 428, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2598, file: !13, line: 426, column: 119)
!2614 = !DILocation(line: 429, column: 9, scope: !2613)
!2615 = !DILocation(line: 431, column: 1, scope: !2228)
!2616 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623}
!2618 = !DILocalVariable(name: "user_context", arg: 1, scope: !2616, file: !13, line: 797, type: !43)
!2619 = !DILocalVariable(name: "f", arg: 2, scope: !2616, file: !13, line: 797, type: !39)
!2620 = !DILocalVariable(name: "min", arg: 3, scope: !2616, file: !13, line: 798, type: !29)
!2621 = !DILocalVariable(name: "size", arg: 4, scope: !2616, file: !13, line: 798, type: !29)
!2622 = !DILocalVariable(name: "closure", arg: 5, scope: !2616, file: !13, line: 798, type: !44)
!2623 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2616, file: !13, line: 798, type: !43)
!2624 = !DILocation(line: 0, scope: !2616)
!2625 = !DILocation(line: 799, column: 12, scope: !2616)
!2626 = !DILocation(line: 799, column: 5, scope: !2616)
!2627 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2628)
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "user_context", arg: 1, scope: !2627, file: !13, line: 787, type: !43)
!2630 = !DILocalVariable(name: "f", arg: 2, scope: !2627, file: !13, line: 787, type: !66)
!2631 = !DILocalVariable(name: "idx", arg: 3, scope: !2627, file: !13, line: 787, type: !29)
!2632 = !DILocalVariable(name: "closure", arg: 4, scope: !2627, file: !13, line: 788, type: !44)
!2633 = !DILocation(line: 0, scope: !2627)
!2634 = !DILocation(line: 789, column: 14, scope: !2627)
!2635 = !DILocation(line: 789, column: 12, scope: !2627)
!2636 = !DILocation(line: 789, column: 5, scope: !2627)
!2637 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2638)
!2638 = !{!2639}
!2639 = !DILocalVariable(name: "arg", arg: 1, scope: !2637, file: !13, line: 433, type: !43)
!2640 = !DILocation(line: 0, scope: !2637)
!2641 = !DILocation(line: 434, column: 5, scope: !2637)
!2642 = !DILocation(line: 435, column: 34, scope: !2637)
!2643 = !DILocation(line: 435, column: 5, scope: !2637)
!2644 = !DILocation(line: 436, column: 5, scope: !2637)
!2645 = !DILocation(line: 437, column: 1, scope: !2637)
!2646 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !3, file: !13, line: 439, type: !2647, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !29, !32, !32}
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2660, !2662}
!2650 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2646, file: !13, line: 439, type: !29)
!2651 = !DILocalVariable(name: "jobs", arg: 2, scope: !2646, file: !13, line: 439, type: !32)
!2652 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2646, file: !13, line: 439, type: !32)
!2653 = !DILocalVariable(name: "min_threads", scope: !2646, file: !13, line: 457, type: !29)
!2654 = !DILocalVariable(name: "workers_to_wake", scope: !2646, file: !13, line: 461, type: !29)
!2655 = !DILocalVariable(name: "stealable_jobs", scope: !2646, file: !13, line: 465, type: !64)
!2656 = !DILocalVariable(name: "job_has_acquires", scope: !2646, file: !13, line: 467, type: !64)
!2657 = !DILocalVariable(name: "job_may_block", scope: !2646, file: !13, line: 468, type: !64)
!2658 = !DILocalVariable(name: "i", scope: !2659, file: !13, line: 469, type: !29)
!2659 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 469, column: 5)
!2660 = !DILocalVariable(name: "i", scope: !2661, file: !13, line: 527, type: !29)
!2661 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 527, column: 5)
!2662 = !DILocalVariable(name: "nested_parallelism", scope: !2646, file: !13, line: 537, type: !64)
!2663 = !DILocation(line: 0, scope: !2646)
!2664 = !DILocation(line: 440, column: 21, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 440, column: 9)
!2666 = !{!2278, !553, i64 2121}
!2667 = !DILocation(line: 440, column: 9, scope: !2646)
!2668 = !DILocalVariable(name: "bytes", scope: !2669, file: !13, line: 148, type: !49)
!2669 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2670)
!2670 = !{!2671, !2668, !2673}
!2671 = !DILocalVariable(name: "this", arg: 1, scope: !2669, type: !2672, flags: DIFlagArtificial | DIFlagObjectPointer)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2673 = !DILocalVariable(name: "limit", scope: !2669, file: !13, line: 149, type: !49)
!2674 = !DILocation(line: 0, scope: !2669, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 441, column: 20, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2665, file: !13, line: 440, column: 34)
!2677 = !DILocation(line: 150, column: 33, scope: !2669, inlinedAt: !2675)
!2678 = !{!400, !400, i64 0}
!2679 = !DILocation(line: 150, column: 40, scope: !2669, inlinedAt: !2675)
!2680 = !DILocation(line: 150, column: 9, scope: !2669, inlinedAt: !2675)
!2681 = !DILocation(line: 151, column: 18, scope: !2682, inlinedAt: !2675)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !13, line: 150, column: 46)
!2683 = !DILocation(line: 150, column: 22, scope: !2669, inlinedAt: !2675)
!2684 = !DILocation(line: 150, column: 30, scope: !2669, inlinedAt: !2675)
!2685 = distinct !{!2685, !2680, !2686, !606}
!2686 = !DILocation(line: 152, column: 9, scope: !2669, inlinedAt: !2675)
!2687 = !DILocation(line: 153, column: 9, scope: !2688, inlinedAt: !2675)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !13, line: 153, column: 9)
!2689 = distinct !DILexicalBlock(scope: !2669, file: !13, line: 153, column: 9)
!2690 = !DILocation(line: 153, column: 9, scope: !2689, inlinedAt: !2675)
!2691 = !DILocation(line: 153, column: 9, scope: !2692, inlinedAt: !2675)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !13, line: 153, column: 9)
!2693 = !DILocation(line: 446, column: 25, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !13, line: 446, column: 13)
!2695 = !{!2278, !2273, i64 8}
!2696 = !DILocation(line: 446, column: 14, scope: !2694)
!2697 = !DILocation(line: 446, column: 13, scope: !2676)
!2698 = !DILocation(line: 447, column: 50, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !13, line: 446, column: 50)
!2700 = !DILocation(line: 447, column: 48, scope: !2699)
!2701 = !DILocation(line: 448, column: 9, scope: !2699)
!2702 = !DILocation(line: 449, column: 75, scope: !2676)
!2703 = !DILocation(line: 449, column: 46, scope: !2676)
!2704 = !DILocation(line: 449, column: 44, scope: !2676)
!2705 = !DILocation(line: 450, column: 32, scope: !2676)
!2706 = !DILocation(line: 451, column: 5, scope: !2676)
!2707 = !DILocation(line: 0, scope: !2659)
!2708 = !DILocation(line: 469, column: 23, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2659, file: !13, line: 469, column: 5)
!2710 = !DILocation(line: 469, column: 5, scope: !2659)
!2711 = !DILocation(line: 487, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 487, column: 9)
!2713 = !DILocation(line: 468, column: 10, scope: !2646)
!2714 = !DILocation(line: 457, column: 9, scope: !2646)
!2715 = !DILocation(line: 487, column: 9, scope: !2646)
!2716 = !DILocation(line: 470, column: 26, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !13, line: 470, column: 13)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !13, line: 469, column: 40)
!2719 = !DILocation(line: 470, column: 38, scope: !2717)
!2720 = !DILocation(line: 470, column: 13, scope: !2718)
!2721 = !DILocation(line: 476, column: 26, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !13, line: 476, column: 13)
!2723 = !DILocation(line: 476, column: 41, scope: !2722)
!2724 = !DILocation(line: 476, column: 13, scope: !2718)
!2725 = !DILocation(line: 480, column: 26, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !13, line: 480, column: 13)
!2727 = !DILocation(line: 480, column: 13, scope: !2718)
!2728 = !DILocation(line: 481, column: 28, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2726, file: !13, line: 480, column: 34)
!2730 = !DILocation(line: 482, column: 9, scope: !2729)
!2731 = !DILocation(line: 483, column: 45, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2726, file: !13, line: 482, column: 16)
!2733 = !DILocation(line: 483, column: 29, scope: !2732)
!2734 = !DILocation(line: 0, scope: !2726)
!2735 = !DILocation(line: 469, column: 36, scope: !2709)
!2736 = distinct !{!2736, !2710, !2737, !606}
!2737 = !DILocation(line: 485, column: 5, scope: !2659)
!2738 = !DILocation(line: 497, column: 30, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !13, line: 497, column: 13)
!2740 = distinct !DILexicalBlock(scope: !2712, file: !13, line: 487, column: 33)
!2741 = !DILocation(line: 503, column: 27, scope: !2740)
!2742 = !DILocation(line: 503, column: 43, scope: !2740)
!2743 = !DILocation(line: 503, column: 57, scope: !2740)
!2744 = !DILocation(line: 504, column: 58, scope: !2740)
!2745 = !DILocation(line: 504, column: 82, scope: !2740)
!2746 = !DILocation(line: 504, column: 45, scope: !2740)
!2747 = !DILocation(line: 504, column: 87, scope: !2740)
!2748 = !DILocation(line: 505, column: 45, scope: !2740)
!2749 = !DILocation(line: 505, column: 63, scope: !2740)
!2750 = !DILocation(line: 505, column: 50, scope: !2740)
!2751 = !DILocation(line: 505, column: 80, scope: !2740)
!2752 = !DILocation(line: 503, column: 9, scope: !2740)
!2753 = !DILocation(line: 508, column: 35, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2740, file: !13, line: 505, column: 96)
!2755 = !DILocation(line: 510, column: 17, scope: !2754)
!2756 = !DILocation(line: 509, column: 58, scope: !2754)
!2757 = !DILocation(line: 509, column: 13, scope: !2754)
!2758 = !DILocation(line: 509, column: 62, scope: !2754)
!2759 = distinct !{!2759, !2752, !2760, !606}
!2760 = !DILocation(line: 511, column: 9, scope: !2740)
!2761 = !DILocation(line: 513, column: 30, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2740, file: !13, line: 513, column: 13)
!2763 = !DILocation(line: 514, column: 40, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2762, file: !13, line: 513, column: 48)
!2765 = !DILocation(line: 515, column: 9, scope: !2764)
!2766 = !DILocation(line: 518, column: 9, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !13, line: 518, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !13, line: 518, column: 9)
!2769 = distinct !DILexicalBlock(scope: !2712, file: !13, line: 516, column: 12)
!2770 = !DILocation(line: 518, column: 9, scope: !2768)
!2771 = !DILocation(line: 518, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !13, line: 518, column: 9)
!2773 = !DILocation(line: 521, column: 30, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !13, line: 521, column: 13)
!2775 = !DILocation(line: 522, column: 42, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2774, file: !13, line: 521, column: 48)
!2777 = !DILocation(line: 523, column: 9, scope: !2776)
!2778 = !DILocation(line: 0, scope: !2661)
!2779 = !DILocation(line: 527, column: 5, scope: !2661)
!2780 = !DILocation(line: 0, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !13, line: 527, column: 45)
!2782 = distinct !DILexicalBlock(scope: !2661, file: !13, line: 527, column: 5)
!2783 = !DILocation(line: 538, column: 20, scope: !2646)
!2784 = !DILocation(line: 538, column: 9, scope: !2646)
!2785 = !DILocation(line: 538, column: 36, scope: !2646)
!2786 = !DILocation(line: 542, column: 28, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 542, column: 9)
!2788 = !DILocation(line: 0, scope: !2787)
!2789 = !DILocation(line: 550, column: 5, scope: !2646)
!2790 = !DILocation(line: 551, column: 20, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 551, column: 9)
!2792 = !DILocation(line: 551, column: 52, scope: !2791)
!2793 = !DILocation(line: 551, column: 39, scope: !2791)
!2794 = !DILocation(line: 551, column: 9, scope: !2646)
!2795 = !DILocation(line: 530, column: 39, scope: !2781)
!2796 = !DILocation(line: 530, column: 9, scope: !2781)
!2797 = !DILocation(line: 530, column: 17, scope: !2781)
!2798 = !DILocation(line: 530, column: 26, scope: !2781)
!2799 = !DILocation(line: 531, column: 17, scope: !2781)
!2800 = !DILocation(line: 531, column: 26, scope: !2781)
!2801 = !DILocation(line: 532, column: 17, scope: !2781)
!2802 = !DILocation(line: 532, column: 31, scope: !2781)
!2803 = !DILocation(line: 533, column: 17, scope: !2781)
!2804 = !DILocation(line: 533, column: 34, scope: !2781)
!2805 = !DILocation(line: 527, column: 34, scope: !2782)
!2806 = distinct !{!2806, !2779, !2807, !606}
!2807 = !DILocation(line: 535, column: 5, scope: !2661)
!2808 = !DILocation(line: 552, column: 9, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2791, file: !13, line: 551, column: 65)
!2810 = !DILocation(line: 553, column: 13, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2809, file: !13, line: 553, column: 13)
!2812 = !DILocation(line: 553, column: 13, scope: !2809)
!2813 = !DILocation(line: 554, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !13, line: 553, column: 29)
!2815 = !DILocation(line: 555, column: 9, scope: !2814)
!2816 = !DILocation(line: 558, column: 26, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2646, file: !13, line: 558, column: 9)
!2818 = !DILocation(line: 559, column: 13, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !13, line: 558, column: 44)
!2820 = !DILocation(line: 560, column: 26, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !13, line: 559, column: 37)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !13, line: 559, column: 13)
!2823 = !DILocation(line: 560, column: 42, scope: !2821)
!2824 = !DILocation(line: 561, column: 9, scope: !2821)
!2825 = !DILocation(line: 562, column: 40, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !13, line: 561, column: 16)
!2827 = !DILocation(line: 565, column: 1, scope: !2646)
!2828 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2829)
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "user_context", arg: 1, scope: !2828, file: !13, line: 589, type: !43)
!2831 = !DILocalVariable(name: "f", arg: 2, scope: !2828, file: !13, line: 589, type: !66)
!2832 = !DILocalVariable(name: "idx", arg: 3, scope: !2828, file: !13, line: 589, type: !29)
!2833 = !DILocalVariable(name: "closure", arg: 4, scope: !2828, file: !13, line: 590, type: !44)
!2834 = !DILocation(line: 0, scope: !2828)
!2835 = !DILocation(line: 591, column: 12, scope: !2828)
!2836 = !DILocation(line: 591, column: 5, scope: !2828)
!2837 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844}
!2839 = !DILocalVariable(name: "user_context", arg: 1, scope: !2837, file: !13, line: 594, type: !43)
!2840 = !DILocalVariable(name: "f", arg: 2, scope: !2837, file: !13, line: 594, type: !39)
!2841 = !DILocalVariable(name: "min", arg: 3, scope: !2837, file: !13, line: 595, type: !29)
!2842 = !DILocalVariable(name: "extent", arg: 4, scope: !2837, file: !13, line: 595, type: !29)
!2843 = !DILocalVariable(name: "closure", arg: 5, scope: !2837, file: !13, line: 595, type: !44)
!2844 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2837, file: !13, line: 596, type: !43)
!2845 = !DILocation(line: 0, scope: !2837)
!2846 = !DILocation(line: 597, column: 12, scope: !2837)
!2847 = !DILocation(line: 597, column: 5, scope: !2837)
!2848 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855}
!2850 = !DILocalVariable(name: "user_context", arg: 1, scope: !2848, file: !13, line: 600, type: !43)
!2851 = !DILocalVariable(name: "f", arg: 2, scope: !2848, file: !13, line: 600, type: !66)
!2852 = !DILocalVariable(name: "min", arg: 3, scope: !2848, file: !13, line: 601, type: !29)
!2853 = !DILocalVariable(name: "size", arg: 4, scope: !2848, file: !13, line: 601, type: !29)
!2854 = !DILocalVariable(name: "closure", arg: 5, scope: !2848, file: !13, line: 601, type: !44)
!2855 = !DILocalVariable(name: "job", scope: !2848, file: !13, line: 606, type: !33)
!2856 = !DILocation(line: 0, scope: !2848)
!2857 = !DILocation(line: 602, column: 14, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2848, file: !13, line: 602, column: 9)
!2859 = !DILocation(line: 602, column: 9, scope: !2848)
!2860 = !DILocation(line: 606, column: 5, scope: !2848)
!2861 = !DILocation(line: 606, column: 10, scope: !2848)
!2862 = !DILocation(line: 607, column: 14, scope: !2848)
!2863 = !DILocation(line: 607, column: 17, scope: !2848)
!2864 = !DILocation(line: 608, column: 14, scope: !2848)
!2865 = !DILocation(line: 608, column: 18, scope: !2848)
!2866 = !DILocation(line: 609, column: 14, scope: !2848)
!2867 = !DILocation(line: 609, column: 21, scope: !2848)
!2868 = !DILocation(line: 610, column: 14, scope: !2848)
!2869 = !DILocation(line: 610, column: 21, scope: !2848)
!2870 = !DILocation(line: 611, column: 14, scope: !2848)
!2871 = !DILocation(line: 611, column: 25, scope: !2848)
!2872 = !DILocation(line: 612, column: 14, scope: !2848)
!2873 = !DILocation(line: 612, column: 29, scope: !2848)
!2874 = !DILocation(line: 613, column: 14, scope: !2848)
!2875 = !DILocation(line: 613, column: 22, scope: !2848)
!2876 = !DILocation(line: 614, column: 14, scope: !2848)
!2877 = !DILocation(line: 614, column: 26, scope: !2848)
!2878 = !DILocation(line: 615, column: 14, scope: !2848)
!2879 = !DILocation(line: 615, column: 19, scope: !2848)
!2880 = !{!2271, !399, i64 16}
!2881 = !DILocation(line: 616, column: 9, scope: !2848)
!2882 = !DILocation(line: 616, column: 17, scope: !2848)
!2883 = !{!2271, !399, i64 56}
!2884 = !DILocation(line: 617, column: 9, scope: !2848)
!2885 = !DILocation(line: 617, column: 22, scope: !2848)
!2886 = !DILocation(line: 618, column: 9, scope: !2848)
!2887 = !DILocation(line: 618, column: 21, scope: !2848)
!2888 = !DILocation(line: 619, column: 9, scope: !2848)
!2889 = !DILocation(line: 619, column: 24, scope: !2848)
!2890 = !DILocation(line: 620, column: 9, scope: !2848)
!2891 = !DILocation(line: 620, column: 24, scope: !2848)
!2892 = !DILocation(line: 621, column: 9, scope: !2848)
!2893 = !DILocation(line: 621, column: 27, scope: !2848)
!2894 = !DILocation(line: 622, column: 9, scope: !2848)
!2895 = !DILocation(line: 622, column: 18, scope: !2848)
!2896 = !DILocation(line: 623, column: 9, scope: !2848)
!2897 = !DILocation(line: 623, column: 23, scope: !2848)
!2898 = !DILocation(line: 624, column: 9, scope: !2848)
!2899 = !DILocation(line: 624, column: 20, scope: !2848)
!2900 = !DILocation(line: 625, column: 5, scope: !2848)
!2901 = !DILocation(line: 626, column: 5, scope: !2848)
!2902 = !DILocation(line: 627, column: 5, scope: !2848)
!2903 = !DILocation(line: 628, column: 5, scope: !2848)
!2904 = !DILocation(line: 629, column: 16, scope: !2848)
!2905 = !DILocation(line: 630, column: 1, scope: !2848)
!2906 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2915, !2916}
!2908 = !DILocalVariable(name: "user_context", arg: 1, scope: !2906, file: !13, line: 632, type: !43)
!2909 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2906, file: !13, line: 632, type: !29)
!2910 = !DILocalVariable(name: "tasks", arg: 3, scope: !2906, file: !13, line: 633, type: !145)
!2911 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2906, file: !13, line: 634, type: !43)
!2912 = !DILocalVariable(name: "jobs", scope: !2906, file: !13, line: 635, type: !32)
!2913 = !DILocalVariable(name: "i", scope: !2914, file: !13, line: 637, type: !29)
!2914 = distinct !DILexicalBlock(scope: !2906, file: !13, line: 637, column: 5)
!2915 = !DILocalVariable(name: "exit_status", scope: !2906, file: !13, line: 659, type: !29)
!2916 = !DILocalVariable(name: "i", scope: !2917, file: !13, line: 660, type: !29)
!2917 = distinct !DILexicalBlock(scope: !2906, file: !13, line: 660, column: 5)
!2918 = !DILocation(line: 0, scope: !2906)
!2919 = !DILocation(line: 635, column: 58, scope: !2906)
!2920 = !DILocation(line: 635, column: 26, scope: !2906)
!2921 = !DILocation(line: 0, scope: !2914)
!2922 = !DILocation(line: 637, column: 23, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2914, file: !13, line: 637, column: 5)
!2924 = !DILocation(line: 637, column: 5, scope: !2914)
!2925 = !DILocation(line: 653, column: 19, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2906, file: !13, line: 653, column: 9)
!2927 = !DILocation(line: 653, column: 9, scope: !2906)
!2928 = !DILocation(line: 638, column: 20, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !13, line: 638, column: 13)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !13, line: 637, column: 41)
!2931 = !{!2272, !2273, i64 40}
!2932 = !DILocation(line: 638, column: 27, scope: !2929)
!2933 = !DILocation(line: 638, column: 13, scope: !2930)
!2934 = !DILocation(line: 640, column: 22, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !13, line: 638, column: 33)
!2936 = !DILocation(line: 641, column: 13, scope: !2935)
!2937 = !DILocation(line: 643, column: 30, scope: !2930)
!2938 = !DILocation(line: 643, column: 9, scope: !2930)
!2939 = !DILocation(line: 643, column: 22, scope: !2930)
!2940 = !{i64 0, i64 8, !448, i64 8, i64 8, !448, i64 16, i64 8, !448, i64 24, i64 8, !448, i64 32, i64 4, !2530, i64 36, i64 4, !2530, i64 40, i64 4, !2530, i64 44, i64 4, !2530, i64 48, i64 1, !2531}
!2941 = !DILocation(line: 644, column: 17, scope: !2930)
!2942 = !DILocation(line: 644, column: 25, scope: !2930)
!2943 = !DILocation(line: 645, column: 17, scope: !2930)
!2944 = !DILocation(line: 645, column: 30, scope: !2930)
!2945 = !DILocation(line: 646, column: 17, scope: !2930)
!2946 = !DILocation(line: 646, column: 29, scope: !2930)
!2947 = !DILocation(line: 647, column: 17, scope: !2930)
!2948 = !DILocation(line: 647, column: 32, scope: !2930)
!2949 = !DILocation(line: 648, column: 17, scope: !2930)
!2950 = !DILocation(line: 648, column: 32, scope: !2930)
!2951 = !DILocation(line: 649, column: 17, scope: !2930)
!2952 = !DILocation(line: 649, column: 35, scope: !2930)
!2953 = !DILocation(line: 650, column: 17, scope: !2930)
!2954 = !DILocation(line: 650, column: 28, scope: !2930)
!2955 = !DILocation(line: 651, column: 5, scope: !2930)
!2956 = !DILocation(line: 637, column: 37, scope: !2923)
!2957 = distinct !{!2957, !2924, !2958, !606}
!2958 = !DILocation(line: 651, column: 5, scope: !2914)
!2959 = !DILocation(line: 657, column: 5, scope: !2906)
!2960 = !DILocation(line: 658, column: 50, scope: !2906)
!2961 = !DILocation(line: 658, column: 5, scope: !2906)
!2962 = !DILocation(line: 0, scope: !2917)
!2963 = !DILocation(line: 660, column: 23, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2917, file: !13, line: 660, column: 5)
!2965 = !DILocation(line: 660, column: 5, scope: !2917)
!2966 = !DILocation(line: 668, column: 5, scope: !2906)
!2967 = !DILocation(line: 663, column: 43, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !13, line: 660, column: 41)
!2969 = !DILocation(line: 663, column: 9, scope: !2968)
!2970 = !DILocation(line: 664, column: 21, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !13, line: 664, column: 13)
!2972 = !DILocation(line: 664, column: 33, scope: !2971)
!2973 = !DILocation(line: 664, column: 13, scope: !2968)
!2974 = !DILocation(line: 660, column: 37, scope: !2964)
!2975 = distinct !{!2975, !2965, !2976, !606}
!2976 = !DILocation(line: 667, column: 5, scope: !2917)
!2977 = !DILocation(line: 670, column: 1, scope: !2906)
!2978 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2979)
!2979 = !{!2980, !2981, !2982}
!2980 = !DILocalVariable(name: "s", arg: 1, scope: !2978, file: !13, line: 715, type: !56)
!2981 = !DILocalVariable(name: "n", arg: 2, scope: !2978, file: !13, line: 715, type: !29)
!2982 = !DILocalVariable(name: "sem", scope: !2978, file: !13, line: 716, type: !368)
!2983 = !DILocation(line: 0, scope: !2978)
!2984 = !DILocation(line: 717, column: 76, scope: !2978)
!2985 = !DILocalVariable(name: "addr", arg: 1, scope: !2986, file: !6, line: 218, type: !2989)
!2986 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !487, file: !6, line: 218, type: !2987, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2992, retainedNodes: !2990)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2989, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2990 = !{!2985, !2991}
!2991 = !DILocalVariable(name: "val", arg: 2, scope: !2986, file: !6, line: 218, type: !2989)
!2992 = !{!2993}
!2993 = !DITemplateTypeParameter(name: "T", type: !29)
!2994 = !DILocation(line: 0, scope: !2986, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 717, column: 5, scope: !2978)
!2996 = !DILocation(line: 219, column: 5, scope: !2986, inlinedAt: !2995)
!2997 = !DILocation(line: 718, column: 5, scope: !2978)
!2998 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2999)
!2999 = !{!3000, !3001, !3002, !3003, !3004}
!3000 = !DILocalVariable(name: "s", arg: 1, scope: !2998, file: !13, line: 735, type: !56)
!3001 = !DILocalVariable(name: "n", arg: 2, scope: !2998, file: !13, line: 735, type: !29)
!3002 = !DILocalVariable(name: "sem", scope: !2998, file: !13, line: 739, type: !368)
!3003 = !DILocalVariable(name: "expected", scope: !2998, file: !13, line: 741, type: !29)
!3004 = !DILocalVariable(name: "desired", scope: !2998, file: !13, line: 742, type: !29)
!3005 = !DILocation(line: 0, scope: !2998)
!3006 = !DILocation(line: 736, column: 11, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2998, file: !13, line: 736, column: 9)
!3008 = !DILocation(line: 736, column: 9, scope: !2998)
!3009 = !DILocation(line: 743, column: 75, scope: !2998)
!3010 = !DILocalVariable(name: "addr", arg: 1, scope: !3011, file: !6, line: 205, type: !2989)
!3011 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !487, file: !6, line: 205, type: !2987, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2992, retainedNodes: !3012)
!3012 = !{!3010, !3013}
!3013 = !DILocalVariable(name: "val", arg: 2, scope: !3011, file: !6, line: 205, type: !2989)
!3014 = !DILocation(line: 0, scope: !3011, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 743, column: 5, scope: !2998)
!3016 = !DILocation(line: 206, column: 5, scope: !3011, inlinedAt: !3015)
!3017 = !DILocation(line: 745, column: 28, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2998, file: !13, line: 744, column: 8)
!3019 = !DILocation(line: 746, column: 22, scope: !2998)
!3020 = !DILocation(line: 746, column: 27, scope: !2998)
!3021 = !DILocalVariable(name: "addr", arg: 1, scope: !3022, file: !6, line: 179, type: !2989)
!3022 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !487, file: !6, line: 179, type: !3023, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2992, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!64, !2989, !2989, !2989}
!3025 = !{!3021, !3026, !3027}
!3026 = !DILocalVariable(name: "expected", arg: 2, scope: !3022, file: !6, line: 179, type: !2989)
!3027 = !DILocalVariable(name: "desired", arg: 3, scope: !3022, file: !6, line: 179, type: !2989)
!3028 = !DILocation(line: 0, scope: !3022, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 747, column: 15, scope: !2998)
!3030 = !DILocation(line: 180, column: 12, scope: !3022, inlinedAt: !3029)
!3031 = !DILocation(line: 749, column: 1, scope: !2998)
!3032 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3033)
!3033 = !{!3034, !3035, !3036, !3037}
!3034 = !DILocalVariable(name: "s", arg: 1, scope: !3032, file: !13, line: 721, type: !56)
!3035 = !DILocalVariable(name: "n", arg: 2, scope: !3032, file: !13, line: 721, type: !29)
!3036 = !DILocalVariable(name: "sem", scope: !3032, file: !13, line: 722, type: !368)
!3037 = !DILocalVariable(name: "old_val", scope: !3032, file: !13, line: 723, type: !29)
!3038 = !DILocation(line: 0, scope: !3032)
!3039 = !DILocation(line: 723, column: 102, scope: !3032)
!3040 = !DILocalVariable(name: "addr", arg: 1, scope: !3041, file: !6, line: 170, type: !2989)
!3041 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !487, file: !6, line: 170, type: !3042, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2992, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!29, !2989, !29}
!3044 = !{!3040, !3045}
!3045 = !DILocalVariable(name: "val", arg: 2, scope: !3041, file: !6, line: 170, type: !29)
!3046 = !DILocation(line: 0, scope: !3041, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 723, column: 19, scope: !3032)
!3048 = !DILocation(line: 171, column: 12, scope: !3041, inlinedAt: !3047)
!3049 = !DILocation(line: 725, column: 17, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3032, file: !13, line: 725, column: 9)
!3051 = !DILocation(line: 725, column: 22, scope: !3050)
!3052 = !DILocation(line: 727, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !13, line: 725, column: 33)
!3054 = !DILocation(line: 728, column: 9, scope: !3053)
!3055 = !DILocation(line: 729, column: 9, scope: !3053)
!3056 = !DILocation(line: 730, column: 9, scope: !3053)
!3057 = !DILocation(line: 731, column: 5, scope: !3053)
!3058 = !DILocation(line: 732, column: 20, scope: !3032)
!3059 = !DILocation(line: 732, column: 5, scope: !3032)
!3060 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !3061, file: !13, line: 584, type: !630, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!3061 = !DINamespace(scope: null)
!3062 = !DILocation(line: 585, column: 5, scope: !3060)
!3063 = !DILocation(line: 586, column: 1, scope: !3060)
!3064 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !630, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3065)
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "i", scope: !3067, file: !13, line: 702, type: !29)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !13, line: 702, column: 9)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !13, line: 690, column: 33)
!3069 = distinct !DILexicalBlock(scope: !3064, file: !13, line: 690, column: 9)
!3070 = !DILocation(line: 690, column: 20, scope: !3069)
!3071 = !DILocation(line: 690, column: 9, scope: !3064)
!3072 = !DILocation(line: 693, column: 9, scope: !3068)
!3073 = !DILocation(line: 695, column: 29, scope: !3068)
!3074 = !DILocation(line: 696, column: 9, scope: !3068)
!3075 = !DILocation(line: 697, column: 9, scope: !3068)
!3076 = !DILocation(line: 698, column: 9, scope: !3068)
!3077 = !DILocation(line: 699, column: 9, scope: !3068)
!3078 = !DILocation(line: 0, scope: !3067)
!3079 = !DILocation(line: 702, column: 40, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3067, file: !13, line: 702, column: 9)
!3081 = !DILocation(line: 702, column: 27, scope: !3080)
!3082 = !DILocation(line: 702, column: 9, scope: !3067)
!3083 = !DILocalVariable(name: "this", arg: 1, scope: !3084, type: !3088, flags: DIFlagArtificial | DIFlagObjectPointer)
!3084 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !3085)
!3085 = !{!3083, !3086, !3087}
!3086 = !DILocalVariable(name: "bytes", scope: !3084, file: !13, line: 160, type: !372)
!3087 = !DILocalVariable(name: "limit", scope: !3084, file: !13, line: 161, type: !372)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!3089 = !DILocation(line: 0, scope: !3084, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 707, column: 20, scope: !3068)
!3091 = !DILocation(line: 162, column: 9, scope: !3084, inlinedAt: !3090)
!3092 = !DILocation(line: 708, column: 5, scope: !3068)
!3093 = !DILocation(line: 703, column: 32, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3080, file: !13, line: 702, column: 62)
!3095 = !DILocation(line: 703, column: 13, scope: !3094)
!3096 = !DILocation(line: 702, column: 58, scope: !3080)
!3097 = distinct !{!3097, !3082, !3098, !606}
!3098 = !DILocation(line: 704, column: 9, scope: !3067)
!3099 = !DILocation(line: 709, column: 1, scope: !3064)
!3100 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2188, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3101)
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3100, file: !13, line: 672, type: !29)
!3103 = !DILocalVariable(name: "old", scope: !3100, file: !13, line: 683, type: !29)
!3104 = !DILocation(line: 0, scope: !3100)
!3105 = !DILocation(line: 673, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !13, line: 673, column: 9)
!3107 = !DILocation(line: 673, column: 9, scope: !3100)
!3108 = !DILocation(line: 674, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !13, line: 673, column: 16)
!3110 = !DILocation(line: 679, column: 5, scope: !3100)
!3111 = !DILocation(line: 680, column: 9, scope: !3100)
!3112 = !DILocation(line: 680, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !13, line: 680, column: 9)
!3114 = !DILocation(line: 681, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3113, file: !13, line: 680, column: 17)
!3116 = !DILocation(line: 682, column: 5, scope: !3115)
!3117 = !DILocation(line: 683, column: 26, scope: !3100)
!3118 = !DILocation(line: 684, column: 42, scope: !3100)
!3119 = !DILocation(line: 684, column: 40, scope: !3100)
!3120 = !DILocation(line: 685, column: 5, scope: !3100)
!3121 = !DILocation(line: 686, column: 5, scope: !3100)
!3122 = !DISubprogram(name: "halide_error", scope: !18, file: !18, line: 111, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3123 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !3124, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!123, !123}
!3126 = !{!3127, !3128}
!3127 = !DILocalVariable(name: "f", arg: 1, scope: !3123, file: !13, line: 751, type: !123)
!3128 = !DILocalVariable(name: "result", scope: !3123, file: !13, line: 752, type: !123)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocation(line: 752, column: 31, scope: !3123)
!3131 = !DILocation(line: 753, column: 20, scope: !3123)
!3132 = !DILocation(line: 754, column: 5, scope: !3123)
!3133 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !3134, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!129, !129}
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "f", arg: 1, scope: !3133, file: !13, line: 757, type: !129)
!3138 = !DILocalVariable(name: "result", scope: !3133, file: !13, line: 758, type: !129)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 758, column: 36, scope: !3133)
!3141 = !DILocation(line: 759, column: 25, scope: !3133)
!3142 = !DILocation(line: 760, column: 5, scope: !3133)
!3143 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !3144, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!135, !135}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "f", arg: 1, scope: !3143, file: !13, line: 763, type: !135)
!3148 = !DILocalVariable(name: "result", scope: !3143, file: !13, line: 764, type: !135)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 764, column: 34, scope: !3143)
!3151 = !DILocation(line: 765, column: 23, scope: !3143)
!3152 = !DILocation(line: 766, column: 5, scope: !3143)
!3153 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !3154, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !135, !123, !129, !141, !148, !154, !160}
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163}
!3157 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3153, file: !13, line: 770, type: !135)
!3158 = !DILocalVariable(name: "do_task", arg: 2, scope: !3153, file: !13, line: 771, type: !123)
!3159 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3153, file: !13, line: 772, type: !129)
!3160 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3153, file: !13, line: 773, type: !141)
!3161 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3153, file: !13, line: 774, type: !148)
!3162 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3153, file: !13, line: 775, type: !154)
!3163 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3153, file: !13, line: 776, type: !160)
!3164 = !DILocation(line: 0, scope: !3153)
!3165 = !DILocation(line: 778, column: 23, scope: !3153)
!3166 = !DILocation(line: 779, column: 20, scope: !3153)
!3167 = !DILocation(line: 780, column: 25, scope: !3153)
!3168 = !DILocation(line: 781, column: 30, scope: !3153)
!3169 = !DILocation(line: 782, column: 27, scope: !3153)
!3170 = !DILocation(line: 783, column: 34, scope: !3153)
!3171 = !DILocation(line: 784, column: 30, scope: !3153)
!3172 = !DILocation(line: 785, column: 1, scope: !3153)
!3173 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3174)
!3174 = !{!3175, !3176, !3177, !3178, !3179}
!3175 = !DILocalVariable(name: "user_context", arg: 1, scope: !3173, file: !13, line: 792, type: !43)
!3176 = !DILocalVariable(name: "f", arg: 2, scope: !3173, file: !13, line: 792, type: !66)
!3177 = !DILocalVariable(name: "min", arg: 3, scope: !3173, file: !13, line: 793, type: !29)
!3178 = !DILocalVariable(name: "size", arg: 4, scope: !3173, file: !13, line: 793, type: !29)
!3179 = !DILocalVariable(name: "closure", arg: 5, scope: !3173, file: !13, line: 793, type: !44)
!3180 = !DILocation(line: 0, scope: !3173)
!3181 = !DILocation(line: 794, column: 14, scope: !3173)
!3182 = !DILocation(line: 794, column: 12, scope: !3173)
!3183 = !DILocation(line: 794, column: 5, scope: !3173)
!3184 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3185)
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DILocalVariable(name: "user_context", arg: 1, scope: !3184, file: !13, line: 802, type: !43)
!3187 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3184, file: !13, line: 802, type: !29)
!3188 = !DILocalVariable(name: "tasks", arg: 3, scope: !3184, file: !13, line: 803, type: !145)
!3189 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3184, file: !13, line: 804, type: !43)
!3190 = !DILocation(line: 0, scope: !3184)
!3191 = !DILocation(line: 805, column: 12, scope: !3184)
!3192 = !DILocation(line: 805, column: 5, scope: !3184)
!3193 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3194)
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "sema", arg: 1, scope: !3193, file: !13, line: 808, type: !56)
!3196 = !DILocalVariable(name: "count", arg: 2, scope: !3193, file: !13, line: 808, type: !29)
!3197 = !DILocation(line: 0, scope: !3193)
!3198 = !DILocation(line: 809, column: 12, scope: !3193)
!3199 = !DILocation(line: 809, column: 5, scope: !3193)
!3200 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3201)
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "sema", arg: 1, scope: !3200, file: !13, line: 812, type: !56)
!3203 = !DILocalVariable(name: "count", arg: 2, scope: !3200, file: !13, line: 812, type: !29)
!3204 = !DILocation(line: 0, scope: !3200)
!3205 = !DILocation(line: 813, column: 12, scope: !3200)
!3206 = !DILocation(line: 813, column: 5, scope: !3200)
!3207 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3208)
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "sema", arg: 1, scope: !3207, file: !13, line: 816, type: !56)
!3210 = !DILocalVariable(name: "count", arg: 2, scope: !3207, file: !13, line: 816, type: !29)
!3211 = !DILocation(line: 0, scope: !3207)
!3212 = !DILocation(line: 817, column: 12, scope: !3207)
!3213 = !DILocation(line: 817, column: 5, scope: !3207)
!3214 = !DISubprogram(name: "pthread_mutex_init", scope: !167, file: !167, line: 28, type: !3215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!29, !3217, !434}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3218 = !DISubprogram(name: "pthread_cond_init", scope: !167, file: !167, line: 24, type: !3219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!29, !3221, !434}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3222 = !DISubprogram(name: "pthread_mutex_lock", scope: !167, file: !167, line: 29, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!29, !3217}
!3225 = !DISubprogram(name: "pthread_cond_wait", scope: !167, file: !167, line: 25, type: !3226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!29, !3221, !3217}
!3228 = !DISubprogram(name: "pthread_mutex_unlock", scope: !167, file: !167, line: 30, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3229 = !DISubprogram(name: "pthread_cond_destroy", scope: !167, file: !167, line: 27, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!29, !3221}
!3232 = !DISubprogram(name: "pthread_mutex_destroy", scope: !167, file: !167, line: 31, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3233 = !DISubprogram(name: "pthread_cond_signal", scope: !167, file: !167, line: 26, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
