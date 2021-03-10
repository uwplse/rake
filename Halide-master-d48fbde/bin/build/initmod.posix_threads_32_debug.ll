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
%"class.Halide::Runtime::Internal::Synchronization::spin_control" = type { i32 }
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
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak dso_local global [12288 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" zeroinitializer, align 4, !dbg !11
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4, !dbg !121
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4, !dbg !127
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4, !dbg !133
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4, !dbg !139
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4, !dbg !146
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4, !dbg !152
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4, !dbg !158
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 !dbg !391 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i8* %0, metadata !396, metadata !DIExpression()), !dbg !397
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !398
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !398, !tbaa !399
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !405
  %5 = bitcast i8* %4 to i8**, !dbg !405
  %6 = load i8*, i8** %5, align 4, !dbg !405, !tbaa !406
  tail call void %3(i8* %6) #6, !dbg !407
  ret i8* null, !dbg !408
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !409 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !413, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %1, metadata !414, metadata !DIExpression()), !dbg !416
  %3 = tail call i8* @malloc(i32 12) #6, !dbg !417
  call void @llvm.dbg.value(metadata i8* %3, metadata !415, metadata !DIExpression()), !dbg !416
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !418
  store void (i8*)* %0, void (i8*)** %4, align 4, !dbg !419, !tbaa !399
  %5 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !420
  %6 = bitcast i8* %5 to i8**, !dbg !420
  store i8* %1, i8** %6, align 4, !dbg !421, !tbaa !406
  %7 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !422
  %8 = bitcast i8* %7 to i32*, !dbg !422
  store i32 0, i32* %8, align 4, !dbg !423, !tbaa !424
  %9 = tail call i32 @pthread_create(i32* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #6, !dbg !425
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !426
  ret %struct.halide_thread* %10, !dbg !427
}

declare !dbg !428 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !431 dso_local i32 @pthread_create(i32*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !438 {
  %2 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !442, metadata !DIExpression()), !dbg !445
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !446
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %3, metadata !443, metadata !DIExpression()), !dbg !445
  %4 = bitcast i8** %2 to i8*, !dbg !447
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !447
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()), !dbg !445
  store i8* null, i8** %2, align 4, !dbg !448, !tbaa !449
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i32 0, i32 2, !dbg !450
  %6 = load i32, i32* %5, align 4, !dbg !450, !tbaa !424
  call void @llvm.dbg.value(metadata i8** %2, metadata !444, metadata !DIExpression(DW_OP_deref)), !dbg !445
  %7 = call i32 @pthread_join(i32 %6, i8** nonnull %2) #6, !dbg !451
  %8 = bitcast %struct.halide_thread* %0 to i8*, !dbg !452
  call void @free(i8* %8) #6, !dbg !453
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !454
  ret void, !dbg !454
}

declare !dbg !455 dso_local i32 @pthread_join(i32, i8**) local_unnamed_addr #3

declare !dbg !459 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !460 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !462, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 40, metadata !464, metadata !DIExpression()), !dbg !484
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !485
  %4 = load i32, i32* %3, align 4, !dbg !486, !tbaa !487
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !489

13:                                               ; preds = %65, %1
  %14 = phi i32 [ %4, %1 ], [ %66, %65 ]
  %15 = phi i32 [ 40, %1 ], [ %67, %65 ]
  br label %16, !dbg !490

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !484
  call void @llvm.dbg.value(metadata i32 %15, metadata !464, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 %17, metadata !476, metadata !DIExpression()), !dbg !484
  %18 = and i32 %17, 1, !dbg !491
  %19 = icmp eq i32 %18, 0, !dbg !492
  br i1 %19, label %20, label %25, !dbg !490

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !476, metadata !DIExpression()), !dbg !484
  %21 = or i32 %17, 1, !dbg !493
  call void @llvm.dbg.value(metadata i32 %21, metadata !477, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32* %3, metadata !495, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %17, metadata !514, metadata !DIExpression()), !dbg !518
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !520
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !520
  call void @llvm.dbg.value(metadata i32 %23, metadata !515, metadata !DIExpression()), !dbg !518
  %24 = icmp eq i32 %17, %23, !dbg !521
  br i1 %24, label %68, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !522
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !525, metadata !DIExpression()), !dbg !529
  br i1 %28, label %29, label %34, !dbg !524

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !464, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !484
  %30 = icmp sgt i32 %15, 1, !dbg !531
  br i1 %30, label %31, label %34, !dbg !532

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !533
  call void @llvm.dbg.value(metadata i32 %32, metadata !464, metadata !DIExpression()), !dbg !484
  call void @halide_thread_yield() #6, !dbg !536
  %33 = load i32, i32* %3, align 4, !dbg !538, !tbaa !487
  br label %65, !dbg !539

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !484
  call void @llvm.dbg.value(metadata i32 %35, metadata !464, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #7, !dbg !540
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !481, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !542, metadata !DIExpression()) #7, !dbg !545
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !547, metadata !DIExpression()) #7, !dbg !551
  store i8 0, i8* %6, align 8, !dbg !553, !tbaa !554
  %36 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !559
  %37 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #6, !dbg !561
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !562, !tbaa !563
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !565, !tbaa !566
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !567, !tbaa !568
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !569, metadata !DIExpression()), !dbg !572
  store i8 1, i8* %6, align 8, !dbg !574, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %17, metadata !476, metadata !DIExpression()), !dbg !484
  %38 = and i32 %17, -4, !dbg !575
  call void @llvm.dbg.value(metadata i32 %38, metadata !482, metadata !DIExpression()), !dbg !576
  %39 = icmp eq i32 %38, 0, !dbg !577
  br i1 %39, label %40, label %41, !dbg !579

40:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !580, !tbaa !568
  br label %43, !dbg !582

41:                                               ; preds = %34
  %42 = inttoptr i32 %38 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !583
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %42, metadata !482, metadata !DIExpression()), !dbg !576
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %42, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !584, !tbaa !563
  br label %43

43:                                               ; preds = %41, %40
  call void @llvm.dbg.value(metadata i32 %17, metadata !476, metadata !DIExpression()), !dbg !484
  %44 = and i32 %17, 3, !dbg !586
  %45 = or i32 %44, %12, !dbg !587
  call void @llvm.dbg.value(metadata i32 %45, metadata !483, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32* %3, metadata !588, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32* undef, metadata !591, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32* undef, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %17, metadata !514, metadata !DIExpression()), !dbg !596
  %46 = cmpxchg i32* %3, i32 %17, i32 %45 seq_cst seq_cst, !dbg !598
  %47 = extractvalue { i32, i1 } %46, 0, !dbg !598
  call void @llvm.dbg.value(metadata i32 %47, metadata !515, metadata !DIExpression()), !dbg !596
  %48 = icmp eq i32 %17, %47, !dbg !599
  br i1 %48, label %49, label %60, !dbg !600

49:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !601, metadata !DIExpression()) #7, !dbg !604
  %50 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !607
  %51 = load i8, i8* %6, align 8, !dbg !608, !tbaa !554, !range !609
  %52 = icmp eq i8 %51, 0, !dbg !608
  br i1 %52, label %57, label %53, !dbg !610

53:                                               ; preds = %49, %53
  %54 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !611
  %55 = load i8, i8* %6, align 8, !dbg !608, !tbaa !554, !range !609
  %56 = icmp eq i8 %55, 0, !dbg !608
  br i1 %56, label %57, label %53, !dbg !610, !llvm.loop !613

57:                                               ; preds = %53, %49
  %58 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !616
  call void @llvm.dbg.value(metadata i32 40, metadata !464, metadata !DIExpression()), !dbg !484
  %59 = load i32, i32* %3, align 4, !dbg !617, !tbaa !487
  br label %60, !dbg !618

60:                                               ; preds = %57, %43
  %61 = phi i32 [ %59, %57 ], [ %47, %43 ], !dbg !619
  %62 = phi i32 [ 40, %57 ], [ %35, %43 ], !dbg !484
  call void @llvm.dbg.value(metadata i32 %62, metadata !464, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !620, metadata !DIExpression()) #7, !dbg !623
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !625, metadata !DIExpression()) #7, !dbg !628
  %63 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #6, !dbg !631
  %64 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #7, !dbg !634
  br label %65, !dbg !489

65:                                               ; preds = %60, %31
  %66 = phi i32 [ %33, %31 ], [ %61, %60 ]
  %67 = phi i32 [ %32, %31 ], [ %62, %60 ]
  br label %13, !dbg !490, !llvm.loop !635

68:                                               ; preds = %20
  ret void, !dbg !636
}

declare !dbg !637 dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !640 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !642, metadata !DIExpression()), !dbg !664
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !665
  %3 = load i32, i32* %2, align 4, !dbg !666, !tbaa !487
  call void @llvm.dbg.value(metadata i32* undef, metadata !667, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i32* undef, metadata !672, metadata !DIExpression()), !dbg !673
  br label %4, !dbg !675

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !676
  call void @llvm.dbg.value(metadata i32 %5, metadata !643, metadata !DIExpression()), !dbg !664
  %6 = and i32 %5, 2, !dbg !677
  %7 = icmp ne i32 %6, 0, !dbg !678
  call void @llvm.dbg.value(metadata i1 %7, metadata !644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !679
  call void @llvm.dbg.value(metadata i1 undef, metadata !646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !679
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !680
  call void @llvm.dbg.value(metadata i1 %8, metadata !646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !679
  br i1 %9, label %67, label %10, !dbg !680

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !643, metadata !DIExpression()), !dbg !664
  %11 = or i32 %5, 2, !dbg !682
  call void @llvm.dbg.value(metadata i32 %11, metadata !647, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32* %2, metadata !495, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32* %2, metadata !506, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32 %5, metadata !514, metadata !DIExpression()), !dbg !686
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !688
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !688
  call void @llvm.dbg.value(metadata i32 %13, metadata !515, metadata !DIExpression()), !dbg !686
  %14 = icmp eq i32 %5, %13, !dbg !689
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %65
  %16 = phi i32 [ %66, %65 ], [ %5, %10 ], !dbg !676
  call void @llvm.dbg.value(metadata i32 %16, metadata !643, metadata !DIExpression()), !dbg !664
  %17 = and i32 %16, -4, !dbg !690
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !691
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !648, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !650, metadata !DIExpression()), !dbg !692
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !693
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !651, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i32 0, metadata !652, metadata !DIExpression()), !dbg !692
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !692, !tbaa !568
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !650, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !651, metadata !DIExpression()), !dbg !692
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !694
  br i1 %21, label %22, label %33, !dbg !695

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !650, metadata !DIExpression()), !dbg !692
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !696
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !696, !tbaa !563
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !653, metadata !DIExpression()), !dbg !697
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !698
  br i1 %26, label %27, label %28, !dbg !701

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i32 0, i32 0)) #6, !dbg !702
  tail call void @abort() #6, !dbg !702
  br label %28, !dbg !702

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !704
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !705, !tbaa !566
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !650, metadata !DIExpression()), !dbg !692
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !706
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !651, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !692
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !692, !tbaa !568
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !651, metadata !DIExpression()), !dbg !692
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !694
  br i1 %32, label %22, label %33, !dbg !695, !llvm.loop !707

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !692
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !709, !tbaa !568
  call void @llvm.dbg.value(metadata i32 %16, metadata !643, metadata !DIExpression()), !dbg !664
  %35 = and i32 %16, 1, !dbg !710
  %36 = icmp eq i32 %35, 0, !dbg !711
  br i1 %36, label %42, label %37, !dbg !712

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !643, metadata !DIExpression()), !dbg !664
  %38 = and i32 %16, -3, !dbg !713
  call void @llvm.dbg.value(metadata i32 %38, metadata !655, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32* %2, metadata !715, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32* undef, metadata !718, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32* undef, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32* %2, metadata !506, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32 %16, metadata !514, metadata !DIExpression()), !dbg !723
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !725
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !725
  call void @llvm.dbg.value(metadata i32 %40, metadata !515, metadata !DIExpression()), !dbg !723
  %41 = icmp eq i32 %16, %40, !dbg !726
  br i1 %41, label %67, label %65, !dbg !727, !llvm.loop !728

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !731
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !731, !tbaa !566
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !658, metadata !DIExpression()), !dbg !692
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !732
  br i1 %45, label %46, label %54, !dbg !733

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !643, metadata !DIExpression()), !dbg !664
  %48 = and i32 %47, 1, !dbg !734
  call void @llvm.dbg.value(metadata i32 %48, metadata !662, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32* %2, metadata !715, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32* undef, metadata !718, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32* undef, metadata !719, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32* %2, metadata !506, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 %47, metadata !514, metadata !DIExpression()), !dbg !739
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !741
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !741
  call void @llvm.dbg.value(metadata i32 %50, metadata !515, metadata !DIExpression()), !dbg !739
  %51 = icmp eq i32 %47, %50, !dbg !742
  br i1 %51, label %56, label %52, !dbg !743

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !643, metadata !DIExpression()), !dbg !664
  %53 = icmp ult i32 %50, 4, !dbg !744
  br i1 %53, label %46, label %63, !dbg !746, !llvm.loop !747

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !750, !tbaa !568
  call void @llvm.dbg.value(metadata i32* %2, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 -3, metadata !757, metadata !DIExpression()), !dbg !758
  %55 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !760
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !761, metadata !DIExpression()) #7, !dbg !764
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !766
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !767
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !768, metadata !DIExpression()) #7, !dbg !771
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !773
  store i8 0, i8* %59, align 8, !dbg !774, !tbaa !554
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !775
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #6, !dbg !776
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !777, metadata !DIExpression()) #7, !dbg !780
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !782
  br label %67, !dbg !783

63:                                               ; preds = %52
  %64 = extractvalue { i32, i1 } %49, 0, !dbg !741
  call void @llvm.dbg.value(metadata i8 undef, metadata !659, metadata !DIExpression()), !dbg !784
  br label %65

65:                                               ; preds = %37, %63
  %66 = phi i32 [ %64, %63 ], [ %40, %37 ], !dbg !664
  fence seq_cst, !dbg !692
  br label %15

67:                                               ; preds = %4, %37, %56
  ret void, !dbg !785
}

declare !dbg !786 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !789 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) local_unnamed_addr #0 !dbg !790 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %0, metadata !799, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 10, metadata !804, metadata !DIExpression()), !dbg !805
  %2 = mul i32 %0, -1640531527, !dbg !807
  %3 = lshr i32 %2, 22, !dbg !810
  call void @llvm.dbg.value(metadata i32 %3, metadata !796, metadata !DIExpression()), !dbg !798
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !812, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !817
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !819
  call void @llvm.dbg.value(metadata i32* %5, metadata !495, metadata !DIExpression()) #7, !dbg !821
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !821
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !821
  call void @llvm.dbg.value(metadata i32* %5, metadata !506, metadata !DIExpression()) #7, !dbg !823
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !823
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !823
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !823
  %6 = cmpxchg i32* %5, i32 0, i32 1 seq_cst seq_cst, !dbg !825
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !823
  %7 = extractvalue { i32, i1 } %6, 1, !dbg !826
  br i1 %7, label %10, label %8, !dbg !827

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !828
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !812, metadata !DIExpression()) #7, !dbg !817
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %9) #6, !dbg !829
  br label %10, !dbg !831

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !832
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #4 !dbg !833 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !845, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i32 %2, metadata !846, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i32 %1, metadata !799, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i32 10, metadata !804, metadata !DIExpression()), !dbg !860
  %4 = mul i32 %1, -1640531527, !dbg !862
  %5 = lshr i32 %4, 22, !dbg !863
  call void @llvm.dbg.value(metadata i32 %5, metadata !847, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i32 %2, metadata !799, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i32 10, metadata !804, metadata !DIExpression()), !dbg !864
  %6 = mul i32 %2, -1640531527, !dbg !866
  %7 = lshr i32 %6, 22, !dbg !867
  call void @llvm.dbg.value(metadata i32 %7, metadata !848, metadata !DIExpression()), !dbg !859
  %8 = icmp eq i32 %5, %7, !dbg !868
  br i1 %8, label %9, label %16, !dbg !869

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !870
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !849, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !812, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !872
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !874
  call void @llvm.dbg.value(metadata i32* %11, metadata !495, metadata !DIExpression()) #7, !dbg !875
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !875
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !875
  call void @llvm.dbg.value(metadata i32* %11, metadata !506, metadata !DIExpression()) #7, !dbg !877
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !877
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !877
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !877
  %12 = cmpxchg i32* %11, i32 0, i32 1 seq_cst seq_cst, !dbg !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !877
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !880
  br i1 %13, label %46, label %14, !dbg !881

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !882
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !812, metadata !DIExpression()) #7, !dbg !872
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #6, !dbg !883
  br label %46, !dbg !884

16:                                               ; preds = %3
  %17 = icmp ult i32 %5, %7, !dbg !885
  br i1 %17, label %18, label %32, !dbg !886

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !887
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !852, metadata !DIExpression()), !dbg !888
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !889
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !855, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !812, metadata !DIExpression()) #7, !dbg !890
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !890
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !890
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, i32 0, !dbg !892
  call void @llvm.dbg.value(metadata i32* %21, metadata !495, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* %21, metadata !506, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !895
  %22 = cmpxchg i32* %21, i32 0, i32 1 seq_cst seq_cst, !dbg !897
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !895
  %23 = extractvalue { i32, i1 } %22, 1, !dbg !898
  br i1 %23, label %26, label %24, !dbg !899

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, !dbg !900
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !812, metadata !DIExpression()) #7, !dbg !890
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %25) #6, !dbg !901
  br label %26, !dbg !902

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !812, metadata !DIExpression()) #7, !dbg !903
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !903
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !903
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !905
  call void @llvm.dbg.value(metadata i32* %27, metadata !495, metadata !DIExpression()) #7, !dbg !906
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !906
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !906
  call void @llvm.dbg.value(metadata i32* %27, metadata !506, metadata !DIExpression()) #7, !dbg !908
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !908
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !908
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !908
  %28 = cmpxchg i32* %27, i32 0, i32 1 seq_cst seq_cst, !dbg !910
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !908
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !911
  br i1 %29, label %46, label %30, !dbg !912

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !913
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !812, metadata !DIExpression()) #7, !dbg !903
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %31) #6, !dbg !914
  br label %46, !dbg !915

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !916
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !856, metadata !DIExpression()), !dbg !917
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !918
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !858, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !812, metadata !DIExpression()) #7, !dbg !919
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !919
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !919
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, i32 0, !dbg !921
  call void @llvm.dbg.value(metadata i32* %35, metadata !495, metadata !DIExpression()) #7, !dbg !922
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !922
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !922
  call void @llvm.dbg.value(metadata i32* %35, metadata !506, metadata !DIExpression()) #7, !dbg !924
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !924
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !924
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !924
  %36 = cmpxchg i32* %35, i32 0, i32 1 seq_cst seq_cst, !dbg !926
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !924
  %37 = extractvalue { i32, i1 } %36, 1, !dbg !927
  br i1 %37, label %40, label %38, !dbg !928

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, !dbg !929
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !812, metadata !DIExpression()) #7, !dbg !919
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %39) #6, !dbg !930
  br label %40, !dbg !931

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !812, metadata !DIExpression()) #7, !dbg !932
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()) #7, !dbg !932
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()) #7, !dbg !932
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, i32 0, !dbg !934
  call void @llvm.dbg.value(metadata i32* %41, metadata !495, metadata !DIExpression()) #7, !dbg !935
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !935
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !935
  call void @llvm.dbg.value(metadata i32* %41, metadata !506, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !937
  %42 = cmpxchg i32* %41, i32 0, i32 1 seq_cst seq_cst, !dbg !939
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !937
  %43 = extractvalue { i32, i1 } %42, 1, !dbg !940
  br i1 %43, label %46, label %44, !dbg !941

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, !dbg !942
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !812, metadata !DIExpression()) #7, !dbg !932
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #6, !dbg !943
  br label %46, !dbg !944

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !945
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 4, !dbg !945, !tbaa !449
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !945
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 4, !dbg !945, !tbaa !449
  ret void, !dbg !946
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 !dbg !947 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !952, metadata !DIExpression()), !dbg !953
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !954
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !954, !tbaa !956
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !958
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !958, !tbaa !959
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !960
  br i1 %6, label %7, label %16, !dbg !961

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !962, metadata !DIExpression()) #7, !dbg !968
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !971
  call void @llvm.dbg.value(metadata i32* %8, metadata !972, metadata !DIExpression()) #7, !dbg !976
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !976
  %9 = atomicrmw and i32* %8, i32 -2 seq_cst, !dbg !978
  call void @llvm.dbg.value(metadata i32 %9, metadata !965, metadata !DIExpression()) #7, !dbg !968
  %10 = and i32 %9, 2, !dbg !979
  %11 = icmp ne i32 %10, 0, !dbg !980
  call void @llvm.dbg.value(metadata i1 %11, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  %12 = icmp ult i32 %9, 4
  %13 = or i1 %12, %11, !dbg !981
  call void @llvm.dbg.value(metadata i1 %12, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  br i1 %13, label %56, label %14, !dbg !981

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !983
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !962, metadata !DIExpression()) #7, !dbg !968
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #6, !dbg !984
  br label %56, !dbg !986

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !987
  br i1 %17, label %18, label %37, !dbg !989

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !962, metadata !DIExpression()) #7, !dbg !990
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !993
  call void @llvm.dbg.value(metadata i32* %19, metadata !972, metadata !DIExpression()) #7, !dbg !994
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !994
  %20 = atomicrmw and i32* %19, i32 -2 seq_cst, !dbg !996
  call void @llvm.dbg.value(metadata i32 %20, metadata !965, metadata !DIExpression()) #7, !dbg !990
  %21 = and i32 %20, 2, !dbg !997
  %22 = icmp ne i32 %21, 0, !dbg !998
  call void @llvm.dbg.value(metadata i1 %22, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  %23 = icmp ult i32 %20, 4
  %24 = or i1 %23, %22, !dbg !999
  call void @llvm.dbg.value(metadata i1 %23, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !990
  br i1 %24, label %27, label %25, !dbg !999

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1000
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !962, metadata !DIExpression()) #7, !dbg !990
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %26) #6, !dbg !1001
  br label %27, !dbg !1002

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1003, !tbaa !959
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !962, metadata !DIExpression()) #7, !dbg !1004
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, i32 0, !dbg !1006
  call void @llvm.dbg.value(metadata i32* %29, metadata !972, metadata !DIExpression()) #7, !dbg !1007
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1007
  %30 = atomicrmw and i32* %29, i32 -2 seq_cst, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %30, metadata !965, metadata !DIExpression()) #7, !dbg !1004
  %31 = and i32 %30, 2, !dbg !1010
  %32 = icmp ne i32 %31, 0, !dbg !1011
  call void @llvm.dbg.value(metadata i1 %32, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1004
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1004
  %33 = icmp ult i32 %30, 4
  %34 = or i1 %33, %32, !dbg !1012
  call void @llvm.dbg.value(metadata i1 %33, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1004
  br i1 %34, label %56, label %35, !dbg !1012

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, !dbg !1013
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !962, metadata !DIExpression()) #7, !dbg !1004
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %36) #6, !dbg !1014
  br label %56, !dbg !1015

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !962, metadata !DIExpression()) #7, !dbg !1016
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !1019
  call void @llvm.dbg.value(metadata i32* %38, metadata !972, metadata !DIExpression()) #7, !dbg !1020
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1020
  %39 = atomicrmw and i32* %38, i32 -2 seq_cst, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %39, metadata !965, metadata !DIExpression()) #7, !dbg !1016
  %40 = and i32 %39, 2, !dbg !1023
  %41 = icmp ne i32 %40, 0, !dbg !1024
  call void @llvm.dbg.value(metadata i1 %41, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1016
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1016
  %42 = icmp ult i32 %39, 4
  %43 = or i1 %42, %41, !dbg !1025
  call void @llvm.dbg.value(metadata i1 %42, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1016
  br i1 %43, label %46, label %44, !dbg !1025

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !1026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !962, metadata !DIExpression()) #7, !dbg !1016
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #6, !dbg !1027
  br label %46, !dbg !1028

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1029, !tbaa !956
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !962, metadata !DIExpression()) #7, !dbg !1030
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, i32 0, !dbg !1032
  call void @llvm.dbg.value(metadata i32* %48, metadata !972, metadata !DIExpression()) #7, !dbg !1033
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1033
  %49 = atomicrmw and i32* %48, i32 -2 seq_cst, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %49, metadata !965, metadata !DIExpression()) #7, !dbg !1030
  %50 = and i32 %49, 2, !dbg !1036
  %51 = icmp ne i32 %50, 0, !dbg !1037
  call void @llvm.dbg.value(metadata i1 %51, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1030
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1030
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51, !dbg !1038
  call void @llvm.dbg.value(metadata i1 %52, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1030
  br i1 %53, label %56, label %54, !dbg !1038

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, !dbg !1039
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !962, metadata !DIExpression()) #7, !dbg !1030
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %55) #6, !dbg !1040
  br label %56, !dbg !1041

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !1042
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1046, metadata !DIExpression()), !dbg !1047
  ret i1 true, !dbg !1048
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #5 !dbg !1049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()), !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1056, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %1, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i1 %2, metadata !1058, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1059
  ret i32 0, !dbg !1060
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1061 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1063, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1064, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %2, metadata !1065, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %3, metadata !1066, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 !dbg !1069 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1074, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1075, metadata !DIExpression()), !dbg !1079
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #7, !dbg !1080
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1076, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1082, metadata !DIExpression()) #7, !dbg !1085
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !547, metadata !DIExpression()) #7, !dbg !1087
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1089
  store i8 0, i8* %6, align 8, !dbg !1089, !tbaa !554
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1090
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !1091
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1092
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #6, !dbg !1093
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1094
  store i32 0, i32* %11, align 8, !dbg !1094, !tbaa !1095
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1097
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1097, !tbaa !1098
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1099
  store i32 0, i32* %13, align 8, !dbg !1099, !tbaa !1100
  %14 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1101
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1077, metadata !DIExpression()), !dbg !1079
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #7, !dbg !1102
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1078, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1104, metadata !DIExpression()), !dbg !1108
  store i8 0, i8* %15, align 4, !dbg !1110, !tbaa !1111
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1113
  store i32 0, i32* %16, align 4, !dbg !1113, !tbaa !1114
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1115
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 4, !dbg !1115, !tbaa !1117
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1119
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #6, !dbg !1120
  br i1 %20, label %32, label %21, !dbg !1121

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !962, metadata !DIExpression()) #7, !dbg !1122
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0, !dbg !1125
  call void @llvm.dbg.value(metadata i32* %22, metadata !972, metadata !DIExpression()) #7, !dbg !1126
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1126
  %23 = atomicrmw and i32* %22, i32 -2 seq_cst, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %23, metadata !965, metadata !DIExpression()) #7, !dbg !1122
  %24 = and i32 %23, 2, !dbg !1129
  %25 = icmp ne i32 %24, 0, !dbg !1130
  call void @llvm.dbg.value(metadata i1 %25, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1122
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1122
  %26 = icmp ult i32 %23, 4
  %27 = or i1 %26, %25, !dbg !1131
  call void @llvm.dbg.value(metadata i1 %26, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1122
  br i1 %27, label %30, label %28, !dbg !1131

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, !dbg !1132
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !962, metadata !DIExpression()) #7, !dbg !1122
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %29) #6, !dbg !1133
  br label %30, !dbg !1134

30:                                               ; preds = %21, %28
  %31 = load i32, i32* %16, align 4, !dbg !1135, !tbaa !1114
  br label %62, !dbg !1136

32:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1137, !tbaa !1098
  store i32 %0, i32* %11, align 8, !dbg !1138, !tbaa !1095
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !569, metadata !DIExpression()), !dbg !1139
  store i8 1, i8* %6, align 8, !dbg !1141, !tbaa !554
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 1, !dbg !1142
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1142, !tbaa !1144
  %35 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1147
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2, !dbg !1148
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 4, !dbg !1148
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %37, i32 0, i32 2, !dbg !1148
  %39 = select i1 %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, !dbg !1148
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1149, !tbaa !449
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2, !dbg !1150
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 4, !dbg !1151, !tbaa !1152
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !962, metadata !DIExpression()) #7, !dbg !1153
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0, !dbg !1155
  call void @llvm.dbg.value(metadata i32* %41, metadata !972, metadata !DIExpression()) #7, !dbg !1156
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1156
  %42 = atomicrmw and i32* %41, i32 -2 seq_cst, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %42, metadata !965, metadata !DIExpression()) #7, !dbg !1153
  %43 = and i32 %42, 2, !dbg !1159
  %44 = icmp ne i32 %43, 0, !dbg !1160
  call void @llvm.dbg.value(metadata i1 %44, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1153
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1153
  %45 = icmp ult i32 %42, 4
  %46 = or i1 %45, %44, !dbg !1161
  call void @llvm.dbg.value(metadata i1 %45, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1153
  br i1 %46, label %49, label %47, !dbg !1161

47:                                               ; preds = %32
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, !dbg !1162
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %48, metadata !962, metadata !DIExpression()) #7, !dbg !1153
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %48) #6, !dbg !1163
  br label %49, !dbg !1164

49:                                               ; preds = %32, %47
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1165
  %51 = load void (i8*)*, void (i8*)** %50, align 4, !dbg !1165, !tbaa !1166
  call void %51(i8* nonnull %19) #6, !dbg !1167
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !601, metadata !DIExpression()) #7, !dbg !1168
  %52 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1170
  %53 = load i8, i8* %6, align 8, !dbg !1171, !tbaa !554, !range !609
  %54 = icmp eq i8 %53, 0, !dbg !1171
  br i1 %54, label %59, label %55, !dbg !1172

55:                                               ; preds = %49, %55
  %56 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !1173
  %57 = load i8, i8* %6, align 8, !dbg !1171, !tbaa !554, !range !609
  %58 = icmp eq i8 %57, 0, !dbg !1171
  br i1 %58, label %59, label %55, !dbg !1172, !llvm.loop !1174

59:                                               ; preds = %55, %49
  %60 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1176
  %61 = load i32, i32* %13, align 8, !dbg !1177, !tbaa !1100
  br label %62, !dbg !1178

62:                                               ; preds = %59, %30
  %63 = phi i32 [ %61, %59 ], [ %31, %30 ], !dbg !1079
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #7, !dbg !1179
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1180, metadata !DIExpression()) #7, !dbg !1183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !625, metadata !DIExpression()) #7, !dbg !1185
  %64 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #6, !dbg !1188
  %65 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1189
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #7, !dbg !1179
  ret i32 %63, !dbg !1179
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 !dbg !1190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1192, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1193, metadata !DIExpression()), !dbg !1209
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1210
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1194, metadata !DIExpression()), !dbg !1209
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1211
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1195, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1196, metadata !DIExpression()), !dbg !1209
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1212, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1197, metadata !DIExpression()), !dbg !1209
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %11, !dbg !1213

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ], !dbg !1214
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ], !dbg !1215
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ], !dbg !1216
  %15 = phi i32 [ undef, %2 ], [ %61, %57 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1197, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1196, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1195, metadata !DIExpression()), !dbg !1209
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1217
  br i1 %16, label %62, label %17, !dbg !1213

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1218
  %19 = load i32, i32* %18, align 4, !dbg !1219, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %19, metadata !1198, metadata !DIExpression()), !dbg !1220
  %20 = icmp eq i32 %19, %0, !dbg !1221
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1222
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 4, !dbg !1222, !tbaa !1098
  br i1 %20, label %23, label %57, !dbg !1223

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1200, metadata !DIExpression()), !dbg !1224
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1225, !tbaa !449
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1224
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1226, !tbaa !1152
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1227
  br i1 %25, label %28, label %26, !dbg !1228

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1204, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 undef, metadata !1203, metadata !DIExpression()), !dbg !1224
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1230
  br i1 %27, label %38, label %29, !dbg !1231

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1232, !tbaa !1152
  br label %38, !dbg !1234

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1204, metadata !DIExpression()), !dbg !1229
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 1, !dbg !1235
  %32 = load i32, i32* %31, align 4, !dbg !1236, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %32, metadata !1207, metadata !DIExpression()), !dbg !1237
  %33 = icmp eq i32 %32, %0, !dbg !1238
  call void @llvm.dbg.value(metadata i1 %33, metadata !1203, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1224
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 2, !dbg !1239
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !dbg !1239, !tbaa !1098
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1204, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 undef, metadata !1203, metadata !DIExpression()), !dbg !1224
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1230
  %37 = or i1 %33, %36, !dbg !1240
  br i1 %37, label %38, label %29, !dbg !1231, !llvm.loop !1241

38:                                               ; preds = %29, %26, %28
  %39 = phi i1 [ false, %28 ], [ false, %26 ], [ %33, %29 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1203, metadata !DIExpression()), !dbg !1224
  %40 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1243, !tbaa !1244
  %41 = tail call i32 %40(i8* nonnull %8, i32 1, i1 zeroext %39) #6, !dbg !1245
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1246
  store i32 %41, i32* %42, align 8, !dbg !1247, !tbaa !1100
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !761, metadata !DIExpression()) #7, !dbg !1248
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1250
  %44 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %43) #6, !dbg !1251
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !962, metadata !DIExpression()) #7, !dbg !1252
  call void @llvm.dbg.value(metadata i32* %9, metadata !972, metadata !DIExpression()) #7, !dbg !1254
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1254
  %45 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %45, metadata !965, metadata !DIExpression()) #7, !dbg !1252
  %46 = and i32 %45, 2, !dbg !1257
  %47 = icmp ne i32 %46, 0, !dbg !1258
  call void @llvm.dbg.value(metadata i1 %47, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1252
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1252
  %48 = icmp ult i32 %45, 4
  %49 = or i1 %48, %47, !dbg !1259
  call void @llvm.dbg.value(metadata i1 %48, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1252
  br i1 %49, label %51, label %50, !dbg !1259

50:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !962, metadata !DIExpression()) #7, !dbg !1252
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !1260
  br label %51, !dbg !1261

51:                                               ; preds = %38, %50
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !768, metadata !DIExpression()) #7, !dbg !1262
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 2, !dbg !1264
  store i8 0, i8* %52, align 8, !dbg !1265, !tbaa !554
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 1, !dbg !1266
  %54 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %53) #6, !dbg !1267
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !777, metadata !DIExpression()) #7, !dbg !1268
  %55 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %43) #6, !dbg !1270
  %56 = zext i1 %39 to i32, !dbg !1271
  br label %57

57:                                               ; preds = %17, %51
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %51 ], [ %21, %17 ], !dbg !1209
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %51 ], [ %14, %17 ], !dbg !1209
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %51 ], [ %22, %17 ], !dbg !1209
  %61 = phi i32 [ %56, %51 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1197, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1196, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, metadata !1195, metadata !DIExpression()), !dbg !1209
  br i1 %20, label %71, label %11, !llvm.loop !1272

62:                                               ; preds = %11
  %63 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1274, !tbaa !1244
  %64 = tail call i32 %63(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !962, metadata !DIExpression()) #7, !dbg !1276
  call void @llvm.dbg.value(metadata i32* %9, metadata !972, metadata !DIExpression()) #7, !dbg !1278
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1278
  %65 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1280
  call void @llvm.dbg.value(metadata i32 %65, metadata !965, metadata !DIExpression()) #7, !dbg !1276
  %66 = and i32 %65, 2, !dbg !1281
  %67 = icmp ne i32 %66, 0, !dbg !1282
  call void @llvm.dbg.value(metadata i1 %67, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1276
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1276
  %68 = icmp ult i32 %65, 4
  %69 = or i1 %68, %67, !dbg !1283
  call void @llvm.dbg.value(metadata i1 %68, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1276
  br i1 %69, label %71, label %70, !dbg !1283

70:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !962, metadata !DIExpression()) #7, !dbg !1276
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !1284
  br label %71, !dbg !1285

71:                                               ; preds = %57, %70, %62
  %72 = phi i32 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ], !dbg !1209
  ret i32 %72, !dbg !1286
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !1287 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1291, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %1, metadata !1292, metadata !DIExpression()), !dbg !1319
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1320
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1293, metadata !DIExpression()), !dbg !1319
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1321
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1294, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1295, metadata !DIExpression()), !dbg !1319
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1322, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1296, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1319
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1323
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1323
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1299, metadata !DIExpression()), !dbg !1324
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1325
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1303, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 16, metadata !1304, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1295, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1296, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1319
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1326
  br i1 %9, label %60, label %10, !dbg !1327

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1327

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i32 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i32 [ 0, %10 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1295, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1296, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %15, metadata !1304, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1303, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %17, metadata !1297, metadata !DIExpression()), !dbg !1319
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1328
  %19 = load i32, i32* %18, align 4, !dbg !1329, !tbaa !487
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1330
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1330, !tbaa !1098
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1307, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %19, metadata !1305, metadata !DIExpression()), !dbg !1331
  %22 = icmp eq i32 %19, %0, !dbg !1332
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1333, !tbaa !449
  br i1 %22, label %23, label %54, !dbg !1334

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1335, !tbaa !1152
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1337
  br i1 %25, label %26, label %27, !dbg !1338

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1339, !tbaa !1152
  br label %27, !dbg !1341

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1342
  br i1 %28, label %29, label %46, !dbg !1343

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1308, metadata !DIExpression()), !dbg !1344
  %30 = shl i32 %15, 3, !dbg !1345
  %31 = call i8* @malloc(i32 %30) #6, !dbg !1346
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1347
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1303, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1348
  %33 = icmp eq i32 %15, 0, !dbg !1349
  br i1 %33, label %34, label %37, !dbg !1351

34:                                               ; preds = %37, %29
  %35 = shl i32 %15, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %35, metadata !1304, metadata !DIExpression()), !dbg !1319
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1353
  br i1 %36, label %46, label %44, !dbg !1355

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !1313, metadata !DIExpression()), !dbg !1348
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %38, !dbg !1356
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1356, !tbaa !449
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %38, !dbg !1358
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !dbg !1359, !tbaa !449
  %42 = add nuw i32 %38, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %42, metadata !1313, metadata !DIExpression()), !dbg !1348
  %43 = icmp ult i32 %42, %15, !dbg !1349
  br i1 %43, label %37, label %34, !dbg !1351, !llvm.loop !1361

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1363
  call void @free(i8* %45) #6, !dbg !1365
  br label %46, !dbg !1366

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1319
  %48 = phi i32 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1319
  call void @llvm.dbg.value(metadata i32 %48, metadata !1304, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1303, metadata !DIExpression()), !dbg !1319
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1367
  store i32 %1, i32* %49, align 8, !dbg !1368, !tbaa !1100
  %50 = add i32 %17, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %50, metadata !1297, metadata !DIExpression()), !dbg !1319
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i32 %17, !dbg !1370
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 4, !dbg !1371, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !761, metadata !DIExpression()) #7, !dbg !1372
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1374
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #6, !dbg !1375
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1296, metadata !DIExpression()), !dbg !1319
  br label %54, !dbg !1376

54:                                               ; preds = %12, %46
  %55 = phi i32 [ %50, %46 ], [ %17, %12 ], !dbg !1319
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1319
  %57 = phi i32 [ %48, %46 ], [ %15, %12 ], !dbg !1319
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1295, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1296, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %57, metadata !1304, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %56, metadata !1303, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %55, metadata !1297, metadata !DIExpression()), !dbg !1319
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1326
  br i1 %59, label %60, label %12, !dbg !1327, !llvm.loop !1377

60:                                               ; preds = %54, %2
  %61 = phi i32 [ 0, %2 ], [ %55, %54 ], !dbg !1319
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ], !dbg !1319
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !962, metadata !DIExpression()) #7, !dbg !1379
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1381
  call void @llvm.dbg.value(metadata i32* %63, metadata !972, metadata !DIExpression()) #7, !dbg !1382
  call void @llvm.dbg.value(metadata i32 -2, metadata !975, metadata !DIExpression()) #7, !dbg !1382
  %64 = atomicrmw and i32* %63, i32 -2 seq_cst, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %64, metadata !965, metadata !DIExpression()) #7, !dbg !1379
  %65 = and i32 %64, 2, !dbg !1385
  %66 = icmp ne i32 %65, 0, !dbg !1386
  call void @llvm.dbg.value(metadata i1 %66, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1379
  call void @llvm.dbg.value(metadata i1 undef, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1379
  %67 = icmp ult i32 %64, 4
  %68 = or i1 %67, %66, !dbg !1387
  call void @llvm.dbg.value(metadata i1 %67, metadata !967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1379
  br i1 %68, label %71, label %69, !dbg !1387

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1388
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %70, metadata !962, metadata !DIExpression()) #7, !dbg !1379
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %70) #6, !dbg !1389
  br label %71, !dbg !1390

71:                                               ; preds = %60, %69
  call void @llvm.dbg.value(metadata i32 0, metadata !1315, metadata !DIExpression()), !dbg !1391
  %72 = icmp eq i32 %61, 0, !dbg !1392
  br i1 %72, label %82, label %73, !dbg !1394

73:                                               ; preds = %71, %73
  %74 = phi i32 [ %80, %73 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !1315, metadata !DIExpression()), !dbg !1391
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %74, !dbg !1395
  %76 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %75, align 4, !dbg !1395, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, metadata !768, metadata !DIExpression()) #7, !dbg !1397
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i32 0, i32 0, i32 2, !dbg !1399
  store i8 0, i8* %77, align 8, !dbg !1400, !tbaa !554
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i32 0, i32 0, i32 1, !dbg !1401
  %79 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %78) #6, !dbg !1402
  %80 = add nuw i32 %74, 1, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %80, metadata !1315, metadata !DIExpression()), !dbg !1391
  %81 = icmp ult i32 %80, %61, !dbg !1392
  br i1 %81, label %73, label %84, !dbg !1394, !llvm.loop !1404

82:                                               ; preds = %84, %71
  %83 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8, !dbg !1406
  br i1 %83, label %94, label %92, !dbg !1408

84:                                               ; preds = %73, %84
  %85 = phi i32 [ %90, %84 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata i32 %85, metadata !1317, metadata !DIExpression()), !dbg !1409
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %85, !dbg !1410
  %87 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %86, align 4, !dbg !1410, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, metadata !777, metadata !DIExpression()) #7, !dbg !1413
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, i32 0, i32 0, i32 0, !dbg !1415
  %89 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %88) #6, !dbg !1416
  %90 = add nuw i32 %85, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %90, metadata !1317, metadata !DIExpression()), !dbg !1409
  %91 = icmp ult i32 %90, %61, !dbg !1418
  br i1 %91, label %84, label %82, !dbg !1419, !llvm.loop !1420

92:                                               ; preds = %82
  %93 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*, !dbg !1422
  call void @free(i8* %93) #6, !dbg !1424
  br label %94, !dbg !1425

94:                                               ; preds = %92, %82
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1426
  ret i32 %61, !dbg !1427
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #4 !dbg !1428 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1432, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %1, metadata !1433, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1434, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %3, metadata !1435, metadata !DIExpression()), !dbg !1447
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1448
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1448
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1436, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 %1, metadata !1433, metadata !DIExpression()), !dbg !1447
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #8, !dbg !1450
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1451
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1451
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1437, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1104, metadata !DIExpression()), !dbg !1453
  store i8 0, i8* %8, align 4, !dbg !1455, !tbaa !1111
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1456
  store i32 0, i32* %9, align 4, !dbg !1456, !tbaa !1114
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1457
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1457, !tbaa !1117
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1459
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #6, !dbg !1460
  br i1 %13, label %15, label %14, !dbg !1461

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1462
  br label %126, !dbg !1464

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1465
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1465, !tbaa !956
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1466
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1438, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1439, metadata !DIExpression()), !dbg !1447
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1467, !tbaa !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1438, metadata !DIExpression()), !dbg !1447
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1468
  br i1 %20, label %105, label %21, !dbg !1469

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1469

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1438, metadata !DIExpression()), !dbg !1447
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1470
  %32 = load i32, i32* %31, align 4, !dbg !1471, !tbaa !487
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1472
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1472, !tbaa !1098
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1446, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %32, metadata !1444, metadata !DIExpression()), !dbg !1473
  %35 = icmp eq i32 %32, %0, !dbg !1474
  br i1 %35, label %36, label %50, !dbg !1476

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1477, !tbaa !449
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1479, !tbaa !956
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1481
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1481, !tbaa !1152
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1482
  br i1 %40, label %41, label %42, !dbg !1483

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1484, !tbaa !1152
  br label %42, !dbg !1486

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44, !dbg !1487

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1489
  br i1 %45, label %48, label %46, !dbg !1492

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1493
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1495, !tbaa !1098
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32* %31, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32* undef, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i32 %1, i32* %31, align 4, !dbg !1504, !tbaa !487
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1447
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1447
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1505
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1506
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1438, metadata !DIExpression()), !dbg !1447
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1468
  br i1 %56, label %86, label %24, !dbg !1469, !llvm.loop !1507

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1438, metadata !DIExpression()), !dbg !1447
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1470
  %64 = load i32, i32* %63, align 4, !dbg !1471, !tbaa !487
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1472
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1472, !tbaa !1098
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1446, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %64, metadata !1444, metadata !DIExpression()), !dbg !1473
  %67 = icmp eq i32 %64, %0, !dbg !1474
  br i1 %67, label %68, label %80, !dbg !1476

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1477, !tbaa !449
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1479, !tbaa !956
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1481
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1481, !tbaa !1152
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1482
  br i1 %72, label %73, label %74, !dbg !1483

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1484, !tbaa !1152
  br label %74, !dbg !1486

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1489
  br i1 %75, label %78, label %76, !dbg !1492

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1493
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1495, !tbaa !1098
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32* %63, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32* undef, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i32 %1, i32* %63, align 4, !dbg !1504, !tbaa !487
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1447
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1447
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1505
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1506
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1438, metadata !DIExpression()), !dbg !1447
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1468
  br i1 %85, label %86, label %57, !dbg !1469, !llvm.loop !1507

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1505
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1506
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1447
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1509
  br i1 %90, label %105, label %91, !dbg !1511

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1512
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1514, !tbaa !1098
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1515
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1515, !tbaa !959
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1517
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1517, !tbaa !1144
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1518
  br i1 %97, label %102, label %98, !dbg !1519

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1520
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1520, !tbaa !1152
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1522
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1523, !tbaa !449
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1524
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1525, !tbaa !1152
  br label %105, !dbg !1526

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1527
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1527, !tbaa !1528
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1529
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #6, !dbg !1530
  br i1 %110, label %111, label %119, !dbg !1531

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1532
  store i32 %3, i32* %112, align 8, !dbg !1535, !tbaa !1100
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !761, metadata !DIExpression()) #7, !dbg !1536
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1538
  %114 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %113) #6, !dbg !1539
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1540
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !768, metadata !DIExpression()) #7, !dbg !1541
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1543
  store i8 0, i8* %115, align 8, !dbg !1544, !tbaa !554
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1545
  %117 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %116) #6, !dbg !1546
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !777, metadata !DIExpression()) #7, !dbg !1547
  %118 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %113) #6, !dbg !1549
  br label %120, !dbg !1550

119:                                              ; preds = %105
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1551
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i8, i8* %8, align 4, !dbg !1553
  %122 = and i8 %121, 1, !dbg !1553
  %123 = icmp ne i8 %122, 0, !dbg !1553
  %124 = and i1 %110, %123, !dbg !1553
  %125 = zext i1 %124 to i32, !dbg !1554
  br label %126

126:                                              ; preds = %120, %14
  %127 = phi i32 [ %125, %120 ], [ 0, %14 ], !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1555
  ret i32 %127, !dbg !1555
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1558, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1559, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %0, metadata !1560, metadata !DIExpression()), !dbg !1562
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1563
  %4 = bitcast i8* %3 to i32**, !dbg !1563
  %5 = load i32*, i32** %4, align 4, !dbg !1563, !tbaa !1564
  %6 = load i32, i32* %5, align 4, !dbg !1566, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %6, metadata !1561, metadata !DIExpression()), !dbg !1562
  %7 = icmp eq i32 %6, 3, !dbg !1567
  ret i1 %7, !dbg !1568
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1569 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1571, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1572, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i1 %2, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %0, metadata !1574, metadata !DIExpression()), !dbg !1576
  %4 = select i1 %2, i32 2, i32 0, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %4, metadata !1575, metadata !DIExpression()), !dbg !1576
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1578
  %6 = bitcast i8* %5 to i32**, !dbg !1578
  %7 = load i32*, i32** %6, align 4, !dbg !1578, !tbaa !1564
  call void @llvm.dbg.value(metadata i32* %7, metadata !1579, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32* undef, metadata !1582, metadata !DIExpression()), !dbg !1583
  store i32 %4, i32* %7, align 4, !dbg !1585, !tbaa !487
  fence seq_cst, !dbg !1586
  ret i32 0, !dbg !1587
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1590, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 %1, metadata !1591, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i1 %2, metadata !1592, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %0, metadata !1593, metadata !DIExpression()), !dbg !1597
  br i1 %2, label %8, label %4, !dbg !1598

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1593, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 0, metadata !1594, metadata !DIExpression()), !dbg !1599
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1600
  %6 = bitcast i8* %5 to i32**, !dbg !1600
  %7 = load i32*, i32** %6, align 4, !dbg !1600, !tbaa !1601
  call void @llvm.dbg.value(metadata i32* %7, metadata !1496, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32* undef, metadata !1501, metadata !DIExpression()), !dbg !1603
  store i32 0, i32* %7, align 4, !dbg !1605, !tbaa !487
  br label %8, !dbg !1606

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1607
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 !dbg !1608 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1610, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1611, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %0, metadata !1612, metadata !DIExpression()), !dbg !1614
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1615
  %4 = bitcast i8* %3 to i32**, !dbg !1615
  %5 = load i32*, i32** %4, align 4, !dbg !1615, !tbaa !1616
  %6 = load i32, i32* %5, align 4, !dbg !1618, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %6, metadata !1613, metadata !DIExpression()), !dbg !1614
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1619
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1619
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1619, !tbaa !1621
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1622
  %11 = icmp eq i32 %6, %10, !dbg !1623
  br i1 %11, label %12, label %27, !dbg !1624

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1613, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32* %5, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32* undef, metadata !1501, metadata !DIExpression()), !dbg !1625
  store i32 0, i32* %5, align 4, !dbg !1627, !tbaa !487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1628, metadata !DIExpression()), !dbg !1634
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1636
  %14 = load i32, i32* %13, align 4, !dbg !1637, !tbaa !487
  br label %15, !dbg !1638

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1634
  call void @llvm.dbg.value(metadata i32 %16, metadata !1631, metadata !DIExpression()), !dbg !1634
  %17 = and i32 %16, 1, !dbg !1639
  %18 = icmp eq i32 %17, 0, !dbg !1641
  br i1 %18, label %24, label %19, !dbg !1642

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1631, metadata !DIExpression()), !dbg !1634
  %20 = or i32 %16, 2, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %20, metadata !1632, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32* %13, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32* undef, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32* undef, metadata !1649, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32* %13, metadata !506, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %16, metadata !514, metadata !DIExpression()), !dbg !1653
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1655
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %22, metadata !515, metadata !DIExpression()), !dbg !1653
  %23 = icmp eq i32 %16, %22, !dbg !1656
  br i1 %23, label %24, label %15, !llvm.loop !1657

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1659
  store i8 %25, i8* %26, align 4, !dbg !1660, !tbaa !1111
  br label %27, !dbg !1661

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1662
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1665, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i1 %2, metadata !1667, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  call void @llvm.dbg.value(metadata i1 %3, metadata !1668, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %0, metadata !1669, metadata !DIExpression()), !dbg !1670
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1671
  %6 = load i8, i8* %5, align 4, !dbg !1671, !tbaa !1111, !range !609
  %7 = icmp ne i8 %6, 0, !dbg !1671
  %8 = and i1 %7, %3, !dbg !1673
  br i1 %8, label %9, label %15, !dbg !1673

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1674
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1674
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1674, !tbaa !1621
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1676, metadata !DIExpression()), !dbg !1679
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1681
  call void @llvm.dbg.value(metadata i32* %13, metadata !1682, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 2, metadata !1685, metadata !DIExpression()), !dbg !1686
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1688
  br label %15, !dbg !1689

15:                                               ; preds = %4, %9
  ret void, !dbg !1690
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1693, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()), !dbg !1697
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1698
  %4 = bitcast i8* %3 to i32**, !dbg !1698
  %5 = load i32*, i32** %4, align 4, !dbg !1698, !tbaa !1699
  %6 = load i32, i32* %5, align 4, !dbg !1701, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %6, metadata !1696, metadata !DIExpression()), !dbg !1697
  %7 = icmp eq i32 %6, 0, !dbg !1702
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1704
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1704
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1704, !tbaa !1705
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1704
  br i1 %7, label %16, label %12, !dbg !1706

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1707
  br i1 %13, label %18, label %14, !dbg !1709

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1710
  br label %16, !dbg !1712

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1704, !tbaa !487
  br label %18, !dbg !1713

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1697
  ret i1 %19, !dbg !1713
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #4 !dbg !1714 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1716, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1719
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1719
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1719, !tbaa !1705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1720, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata i32 1, metadata !1723, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()) #7, !dbg !1725
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1727
  call void @llvm.dbg.value(metadata i32* %6, metadata !588, metadata !DIExpression()) #7, !dbg !1729
  call void @llvm.dbg.value(metadata i32* undef, metadata !591, metadata !DIExpression()) #7, !dbg !1729
  call void @llvm.dbg.value(metadata i32* undef, metadata !592, metadata !DIExpression()) #7, !dbg !1729
  call void @llvm.dbg.value(metadata i32* %6, metadata !506, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #7, !dbg !1731
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1733
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !1731
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1734
  br i1 %8, label %22, label %9, !dbg !1735

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1736, metadata !DIExpression()) #7, !dbg !1742
  call void @llvm.dbg.value(metadata i32 1, metadata !1739, metadata !DIExpression()) #7, !dbg !1742
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()) #7, !dbg !1742
  call void @llvm.dbg.value(metadata i32* %6, metadata !1745, metadata !DIExpression()) #7, !dbg !1750
  call void @llvm.dbg.value(metadata i32* undef, metadata !1748, metadata !DIExpression()) #7, !dbg !1750
  call void @llvm.dbg.value(metadata i32* undef, metadata !1749, metadata !DIExpression()) #7, !dbg !1750
  call void @llvm.dbg.value(metadata i32* %6, metadata !506, metadata !DIExpression()) #7, !dbg !1753
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1753
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1753
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #7, !dbg !1753
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1755
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !1753
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1756
  br i1 %11, label %22, label %12, !dbg !1757

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1758
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1758
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1741, metadata !DIExpression()) #7, !dbg !1759
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1760, metadata !DIExpression()) #7, !dbg !1764
  call void @llvm.dbg.value(metadata i32* %6, metadata !1763, metadata !DIExpression()) #7, !dbg !1764
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1766, metadata !DIExpression()) #7, !dbg !1770
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1772
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1773
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 4, !dbg !1773, !tbaa !1166
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1774
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1775
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !1775, !tbaa !1528
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1776
  store i32* %6, i32** %18, align 4, !dbg !1776, !tbaa !1564
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !1777, !tbaa !1117
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %16, align 4, !dbg !1779, !tbaa !1244
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !1780
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1781
  %21 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %20) #6, !dbg !1782
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1783
  br label %22, !dbg !1783

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1784
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1787, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 %1, metadata !1788, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i1 %2, metadata !1789, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %0, metadata !1790, metadata !DIExpression()), !dbg !1794
  br i1 %2, label %8, label %4, !dbg !1795

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1790, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()), !dbg !1796
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1797
  %6 = bitcast i8* %5 to i32**, !dbg !1797
  %7 = load i32*, i32** %6, align 4, !dbg !1797, !tbaa !1699
  call void @llvm.dbg.value(metadata i32* %7, metadata !1496, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32* undef, metadata !1501, metadata !DIExpression()), !dbg !1798
  store i32 0, i32* %7, align 4, !dbg !1800, !tbaa !487
  br label %8, !dbg !1801

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1802
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1803 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1807, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1810, metadata !DIExpression()) #7, !dbg !1815
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()) #7, !dbg !1815
  call void @llvm.dbg.value(metadata i32 1, metadata !1814, metadata !DIExpression()) #7, !dbg !1815
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1817
  call void @llvm.dbg.value(metadata i32* %3, metadata !495, metadata !DIExpression()) #7, !dbg !1819
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !1819
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !1819
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !1821
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !1823
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !1821
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1824
  br i1 %5, label %53, label %6, !dbg !1825

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1810, metadata !DIExpression()) #7, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1826, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32 40, metadata !1829, metadata !DIExpression()) #7, !dbg !1840
  %7 = load i32, i32* %3, align 4, !dbg !1843, !tbaa !487
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  br label %16, !dbg !1844

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !1845

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !1840
  call void @llvm.dbg.value(metadata i32 %18, metadata !1829, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %20, metadata !1830, metadata !DIExpression()) #7, !dbg !1840
  %21 = and i32 %20, 1, !dbg !1846
  %22 = icmp eq i32 %21, 0, !dbg !1847
  br i1 %22, label %23, label %28, !dbg !1845

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1830, metadata !DIExpression()) #7, !dbg !1840
  %24 = or i32 %20, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %24, metadata !1831, metadata !DIExpression()) #7, !dbg !1849
  call void @llvm.dbg.value(metadata i32* %3, metadata !495, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()) #7, !dbg !1853
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1853
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %20, metadata !514, metadata !DIExpression()) #7, !dbg !1853
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !1855
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %26, metadata !515, metadata !DIExpression()) #7, !dbg !1853
  %27 = icmp eq i32 %20, %26, !dbg !1856
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !525, metadata !DIExpression()) #7, !dbg !1857
  %29 = icmp sgt i32 %18, 0, !dbg !1860
  br i1 %29, label %30, label %35, !dbg !1861

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !1829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1840
  %31 = icmp eq i32 %18, 1, !dbg !1862
  br i1 %31, label %35, label %32, !dbg !1863

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %33, metadata !1829, metadata !DIExpression()) #7, !dbg !1840
  call void @halide_thread_yield() #6, !dbg !1865
  %34 = load i32, i32* %3, align 4, !dbg !1867, !tbaa !487
  br label %49, !dbg !1868

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1830, metadata !DIExpression()) #7, !dbg !1840
  %37 = and i32 %20, 2, !dbg !1869
  %38 = icmp eq i32 %37, 0, !dbg !1870
  br i1 %38, label %39, label %44, !dbg !1871

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !1830, metadata !DIExpression()) #7, !dbg !1840
  %40 = or i32 %20, 2, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %40, metadata !1835, metadata !DIExpression()) #7, !dbg !1873
  call void @llvm.dbg.value(metadata i32* %3, metadata !1645, metadata !DIExpression()) #7, !dbg !1874
  call void @llvm.dbg.value(metadata i32* undef, metadata !1648, metadata !DIExpression()) #7, !dbg !1874
  call void @llvm.dbg.value(metadata i32* undef, metadata !1649, metadata !DIExpression()) #7, !dbg !1874
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %20, metadata !514, metadata !DIExpression()) #7, !dbg !1877
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !1879
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %42, metadata !515, metadata !DIExpression()) #7, !dbg !1877
  %43 = icmp eq i32 %20, %42, !dbg !1880
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1881
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1838, metadata !DIExpression()) #7, !dbg !1882
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1760, metadata !DIExpression()) #7, !dbg !1883
  call void @llvm.dbg.value(metadata i32* %3, metadata !1763, metadata !DIExpression()) #7, !dbg !1883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1766, metadata !DIExpression()) #7, !dbg !1885
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !1887, !tbaa !1166
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1888, !tbaa !1528
  store i32* %3, i32** %13, align 4, !dbg !1889, !tbaa !1564
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1890, !tbaa !1117
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !1891, !tbaa !1244
  %45 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #6, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %45, metadata !1839, metadata !DIExpression()) #7, !dbg !1893
  %46 = icmp eq i32 %45, %14, !dbg !1894
  br i1 %46, label %52, label %47, !dbg !1896

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !1829, metadata !DIExpression()) #7, !dbg !1840
  %48 = load i32, i32* %3, align 4, !dbg !1897, !tbaa !487
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1898
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !1845, !llvm.loop !1899

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1898
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !1900
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1901 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1903, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1904, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1720, metadata !DIExpression()) #7, !dbg !1906
  call void @llvm.dbg.value(metadata i32 1, metadata !1723, metadata !DIExpression()) #7, !dbg !1906
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()) #7, !dbg !1906
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1908
  call void @llvm.dbg.value(metadata i32* %3, metadata !588, metadata !DIExpression()) #7, !dbg !1909
  call void @llvm.dbg.value(metadata i32* undef, metadata !591, metadata !DIExpression()) #7, !dbg !1909
  call void @llvm.dbg.value(metadata i32* undef, metadata !592, metadata !DIExpression()) #7, !dbg !1909
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()) #7, !dbg !1911
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1911
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1911
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #7, !dbg !1911
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1913
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !1911
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1914
  br i1 %5, label %19, label %6, !dbg !1915

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1736, metadata !DIExpression()) #7, !dbg !1916
  call void @llvm.dbg.value(metadata i32 1, metadata !1739, metadata !DIExpression()) #7, !dbg !1916
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()) #7, !dbg !1916
  call void @llvm.dbg.value(metadata i32* %3, metadata !1745, metadata !DIExpression()) #7, !dbg !1918
  call void @llvm.dbg.value(metadata i32* undef, metadata !1748, metadata !DIExpression()) #7, !dbg !1918
  call void @llvm.dbg.value(metadata i32* undef, metadata !1749, metadata !DIExpression()) #7, !dbg !1918
  call void @llvm.dbg.value(metadata i32* %3, metadata !506, metadata !DIExpression()) #7, !dbg !1920
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !1920
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1920
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #7, !dbg !1920
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1922
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !1920
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1923
  br i1 %8, label %19, label %9, !dbg !1924

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1925
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1741, metadata !DIExpression()) #7, !dbg !1926
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1760, metadata !DIExpression()) #7, !dbg !1927
  call void @llvm.dbg.value(metadata i32* %3, metadata !1763, metadata !DIExpression()) #7, !dbg !1927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1766, metadata !DIExpression()) #7, !dbg !1929
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1931
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1932
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !1932, !tbaa !1166
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1933
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1934
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !1934, !tbaa !1528
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1935
  store i32* %3, i32** %15, align 4, !dbg !1935, !tbaa !1564
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !1936, !tbaa !1117
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !1937, !tbaa !1244
  %16 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !1938
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1939
  %18 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #6, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1941
  br label %19, !dbg !1941

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1942
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1943 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1949, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1951, metadata !DIExpression()) #7, !dbg !1956
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1958
  %4 = load i32, i32* %3, align 4, !dbg !1959, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %4, metadata !1954, metadata !DIExpression()) #7, !dbg !1956
  %5 = icmp eq i32 %4, 0, !dbg !1960
  br i1 %5, label %18, label %6, !dbg !1962

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1951, metadata !DIExpression()) #7, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1949, metadata !DIExpression()), !dbg !1950
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1963
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1963
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1955, metadata !DIExpression()) #7, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %4, metadata !1954, metadata !DIExpression()) #7, !dbg !1956
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1965
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1966, metadata !DIExpression()) #7, !dbg !1971
  call void @llvm.dbg.value(metadata i32* %3, metadata !1969, metadata !DIExpression()) #7, !dbg !1971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1970, metadata !DIExpression()) #7, !dbg !1971
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1766, metadata !DIExpression()) #7, !dbg !1973
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1975
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1976
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !1976, !tbaa !1166
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1977
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !1977, !tbaa !1244
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1978
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !1979
  store i32* %3, i32** %13, align 4, !dbg !1979, !tbaa !1616
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !1980
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !1980, !tbaa !1621
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1981, !tbaa !1117
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1983, !tbaa !1528
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1984
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !1985
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %15, i32 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16, i32 0) #6, !dbg !1986
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1987
  br label %18, !dbg !1987

18:                                               ; preds = %1, %6
  ret void, !dbg !1988
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1989 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1991, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1992, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1994, metadata !DIExpression()) #7, !dbg !1999
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2001
  %4 = load i32, i32* %3, align 4, !dbg !2002, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %4, metadata !1997, metadata !DIExpression()) #7, !dbg !1999
  %5 = icmp eq i32 %4, 0, !dbg !2003
  br i1 %5, label %18, label %6, !dbg !2005

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1994, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1992, metadata !DIExpression()), !dbg !1993
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !2006
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1998, metadata !DIExpression()) #7, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %4, metadata !1997, metadata !DIExpression()) #7, !dbg !1999
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2008
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2009, metadata !DIExpression()) #7, !dbg !2014
  call void @llvm.dbg.value(metadata i32* %3, metadata !2012, metadata !DIExpression()) #7, !dbg !2014
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !2013, metadata !DIExpression()) #7, !dbg !2014
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1766, metadata !DIExpression()) #7, !dbg !2016
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2018
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !2018, !tbaa !1117
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2019
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !2019, !tbaa !1166
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2020
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2021
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !2021, !tbaa !1528
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !2022
  store i32* %3, i32** %13, align 4, !dbg !2022, !tbaa !1601
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !2023
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !2023, !tbaa !2024
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2025, !tbaa !1244
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2027
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !2028
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #6, !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !2030
  br label %18, !dbg !2030

18:                                               ; preds = %1, %6
  ret void, !dbg !2031
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !2032 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2041, metadata !DIExpression()) #7, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2044, metadata !DIExpression()) #7, !dbg !2050
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2052
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2045, metadata !DIExpression()) #7, !dbg !2053
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2054
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2055, metadata !DIExpression()) #7, !dbg !2060
  call void @llvm.dbg.value(metadata i32* %6, metadata !2058, metadata !DIExpression()) #7, !dbg !2060
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2059, metadata !DIExpression()) #7, !dbg !2060
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1766, metadata !DIExpression()) #7, !dbg !2062
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !2064
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !2065
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !2066
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !2067
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !2067, !tbaa !1528
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !2068
  store i32* %6, i32** %11, align 4, !dbg !2068, !tbaa !1699
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !2069
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2069
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !2069, !tbaa !1705
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !2070, !tbaa !1117
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 4, !dbg !2072, !tbaa !1166
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %9, align 4, !dbg !2073, !tbaa !1244
  %14 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2074
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !2075
  %16 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #6, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %16, metadata !2046, metadata !DIExpression()) #7, !dbg !2050
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !2077
  %18 = icmp eq i32 %16, %17, !dbg !2078
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2079
  br i1 %18, label %69, label %20, !dbg !2080

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1810, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata i32 1, metadata !1814, metadata !DIExpression()) #7, !dbg !2081
  call void @llvm.dbg.value(metadata i32* %19, metadata !495, metadata !DIExpression()) #7, !dbg !2084
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !2084
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !2084
  call void @llvm.dbg.value(metadata i32* %19, metadata !506, metadata !DIExpression()) #7, !dbg !2086
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !2086
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #7, !dbg !2086
  %21 = cmpxchg i32* %19, i32 0, i32 1 seq_cst seq_cst, !dbg !2088
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()) #7, !dbg !2086
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2089
  br i1 %22, label %74, label %23, !dbg !2090

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1826, metadata !DIExpression()) #7, !dbg !2091
  call void @llvm.dbg.value(metadata i32 40, metadata !1829, metadata !DIExpression()) #7, !dbg !2091
  %24 = load i32, i32* %19, align 4, !dbg !2093, !tbaa !487
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !2094

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !2095

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !2091
  call void @llvm.dbg.value(metadata i32 %34, metadata !1829, metadata !DIExpression()) #7, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %36, metadata !1830, metadata !DIExpression()) #7, !dbg !2091
  %37 = and i32 %36, 1, !dbg !2096
  %38 = icmp eq i32 %37, 0, !dbg !2097
  br i1 %38, label %39, label %44, !dbg !2095

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1830, metadata !DIExpression()) #7, !dbg !2091
  %40 = or i32 %36, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %40, metadata !1831, metadata !DIExpression()) #7, !dbg !2099
  call void @llvm.dbg.value(metadata i32* %19, metadata !495, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32* %19, metadata !506, metadata !DIExpression()) #7, !dbg !2102
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !2102
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %36, metadata !514, metadata !DIExpression()) #7, !dbg !2102
  %41 = cmpxchg i32* %19, i32 %36, i32 %40 seq_cst seq_cst, !dbg !2104
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %42, metadata !515, metadata !DIExpression()) #7, !dbg !2102
  %43 = icmp eq i32 %36, %42, !dbg !2105
  br i1 %43, label %74, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !525, metadata !DIExpression()) #7, !dbg !2106
  %45 = icmp sgt i32 %34, 0, !dbg !2108
  br i1 %45, label %46, label %51, !dbg !2109

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !1829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2091
  %47 = icmp eq i32 %34, 1, !dbg !2110
  br i1 %47, label %51, label %48, !dbg !2111

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %49, metadata !1829, metadata !DIExpression()) #7, !dbg !2091
  call void @halide_thread_yield() #6, !dbg !2113
  %50 = load i32, i32* %19, align 4, !dbg !2114, !tbaa !487
  br label %65, !dbg !2115

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1830, metadata !DIExpression()) #7, !dbg !2091
  %53 = and i32 %36, 2, !dbg !2116
  %54 = icmp eq i32 %53, 0, !dbg !2117
  br i1 %54, label %55, label %60, !dbg !2118

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !1830, metadata !DIExpression()) #7, !dbg !2091
  %56 = or i32 %36, 2, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %56, metadata !1835, metadata !DIExpression()) #7, !dbg !2120
  call void @llvm.dbg.value(metadata i32* %19, metadata !1645, metadata !DIExpression()) #7, !dbg !2121
  call void @llvm.dbg.value(metadata i32* undef, metadata !1648, metadata !DIExpression()) #7, !dbg !2121
  call void @llvm.dbg.value(metadata i32* undef, metadata !1649, metadata !DIExpression()) #7, !dbg !2121
  call void @llvm.dbg.value(metadata i32* %19, metadata !506, metadata !DIExpression()) #7, !dbg !2123
  call void @llvm.dbg.value(metadata i32* undef, metadata !512, metadata !DIExpression()) #7, !dbg !2123
  call void @llvm.dbg.value(metadata i32* undef, metadata !513, metadata !DIExpression()) #7, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %36, metadata !514, metadata !DIExpression()) #7, !dbg !2123
  %57 = cmpxchg i32* %19, i32 %36, i32 %56 seq_cst seq_cst, !dbg !2125
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %58, metadata !515, metadata !DIExpression()) #7, !dbg !2123
  %59 = icmp eq i32 %36, %58, !dbg !2126
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1838, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1760, metadata !DIExpression()) #7, !dbg !2129
  call void @llvm.dbg.value(metadata i32* %19, metadata !1763, metadata !DIExpression()) #7, !dbg !2129
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1766, metadata !DIExpression()) #7, !dbg !2131
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 4, !dbg !2133, !tbaa !1166
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !2134, !tbaa !1528
  store i32* %19, i32** %30, align 4, !dbg !2135, !tbaa !1564
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !2136, !tbaa !1117
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %28, align 4, !dbg !2137, !tbaa !1244
  %61 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #6, !dbg !2138
  call void @llvm.dbg.value(metadata i32 %61, metadata !1839, metadata !DIExpression()) #7, !dbg !2139
  %62 = icmp eq i32 %61, %17, !dbg !2140
  br i1 %62, label %68, label %63, !dbg !2141

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !1829, metadata !DIExpression()) #7, !dbg !2091
  %64 = load i32, i32* %19, align 4, !dbg !2142, !tbaa !487
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2143
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !2095, !llvm.loop !2144

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2143
  br label %74

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2059, metadata !DIExpression()) #7, !dbg !2060
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2044, metadata !DIExpression()) #7, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2039, metadata !DIExpression()), !dbg !2040
  %70 = load i32, i32* %19, align 4, !dbg !2145, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %70, metadata !2047, metadata !DIExpression()) #7, !dbg !2146
  %71 = and i32 %70, 1, !dbg !2147
  %72 = icmp eq i32 %71, 0, !dbg !2147
  br i1 %72, label %73, label %74, !dbg !2150

73:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !2151
  call void @abort() #6, !dbg !2151
  br label %74, !dbg !2151

74:                                               ; preds = %39, %20, %68, %69, %73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2153
  ret void, !dbg !2154
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()), !dbg !2161
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #6, !dbg !2162
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2160, metadata !DIExpression()), !dbg !2161
  %4 = icmp eq i8* %2, null, !dbg !2164
  br i1 %4, label %13, label %5, !dbg !2166

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !2167
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #6, !dbg !2168
  %8 = bitcast i8* %2 to i8**, !dbg !2169
  store i8* %7, i8** %8, align 4, !dbg !2169, !tbaa !2170
  %9 = icmp eq i8* %7, null, !dbg !2172
  br i1 %9, label %10, label %11, !dbg !2174

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2175
  br label %13, !dbg !2177

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #6, !dbg !2178
  br label %13, !dbg !2179

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !2161
  ret %struct.halide_mutex_array* %14, !dbg !2180
}

declare !dbg !2181 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

declare !dbg !2184 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !2187 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %1, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %1, metadata !2194, metadata !DIExpression()), !dbg !2195
  %3 = bitcast i8* %1 to i8**, !dbg !2196
  %4 = load i8*, i8** %3, align 4, !dbg !2196, !tbaa !2170
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2197
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2198
  ret void, !dbg !2199
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2206
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2207
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2207, !tbaa !2170
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2208
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #8, !dbg !2209
  ret i32 0, !dbg !2210
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2211 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %1, metadata !2214, metadata !DIExpression()), !dbg !2215
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2216
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2216, !tbaa !2170
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2217
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #8, !dbg !2218
  ret i32 0, !dbg !2219
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #5 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2225
  %2 = icmp sgt i32 %0, 256, !dbg !2226
  br i1 %2, label %6, label %3, !dbg !2228

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2229
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2229
  ret i32 %5, !dbg !2229

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2224, metadata !DIExpression()), !dbg !2225
  ret i32 256, !dbg !2230
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #0 !dbg !2231 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2235, metadata !DIExpression()), !dbg !2237
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2236, metadata !DIExpression()), !dbg !2237
  %2 = icmp eq i8* %1, null, !dbg !2239
  br i1 %2, label %3, label %6, !dbg !2241

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !2242
  call void @llvm.dbg.value(metadata i8* %4, metadata !2236, metadata !DIExpression()), !dbg !2237
  %5 = icmp eq i8* %4, null, !dbg !2244
  br i1 %5, label %9, label %6, !dbg !2246

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %8, metadata !2235, metadata !DIExpression()), !dbg !2237
  br label %11, !dbg !2249

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %10, metadata !2235, metadata !DIExpression()), !dbg !2237
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2252
  call void @llvm.dbg.value(metadata i32 %12, metadata !2235, metadata !DIExpression()), !dbg !2237
  ret i32 %12, !dbg !2253
}

declare !dbg !2254 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !2257 dso_local i32 @atoi(i8*) local_unnamed_addr #3

declare !dbg !2260 extern_weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2261 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2265, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 40, metadata !2267, metadata !DIExpression()), !dbg !2291
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2292
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2298

10:                                               ; preds = %390, %1
  %11 = phi i32 [ 0, %1 ], [ %391, %390 ], !dbg !2299
  call void @llvm.dbg.value(metadata i32 %11, metadata !2266, metadata !DIExpression()), !dbg !2291
  br i1 %3, label %15, label %12, !dbg !2300

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2295, metadata !DIExpression()), !dbg !2301
  %13 = load i32, i32* %4, align 4, !dbg !2302, !tbaa !2303
  %14 = icmp eq i32 %13, 0, !dbg !2306
  br i1 %14, label %18, label %21, !dbg !2307

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !2308, !tbaa !2309, !range !609
  %17 = icmp eq i8 %16, 0, !dbg !2308
  br i1 %17, label %48, label %405, !dbg !2298

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2292, !tbaa !2313
  %20 = icmp eq i32 %19, 0, !dbg !2292
  br i1 %20, label %405, label %21, !dbg !2298

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2314, !tbaa !2315
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2271, metadata !DIExpression()), !dbg !2316
  %23 = load i32, i32* %5, align 4, !dbg !2317, !tbaa !2321
  %24 = icmp eq i32 %23, 0, !dbg !2322
  br i1 %24, label %38, label %25, !dbg !2323

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2324, !tbaa !2313
  %27 = icmp eq i32 %26, 0, !dbg !2327
  br i1 %27, label %28, label %46, !dbg !2328

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2271, metadata !DIExpression()), !dbg !2316
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2329
  br i1 %29, label %35, label %30, !dbg !2331

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2269, metadata !DIExpression()), !dbg !2316
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2332
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2271, metadata !DIExpression()), !dbg !2316
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2334, !tbaa !2335
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2269, metadata !DIExpression()), !dbg !2316
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2329
  br i1 %34, label %35, label %30, !dbg !2331, !llvm.loop !2336

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %28 ], [ %32, %30 ], !dbg !2316
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2338, !tbaa !2335
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 4, !dbg !2339, !tbaa !449
  store i32 0, i32* %4, align 4, !dbg !2340, !tbaa !2303
  br label %390, !dbg !2341

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2342, !tbaa !2344
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2345
  br i1 %40, label %46, label %41, !dbg !2346

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i32 0, i32 9, !dbg !2347
  %43 = load i32, i32* %42, align 4, !dbg !2347, !tbaa !2321
  %44 = icmp eq i32 %43, 0, !dbg !2348
  br i1 %44, label %46, label %45, !dbg !2349

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2350, !tbaa !2321
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2352
  br label %390, !dbg !2353

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2271, metadata !DIExpression()), !dbg !2316
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2354
  br i1 %47, label %188, label %51, !dbg !2355

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2314, !tbaa !2315
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2271, metadata !DIExpression()), !dbg !2316
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2354
  br i1 %50, label %198, label %52, !dbg !2355

51:                                               ; preds = %46
  br i1 %3, label %52, label %117, !dbg !2355

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2356

54:                                               ; preds = %52, %113
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %115, %113 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %114, %113 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2271, metadata !DIExpression()), !dbg !2316
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 5, !dbg !2357
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 4, !dbg !2357, !tbaa !2344
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2275, metadata !DIExpression()), !dbg !2358
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2359
  br i1 %59, label %71, label %60, !dbg !2356

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 8, !dbg !2361
  %62 = load i32, i32* %61, align 4, !dbg !2361, !tbaa !2313
  %63 = icmp eq i32 %62, 0, !dbg !2364
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 0, i32 7, !dbg !2365
  %65 = load i32, i32* %64, align 4, !dbg !2365, !tbaa !2366
  br i1 %63, label %69, label %66, !dbg !2367

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2368
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2370
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2371
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %74, !dbg !2373

71:                                               ; preds = %54
  %72 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2374, !tbaa !2376
  %73 = add nsw i32 %72, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %78, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %74, !dbg !2378

74:                                               ; preds = %71, %69, %66
  %75 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %71 ], [ %70, %69 ], [ %68, %66 ]
  %76 = phi i32 [ %73, %71 ], [ %65, %69 ], [ %67, %66 ]
  %77 = load i32, i32* %75, align 4, !dbg !2379, !tbaa !487
  %78 = sub i32 %76, %77, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %78, metadata !2276, metadata !DIExpression()), !dbg !2358
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 7, !dbg !2380
  %80 = load i32, i32* %79, align 4, !dbg !2380, !tbaa !2366
  %81 = icmp sge i32 %78, %80, !dbg !2381
  call void @llvm.dbg.value(metadata i1 %81, metadata !2273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  call void @llvm.dbg.value(metadata i1 true, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 8, !dbg !2382
  %83 = load i8, i8* %82, align 4, !dbg !2382, !tbaa !2383, !range !609
  %84 = icmp eq i8 %83, 0, !dbg !2382
  br i1 %84, label %89, label %85, !dbg !2384

85:                                               ; preds = %74
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 8, !dbg !2385
  %87 = load i32, i32* %86, align 4, !dbg !2385, !tbaa !2313
  %88 = icmp eq i32 %87, 0, !dbg !2386
  br label %89, !dbg !2384

89:                                               ; preds = %85, %74
  %90 = phi i1 [ true, %74 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !2278, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  %91 = and i1 %90, %81, !dbg !2387
  br i1 %91, label %92, label %113, !dbg !2387

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2389, metadata !DIExpression()) #7, !dbg !2392
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 10, !dbg !2396
  %94 = load i32, i32* %93, align 4, !dbg !2396, !tbaa !2399
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 4, !dbg !2400
  %96 = load i32, i32* %95, align 4, !dbg !2400, !tbaa !2401
  %97 = icmp slt i32 %94, %96, !dbg !2402
  br i1 %97, label %98, label %217, !dbg !2403

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 3
  br label %100, !dbg !2403

100:                                              ; preds = %108, %98
  %101 = phi i32 [ %94, %98 ], [ %110, %108 ]
  %102 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %99, align 4, !dbg !2404, !tbaa !2407
  %103 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 0, !dbg !2408
  %104 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %103, align 4, !dbg !2408, !tbaa !2409
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 1, !dbg !2411
  %106 = load i32, i32* %105, align 4, !dbg !2411, !tbaa !2412
  %107 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %104, i32 %106) #6, !dbg !2413
  br i1 %107, label %108, label %113, !dbg !2414

108:                                              ; preds = %100
  %109 = load i32, i32* %93, align 4, !dbg !2415, !tbaa !2399
  %110 = add nsw i32 %109, 1, !dbg !2415
  store i32 %110, i32* %93, align 4, !dbg !2415, !tbaa !2399
  %111 = load i32, i32* %95, align 4, !dbg !2400, !tbaa !2401
  %112 = icmp slt i32 %110, %111, !dbg !2402
  br i1 %112, label %100, label %217, !dbg !2403, !llvm.loop !2416

113:                                              ; preds = %100, %89
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 2, !dbg !2418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %114, metadata !2271, metadata !DIExpression()), !dbg !2316
  %115 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %114, align 4, !dbg !2419, !tbaa !2335
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %115, metadata !2269, metadata !DIExpression()), !dbg !2316
  %116 = icmp eq %"struct.Halide::Runtime::Internal::work"* %115, null, !dbg !2354
  br i1 %116, label %188, label %54, !dbg !2355

117:                                              ; preds = %51, %184
  %118 = phi %"struct.Halide::Runtime::Internal::work"* [ %186, %184 ], [ %22, %51 ]
  %119 = phi %"struct.Halide::Runtime::Internal::work"** [ %185, %184 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %119, metadata !2271, metadata !DIExpression()), !dbg !2316
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 5, !dbg !2357
  %121 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %120, align 4, !dbg !2357, !tbaa !2344
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %121, metadata !2275, metadata !DIExpression()), !dbg !2358
  %122 = icmp eq %"struct.Halide::Runtime::Internal::work"* %121, null, !dbg !2359
  br i1 %122, label %123, label %126, !dbg !2356

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2374, !tbaa !2376
  %125 = add nsw i32 %124, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %137, !dbg !2378

126:                                              ; preds = %117
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 8, !dbg !2361
  %128 = load i32, i32* %127, align 4, !dbg !2361, !tbaa !2313
  %129 = icmp eq i32 %128, 0, !dbg !2364
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 0, i32 7, !dbg !2365
  %131 = load i32, i32* %130, align 4, !dbg !2365, !tbaa !2366
  br i1 %129, label %132, label %134, !dbg !2367

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %141, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %137, !dbg !2373

134:                                              ; preds = %126
  %135 = mul nsw i32 %131, %128, !dbg !2368
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2370
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2358
  br label %137

137:                                              ; preds = %132, %134, %123
  %138 = phi i32* [ %133, %132 ], [ %136, %134 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %123 ]
  %139 = phi i32 [ %131, %132 ], [ %135, %134 ], [ %125, %123 ]
  %140 = load i32, i32* %138, align 4, !dbg !2379, !tbaa !487
  %141 = sub i32 %139, %140, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %141, metadata !2276, metadata !DIExpression()), !dbg !2358
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 7, !dbg !2380
  %143 = load i32, i32* %142, align 4, !dbg !2380, !tbaa !2366
  %144 = icmp slt i32 %141, %143, !dbg !2381
  call void @llvm.dbg.value(metadata i1 %144, metadata !2273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 3, !dbg !2420
  %146 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %145, align 4, !dbg !2420, !tbaa !2421
  %147 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2422, !tbaa !2421
  %148 = icmp ne %"struct.Halide::Runtime::Internal::work"* %146, %147, !dbg !2423
  %149 = icmp ne i32 %143, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 8, !dbg !2382
  %151 = load i8, i8* %150, align 4, !dbg !2382, !tbaa !2383, !range !609
  %152 = icmp eq i8 %151, 0, !dbg !2382
  br i1 %152, label %157, label %153, !dbg !2384

153:                                              ; preds = %137
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 8, !dbg !2385
  %155 = load i32, i32* %154, align 4, !dbg !2385, !tbaa !2313
  %156 = icmp eq i32 %155, 0, !dbg !2386
  br label %157, !dbg !2384

157:                                              ; preds = %153, %137
  %158 = phi i1 [ true, %137 ], [ %156, %153 ]
  call void @llvm.dbg.value(metadata i1 %158, metadata !2278, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2358
  %159 = and i1 %149, %148, !dbg !2387
  %160 = or i1 %144, %159, !dbg !2387
  %161 = xor i1 %158, true, !dbg !2387
  %162 = or i1 %160, %161, !dbg !2387
  br i1 %162, label %184, label %163, !dbg !2387

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2389, metadata !DIExpression()) #7, !dbg !2392
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 10, !dbg !2396
  %165 = load i32, i32* %164, align 4, !dbg !2396, !tbaa !2399
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 4, !dbg !2400
  %167 = load i32, i32* %166, align 4, !dbg !2400, !tbaa !2401
  %168 = icmp slt i32 %165, %167, !dbg !2402
  br i1 %168, label %169, label %217, !dbg !2403

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 3
  br label %171, !dbg !2403

171:                                              ; preds = %179, %169
  %172 = phi i32 [ %165, %169 ], [ %181, %179 ]
  %173 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %170, align 4, !dbg !2404, !tbaa !2407
  %174 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 0, !dbg !2408
  %175 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %174, align 4, !dbg !2408, !tbaa !2409
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 1, !dbg !2411
  %177 = load i32, i32* %176, align 4, !dbg !2411, !tbaa !2412
  %178 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %175, i32 %177) #6, !dbg !2413
  br i1 %178, label %179, label %184, !dbg !2414

179:                                              ; preds = %171
  %180 = load i32, i32* %164, align 4, !dbg !2415, !tbaa !2399
  %181 = add nsw i32 %180, 1, !dbg !2415
  store i32 %181, i32* %164, align 4, !dbg !2415, !tbaa !2399
  %182 = load i32, i32* %166, align 4, !dbg !2400, !tbaa !2401
  %183 = icmp slt i32 %181, %182, !dbg !2402
  br i1 %183, label %171, label %217, !dbg !2403, !llvm.loop !2416

184:                                              ; preds = %171, %157
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 2, !dbg !2418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %185, metadata !2271, metadata !DIExpression()), !dbg !2316
  %186 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %185, align 4, !dbg !2419, !tbaa !2335
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %186, metadata !2269, metadata !DIExpression()), !dbg !2316
  %187 = icmp eq %"struct.Halide::Runtime::Internal::work"* %186, null, !dbg !2354
  br i1 %187, label %188, label %117, !dbg !2355

188:                                              ; preds = %184, %113, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2271, metadata !DIExpression()), !dbg !2316
  br i1 %3, label %198, label %189, !dbg !2424

189:                                              ; preds = %188
  %190 = add nsw i32 %11, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %190, metadata !2266, metadata !DIExpression()), !dbg !2291
  %191 = icmp slt i32 %11, 40, !dbg !2431
  br i1 %191, label %192, label %193, !dbg !2432

192:                                              ; preds = %189
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2433
  tail call void @halide_thread_yield() #6, !dbg !2435
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2436
  br label %390, !dbg !2437

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2438, !tbaa !2440
  %195 = add nsw i32 %194, 1, !dbg !2438
  store i32 %195, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2438, !tbaa !2440
  store i8 1, i8* %8, align 4, !dbg !2441, !tbaa !2442
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2443
  store i8 0, i8* %8, align 4, !dbg !2444, !tbaa !2442
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2445, !tbaa !2440
  %197 = add nsw i32 %196, -1, !dbg !2445
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2445, !tbaa !2440
  br label %390

198:                                              ; preds = %48, %188
  %199 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2446, !tbaa !2448
  %200 = add nsw i32 %199, 1, !dbg !2446
  store i32 %200, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2446, !tbaa !2448
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2449, !tbaa !2451
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2452, !tbaa !2453
  %203 = icmp sgt i32 %201, %202, !dbg !2454
  br i1 %203, label %204, label %208, !dbg !2455

204:                                              ; preds = %198
  %205 = add nsw i32 %201, -1, !dbg !2456
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2456, !tbaa !2451
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2458
  %206 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2459, !tbaa !2451
  %207 = add nsw i32 %206, 1, !dbg !2459
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2459, !tbaa !2451
  br label %213, !dbg !2460

208:                                              ; preds = %198
  %209 = add nsw i32 %11, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %209, metadata !2266, metadata !DIExpression()), !dbg !2291
  %210 = icmp slt i32 %11, 40, !dbg !2463
  br i1 %210, label %211, label %212, !dbg !2464

211:                                              ; preds = %208
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2465
  tail call void @halide_thread_yield() #6, !dbg !2467
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2468
  br label %213, !dbg !2469

212:                                              ; preds = %208
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2470
  br label %213

213:                                              ; preds = %211, %212, %204
  %214 = phi i32 [ %11, %204 ], [ %209, %211 ], [ %209, %212 ], !dbg !2291
  call void @llvm.dbg.value(metadata i32 %214, metadata !2266, metadata !DIExpression()), !dbg !2291
  %215 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2472, !tbaa !2448
  %216 = add nsw i32 %215, -1, !dbg !2472
  store i32 %216, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2472, !tbaa !2448
  br label %390

217:                                              ; preds = %163, %92, %179, %108
  %218 = phi i32* [ %93, %108 ], [ %164, %179 ], [ %93, %92 ], [ %164, %163 ]
  %219 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %108 ], [ %119, %179 ], [ %56, %92 ], [ %119, %163 ]
  %220 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %108 ], [ %118, %179 ], [ %55, %92 ], [ %118, %163 ]
  store i32 0, i32* %218, align 4, !dbg !2473, !tbaa !2399
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %219, metadata !2271, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2291
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 8, !dbg !2474
  %222 = load i32, i32* %221, align 4, !dbg !2475, !tbaa !2313
  %223 = add nsw i32 %222, 1, !dbg !2475
  store i32 %223, i32* %221, align 4, !dbg !2475, !tbaa !2313
  %224 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 5, !dbg !2476
  %225 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2476, !tbaa !2344
  %226 = icmp eq %"struct.Halide::Runtime::Internal::work"* %225, null, !dbg !2478
  %227 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2479
  %228 = load i32, i32* %227, align 4, !dbg !2479, !tbaa !2366
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %225, i32 0, i32 6, !dbg !2480
  %230 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2480
  %231 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2480
  %232 = load i32, i32* %230, align 4, !dbg !2479, !tbaa !487
  %233 = add nsw i32 %232, %228, !dbg !2479
  store i32 %233, i32* %231, align 4, !dbg !2479, !tbaa !487
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2316
  %234 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 8, !dbg !2481
  %235 = load i8, i8* %234, align 4, !dbg !2481, !tbaa !2383, !range !609
  %236 = icmp eq i8 %235, 0, !dbg !2481
  br i1 %236, label %311, label %237, !dbg !2482

237:                                              ; preds = %217
  %238 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2483
  %239 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2483, !tbaa !2335
  store %"struct.Halide::Runtime::Internal::work"* %239, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2484, !tbaa !449
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2485
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 1, metadata !2283, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2316
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 10
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 4
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 3
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %246 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %248 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  br label %249, !dbg !2487

249:                                              ; preds = %237, %288
  %250 = phi i32 [ 1, %237 ], [ 0, %288 ]
  %251 = phi i32 [ 0, %237 ], [ %296, %288 ]
  call void @llvm.dbg.value(metadata i32 %251, metadata !2280, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %250, metadata !2283, metadata !DIExpression()), !dbg !2486
  %252 = load i32, i32* %240, align 4, !dbg !2488, !tbaa !2303
  %253 = sub nsw i32 %252, %251, !dbg !2490
  %254 = icmp sgt i32 %253, %250, !dbg !2491
  br i1 %254, label %255, label %285, !dbg !2492

255:                                              ; preds = %249
  %256 = load i32, i32* %241, align 4, !dbg !2493, !tbaa !2399
  %257 = load i32, i32* %242, align 4, !dbg !2495, !tbaa !2401
  br label %258, !dbg !2496

258:                                              ; preds = %255, %279
  %259 = phi i32 [ %280, %279 ], [ %252, %255 ]
  %260 = phi i32 [ %281, %279 ], [ %257, %255 ], !dbg !2495
  %261 = phi i32 [ 0, %279 ], [ %256, %255 ], !dbg !2493
  %262 = phi i32 [ %282, %279 ], [ %250, %255 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2283, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2389, metadata !DIExpression()) #7, !dbg !2497
  %263 = icmp slt i32 %261, %260, !dbg !2498
  br i1 %263, label %264, label %279, !dbg !2499

264:                                              ; preds = %258, %272
  %265 = phi i32 [ %274, %272 ], [ %261, %258 ]
  %266 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %243, align 4, !dbg !2500, !tbaa !2407
  %267 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 0, !dbg !2501
  %268 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %267, align 4, !dbg !2501, !tbaa !2409
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 1, !dbg !2502
  %270 = load i32, i32* %269, align 4, !dbg !2502, !tbaa !2412
  %271 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %268, i32 %270) #6, !dbg !2503
  br i1 %271, label %272, label %285, !dbg !2504

272:                                              ; preds = %264
  %273 = load i32, i32* %241, align 4, !dbg !2505, !tbaa !2399
  %274 = add nsw i32 %273, 1, !dbg !2505
  store i32 %274, i32* %241, align 4, !dbg !2505, !tbaa !2399
  %275 = load i32, i32* %242, align 4, !dbg !2495, !tbaa !2401
  %276 = icmp slt i32 %274, %275, !dbg !2498
  br i1 %276, label %264, label %277, !dbg !2499, !llvm.loop !2506

277:                                              ; preds = %272
  %278 = load i32, i32* %240, align 4, !dbg !2488, !tbaa !2303
  br label %279, !dbg !2508

279:                                              ; preds = %277, %258
  %280 = phi i32 [ %278, %277 ], [ %259, %258 ], !dbg !2488
  %281 = phi i32 [ %275, %277 ], [ %260, %258 ]
  store i32 0, i32* %241, align 4, !dbg !2508, !tbaa !2399
  %282 = add nuw nsw i32 %262, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %282, metadata !2283, metadata !DIExpression()), !dbg !2486
  %283 = sub nsw i32 %280, %251, !dbg !2490
  %284 = icmp sgt i32 %283, %282, !dbg !2491
  br i1 %284, label %258, label %288, !dbg !2492, !llvm.loop !2511

285:                                              ; preds = %264, %249
  %286 = phi i32 [ %250, %249 ], [ %262, %264 ]
  %287 = icmp eq i32 %286, 0, !dbg !2513
  br i1 %287, label %298, label %288, !dbg !2515

288:                                              ; preds = %279, %285
  %289 = phi i32 [ %286, %285 ], [ %282, %279 ]
  %290 = load i8*, i8** %244, align 4, !dbg !2516, !tbaa !2517
  %291 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %245, align 4, !dbg !2518, !tbaa !2519
  %292 = load i32, i32* %246, align 4, !dbg !2520, !tbaa !2521
  %293 = add nsw i32 %292, %251, !dbg !2522
  %294 = load i8*, i8** %247, align 4, !dbg !2523, !tbaa !2524
  %295 = tail call i32 @halide_do_loop_task(i8* %290, i32 (i8*, i32, i32, i8*, i8*)* %291, i32 %293, i32 %289, i8* %294, i8* nonnull %248) #8, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %295, metadata !2279, metadata !DIExpression()), !dbg !2316
  %296 = add nuw nsw i32 %289, %251, !dbg !2526
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %296, metadata !2280, metadata !DIExpression()), !dbg !2486
  %297 = icmp eq i32 %295, 0, !dbg !2527
  br i1 %297, label %249, label %298, !dbg !2487, !llvm.loop !2528

298:                                              ; preds = %285, %288
  %299 = phi i1 [ true, %285 ], [ false, %288 ]
  %300 = phi i32 [ 0, %285 ], [ %295, %288 ], !dbg !2316
  %301 = phi i32 [ %251, %285 ], [ %296, %288 ], !dbg !2486
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2530
  %302 = load i32, i32* %246, align 4, !dbg !2531, !tbaa !2521
  %303 = add nsw i32 %302, %301, !dbg !2531
  store i32 %303, i32* %246, align 4, !dbg !2531, !tbaa !2521
  %304 = load i32, i32* %240, align 4, !dbg !2532, !tbaa !2303
  %305 = sub nsw i32 %304, %301, !dbg !2532
  store i32 %305, i32* %240, align 4, !dbg !2532, !tbaa !2303
  br i1 %299, label %307, label %306, !dbg !2533

306:                                              ; preds = %298
  store i32 0, i32* %240, align 4, !dbg !2534, !tbaa !2303
  call void @llvm.dbg.value(metadata i32 %338, metadata !2279, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2316
  br label %340, !dbg !2537

307:                                              ; preds = %298
  %308 = icmp sgt i32 %305, 0, !dbg !2538
  br i1 %308, label %309, label %375, !dbg !2540

309:                                              ; preds = %307
  %310 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2541, !tbaa !2315
  store %"struct.Halide::Runtime::Internal::work"* %310, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2543, !tbaa !2335
  store %"struct.Halide::Runtime::Internal::work"* %220, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2544, !tbaa !2315
  br label %375, !dbg !2545

311:                                              ; preds = %217
  %312 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0, !dbg !2546
  %313 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %312, align 4, !dbg !2546, !tbaa.struct !2547
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %313, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2549
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1, !dbg !2546
  %315 = load i8*, i8** %314, align 4, !dbg !2546, !tbaa.struct !2550
  call void @llvm.dbg.value(metadata i8* %315, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2549
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5, !dbg !2546
  %317 = load i32, i32* %316, align 4, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %317, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2549
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 1, !dbg !2546
  %319 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %318, align 4, !dbg !2546, !tbaa.struct !2551
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %319, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2549
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7, !dbg !2546
  %321 = load i8*, i8** %320, align 4, !dbg !2546, !tbaa.struct !2552
  call void @llvm.dbg.value(metadata i8* %321, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2549
  %322 = add nsw i32 %317, 1, !dbg !2553
  store i32 %322, i32* %316, align 4, !dbg !2553, !tbaa !2521
  %323 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2554
  %324 = load i32, i32* %323, align 4, !dbg !2555, !tbaa !2303
  %325 = add nsw i32 %324, -1, !dbg !2555
  store i32 %325, i32* %323, align 4, !dbg !2555, !tbaa !2303
  %326 = icmp eq i32 %325, 0, !dbg !2556
  br i1 %326, label %327, label %330, !dbg !2558

327:                                              ; preds = %311
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2546
  %329 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %328, align 4, !dbg !2559, !tbaa !2335
  store %"struct.Halide::Runtime::Internal::work"* %329, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2561, !tbaa !449
  br label %330, !dbg !2562

330:                                              ; preds = %327, %311
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2563
  %331 = icmp eq i32 (i8*, i32, i8*)* %319, null, !dbg !2564
  br i1 %331, label %334, label %332, !dbg !2566

332:                                              ; preds = %330
  %333 = tail call i32 @halide_do_task(i8* %321, i32 (i8*, i32, i8*)* nonnull %319, i32 %317, i8* %315) #8, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %333, metadata !2279, metadata !DIExpression()), !dbg !2316
  br label %337, !dbg !2569

334:                                              ; preds = %330
  %335 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*, !dbg !2570
  %336 = tail call i32 @halide_do_loop_task(i8* %321, i32 (i8*, i32, i32, i8*, i8*)* %313, i32 %317, i32 1, i8* %315, i8* %335) #8, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %336, metadata !2279, metadata !DIExpression()), !dbg !2316
  br label %337

337:                                              ; preds = %332, %334
  %338 = phi i32 [ %333, %332 ], [ %336, %334 ], !dbg !2573
  call void @llvm.dbg.value(metadata i32 %338, metadata !2279, metadata !DIExpression()), !dbg !2316
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2574
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2316
  %339 = icmp eq i32 %338, 0, !dbg !2575
  br i1 %339, label %375, label %340, !dbg !2537

340:                                              ; preds = %306, %337
  %341 = phi i32 [ %300, %306 ], [ %338, %337 ]
  %342 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2576
  store i32 %341, i32* %342, align 4, !dbg !2577, !tbaa !2321
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2316
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 4, !dbg !2579
  %344 = load i32, i32* %343, align 4, !dbg !2579, !tbaa !2581
  %345 = icmp sgt i32 %344, 0, !dbg !2582
  br i1 %345, label %346, label %349, !dbg !2583

346:                                              ; preds = %340
  %347 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 3
  %348 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %347, align 4, !tbaa !2421
  br label %353, !dbg !2583

349:                                              ; preds = %371, %340
  %350 = phi i8 [ 0, %340 ], [ %372, %371 ], !dbg !2316
  %351 = and i8 %350, 1, !dbg !2584
  %352 = icmp ne i8 %351, 0, !dbg !2584
  br label %375, !dbg !2584

353:                                              ; preds = %346, %371
  %354 = phi i32 [ 0, %346 ], [ %373, %371 ]
  %355 = phi i8 [ 0, %346 ], [ %372, %371 ]
  call void @llvm.dbg.value(metadata i32 %354, metadata !2287, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 %355, metadata !2286, metadata !DIExpression()), !dbg !2316
  %356 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 9, !dbg !2585
  %357 = load i32, i32* %356, align 4, !dbg !2585, !tbaa !2321
  %358 = icmp eq i32 %357, 0, !dbg !2588
  br i1 %358, label %359, label %371, !dbg !2589

359:                                              ; preds = %353
  store i32 %341, i32* %356, align 4, !dbg !2590, !tbaa !2321
  %360 = load i32, i32* %221, align 4, !dbg !2592, !tbaa !2313
  %361 = icmp eq i32 %360, 0, !dbg !2593
  br i1 %361, label %362, label %366, !dbg !2594

362:                                              ; preds = %359
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 11, !dbg !2595
  %364 = load i8, i8* %363, align 4, !dbg !2595, !tbaa !2442, !range !609
  %365 = icmp ne i8 %364, 0, !dbg !2595
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ], !dbg !2596
  %368 = zext i1 %367 to i8, !dbg !2597
  %369 = and i8 %355, 1, !dbg !2598
  %370 = or i8 %369, %368, !dbg !2598
  call void @llvm.dbg.value(metadata i8 %370, metadata !2286, metadata !DIExpression()), !dbg !2316
  br label %371, !dbg !2599

371:                                              ; preds = %353, %366
  %372 = phi i8 [ %370, %366 ], [ %355, %353 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %372, metadata !2286, metadata !DIExpression()), !dbg !2316
  %373 = add nuw nsw i32 %354, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %373, metadata !2287, metadata !DIExpression()), !dbg !2578
  %374 = icmp slt i32 %373, %344, !dbg !2582
  br i1 %374, label %353, label %349, !dbg !2583, !llvm.loop !2601

375:                                              ; preds = %309, %307, %349, %337
  %376 = phi i1 [ %352, %349 ], [ false, %337 ], [ false, %307 ], [ false, %309 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2286, metadata !DIExpression()), !dbg !2316
  %377 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2603, !tbaa !2344
  %378 = icmp eq %"struct.Halide::Runtime::Internal::work"* %377, null, !dbg !2605
  %379 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2606
  %380 = load i32, i32* %379, align 4, !dbg !2606, !tbaa !2366
  %381 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %377, i32 0, i32 6, !dbg !2607
  %382 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2607
  %383 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2607
  %384 = load i32, i32* %382, align 4, !dbg !2606, !tbaa !487
  %385 = sub nsw i32 %384, %380, !dbg !2606
  store i32 %385, i32* %383, align 4, !dbg !2606, !tbaa !487
  %386 = load i32, i32* %221, align 4, !dbg !2608, !tbaa !2313
  %387 = add nsw i32 %386, -1, !dbg !2608
  store i32 %387, i32* %221, align 4, !dbg !2608, !tbaa !2313
  br i1 %376, label %404, label %388, !dbg !2609

388:                                              ; preds = %375
  %389 = icmp eq i32 %387, 0, !dbg !2611
  br i1 %389, label %392, label %390, !dbg !2612

390:                                              ; preds = %388, %396, %400, %404, %213, %193, %192, %45, %35
  %391 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %190, %192 ], [ %190, %193 ], [ %214, %213 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ 0, %388 ]
  br label %10, !dbg !2291, !llvm.loop !2613

392:                                              ; preds = %388
  %393 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2615
  %394 = load i32, i32* %393, align 4, !dbg !2615, !tbaa !2303
  %395 = icmp eq i32 %394, 0, !dbg !2616
  br i1 %395, label %400, label %396, !dbg !2617

396:                                              ; preds = %392
  %397 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2618
  %398 = load i32, i32* %397, align 4, !dbg !2618, !tbaa !2321
  %399 = icmp eq i32 %398, 0, !dbg !2619
  br i1 %399, label %390, label %400, !dbg !2620

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 11, !dbg !2621
  %402 = load i8, i8* %401, align 4, !dbg !2621, !tbaa !2442, !range !609
  %403 = icmp eq i8 %402, 0, !dbg !2621
  br i1 %403, label %390, label %404, !dbg !2622

404:                                              ; preds = %400, %375
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2623
  br label %390, !dbg !2625

405:                                              ; preds = %15, %18
  ret void, !dbg !2626
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2630, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %2, metadata !2631, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %3, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %4, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %5, metadata !2634, metadata !DIExpression()), !dbg !2635
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !2636, !tbaa !449
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2636
  ret i32 %8, !dbg !2637
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2638 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %2, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %3, metadata !2643, metadata !DIExpression()), !dbg !2644
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !2645, !tbaa !449
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2646
  ret i32 %6, !dbg !2647
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 !dbg !2648 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2650, metadata !DIExpression()), !dbg !2651
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2652
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2653
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2654
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2655
  ret void, !dbg !2656
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2662, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2663, metadata !DIExpression()), !dbg !2674
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2675, !tbaa !2677, !range !609
  %5 = icmp eq i8 %4, 0, !dbg !2675
  br i1 %5, label %6, label %25, !dbg !2678

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2679, metadata !DIExpression()) #7, !dbg !2685
  %8 = load i8, i8* %7, align 1, !dbg !2688, !tbaa !2689
  %9 = icmp eq i8 %8, 0, !dbg !2690
  br i1 %9, label %10, label %13, !dbg !2691

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %11, metadata !2679, metadata !DIExpression()) #7, !dbg !2685
  %12 = icmp ult i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2694
  br i1 %12, label %6, label %13, !dbg !2695, !llvm.loop !2696

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ %11, %10 ], !dbg !2685
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2698
  br i1 %15, label %17, label %16, !dbg !2701

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !2702
  tail call void @abort() #6, !dbg !2702
  br label %17, !dbg !2702

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2704, !tbaa !2706
  %19 = icmp eq i32 %18, 0, !dbg !2707
  br i1 %19, label %20, label %22, !dbg !2708

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !2709
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2711, !tbaa !2706
  br label %22, !dbg !2712

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2713
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #8, !dbg !2714
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2715, !tbaa !2706
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2716, !tbaa !2677
  br label %25, !dbg !2717

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2664, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 -1, metadata !2665, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2666, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2667, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2669, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 undef, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2667, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2666, metadata !DIExpression()), !dbg !2674
  %26 = icmp sgt i32 %0, 0, !dbg !2719
  br i1 %26, label %34, label %27, !dbg !2721

27:                                               ; preds = %61, %25
  %28 = phi i32 [ -1, %25 ], [ %62, %61 ], !dbg !2674
  %29 = phi i1 [ false, %25 ], [ %45, %61 ]
  %30 = phi i1 [ false, %25 ], [ %51, %61 ]
  %31 = phi i1 [ false, %25 ], [ %47, %61 ]
  %32 = phi i32 [ 0, %25 ], [ %44, %61 ], !dbg !2722
  %33 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2723
  br i1 %33, label %65, label %93, !dbg !2725

34:                                               ; preds = %25, %61
  %35 = phi i32 [ %44, %61 ], [ 0, %25 ]
  %36 = phi i32 [ %63, %61 ], [ 0, %25 ]
  %37 = phi i1 [ %47, %61 ], [ false, %25 ]
  %38 = phi i1 [ %51, %61 ], [ false, %25 ]
  %39 = phi i1 [ %45, %61 ], [ false, %25 ]
  %40 = phi i32 [ %62, %61 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !2664, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %36, metadata !2669, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %40, metadata !2665, metadata !DIExpression()), !dbg !2674
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 7, !dbg !2726
  %42 = load i32, i32* %41, align 4, !dbg !2726, !tbaa !2366
  %43 = icmp eq i32 %42, 0, !dbg !2729
  %44 = add i32 %42, %35, !dbg !2730
  %45 = or i1 %39, %43, !dbg !2730
  %46 = xor i1 %43, true, !dbg !2730
  %47 = or i1 %37, %46, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %44, metadata !2664, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2666, metadata !DIExpression()), !dbg !2674
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 4, !dbg !2731
  %49 = load i32, i32* %48, align 4, !dbg !2731, !tbaa !2401
  %50 = icmp ne i32 %49, 0, !dbg !2733
  %51 = or i1 %38, %50, !dbg !2734
  call void @llvm.dbg.value(metadata i8 undef, metadata !2667, metadata !DIExpression()), !dbg !2674
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 8, !dbg !2735
  %53 = load i8, i8* %52, align 4, !dbg !2735, !tbaa !2383, !range !609
  %54 = icmp eq i8 %53, 0, !dbg !2735
  br i1 %54, label %57, label %55, !dbg !2737

55:                                               ; preds = %34
  %56 = add nsw i32 %40, 1, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %56, metadata !2665, metadata !DIExpression()), !dbg !2674
  br label %61, !dbg !2740

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 6, !dbg !2741
  %59 = load i32, i32* %58, align 4, !dbg !2741, !tbaa !2303
  %60 = add nsw i32 %59, %40, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %60, metadata !2665, metadata !DIExpression()), !dbg !2674
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ], !dbg !2744
  call void @llvm.dbg.value(metadata i32 %62, metadata !2665, metadata !DIExpression()), !dbg !2674
  %63 = add nuw nsw i32 %36, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %44, metadata !2664, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %63, metadata !2669, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 undef, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2667, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 undef, metadata !2666, metadata !DIExpression()), !dbg !2674
  %64 = icmp slt i32 %63, %0, !dbg !2719
  br i1 %64, label %34, label %27, !dbg !2721, !llvm.loop !2746

65:                                               ; preds = %27
  %66 = or i1 %30, %31, !dbg !2748
  %67 = zext i1 %66 to i32, !dbg !2748
  %68 = add nsw i32 %32, %67, !dbg !2748
  call void @llvm.dbg.value(metadata i32 %68, metadata !2664, metadata !DIExpression()), !dbg !2674
  %69 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2751, !tbaa !2376
  %70 = icmp slt i32 %69, 256, !dbg !2752
  br i1 %70, label %71, label %89, !dbg !2753

71:                                               ; preds = %65, %81
  %72 = phi i32 [ %86, %81 ], [ %69, %65 ]
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2754, !tbaa !2706
  %74 = add nsw i32 %73, -1, !dbg !2755
  %75 = icmp slt i32 %72, %74, !dbg !2756
  br i1 %75, label %81, label %76, !dbg !2757

76:                                               ; preds = %71
  %77 = add nsw i32 %72, 1, !dbg !2758
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2759, !tbaa !2760
  %79 = sub i32 %77, %78, !dbg !2761
  %80 = icmp slt i32 %79, %68, !dbg !2762
  br i1 %80, label %81, label %89, !dbg !2763

81:                                               ; preds = %71, %76
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2764, !tbaa !2451
  %83 = add nsw i32 %82, 1, !dbg !2764
  store i32 %83, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2764, !tbaa !2451
  %84 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #8, !dbg !2766
  %85 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2767, !tbaa !2376
  %86 = add nsw i32 %85, 1, !dbg !2767
  store i32 %86, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2767, !tbaa !2376
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %85, !dbg !2768
  store %struct.halide_thread* %84, %struct.halide_thread** %87, align 4, !dbg !2769, !tbaa !449
  %88 = icmp slt i32 %85, 255, !dbg !2752
  br i1 %88, label %71, label %89, !dbg !2753, !llvm.loop !2770

89:                                               ; preds = %76, %81, %65
  br i1 %66, label %90, label %109, !dbg !2772

90:                                               ; preds = %89
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2774, !tbaa !2760
  %92 = add nsw i32 %91, 1, !dbg !2774
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2774, !tbaa !2760
  br label %109, !dbg !2776

93:                                               ; preds = %27
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !2777
  %95 = load i32, i32* %94, align 4, !dbg !2777, !tbaa !2366
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !2777
  %97 = load i32, i32* %96, align 4, !dbg !2777, !tbaa !2313
  %98 = mul nsw i32 %97, %95, !dbg !2777
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2777
  %100 = load i32, i32* %99, align 4, !dbg !2777, !tbaa !2781
  %101 = sub nsw i32 %98, %100, !dbg !2777
  %102 = icmp sgt i32 %32, %101, !dbg !2777
  br i1 %102, label %103, label %104, !dbg !2782

103:                                              ; preds = %93
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !2783
  tail call void @abort() #6, !dbg !2783
  br label %104, !dbg !2783

104:                                              ; preds = %103, %93
  %105 = or i1 %30, %31, !dbg !2785
  br i1 %105, label %106, label %109, !dbg !2785

106:                                              ; preds = %104
  %107 = load i32, i32* %99, align 4, !dbg !2787, !tbaa !2781
  %108 = add nsw i32 %107, 1, !dbg !2787
  store i32 %108, i32* %99, align 4, !dbg !2787, !tbaa !2781
  br label %109, !dbg !2789

109:                                              ; preds = %104, %89, %106, %90
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2790
  br i1 %26, label %110, label %113, !dbg !2791

110:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2790
  %111 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !2315
  br label %126, !dbg !2791

112:                                              ; preds = %126
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2792, !tbaa !2315
  br label %113, !dbg !2791

113:                                              ; preds = %112, %109
  %114 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2795, !tbaa !2440
  %115 = icmp ne i32 %114, 0, !dbg !2796
  %116 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2797
  %117 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2797
  %118 = icmp slt i32 %116, %117, !dbg !2797
  %119 = or i1 %115, %118, !dbg !2797
  call void @llvm.dbg.value(metadata i1 %119, metadata !2673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2674
  %120 = icmp sgt i32 %28, %116
  %121 = or i1 %120, %119, !dbg !2798
  %122 = select i1 %121, i32 %117, i32 %28, !dbg !2798
  store i32 %122, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2800, !tbaa !2453
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !2801
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2802, !tbaa !2453
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2804, !tbaa !2451
  %125 = icmp sgt i32 %123, %124, !dbg !2805
  br i1 %125, label %136, label %138, !dbg !2806

126:                                              ; preds = %110, %126
  %127 = phi %"struct.Halide::Runtime::Internal::work"* [ %111, %110 ], [ %130, %126 ], !dbg !2807
  %128 = phi i32 [ %0, %110 ], [ %129, %126 ]
  %129 = add nsw i32 %128, -1, !dbg !2790
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, !dbg !2808
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 2, !dbg !2809
  store %"struct.Halide::Runtime::Internal::work"* %127, %"struct.Halide::Runtime::Internal::work"** %131, align 4, !dbg !2810, !tbaa !2335
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 3, !dbg !2811
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %132, align 4, !dbg !2812, !tbaa !2421
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 4, !dbg !2813
  store i32 %0, i32* %133, align 4, !dbg !2814, !tbaa !2581
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 6, !dbg !2815
  store i32 0, i32* %134, align 4, !dbg !2816, !tbaa !2781
  call void @llvm.dbg.value(metadata i32 %129, metadata !2671, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2790
  %135 = icmp sgt i32 %128, 1, !dbg !2817
  br i1 %135, label %126, label %112, !dbg !2791, !llvm.loop !2818

136:                                              ; preds = %113
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #8, !dbg !2820
  br i1 %29, label %137, label %138, !dbg !2822

137:                                              ; preds = %136
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2823
  br label %138, !dbg !2826

138:                                              ; preds = %136, %137, %113
  %139 = or i1 %30, %31, !dbg !2827
  br i1 %139, label %140, label %145, !dbg !2827

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2829
  %142 = select i1 %33, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %141, !dbg !2829
  %143 = load i32, i32* %142, align 4, !dbg !2831, !tbaa !487
  %144 = add nsw i32 %143, -1, !dbg !2831
  store i32 %144, i32* %142, align 4, !dbg !2831, !tbaa !487
  br label %145, !dbg !2833

145:                                              ; preds = %140, %138
  ret void, !dbg !2833
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2834 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %2, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()), !dbg !2840
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2841
  ret i32 %5, !dbg !2842
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2843 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2845, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2846, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %2, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %3, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %4, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %5, metadata !2850, metadata !DIExpression()), !dbg !2851
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2852
  ret i32 %7, !dbg !2853
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2854 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2856, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2857, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %2, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %3, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %4, metadata !2860, metadata !DIExpression()), !dbg !2862
  %7 = icmp slt i32 %3, 1, !dbg !2863
  br i1 %7, label %29, label %8, !dbg !2865

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2866
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2861, metadata !DIExpression()), !dbg !2867
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !2868
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !2869, !tbaa !2519
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !2870
  store i32 %2, i32* %11, align 4, !dbg !2871, !tbaa !2521
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !2872
  store i32 %3, i32* %12, align 4, !dbg !2873, !tbaa !2303
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !2874
  store i8 0, i8* %13, align 4, !dbg !2875, !tbaa !2383
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !2876
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !2877, !tbaa !2407
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !2878
  store i32 0, i32* %15, align 4, !dbg !2879, !tbaa !2401
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !2880
  store i8* %4, i8** %16, align 4, !dbg !2881, !tbaa !2524
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !2882
  store i32 0, i32* %17, align 4, !dbg !2883, !tbaa !2366
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !2884
  store i8* null, i8** %18, align 4, !dbg !2885, !tbaa !2886
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !2887
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !2888, !tbaa !2889
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !2890
  store i8* %0, i8** %20, align 4, !dbg !2891, !tbaa !2517
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !2892
  store i32 0, i32* %21, align 4, !dbg !2893, !tbaa !2321
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !2894
  store i32 0, i32* %22, align 4, !dbg !2895, !tbaa !2313
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !2896
  store i32 0, i32* %23, align 4, !dbg !2897, !tbaa !2399
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !2898
  store i8 0, i8* %24, align 4, !dbg !2899, !tbaa !2442
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !2900
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !2901, !tbaa !2421
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !2902
  store i32 0, i32* %26, align 4, !dbg !2903, !tbaa !2581
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !2904
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !2905, !tbaa !2344
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2906
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2907
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2908
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2909
  %28 = load i32, i32* %21, align 4, !dbg !2910, !tbaa !2321
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2911
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2862
  ret i32 %30, !dbg !2911
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2912 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2914, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %1, metadata !2915, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2916, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8* %3, metadata !2917, metadata !DIExpression()), !dbg !2924
  %5 = mul i32 %1, 80, !dbg !2925
  %6 = alloca i8, i32 %5, align 8, !dbg !2926
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !2918, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 0, metadata !2919, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i32 %1, metadata !2915, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2916, metadata !DIExpression()), !dbg !2924
  %8 = icmp sgt i32 %1, 0, !dbg !2929
  br i1 %8, label %12, label %9, !dbg !2931

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %36, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !2932
  br i1 %11, label %54, label %39, !dbg !2934

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi i32 [ %36, %34 ], [ %1, %4 ]
  %15 = phi %struct.halide_parallel_task_t* [ %35, %34 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2919, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i32 %14, metadata !2915, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %15, metadata !2916, metadata !DIExpression()), !dbg !2924
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 0, i32 6, !dbg !2935
  %17 = load i32, i32* %16, align 4, !dbg !2935, !tbaa !2938
  %18 = icmp slt i32 %17, 1, !dbg !2939
  br i1 %18, label %19, label %21, !dbg !2940

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %20, metadata !2915, metadata !DIExpression()), !dbg !2924
  br label %34, !dbg !2943

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 1, !dbg !2944
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !2916, metadata !DIExpression()), !dbg !2924
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !2945
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !2946
  %25 = bitcast %struct.halide_parallel_task_t* %15 to i8*, !dbg !2946
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !2946, !tbaa.struct !2947
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !2948
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !2949, !tbaa !2889
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !2950
  store i8* %0, i8** %27, align 4, !dbg !2951, !tbaa !2517
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !2952
  store i32 0, i32* %28, align 4, !dbg !2953, !tbaa !2321
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !2954
  store i32 0, i32* %29, align 8, !dbg !2955, !tbaa !2313
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !2956
  store i32 0, i32* %30, align 8, !dbg !2957, !tbaa !2399
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !2958
  store i8 0, i8* %31, align 4, !dbg !2959, !tbaa !2442
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !2960
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !2961
  store i8* %3, i8** %33, align 4, !dbg !2961, !tbaa !2344
  br label %34, !dbg !2962

34:                                               ; preds = %21, %19
  %35 = phi %struct.halide_parallel_task_t* [ %15, %19 ], [ %22, %21 ]
  %36 = phi i32 [ %20, %19 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !2915, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !2916, metadata !DIExpression()), !dbg !2924
  %37 = add nuw nsw i32 %13, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %37, metadata !2919, metadata !DIExpression()), !dbg !2928
  %38 = icmp slt i32 %37, %36, !dbg !2929
  br i1 %38, label %12, label %9, !dbg !2931, !llvm.loop !2964

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2966
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2967
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2921, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression()), !dbg !2969
  %41 = icmp sgt i32 %10, 0, !dbg !2970
  br i1 %41, label %44, label %42, !dbg !2972

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !2924
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2973
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !2922, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %46, metadata !2921, metadata !DIExpression()), !dbg !2924
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !2974
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #8, !dbg !2976
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !2977
  %49 = load i32, i32* %48, align 4, !dbg !2977, !tbaa !2321
  %50 = icmp eq i32 %49, 0, !dbg !2979
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %51, metadata !2921, metadata !DIExpression()), !dbg !2924
  %52 = add nuw nsw i32 %45, 1, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %52, metadata !2922, metadata !DIExpression()), !dbg !2969
  %53 = icmp slt i32 %52, %10, !dbg !2970
  br i1 %53, label %44, label %42, !dbg !2972, !llvm.loop !2982

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !2924
  ret i32 %55, !dbg !2984
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2985 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2989, metadata !DIExpression()), !dbg !2990
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2991
  call void @llvm.dbg.value(metadata i32* %3, metadata !2992, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32* undef, metadata !2998, metadata !DIExpression()), !dbg !3001
  store i32 %1, i32* %3, align 4, !dbg !3003, !tbaa !487
  fence seq_cst, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()), !dbg !2990
  ret i32 %1, !dbg !3005
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3006 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3008, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %1, metadata !3009, metadata !DIExpression()), !dbg !3013
  %3 = icmp eq i32 %1, 0, !dbg !3014
  br i1 %3, label %15, label %4, !dbg !3016

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3010, metadata !DIExpression()), !dbg !3013
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3017
  call void @llvm.dbg.value(metadata i32* %5, metadata !3018, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32* undef, metadata !3021, metadata !DIExpression()), !dbg !3022
  fence seq_cst, !dbg !3024
  %6 = load i32, i32* %5, align 4, !dbg !3025, !tbaa !487
  br label %7, !dbg !3026

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !3013
  call void @llvm.dbg.value(metadata i32 %8, metadata !3011, metadata !DIExpression()), !dbg !3013
  %9 = sub nsw i32 %8, %1, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %9, metadata !3012, metadata !DIExpression()), !dbg !3013
  %10 = icmp sgt i32 %9, -1, !dbg !3029
  br i1 %10, label %11, label %15, !dbg !3030

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %5, metadata !3031, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32* undef, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32* undef, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32* %5, metadata !3040, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32* undef, metadata !3043, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32* undef, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %8, metadata !3045, metadata !DIExpression()), !dbg !3047
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !3049
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %13, metadata !3046, metadata !DIExpression()), !dbg !3047
  %14 = icmp eq i32 %8, %13, !dbg !3050
  br i1 %14, label %15, label %7, !dbg !3051, !llvm.loop !3052

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !3013
  ret i1 %16, !dbg !3054
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3055 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3057, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %1, metadata !3058, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3059, metadata !DIExpression()), !dbg !3061
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3062
  call void @llvm.dbg.value(metadata i32* %3, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %4, metadata !3060, metadata !DIExpression()), !dbg !3061
  %5 = icmp eq i32 %4, 0, !dbg !3072
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3074
  br i1 %7, label %8, label %9, !dbg !3074

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3075
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !3077
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !3078
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3079
  br label %9, !dbg !3080

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3081
  ret i32 %10, !dbg !3082
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !3083 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !3085
  ret void, !dbg !3086
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !3087 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !3093, !tbaa !2677, !range !609
  %2 = icmp eq i8 %1, 0, !dbg !3093
  br i1 %2, label %15, label %3, !dbg !3094

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3095
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !3096, !tbaa !2309
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !3097
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !3098
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #8, !dbg !3099
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3100
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3101
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3102, !tbaa !2376
  %5 = icmp sgt i32 %4, 0, !dbg !3104
  br i1 %5, label %8, label %6, !dbg !3105

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3106, metadata !DIExpression()) #7, !dbg !3112
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), metadata !3109, metadata !DIExpression()) #7, !dbg !3112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3110, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #7, !dbg !3112
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), i32 0, i32 1072) #6, !dbg !3114
  br label %15, !dbg !3115

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3089, metadata !DIExpression()), !dbg !3101
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %9, !dbg !3116
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !3116, !tbaa !449
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !3118
  %12 = add nuw nsw i32 %9, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %12, metadata !3089, metadata !DIExpression()), !dbg !3101
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3102, !tbaa !2376
  %14 = icmp slt i32 %12, %13, !dbg !3104
  br i1 %14, label %8, label %6, !dbg !3105, !llvm.loop !3120

15:                                               ; preds = %6, %0
  ret void, !dbg !3122
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !3123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  %2 = icmp slt i32 %0, 0, !dbg !3128
  br i1 %2, label %3, label %4, !dbg !3130

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !3131
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3133
  br label %8, !dbg !3134

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3133
  %5 = icmp eq i32 %0, 0, !dbg !3135
  br i1 %5, label %6, label %8, !dbg !3134

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !3137
  call void @llvm.dbg.value(metadata i32 %7, metadata !3125, metadata !DIExpression()), !dbg !3127
  br label %8, !dbg !3139

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3125, metadata !DIExpression()), !dbg !3127
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3140, !tbaa !2706
  call void @llvm.dbg.value(metadata i32 %10, metadata !3126, metadata !DIExpression()), !dbg !3127
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #8, !dbg !3141
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3142, !tbaa !2706
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3143
  ret i32 %10, !dbg !3144
}

declare !dbg !3145 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3146 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3150, metadata !DIExpression()), !dbg !3152
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3153, !tbaa !449
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3151, metadata !DIExpression()), !dbg !3152
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3154, !tbaa !449
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3155
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !3156 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3160, metadata !DIExpression()), !dbg !3162
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3163, !tbaa !449
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3164, !tbaa !449
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3165
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3166 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3170, metadata !DIExpression()), !dbg !3172
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3173, !tbaa !449
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3174, !tbaa !449
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3175
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !3176 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3180, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3182, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3184, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3186, metadata !DIExpression()), !dbg !3187
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3188, !tbaa !449
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3189, !tbaa !449
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3190, !tbaa !449
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3191, !tbaa !449
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3192, !tbaa !449
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3193, !tbaa !449
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3194, !tbaa !449
  ret void, !dbg !3195
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !3196 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3198, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3199, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %2, metadata !3200, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %3, metadata !3201, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8* %4, metadata !3202, metadata !DIExpression()), !dbg !3203
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3204, !tbaa !449
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !3205
  ret i32 %7, !dbg !3206
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !3207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %1, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %3, metadata !3212, metadata !DIExpression()), !dbg !3213
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3214, !tbaa !449
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !3214
  ret i32 %6, !dbg !3215
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3216 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3221, !tbaa !449
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3221
  ret i32 %4, !dbg !3222
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3223 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3225, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()), !dbg !3227
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3228, !tbaa !449
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3228
  ret i32 %4, !dbg !3229
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3230 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3232, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %1, metadata !3233, metadata !DIExpression()), !dbg !3234
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3235, !tbaa !449
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3235
  ret i1 %4, !dbg !3236
}

declare !dbg !3237 dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t*, i8*) local_unnamed_addr #3

declare !dbg !3241 dso_local i32 @pthread_cond_init(%struct.pthread_cond_t*, i8*) local_unnamed_addr #3

declare !dbg !3245 dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3248 dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t*, %struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3251 dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3252 dso_local i32 @pthread_cond_destroy(%struct.pthread_cond_t*) local_unnamed_addr #3

declare !dbg !3255 dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3256 dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t*) local_unnamed_addr #3

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
!llvm.module.flags = !{!387, !388, !389}
!llvm.ident = !{!390}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13table_storageE", scope: !2, file: !6, line: 478, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Synchronization", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 98304, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 12288)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "_ZN6Halide7Runtime8Internal10work_queueE", scope: !3, file: !13, line: 166, type: !14, isLocal: false, isDefinition: true)
!13 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !3, file: !13, line: 94, size: 8640, flags: DIFlagTypePassByValue, elements: !15, identifier: "_ZTSN6Halide7Runtime8Internal12work_queue_tE")
!15 = !{!16, !28, !30, !31, !89, !90, !91, !92, !96, !97, !98, !99, !100, !106, !107, !108, !109, !114, !117}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !14, file: !13, line: 96, baseType: !17, size: 32)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !18, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS12halide_mutex")
!18 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !17, file: !18, line: 121, baseType: !21, size: 32)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !26)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 68, baseType: !24)
!23 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 1)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !14, file: !13, line: 99, baseType: !29, size: 32, offset: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !14, file: !13, line: 103, baseType: !29, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !14, file: !13, line: 106, baseType: !32, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !3, file: !13, line: 26, size: 640, flags: DIFlagTypePassByValue, elements: !34, identifier: "_ZTSN6Halide7Runtime8Internal4workE")
!34 = !{!35, !65, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !84}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !33, file: !13, line: 27, baseType: !36, size: 288)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !18, line: 201, size: 288, flags: DIFlagTypePassByValue, elements: !37, identifier: "_ZTS22halide_parallel_task_t")
!37 = !{!38, !47, !48, !51, !59, !60, !61, !62, !63}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !36, file: !18, line: 204, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_loop_task_t", file: !18, line: 192, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{!29, !43, !29, !29, !44, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 16, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !36, file: !18, line: 207, baseType: !44, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !18, line: 210, baseType: !49, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "semaphores", scope: !36, file: !18, line: 214, baseType: !52, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !18, line: 177, size: 64, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTS26halide_semaphore_acquire_t")
!54 = !{!55, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !53, file: !18, line: 178, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !18, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS18halide_semaphore_t")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !53, file: !18, line: 179, baseType: !29, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "num_semaphores", scope: !36, file: !18, line: 215, baseType: !29, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !36, file: !18, line: 219, baseType: !29, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !36, file: !18, line: 219, baseType: !29, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "min_threads", scope: !36, file: !18, line: 238, baseType: !29, size: 32, offset: 224)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !36, file: !18, line: 243, baseType: !64, size: 8, offset: 256)
!64 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "task_fn", scope: !33, file: !13, line: 31, baseType: !66, size: 32, offset: 288)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_task_t", file: !18, line: 158, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DISubroutineType(types: !69)
!69 = !{!29, !43, !29, !44}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_job", scope: !33, file: !13, line: 33, baseType: !32, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !33, file: !13, line: 34, baseType: !32, size: 32, offset: 352)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_count", scope: !33, file: !13, line: 35, baseType: !29, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "parent_job", scope: !33, file: !13, line: 36, baseType: !32, size: 32, offset: 416)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !33, file: !13, line: 37, baseType: !29, size: 32, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !33, file: !13, line: 39, baseType: !43, size: 32, offset: 480)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "active_workers", scope: !33, file: !13, line: 40, baseType: !29, size: 32, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "exit_status", scope: !33, file: !13, line: 41, baseType: !29, size: 32, offset: 544)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_semaphore", scope: !33, file: !13, line: 42, baseType: !29, size: 32, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "owner_is_sleeping", scope: !33, file: !13, line: 44, baseType: !64, size: 8, offset: 608)
!80 = !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!64, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!84 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!64, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !14, file: !13, line: 109, baseType: !29, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 224)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !18, line: 125, size: 32, flags: DIFlagTypePassByValue, elements: !94, identifier: "_ZTS11halide_cond")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !93, file: !18, line: 126, baseType: !21, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 288)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 352)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !14, file: !13, line: 129, baseType: !101, size: 8192, offset: 384)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 8192, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !18, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 8576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 8584)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !14, file: !13, line: 139, baseType: !29, size: 32, offset: 8608)
!109 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t7runningEv", scope: !14, file: !13, line: 141, type: !110, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!64, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!114 = !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !112}
!117 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "_ZN6Halide7Runtime8Internal14custom_do_taskE", scope: !3, file: !13, line: 567, type: !123, isLocal: false, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !18, line: 259, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DISubroutineType(types: !126)
!126 = !{!29, !43, !66, !29, !44}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "_ZN6Halide7Runtime8Internal19custom_do_loop_taskE", scope: !3, file: !13, line: 568, type: !129, isLocal: false, isDefinition: true)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !18, line: 268, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DISubroutineType(types: !132)
!132 = !{!29, !43, !39, !29, !29, !44, !43}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "_ZN6Halide7Runtime8Internal17custom_do_par_forE", scope: !3, file: !13, line: 569, type: !135, isLocal: false, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !18, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DISubroutineType(types: !138)
!138 = !{!29, !43, !66, !29, !29, !44}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE", scope: !3, file: !13, line: 570, type: !141, isLocal: false, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !18, line: 281, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DISubroutineType(types: !144)
!144 = !{!29, !43, !29, !145, !43}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "_ZN6Halide7Runtime8Internal21custom_semaphore_initE", scope: !3, file: !13, line: 571, type: !148, isLocal: false, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !18, line: 184, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DISubroutineType(types: !151)
!151 = !{!29, !56, !29}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE", scope: !3, file: !13, line: 572, type: !154, isLocal: false, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !18, line: 186, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = !DISubroutineType(types: !157)
!157 = !{!64, !56, !29}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE", scope: !3, file: !13, line: 573, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !18, line: 185, baseType: !149)
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !375, imports: !383, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!163 = !{}
!164 = !{!165, !102, !22, !177, !231, !266, !267, !307, !332, !342, !313, !352, !365, !369, !32, !370, !302, !49, !374}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !3, file: !167, line: 45, size: 96, flags: DIFlagTypePassByValue, elements: !168, identifier: "_ZTSN6Halide7Runtime8Internal14spawned_threadE")
!167 = !DIFile(filename: "src/runtime/posix_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!168 = !{!169, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !166, file: !167, line: 46, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !166, file: !167, line: 47, baseType: !43, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !167, line: 48, baseType: !175, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !167, line: 20, baseType: !176)
!176 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !2, file: !6, line: 254, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !179, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE")
!179 = !{!180, !223, !224, !225, !226, !230}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !178, file: !6, line: 255, baseType: !181, size: 1088)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !2, file: !167, line: 93, size: 1088, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !182, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE")
!182 = !{!183, !192, !196, !197, !203, !207, !211, !214, !217, !218, !219, !220, !221, !222}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !181, file: !167, line: 94, baseType: !184, size: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t", file: !167, line: 12, size: 512, flags: DIFlagTypePassByValue, elements: !185, identifier: "_ZTS15pthread_mutex_t")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !184, file: !167, line: 13, baseType: !187, size: 512)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 512, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 10, baseType: !189)
!189 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !181, file: !167, line: 95, baseType: !193, size: 512, offset: 512)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t", file: !167, line: 16, size: 512, flags: DIFlagTypePassByValue, elements: !194, identifier: "_ZTS14pthread_cond_t")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !193, file: !167, line: 17, baseType: !187, size: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !181, file: !167, line: 96, baseType: !64, size: 8, offset: 1024)
!197 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 98, type: !198, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !201}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!203 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSERKS3_", scope: !181, file: !167, line: 99, type: !204, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !200, !201}
!206 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 32)
!207 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 100, type: !208, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !200, !210}
!210 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !181, size: 32)
!211 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSEOS3_", scope: !181, file: !167, line: 101, type: !212, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!212 = !DISubroutineType(types: !213)
!213 = !{!206, !200, !210}
!214 = !DISubprogram(name: "thread_parker", scope: !181, file: !167, line: 103, type: !215, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !200}
!217 = !DISubprogram(name: "~thread_parker", scope: !181, file: !167, line: 108, type: !215, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !215, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !215, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !215, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !215, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !215, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !6, line: 273, baseType: !177, size: 32, offset: 1088)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !6, line: 274, baseType: !177, size: 32, offset: 1120)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !178, file: !6, line: 275, baseType: !177, size: 32, offset: 1152)
!226 = !DISubprogram(name: "word_lock_queue_data", scope: !178, file: !6, line: 277, type: !227, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = !DISubprogram(name: "~word_lock_queue_data", scope: !178, file: !6, line: 280, type: !227, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !2, file: !6, line: 475, size: 98304, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !233, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10hash_tableE")
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !232, file: !6, line: 476, baseType: !235, size: 98304)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 98304, elements: !264)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !2, file: !6, line: 463, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !237, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE")
!237 = !{!238, !250, !263}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !6, line: 464, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !2, file: !6, line: 283, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !240, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE")
!240 = !{!241, !242, !246, !247, !248, !249}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !239, file: !6, line: 284, baseType: !22, size: 32)
!242 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !239, file: !6, line: 286, type: !243, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!246 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !239, file: !6, line: 287, type: !243, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubprogram(name: "word_lock", scope: !239, file: !6, line: 290, type: !243, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !239, file: !6, line: 291, type: !243, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !239, file: !6, line: 304, type: !243, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !236, file: !6, line: 466, baseType: !251, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !2, file: !6, line: 448, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !253, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE")
!253 = !{!254, !255, !256, !257, !258, !262}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !252, file: !6, line: 449, baseType: !181, size: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !252, file: !6, line: 451, baseType: !22, size: 32, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !6, line: 452, baseType: !251, size: 32, offset: 1120)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !252, file: !6, line: 453, baseType: !22, size: 32, offset: 1152)
!258 = !DISubprogram(name: "queue_data", scope: !252, file: !6, line: 455, type: !259, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!262 = !DISubprogram(name: "~queue_data", scope: !252, file: !6, line: 457, type: !259, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !236, file: !6, line: 467, baseType: !251, size: 32, offset: 64)
!264 = !{!265}
!265 = !DISubrange(count: 1024)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !2, file: !6, line: 829, size: 160, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !269, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE")
!269 = !{!270, !301, !303}
!270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !268, baseType: !271, extraData: i32 0)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !2, file: !6, line: 592, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !272, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE")
!272 = !{!273, !286, !287, !291, !297}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !271, file: !6, line: 593, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 32)
!275 = !DISubroutineType(types: !276)
!276 = !{!64, !43, !277}
!277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !278, size: 32)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !2, file: !6, line: 576, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !279, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE")
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !278, file: !6, line: 577, baseType: !64, size: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !278, file: !6, line: 578, baseType: !22, size: 32, offset: 32)
!282 = !DISubprogram(name: "validate_action", scope: !278, file: !6, line: 580, type: !283, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !271, file: !6, line: 594, baseType: !170, size: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !271, file: !6, line: 595, baseType: !288, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DISubroutineType(types: !290)
!290 = !{!22, !43, !29, !64}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !271, file: !6, line: 596, baseType: !292, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 32)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !43, !295, !64, !64}
!295 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!297 = !DISubprogram(name: "parking_control", scope: !271, file: !6, line: 598, type: !298, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !268, file: !6, line: 830, baseType: !302, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!303 = !DISubprogram(name: "mutex_parking_control", scope: !268, file: !6, line: 832, type: !304, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306, !302}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !2, file: !6, line: 958, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !309, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE")
!309 = !{!310, !311, !312, !328}
!310 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !308, baseType: !271, extraData: i32 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !308, file: !6, line: 959, baseType: !302, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !308, file: !6, line: 960, baseType: !313, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !2, file: !6, line: 859, size: 32, flags: DIFlagTypePassByValue, elements: !315, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10fast_mutexE")
!315 = !{!316, !317, !321, !322, !323, !324, !327}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !6, line: 860, baseType: !22, size: 32)
!317 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !314, file: !6, line: 862, type: !318, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!321 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !314, file: !6, line: 906, type: !318, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !314, file: !6, line: 920, type: !318, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !314, file: !6, line: 929, type: !318, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !314, file: !6, line: 938, type: !325, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!64, !320}
!327 = !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !314, file: !6, line: 953, type: !318, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubprogram(name: "signal_parking_control", scope: !308, file: !6, line: 962, type: !329, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331, !302, !313}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !2, file: !6, line: 985, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !334, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE")
!334 = !{!335, !336, !337, !338}
!335 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !333, baseType: !271, extraData: i32 0)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !333, file: !6, line: 986, baseType: !302, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !333, file: !6, line: 987, baseType: !313, size: 32, offset: 160)
!338 = !DISubprogram(name: "broadcast_parking_control", scope: !333, file: !6, line: 989, type: !339, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341, !302, !313}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !2, file: !6, line: 1026, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !344, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE")
!344 = !{!345, !346, !347, !348}
!345 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !343, baseType: !271, extraData: i32 0)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !343, file: !6, line: 1027, baseType: !302, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !343, file: !6, line: 1028, baseType: !313, size: 32, offset: 160)
!348 = !DISubprogram(name: "wait_parking_control", scope: !343, file: !6, line: 1030, type: !349, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351, !302, !313}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !2, file: !6, line: 1072, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !354, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9fast_condE")
!354 = !{!355, !356, !360, !361, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !6, line: 1073, baseType: !22, size: 32)
!356 = !DISubprogram(name: "fast_cond", scope: !353, file: !6, line: 1076, type: !357, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!360 = !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !353, file: !6, line: 1078, type: !357, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !353, file: !6, line: 1092, type: !357, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !353, file: !6, line: 1105, type: !363, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !359, !313}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !6, line: 1164, size: 32, flags: DIFlagTypePassByValue, elements: !367, identifier: "_ZTS18halide_mutex_array")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !366, file: !6, line: 1165, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !13, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !372, identifier: "_ZTS23halide_semaphore_impl_t")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !13, line: 712, baseType: !29, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!375 = !{!376, !379, !0, !381, !11, !121, !127, !133, !139, !146, !152, !158}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!377 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !378, isLocal: true, isDefinition: true)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !378, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!382 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !378, isLocal: true, isDefinition: true)
!383 = !{!384, !385, !386}
!384 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!385 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !167, line: 62)
!386 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!387 = !{i32 7, !"Dwarf Version", i32 4}
!388 = !{i32 2, !"Debug Info Version", i32 3}
!389 = !{i32 1, !"wchar_size", i32 4}
!390 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!391 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv", scope: !3, file: !167, line: 50, type: !392, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!43, !43}
!394 = !{!395, !396}
!395 = !DILocalVariable(name: "arg", arg: 1, scope: !391, file: !167, line: 50, type: !43)
!396 = !DILocalVariable(name: "t", scope: !391, file: !167, line: 51, type: !165)
!397 = !DILocation(line: 0, scope: !391)
!398 = !DILocation(line: 52, column: 8, scope: !391)
!399 = !{!400, !401, i64 0}
!400 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !401, i64 0, !401, i64 4, !404, i64 8}
!401 = !{!"any pointer", !402, i64 0}
!402 = !{!"omnipotent char", !403, i64 0}
!403 = !{!"Simple C++ TBAA"}
!404 = !{!"long", !402, i64 0}
!405 = !DILocation(line: 52, column: 13, scope: !391)
!406 = !{!400, !401, i64 4}
!407 = !DILocation(line: 52, column: 5, scope: !391)
!408 = !DILocation(line: 53, column: 5, scope: !391)
!409 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 64, type: !410, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!102, !170, !43}
!412 = !{!413, !414, !415}
!413 = !DILocalVariable(name: "f", arg: 1, scope: !409, file: !167, line: 64, type: !170)
!414 = !DILocalVariable(name: "closure", arg: 2, scope: !409, file: !167, line: 64, type: !43)
!415 = !DILocalVariable(name: "t", scope: !409, file: !167, line: 65, type: !165)
!416 = !DILocation(line: 0, scope: !409)
!417 = !DILocation(line: 65, column: 43, scope: !409)
!418 = !DILocation(line: 66, column: 8, scope: !409)
!419 = !DILocation(line: 66, column: 10, scope: !409)
!420 = !DILocation(line: 67, column: 8, scope: !409)
!421 = !DILocation(line: 67, column: 16, scope: !409)
!422 = !DILocation(line: 68, column: 8, scope: !409)
!423 = !DILocation(line: 68, column: 15, scope: !409)
!424 = !{!400, !404, i64 8}
!425 = !DILocation(line: 69, column: 5, scope: !409)
!426 = !DILocation(line: 70, column: 12, scope: !409)
!427 = !DILocation(line: 70, column: 5, scope: !409)
!428 = !DISubprogram(name: "malloc", scope: !23, file: !23, line: 87, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!429 = !DISubroutineType(types: !430)
!430 = !{!43, !25}
!431 = !DISubprogram(name: "pthread_create", scope: !167, file: !167, line: 21, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!432 = !DISubroutineType(types: !433)
!433 = !{!29, !434, !435, !437, !43}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!438 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !439, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !102}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !438, file: !167, line: 73, type: !102)
!443 = !DILocalVariable(name: "t", scope: !438, file: !167, line: 74, type: !165)
!444 = !DILocalVariable(name: "ret", scope: !438, file: !167, line: 75, type: !43)
!445 = !DILocation(line: 0, scope: !438)
!446 = !DILocation(line: 74, column: 25, scope: !438)
!447 = !DILocation(line: 75, column: 5, scope: !438)
!448 = !DILocation(line: 75, column: 11, scope: !438)
!449 = !{!401, !401, i64 0}
!450 = !DILocation(line: 76, column: 21, scope: !438)
!451 = !DILocation(line: 76, column: 5, scope: !438)
!452 = !DILocation(line: 77, column: 10, scope: !438)
!453 = !DILocation(line: 77, column: 5, scope: !438)
!454 = !DILocation(line: 78, column: 1, scope: !438)
!455 = !DISubprogram(name: "pthread_join", scope: !167, file: !167, line: 23, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!456 = !DISubroutineType(types: !457)
!457 = !{!29, !176, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!459 = !DISubprogram(name: "free", scope: !23, file: !23, line: 86, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!460 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !239, file: !6, line: 321, type: !243, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !242, retainedNodes: !461)
!461 = !{!462, !464, !476, !477, !481, !482, !483}
!462 = !DILocalVariable(name: "this", arg: 1, scope: !460, type: !463, flags: DIFlagArtificial | DIFlagObjectPointer)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!464 = !DILocalVariable(name: "spinner", scope: !460, file: !6, line: 322, type: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !466, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!466 = !{!467, !468, !472, !475}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !465, file: !6, line: 231, baseType: !29, size: 32)
!468 = !DISubprogram(name: "spin_control", scope: !465, file: !6, line: 235, type: !469, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!472 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !465, file: !6, line: 237, type: !473, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{!64, !471}
!475 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !465, file: !6, line: 244, type: !469, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DILocalVariable(name: "expected", scope: !460, file: !6, line: 323, type: !22)
!477 = !DILocalVariable(name: "desired", scope: !478, file: !6, line: 328, type: !22)
!478 = distinct !DILexicalBlock(scope: !479, file: !6, line: 327, column: 37)
!479 = distinct !DILexicalBlock(scope: !480, file: !6, line: 327, column: 13)
!480 = distinct !DILexicalBlock(scope: !460, file: !6, line: 326, column: 18)
!481 = !DILocalVariable(name: "node", scope: !480, file: !6, line: 342, type: !178)
!482 = !DILocalVariable(name: "head", scope: !480, file: !6, line: 347, type: !177)
!483 = !DILocalVariable(name: "desired", scope: !480, file: !6, line: 359, type: !22)
!484 = !DILocation(line: 0, scope: !460)
!485 = !DILocation(line: 324, column: 26, scope: !460)
!486 = !DILocation(line: 324, column: 5, scope: !460)
!487 = !{!488, !488, i64 0}
!488 = !{!"int", !402, i64 0}
!489 = !DILocation(line: 326, column: 5, scope: !460)
!490 = !DILocation(line: 327, column: 13, scope: !480)
!491 = !DILocation(line: 327, column: 24, scope: !479)
!492 = !DILocation(line: 327, column: 14, scope: !479)
!493 = !DILocation(line: 328, column: 42, scope: !478)
!494 = !DILocation(line: 0, scope: !478)
!495 = !DILocalVariable(name: "addr", arg: 1, scope: !496, file: !6, line: 126, type: !302)
!496 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPjS4_S4_", scope: !497, file: !6, line: 126, type: !498, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !500)
!497 = !DINamespace(scope: !2)
!498 = !DISubroutineType(types: !499)
!499 = !{!64, !302, !302, !302}
!500 = !{!495, !501, !502}
!501 = !DILocalVariable(name: "expected", arg: 2, scope: !496, file: !6, line: 126, type: !302)
!502 = !DILocalVariable(name: "desired", arg: 3, scope: !496, file: !6, line: 126, type: !302)
!503 = !DILocation(line: 0, scope: !496, inlinedAt: !504)
!504 = distinct !DILocation(line: 330, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !478, file: !6, line: 330, column: 17)
!506 = !DILocalVariable(name: "addr", arg: 1, scope: !507, file: !6, line: 102, type: !510)
!507 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIjEEbPT_S6_S6_", scope: !497, file: !6, line: 102, type: !508, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !516, retainedNodes: !511)
!508 = !DISubroutineType(types: !509)
!509 = !{!64, !510, !510, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!511 = !{!506, !512, !513, !514, !515}
!512 = !DILocalVariable(name: "expected", arg: 2, scope: !507, file: !6, line: 102, type: !510)
!513 = !DILocalVariable(name: "desired", arg: 3, scope: !507, file: !6, line: 102, type: !510)
!514 = !DILocalVariable(name: "oldval", scope: !507, file: !6, line: 103, type: !25)
!515 = !DILocalVariable(name: "gotval", scope: !507, file: !6, line: 104, type: !25)
!516 = !{!517}
!517 = !DITemplateTypeParameter(name: "T", type: !25)
!518 = !DILocation(line: 0, scope: !507, inlinedAt: !519)
!519 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !504)
!520 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !519)
!521 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !519)
!522 = !DILocation(line: 336, column: 67, scope: !523)
!523 = distinct !DILexicalBlock(scope: !480, file: !6, line: 336, column: 13)
!524 = !DILocation(line: 336, column: 73, scope: !523)
!525 = !DILocalVariable(name: "this", arg: 1, scope: !526, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !465, file: !6, line: 237, type: !473, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !472, retainedNodes: !527)
!527 = !{!525}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!529 = !DILocation(line: 0, scope: !526, inlinedAt: !530)
!530 = distinct !DILocation(line: 336, column: 84, scope: !523)
!531 = !DILocation(line: 241, column: 27, scope: !526, inlinedAt: !530)
!532 = !DILocation(line: 336, column: 13, scope: !480)
!533 = !DILocation(line: 239, column: 23, scope: !534, inlinedAt: !530)
!534 = distinct !DILexicalBlock(scope: !535, file: !6, line: 238, column: 29)
!535 = distinct !DILexicalBlock(scope: !526, file: !6, line: 238, column: 13)
!536 = !DILocation(line: 337, column: 13, scope: !537)
!537 = distinct !DILexicalBlock(scope: !523, file: !6, line: 336, column: 99)
!538 = !DILocation(line: 338, column: 13, scope: !537)
!539 = !DILocation(line: 339, column: 13, scope: !537)
!540 = !DILocation(line: 342, column: 9, scope: !480)
!541 = !DILocation(line: 342, column: 30, scope: !480)
!542 = !DILocalVariable(name: "this", arg: 1, scope: !543, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!543 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !178, file: !6, line: 277, type: !227, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !226, retainedNodes: !544)
!544 = !{!542}
!545 = !DILocation(line: 0, scope: !543, inlinedAt: !546)
!546 = distinct !DILocation(line: 342, column: 30, scope: !480)
!547 = !DILocalVariable(name: "this", arg: 1, scope: !548, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !181, file: !167, line: 103, type: !215, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !214, retainedNodes: !549)
!549 = !{!547}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!551 = !DILocation(line: 0, scope: !548, inlinedAt: !552)
!552 = distinct !DILocation(line: 277, column: 19, scope: !543, inlinedAt: !546)
!553 = !DILocation(line: 96, column: 10, scope: !548, inlinedAt: !552)
!554 = !{!555, !558, i64 128}
!555 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !556, i64 0, !557, i64 64, !558, i64 128}
!556 = !{!"_ZTS15pthread_mutex_t", !402, i64 0}
!557 = !{!"_ZTS14pthread_cond_t", !402, i64 0}
!558 = !{!"bool", !402, i64 0}
!559 = !DILocation(line: 104, column: 9, scope: !560, inlinedAt: !552)
!560 = distinct !DILexicalBlock(scope: !548, file: !167, line: 103, column: 35)
!561 = !DILocation(line: 105, column: 9, scope: !560, inlinedAt: !552)
!562 = !DILocation(line: 273, column: 27, scope: !543, inlinedAt: !546)
!563 = !{!564, !401, i64 136}
!564 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !555, i64 0, !401, i64 136, !401, i64 140, !401, i64 144}
!565 = !DILocation(line: 274, column: 27, scope: !543, inlinedAt: !546)
!566 = !{!564, !401, i64 140}
!567 = !DILocation(line: 275, column: 27, scope: !543, inlinedAt: !546)
!568 = !{!564, !401, i64 144}
!569 = !DILocalVariable(name: "this", arg: 1, scope: !570, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !215, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !571)
!571 = !{!569}
!572 = !DILocation(line: 0, scope: !570, inlinedAt: !573)
!573 = distinct !DILocation(line: 344, column: 21, scope: !480)
!574 = !DILocation(line: 114, column: 21, scope: !570, inlinedAt: !573)
!575 = !DILocation(line: 347, column: 72, scope: !480)
!576 = !DILocation(line: 0, scope: !480)
!577 = !DILocation(line: 348, column: 18, scope: !578)
!578 = distinct !DILexicalBlock(scope: !480, file: !6, line: 348, column: 13)
!579 = !DILocation(line: 348, column: 13, scope: !480)
!580 = !DILocation(line: 349, column: 23, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !6, line: 348, column: 30)
!582 = !DILocation(line: 351, column: 9, scope: !581)
!583 = !DILocation(line: 347, column: 38, scope: !480)
!584 = !DILocation(line: 356, column: 23, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !6, line: 351, column: 16)
!586 = !DILocation(line: 359, column: 60, scope: !480)
!587 = !DILocation(line: 359, column: 48, scope: !480)
!588 = !DILocalVariable(name: "addr", arg: 1, scope: !589, file: !6, line: 113, type: !302)
!589 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPjS4_S4_", scope: !497, file: !6, line: 113, type: !498, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !590)
!590 = !{!588, !591, !592}
!591 = !DILocalVariable(name: "expected", arg: 2, scope: !589, file: !6, line: 113, type: !302)
!592 = !DILocalVariable(name: "desired", arg: 3, scope: !589, file: !6, line: 113, type: !302)
!593 = !DILocation(line: 0, scope: !589, inlinedAt: !594)
!594 = distinct !DILocation(line: 360, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !480, file: !6, line: 360, column: 13)
!596 = !DILocation(line: 0, scope: !507, inlinedAt: !597)
!597 = distinct !DILocation(line: 114, column: 12, scope: !589, inlinedAt: !594)
!598 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !597)
!599 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !597)
!600 = !DILocation(line: 360, column: 13, scope: !480)
!601 = !DILocalVariable(name: "this", arg: 1, scope: !602, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!602 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !215, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !603)
!603 = !{!601}
!604 = !DILocation(line: 0, scope: !602, inlinedAt: !605)
!605 = distinct !DILocation(line: 361, column: 25, scope: !606)
!606 = distinct !DILexicalBlock(scope: !595, file: !6, line: 360, column: 75)
!607 = !DILocation(line: 118, column: 9, scope: !602, inlinedAt: !605)
!608 = !DILocation(line: 119, column: 16, scope: !602, inlinedAt: !605)
!609 = !{i8 0, i8 2}
!610 = !DILocation(line: 119, column: 9, scope: !602, inlinedAt: !605)
!611 = !DILocation(line: 120, column: 13, scope: !612, inlinedAt: !605)
!612 = distinct !DILexicalBlock(scope: !602, file: !167, line: 119, column: 29)
!613 = distinct !{!613, !610, !614, !615}
!614 = !DILocation(line: 121, column: 9, scope: !602, inlinedAt: !605)
!615 = !{!"llvm.loop.mustprogress"}
!616 = !DILocation(line: 122, column: 9, scope: !602, inlinedAt: !605)
!617 = !DILocation(line: 363, column: 13, scope: !606)
!618 = !DILocation(line: 364, column: 9, scope: !606)
!619 = !DILocation(line: 0, scope: !595)
!620 = !DILocalVariable(name: "this", arg: 1, scope: !621, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!621 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !178, file: !6, line: 280, type: !227, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !230, retainedNodes: !622)
!622 = !{!620}
!623 = !DILocation(line: 0, scope: !621, inlinedAt: !624)
!624 = distinct !DILocation(line: 365, column: 5, scope: !460)
!625 = !DILocalVariable(name: "this", arg: 1, scope: !626, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!626 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !181, file: !167, line: 108, type: !215, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !627)
!627 = !{!625}
!628 = !DILocation(line: 0, scope: !626, inlinedAt: !629)
!629 = distinct !DILocation(line: 280, column: 51, scope: !630, inlinedAt: !624)
!630 = distinct !DILexicalBlock(scope: !621, file: !6, line: 280, column: 51)
!631 = !DILocation(line: 109, column: 9, scope: !632, inlinedAt: !629)
!632 = distinct !DILexicalBlock(scope: !626, file: !167, line: 108, column: 36)
!633 = !DILocation(line: 110, column: 9, scope: !632, inlinedAt: !629)
!634 = !DILocation(line: 365, column: 5, scope: !460)
!635 = distinct !{!635, !489, !634}
!636 = !DILocation(line: 366, column: 1, scope: !460)
!637 = !DISubprogram(name: "halide_thread_yield", scope: !23, file: !23, line: 190, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!638 = !DISubroutineType(types: !639)
!639 = !{null}
!640 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !239, file: !6, line: 368, type: !243, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !641)
!641 = !{!642, !643, !644, !646, !647, !648, !650, !651, !652, !653, !655, !658, !659, !662}
!642 = !DILocalVariable(name: "this", arg: 1, scope: !640, type: !463, flags: DIFlagArtificial | DIFlagObjectPointer)
!643 = !DILocalVariable(name: "expected", scope: !640, file: !6, line: 369, type: !22)
!644 = !DILocalVariable(name: "thread_queuing", scope: !645, file: !6, line: 375, type: !64)
!645 = distinct !DILexicalBlock(scope: !640, file: !6, line: 372, column: 18)
!646 = !DILocalVariable(name: "none_queued", scope: !645, file: !6, line: 377, type: !64)
!647 = !DILocalVariable(name: "desired", scope: !645, file: !6, line: 382, type: !22)
!648 = !DILocalVariable(name: "head", scope: !649, file: !6, line: 389, type: !177)
!649 = distinct !DILexicalBlock(scope: !640, file: !6, line: 388, column: 18)
!650 = !DILocalVariable(name: "current", scope: !649, file: !6, line: 390, type: !177)
!651 = !DILocalVariable(name: "tail", scope: !649, file: !6, line: 391, type: !177)
!652 = !DILocalVariable(name: "times_through", scope: !649, file: !6, line: 392, type: !29)
!653 = !DILocalVariable(name: "next", scope: !654, file: !6, line: 394, type: !177)
!654 = distinct !DILexicalBlock(scope: !649, file: !6, line: 393, column: 33)
!655 = !DILocalVariable(name: "desired", scope: !656, file: !6, line: 406, type: !22)
!656 = distinct !DILexicalBlock(scope: !657, file: !6, line: 405, column: 34)
!657 = distinct !DILexicalBlock(scope: !649, file: !6, line: 405, column: 13)
!658 = !DILocalVariable(name: "new_tail", scope: !649, file: !6, line: 414, type: !177)
!659 = !DILocalVariable(name: "continue_outer", scope: !660, file: !6, line: 416, type: !64)
!660 = distinct !DILexicalBlock(scope: !661, file: !6, line: 415, column: 34)
!661 = distinct !DILexicalBlock(scope: !649, file: !6, line: 415, column: 13)
!662 = !DILocalVariable(name: "desired", scope: !663, file: !6, line: 418, type: !22)
!663 = distinct !DILexicalBlock(scope: !660, file: !6, line: 417, column: 37)
!664 = !DILocation(line: 0, scope: !640)
!665 = !DILocation(line: 370, column: 26, scope: !640)
!666 = !DILocation(line: 370, column: 5, scope: !640)
!667 = !DILocalVariable(name: "addr", arg: 1, scope: !668, file: !6, line: 135, type: !510)
!668 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIjEEvPT_S6_", scope: !497, file: !6, line: 135, type: !669, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !516, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !510, !510}
!671 = !{!667, !672}
!672 = !DILocalVariable(name: "val", arg: 2, scope: !668, file: !6, line: 135, type: !510)
!673 = !DILocation(line: 0, scope: !668, inlinedAt: !674)
!674 = distinct !DILocation(line: 370, column: 5, scope: !640)
!675 = !DILocation(line: 372, column: 5, scope: !640)
!676 = !DILocation(line: 136, column: 10, scope: !668, inlinedAt: !674)
!677 = !DILocation(line: 375, column: 41, scope: !645)
!678 = !DILocation(line: 375, column: 31, scope: !645)
!679 = !DILocation(line: 0, scope: !645)
!680 = !DILocation(line: 378, column: 28, scope: !681)
!681 = distinct !DILexicalBlock(scope: !645, file: !6, line: 378, column: 13)
!682 = !DILocation(line: 382, column: 38, scope: !645)
!683 = !DILocation(line: 0, scope: !496, inlinedAt: !684)
!684 = distinct !DILocation(line: 383, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !645, file: !6, line: 383, column: 13)
!686 = !DILocation(line: 0, scope: !507, inlinedAt: !687)
!687 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !684)
!688 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !687)
!689 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !687)
!690 = !DILocation(line: 389, column: 72, scope: !649)
!691 = !DILocation(line: 389, column: 38, scope: !649)
!692 = !DILocation(line: 0, scope: !649)
!693 = !DILocation(line: 391, column: 47, scope: !649)
!694 = !DILocation(line: 393, column: 21, scope: !649)
!695 = !DILocation(line: 393, column: 9, scope: !649)
!696 = !DILocation(line: 394, column: 51, scope: !654)
!697 = !DILocation(line: 0, scope: !654)
!698 = !DILocation(line: 395, column: 13, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !6, line: 395, column: 13)
!700 = distinct !DILexicalBlock(scope: !654, file: !6, line: 395, column: 13)
!701 = !DILocation(line: 395, column: 13, scope: !700)
!702 = !DILocation(line: 395, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !6, line: 395, column: 13)
!704 = !DILocation(line: 396, column: 19, scope: !654)
!705 = !DILocation(line: 396, column: 24, scope: !654)
!706 = !DILocation(line: 398, column: 29, scope: !654)
!707 = distinct !{!707, !695, !708, !615}
!708 = !DILocation(line: 400, column: 9, scope: !649)
!709 = !DILocation(line: 401, column: 20, scope: !649)
!710 = !DILocation(line: 405, column: 22, scope: !657)
!711 = !DILocation(line: 405, column: 13, scope: !657)
!712 = !DILocation(line: 405, column: 13, scope: !649)
!713 = !DILocation(line: 406, column: 42, scope: !656)
!714 = !DILocation(line: 0, scope: !656)
!715 = !DILocalVariable(name: "addr", arg: 1, scope: !716, file: !6, line: 118, type: !510)
!716 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIjEEbPT_S6_S6_", scope: !497, file: !6, line: 118, type: !508, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !516, retainedNodes: !717)
!717 = !{!715, !718, !719}
!718 = !DILocalVariable(name: "expected", arg: 2, scope: !716, file: !6, line: 118, type: !510)
!719 = !DILocalVariable(name: "desired", arg: 3, scope: !716, file: !6, line: 118, type: !510)
!720 = !DILocation(line: 0, scope: !716, inlinedAt: !721)
!721 = distinct !DILocation(line: 407, column: 17, scope: !722)
!722 = distinct !DILexicalBlock(scope: !656, file: !6, line: 407, column: 17)
!723 = !DILocation(line: 0, scope: !507, inlinedAt: !724)
!724 = distinct !DILocation(line: 119, column: 12, scope: !716, inlinedAt: !721)
!725 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !724)
!726 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !724)
!727 = !DILocation(line: 407, column: 17, scope: !656)
!728 = distinct !{!728, !729, !730}
!729 = !DILocation(line: 388, column: 5, scope: !640)
!730 = !DILocation(line: 445, column: 5, scope: !640)
!731 = !DILocation(line: 414, column: 48, scope: !649)
!732 = !DILocation(line: 415, column: 22, scope: !661)
!733 = !DILocation(line: 415, column: 13, scope: !649)
!734 = !DILocation(line: 418, column: 46, scope: !663)
!735 = !DILocation(line: 0, scope: !663)
!736 = !DILocation(line: 0, scope: !716, inlinedAt: !737)
!737 = distinct !DILocation(line: 419, column: 21, scope: !738)
!738 = distinct !DILexicalBlock(scope: !663, file: !6, line: 419, column: 21)
!739 = !DILocation(line: 0, scope: !507, inlinedAt: !740)
!740 = distinct !DILocation(line: 119, column: 12, scope: !716, inlinedAt: !737)
!741 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !740)
!742 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !740)
!743 = !DILocation(line: 419, column: 21, scope: !663)
!744 = !DILocation(line: 422, column: 74, scope: !745)
!745 = distinct !DILexicalBlock(scope: !663, file: !6, line: 422, column: 21)
!746 = !DILocation(line: 422, column: 21, scope: !663)
!747 = distinct !{!747, !748, !749, !615}
!748 = !DILocation(line: 417, column: 13, scope: !660)
!749 = !DILocation(line: 428, column: 13, scope: !660)
!750 = !DILocation(line: 434, column: 24, scope: !751)
!751 = distinct !DILexicalBlock(scope: !661, file: !6, line: 433, column: 16)
!752 = !DILocalVariable(name: "addr", arg: 1, scope: !753, file: !6, line: 92, type: !302)
!753 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPjj", scope: !497, file: !6, line: 92, type: !754, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!22, !302, !22}
!756 = !{!752, !757}
!757 = !DILocalVariable(name: "val", arg: 2, scope: !753, file: !6, line: 92, type: !22)
!758 = !DILocation(line: 0, scope: !753, inlinedAt: !759)
!759 = distinct !DILocation(line: 435, column: 13, scope: !751)
!760 = !DILocation(line: 93, column: 12, scope: !753, inlinedAt: !759)
!761 = !DILocalVariable(name: "this", arg: 1, scope: !762, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!762 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !215, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !763)
!763 = !{!761}
!764 = !DILocation(line: 0, scope: !762, inlinedAt: !765)
!765 = distinct !DILocation(line: 441, column: 22, scope: !649)
!766 = !DILocation(line: 126, column: 29, scope: !762, inlinedAt: !765)
!767 = !DILocation(line: 126, column: 9, scope: !762, inlinedAt: !765)
!768 = !DILocalVariable(name: "this", arg: 1, scope: !769, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!769 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !215, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !221, retainedNodes: !770)
!770 = !{!768}
!771 = !DILocation(line: 0, scope: !769, inlinedAt: !772)
!772 = distinct !DILocation(line: 442, column: 22, scope: !649)
!773 = !DILocation(line: 130, column: 9, scope: !769, inlinedAt: !772)
!774 = !DILocation(line: 130, column: 21, scope: !769, inlinedAt: !772)
!775 = !DILocation(line: 131, column: 30, scope: !769, inlinedAt: !772)
!776 = !DILocation(line: 131, column: 9, scope: !769, inlinedAt: !772)
!777 = !DILocalVariable(name: "this", arg: 1, scope: !778, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!778 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !215, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !222, retainedNodes: !779)
!779 = !{!777}
!780 = !DILocation(line: 0, scope: !778, inlinedAt: !781)
!781 = distinct !DILocation(line: 443, column: 22, scope: !649)
!782 = !DILocation(line: 135, column: 9, scope: !778, inlinedAt: !781)
!783 = !DILocation(line: 444, column: 9, scope: !649)
!784 = !DILocation(line: 0, scope: !660)
!785 = !DILocation(line: 446, column: 1, scope: !640)
!786 = !DISubprogram(name: "halide_print", scope: !18, file: !18, line: 97, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !43, !49}
!789 = !DISubprogram(name: "abort", scope: !23, file: !23, line: 108, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!790 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj", scope: !2, file: !6, line: 509, type: !791, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{!793, !22}
!793 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !236, size: 32)
!794 = !{!795, !796, !797}
!795 = !DILocalVariable(name: "addr", arg: 1, scope: !790, file: !6, line: 509, type: !22)
!796 = !DILocalVariable(name: "hash", scope: !790, file: !6, line: 510, type: !22)
!797 = !DILocalVariable(name: "bucket", scope: !790, file: !6, line: 515, type: !793)
!798 = !DILocation(line: 0, scope: !790)
!799 = !DILocalVariable(name: "addr", arg: 1, scope: !800, file: !6, line: 499, type: !22)
!800 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEjj", scope: !2, file: !6, line: 499, type: !801, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!22, !22, !24}
!803 = !{!799, !804}
!804 = !DILocalVariable(name: "bits", arg: 2, scope: !800, file: !6, line: 499, type: !24)
!805 = !DILocation(line: 0, scope: !800, inlinedAt: !806)
!806 = distinct !DILocation(line: 510, column: 22, scope: !790)
!807 = !DILocation(line: 505, column: 22, scope: !808, inlinedAt: !806)
!808 = distinct !DILexicalBlock(scope: !809, file: !6, line: 504, column: 12)
!809 = distinct !DILexicalBlock(scope: !800, file: !6, line: 502, column: 9)
!810 = !DILocation(line: 505, column: 47, scope: !808, inlinedAt: !806)
!811 = !DILocation(line: 515, column: 27, scope: !790)
!812 = !DILocalVariable(name: "this", arg: 1, scope: !813, type: !463, flags: DIFlagArtificial | DIFlagObjectPointer)
!813 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !239, file: !6, line: 291, type: !243, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !248, retainedNodes: !814)
!814 = !{!812, !815, !816}
!815 = !DILocalVariable(name: "expected", scope: !813, file: !6, line: 294, type: !22)
!816 = !DILocalVariable(name: "desired", scope: !813, file: !6, line: 295, type: !22)
!817 = !DILocation(line: 0, scope: !813, inlinedAt: !818)
!818 = distinct !DILocation(line: 517, column: 18, scope: !790)
!819 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !818)
!820 = distinct !DILexicalBlock(scope: !813, file: !6, line: 297, column: 13)
!821 = !DILocation(line: 0, scope: !496, inlinedAt: !822)
!822 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !818)
!823 = !DILocation(line: 0, scope: !507, inlinedAt: !824)
!824 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !822)
!825 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !824)
!826 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !824)
!827 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !818)
!828 = !DILocation(line: 517, column: 12, scope: !790)
!829 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !818)
!830 = distinct !DILexicalBlock(scope: !820, file: !6, line: 297, column: 76)
!831 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !818)
!832 = !DILocation(line: 519, column: 5, scope: !790)
!833 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj", scope: !2, file: !6, line: 531, type: !834, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !844)
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !22, !22}
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !837, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !836, file: !6, line: 523, baseType: !793, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !836, file: !6, line: 524, baseType: !793, size: 32, offset: 32)
!840 = !DISubprogram(name: "bucket_pair", scope: !836, file: !6, line: 526, type: !841, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !843, !793, !793}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!844 = !{!845, !846, !847, !848, !849, !852, !855, !856, !858}
!845 = !DILocalVariable(name: "addr_from", arg: 1, scope: !833, file: !6, line: 531, type: !22)
!846 = !DILocalVariable(name: "addr_to", arg: 2, scope: !833, file: !6, line: 531, type: !22)
!847 = !DILocalVariable(name: "hash_from", scope: !833, file: !6, line: 533, type: !22)
!848 = !DILocalVariable(name: "hash_to", scope: !833, file: !6, line: 534, type: !22)
!849 = !DILocalVariable(name: "first", scope: !850, file: !6, line: 542, type: !793)
!850 = distinct !DILexicalBlock(scope: !851, file: !6, line: 541, column: 31)
!851 = distinct !DILexicalBlock(scope: !833, file: !6, line: 541, column: 9)
!852 = !DILocalVariable(name: "first", scope: !853, file: !6, line: 546, type: !793)
!853 = distinct !DILexicalBlock(scope: !854, file: !6, line: 545, column: 37)
!854 = distinct !DILexicalBlock(scope: !851, file: !6, line: 545, column: 16)
!855 = !DILocalVariable(name: "second", scope: !853, file: !6, line: 547, type: !793)
!856 = !DILocalVariable(name: "first", scope: !857, file: !6, line: 552, type: !793)
!857 = distinct !DILexicalBlock(scope: !854, file: !6, line: 551, column: 12)
!858 = !DILocalVariable(name: "second", scope: !857, file: !6, line: 553, type: !793)
!859 = !DILocation(line: 0, scope: !833)
!860 = !DILocation(line: 0, scope: !800, inlinedAt: !861)
!861 = distinct !DILocation(line: 533, column: 27, scope: !833)
!862 = !DILocation(line: 505, column: 22, scope: !808, inlinedAt: !861)
!863 = !DILocation(line: 505, column: 47, scope: !808, inlinedAt: !861)
!864 = !DILocation(line: 0, scope: !800, inlinedAt: !865)
!865 = distinct !DILocation(line: 534, column: 25, scope: !833)
!866 = !DILocation(line: 505, column: 22, scope: !808, inlinedAt: !865)
!867 = !DILocation(line: 505, column: 47, scope: !808, inlinedAt: !865)
!868 = !DILocation(line: 541, column: 19, scope: !851)
!869 = !DILocation(line: 541, column: 9, scope: !833)
!870 = !DILocation(line: 542, column: 30, scope: !850)
!871 = !DILocation(line: 0, scope: !850)
!872 = !DILocation(line: 0, scope: !813, inlinedAt: !873)
!873 = distinct !DILocation(line: 543, column: 21, scope: !850)
!874 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !873)
!875 = !DILocation(line: 0, scope: !496, inlinedAt: !876)
!876 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !873)
!877 = !DILocation(line: 0, scope: !507, inlinedAt: !878)
!878 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !876)
!879 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !878)
!880 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !878)
!881 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !873)
!882 = !DILocation(line: 543, column: 15, scope: !850)
!883 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !873)
!884 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !873)
!885 = !DILocation(line: 545, column: 26, scope: !854)
!886 = !DILocation(line: 545, column: 16, scope: !851)
!887 = !DILocation(line: 546, column: 30, scope: !853)
!888 = !DILocation(line: 0, scope: !853)
!889 = !DILocation(line: 547, column: 31, scope: !853)
!890 = !DILocation(line: 0, scope: !813, inlinedAt: !891)
!891 = distinct !DILocation(line: 548, column: 21, scope: !853)
!892 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !891)
!893 = !DILocation(line: 0, scope: !496, inlinedAt: !894)
!894 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !891)
!895 = !DILocation(line: 0, scope: !507, inlinedAt: !896)
!896 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !894)
!897 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !896)
!898 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !896)
!899 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !891)
!900 = !DILocation(line: 548, column: 15, scope: !853)
!901 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !891)
!902 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !891)
!903 = !DILocation(line: 0, scope: !813, inlinedAt: !904)
!904 = distinct !DILocation(line: 549, column: 22, scope: !853)
!905 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !904)
!906 = !DILocation(line: 0, scope: !496, inlinedAt: !907)
!907 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !904)
!908 = !DILocation(line: 0, scope: !507, inlinedAt: !909)
!909 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !907)
!910 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !909)
!911 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !909)
!912 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !904)
!913 = !DILocation(line: 549, column: 16, scope: !853)
!914 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !904)
!915 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !904)
!916 = !DILocation(line: 552, column: 30, scope: !857)
!917 = !DILocation(line: 0, scope: !857)
!918 = !DILocation(line: 553, column: 31, scope: !857)
!919 = !DILocation(line: 0, scope: !813, inlinedAt: !920)
!920 = distinct !DILocation(line: 554, column: 21, scope: !857)
!921 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !920)
!922 = !DILocation(line: 0, scope: !496, inlinedAt: !923)
!923 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !920)
!924 = !DILocation(line: 0, scope: !507, inlinedAt: !925)
!925 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !923)
!926 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !925)
!927 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !925)
!928 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !920)
!929 = !DILocation(line: 554, column: 15, scope: !857)
!930 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !920)
!931 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !920)
!932 = !DILocation(line: 0, scope: !813, inlinedAt: !933)
!933 = distinct !DILocation(line: 555, column: 22, scope: !857)
!934 = !DILocation(line: 297, column: 47, scope: !820, inlinedAt: !933)
!935 = !DILocation(line: 0, scope: !496, inlinedAt: !936)
!936 = distinct !DILocation(line: 297, column: 14, scope: !820, inlinedAt: !933)
!937 = !DILocation(line: 0, scope: !507, inlinedAt: !938)
!938 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !936)
!939 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !938)
!940 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !938)
!941 = !DILocation(line: 297, column: 13, scope: !813, inlinedAt: !933)
!942 = !DILocation(line: 555, column: 16, scope: !857)
!943 = !DILocation(line: 298, column: 13, scope: !830, inlinedAt: !933)
!944 = !DILocation(line: 299, column: 9, scope: !830, inlinedAt: !933)
!945 = !DILocation(line: 0, scope: !851)
!946 = !DILocation(line: 558, column: 1, scope: !833)
!947 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !2, file: !6, line: 560, type: !948, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !951)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !950}
!950 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !836, size: 32)
!951 = !{!952}
!952 = !DILocalVariable(name: "buckets", arg: 1, scope: !947, file: !6, line: 560, type: !950)
!953 = !DILocation(line: 0, scope: !947)
!954 = !DILocation(line: 565, column: 18, scope: !955)
!955 = distinct !DILexicalBlock(scope: !947, file: !6, line: 565, column: 9)
!956 = !{!957, !401, i64 0}
!957 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !401, i64 0, !401, i64 4}
!958 = !DILocation(line: 565, column: 35, scope: !955)
!959 = !{!957, !401, i64 4}
!960 = !DILocation(line: 565, column: 23, scope: !955)
!961 = !DILocation(line: 565, column: 9, scope: !947)
!962 = !DILocalVariable(name: "this", arg: 1, scope: !963, type: !463, flags: DIFlagArtificial | DIFlagObjectPointer)
!963 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !239, file: !6, line: 304, type: !243, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !249, retainedNodes: !964)
!964 = !{!962, !965, !966, !967}
!965 = !DILocalVariable(name: "val", scope: !963, file: !6, line: 307, type: !22)
!966 = !DILocalVariable(name: "no_thread_queuing", scope: !963, file: !6, line: 310, type: !64)
!967 = !DILocalVariable(name: "some_queued", scope: !963, file: !6, line: 312, type: !64)
!968 = !DILocation(line: 0, scope: !963, inlinedAt: !969)
!969 = distinct !DILocation(line: 566, column: 28, scope: !970)
!970 = distinct !DILexicalBlock(scope: !955, file: !6, line: 565, column: 39)
!971 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !969)
!972 = !DILocalVariable(name: "addr", arg: 1, scope: !973, file: !6, line: 130, type: !302)
!973 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPjj", scope: !497, file: !6, line: 130, type: !754, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !974)
!974 = !{!972, !975}
!975 = !DILocalVariable(name: "val", arg: 2, scope: !973, file: !6, line: 130, type: !22)
!976 = !DILocation(line: 0, scope: !973, inlinedAt: !977)
!977 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !969)
!978 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !977)
!979 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !969)
!980 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !969)
!981 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !969)
!982 = distinct !DILexicalBlock(scope: !963, file: !6, line: 313, column: 13)
!983 = !DILocation(line: 566, column: 22, scope: !970)
!984 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !969)
!985 = distinct !DILexicalBlock(scope: !982, file: !6, line: 313, column: 47)
!986 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !969)
!987 = !DILocation(line: 567, column: 30, scope: !988)
!988 = distinct !DILexicalBlock(scope: !955, file: !6, line: 567, column: 16)
!989 = !DILocation(line: 567, column: 16, scope: !955)
!990 = !DILocation(line: 0, scope: !963, inlinedAt: !991)
!991 = distinct !DILocation(line: 568, column: 28, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !6, line: 567, column: 45)
!993 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !991)
!994 = !DILocation(line: 0, scope: !973, inlinedAt: !995)
!995 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !991)
!996 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !995)
!997 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !991)
!998 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !991)
!999 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !991)
!1000 = !DILocation(line: 568, column: 22, scope: !992)
!1001 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !991)
!1002 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !991)
!1003 = !DILocation(line: 569, column: 17, scope: !992)
!1004 = !DILocation(line: 0, scope: !963, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 569, column: 26, scope: !992)
!1006 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1005)
!1007 = !DILocation(line: 0, scope: !973, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1005)
!1009 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1008)
!1010 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1005)
!1011 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1005)
!1012 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1005)
!1013 = !DILocation(line: 569, column: 20, scope: !992)
!1014 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1005)
!1015 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1005)
!1016 = !DILocation(line: 0, scope: !963, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 571, column: 26, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !988, file: !6, line: 570, column: 12)
!1019 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1017)
!1020 = !DILocation(line: 0, scope: !973, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1017)
!1022 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1021)
!1023 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1017)
!1024 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1017)
!1025 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1017)
!1026 = !DILocation(line: 571, column: 20, scope: !1018)
!1027 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1017)
!1028 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1017)
!1029 = !DILocation(line: 572, column: 17, scope: !1018)
!1030 = !DILocation(line: 0, scope: !963, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 572, column: 28, scope: !1018)
!1032 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1031)
!1033 = !DILocation(line: 0, scope: !973, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1031)
!1035 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1034)
!1036 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1031)
!1037 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1031)
!1038 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1031)
!1039 = !DILocation(line: 572, column: 22, scope: !1018)
!1040 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1031)
!1041 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1031)
!1042 = !DILocation(line: 574, column: 1, scope: !947)
!1043 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 583, type: !275, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1044)
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "control", arg: 1, scope: !1043, file: !6, line: 583, type: !43)
!1046 = !DILocalVariable(name: "action", arg: 2, scope: !1043, file: !6, line: 583, type: !277)
!1047 = !DILocation(line: 0, scope: !1043)
!1048 = !DILocation(line: 584, column: 5, scope: !1043)
!1049 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1050)
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "control", arg: 1, scope: !1049, file: !6, line: 586, type: !43)
!1052 = !DILocation(line: 0, scope: !1049)
!1053 = !DILocation(line: 586, column: 55, scope: !1049)
!1054 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !2, file: !6, line: 587, type: !289, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DILocalVariable(name: "control", arg: 1, scope: !1054, file: !6, line: 587, type: !43)
!1057 = !DILocalVariable(name: "unparked", arg: 2, scope: !1054, file: !6, line: 587, type: !29)
!1058 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1054, file: !6, line: 587, type: !64)
!1059 = !DILocation(line: 0, scope: !1054)
!1060 = !DILocation(line: 588, column: 5, scope: !1054)
!1061 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 590, type: !293, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1062)
!1062 = !{!1063, !1064, !1065, !1066}
!1063 = !DILocalVariable(name: "control", arg: 1, scope: !1061, file: !6, line: 590, type: !43)
!1064 = !DILocalVariable(name: "action", arg: 2, scope: !1061, file: !6, line: 590, type: !295)
!1065 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1061, file: !6, line: 590, type: !64)
!1066 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1061, file: !6, line: 590, type: !64)
!1067 = !DILocation(line: 0, scope: !1061)
!1068 = !DILocation(line: 590, column: 128, scope: !1061)
!1069 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE", scope: !2, file: !6, line: 605, type: !1070, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1073)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!22, !22, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !271, size: 32)
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DILocalVariable(name: "addr", arg: 1, scope: !1069, file: !6, line: 605, type: !22)
!1075 = !DILocalVariable(name: "control", arg: 2, scope: !1069, file: !6, line: 605, type: !1072)
!1076 = !DILocalVariable(name: "queue_data", scope: !1069, file: !6, line: 606, type: !252)
!1077 = !DILocalVariable(name: "bucket", scope: !1069, file: !6, line: 608, type: !793)
!1078 = !DILocalVariable(name: "action", scope: !1069, file: !6, line: 610, type: !278)
!1079 = !DILocation(line: 0, scope: !1069)
!1080 = !DILocation(line: 606, column: 5, scope: !1069)
!1081 = !DILocation(line: 606, column: 16, scope: !1069)
!1082 = !DILocalVariable(name: "this", arg: 1, scope: !1083, type: !251, flags: DIFlagArtificial | DIFlagObjectPointer)
!1083 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !252, file: !6, line: 455, type: !259, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !258, retainedNodes: !1084)
!1084 = !{!1082}
!1085 = !DILocation(line: 0, scope: !1083, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 606, column: 16, scope: !1069)
!1087 = !DILocation(line: 0, scope: !548, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 455, column: 19, scope: !1083, inlinedAt: !1086)
!1089 = !DILocation(line: 96, column: 10, scope: !548, inlinedAt: !1088)
!1090 = !DILocation(line: 104, column: 29, scope: !560, inlinedAt: !1088)
!1091 = !DILocation(line: 104, column: 9, scope: !560, inlinedAt: !1088)
!1092 = !DILocation(line: 105, column: 28, scope: !560, inlinedAt: !1088)
!1093 = !DILocation(line: 105, column: 9, scope: !560, inlinedAt: !1088)
!1094 = !DILocation(line: 451, column: 15, scope: !1083, inlinedAt: !1086)
!1095 = !{!1096, !488, i64 136}
!1096 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !555, i64 0, !488, i64 136, !401, i64 140, !488, i64 144}
!1097 = !DILocation(line: 452, column: 17, scope: !1083, inlinedAt: !1086)
!1098 = !{!1096, !401, i64 140}
!1099 = !DILocation(line: 453, column: 15, scope: !1083, inlinedAt: !1086)
!1100 = !{!1096, !488, i64 144}
!1101 = !DILocation(line: 608, column: 27, scope: !1069)
!1102 = !DILocation(line: 610, column: 5, scope: !1069)
!1103 = !DILocation(line: 610, column: 21, scope: !1069)
!1104 = !DILocalVariable(name: "this", arg: 1, scope: !1105, type: !1107, flags: DIFlagArtificial | DIFlagObjectPointer)
!1105 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !278, file: !6, line: 580, type: !283, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !282, retainedNodes: !1106)
!1106 = !{!1104}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!1108 = !DILocation(line: 0, scope: !1105, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 610, column: 21, scope: !1069)
!1110 = !DILocation(line: 577, column: 10, scope: !1105, inlinedAt: !1109)
!1111 = !{!1112, !558, i64 0}
!1112 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !558, i64 0, !488, i64 4}
!1113 = !DILocation(line: 578, column: 15, scope: !1105, inlinedAt: !1109)
!1114 = !{!1112, !488, i64 4}
!1115 = !DILocation(line: 611, column: 18, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1069, file: !6, line: 611, column: 9)
!1117 = !{!1118, !401, i64 0}
!1118 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !401, i64 0, !401, i64 4, !401, i64 8, !401, i64 12}
!1119 = !DILocation(line: 611, column: 27, scope: !1116)
!1120 = !DILocation(line: 611, column: 10, scope: !1116)
!1121 = !DILocation(line: 611, column: 9, scope: !1069)
!1122 = !DILocation(line: 0, scope: !963, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 612, column: 22, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1116, file: !6, line: 611, column: 46)
!1125 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1123)
!1126 = !DILocation(line: 0, scope: !973, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1123)
!1128 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1127)
!1129 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1123)
!1130 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1123)
!1131 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1123)
!1132 = !DILocation(line: 612, column: 16, scope: !1124)
!1133 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1123)
!1134 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1123)
!1135 = !DILocation(line: 613, column: 23, scope: !1124)
!1136 = !DILocation(line: 613, column: 9, scope: !1124)
!1137 = !DILocation(line: 616, column: 21, scope: !1069)
!1138 = !DILocation(line: 617, column: 30, scope: !1069)
!1139 = !DILocation(line: 0, scope: !570, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 618, column: 23, scope: !1069)
!1141 = !DILocation(line: 114, column: 21, scope: !570, inlinedAt: !1140)
!1142 = !DILocation(line: 619, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1069, file: !6, line: 619, column: 9)
!1144 = !{!1145, !401, i64 4}
!1145 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1146, i64 0, !401, i64 4, !401, i64 8}
!1146 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !488, i64 0}
!1147 = !DILocation(line: 619, column: 21, scope: !1143)
!1148 = !DILocation(line: 619, column: 9, scope: !1069)
!1149 = !DILocation(line: 0, scope: !1143)
!1150 = !DILocation(line: 624, column: 12, scope: !1069)
!1151 = !DILocation(line: 624, column: 17, scope: !1069)
!1152 = !{!1145, !401, i64 8}
!1153 = !DILocation(line: 0, scope: !963, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 625, column: 18, scope: !1069)
!1155 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1154)
!1156 = !DILocation(line: 0, scope: !973, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1154)
!1158 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1157)
!1159 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1154)
!1160 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1154)
!1161 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1154)
!1162 = !DILocation(line: 625, column: 12, scope: !1069)
!1163 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1154)
!1164 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1154)
!1165 = !DILocation(line: 627, column: 13, scope: !1069)
!1166 = !{!1118, !401, i64 4}
!1167 = !DILocation(line: 627, column: 5, scope: !1069)
!1168 = !DILocation(line: 0, scope: !602, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 629, column: 23, scope: !1069)
!1170 = !DILocation(line: 118, column: 9, scope: !602, inlinedAt: !1169)
!1171 = !DILocation(line: 119, column: 16, scope: !602, inlinedAt: !1169)
!1172 = !DILocation(line: 119, column: 9, scope: !602, inlinedAt: !1169)
!1173 = !DILocation(line: 120, column: 13, scope: !612, inlinedAt: !1169)
!1174 = distinct !{!1174, !1172, !1175, !615}
!1175 = !DILocation(line: 121, column: 9, scope: !602, inlinedAt: !1169)
!1176 = !DILocation(line: 122, column: 9, scope: !602, inlinedAt: !1169)
!1177 = !DILocation(line: 631, column: 23, scope: !1069)
!1178 = !DILocation(line: 631, column: 5, scope: !1069)
!1179 = !DILocation(line: 634, column: 1, scope: !1069)
!1180 = !DILocalVariable(name: "this", arg: 1, scope: !1181, type: !251, flags: DIFlagArtificial | DIFlagObjectPointer)
!1181 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !252, file: !6, line: 457, type: !259, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !262, retainedNodes: !1182)
!1182 = !{!1180}
!1183 = !DILocation(line: 0, scope: !1181, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 634, column: 1, scope: !1069)
!1185 = !DILocation(line: 0, scope: !626, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 457, column: 41, scope: !1187, inlinedAt: !1184)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !6, line: 457, column: 41)
!1188 = !DILocation(line: 109, column: 9, scope: !632, inlinedAt: !1186)
!1189 = !DILocation(line: 110, column: 9, scope: !632, inlinedAt: !1186)
!1190 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE", scope: !2, file: !6, line: 636, type: !1070, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1200, !1203, !1204, !1207}
!1192 = !DILocalVariable(name: "addr", arg: 1, scope: !1190, file: !6, line: 636, type: !22)
!1193 = !DILocalVariable(name: "control", arg: 2, scope: !1190, file: !6, line: 636, type: !1072)
!1194 = !DILocalVariable(name: "bucket", scope: !1190, file: !6, line: 637, type: !793)
!1195 = !DILocalVariable(name: "data_location", scope: !1190, file: !6, line: 639, type: !266)
!1196 = !DILocalVariable(name: "prev", scope: !1190, file: !6, line: 640, type: !251)
!1197 = !DILocalVariable(name: "data", scope: !1190, file: !6, line: 641, type: !251)
!1198 = !DILocalVariable(name: "cur_addr", scope: !1199, file: !6, line: 643, type: !22)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !6, line: 642, column: 29)
!1200 = !DILocalVariable(name: "next", scope: !1201, file: !6, line: 646, type: !251)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !6, line: 645, column: 31)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !6, line: 645, column: 13)
!1203 = !DILocalVariable(name: "more_waiters", scope: !1201, file: !6, line: 649, type: !64)
!1204 = !DILocalVariable(name: "data2", scope: !1205, file: !6, line: 654, type: !251)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !6, line: 653, column: 20)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !6, line: 651, column: 17)
!1207 = !DILocalVariable(name: "cur_addr2", scope: !1208, file: !6, line: 656, type: !22)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !6, line: 655, column: 59)
!1209 = !DILocation(line: 0, scope: !1190)
!1210 = !DILocation(line: 637, column: 27, scope: !1190)
!1211 = !DILocation(line: 639, column: 42, scope: !1190)
!1212 = !DILocation(line: 641, column: 24, scope: !1190)
!1213 = !DILocation(line: 642, column: 5, scope: !1190)
!1214 = !DILocation(line: 639, column: 18, scope: !1190)
!1215 = !DILocation(line: 640, column: 17, scope: !1190)
!1216 = !DILocation(line: 641, column: 17, scope: !1190)
!1217 = !DILocation(line: 642, column: 17, scope: !1190)
!1218 = !DILocation(line: 644, column: 36, scope: !1199)
!1219 = !DILocation(line: 644, column: 9, scope: !1199)
!1220 = !DILocation(line: 0, scope: !1199)
!1221 = !DILocation(line: 645, column: 22, scope: !1202)
!1222 = !DILocation(line: 0, scope: !1202)
!1223 = !DILocation(line: 645, column: 13, scope: !1199)
!1224 = !DILocation(line: 0, scope: !1201)
!1225 = !DILocation(line: 647, column: 28, scope: !1201)
!1226 = !DILocation(line: 651, column: 24, scope: !1206)
!1227 = !DILocation(line: 651, column: 29, scope: !1206)
!1228 = !DILocation(line: 651, column: 17, scope: !1201)
!1229 = !DILocation(line: 0, scope: !1205)
!1230 = !DILocation(line: 655, column: 30, scope: !1205)
!1231 = !DILocation(line: 655, column: 17, scope: !1205)
!1232 = !DILocation(line: 652, column: 29, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1206, file: !6, line: 651, column: 38)
!1234 = !DILocation(line: 653, column: 13, scope: !1233)
!1235 = !DILocation(line: 657, column: 49, scope: !1208)
!1236 = !DILocation(line: 657, column: 21, scope: !1208)
!1237 = !DILocation(line: 0, scope: !1208)
!1238 = !DILocation(line: 658, column: 47, scope: !1208)
!1239 = !DILocation(line: 659, column: 36, scope: !1208)
!1240 = !DILocation(line: 655, column: 41, scope: !1205)
!1241 = distinct !{!1241, !1231, !1242, !615}
!1242 = !DILocation(line: 660, column: 17, scope: !1205)
!1243 = !DILocation(line: 663, column: 41, scope: !1201)
!1244 = !{!1118, !401, i64 8}
!1245 = !DILocation(line: 663, column: 33, scope: !1201)
!1246 = !DILocation(line: 663, column: 19, scope: !1201)
!1247 = !DILocation(line: 663, column: 31, scope: !1201)
!1248 = !DILocation(line: 0, scope: !762, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 665, column: 26, scope: !1201)
!1250 = !DILocation(line: 126, column: 29, scope: !762, inlinedAt: !1249)
!1251 = !DILocation(line: 126, column: 9, scope: !762, inlinedAt: !1249)
!1252 = !DILocation(line: 0, scope: !963, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 666, column: 26, scope: !1201)
!1254 = !DILocation(line: 0, scope: !973, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1253)
!1256 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1255)
!1257 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1253)
!1258 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1253)
!1259 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1253)
!1260 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1253)
!1261 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1253)
!1262 = !DILocation(line: 0, scope: !769, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 667, column: 26, scope: !1201)
!1264 = !DILocation(line: 130, column: 9, scope: !769, inlinedAt: !1263)
!1265 = !DILocation(line: 130, column: 21, scope: !769, inlinedAt: !1263)
!1266 = !DILocation(line: 131, column: 30, scope: !769, inlinedAt: !1263)
!1267 = !DILocation(line: 131, column: 9, scope: !769, inlinedAt: !1263)
!1268 = !DILocation(line: 0, scope: !778, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 668, column: 26, scope: !1201)
!1270 = !DILocation(line: 135, column: 9, scope: !778, inlinedAt: !1269)
!1271 = !DILocation(line: 671, column: 20, scope: !1201)
!1272 = distinct !{!1272, !1213, !1273, !615}
!1273 = !DILocation(line: 677, column: 5, scope: !1190)
!1274 = !DILocation(line: 679, column: 13, scope: !1190)
!1275 = !DILocation(line: 679, column: 5, scope: !1190)
!1276 = !DILocation(line: 0, scope: !963, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 681, column: 18, scope: !1190)
!1278 = !DILocation(line: 0, scope: !973, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1277)
!1280 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1279)
!1281 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1277)
!1282 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1277)
!1283 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1277)
!1284 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1277)
!1285 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1277)
!1286 = !DILocation(line: 685, column: 1, scope: !1190)
!1287 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj", scope: !2, file: !6, line: 687, type: !1288, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!22, !22, !22}
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1299, !1303, !1304, !1305, !1307, !1308, !1313, !1315, !1317}
!1291 = !DILocalVariable(name: "addr", arg: 1, scope: !1287, file: !6, line: 687, type: !22)
!1292 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1287, file: !6, line: 687, type: !22)
!1293 = !DILocalVariable(name: "bucket", scope: !1287, file: !6, line: 688, type: !793)
!1294 = !DILocalVariable(name: "data_location", scope: !1287, file: !6, line: 690, type: !266)
!1295 = !DILocalVariable(name: "prev", scope: !1287, file: !6, line: 691, type: !251)
!1296 = !DILocalVariable(name: "data", scope: !1287, file: !6, line: 692, type: !251)
!1297 = !DILocalVariable(name: "waiters", scope: !1287, file: !6, line: 693, type: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !25)
!1299 = !DILocalVariable(name: "temp_list_storage", scope: !1287, file: !6, line: 694, type: !1300)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 16)
!1303 = !DILocalVariable(name: "temp_list", scope: !1287, file: !6, line: 695, type: !266)
!1304 = !DILocalVariable(name: "max_waiters", scope: !1287, file: !6, line: 696, type: !1298)
!1305 = !DILocalVariable(name: "cur_addr", scope: !1306, file: !6, line: 699, type: !22)
!1306 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 698, column: 29)
!1307 = !DILocalVariable(name: "next", scope: !1306, file: !6, line: 702, type: !251)
!1308 = !DILocalVariable(name: "temp", scope: !1309, file: !6, line: 711, type: !266)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !6, line: 710, column: 41)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !6, line: 710, column: 17)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !6, line: 703, column: 31)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !6, line: 703, column: 13)
!1313 = !DILocalVariable(name: "i", scope: !1314, file: !6, line: 713, type: !1298)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !6, line: 713, column: 17)
!1315 = !DILocalVariable(name: "i", scope: !1316, file: !6, line: 737, type: !1298)
!1316 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 737, column: 5)
!1317 = !DILocalVariable(name: "i", scope: !1318, file: !6, line: 742, type: !1298)
!1318 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 742, column: 5)
!1319 = !DILocation(line: 0, scope: !1287)
!1320 = !DILocation(line: 688, column: 27, scope: !1287)
!1321 = !DILocation(line: 690, column: 42, scope: !1287)
!1322 = !DILocation(line: 692, column: 24, scope: !1287)
!1323 = !DILocation(line: 694, column: 5, scope: !1287)
!1324 = !DILocation(line: 694, column: 17, scope: !1287)
!1325 = !DILocation(line: 695, column: 31, scope: !1287)
!1326 = !DILocation(line: 698, column: 17, scope: !1287)
!1327 = !DILocation(line: 698, column: 5, scope: !1287)
!1328 = !DILocation(line: 700, column: 36, scope: !1306)
!1329 = !DILocation(line: 700, column: 9, scope: !1306)
!1330 = !DILocation(line: 702, column: 34, scope: !1306)
!1331 = !DILocation(line: 0, scope: !1306)
!1332 = !DILocation(line: 703, column: 22, scope: !1312)
!1333 = !DILocation(line: 0, scope: !1312)
!1334 = !DILocation(line: 703, column: 13, scope: !1306)
!1335 = !DILocation(line: 706, column: 24, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1311, file: !6, line: 706, column: 17)
!1337 = !DILocation(line: 706, column: 29, scope: !1336)
!1338 = !DILocation(line: 706, column: 17, scope: !1311)
!1339 = !DILocation(line: 707, column: 29, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !6, line: 706, column: 38)
!1341 = !DILocation(line: 708, column: 13, scope: !1340)
!1342 = !DILocation(line: 710, column: 25, scope: !1310)
!1343 = !DILocation(line: 710, column: 17, scope: !1311)
!1344 = !DILocation(line: 0, scope: !1309)
!1345 = !DILocation(line: 712, column: 86, scope: !1309)
!1346 = !DILocation(line: 712, column: 44, scope: !1309)
!1347 = !DILocation(line: 712, column: 29, scope: !1309)
!1348 = !DILocation(line: 0, scope: !1314)
!1349 = !DILocation(line: 713, column: 38, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1314, file: !6, line: 713, column: 17)
!1351 = !DILocation(line: 713, column: 17, scope: !1314)
!1352 = !DILocation(line: 716, column: 29, scope: !1309)
!1353 = !DILocation(line: 717, column: 26, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1309, file: !6, line: 717, column: 21)
!1355 = !DILocation(line: 717, column: 21, scope: !1309)
!1356 = !DILocation(line: 714, column: 36, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !6, line: 713, column: 58)
!1358 = !DILocation(line: 714, column: 21, scope: !1357)
!1359 = !DILocation(line: 714, column: 34, scope: !1357)
!1360 = !DILocation(line: 713, column: 54, scope: !1350)
!1361 = distinct !{!1361, !1351, !1362, !615}
!1362 = !DILocation(line: 715, column: 17, scope: !1314)
!1363 = !DILocation(line: 718, column: 26, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1354, file: !6, line: 717, column: 52)
!1365 = !DILocation(line: 718, column: 21, scope: !1364)
!1366 = !DILocation(line: 719, column: 17, scope: !1364)
!1367 = !DILocation(line: 722, column: 19, scope: !1311)
!1368 = !DILocation(line: 722, column: 31, scope: !1311)
!1369 = !DILocation(line: 724, column: 30, scope: !1311)
!1370 = !DILocation(line: 724, column: 13, scope: !1311)
!1371 = !DILocation(line: 724, column: 34, scope: !1311)
!1372 = !DILocation(line: 0, scope: !762, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 725, column: 26, scope: !1311)
!1374 = !DILocation(line: 126, column: 29, scope: !762, inlinedAt: !1373)
!1375 = !DILocation(line: 126, column: 9, scope: !762, inlinedAt: !1373)
!1376 = !DILocation(line: 728, column: 9, scope: !1311)
!1377 = distinct !{!1377, !1327, !1378, !615}
!1378 = !DILocation(line: 733, column: 5, scope: !1287)
!1379 = !DILocation(line: 0, scope: !963, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 735, column: 18, scope: !1287)
!1381 = !DILocation(line: 307, column: 51, scope: !963, inlinedAt: !1380)
!1382 = !DILocation(line: 0, scope: !973, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 307, column: 25, scope: !963, inlinedAt: !1380)
!1384 = !DILocation(line: 131, column: 12, scope: !973, inlinedAt: !1383)
!1385 = !DILocation(line: 310, column: 39, scope: !963, inlinedAt: !1380)
!1386 = !DILocation(line: 310, column: 57, scope: !963, inlinedAt: !1380)
!1387 = !DILocation(line: 313, column: 31, scope: !982, inlinedAt: !1380)
!1388 = !DILocation(line: 735, column: 12, scope: !1287)
!1389 = !DILocation(line: 314, column: 13, scope: !985, inlinedAt: !1380)
!1390 = !DILocation(line: 315, column: 9, scope: !985, inlinedAt: !1380)
!1391 = !DILocation(line: 0, scope: !1316)
!1392 = !DILocation(line: 737, column: 26, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1316, file: !6, line: 737, column: 5)
!1394 = !DILocation(line: 737, column: 5, scope: !1316)
!1395 = !DILocation(line: 738, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !6, line: 737, column: 42)
!1397 = !DILocation(line: 0, scope: !769, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 738, column: 30, scope: !1396)
!1399 = !DILocation(line: 130, column: 9, scope: !769, inlinedAt: !1398)
!1400 = !DILocation(line: 130, column: 21, scope: !769, inlinedAt: !1398)
!1401 = !DILocation(line: 131, column: 30, scope: !769, inlinedAt: !1398)
!1402 = !DILocation(line: 131, column: 9, scope: !769, inlinedAt: !1398)
!1403 = !DILocation(line: 737, column: 38, scope: !1393)
!1404 = distinct !{!1404, !1394, !1405, !615}
!1405 = !DILocation(line: 739, column: 5, scope: !1316)
!1406 = !DILocation(line: 746, column: 19, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 746, column: 9)
!1408 = !DILocation(line: 746, column: 9, scope: !1287)
!1409 = !DILocation(line: 0, scope: !1318)
!1410 = !DILocation(line: 743, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !6, line: 742, column: 42)
!1412 = distinct !DILexicalBlock(scope: !1318, file: !6, line: 742, column: 5)
!1413 = !DILocation(line: 0, scope: !778, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 743, column: 30, scope: !1411)
!1415 = !DILocation(line: 135, column: 31, scope: !778, inlinedAt: !1414)
!1416 = !DILocation(line: 135, column: 9, scope: !778, inlinedAt: !1414)
!1417 = !DILocation(line: 742, column: 38, scope: !1412)
!1418 = !DILocation(line: 742, column: 26, scope: !1412)
!1419 = !DILocation(line: 742, column: 5, scope: !1318)
!1420 = distinct !{!1420, !1419, !1421, !615}
!1421 = !DILocation(line: 744, column: 5, scope: !1318)
!1422 = !DILocation(line: 747, column: 14, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1407, file: !6, line: 746, column: 45)
!1424 = !DILocation(line: 747, column: 9, scope: !1423)
!1425 = !DILocation(line: 748, column: 5, scope: !1423)
!1426 = !DILocation(line: 751, column: 1, scope: !1287)
!1427 = !DILocation(line: 750, column: 5, scope: !1287)
!1428 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj", scope: !2, file: !6, line: 753, type: !1429, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!29, !22, !22, !1072, !22}
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1446}
!1432 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1428, file: !6, line: 753, type: !22)
!1433 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1428, file: !6, line: 753, type: !22)
!1434 = !DILocalVariable(name: "control", arg: 3, scope: !1428, file: !6, line: 753, type: !1072)
!1435 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1428, file: !6, line: 753, type: !22)
!1436 = !DILocalVariable(name: "buckets", scope: !1428, file: !6, line: 754, type: !836)
!1437 = !DILocalVariable(name: "action", scope: !1428, file: !6, line: 756, type: !278)
!1438 = !DILocalVariable(name: "data_location", scope: !1428, file: !6, line: 762, type: !266)
!1439 = !DILocalVariable(name: "prev", scope: !1428, file: !6, line: 763, type: !251)
!1440 = !DILocalVariable(name: "data", scope: !1428, file: !6, line: 764, type: !251)
!1441 = !DILocalVariable(name: "requeue", scope: !1428, file: !6, line: 765, type: !251)
!1442 = !DILocalVariable(name: "requeue_tail", scope: !1428, file: !6, line: 766, type: !251)
!1443 = !DILocalVariable(name: "wakeup", scope: !1428, file: !6, line: 767, type: !251)
!1444 = !DILocalVariable(name: "cur_addr", scope: !1445, file: !6, line: 770, type: !22)
!1445 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 769, column: 29)
!1446 = !DILocalVariable(name: "next", scope: !1445, file: !6, line: 773, type: !251)
!1447 = !DILocation(line: 0, scope: !1428)
!1448 = !DILocation(line: 754, column: 5, scope: !1428)
!1449 = !DILocation(line: 754, column: 17, scope: !1428)
!1450 = !DILocation(line: 754, column: 27, scope: !1428)
!1451 = !DILocation(line: 756, column: 5, scope: !1428)
!1452 = !DILocation(line: 756, column: 21, scope: !1428)
!1453 = !DILocation(line: 0, scope: !1105, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 756, column: 21, scope: !1428)
!1455 = !DILocation(line: 577, column: 10, scope: !1105, inlinedAt: !1454)
!1456 = !DILocation(line: 578, column: 15, scope: !1105, inlinedAt: !1454)
!1457 = !DILocation(line: 757, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 757, column: 9)
!1459 = !DILocation(line: 757, column: 27, scope: !1458)
!1460 = !DILocation(line: 757, column: 10, scope: !1458)
!1461 = !DILocation(line: 757, column: 9, scope: !1428)
!1462 = !DILocation(line: 758, column: 9, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 757, column: 46)
!1464 = !DILocation(line: 759, column: 9, scope: !1463)
!1465 = !DILocation(line: 762, column: 43, scope: !1428)
!1466 = !DILocation(line: 762, column: 48, scope: !1428)
!1467 = !DILocation(line: 764, column: 24, scope: !1428)
!1468 = !DILocation(line: 769, column: 17, scope: !1428)
!1469 = !DILocation(line: 769, column: 5, scope: !1428)
!1470 = !DILocation(line: 771, column: 36, scope: !1445)
!1471 = !DILocation(line: 771, column: 9, scope: !1445)
!1472 = !DILocation(line: 773, column: 34, scope: !1445)
!1473 = !DILocation(line: 0, scope: !1445)
!1474 = !DILocation(line: 774, column: 22, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1445, file: !6, line: 774, column: 13)
!1476 = !DILocation(line: 774, column: 13, scope: !1445)
!1477 = !DILocation(line: 775, column: 28, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !6, line: 774, column: 36)
!1479 = !DILocation(line: 777, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !6, line: 777, column: 17)
!1481 = !DILocation(line: 777, column: 30, scope: !1480)
!1482 = !DILocation(line: 777, column: 35, scope: !1480)
!1483 = !DILocation(line: 777, column: 17, scope: !1478)
!1484 = !DILocation(line: 778, column: 35, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !6, line: 777, column: 44)
!1486 = !DILocation(line: 779, column: 13, scope: !1485)
!1487 = !DILocation(line: 781, column: 35, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !6, line: 781, column: 17)
!1489 = !DILocation(line: 784, column: 29, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !6, line: 784, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !6, line: 783, column: 20)
!1492 = !DILocation(line: 784, column: 21, scope: !1491)
!1493 = !DILocation(line: 787, column: 35, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !6, line: 786, column: 24)
!1495 = !DILocation(line: 787, column: 40, scope: !1494)
!1496 = !DILocalVariable(name: "addr", arg: 1, scope: !1497, file: !6, line: 149, type: !302)
!1497 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPjS4_", scope: !497, file: !6, line: 149, type: !1498, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !302, !302}
!1500 = !{!1496, !1501}
!1501 = !DILocalVariable(name: "val", arg: 2, scope: !1497, file: !6, line: 149, type: !302)
!1502 = !DILocation(line: 0, scope: !1497, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 791, column: 17, scope: !1491)
!1504 = !DILocation(line: 150, column: 11, scope: !1497, inlinedAt: !1503)
!1505 = !DILocation(line: 765, column: 17, scope: !1428)
!1506 = !DILocation(line: 766, column: 17, scope: !1428)
!1507 = distinct !{!1507, !1469, !1508, !615}
!1508 = !DILocation(line: 800, column: 5, scope: !1428)
!1509 = !DILocation(line: 802, column: 17, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 802, column: 9)
!1511 = !DILocation(line: 802, column: 9, scope: !1428)
!1512 = !DILocation(line: 803, column: 23, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !6, line: 802, column: 29)
!1514 = !DILocation(line: 803, column: 28, scope: !1513)
!1515 = !DILocation(line: 804, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !6, line: 804, column: 13)
!1517 = !DILocation(line: 804, column: 24, scope: !1516)
!1518 = !DILocation(line: 804, column: 29, scope: !1516)
!1519 = !DILocation(line: 804, column: 13, scope: !1513)
!1520 = !DILocation(line: 807, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !6, line: 806, column: 16)
!1522 = !DILocation(line: 807, column: 30, scope: !1521)
!1523 = !DILocation(line: 0, scope: !1516)
!1524 = !DILocation(line: 809, column: 20, scope: !1513)
!1525 = !DILocation(line: 809, column: 25, scope: !1513)
!1526 = !DILocation(line: 810, column: 5, scope: !1513)
!1527 = !DILocation(line: 812, column: 13, scope: !1428)
!1528 = !{!1118, !401, i64 12}
!1529 = !DILocation(line: 812, column: 55, scope: !1428)
!1530 = !DILocation(line: 812, column: 5, scope: !1428)
!1531 = !DILocation(line: 814, column: 9, scope: !1428)
!1532 = !DILocation(line: 815, column: 17, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !6, line: 814, column: 28)
!1534 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 814, column: 9)
!1535 = !DILocation(line: 815, column: 29, scope: !1533)
!1536 = !DILocation(line: 0, scope: !762, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 816, column: 24, scope: !1533)
!1538 = !DILocation(line: 126, column: 29, scope: !762, inlinedAt: !1537)
!1539 = !DILocation(line: 126, column: 9, scope: !762, inlinedAt: !1537)
!1540 = !DILocation(line: 817, column: 9, scope: !1533)
!1541 = !DILocation(line: 0, scope: !769, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 818, column: 24, scope: !1533)
!1543 = !DILocation(line: 130, column: 9, scope: !769, inlinedAt: !1542)
!1544 = !DILocation(line: 130, column: 21, scope: !769, inlinedAt: !1542)
!1545 = !DILocation(line: 131, column: 30, scope: !769, inlinedAt: !1542)
!1546 = !DILocation(line: 131, column: 9, scope: !769, inlinedAt: !1542)
!1547 = !DILocation(line: 0, scope: !778, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 819, column: 24, scope: !1533)
!1549 = !DILocation(line: 135, column: 9, scope: !778, inlinedAt: !1548)
!1550 = !DILocation(line: 820, column: 5, scope: !1533)
!1551 = !DILocation(line: 821, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1534, file: !6, line: 820, column: 12)
!1553 = !DILocation(line: 824, column: 30, scope: !1428)
!1554 = !DILocation(line: 824, column: 12, scope: !1428)
!1555 = !DILocation(line: 825, column: 1, scope: !1428)
!1556 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 840, type: !275, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1557)
!1557 = !{!1558, !1559, !1560, !1561}
!1558 = !DILocalVariable(name: "control", arg: 1, scope: !1556, file: !6, line: 840, type: !43)
!1559 = !DILocalVariable(name: "action", arg: 2, scope: !1556, file: !6, line: 840, type: !277)
!1560 = !DILocalVariable(name: "mutex_control", scope: !1556, file: !6, line: 841, type: !267)
!1561 = !DILocalVariable(name: "result", scope: !1556, file: !6, line: 843, type: !22)
!1562 = !DILocation(line: 0, scope: !1556)
!1563 = !DILocation(line: 844, column: 40, scope: !1556)
!1564 = !{!1565, !401, i64 16}
!1565 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !401, i64 16}
!1566 = !DILocation(line: 844, column: 5, scope: !1556)
!1567 = !DILocation(line: 845, column: 19, scope: !1556)
!1568 = !DILocation(line: 845, column: 5, scope: !1556)
!1569 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !2, file: !6, line: 849, type: !289, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575}
!1571 = !DILocalVariable(name: "control", arg: 1, scope: !1569, file: !6, line: 849, type: !43)
!1572 = !DILocalVariable(name: "unparked", arg: 2, scope: !1569, file: !6, line: 849, type: !29)
!1573 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1569, file: !6, line: 849, type: !64)
!1574 = !DILocalVariable(name: "mutex_control", scope: !1569, file: !6, line: 850, type: !267)
!1575 = !DILocalVariable(name: "return_state", scope: !1569, file: !6, line: 853, type: !22)
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 853, column: 30, scope: !1569)
!1578 = !DILocation(line: 854, column: 41, scope: !1569)
!1579 = !DILocalVariable(name: "addr", arg: 1, scope: !1580, file: !6, line: 154, type: !510)
!1580 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIjEEvPT_S6_", scope: !497, file: !6, line: 154, type: !669, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !516, retainedNodes: !1581)
!1581 = !{!1579, !1582}
!1582 = !DILocalVariable(name: "val", arg: 2, scope: !1580, file: !6, line: 154, type: !510)
!1583 = !DILocation(line: 0, scope: !1580, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 854, column: 5, scope: !1569)
!1585 = !DILocation(line: 155, column: 11, scope: !1580, inlinedAt: !1584)
!1586 = !DILocation(line: 156, column: 5, scope: !1580, inlinedAt: !1584)
!1587 = !DILocation(line: 856, column: 5, scope: !1569)
!1588 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !2, file: !6, line: 968, type: !289, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DILocalVariable(name: "control", arg: 1, scope: !1588, file: !6, line: 968, type: !43)
!1591 = !DILocalVariable(name: "unparked", arg: 2, scope: !1588, file: !6, line: 968, type: !29)
!1592 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1588, file: !6, line: 968, type: !64)
!1593 = !DILocalVariable(name: "signal_control", scope: !1588, file: !6, line: 969, type: !307)
!1594 = !DILocalVariable(name: "val", scope: !1595, file: !6, line: 972, type: !22)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !6, line: 971, column: 24)
!1596 = distinct !DILexicalBlock(scope: !1588, file: !6, line: 971, column: 9)
!1597 = !DILocation(line: 0, scope: !1588)
!1598 = !DILocation(line: 971, column: 9, scope: !1588)
!1599 = !DILocation(line: 0, scope: !1595)
!1600 = !DILocation(line: 973, column: 46, scope: !1595)
!1601 = !{!1602, !401, i64 16}
!1602 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !401, i64 16, !401, i64 20}
!1603 = !DILocation(line: 0, scope: !1497, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 973, column: 9, scope: !1595)
!1605 = !DILocation(line: 150, column: 11, scope: !1497, inlinedAt: !1604)
!1606 = !DILocation(line: 974, column: 5, scope: !1595)
!1607 = !DILocation(line: 979, column: 5, scope: !1588)
!1608 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 996, type: !275, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DILocalVariable(name: "control", arg: 1, scope: !1608, file: !6, line: 996, type: !43)
!1611 = !DILocalVariable(name: "action", arg: 2, scope: !1608, file: !6, line: 996, type: !277)
!1612 = !DILocalVariable(name: "broadcast_control", scope: !1608, file: !6, line: 997, type: !332)
!1613 = !DILocalVariable(name: "val", scope: !1608, file: !6, line: 999, type: !22)
!1614 = !DILocation(line: 0, scope: !1608)
!1615 = !DILocation(line: 1000, column: 44, scope: !1608)
!1616 = !{!1617, !401, i64 16}
!1617 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !401, i64 16, !401, i64 20}
!1618 = !DILocation(line: 1000, column: 5, scope: !1608)
!1619 = !DILocation(line: 1004, column: 46, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !6, line: 1004, column: 9)
!1621 = !{!1617, !401, i64 20}
!1622 = !DILocation(line: 1004, column: 16, scope: !1620)
!1623 = !DILocation(line: 1004, column: 13, scope: !1620)
!1624 = !DILocation(line: 1004, column: 9, scope: !1608)
!1625 = !DILocation(line: 0, scope: !1497, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 1009, column: 5, scope: !1608)
!1627 = !DILocation(line: 150, column: 11, scope: !1497, inlinedAt: !1626)
!1628 = !DILocalVariable(name: "this", arg: 1, scope: !1629, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1629 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !314, file: !6, line: 938, type: !325, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !324, retainedNodes: !1630)
!1630 = !{!1628, !1631, !1632}
!1631 = !DILocalVariable(name: "val", scope: !1629, file: !6, line: 939, type: !22)
!1632 = !DILocalVariable(name: "desired", scope: !1633, file: !6, line: 946, type: !22)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !6, line: 941, column: 22)
!1634 = !DILocation(line: 0, scope: !1629, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 1011, column: 52, scope: !1608)
!1636 = !DILocation(line: 940, column: 30, scope: !1629, inlinedAt: !1635)
!1637 = !DILocation(line: 940, column: 9, scope: !1629, inlinedAt: !1635)
!1638 = !DILocation(line: 941, column: 9, scope: !1629, inlinedAt: !1635)
!1639 = !DILocation(line: 942, column: 23, scope: !1640, inlinedAt: !1635)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !6, line: 942, column: 17)
!1641 = !DILocation(line: 942, column: 18, scope: !1640, inlinedAt: !1635)
!1642 = !DILocation(line: 942, column: 17, scope: !1633, inlinedAt: !1635)
!1643 = !DILocation(line: 946, column: 37, scope: !1633, inlinedAt: !1635)
!1644 = !DILocation(line: 0, scope: !1633, inlinedAt: !1635)
!1645 = !DILocalVariable(name: "addr", arg: 1, scope: !1646, file: !6, line: 122, type: !302)
!1646 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPjS4_S4_", scope: !497, file: !6, line: 122, type: !498, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1647)
!1647 = !{!1645, !1648, !1649}
!1648 = !DILocalVariable(name: "expected", arg: 2, scope: !1646, file: !6, line: 122, type: !302)
!1649 = !DILocalVariable(name: "desired", arg: 3, scope: !1646, file: !6, line: 122, type: !302)
!1650 = !DILocation(line: 0, scope: !1646, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 947, column: 17, scope: !1652, inlinedAt: !1635)
!1652 = distinct !DILexicalBlock(scope: !1633, file: !6, line: 947, column: 17)
!1653 = !DILocation(line: 0, scope: !507, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 123, column: 12, scope: !1646, inlinedAt: !1651)
!1655 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1654)
!1656 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1654)
!1657 = distinct !{!1657, !1638, !1658}
!1658 = !DILocation(line: 950, column: 9, scope: !1629, inlinedAt: !1635)
!1659 = !DILocation(line: 1011, column: 12, scope: !1608)
!1660 = !DILocation(line: 1011, column: 23, scope: !1608)
!1661 = !DILocation(line: 1013, column: 5, scope: !1608)
!1662 = !DILocation(line: 1014, column: 1, scope: !1608)
!1663 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 1016, type: !293, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669}
!1665 = !DILocalVariable(name: "control", arg: 1, scope: !1663, file: !6, line: 1016, type: !43)
!1666 = !DILocalVariable(name: "action", arg: 2, scope: !1663, file: !6, line: 1016, type: !295)
!1667 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1663, file: !6, line: 1016, type: !64)
!1668 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1663, file: !6, line: 1016, type: !64)
!1669 = !DILocalVariable(name: "broadcast_control", scope: !1663, file: !6, line: 1017, type: !332)
!1670 = !DILocation(line: 0, scope: !1663)
!1671 = !DILocation(line: 1019, column: 16, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1663, file: !6, line: 1019, column: 9)
!1673 = !DILocation(line: 1019, column: 27, scope: !1672)
!1674 = !DILocation(line: 1020, column: 28, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !6, line: 1019, column: 45)
!1676 = !DILocalVariable(name: "this", arg: 1, scope: !1677, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !314, file: !6, line: 953, type: !318, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !327, retainedNodes: !1678)
!1678 = !{!1676}
!1679 = !DILocation(line: 0, scope: !1677, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 1020, column: 35, scope: !1675)
!1681 = !DILocation(line: 954, column: 34, scope: !1677, inlinedAt: !1680)
!1682 = !DILocalVariable(name: "addr", arg: 1, scope: !1683, file: !6, line: 145, type: !302)
!1683 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPjj", scope: !497, file: !6, line: 145, type: !754, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1684)
!1684 = !{!1682, !1685}
!1685 = !DILocalVariable(name: "val", arg: 2, scope: !1683, file: !6, line: 145, type: !22)
!1686 = !DILocation(line: 0, scope: !1683, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 954, column: 9, scope: !1677, inlinedAt: !1680)
!1688 = !DILocation(line: 146, column: 12, scope: !1683, inlinedAt: !1687)
!1689 = !DILocation(line: 1021, column: 5, scope: !1675)
!1690 = !DILocation(line: 1022, column: 1, scope: !1663)
!1691 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 1038, type: !275, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1692)
!1692 = !{!1693, !1694, !1695, !1696}
!1693 = !DILocalVariable(name: "control", arg: 1, scope: !1691, file: !6, line: 1038, type: !43)
!1694 = !DILocalVariable(name: "action", arg: 2, scope: !1691, file: !6, line: 1038, type: !277)
!1695 = !DILocalVariable(name: "wait_control", scope: !1691, file: !6, line: 1039, type: !342)
!1696 = !DILocalVariable(name: "val", scope: !1691, file: !6, line: 1041, type: !22)
!1697 = !DILocation(line: 0, scope: !1691)
!1698 = !DILocation(line: 1042, column: 39, scope: !1691)
!1699 = !{!1700, !401, i64 16}
!1700 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !401, i64 16, !401, i64 20}
!1701 = !DILocation(line: 1042, column: 5, scope: !1691)
!1702 = !DILocation(line: 1044, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1691, file: !6, line: 1044, column: 9)
!1704 = !DILocation(line: 0, scope: !1703)
!1705 = !{!1700, !401, i64 20}
!1706 = !DILocation(line: 1044, column: 9, scope: !1691)
!1707 = !DILocation(line: 1047, column: 20, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !6, line: 1047, column: 16)
!1709 = !DILocation(line: 1047, column: 16, scope: !1703)
!1710 = !DILocation(line: 1049, column: 16, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !6, line: 1047, column: 55)
!1712 = !DILocation(line: 1050, column: 9, scope: !1711)
!1713 = !DILocation(line: 1054, column: 1, scope: !1691)
!1714 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1715)
!1715 = !{!1716, !1717}
!1716 = !DILocalVariable(name: "control", arg: 1, scope: !1714, file: !6, line: 1056, type: !43)
!1717 = !DILocalVariable(name: "wait_control", scope: !1714, file: !6, line: 1057, type: !342)
!1718 = !DILocation(line: 0, scope: !1714)
!1719 = !DILocation(line: 1059, column: 19, scope: !1714)
!1720 = !DILocalVariable(name: "this", arg: 1, scope: !1721, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1721 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !314, file: !6, line: 929, type: !318, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !323, retainedNodes: !1722)
!1722 = !{!1720, !1723, !1724}
!1723 = !DILocalVariable(name: "expected", scope: !1721, file: !6, line: 930, type: !22)
!1724 = !DILocalVariable(name: "desired", scope: !1721, file: !6, line: 931, type: !22)
!1725 = !DILocation(line: 0, scope: !1721, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 1059, column: 26, scope: !1714)
!1727 = !DILocation(line: 933, column: 47, scope: !1728, inlinedAt: !1726)
!1728 = distinct !DILexicalBlock(scope: !1721, file: !6, line: 933, column: 13)
!1729 = !DILocation(line: 0, scope: !589, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 933, column: 14, scope: !1728, inlinedAt: !1726)
!1731 = !DILocation(line: 0, scope: !507, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 114, column: 12, scope: !589, inlinedAt: !1730)
!1733 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1732)
!1734 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1732)
!1735 = !DILocation(line: 933, column: 13, scope: !1721, inlinedAt: !1726)
!1736 = !DILocalVariable(name: "this", arg: 1, scope: !1737, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1737 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !314, file: !6, line: 906, type: !318, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1738)
!1738 = !{!1736, !1739, !1740, !1741}
!1739 = !DILocalVariable(name: "expected", scope: !1737, file: !6, line: 907, type: !22)
!1740 = !DILocalVariable(name: "desired", scope: !1737, file: !6, line: 908, type: !22)
!1741 = !DILocalVariable(name: "control", scope: !1737, file: !6, line: 915, type: !268)
!1742 = !DILocation(line: 0, scope: !1737, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 934, column: 13, scope: !1744, inlinedAt: !1726)
!1744 = distinct !DILexicalBlock(scope: !1728, file: !6, line: 933, column: 76)
!1745 = !DILocalVariable(name: "addr", arg: 1, scope: !1746, file: !6, line: 109, type: !302)
!1746 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPjS4_S4_", scope: !497, file: !6, line: 109, type: !498, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1747)
!1747 = !{!1745, !1748, !1749}
!1748 = !DILocalVariable(name: "expected", arg: 2, scope: !1746, file: !6, line: 109, type: !302)
!1749 = !DILocalVariable(name: "desired", arg: 3, scope: !1746, file: !6, line: 109, type: !302)
!1750 = !DILocation(line: 0, scope: !1746, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 911, column: 13, scope: !1752, inlinedAt: !1743)
!1752 = distinct !DILexicalBlock(scope: !1737, file: !6, line: 911, column: 13)
!1753 = !DILocation(line: 0, scope: !507, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 110, column: 12, scope: !1746, inlinedAt: !1751)
!1755 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1754)
!1756 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1754)
!1757 = !DILocation(line: 911, column: 13, scope: !1737, inlinedAt: !1743)
!1758 = !DILocation(line: 915, column: 9, scope: !1737, inlinedAt: !1743)
!1759 = !DILocation(line: 915, column: 31, scope: !1737, inlinedAt: !1743)
!1760 = !DILocalVariable(name: "this", arg: 1, scope: !1761, type: !267, flags: DIFlagArtificial | DIFlagObjectPointer)
!1761 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPj", scope: !268, file: !6, line: 832, type: !304, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !303, retainedNodes: !1762)
!1762 = !{!1760, !1763}
!1763 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1761, file: !6, line: 832, type: !302)
!1764 = !DILocation(line: 0, scope: !1761, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 915, column: 31, scope: !1737, inlinedAt: !1743)
!1766 = !DILocalVariable(name: "this", arg: 1, scope: !1767, type: !1769, flags: DIFlagArtificial | DIFlagObjectPointer)
!1767 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !271, file: !6, line: 598, type: !298, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !297, retainedNodes: !1768)
!1768 = !{!1766}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 32)
!1770 = !DILocation(line: 0, scope: !1767, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 832, column: 19, scope: !1761, inlinedAt: !1765)
!1772 = !DILocation(line: 599, column: 11, scope: !1767, inlinedAt: !1771)
!1773 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !1771)
!1774 = !DILocation(line: 600, column: 11, scope: !1767, inlinedAt: !1771)
!1775 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !1771)
!1776 = !DILocation(line: 833, column: 11, scope: !1761, inlinedAt: !1765)
!1777 = !DILocation(line: 834, column: 18, scope: !1778, inlinedAt: !1765)
!1778 = distinct !DILexicalBlock(scope: !1761, file: !6, line: 833, column: 34)
!1779 = !DILocation(line: 835, column: 16, scope: !1778, inlinedAt: !1765)
!1780 = !DILocation(line: 916, column: 20, scope: !1737, inlinedAt: !1743)
!1781 = !DILocation(line: 916, column: 37, scope: !1737, inlinedAt: !1743)
!1782 = !DILocation(line: 916, column: 9, scope: !1737, inlinedAt: !1743)
!1783 = !DILocation(line: 917, column: 5, scope: !1737, inlinedAt: !1743)
!1784 = !DILocation(line: 1060, column: 1, scope: !1714)
!1785 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !2, file: !6, line: 1062, type: !289, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791}
!1787 = !DILocalVariable(name: "control", arg: 1, scope: !1785, file: !6, line: 1062, type: !43)
!1788 = !DILocalVariable(name: "unparked", arg: 2, scope: !1785, file: !6, line: 1062, type: !29)
!1789 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1785, file: !6, line: 1062, type: !64)
!1790 = !DILocalVariable(name: "wait_control", scope: !1785, file: !6, line: 1063, type: !342)
!1791 = !DILocalVariable(name: "val", scope: !1792, file: !6, line: 1066, type: !22)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !6, line: 1065, column: 24)
!1793 = distinct !DILexicalBlock(scope: !1785, file: !6, line: 1065, column: 9)
!1794 = !DILocation(line: 0, scope: !1785)
!1795 = !DILocation(line: 1065, column: 9, scope: !1785)
!1796 = !DILocation(line: 0, scope: !1792)
!1797 = !DILocation(line: 1067, column: 44, scope: !1792)
!1798 = !DILocation(line: 0, scope: !1497, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1067, column: 9, scope: !1792)
!1800 = !DILocation(line: 150, column: 11, scope: !1497, inlinedAt: !1799)
!1801 = !DILocation(line: 1068, column: 5, scope: !1792)
!1802 = !DILocation(line: 1069, column: 5, scope: !1785)
!1803 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1804, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !369}
!1806 = !{!1807, !1808}
!1807 = !DILocalVariable(name: "mutex", arg: 1, scope: !1803, file: !6, line: 1131, type: !369)
!1808 = !DILocalVariable(name: "fast_mutex", scope: !1803, file: !6, line: 1132, type: !313)
!1809 = !DILocation(line: 0, scope: !1803)
!1810 = !DILocalVariable(name: "this", arg: 1, scope: !1811, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1811 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !314, file: !6, line: 920, type: !318, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1812)
!1812 = !{!1810, !1813, !1814}
!1813 = !DILocalVariable(name: "expected", scope: !1811, file: !6, line: 921, type: !22)
!1814 = !DILocalVariable(name: "desired", scope: !1811, file: !6, line: 922, type: !22)
!1815 = !DILocation(line: 0, scope: !1811, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 1134, column: 17, scope: !1803)
!1817 = !DILocation(line: 924, column: 47, scope: !1818, inlinedAt: !1816)
!1818 = distinct !DILexicalBlock(scope: !1811, file: !6, line: 924, column: 13)
!1819 = !DILocation(line: 0, scope: !496, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 924, column: 14, scope: !1818, inlinedAt: !1816)
!1821 = !DILocation(line: 0, scope: !507, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !1820)
!1823 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1822)
!1824 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1822)
!1825 = !DILocation(line: 924, column: 13, scope: !1811, inlinedAt: !1816)
!1826 = !DILocalVariable(name: "this", arg: 1, scope: !1827, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1827 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !314, file: !6, line: 862, type: !318, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !317, retainedNodes: !1828)
!1828 = !{!1826, !1829, !1830, !1831, !1835, !1838, !1839}
!1829 = !DILocalVariable(name: "spinner", scope: !1827, file: !6, line: 864, type: !465)
!1830 = !DILocalVariable(name: "expected", scope: !1827, file: !6, line: 865, type: !22)
!1831 = !DILocalVariable(name: "desired", scope: !1832, file: !6, line: 870, type: !22)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !6, line: 869, column: 41)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !6, line: 869, column: 17)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !6, line: 868, column: 22)
!1835 = !DILocalVariable(name: "desired", scope: !1836, file: !6, line: 888, type: !22)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !6, line: 887, column: 47)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !6, line: 887, column: 17)
!1838 = !DILocalVariable(name: "control", scope: !1834, file: !6, line: 895, type: !268)
!1839 = !DILocalVariable(name: "result", scope: !1834, file: !6, line: 896, type: !22)
!1840 = !DILocation(line: 0, scope: !1827, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 925, column: 13, scope: !1842, inlinedAt: !1816)
!1842 = distinct !DILexicalBlock(scope: !1818, file: !6, line: 924, column: 76)
!1843 = !DILocation(line: 866, column: 9, scope: !1827, inlinedAt: !1841)
!1844 = !DILocation(line: 868, column: 9, scope: !1827, inlinedAt: !1841)
!1845 = !DILocation(line: 869, column: 17, scope: !1834, inlinedAt: !1841)
!1846 = !DILocation(line: 869, column: 28, scope: !1833, inlinedAt: !1841)
!1847 = !DILocation(line: 869, column: 18, scope: !1833, inlinedAt: !1841)
!1848 = !DILocation(line: 870, column: 46, scope: !1832, inlinedAt: !1841)
!1849 = !DILocation(line: 0, scope: !1832, inlinedAt: !1841)
!1850 = !DILocation(line: 0, scope: !496, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 871, column: 21, scope: !1852, inlinedAt: !1841)
!1852 = distinct !DILexicalBlock(scope: !1832, file: !6, line: 871, column: 21)
!1853 = !DILocation(line: 0, scope: !507, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !1851)
!1855 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1854)
!1856 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1854)
!1857 = !DILocation(line: 0, scope: !526, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 880, column: 25, scope: !1859, inlinedAt: !1841)
!1859 = distinct !DILexicalBlock(scope: !1834, file: !6, line: 880, column: 17)
!1860 = !DILocation(line: 238, column: 24, scope: !535, inlinedAt: !1858)
!1861 = !DILocation(line: 238, column: 13, scope: !526, inlinedAt: !1858)
!1862 = !DILocation(line: 241, column: 27, scope: !526, inlinedAt: !1858)
!1863 = !DILocation(line: 880, column: 17, scope: !1834, inlinedAt: !1841)
!1864 = !DILocation(line: 239, column: 23, scope: !534, inlinedAt: !1858)
!1865 = !DILocation(line: 881, column: 17, scope: !1866, inlinedAt: !1841)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !6, line: 880, column: 40)
!1867 = !DILocation(line: 882, column: 17, scope: !1866, inlinedAt: !1841)
!1868 = !DILocation(line: 883, column: 17, scope: !1866, inlinedAt: !1841)
!1869 = !DILocation(line: 887, column: 27, scope: !1837, inlinedAt: !1841)
!1870 = !DILocation(line: 887, column: 41, scope: !1837, inlinedAt: !1841)
!1871 = !DILocation(line: 887, column: 17, scope: !1834, inlinedAt: !1841)
!1872 = !DILocation(line: 888, column: 46, scope: !1836, inlinedAt: !1841)
!1873 = !DILocation(line: 0, scope: !1836, inlinedAt: !1841)
!1874 = !DILocation(line: 0, scope: !1646, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 889, column: 22, scope: !1876, inlinedAt: !1841)
!1876 = distinct !DILexicalBlock(scope: !1836, file: !6, line: 889, column: 21)
!1877 = !DILocation(line: 0, scope: !507, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 123, column: 12, scope: !1646, inlinedAt: !1875)
!1879 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1878)
!1880 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1878)
!1881 = !DILocation(line: 895, column: 13, scope: !1834, inlinedAt: !1841)
!1882 = !DILocation(line: 895, column: 35, scope: !1834, inlinedAt: !1841)
!1883 = !DILocation(line: 0, scope: !1761, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 895, column: 35, scope: !1834, inlinedAt: !1841)
!1885 = !DILocation(line: 0, scope: !1767, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 832, column: 19, scope: !1761, inlinedAt: !1884)
!1887 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !1886)
!1888 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !1886)
!1889 = !DILocation(line: 833, column: 11, scope: !1761, inlinedAt: !1884)
!1890 = !DILocation(line: 834, column: 18, scope: !1778, inlinedAt: !1884)
!1891 = !DILocation(line: 835, column: 16, scope: !1778, inlinedAt: !1884)
!1892 = !DILocation(line: 896, column: 32, scope: !1834, inlinedAt: !1841)
!1893 = !DILocation(line: 0, scope: !1834, inlinedAt: !1841)
!1894 = !DILocation(line: 897, column: 24, scope: !1895, inlinedAt: !1841)
!1895 = distinct !DILexicalBlock(scope: !1834, file: !6, line: 897, column: 17)
!1896 = !DILocation(line: 897, column: 17, scope: !1834, inlinedAt: !1841)
!1897 = !DILocation(line: 902, column: 13, scope: !1834, inlinedAt: !1841)
!1898 = !DILocation(line: 903, column: 9, scope: !1827, inlinedAt: !1841)
!1899 = distinct !{!1899, !1844, !1898}
!1900 = !DILocation(line: 1135, column: 1, scope: !1803)
!1901 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1804, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1902)
!1902 = !{!1903, !1904}
!1903 = !DILocalVariable(name: "mutex", arg: 1, scope: !1901, file: !6, line: 1137, type: !369)
!1904 = !DILocalVariable(name: "fast_mutex", scope: !1901, file: !6, line: 1138, type: !313)
!1905 = !DILocation(line: 0, scope: !1901)
!1906 = !DILocation(line: 0, scope: !1721, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1140, column: 17, scope: !1901)
!1908 = !DILocation(line: 933, column: 47, scope: !1728, inlinedAt: !1907)
!1909 = !DILocation(line: 0, scope: !589, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 933, column: 14, scope: !1728, inlinedAt: !1907)
!1911 = !DILocation(line: 0, scope: !507, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 114, column: 12, scope: !589, inlinedAt: !1910)
!1913 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1912)
!1914 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1912)
!1915 = !DILocation(line: 933, column: 13, scope: !1721, inlinedAt: !1907)
!1916 = !DILocation(line: 0, scope: !1737, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 934, column: 13, scope: !1744, inlinedAt: !1907)
!1918 = !DILocation(line: 0, scope: !1746, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 911, column: 13, scope: !1752, inlinedAt: !1917)
!1920 = !DILocation(line: 0, scope: !507, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 110, column: 12, scope: !1746, inlinedAt: !1919)
!1922 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !1921)
!1923 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !1921)
!1924 = !DILocation(line: 911, column: 13, scope: !1737, inlinedAt: !1917)
!1925 = !DILocation(line: 915, column: 9, scope: !1737, inlinedAt: !1917)
!1926 = !DILocation(line: 915, column: 31, scope: !1737, inlinedAt: !1917)
!1927 = !DILocation(line: 0, scope: !1761, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 915, column: 31, scope: !1737, inlinedAt: !1917)
!1929 = !DILocation(line: 0, scope: !1767, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 832, column: 19, scope: !1761, inlinedAt: !1928)
!1931 = !DILocation(line: 599, column: 11, scope: !1767, inlinedAt: !1930)
!1932 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !1930)
!1933 = !DILocation(line: 600, column: 11, scope: !1767, inlinedAt: !1930)
!1934 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !1930)
!1935 = !DILocation(line: 833, column: 11, scope: !1761, inlinedAt: !1928)
!1936 = !DILocation(line: 834, column: 18, scope: !1778, inlinedAt: !1928)
!1937 = !DILocation(line: 835, column: 16, scope: !1778, inlinedAt: !1928)
!1938 = !DILocation(line: 916, column: 20, scope: !1737, inlinedAt: !1917)
!1939 = !DILocation(line: 916, column: 37, scope: !1737, inlinedAt: !1917)
!1940 = !DILocation(line: 916, column: 9, scope: !1737, inlinedAt: !1917)
!1941 = !DILocation(line: 917, column: 5, scope: !1737, inlinedAt: !1917)
!1942 = !DILocation(line: 1141, column: 1, scope: !1901)
!1943 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1944, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1947)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "cond", arg: 1, scope: !1943, file: !6, line: 1143, type: !1946)
!1949 = !DILocalVariable(name: "fast_cond", scope: !1943, file: !6, line: 1144, type: !352)
!1950 = !DILocation(line: 0, scope: !1943)
!1951 = !DILocalVariable(name: "this", arg: 1, scope: !1952, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!1952 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !353, file: !6, line: 1092, type: !357, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !361, retainedNodes: !1953)
!1953 = !{!1951, !1954, !1955}
!1954 = !DILocalVariable(name: "val", scope: !1952, file: !6, line: 1094, type: !22)
!1955 = !DILocalVariable(name: "control", scope: !1952, file: !6, line: 1100, type: !333)
!1956 = !DILocation(line: 0, scope: !1952, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 1146, column: 16, scope: !1943)
!1958 = !DILocation(line: 1095, column: 30, scope: !1952, inlinedAt: !1957)
!1959 = !DILocation(line: 1095, column: 9, scope: !1952, inlinedAt: !1957)
!1960 = !DILocation(line: 1096, column: 17, scope: !1961, inlinedAt: !1957)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !6, line: 1096, column: 13)
!1962 = !DILocation(line: 1096, column: 13, scope: !1952, inlinedAt: !1957)
!1963 = !DILocation(line: 1100, column: 9, scope: !1952, inlinedAt: !1957)
!1964 = !DILocation(line: 1100, column: 35, scope: !1952, inlinedAt: !1957)
!1965 = !DILocation(line: 1100, column: 51, scope: !1952, inlinedAt: !1957)
!1966 = !DILocalVariable(name: "this", arg: 1, scope: !1967, type: !332, flags: DIFlagArtificial | DIFlagObjectPointer)
!1967 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPjPNS2_10fast_mutexE", scope: !333, file: !6, line: 989, type: !339, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !338, retainedNodes: !1968)
!1968 = !{!1966, !1969, !1970}
!1969 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1967, file: !6, line: 989, type: !302)
!1970 = !DILocalVariable(name: "mutex", arg: 3, scope: !1967, file: !6, line: 989, type: !313)
!1971 = !DILocation(line: 0, scope: !1967, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 1100, column: 35, scope: !1952, inlinedAt: !1957)
!1973 = !DILocation(line: 0, scope: !1767, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 989, column: 19, scope: !1967, inlinedAt: !1972)
!1975 = !DILocation(line: 599, column: 11, scope: !1767, inlinedAt: !1974)
!1976 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !1974)
!1977 = !DILocation(line: 600, column: 11, scope: !1767, inlinedAt: !1974)
!1978 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !1974)
!1979 = !DILocation(line: 990, column: 11, scope: !1967, inlinedAt: !1972)
!1980 = !DILocation(line: 990, column: 35, scope: !1967, inlinedAt: !1972)
!1981 = !DILocation(line: 991, column: 18, scope: !1982, inlinedAt: !1972)
!1982 = distinct !DILexicalBlock(scope: !1967, file: !6, line: 990, column: 48)
!1983 = !DILocation(line: 992, column: 26, scope: !1982, inlinedAt: !1972)
!1984 = !DILocation(line: 1101, column: 24, scope: !1952, inlinedAt: !1957)
!1985 = !DILocation(line: 1101, column: 46, scope: !1952, inlinedAt: !1957)
!1986 = !DILocation(line: 1101, column: 9, scope: !1952, inlinedAt: !1957)
!1987 = !DILocation(line: 1103, column: 5, scope: !1952, inlinedAt: !1957)
!1988 = !DILocation(line: 1147, column: 1, scope: !1943)
!1989 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1944, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1990)
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "cond", arg: 1, scope: !1989, file: !6, line: 1149, type: !1946)
!1992 = !DILocalVariable(name: "fast_cond", scope: !1989, file: !6, line: 1150, type: !352)
!1993 = !DILocation(line: 0, scope: !1989)
!1994 = !DILocalVariable(name: "this", arg: 1, scope: !1995, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!1995 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !353, file: !6, line: 1078, type: !357, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !1996)
!1996 = !{!1994, !1997, !1998}
!1997 = !DILocalVariable(name: "val", scope: !1995, file: !6, line: 1081, type: !22)
!1998 = !DILocalVariable(name: "control", scope: !1995, file: !6, line: 1087, type: !308)
!1999 = !DILocation(line: 0, scope: !1995, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 1152, column: 16, scope: !1989)
!2001 = !DILocation(line: 1082, column: 30, scope: !1995, inlinedAt: !2000)
!2002 = !DILocation(line: 1082, column: 9, scope: !1995, inlinedAt: !2000)
!2003 = !DILocation(line: 1083, column: 17, scope: !2004, inlinedAt: !2000)
!2004 = distinct !DILexicalBlock(scope: !1995, file: !6, line: 1083, column: 13)
!2005 = !DILocation(line: 1083, column: 13, scope: !1995, inlinedAt: !2000)
!2006 = !DILocation(line: 1087, column: 9, scope: !1995, inlinedAt: !2000)
!2007 = !DILocation(line: 1087, column: 32, scope: !1995, inlinedAt: !2000)
!2008 = !DILocation(line: 1087, column: 48, scope: !1995, inlinedAt: !2000)
!2009 = !DILocalVariable(name: "this", arg: 1, scope: !2010, type: !307, flags: DIFlagArtificial | DIFlagObjectPointer)
!2010 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPjPNS2_10fast_mutexE", scope: !308, file: !6, line: 962, type: !329, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !328, retainedNodes: !2011)
!2011 = !{!2009, !2012, !2013}
!2012 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2010, file: !6, line: 962, type: !302)
!2013 = !DILocalVariable(name: "mutex", arg: 3, scope: !2010, file: !6, line: 962, type: !313)
!2014 = !DILocation(line: 0, scope: !2010, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1087, column: 32, scope: !1995, inlinedAt: !2000)
!2016 = !DILocation(line: 0, scope: !1767, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 962, column: 19, scope: !2010, inlinedAt: !2015)
!2018 = !DILocation(line: 599, column: 11, scope: !1767, inlinedAt: !2017)
!2019 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !2017)
!2020 = !DILocation(line: 600, column: 11, scope: !1767, inlinedAt: !2017)
!2021 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !2017)
!2022 = !DILocation(line: 963, column: 11, scope: !2010, inlinedAt: !2015)
!2023 = !DILocation(line: 963, column: 35, scope: !2010, inlinedAt: !2015)
!2024 = !{!1602, !401, i64 20}
!2025 = !DILocation(line: 964, column: 16, scope: !2026, inlinedAt: !2015)
!2026 = distinct !DILexicalBlock(scope: !2010, file: !6, line: 963, column: 48)
!2027 = !DILocation(line: 1088, column: 20, scope: !1995, inlinedAt: !2000)
!2028 = !DILocation(line: 1088, column: 37, scope: !1995, inlinedAt: !2000)
!2029 = !DILocation(line: 1088, column: 9, scope: !1995, inlinedAt: !2000)
!2030 = !DILocation(line: 1090, column: 5, scope: !1995, inlinedAt: !2000)
!2031 = !DILocation(line: 1153, column: 1, scope: !1989)
!2032 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !2033, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1946, !369}
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DILocalVariable(name: "cond", arg: 1, scope: !2032, file: !6, line: 1155, type: !1946)
!2037 = !DILocalVariable(name: "mutex", arg: 2, scope: !2032, file: !6, line: 1155, type: !369)
!2038 = !DILocalVariable(name: "fast_cond", scope: !2032, file: !6, line: 1156, type: !352)
!2039 = !DILocalVariable(name: "fast_mutex", scope: !2032, file: !6, line: 1158, type: !313)
!2040 = !DILocation(line: 0, scope: !2032)
!2041 = !DILocalVariable(name: "this", arg: 1, scope: !2042, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2042 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !353, file: !6, line: 1105, type: !363, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !362, retainedNodes: !2043)
!2043 = !{!2041, !2044, !2045, !2046, !2047}
!2044 = !DILocalVariable(name: "mutex", arg: 2, scope: !2042, file: !6, line: 1105, type: !313)
!2045 = !DILocalVariable(name: "control", scope: !2042, file: !6, line: 1106, type: !343)
!2046 = !DILocalVariable(name: "result", scope: !2042, file: !6, line: 1107, type: !22)
!2047 = !DILocalVariable(name: "val", scope: !2048, file: !6, line: 1114, type: !22)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !6, line: 1110, column: 16)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !6, line: 1108, column: 13)
!2050 = !DILocation(line: 0, scope: !2042, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 1160, column: 16, scope: !2032)
!2052 = !DILocation(line: 1106, column: 9, scope: !2042, inlinedAt: !2051)
!2053 = !DILocation(line: 1106, column: 30, scope: !2042, inlinedAt: !2051)
!2054 = !DILocation(line: 1106, column: 39, scope: !2042, inlinedAt: !2051)
!2055 = !DILocalVariable(name: "this", arg: 1, scope: !2056, type: !342, flags: DIFlagArtificial | DIFlagObjectPointer)
!2056 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPjPNS2_10fast_mutexE", scope: !343, file: !6, line: 1030, type: !349, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !348, retainedNodes: !2057)
!2057 = !{!2055, !2058, !2059}
!2058 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2056, file: !6, line: 1030, type: !302)
!2059 = !DILocalVariable(name: "mutex", arg: 3, scope: !2056, file: !6, line: 1030, type: !313)
!2060 = !DILocation(line: 0, scope: !2056, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1106, column: 30, scope: !2042, inlinedAt: !2051)
!2062 = !DILocation(line: 0, scope: !1767, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 1030, column: 19, scope: !2056, inlinedAt: !2061)
!2064 = !DILocation(line: 599, column: 11, scope: !1767, inlinedAt: !2063)
!2065 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !2063)
!2066 = !DILocation(line: 600, column: 11, scope: !1767, inlinedAt: !2063)
!2067 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !2063)
!2068 = !DILocation(line: 1031, column: 11, scope: !2056, inlinedAt: !2061)
!2069 = !DILocation(line: 1031, column: 35, scope: !2056, inlinedAt: !2061)
!2070 = !DILocation(line: 1032, column: 18, scope: !2071, inlinedAt: !2061)
!2071 = distinct !DILexicalBlock(scope: !2056, file: !6, line: 1031, column: 48)
!2072 = !DILocation(line: 1033, column: 22, scope: !2071, inlinedAt: !2061)
!2073 = !DILocation(line: 1034, column: 16, scope: !2071, inlinedAt: !2061)
!2074 = !DILocation(line: 1107, column: 33, scope: !2042, inlinedAt: !2051)
!2075 = !DILocation(line: 1107, column: 50, scope: !2042, inlinedAt: !2051)
!2076 = !DILocation(line: 1107, column: 28, scope: !2042, inlinedAt: !2051)
!2077 = !DILocation(line: 1108, column: 23, scope: !2049, inlinedAt: !2051)
!2078 = !DILocation(line: 1108, column: 20, scope: !2049, inlinedAt: !2051)
!2079 = !DILocation(line: 0, scope: !2049, inlinedAt: !2051)
!2080 = !DILocation(line: 1108, column: 13, scope: !2042, inlinedAt: !2051)
!2081 = !DILocation(line: 0, scope: !1811, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 1109, column: 20, scope: !2083, inlinedAt: !2051)
!2083 = distinct !DILexicalBlock(scope: !2049, file: !6, line: 1108, column: 41)
!2084 = !DILocation(line: 0, scope: !496, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 924, column: 14, scope: !1818, inlinedAt: !2082)
!2086 = !DILocation(line: 0, scope: !507, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !2085)
!2088 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !2087)
!2089 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !2087)
!2090 = !DILocation(line: 924, column: 13, scope: !1811, inlinedAt: !2082)
!2091 = !DILocation(line: 0, scope: !1827, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 925, column: 13, scope: !1842, inlinedAt: !2082)
!2093 = !DILocation(line: 866, column: 9, scope: !1827, inlinedAt: !2092)
!2094 = !DILocation(line: 868, column: 9, scope: !1827, inlinedAt: !2092)
!2095 = !DILocation(line: 869, column: 17, scope: !1834, inlinedAt: !2092)
!2096 = !DILocation(line: 869, column: 28, scope: !1833, inlinedAt: !2092)
!2097 = !DILocation(line: 869, column: 18, scope: !1833, inlinedAt: !2092)
!2098 = !DILocation(line: 870, column: 46, scope: !1832, inlinedAt: !2092)
!2099 = !DILocation(line: 0, scope: !1832, inlinedAt: !2092)
!2100 = !DILocation(line: 0, scope: !496, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 871, column: 21, scope: !1852, inlinedAt: !2092)
!2102 = !DILocation(line: 0, scope: !507, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 127, column: 12, scope: !496, inlinedAt: !2101)
!2104 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !2103)
!2105 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !2103)
!2106 = !DILocation(line: 0, scope: !526, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 880, column: 25, scope: !1859, inlinedAt: !2092)
!2108 = !DILocation(line: 238, column: 24, scope: !535, inlinedAt: !2107)
!2109 = !DILocation(line: 238, column: 13, scope: !526, inlinedAt: !2107)
!2110 = !DILocation(line: 241, column: 27, scope: !526, inlinedAt: !2107)
!2111 = !DILocation(line: 880, column: 17, scope: !1834, inlinedAt: !2092)
!2112 = !DILocation(line: 239, column: 23, scope: !534, inlinedAt: !2107)
!2113 = !DILocation(line: 881, column: 17, scope: !1866, inlinedAt: !2092)
!2114 = !DILocation(line: 882, column: 17, scope: !1866, inlinedAt: !2092)
!2115 = !DILocation(line: 883, column: 17, scope: !1866, inlinedAt: !2092)
!2116 = !DILocation(line: 887, column: 27, scope: !1837, inlinedAt: !2092)
!2117 = !DILocation(line: 887, column: 41, scope: !1837, inlinedAt: !2092)
!2118 = !DILocation(line: 887, column: 17, scope: !1834, inlinedAt: !2092)
!2119 = !DILocation(line: 888, column: 46, scope: !1836, inlinedAt: !2092)
!2120 = !DILocation(line: 0, scope: !1836, inlinedAt: !2092)
!2121 = !DILocation(line: 0, scope: !1646, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 889, column: 22, scope: !1876, inlinedAt: !2092)
!2123 = !DILocation(line: 0, scope: !507, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 123, column: 12, scope: !1646, inlinedAt: !2122)
!2125 = !DILocation(line: 104, column: 16, scope: !507, inlinedAt: !2124)
!2126 = !DILocation(line: 106, column: 19, scope: !507, inlinedAt: !2124)
!2127 = !DILocation(line: 895, column: 13, scope: !1834, inlinedAt: !2092)
!2128 = !DILocation(line: 895, column: 35, scope: !1834, inlinedAt: !2092)
!2129 = !DILocation(line: 0, scope: !1761, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 895, column: 35, scope: !1834, inlinedAt: !2092)
!2131 = !DILocation(line: 0, scope: !1767, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 832, column: 19, scope: !1761, inlinedAt: !2130)
!2133 = !DILocation(line: 599, column: 47, scope: !1767, inlinedAt: !2132)
!2134 = !DILocation(line: 600, column: 43, scope: !1767, inlinedAt: !2132)
!2135 = !DILocation(line: 833, column: 11, scope: !1761, inlinedAt: !2130)
!2136 = !DILocation(line: 834, column: 18, scope: !1778, inlinedAt: !2130)
!2137 = !DILocation(line: 835, column: 16, scope: !1778, inlinedAt: !2130)
!2138 = !DILocation(line: 896, column: 32, scope: !1834, inlinedAt: !2092)
!2139 = !DILocation(line: 0, scope: !1834, inlinedAt: !2092)
!2140 = !DILocation(line: 897, column: 24, scope: !1895, inlinedAt: !2092)
!2141 = !DILocation(line: 897, column: 17, scope: !1834, inlinedAt: !2092)
!2142 = !DILocation(line: 902, column: 13, scope: !1834, inlinedAt: !2092)
!2143 = !DILocation(line: 903, column: 9, scope: !1827, inlinedAt: !2092)
!2144 = distinct !{!2144, !2094, !2143}
!2145 = !DILocation(line: 1115, column: 13, scope: !2048, inlinedAt: !2051)
!2146 = !DILocation(line: 0, scope: !2048, inlinedAt: !2051)
!2147 = !DILocation(line: 1116, column: 13, scope: !2148, inlinedAt: !2051)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !6, line: 1116, column: 13)
!2149 = distinct !DILexicalBlock(scope: !2048, file: !6, line: 1116, column: 13)
!2150 = !DILocation(line: 1116, column: 13, scope: !2149, inlinedAt: !2051)
!2151 = !DILocation(line: 1116, column: 13, scope: !2152, inlinedAt: !2051)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !6, line: 1116, column: 13)
!2153 = !DILocation(line: 1120, column: 5, scope: !2042, inlinedAt: !2051)
!2154 = !DILocation(line: 1161, column: 1, scope: !2032)
!2155 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2156, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!365, !29}
!2158 = !{!2159, !2160}
!2159 = !DILocalVariable(name: "sz", arg: 1, scope: !2155, file: !6, line: 1168, type: !29)
!2160 = !DILocalVariable(name: "array", scope: !2155, file: !6, line: 1171, type: !365)
!2161 = !DILocation(line: 0, scope: !2155)
!2162 = !DILocation(line: 1171, column: 55, scope: !2155)
!2163 = !DILocation(line: 1171, column: 33, scope: !2155)
!2164 = !DILocation(line: 1173, column: 15, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2155, file: !6, line: 1173, column: 9)
!2166 = !DILocation(line: 1173, column: 9, scope: !2155)
!2167 = !DILocation(line: 1178, column: 21, scope: !2155)
!2168 = !DILocation(line: 1177, column: 36, scope: !2155)
!2169 = !DILocation(line: 1177, column: 18, scope: !2155)
!2170 = !{!2171, !401, i64 0}
!2171 = !{!"_ZTS18halide_mutex_array", !401, i64 0}
!2172 = !DILocation(line: 1179, column: 22, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2155, file: !6, line: 1179, column: 9)
!2174 = !DILocation(line: 1179, column: 9, scope: !2155)
!2175 = !DILocation(line: 1180, column: 9, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !6, line: 1179, column: 34)
!2177 = !DILocation(line: 1182, column: 9, scope: !2176)
!2178 = !DILocation(line: 1184, column: 5, scope: !2155)
!2179 = !DILocation(line: 1185, column: 5, scope: !2155)
!2180 = !DILocation(line: 1186, column: 1, scope: !2155)
!2181 = !DISubprogram(name: "halide_malloc", scope: !18, file: !18, line: 354, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!43, !43, !25}
!2184 = !DISubprogram(name: "halide_free", scope: !18, file: !18, line: 355, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !43, !43}
!2187 = !DISubprogram(name: "memset", scope: !23, file: !23, line: 96, type: !2188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!43, !43, !29, !25}
!2190 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2185, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2191)
!2191 = !{!2192, !2193, !2194}
!2192 = !DILocalVariable(name: "user_context", arg: 1, scope: !2190, file: !6, line: 1188, type: !43)
!2193 = !DILocalVariable(name: "array", arg: 2, scope: !2190, file: !6, line: 1188, type: !43)
!2194 = !DILocalVariable(name: "arr_ptr", scope: !2190, file: !6, line: 1189, type: !365)
!2195 = !DILocation(line: 0, scope: !2190)
!2196 = !DILocation(line: 1190, column: 40, scope: !2190)
!2197 = !DILocation(line: 1190, column: 5, scope: !2190)
!2198 = !DILocation(line: 1191, column: 5, scope: !2190)
!2199 = !DILocation(line: 1192, column: 1, scope: !2190)
!2200 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2201, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!29, !365, !29}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "array", arg: 1, scope: !2200, file: !6, line: 1194, type: !365)
!2205 = !DILocalVariable(name: "entry", arg: 2, scope: !2200, file: !6, line: 1194, type: !29)
!2206 = !DILocation(line: 0, scope: !2200)
!2207 = !DILocation(line: 1195, column: 31, scope: !2200)
!2208 = !DILocation(line: 1195, column: 24, scope: !2200)
!2209 = !DILocation(line: 1195, column: 5, scope: !2200)
!2210 = !DILocation(line: 1196, column: 5, scope: !2200)
!2211 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2201, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2212)
!2212 = !{!2213, !2214}
!2213 = !DILocalVariable(name: "array", arg: 1, scope: !2211, file: !6, line: 1199, type: !365)
!2214 = !DILocalVariable(name: "entry", arg: 2, scope: !2211, file: !6, line: 1199, type: !29)
!2215 = !DILocation(line: 0, scope: !2211)
!2216 = !DILocation(line: 1200, column: 33, scope: !2211)
!2217 = !DILocation(line: 1200, column: 26, scope: !2211)
!2218 = !DILocation(line: 1200, column: 5, scope: !2211)
!2219 = !DILocation(line: 1201, column: 5, scope: !2211)
!2220 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !3, file: !13, line: 69, type: !2221, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!29, !29}
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "threads", arg: 1, scope: !2220, file: !13, line: 69, type: !29)
!2225 = !DILocation(line: 0, scope: !2220)
!2226 = !DILocation(line: 70, column: 17, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2220, file: !13, line: 70, column: 9)
!2228 = !DILocation(line: 70, column: 9, scope: !2220)
!2229 = !DILocation(line: 72, column: 16, scope: !2227)
!2230 = !DILocation(line: 75, column: 5, scope: !2220)
!2231 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !3, file: !13, line: 78, type: !2232, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!29}
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "desired_num_threads", scope: !2231, file: !13, line: 79, type: !29)
!2236 = !DILocalVariable(name: "threads_str", scope: !2231, file: !13, line: 80, type: !374)
!2237 = !DILocation(line: 0, scope: !2231)
!2238 = !DILocation(line: 80, column: 25, scope: !2231)
!2239 = !DILocation(line: 81, column: 10, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !13, line: 81, column: 9)
!2241 = !DILocation(line: 81, column: 9, scope: !2231)
!2242 = !DILocation(line: 83, column: 23, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !13, line: 81, column: 23)
!2244 = !DILocation(line: 85, column: 9, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2231, file: !13, line: 85, column: 9)
!2246 = !DILocation(line: 85, column: 9, scope: !2231)
!2247 = !DILocation(line: 86, column: 31, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !13, line: 85, column: 22)
!2249 = !DILocation(line: 87, column: 5, scope: !2248)
!2250 = !DILocation(line: 88, column: 31, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !13, line: 87, column: 12)
!2252 = !DILocation(line: 0, scope: !2245)
!2253 = !DILocation(line: 90, column: 5, scope: !2231)
!2254 = !DISubprogram(name: "getenv", scope: !23, file: !23, line: 85, type: !2255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!374, !49}
!2257 = !DISubprogram(name: "atoi", scope: !23, file: !23, line: 89, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!29, !49}
!2260 = !DISubprogram(name: "halide_host_cpu_count", scope: !23, file: !23, line: 159, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2261 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !3, file: !13, line: 197, type: !2262, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !32}
!2264 = !{!2265, !2266, !2267, !2269, !2271, !2273, !2275, !2276, !2277, !2278, !2279, !2280, !2283, !2284, !2286, !2287}
!2265 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2261, file: !13, line: 197, type: !32)
!2266 = !DILocalVariable(name: "spin_count", scope: !2261, file: !13, line: 198, type: !29)
!2267 = !DILocalVariable(name: "max_spin_count", scope: !2261, file: !13, line: 199, type: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2269 = !DILocalVariable(name: "job", scope: !2270, file: !13, line: 202, type: !32)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !13, line: 201, column: 69)
!2271 = !DILocalVariable(name: "prev_ptr", scope: !2270, file: !13, line: 203, type: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!2273 = !DILocalVariable(name: "enough_threads", scope: !2274, file: !13, line: 235, type: !64)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 229, column: 21)
!2275 = !DILocalVariable(name: "parent_job", scope: !2274, file: !13, line: 237, type: !32)
!2276 = !DILocalVariable(name: "threads_available", scope: !2274, file: !13, line: 239, type: !29)
!2277 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2274, file: !13, line: 256, type: !64)
!2278 = !DILocalVariable(name: "can_add_worker", scope: !2274, file: !13, line: 260, type: !64)
!2279 = !DILocalVariable(name: "result", scope: !2270, file: !13, line: 328, type: !29)
!2280 = !DILocalVariable(name: "total_iters", scope: !2281, file: !13, line: 336, type: !29)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !13, line: 330, column: 31)
!2282 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 330, column: 13)
!2283 = !DILocalVariable(name: "iters", scope: !2281, file: !13, line: 337, type: !29)
!2284 = !DILocalVariable(name: "myjob", scope: !2285, file: !13, line: 369, type: !33)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !13, line: 367, column: 16)
!2286 = !DILocalVariable(name: "wake_owners", scope: !2270, file: !13, line: 396, type: !64)
!2287 = !DILocalVariable(name: "i", scope: !2288, file: !13, line: 402, type: !29)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !13, line: 402, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !13, line: 399, column: 26)
!2290 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 399, column: 13)
!2291 = !DILocation(line: 0, scope: !2261)
!2292 = !DILocation(line: 63, column: 31, scope: !2293, inlinedAt: !2297)
!2293 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2294)
!2294 = !{!2295}
!2295 = !DILocalVariable(name: "this", arg: 1, scope: !2293, type: !2296, flags: DIFlagArtificial | DIFlagObjectPointer)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!2297 = distinct !DILocation(line: 201, column: 35, scope: !2261)
!2298 = !DILocation(line: 201, column: 5, scope: !2261)
!2299 = !DILocation(line: 198, column: 9, scope: !2261)
!2300 = !DILocation(line: 201, column: 12, scope: !2261)
!2301 = !DILocation(line: 0, scope: !2293, inlinedAt: !2297)
!2302 = !DILocation(line: 63, column: 21, scope: !2293, inlinedAt: !2297)
!2303 = !{!2304, !488, i64 24}
!2304 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2305, i64 0, !401, i64 36, !401, i64 40, !401, i64 44, !488, i64 48, !401, i64 52, !488, i64 56, !401, i64 60, !488, i64 64, !488, i64 68, !488, i64 72, !558, i64 76}
!2305 = !{!"_ZTS22halide_parallel_task_t", !401, i64 0, !401, i64 4, !401, i64 8, !401, i64 12, !488, i64 16, !488, i64 20, !488, i64 24, !488, i64 28, !558, i64 32}
!2306 = !DILocation(line: 63, column: 16, scope: !2293, inlinedAt: !2297)
!2307 = !DILocation(line: 63, column: 28, scope: !2293, inlinedAt: !2297)
!2308 = !DILocation(line: 201, column: 59, scope: !2261)
!2309 = !{!2310, !558, i64 1072}
!2310 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2311, i64 0, !488, i64 4, !488, i64 8, !401, i64 12, !488, i64 16, !488, i64 20, !488, i64 24, !2312, i64 28, !2312, i64 32, !2312, i64 36, !488, i64 40, !488, i64 44, !402, i64 48, !558, i64 1072, !558, i64 1073, !488, i64 1076}
!2311 = !{!"_ZTS12halide_mutex", !402, i64 0}
!2312 = !{!"_ZTS11halide_cond", !402, i64 0}
!2313 = !{!2304, !488, i64 64}
!2314 = !DILocation(line: 202, column: 32, scope: !2270)
!2315 = !{!2310, !401, i64 12}
!2316 = !DILocation(line: 0, scope: !2270)
!2317 = !DILocation(line: 206, column: 28, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !13, line: 206, column: 17)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !13, line: 205, column: 24)
!2320 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 205, column: 13)
!2321 = !{!2304, !488, i64 68}
!2322 = !DILocation(line: 206, column: 40, scope: !2318)
!2323 = !DILocation(line: 206, column: 17, scope: !2319)
!2324 = !DILocation(line: 207, column: 32, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !13, line: 207, column: 21)
!2326 = distinct !DILexicalBlock(scope: !2318, file: !13, line: 206, column: 46)
!2327 = !DILocation(line: 207, column: 47, scope: !2325)
!2328 = !DILocation(line: 207, column: 21, scope: !2326)
!2329 = !DILocation(line: 208, column: 32, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !13, line: 207, column: 53)
!2331 = !DILocation(line: 208, column: 21, scope: !2330)
!2332 = !DILocation(line: 209, column: 42, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !13, line: 208, column: 46)
!2334 = !DILocation(line: 210, column: 36, scope: !2333)
!2335 = !{!2304, !401, i64 40}
!2336 = distinct !{!2336, !2331, !2337, !615}
!2337 = !DILocation(line: 211, column: 21, scope: !2330)
!2338 = !DILocation(line: 212, column: 38, scope: !2330)
!2339 = !DILocation(line: 212, column: 31, scope: !2330)
!2340 = !DILocation(line: 213, column: 38, scope: !2330)
!2341 = !DILocation(line: 214, column: 21, scope: !2330)
!2342 = !DILocation(line: 216, column: 35, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2318, file: !13, line: 216, column: 24)
!2344 = !{!2304, !401, i64 52}
!2345 = !DILocation(line: 216, column: 24, scope: !2343)
!2346 = !DILocation(line: 216, column: 46, scope: !2343)
!2347 = !DILocation(line: 216, column: 72, scope: !2343)
!2348 = !DILocation(line: 216, column: 84, scope: !2343)
!2349 = !DILocation(line: 216, column: 24, scope: !2318)
!2350 = !DILocation(line: 217, column: 40, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2343, file: !13, line: 216, column: 90)
!2352 = !DILocation(line: 221, column: 17, scope: !2351)
!2353 = !DILocation(line: 222, column: 17, scope: !2351)
!2354 = !DILocation(line: 229, column: 16, scope: !2270)
!2355 = !DILocation(line: 229, column: 9, scope: !2270)
!2356 = !DILocation(line: 240, column: 17, scope: !2274)
!2357 = !DILocation(line: 237, column: 37, scope: !2274)
!2358 = !DILocation(line: 0, scope: !2274)
!2359 = !DILocation(line: 240, column: 28, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2274, file: !13, line: 240, column: 17)
!2361 = !DILocation(line: 244, column: 33, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !13, line: 244, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !13, line: 243, column: 20)
!2364 = !DILocation(line: 244, column: 48, scope: !2362)
!2365 = !DILocation(line: 0, scope: !2362)
!2366 = !{!2304, !488, i64 28}
!2367 = !DILocation(line: 244, column: 21, scope: !2363)
!2368 = !DILocation(line: 247, column: 68, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !13, line: 246, column: 24)
!2370 = !DILocation(line: 247, column: 113, scope: !2369)
!2371 = !DILocation(line: 245, column: 84, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2362, file: !13, line: 244, column: 54)
!2373 = !DILocation(line: 246, column: 17, scope: !2372)
!2374 = !DILocation(line: 242, column: 49, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2360, file: !13, line: 240, column: 40)
!2376 = !{!2310, !488, i64 16}
!2377 = !DILocation(line: 242, column: 65, scope: !2375)
!2378 = !DILocation(line: 243, column: 13, scope: !2375)
!2379 = !DILocation(line: 0, scope: !2360)
!2380 = !DILocation(line: 250, column: 61, scope: !2274)
!2381 = !DILocation(line: 250, column: 48, scope: !2274)
!2382 = !DILocation(line: 260, column: 47, scope: !2274)
!2383 = !{!2304, !558, i64 32}
!2384 = !DILocation(line: 260, column: 54, scope: !2274)
!2385 = !DILocation(line: 260, column: 63, scope: !2274)
!2386 = !DILocation(line: 260, column: 78, scope: !2274)
!2387 = !DILocation(line: 265, column: 32, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2274, file: !13, line: 265, column: 17)
!2389 = !DILocalVariable(name: "this", arg: 1, scope: !2390, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2390 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2391)
!2391 = !{!2389}
!2392 = !DILocation(line: 0, scope: !2390, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 266, column: 26, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !13, line: 266, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2388, file: !13, line: 265, column: 80)
!2396 = !DILocation(line: 47, column: 16, scope: !2397, inlinedAt: !2393)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !13, line: 47, column: 9)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !13, line: 47, column: 9)
!2399 = !{!2304, !488, i64 72}
!2400 = !DILocation(line: 47, column: 38, scope: !2397, inlinedAt: !2393)
!2401 = !{!2304, !488, i64 16}
!2402 = !DILocation(line: 47, column: 31, scope: !2397, inlinedAt: !2393)
!2403 = !DILocation(line: 47, column: 9, scope: !2398, inlinedAt: !2393)
!2404 = !DILocation(line: 48, column: 60, scope: !2405, inlinedAt: !2393)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !13, line: 48, column: 17)
!2406 = distinct !DILexicalBlock(scope: !2397, file: !13, line: 47, column: 72)
!2407 = !{!2304, !401, i64 12}
!2408 = !DILocation(line: 48, column: 87, scope: !2405, inlinedAt: !2393)
!2409 = !{!2410, !401, i64 0}
!2410 = !{!"_ZTS26halide_semaphore_acquire_t", !401, i64 0, !488, i64 4}
!2411 = !DILocation(line: 49, column: 87, scope: !2405, inlinedAt: !2393)
!2412 = !{!2410, !488, i64 4}
!2413 = !DILocation(line: 48, column: 18, scope: !2405, inlinedAt: !2393)
!2414 = !DILocation(line: 48, column: 17, scope: !2406, inlinedAt: !2393)
!2415 = !DILocation(line: 47, column: 68, scope: !2397, inlinedAt: !2393)
!2416 = distinct !{!2416, !2403, !2417, !615}
!2417 = !DILocation(line: 56, column: 9, scope: !2398, inlinedAt: !2393)
!2418 = !DILocation(line: 272, column: 31, scope: !2274)
!2419 = !DILocation(line: 273, column: 24, scope: !2274)
!2420 = !DILocation(line: 256, column: 66, scope: !2274)
!2421 = !{!2304, !401, i64 44}
!2422 = !DILocation(line: 256, column: 89, scope: !2274)
!2423 = !DILocation(line: 256, column: 75, scope: !2274)
!2424 = !DILocation(line: 278, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !13, line: 276, column: 19)
!2426 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 276, column: 13)
!2427 = !DILocation(line: 279, column: 31, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !13, line: 279, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !13, line: 278, column: 28)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !13, line: 278, column: 17)
!2431 = !DILocation(line: 279, column: 34, scope: !2428)
!2432 = !DILocation(line: 279, column: 21, scope: !2429)
!2433 = !DILocation(line: 281, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2428, file: !13, line: 279, column: 52)
!2435 = !DILocation(line: 282, column: 21, scope: !2434)
!2436 = !DILocation(line: 283, column: 21, scope: !2434)
!2437 = !DILocation(line: 284, column: 17, scope: !2434)
!2438 = !DILocation(line: 285, column: 47, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2428, file: !13, line: 284, column: 24)
!2440 = !{!2310, !488, i64 44}
!2441 = !DILocation(line: 286, column: 50, scope: !2439)
!2442 = !{!2304, !558, i64 76}
!2443 = !DILocation(line: 287, column: 21, scope: !2439)
!2444 = !DILocation(line: 288, column: 50, scope: !2439)
!2445 = !DILocation(line: 289, column: 47, scope: !2439)
!2446 = !DILocation(line: 292, column: 44, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2430, file: !13, line: 291, column: 20)
!2448 = !{!2310, !488, i64 40}
!2449 = !DILocation(line: 293, column: 32, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !13, line: 293, column: 21)
!2451 = !{!2310, !488, i64 20}
!2452 = !DILocation(line: 293, column: 57, scope: !2450)
!2453 = !{!2310, !488, i64 24}
!2454 = !DILocation(line: 293, column: 44, scope: !2450)
!2455 = !DILocation(line: 293, column: 21, scope: !2447)
!2456 = !DILocation(line: 295, column: 43, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !13, line: 293, column: 77)
!2458 = !DILocation(line: 296, column: 21, scope: !2457)
!2459 = !DILocation(line: 297, column: 43, scope: !2457)
!2460 = !DILocation(line: 298, column: 17, scope: !2457)
!2461 = !DILocation(line: 298, column: 38, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2450, file: !13, line: 298, column: 28)
!2463 = !DILocation(line: 298, column: 41, scope: !2462)
!2464 = !DILocation(line: 298, column: 28, scope: !2450)
!2465 = !DILocation(line: 300, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !13, line: 298, column: 59)
!2467 = !DILocation(line: 301, column: 21, scope: !2466)
!2468 = !DILocation(line: 302, column: 21, scope: !2466)
!2469 = !DILocation(line: 303, column: 17, scope: !2466)
!2470 = !DILocation(line: 304, column: 21, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2462, file: !13, line: 303, column: 24)
!2472 = !DILocation(line: 306, column: 44, scope: !2447)
!2473 = !DILocation(line: 58, column: 24, scope: !2390, inlinedAt: !2393)
!2474 = !DILocation(line: 318, column: 14, scope: !2270)
!2475 = !DILocation(line: 318, column: 28, scope: !2270)
!2476 = !DILocation(line: 320, column: 18, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 320, column: 13)
!2478 = !DILocation(line: 320, column: 29, scope: !2477)
!2479 = !DILocation(line: 0, scope: !2477)
!2480 = !DILocation(line: 320, column: 13, scope: !2270)
!2481 = !DILocation(line: 330, column: 23, scope: !2282)
!2482 = !DILocation(line: 330, column: 13, scope: !2270)
!2483 = !DILocation(line: 332, column: 30, scope: !2281)
!2484 = !DILocation(line: 332, column: 23, scope: !2281)
!2485 = !DILocation(line: 335, column: 13, scope: !2281)
!2486 = !DILocation(line: 0, scope: !2281)
!2487 = !DILocation(line: 338, column: 13, scope: !2281)
!2488 = !DILocation(line: 340, column: 35, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2281, file: !13, line: 338, column: 33)
!2490 = !DILocation(line: 340, column: 42, scope: !2489)
!2491 = !DILocation(line: 340, column: 57, scope: !2489)
!2492 = !DILocation(line: 340, column: 65, scope: !2489)
!2493 = !DILocation(line: 47, column: 16, scope: !2397, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 341, column: 29, scope: !2489)
!2495 = !DILocation(line: 47, column: 38, scope: !2397, inlinedAt: !2494)
!2496 = !DILocation(line: 340, column: 17, scope: !2489)
!2497 = !DILocation(line: 0, scope: !2390, inlinedAt: !2494)
!2498 = !DILocation(line: 47, column: 31, scope: !2397, inlinedAt: !2494)
!2499 = !DILocation(line: 47, column: 9, scope: !2398, inlinedAt: !2494)
!2500 = !DILocation(line: 48, column: 60, scope: !2405, inlinedAt: !2494)
!2501 = !DILocation(line: 48, column: 87, scope: !2405, inlinedAt: !2494)
!2502 = !DILocation(line: 49, column: 87, scope: !2405, inlinedAt: !2494)
!2503 = !DILocation(line: 48, column: 18, scope: !2405, inlinedAt: !2494)
!2504 = !DILocation(line: 48, column: 17, scope: !2406, inlinedAt: !2494)
!2505 = !DILocation(line: 47, column: 68, scope: !2397, inlinedAt: !2494)
!2506 = distinct !{!2506, !2499, !2507, !615}
!2507 = !DILocation(line: 56, column: 9, scope: !2398, inlinedAt: !2494)
!2508 = !DILocation(line: 58, column: 24, scope: !2390, inlinedAt: !2494)
!2509 = !DILocation(line: 342, column: 26, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2489, file: !13, line: 341, column: 46)
!2511 = distinct !{!2511, !2496, !2512, !615}
!2512 = !DILocation(line: 343, column: 17, scope: !2489)
!2513 = !DILocation(line: 344, column: 27, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2489, file: !13, line: 344, column: 21)
!2515 = !DILocation(line: 344, column: 21, scope: !2489)
!2516 = !DILocation(line: 349, column: 51, scope: !2489)
!2517 = !{!2304, !401, i64 60}
!2518 = !DILocation(line: 349, column: 75, scope: !2489)
!2519 = !{!2304, !401, i64 0}
!2520 = !DILocation(line: 350, column: 56, scope: !2489)
!2521 = !{!2304, !488, i64 20}
!2522 = !DILocation(line: 350, column: 60, scope: !2489)
!2523 = !DILocation(line: 351, column: 56, scope: !2489)
!2524 = !{!2304, !401, i64 4}
!2525 = !DILocation(line: 349, column: 26, scope: !2489)
!2526 = !DILocation(line: 352, column: 29, scope: !2489)
!2527 = !DILocation(line: 338, column: 27, scope: !2281)
!2528 = distinct !{!2528, !2487, !2529, !615}
!2529 = !DILocation(line: 354, column: 13, scope: !2281)
!2530 = !DILocation(line: 355, column: 13, scope: !2281)
!2531 = !DILocation(line: 357, column: 27, scope: !2281)
!2532 = !DILocation(line: 358, column: 30, scope: !2281)
!2533 = !DILocation(line: 361, column: 17, scope: !2281)
!2534 = !DILocation(line: 362, column: 34, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !13, line: 361, column: 30)
!2536 = distinct !DILexicalBlock(scope: !2281, file: !13, line: 361, column: 17)
!2537 = !DILocation(line: 399, column: 13, scope: !2270)
!2538 = !DILocation(line: 363, column: 41, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !13, line: 363, column: 24)
!2540 = !DILocation(line: 363, column: 24, scope: !2536)
!2541 = !DILocation(line: 364, column: 44, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !13, line: 363, column: 46)
!2543 = !DILocation(line: 364, column: 31, scope: !2542)
!2544 = !DILocation(line: 365, column: 33, scope: !2542)
!2545 = !DILocation(line: 366, column: 13, scope: !2542)
!2546 = !DILocation(line: 369, column: 26, scope: !2285)
!2547 = !{i64 0, i64 4, !449, i64 4, i64 4, !449, i64 8, i64 4, !449, i64 12, i64 4, !449, i64 16, i64 4, !487, i64 20, i64 4, !487, i64 24, i64 4, !487, i64 28, i64 4, !487, i64 32, i64 1, !2548, i64 36, i64 4, !449, i64 40, i64 4, !449, i64 44, i64 4, !449, i64 48, i64 4, !487, i64 52, i64 4, !449, i64 56, i64 4, !487, i64 60, i64 4, !449, i64 64, i64 4, !487, i64 68, i64 4, !487, i64 72, i64 4, !487, i64 76, i64 1, !2548}
!2548 = !{!558, !558, i64 0}
!2549 = !DILocation(line: 0, scope: !2285)
!2550 = !{i64 0, i64 4, !449, i64 4, i64 4, !449, i64 8, i64 4, !449, i64 12, i64 4, !487, i64 16, i64 4, !487, i64 20, i64 4, !487, i64 24, i64 4, !487, i64 28, i64 1, !2548, i64 32, i64 4, !449, i64 36, i64 4, !449, i64 40, i64 4, !449, i64 44, i64 4, !487, i64 48, i64 4, !449, i64 52, i64 4, !487, i64 56, i64 4, !449, i64 60, i64 4, !487, i64 64, i64 4, !487, i64 68, i64 4, !487, i64 72, i64 1, !2548}
!2551 = !{i64 0, i64 4, !449, i64 4, i64 4, !449, i64 8, i64 4, !449, i64 12, i64 4, !487, i64 16, i64 4, !449, i64 20, i64 4, !487, i64 24, i64 4, !449, i64 28, i64 4, !487, i64 32, i64 4, !487, i64 36, i64 4, !487, i64 40, i64 1, !2548}
!2552 = !{i64 0, i64 4, !449, i64 4, i64 4, !487, i64 8, i64 4, !487, i64 12, i64 4, !487, i64 16, i64 1, !2548}
!2553 = !DILocation(line: 370, column: 26, scope: !2285)
!2554 = !DILocation(line: 371, column: 23, scope: !2285)
!2555 = !DILocation(line: 371, column: 29, scope: !2285)
!2556 = !DILocation(line: 375, column: 34, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2285, file: !13, line: 375, column: 17)
!2558 = !DILocation(line: 375, column: 17, scope: !2285)
!2559 = !DILocation(line: 376, column: 34, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !13, line: 375, column: 40)
!2561 = !DILocation(line: 376, column: 27, scope: !2560)
!2562 = !DILocation(line: 377, column: 13, scope: !2560)
!2563 = !DILocation(line: 380, column: 13, scope: !2285)
!2564 = !DILocation(line: 381, column: 17, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2285, file: !13, line: 381, column: 17)
!2566 = !DILocation(line: 381, column: 17, scope: !2285)
!2567 = !DILocation(line: 382, column: 26, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !13, line: 381, column: 32)
!2569 = !DILocation(line: 384, column: 13, scope: !2568)
!2570 = !DILocation(line: 387, column: 66, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2565, file: !13, line: 384, column: 20)
!2572 = !DILocation(line: 385, column: 26, scope: !2571)
!2573 = !DILocation(line: 0, scope: !2565)
!2574 = !DILocation(line: 389, column: 13, scope: !2285)
!2575 = !DILocation(line: 399, column: 20, scope: !2290)
!2576 = !DILocation(line: 400, column: 18, scope: !2289)
!2577 = !DILocation(line: 400, column: 30, scope: !2289)
!2578 = !DILocation(line: 0, scope: !2288)
!2579 = !DILocation(line: 402, column: 38, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2288, file: !13, line: 402, column: 13)
!2581 = !{!2304, !488, i64 48}
!2582 = !DILocation(line: 402, column: 31, scope: !2580)
!2583 = !DILocation(line: 402, column: 13, scope: !2288)
!2584 = !DILocation(line: 410, column: 9, scope: !2289)
!2585 = !DILocation(line: 404, column: 38, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !13, line: 404, column: 21)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !13, line: 402, column: 58)
!2588 = !DILocation(line: 404, column: 50, scope: !2586)
!2589 = !DILocation(line: 404, column: 21, scope: !2587)
!2590 = !DILocation(line: 405, column: 50, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !13, line: 404, column: 56)
!2592 = !DILocation(line: 406, column: 42, scope: !2591)
!2593 = !DILocation(line: 406, column: 57, scope: !2591)
!2594 = !DILocation(line: 406, column: 62, scope: !2591)
!2595 = !DILocation(line: 406, column: 82, scope: !2591)
!2596 = !DILocation(line: 0, scope: !2591)
!2597 = !DILocation(line: 406, column: 36, scope: !2591)
!2598 = !DILocation(line: 406, column: 33, scope: !2591)
!2599 = !DILocation(line: 407, column: 17, scope: !2591)
!2600 = !DILocation(line: 402, column: 54, scope: !2580)
!2601 = distinct !{!2601, !2583, !2602, !615}
!2602 = !DILocation(line: 409, column: 13, scope: !2288)
!2603 = !DILocation(line: 412, column: 18, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 412, column: 13)
!2605 = !DILocation(line: 412, column: 29, scope: !2604)
!2606 = !DILocation(line: 0, scope: !2604)
!2607 = !DILocation(line: 412, column: 13, scope: !2270)
!2608 = !DILocation(line: 421, column: 28, scope: !2270)
!2609 = !DILocation(line: 425, column: 25, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 425, column: 13)
!2611 = !DILocation(line: 426, column: 34, scope: !2610)
!2612 = !DILocation(line: 426, column: 39, scope: !2610)
!2613 = distinct !{!2613, !2298, !2614, !615}
!2614 = !DILocation(line: 430, column: 5, scope: !2261)
!2615 = !DILocation(line: 426, column: 53, scope: !2610)
!2616 = !DILocation(line: 426, column: 60, scope: !2610)
!2617 = !DILocation(line: 426, column: 65, scope: !2610)
!2618 = !DILocation(line: 426, column: 73, scope: !2610)
!2619 = !DILocation(line: 426, column: 85, scope: !2610)
!2620 = !DILocation(line: 426, column: 91, scope: !2610)
!2621 = !DILocation(line: 426, column: 99, scope: !2610)
!2622 = !DILocation(line: 425, column: 13, scope: !2270)
!2623 = !DILocation(line: 428, column: 13, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2610, file: !13, line: 426, column: 119)
!2625 = !DILocation(line: 429, column: 9, scope: !2624)
!2626 = !DILocation(line: 431, column: 1, scope: !2261)
!2627 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634}
!2629 = !DILocalVariable(name: "user_context", arg: 1, scope: !2627, file: !13, line: 797, type: !43)
!2630 = !DILocalVariable(name: "f", arg: 2, scope: !2627, file: !13, line: 797, type: !39)
!2631 = !DILocalVariable(name: "min", arg: 3, scope: !2627, file: !13, line: 798, type: !29)
!2632 = !DILocalVariable(name: "size", arg: 4, scope: !2627, file: !13, line: 798, type: !29)
!2633 = !DILocalVariable(name: "closure", arg: 5, scope: !2627, file: !13, line: 798, type: !44)
!2634 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2627, file: !13, line: 798, type: !43)
!2635 = !DILocation(line: 0, scope: !2627)
!2636 = !DILocation(line: 799, column: 12, scope: !2627)
!2637 = !DILocation(line: 799, column: 5, scope: !2627)
!2638 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2639)
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DILocalVariable(name: "user_context", arg: 1, scope: !2638, file: !13, line: 787, type: !43)
!2641 = !DILocalVariable(name: "f", arg: 2, scope: !2638, file: !13, line: 787, type: !66)
!2642 = !DILocalVariable(name: "idx", arg: 3, scope: !2638, file: !13, line: 787, type: !29)
!2643 = !DILocalVariable(name: "closure", arg: 4, scope: !2638, file: !13, line: 788, type: !44)
!2644 = !DILocation(line: 0, scope: !2638)
!2645 = !DILocation(line: 789, column: 14, scope: !2638)
!2646 = !DILocation(line: 789, column: 12, scope: !2638)
!2647 = !DILocation(line: 789, column: 5, scope: !2638)
!2648 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2649)
!2649 = !{!2650}
!2650 = !DILocalVariable(name: "arg", arg: 1, scope: !2648, file: !13, line: 433, type: !43)
!2651 = !DILocation(line: 0, scope: !2648)
!2652 = !DILocation(line: 434, column: 5, scope: !2648)
!2653 = !DILocation(line: 435, column: 34, scope: !2648)
!2654 = !DILocation(line: 435, column: 5, scope: !2648)
!2655 = !DILocation(line: 436, column: 5, scope: !2648)
!2656 = !DILocation(line: 437, column: 1, scope: !2648)
!2657 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !3, file: !13, line: 439, type: !2658, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !29, !32, !32}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2671, !2673}
!2661 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2657, file: !13, line: 439, type: !29)
!2662 = !DILocalVariable(name: "jobs", arg: 2, scope: !2657, file: !13, line: 439, type: !32)
!2663 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2657, file: !13, line: 439, type: !32)
!2664 = !DILocalVariable(name: "min_threads", scope: !2657, file: !13, line: 457, type: !29)
!2665 = !DILocalVariable(name: "workers_to_wake", scope: !2657, file: !13, line: 461, type: !29)
!2666 = !DILocalVariable(name: "stealable_jobs", scope: !2657, file: !13, line: 465, type: !64)
!2667 = !DILocalVariable(name: "job_has_acquires", scope: !2657, file: !13, line: 467, type: !64)
!2668 = !DILocalVariable(name: "job_may_block", scope: !2657, file: !13, line: 468, type: !64)
!2669 = !DILocalVariable(name: "i", scope: !2670, file: !13, line: 469, type: !29)
!2670 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 469, column: 5)
!2671 = !DILocalVariable(name: "i", scope: !2672, file: !13, line: 527, type: !29)
!2672 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 527, column: 5)
!2673 = !DILocalVariable(name: "nested_parallelism", scope: !2657, file: !13, line: 537, type: !64)
!2674 = !DILocation(line: 0, scope: !2657)
!2675 = !DILocation(line: 440, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 440, column: 9)
!2677 = !{!2310, !558, i64 1073}
!2678 = !DILocation(line: 440, column: 9, scope: !2657)
!2679 = !DILocalVariable(name: "bytes", scope: !2680, file: !13, line: 148, type: !49)
!2680 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2681)
!2681 = !{!2682, !2679, !2684}
!2682 = !DILocalVariable(name: "this", arg: 1, scope: !2680, type: !2683, flags: DIFlagArtificial | DIFlagObjectPointer)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!2684 = !DILocalVariable(name: "limit", scope: !2680, file: !13, line: 149, type: !49)
!2685 = !DILocation(line: 0, scope: !2680, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 441, column: 20, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2676, file: !13, line: 440, column: 34)
!2688 = !DILocation(line: 150, column: 33, scope: !2680, inlinedAt: !2686)
!2689 = !{!402, !402, i64 0}
!2690 = !DILocation(line: 150, column: 40, scope: !2680, inlinedAt: !2686)
!2691 = !DILocation(line: 150, column: 9, scope: !2680, inlinedAt: !2686)
!2692 = !DILocation(line: 151, column: 18, scope: !2693, inlinedAt: !2686)
!2693 = distinct !DILexicalBlock(scope: !2680, file: !13, line: 150, column: 46)
!2694 = !DILocation(line: 150, column: 22, scope: !2680, inlinedAt: !2686)
!2695 = !DILocation(line: 150, column: 30, scope: !2680, inlinedAt: !2686)
!2696 = distinct !{!2696, !2691, !2697, !615}
!2697 = !DILocation(line: 152, column: 9, scope: !2680, inlinedAt: !2686)
!2698 = !DILocation(line: 153, column: 9, scope: !2699, inlinedAt: !2686)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !13, line: 153, column: 9)
!2700 = distinct !DILexicalBlock(scope: !2680, file: !13, line: 153, column: 9)
!2701 = !DILocation(line: 153, column: 9, scope: !2700, inlinedAt: !2686)
!2702 = !DILocation(line: 153, column: 9, scope: !2703, inlinedAt: !2686)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !13, line: 153, column: 9)
!2704 = !DILocation(line: 446, column: 25, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2687, file: !13, line: 446, column: 13)
!2706 = !{!2310, !488, i64 4}
!2707 = !DILocation(line: 446, column: 14, scope: !2705)
!2708 = !DILocation(line: 446, column: 13, scope: !2687)
!2709 = !DILocation(line: 447, column: 50, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !13, line: 446, column: 50)
!2711 = !DILocation(line: 447, column: 48, scope: !2710)
!2712 = !DILocation(line: 448, column: 9, scope: !2710)
!2713 = !DILocation(line: 449, column: 75, scope: !2687)
!2714 = !DILocation(line: 449, column: 46, scope: !2687)
!2715 = !DILocation(line: 449, column: 44, scope: !2687)
!2716 = !DILocation(line: 450, column: 32, scope: !2687)
!2717 = !DILocation(line: 451, column: 5, scope: !2687)
!2718 = !DILocation(line: 0, scope: !2670)
!2719 = !DILocation(line: 469, column: 23, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2670, file: !13, line: 469, column: 5)
!2721 = !DILocation(line: 469, column: 5, scope: !2670)
!2722 = !DILocation(line: 457, column: 9, scope: !2657)
!2723 = !DILocation(line: 487, column: 21, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 487, column: 9)
!2725 = !DILocation(line: 487, column: 9, scope: !2657)
!2726 = !DILocation(line: 470, column: 26, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !13, line: 470, column: 13)
!2728 = distinct !DILexicalBlock(scope: !2720, file: !13, line: 469, column: 40)
!2729 = !DILocation(line: 470, column: 38, scope: !2727)
!2730 = !DILocation(line: 470, column: 13, scope: !2728)
!2731 = !DILocation(line: 476, column: 26, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !13, line: 476, column: 13)
!2733 = !DILocation(line: 476, column: 41, scope: !2732)
!2734 = !DILocation(line: 476, column: 13, scope: !2728)
!2735 = !DILocation(line: 480, column: 26, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2728, file: !13, line: 480, column: 13)
!2737 = !DILocation(line: 480, column: 13, scope: !2728)
!2738 = !DILocation(line: 481, column: 28, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !13, line: 480, column: 34)
!2740 = !DILocation(line: 482, column: 9, scope: !2739)
!2741 = !DILocation(line: 483, column: 45, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !13, line: 482, column: 16)
!2743 = !DILocation(line: 483, column: 29, scope: !2742)
!2744 = !DILocation(line: 0, scope: !2736)
!2745 = !DILocation(line: 469, column: 36, scope: !2720)
!2746 = distinct !{!2746, !2721, !2747, !615}
!2747 = !DILocation(line: 485, column: 5, scope: !2670)
!2748 = !DILocation(line: 497, column: 30, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !13, line: 497, column: 13)
!2750 = distinct !DILexicalBlock(scope: !2724, file: !13, line: 487, column: 33)
!2751 = !DILocation(line: 503, column: 27, scope: !2750)
!2752 = !DILocation(line: 503, column: 43, scope: !2750)
!2753 = !DILocation(line: 503, column: 57, scope: !2750)
!2754 = !DILocation(line: 504, column: 58, scope: !2750)
!2755 = !DILocation(line: 504, column: 82, scope: !2750)
!2756 = !DILocation(line: 504, column: 45, scope: !2750)
!2757 = !DILocation(line: 504, column: 87, scope: !2750)
!2758 = !DILocation(line: 505, column: 45, scope: !2750)
!2759 = !DILocation(line: 505, column: 63, scope: !2750)
!2760 = !{!2310, !488, i64 1076}
!2761 = !DILocation(line: 505, column: 50, scope: !2750)
!2762 = !DILocation(line: 505, column: 80, scope: !2750)
!2763 = !DILocation(line: 503, column: 9, scope: !2750)
!2764 = !DILocation(line: 508, column: 35, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2750, file: !13, line: 505, column: 96)
!2766 = !DILocation(line: 510, column: 17, scope: !2765)
!2767 = !DILocation(line: 509, column: 58, scope: !2765)
!2768 = !DILocation(line: 509, column: 13, scope: !2765)
!2769 = !DILocation(line: 509, column: 62, scope: !2765)
!2770 = distinct !{!2770, !2763, !2771, !615}
!2771 = !DILocation(line: 511, column: 9, scope: !2750)
!2772 = !DILocation(line: 513, column: 30, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2750, file: !13, line: 513, column: 13)
!2774 = !DILocation(line: 514, column: 40, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2773, file: !13, line: 513, column: 48)
!2776 = !DILocation(line: 515, column: 9, scope: !2775)
!2777 = !DILocation(line: 518, column: 9, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !13, line: 518, column: 9)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !13, line: 518, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2724, file: !13, line: 516, column: 12)
!2781 = !{!2304, !488, i64 56}
!2782 = !DILocation(line: 518, column: 9, scope: !2779)
!2783 = !DILocation(line: 518, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !13, line: 518, column: 9)
!2785 = !DILocation(line: 521, column: 30, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !13, line: 521, column: 13)
!2787 = !DILocation(line: 522, column: 42, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2786, file: !13, line: 521, column: 48)
!2789 = !DILocation(line: 523, column: 9, scope: !2788)
!2790 = !DILocation(line: 0, scope: !2672)
!2791 = !DILocation(line: 527, column: 5, scope: !2672)
!2792 = !DILocation(line: 0, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 527, column: 45)
!2794 = distinct !DILexicalBlock(scope: !2672, file: !13, line: 527, column: 5)
!2795 = !DILocation(line: 538, column: 20, scope: !2657)
!2796 = !DILocation(line: 538, column: 9, scope: !2657)
!2797 = !DILocation(line: 538, column: 36, scope: !2657)
!2798 = !DILocation(line: 542, column: 28, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 542, column: 9)
!2800 = !DILocation(line: 0, scope: !2799)
!2801 = !DILocation(line: 550, column: 5, scope: !2657)
!2802 = !DILocation(line: 551, column: 20, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 551, column: 9)
!2804 = !DILocation(line: 551, column: 52, scope: !2803)
!2805 = !DILocation(line: 551, column: 39, scope: !2803)
!2806 = !DILocation(line: 551, column: 9, scope: !2657)
!2807 = !DILocation(line: 530, column: 39, scope: !2793)
!2808 = !DILocation(line: 530, column: 9, scope: !2793)
!2809 = !DILocation(line: 530, column: 17, scope: !2793)
!2810 = !DILocation(line: 530, column: 26, scope: !2793)
!2811 = !DILocation(line: 531, column: 17, scope: !2793)
!2812 = !DILocation(line: 531, column: 26, scope: !2793)
!2813 = !DILocation(line: 532, column: 17, scope: !2793)
!2814 = !DILocation(line: 532, column: 31, scope: !2793)
!2815 = !DILocation(line: 533, column: 17, scope: !2793)
!2816 = !DILocation(line: 533, column: 34, scope: !2793)
!2817 = !DILocation(line: 527, column: 34, scope: !2794)
!2818 = distinct !{!2818, !2791, !2819, !615}
!2819 = !DILocation(line: 535, column: 5, scope: !2672)
!2820 = !DILocation(line: 552, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2803, file: !13, line: 551, column: 65)
!2822 = !DILocation(line: 553, column: 13, scope: !2821)
!2823 = !DILocation(line: 554, column: 13, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !13, line: 553, column: 29)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !13, line: 553, column: 13)
!2826 = !DILocation(line: 555, column: 9, scope: !2824)
!2827 = !DILocation(line: 558, column: 26, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 558, column: 9)
!2829 = !DILocation(line: 559, column: 13, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2828, file: !13, line: 558, column: 44)
!2831 = !DILocation(line: 0, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2830, file: !13, line: 559, column: 13)
!2833 = !DILocation(line: 565, column: 1, scope: !2657)
!2834 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2835)
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DILocalVariable(name: "user_context", arg: 1, scope: !2834, file: !13, line: 589, type: !43)
!2837 = !DILocalVariable(name: "f", arg: 2, scope: !2834, file: !13, line: 589, type: !66)
!2838 = !DILocalVariable(name: "idx", arg: 3, scope: !2834, file: !13, line: 589, type: !29)
!2839 = !DILocalVariable(name: "closure", arg: 4, scope: !2834, file: !13, line: 590, type: !44)
!2840 = !DILocation(line: 0, scope: !2834)
!2841 = !DILocation(line: 591, column: 12, scope: !2834)
!2842 = !DILocation(line: 591, column: 5, scope: !2834)
!2843 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850}
!2845 = !DILocalVariable(name: "user_context", arg: 1, scope: !2843, file: !13, line: 594, type: !43)
!2846 = !DILocalVariable(name: "f", arg: 2, scope: !2843, file: !13, line: 594, type: !39)
!2847 = !DILocalVariable(name: "min", arg: 3, scope: !2843, file: !13, line: 595, type: !29)
!2848 = !DILocalVariable(name: "extent", arg: 4, scope: !2843, file: !13, line: 595, type: !29)
!2849 = !DILocalVariable(name: "closure", arg: 5, scope: !2843, file: !13, line: 595, type: !44)
!2850 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2843, file: !13, line: 596, type: !43)
!2851 = !DILocation(line: 0, scope: !2843)
!2852 = !DILocation(line: 597, column: 12, scope: !2843)
!2853 = !DILocation(line: 597, column: 5, scope: !2843)
!2854 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861}
!2856 = !DILocalVariable(name: "user_context", arg: 1, scope: !2854, file: !13, line: 600, type: !43)
!2857 = !DILocalVariable(name: "f", arg: 2, scope: !2854, file: !13, line: 600, type: !66)
!2858 = !DILocalVariable(name: "min", arg: 3, scope: !2854, file: !13, line: 601, type: !29)
!2859 = !DILocalVariable(name: "size", arg: 4, scope: !2854, file: !13, line: 601, type: !29)
!2860 = !DILocalVariable(name: "closure", arg: 5, scope: !2854, file: !13, line: 601, type: !44)
!2861 = !DILocalVariable(name: "job", scope: !2854, file: !13, line: 606, type: !33)
!2862 = !DILocation(line: 0, scope: !2854)
!2863 = !DILocation(line: 602, column: 14, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2854, file: !13, line: 602, column: 9)
!2865 = !DILocation(line: 602, column: 9, scope: !2854)
!2866 = !DILocation(line: 606, column: 5, scope: !2854)
!2867 = !DILocation(line: 606, column: 10, scope: !2854)
!2868 = !DILocation(line: 607, column: 14, scope: !2854)
!2869 = !DILocation(line: 607, column: 17, scope: !2854)
!2870 = !DILocation(line: 608, column: 14, scope: !2854)
!2871 = !DILocation(line: 608, column: 18, scope: !2854)
!2872 = !DILocation(line: 609, column: 14, scope: !2854)
!2873 = !DILocation(line: 609, column: 21, scope: !2854)
!2874 = !DILocation(line: 610, column: 14, scope: !2854)
!2875 = !DILocation(line: 610, column: 21, scope: !2854)
!2876 = !DILocation(line: 611, column: 14, scope: !2854)
!2877 = !DILocation(line: 611, column: 25, scope: !2854)
!2878 = !DILocation(line: 612, column: 14, scope: !2854)
!2879 = !DILocation(line: 612, column: 29, scope: !2854)
!2880 = !DILocation(line: 613, column: 14, scope: !2854)
!2881 = !DILocation(line: 613, column: 22, scope: !2854)
!2882 = !DILocation(line: 614, column: 14, scope: !2854)
!2883 = !DILocation(line: 614, column: 26, scope: !2854)
!2884 = !DILocation(line: 615, column: 14, scope: !2854)
!2885 = !DILocation(line: 615, column: 19, scope: !2854)
!2886 = !{!2304, !401, i64 8}
!2887 = !DILocation(line: 616, column: 9, scope: !2854)
!2888 = !DILocation(line: 616, column: 17, scope: !2854)
!2889 = !{!2304, !401, i64 36}
!2890 = !DILocation(line: 617, column: 9, scope: !2854)
!2891 = !DILocation(line: 617, column: 22, scope: !2854)
!2892 = !DILocation(line: 618, column: 9, scope: !2854)
!2893 = !DILocation(line: 618, column: 21, scope: !2854)
!2894 = !DILocation(line: 619, column: 9, scope: !2854)
!2895 = !DILocation(line: 619, column: 24, scope: !2854)
!2896 = !DILocation(line: 620, column: 9, scope: !2854)
!2897 = !DILocation(line: 620, column: 24, scope: !2854)
!2898 = !DILocation(line: 621, column: 9, scope: !2854)
!2899 = !DILocation(line: 621, column: 27, scope: !2854)
!2900 = !DILocation(line: 622, column: 9, scope: !2854)
!2901 = !DILocation(line: 622, column: 18, scope: !2854)
!2902 = !DILocation(line: 623, column: 9, scope: !2854)
!2903 = !DILocation(line: 623, column: 23, scope: !2854)
!2904 = !DILocation(line: 624, column: 9, scope: !2854)
!2905 = !DILocation(line: 624, column: 20, scope: !2854)
!2906 = !DILocation(line: 625, column: 5, scope: !2854)
!2907 = !DILocation(line: 626, column: 5, scope: !2854)
!2908 = !DILocation(line: 627, column: 5, scope: !2854)
!2909 = !DILocation(line: 628, column: 5, scope: !2854)
!2910 = !DILocation(line: 629, column: 16, scope: !2854)
!2911 = !DILocation(line: 630, column: 1, scope: !2854)
!2912 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2921, !2922}
!2914 = !DILocalVariable(name: "user_context", arg: 1, scope: !2912, file: !13, line: 632, type: !43)
!2915 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2912, file: !13, line: 632, type: !29)
!2916 = !DILocalVariable(name: "tasks", arg: 3, scope: !2912, file: !13, line: 633, type: !145)
!2917 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2912, file: !13, line: 634, type: !43)
!2918 = !DILocalVariable(name: "jobs", scope: !2912, file: !13, line: 635, type: !32)
!2919 = !DILocalVariable(name: "i", scope: !2920, file: !13, line: 637, type: !29)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !13, line: 637, column: 5)
!2921 = !DILocalVariable(name: "exit_status", scope: !2912, file: !13, line: 659, type: !29)
!2922 = !DILocalVariable(name: "i", scope: !2923, file: !13, line: 660, type: !29)
!2923 = distinct !DILexicalBlock(scope: !2912, file: !13, line: 660, column: 5)
!2924 = !DILocation(line: 0, scope: !2912)
!2925 = !DILocation(line: 635, column: 56, scope: !2912)
!2926 = !DILocation(line: 635, column: 26, scope: !2912)
!2927 = !DILocation(line: 635, column: 18, scope: !2912)
!2928 = !DILocation(line: 0, scope: !2920)
!2929 = !DILocation(line: 637, column: 23, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2920, file: !13, line: 637, column: 5)
!2931 = !DILocation(line: 637, column: 5, scope: !2920)
!2932 = !DILocation(line: 653, column: 19, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2912, file: !13, line: 653, column: 9)
!2934 = !DILocation(line: 653, column: 9, scope: !2912)
!2935 = !DILocation(line: 638, column: 20, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !13, line: 638, column: 13)
!2937 = distinct !DILexicalBlock(scope: !2930, file: !13, line: 637, column: 41)
!2938 = !{!2305, !488, i64 24}
!2939 = !DILocation(line: 638, column: 27, scope: !2936)
!2940 = !DILocation(line: 638, column: 13, scope: !2937)
!2941 = !DILocation(line: 640, column: 22, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2936, file: !13, line: 638, column: 33)
!2943 = !DILocation(line: 641, column: 13, scope: !2942)
!2944 = !DILocation(line: 643, column: 30, scope: !2937)
!2945 = !DILocation(line: 643, column: 9, scope: !2937)
!2946 = !DILocation(line: 643, column: 22, scope: !2937)
!2947 = !{i64 0, i64 4, !449, i64 4, i64 4, !449, i64 8, i64 4, !449, i64 12, i64 4, !449, i64 16, i64 4, !487, i64 20, i64 4, !487, i64 24, i64 4, !487, i64 28, i64 4, !487, i64 32, i64 1, !2548}
!2948 = !DILocation(line: 644, column: 17, scope: !2937)
!2949 = !DILocation(line: 644, column: 25, scope: !2937)
!2950 = !DILocation(line: 645, column: 17, scope: !2937)
!2951 = !DILocation(line: 645, column: 30, scope: !2937)
!2952 = !DILocation(line: 646, column: 17, scope: !2937)
!2953 = !DILocation(line: 646, column: 29, scope: !2937)
!2954 = !DILocation(line: 647, column: 17, scope: !2937)
!2955 = !DILocation(line: 647, column: 32, scope: !2937)
!2956 = !DILocation(line: 648, column: 17, scope: !2937)
!2957 = !DILocation(line: 648, column: 32, scope: !2937)
!2958 = !DILocation(line: 649, column: 17, scope: !2937)
!2959 = !DILocation(line: 649, column: 35, scope: !2937)
!2960 = !DILocation(line: 650, column: 17, scope: !2937)
!2961 = !DILocation(line: 650, column: 28, scope: !2937)
!2962 = !DILocation(line: 651, column: 5, scope: !2937)
!2963 = !DILocation(line: 637, column: 37, scope: !2930)
!2964 = distinct !{!2964, !2931, !2965, !615}
!2965 = !DILocation(line: 651, column: 5, scope: !2920)
!2966 = !DILocation(line: 657, column: 5, scope: !2912)
!2967 = !DILocation(line: 658, column: 50, scope: !2912)
!2968 = !DILocation(line: 658, column: 5, scope: !2912)
!2969 = !DILocation(line: 0, scope: !2923)
!2970 = !DILocation(line: 660, column: 23, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2923, file: !13, line: 660, column: 5)
!2972 = !DILocation(line: 660, column: 5, scope: !2923)
!2973 = !DILocation(line: 668, column: 5, scope: !2912)
!2974 = !DILocation(line: 663, column: 43, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !13, line: 660, column: 41)
!2976 = !DILocation(line: 663, column: 9, scope: !2975)
!2977 = !DILocation(line: 664, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !13, line: 664, column: 13)
!2979 = !DILocation(line: 664, column: 33, scope: !2978)
!2980 = !DILocation(line: 664, column: 13, scope: !2975)
!2981 = !DILocation(line: 660, column: 37, scope: !2971)
!2982 = distinct !{!2982, !2972, !2983, !615}
!2983 = !DILocation(line: 667, column: 5, scope: !2923)
!2984 = !DILocation(line: 670, column: 1, scope: !2912)
!2985 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "s", arg: 1, scope: !2985, file: !13, line: 715, type: !56)
!2988 = !DILocalVariable(name: "n", arg: 2, scope: !2985, file: !13, line: 715, type: !29)
!2989 = !DILocalVariable(name: "sem", scope: !2985, file: !13, line: 716, type: !370)
!2990 = !DILocation(line: 0, scope: !2985)
!2991 = !DILocation(line: 717, column: 76, scope: !2985)
!2992 = !DILocalVariable(name: "addr", arg: 1, scope: !2993, file: !6, line: 154, type: !2996)
!2993 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !497, file: !6, line: 154, type: !2994, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2999, retainedNodes: !2997)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2996, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!2997 = !{!2992, !2998}
!2998 = !DILocalVariable(name: "val", arg: 2, scope: !2993, file: !6, line: 154, type: !2996)
!2999 = !{!3000}
!3000 = !DITemplateTypeParameter(name: "T", type: !29)
!3001 = !DILocation(line: 0, scope: !2993, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 717, column: 5, scope: !2985)
!3003 = !DILocation(line: 155, column: 11, scope: !2993, inlinedAt: !3002)
!3004 = !DILocation(line: 156, column: 5, scope: !2993, inlinedAt: !3002)
!3005 = !DILocation(line: 718, column: 5, scope: !2985)
!3006 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012}
!3008 = !DILocalVariable(name: "s", arg: 1, scope: !3006, file: !13, line: 735, type: !56)
!3009 = !DILocalVariable(name: "n", arg: 2, scope: !3006, file: !13, line: 735, type: !29)
!3010 = !DILocalVariable(name: "sem", scope: !3006, file: !13, line: 739, type: !370)
!3011 = !DILocalVariable(name: "expected", scope: !3006, file: !13, line: 741, type: !29)
!3012 = !DILocalVariable(name: "desired", scope: !3006, file: !13, line: 742, type: !29)
!3013 = !DILocation(line: 0, scope: !3006)
!3014 = !DILocation(line: 736, column: 11, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3006, file: !13, line: 736, column: 9)
!3016 = !DILocation(line: 736, column: 9, scope: !3006)
!3017 = !DILocation(line: 743, column: 75, scope: !3006)
!3018 = !DILocalVariable(name: "addr", arg: 1, scope: !3019, file: !6, line: 140, type: !2996)
!3019 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !497, file: !6, line: 140, type: !2994, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2999, retainedNodes: !3020)
!3020 = !{!3018, !3021}
!3021 = !DILocalVariable(name: "val", arg: 2, scope: !3019, file: !6, line: 140, type: !2996)
!3022 = !DILocation(line: 0, scope: !3019, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 743, column: 5, scope: !3006)
!3024 = !DILocation(line: 141, column: 5, scope: !3019, inlinedAt: !3023)
!3025 = !DILocation(line: 142, column: 12, scope: !3019, inlinedAt: !3023)
!3026 = !DILocation(line: 744, column: 5, scope: !3006)
!3027 = !DILocation(line: 745, column: 28, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3006, file: !13, line: 744, column: 8)
!3029 = !DILocation(line: 746, column: 22, scope: !3006)
!3030 = !DILocation(line: 746, column: 27, scope: !3006)
!3031 = !DILocalVariable(name: "addr", arg: 1, scope: !3032, file: !6, line: 118, type: !2996)
!3032 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !497, file: !6, line: 118, type: !3033, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2999, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!64, !2996, !2996, !2996}
!3035 = !{!3031, !3036, !3037}
!3036 = !DILocalVariable(name: "expected", arg: 2, scope: !3032, file: !6, line: 118, type: !2996)
!3037 = !DILocalVariable(name: "desired", arg: 3, scope: !3032, file: !6, line: 118, type: !2996)
!3038 = !DILocation(line: 0, scope: !3032, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 747, column: 15, scope: !3006)
!3040 = !DILocalVariable(name: "addr", arg: 1, scope: !3041, file: !6, line: 102, type: !2996)
!3041 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIiEEbPT_S6_S6_", scope: !497, file: !6, line: 102, type: !3033, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2999, retainedNodes: !3042)
!3042 = !{!3040, !3043, !3044, !3045, !3046}
!3043 = !DILocalVariable(name: "expected", arg: 2, scope: !3041, file: !6, line: 102, type: !2996)
!3044 = !DILocalVariable(name: "desired", arg: 3, scope: !3041, file: !6, line: 102, type: !2996)
!3045 = !DILocalVariable(name: "oldval", scope: !3041, file: !6, line: 103, type: !29)
!3046 = !DILocalVariable(name: "gotval", scope: !3041, file: !6, line: 104, type: !29)
!3047 = !DILocation(line: 0, scope: !3041, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 119, column: 12, scope: !3032, inlinedAt: !3039)
!3049 = !DILocation(line: 104, column: 16, scope: !3041, inlinedAt: !3048)
!3050 = !DILocation(line: 106, column: 19, scope: !3041, inlinedAt: !3048)
!3051 = !DILocation(line: 746, column: 5, scope: !3028)
!3052 = distinct !{!3052, !3026, !3053, !615}
!3053 = !DILocation(line: 747, column: 123, scope: !3006)
!3054 = !DILocation(line: 749, column: 1, scope: !3006)
!3055 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DILocalVariable(name: "s", arg: 1, scope: !3055, file: !13, line: 721, type: !56)
!3058 = !DILocalVariable(name: "n", arg: 2, scope: !3055, file: !13, line: 721, type: !29)
!3059 = !DILocalVariable(name: "sem", scope: !3055, file: !13, line: 722, type: !370)
!3060 = !DILocalVariable(name: "old_val", scope: !3055, file: !13, line: 723, type: !29)
!3061 = !DILocation(line: 0, scope: !3055)
!3062 = !DILocation(line: 723, column: 102, scope: !3055)
!3063 = !DILocalVariable(name: "addr", arg: 1, scope: !3064, file: !6, line: 97, type: !2996)
!3064 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !497, file: !6, line: 97, type: !3065, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2999, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!29, !2996, !29}
!3067 = !{!3063, !3068}
!3068 = !DILocalVariable(name: "val", arg: 2, scope: !3064, file: !6, line: 97, type: !29)
!3069 = !DILocation(line: 0, scope: !3064, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 723, column: 19, scope: !3055)
!3071 = !DILocation(line: 98, column: 12, scope: !3064, inlinedAt: !3070)
!3072 = !DILocation(line: 725, column: 17, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3055, file: !13, line: 725, column: 9)
!3074 = !DILocation(line: 725, column: 22, scope: !3073)
!3075 = !DILocation(line: 727, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 725, column: 33)
!3077 = !DILocation(line: 728, column: 9, scope: !3076)
!3078 = !DILocation(line: 729, column: 9, scope: !3076)
!3079 = !DILocation(line: 730, column: 9, scope: !3076)
!3080 = !DILocation(line: 731, column: 5, scope: !3076)
!3081 = !DILocation(line: 732, column: 20, scope: !3055)
!3082 = !DILocation(line: 732, column: 5, scope: !3055)
!3083 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !3084, file: !13, line: 584, type: !638, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!3084 = !DINamespace(scope: null)
!3085 = !DILocation(line: 585, column: 5, scope: !3083)
!3086 = !DILocation(line: 586, column: 1, scope: !3083)
!3087 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !638, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3088)
!3088 = !{!3089}
!3089 = !DILocalVariable(name: "i", scope: !3090, file: !13, line: 702, type: !29)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !13, line: 702, column: 9)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !13, line: 690, column: 33)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !13, line: 690, column: 9)
!3093 = !DILocation(line: 690, column: 20, scope: !3092)
!3094 = !DILocation(line: 690, column: 9, scope: !3087)
!3095 = !DILocation(line: 693, column: 9, scope: !3091)
!3096 = !DILocation(line: 695, column: 29, scope: !3091)
!3097 = !DILocation(line: 696, column: 9, scope: !3091)
!3098 = !DILocation(line: 697, column: 9, scope: !3091)
!3099 = !DILocation(line: 698, column: 9, scope: !3091)
!3100 = !DILocation(line: 699, column: 9, scope: !3091)
!3101 = !DILocation(line: 0, scope: !3090)
!3102 = !DILocation(line: 702, column: 40, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3090, file: !13, line: 702, column: 9)
!3104 = !DILocation(line: 702, column: 27, scope: !3103)
!3105 = !DILocation(line: 702, column: 9, scope: !3090)
!3106 = !DILocalVariable(name: "this", arg: 1, scope: !3107, type: !3111, flags: DIFlagArtificial | DIFlagObjectPointer)
!3107 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !3108)
!3108 = !{!3106, !3109, !3110}
!3109 = !DILocalVariable(name: "bytes", scope: !3107, file: !13, line: 160, type: !374)
!3110 = !DILocalVariable(name: "limit", scope: !3107, file: !13, line: 161, type: !374)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!3112 = !DILocation(line: 0, scope: !3107, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 707, column: 20, scope: !3091)
!3114 = !DILocation(line: 162, column: 9, scope: !3107, inlinedAt: !3113)
!3115 = !DILocation(line: 708, column: 5, scope: !3091)
!3116 = !DILocation(line: 703, column: 32, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3103, file: !13, line: 702, column: 62)
!3118 = !DILocation(line: 703, column: 13, scope: !3117)
!3119 = !DILocation(line: 702, column: 58, scope: !3103)
!3120 = distinct !{!3120, !3105, !3121, !615}
!3121 = !DILocation(line: 704, column: 9, scope: !3090)
!3122 = !DILocation(line: 709, column: 1, scope: !3087)
!3123 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2221, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3124)
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !13, line: 672, type: !29)
!3126 = !DILocalVariable(name: "old", scope: !3123, file: !13, line: 683, type: !29)
!3127 = !DILocation(line: 0, scope: !3123)
!3128 = !DILocation(line: 673, column: 11, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3123, file: !13, line: 673, column: 9)
!3130 = !DILocation(line: 673, column: 9, scope: !3123)
!3131 = !DILocation(line: 674, column: 9, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !13, line: 673, column: 16)
!3133 = !DILocation(line: 679, column: 5, scope: !3123)
!3134 = !DILocation(line: 680, column: 9, scope: !3123)
!3135 = !DILocation(line: 680, column: 11, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3123, file: !13, line: 680, column: 9)
!3137 = !DILocation(line: 681, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3136, file: !13, line: 680, column: 17)
!3139 = !DILocation(line: 682, column: 5, scope: !3138)
!3140 = !DILocation(line: 683, column: 26, scope: !3123)
!3141 = !DILocation(line: 684, column: 42, scope: !3123)
!3142 = !DILocation(line: 684, column: 40, scope: !3123)
!3143 = !DILocation(line: 685, column: 5, scope: !3123)
!3144 = !DILocation(line: 686, column: 5, scope: !3123)
!3145 = !DISubprogram(name: "halide_error", scope: !18, file: !18, line: 111, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3146 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !3147, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!123, !123}
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "f", arg: 1, scope: !3146, file: !13, line: 751, type: !123)
!3151 = !DILocalVariable(name: "result", scope: !3146, file: !13, line: 752, type: !123)
!3152 = !DILocation(line: 0, scope: !3146)
!3153 = !DILocation(line: 752, column: 31, scope: !3146)
!3154 = !DILocation(line: 753, column: 20, scope: !3146)
!3155 = !DILocation(line: 754, column: 5, scope: !3146)
!3156 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !3157, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!129, !129}
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "f", arg: 1, scope: !3156, file: !13, line: 757, type: !129)
!3161 = !DILocalVariable(name: "result", scope: !3156, file: !13, line: 758, type: !129)
!3162 = !DILocation(line: 0, scope: !3156)
!3163 = !DILocation(line: 758, column: 36, scope: !3156)
!3164 = !DILocation(line: 759, column: 25, scope: !3156)
!3165 = !DILocation(line: 760, column: 5, scope: !3156)
!3166 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !3167, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!135, !135}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "f", arg: 1, scope: !3166, file: !13, line: 763, type: !135)
!3171 = !DILocalVariable(name: "result", scope: !3166, file: !13, line: 764, type: !135)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 764, column: 34, scope: !3166)
!3174 = !DILocation(line: 765, column: 23, scope: !3166)
!3175 = !DILocation(line: 766, column: 5, scope: !3166)
!3176 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !3177, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !135, !123, !129, !141, !148, !154, !160}
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3180 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3176, file: !13, line: 770, type: !135)
!3181 = !DILocalVariable(name: "do_task", arg: 2, scope: !3176, file: !13, line: 771, type: !123)
!3182 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3176, file: !13, line: 772, type: !129)
!3183 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3176, file: !13, line: 773, type: !141)
!3184 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3176, file: !13, line: 774, type: !148)
!3185 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3176, file: !13, line: 775, type: !154)
!3186 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3176, file: !13, line: 776, type: !160)
!3187 = !DILocation(line: 0, scope: !3176)
!3188 = !DILocation(line: 778, column: 23, scope: !3176)
!3189 = !DILocation(line: 779, column: 20, scope: !3176)
!3190 = !DILocation(line: 780, column: 25, scope: !3176)
!3191 = !DILocation(line: 781, column: 30, scope: !3176)
!3192 = !DILocation(line: 782, column: 27, scope: !3176)
!3193 = !DILocation(line: 783, column: 34, scope: !3176)
!3194 = !DILocation(line: 784, column: 30, scope: !3176)
!3195 = !DILocation(line: 785, column: 1, scope: !3176)
!3196 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202}
!3198 = !DILocalVariable(name: "user_context", arg: 1, scope: !3196, file: !13, line: 792, type: !43)
!3199 = !DILocalVariable(name: "f", arg: 2, scope: !3196, file: !13, line: 792, type: !66)
!3200 = !DILocalVariable(name: "min", arg: 3, scope: !3196, file: !13, line: 793, type: !29)
!3201 = !DILocalVariable(name: "size", arg: 4, scope: !3196, file: !13, line: 793, type: !29)
!3202 = !DILocalVariable(name: "closure", arg: 5, scope: !3196, file: !13, line: 793, type: !44)
!3203 = !DILocation(line: 0, scope: !3196)
!3204 = !DILocation(line: 794, column: 14, scope: !3196)
!3205 = !DILocation(line: 794, column: 12, scope: !3196)
!3206 = !DILocation(line: 794, column: 5, scope: !3196)
!3207 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3208)
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "user_context", arg: 1, scope: !3207, file: !13, line: 802, type: !43)
!3210 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3207, file: !13, line: 802, type: !29)
!3211 = !DILocalVariable(name: "tasks", arg: 3, scope: !3207, file: !13, line: 803, type: !145)
!3212 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3207, file: !13, line: 804, type: !43)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 805, column: 12, scope: !3207)
!3215 = !DILocation(line: 805, column: 5, scope: !3207)
!3216 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3217)
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "sema", arg: 1, scope: !3216, file: !13, line: 808, type: !56)
!3219 = !DILocalVariable(name: "count", arg: 2, scope: !3216, file: !13, line: 808, type: !29)
!3220 = !DILocation(line: 0, scope: !3216)
!3221 = !DILocation(line: 809, column: 12, scope: !3216)
!3222 = !DILocation(line: 809, column: 5, scope: !3216)
!3223 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3224)
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "sema", arg: 1, scope: !3223, file: !13, line: 812, type: !56)
!3226 = !DILocalVariable(name: "count", arg: 2, scope: !3223, file: !13, line: 812, type: !29)
!3227 = !DILocation(line: 0, scope: !3223)
!3228 = !DILocation(line: 813, column: 12, scope: !3223)
!3229 = !DILocation(line: 813, column: 5, scope: !3223)
!3230 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3231)
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "sema", arg: 1, scope: !3230, file: !13, line: 816, type: !56)
!3233 = !DILocalVariable(name: "count", arg: 2, scope: !3230, file: !13, line: 816, type: !29)
!3234 = !DILocation(line: 0, scope: !3230)
!3235 = !DILocation(line: 817, column: 12, scope: !3230)
!3236 = !DILocation(line: 817, column: 5, scope: !3230)
!3237 = !DISubprogram(name: "pthread_mutex_init", scope: !167, file: !167, line: 28, type: !3238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!29, !3240, !435}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!3241 = !DISubprogram(name: "pthread_cond_init", scope: !167, file: !167, line: 24, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!29, !3244, !435}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!3245 = !DISubprogram(name: "pthread_mutex_lock", scope: !167, file: !167, line: 29, type: !3246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!29, !3240}
!3248 = !DISubprogram(name: "pthread_cond_wait", scope: !167, file: !167, line: 25, type: !3249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!29, !3244, !3240}
!3251 = !DISubprogram(name: "pthread_mutex_unlock", scope: !167, file: !167, line: 30, type: !3246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3252 = !DISubprogram(name: "pthread_cond_destroy", scope: !167, file: !167, line: 27, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!29, !3244}
!3255 = !DISubprogram(name: "pthread_mutex_destroy", scope: !167, file: !167, line: 31, type: !3246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3256 = !DISubprogram(name: "pthread_cond_signal", scope: !167, file: !167, line: 26, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
