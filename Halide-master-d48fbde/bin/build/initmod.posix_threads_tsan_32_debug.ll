; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp"
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
define weak dso_local i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 !dbg !394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !398, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()), !dbg !400
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !401
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !401, !tbaa !402
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !408
  %5 = bitcast i8* %4 to i8**, !dbg !408
  %6 = load i8*, i8** %5, align 4, !dbg !408, !tbaa !409
  tail call void %3(i8* %6) #6, !dbg !410
  ret i8* null, !dbg !411
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !412 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !416, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !419
  %3 = tail call i8* @malloc(i32 12) #6, !dbg !420
  call void @llvm.dbg.value(metadata i8* %3, metadata !418, metadata !DIExpression()), !dbg !419
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !421
  store void (i8*)* %0, void (i8*)** %4, align 4, !dbg !422, !tbaa !402
  %5 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !423
  %6 = bitcast i8* %5 to i8**, !dbg !423
  store i8* %1, i8** %6, align 4, !dbg !424, !tbaa !409
  %7 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !425
  %8 = bitcast i8* %7 to i32*, !dbg !425
  store i32 0, i32* %8, align 4, !dbg !426, !tbaa !427
  %9 = tail call i32 @pthread_create(i32* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #6, !dbg !428
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !429
  ret %struct.halide_thread* %10, !dbg !430
}

declare !dbg !431 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !434 dso_local i32 @pthread_create(i32*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !441 {
  %2 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !445, metadata !DIExpression()), !dbg !448
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %3, metadata !446, metadata !DIExpression()), !dbg !448
  %4 = bitcast i8** %2 to i8*, !dbg !450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !450
  call void @llvm.dbg.value(metadata i8* null, metadata !447, metadata !DIExpression()), !dbg !448
  store i8* null, i8** %2, align 4, !dbg !451, !tbaa !452
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i32 0, i32 2, !dbg !453
  %6 = load i32, i32* %5, align 4, !dbg !453, !tbaa !427
  call void @llvm.dbg.value(metadata i8** %2, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !448
  %7 = call i32 @pthread_join(i32 %6, i8** nonnull %2) #6, !dbg !454
  %8 = bitcast %struct.halide_thread* %0 to i8*, !dbg !455
  call void @free(i8* %8) #6, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !457
  ret void, !dbg !457
}

declare !dbg !458 dso_local i32 @pthread_join(i32, i8**) local_unnamed_addr #3

declare !dbg !462 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !463 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !465, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 40, metadata !467, metadata !DIExpression()), !dbg !487
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !488
  %4 = load i32, i32* %3, align 4, !dbg !489, !tbaa !490
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !492

13:                                               ; preds = %65, %1
  %14 = phi i32 [ %4, %1 ], [ %66, %65 ]
  %15 = phi i32 [ 40, %1 ], [ %67, %65 ]
  br label %16, !dbg !493

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %15, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %17, metadata !479, metadata !DIExpression()), !dbg !487
  %18 = and i32 %17, 1, !dbg !494
  %19 = icmp eq i32 %18, 0, !dbg !495
  br i1 %19, label %20, label %25, !dbg !493

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !479, metadata !DIExpression()), !dbg !487
  %21 = or i32 %17, 1, !dbg !496
  call void @llvm.dbg.value(metadata i32 %21, metadata !480, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32* %3, metadata !498, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 %17, metadata !517, metadata !DIExpression()), !dbg !521
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !523
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !523
  call void @llvm.dbg.value(metadata i32 %23, metadata !518, metadata !DIExpression()), !dbg !521
  %24 = icmp eq i32 %17, %23, !dbg !524
  br i1 %24, label %68, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !525
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !527
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !528, metadata !DIExpression()), !dbg !532
  br i1 %28, label %29, label %34, !dbg !527

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !467, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !487
  %30 = icmp sgt i32 %15, 1, !dbg !534
  br i1 %30, label %31, label %34, !dbg !535

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !536
  call void @llvm.dbg.value(metadata i32 %32, metadata !467, metadata !DIExpression()), !dbg !487
  call void @halide_thread_yield() #6, !dbg !539
  %33 = load i32, i32* %3, align 4, !dbg !541, !tbaa !490
  br label %65, !dbg !542

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %35, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #7, !dbg !543
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !484, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !545, metadata !DIExpression()) #7, !dbg !548
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !550, metadata !DIExpression()) #7, !dbg !554
  store i8 0, i8* %6, align 8, !dbg !556, !tbaa !557
  %36 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !562
  %37 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #6, !dbg !564
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !565, !tbaa !566
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !568, !tbaa !569
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !570, !tbaa !571
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !572, metadata !DIExpression()), !dbg !575
  store i8 1, i8* %6, align 8, !dbg !577, !tbaa !557
  call void @llvm.dbg.value(metadata i32 %17, metadata !479, metadata !DIExpression()), !dbg !487
  %38 = and i32 %17, -4, !dbg !578
  call void @llvm.dbg.value(metadata i32 %38, metadata !485, metadata !DIExpression()), !dbg !579
  %39 = icmp eq i32 %38, 0, !dbg !580
  br i1 %39, label %40, label %41, !dbg !582

40:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !583, !tbaa !571
  br label %43, !dbg !585

41:                                               ; preds = %34
  %42 = inttoptr i32 %38 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !586
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %42, metadata !485, metadata !DIExpression()), !dbg !579
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %42, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !587, !tbaa !566
  br label %43

43:                                               ; preds = %41, %40
  call void @llvm.dbg.value(metadata i32 %17, metadata !479, metadata !DIExpression()), !dbg !487
  %44 = and i32 %17, 3, !dbg !589
  %45 = or i32 %44, %12, !dbg !590
  call void @llvm.dbg.value(metadata i32 %45, metadata !486, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i32* %3, metadata !591, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* undef, metadata !594, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* undef, metadata !595, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i32 %17, metadata !517, metadata !DIExpression()), !dbg !599
  %46 = cmpxchg i32* %3, i32 %17, i32 %45 seq_cst seq_cst, !dbg !601
  %47 = extractvalue { i32, i1 } %46, 0, !dbg !601
  call void @llvm.dbg.value(metadata i32 %47, metadata !518, metadata !DIExpression()), !dbg !599
  %48 = icmp eq i32 %17, %47, !dbg !602
  br i1 %48, label %49, label %60, !dbg !603

49:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !604, metadata !DIExpression()) #7, !dbg !607
  %50 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !610
  %51 = load i8, i8* %6, align 8, !dbg !611, !tbaa !557, !range !612
  %52 = icmp eq i8 %51, 0, !dbg !611
  br i1 %52, label %57, label %53, !dbg !613

53:                                               ; preds = %49, %53
  %54 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !614
  %55 = load i8, i8* %6, align 8, !dbg !611, !tbaa !557, !range !612
  %56 = icmp eq i8 %55, 0, !dbg !611
  br i1 %56, label %57, label %53, !dbg !613, !llvm.loop !616

57:                                               ; preds = %53, %49
  %58 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !619
  call void @llvm.dbg.value(metadata i32 40, metadata !467, metadata !DIExpression()), !dbg !487
  %59 = load i32, i32* %3, align 4, !dbg !620, !tbaa !490
  br label %60, !dbg !621

60:                                               ; preds = %57, %43
  %61 = phi i32 [ %59, %57 ], [ %47, %43 ], !dbg !622
  %62 = phi i32 [ 40, %57 ], [ %35, %43 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %62, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !623, metadata !DIExpression()) #7, !dbg !626
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !628, metadata !DIExpression()) #7, !dbg !631
  %63 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #6, !dbg !634
  %64 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #7, !dbg !637
  br label %65, !dbg !492

65:                                               ; preds = %60, %31
  %66 = phi i32 [ %33, %31 ], [ %61, %60 ]
  %67 = phi i32 [ %32, %31 ], [ %62, %60 ]
  br label %13, !dbg !493, !llvm.loop !638

68:                                               ; preds = %20
  ret void, !dbg !639
}

declare !dbg !640 dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !643 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !645, metadata !DIExpression()), !dbg !667
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !668
  %3 = load i32, i32* %2, align 4, !dbg !669, !tbaa !490
  call void @llvm.dbg.value(metadata i32* undef, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* undef, metadata !675, metadata !DIExpression()), !dbg !676
  br label %4, !dbg !678

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !679
  call void @llvm.dbg.value(metadata i32 %5, metadata !646, metadata !DIExpression()), !dbg !667
  %6 = and i32 %5, 2, !dbg !680
  %7 = icmp ne i32 %6, 0, !dbg !681
  call void @llvm.dbg.value(metadata i1 %7, metadata !647, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !682
  call void @llvm.dbg.value(metadata i1 undef, metadata !649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !682
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !683
  call void @llvm.dbg.value(metadata i1 %8, metadata !649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !682
  br i1 %9, label %67, label %10, !dbg !683

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !646, metadata !DIExpression()), !dbg !667
  %11 = or i32 %5, 2, !dbg !685
  call void @llvm.dbg.value(metadata i32 %11, metadata !650, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32* %2, metadata !498, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32* %2, metadata !509, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32 %5, metadata !517, metadata !DIExpression()), !dbg !689
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !691
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !691
  call void @llvm.dbg.value(metadata i32 %13, metadata !518, metadata !DIExpression()), !dbg !689
  %14 = icmp eq i32 %5, %13, !dbg !692
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %65
  %16 = phi i32 [ %66, %65 ], [ %5, %10 ], !dbg !679
  call void @llvm.dbg.value(metadata i32 %16, metadata !646, metadata !DIExpression()), !dbg !667
  %17 = and i32 %16, -4, !dbg !693
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !694
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !651, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !653, metadata !DIExpression()), !dbg !695
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !696
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !654, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()), !dbg !695
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !695, !tbaa !571
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !653, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !654, metadata !DIExpression()), !dbg !695
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !697
  br i1 %21, label %22, label %33, !dbg !698

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !653, metadata !DIExpression()), !dbg !695
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !699
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !699, !tbaa !566
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !656, metadata !DIExpression()), !dbg !700
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !701
  br i1 %26, label %27, label %28, !dbg !704

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i32 0, i32 0)) #6, !dbg !705
  tail call void @abort() #6, !dbg !705
  br label %28, !dbg !705

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !707
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !708, !tbaa !569
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !653, metadata !DIExpression()), !dbg !695
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !709
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !654, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !695
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !695, !tbaa !571
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !654, metadata !DIExpression()), !dbg !695
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !697
  br i1 %32, label %22, label %33, !dbg !698, !llvm.loop !710

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !695
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !712, !tbaa !571
  call void @llvm.dbg.value(metadata i32 %16, metadata !646, metadata !DIExpression()), !dbg !667
  %35 = and i32 %16, 1, !dbg !713
  %36 = icmp eq i32 %35, 0, !dbg !714
  br i1 %36, label %42, label %37, !dbg !715

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !646, metadata !DIExpression()), !dbg !667
  %38 = and i32 %16, -3, !dbg !716
  call void @llvm.dbg.value(metadata i32 %38, metadata !658, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i32* %2, metadata !718, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32* undef, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32* undef, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32* %2, metadata !509, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 %16, metadata !517, metadata !DIExpression()), !dbg !726
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !728
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !728
  call void @llvm.dbg.value(metadata i32 %40, metadata !518, metadata !DIExpression()), !dbg !726
  %41 = icmp eq i32 %16, %40, !dbg !729
  br i1 %41, label %67, label %65, !dbg !730, !llvm.loop !731

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !734
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !734, !tbaa !569
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !661, metadata !DIExpression()), !dbg !695
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !735
  br i1 %45, label %46, label %54, !dbg !736

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !646, metadata !DIExpression()), !dbg !667
  %48 = and i32 %47, 1, !dbg !737
  call void @llvm.dbg.value(metadata i32 %48, metadata !665, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32* %2, metadata !718, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32* undef, metadata !721, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32* undef, metadata !722, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32* %2, metadata !509, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 %47, metadata !517, metadata !DIExpression()), !dbg !742
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !744
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !744
  call void @llvm.dbg.value(metadata i32 %50, metadata !518, metadata !DIExpression()), !dbg !742
  %51 = icmp eq i32 %47, %50, !dbg !745
  br i1 %51, label %56, label %52, !dbg !746

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !646, metadata !DIExpression()), !dbg !667
  %53 = icmp ult i32 %50, 4, !dbg !747
  br i1 %53, label %46, label %63, !dbg !749, !llvm.loop !750

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !753, !tbaa !571
  call void @llvm.dbg.value(metadata i32* %2, metadata !755, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 -3, metadata !760, metadata !DIExpression()), !dbg !761
  %55 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !763
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !764, metadata !DIExpression()) #7, !dbg !767
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !769
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !770
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !771, metadata !DIExpression()) #7, !dbg !774
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !776
  store i8 0, i8* %59, align 8, !dbg !777, !tbaa !557
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !778
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #6, !dbg !779
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !780, metadata !DIExpression()) #7, !dbg !783
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !785
  br label %67, !dbg !786

63:                                               ; preds = %52
  %64 = extractvalue { i32, i1 } %49, 0, !dbg !744
  call void @llvm.dbg.value(metadata i8 undef, metadata !662, metadata !DIExpression()), !dbg !787
  br label %65

65:                                               ; preds = %37, %63
  %66 = phi i32 [ %64, %63 ], [ %40, %37 ], !dbg !667
  fence seq_cst, !dbg !695
  br label %15

67:                                               ; preds = %4, %37, %56
  ret void, !dbg !788
}

declare !dbg !789 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !792 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) local_unnamed_addr #0 !dbg !793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !798, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 %0, metadata !802, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i32 10, metadata !807, metadata !DIExpression()), !dbg !808
  %2 = mul i32 %0, -1640531527, !dbg !810
  %3 = lshr i32 %2, 22, !dbg !813
  call void @llvm.dbg.value(metadata i32 %3, metadata !799, metadata !DIExpression()), !dbg !801
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !814
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !815, metadata !DIExpression()) #7, !dbg !820
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !822
  call void @llvm.dbg.value(metadata i8* %5, metadata !823, metadata !DIExpression()) #7, !dbg !826
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #6, !dbg !828
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !820
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !820
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !829
  call void @llvm.dbg.value(metadata i32* %6, metadata !498, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* %6, metadata !509, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !833
  %7 = cmpxchg i32* %6, i32 0, i32 1 seq_cst seq_cst, !dbg !835
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !833
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !836
  br i1 %8, label %11, label %9, !dbg !837

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !815, metadata !DIExpression()) #7, !dbg !820
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !839
  br label %11, !dbg !841

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !842, metadata !DIExpression()) #7, !dbg !845
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #6, !dbg !847
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !848
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #4 !dbg !849 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !861, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %2, metadata !862, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %1, metadata !802, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 10, metadata !807, metadata !DIExpression()), !dbg !876
  %4 = mul i32 %1, -1640531527, !dbg !878
  %5 = lshr i32 %4, 22, !dbg !879
  call void @llvm.dbg.value(metadata i32 %5, metadata !863, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %2, metadata !802, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i32 10, metadata !807, metadata !DIExpression()), !dbg !880
  %6 = mul i32 %2, -1640531527, !dbg !882
  %7 = lshr i32 %6, 22, !dbg !883
  call void @llvm.dbg.value(metadata i32 %7, metadata !864, metadata !DIExpression()), !dbg !875
  %8 = icmp eq i32 %5, %7, !dbg !884
  br i1 %8, label %9, label %17, !dbg !885

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !886
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !865, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !815, metadata !DIExpression()) #7, !dbg !888
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !890
  call void @llvm.dbg.value(metadata i8* %11, metadata !823, metadata !DIExpression()) #7, !dbg !891
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #6, !dbg !893
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !888
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !888
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !894
  call void @llvm.dbg.value(metadata i32* %12, metadata !498, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* %12, metadata !509, metadata !DIExpression()) #7, !dbg !897
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !897
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !897
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !897
  %13 = cmpxchg i32* %12, i32 0, i32 1 seq_cst seq_cst, !dbg !899
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !897
  %14 = extractvalue { i32, i1 } %13, 1, !dbg !900
  br i1 %14, label %51, label %15, !dbg !901

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !815, metadata !DIExpression()) #7, !dbg !888
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %16) #6, !dbg !903
  br label %51, !dbg !904

17:                                               ; preds = %3
  %18 = icmp ult i32 %5, %7, !dbg !905
  br i1 %18, label %19, label %35, !dbg !906

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !907
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !868, metadata !DIExpression()), !dbg !908
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !909
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !871, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !815, metadata !DIExpression()) #7, !dbg !910
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !912
  call void @llvm.dbg.value(metadata i8* %22, metadata !823, metadata !DIExpression()) #7, !dbg !913
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #6, !dbg !915
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !910
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !910
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !916
  call void @llvm.dbg.value(metadata i32* %23, metadata !498, metadata !DIExpression()) #7, !dbg !917
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !917
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !917
  call void @llvm.dbg.value(metadata i32* %23, metadata !509, metadata !DIExpression()) #7, !dbg !919
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !919
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !919
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !919
  %24 = cmpxchg i32* %23, i32 0, i32 1 seq_cst seq_cst, !dbg !921
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !919
  %25 = extractvalue { i32, i1 } %24, 1, !dbg !922
  br i1 %25, label %28, label %26, !dbg !923

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !924
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !815, metadata !DIExpression()) #7, !dbg !910
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #6, !dbg !925
  br label %28, !dbg !926

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !842, metadata !DIExpression()) #7, !dbg !927
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #6, !dbg !929
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !815, metadata !DIExpression()) #7, !dbg !930
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !932
  call void @llvm.dbg.value(metadata i8* %29, metadata !823, metadata !DIExpression()) #7, !dbg !933
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #6, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !930
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !930
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, i32 0, !dbg !936
  call void @llvm.dbg.value(metadata i32* %30, metadata !498, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !937
  call void @llvm.dbg.value(metadata i32* %30, metadata !509, metadata !DIExpression()) #7, !dbg !939
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !939
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !939
  %31 = cmpxchg i32* %30, i32 0, i32 1 seq_cst seq_cst, !dbg !941
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !939
  %32 = extractvalue { i32, i1 } %31, 1, !dbg !942
  br i1 %32, label %51, label %33, !dbg !943

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, !dbg !944
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !815, metadata !DIExpression()) #7, !dbg !930
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %34) #6, !dbg !945
  br label %51, !dbg !946

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !947
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !872, metadata !DIExpression()), !dbg !948
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !949
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !874, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !815, metadata !DIExpression()) #7, !dbg !950
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !952
  call void @llvm.dbg.value(metadata i8* %38, metadata !823, metadata !DIExpression()) #7, !dbg !953
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #6, !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !950
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !950
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, i32 0, !dbg !956
  call void @llvm.dbg.value(metadata i32* %39, metadata !498, metadata !DIExpression()) #7, !dbg !957
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !957
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !957
  call void @llvm.dbg.value(metadata i32* %39, metadata !509, metadata !DIExpression()) #7, !dbg !959
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !959
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !959
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !959
  %40 = cmpxchg i32* %39, i32 0, i32 1 seq_cst seq_cst, !dbg !961
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !959
  %41 = extractvalue { i32, i1 } %40, 1, !dbg !962
  br i1 %41, label %44, label %42, !dbg !963

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, !dbg !964
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !815, metadata !DIExpression()) #7, !dbg !950
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %43) #6, !dbg !965
  br label %44, !dbg !966

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !842, metadata !DIExpression()) #7, !dbg !967
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #6, !dbg !969
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !815, metadata !DIExpression()) #7, !dbg !970
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !972
  call void @llvm.dbg.value(metadata i8* %45, metadata !823, metadata !DIExpression()) #7, !dbg !973
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #6, !dbg !975
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()) #7, !dbg !970
  call void @llvm.dbg.value(metadata i32 1, metadata !819, metadata !DIExpression()) #7, !dbg !970
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, i32 0, !dbg !976
  call void @llvm.dbg.value(metadata i32* %46, metadata !498, metadata !DIExpression()) #7, !dbg !977
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !977
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !977
  call void @llvm.dbg.value(metadata i32* %46, metadata !509, metadata !DIExpression()) #7, !dbg !979
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !979
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !979
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !979
  %47 = cmpxchg i32* %46, i32 0, i32 1 seq_cst seq_cst, !dbg !981
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !979
  %48 = extractvalue { i32, i1 } %47, 1, !dbg !982
  br i1 %48, label %51, label %49, !dbg !983

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, !dbg !984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !815, metadata !DIExpression()) #7, !dbg !970
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #6, !dbg !985
  br label %51, !dbg !986

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #6, !dbg !987
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !987
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 4, !dbg !987, !tbaa !452
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !987
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 4, !dbg !987, !tbaa !452
  ret void, !dbg !988
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 !dbg !989 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !994, metadata !DIExpression()), !dbg !995
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !996
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !996, !tbaa !998
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !1000
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1000, !tbaa !1001
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1002
  br i1 %6, label %7, label %18, !dbg !1003

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1004, metadata !DIExpression()) #7, !dbg !1010
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1013
  call void @llvm.dbg.value(metadata i8* %8, metadata !1014, metadata !DIExpression()) #7, !dbg !1017
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #6, !dbg !1019
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1020
  call void @llvm.dbg.value(metadata i32* %10, metadata !1021, metadata !DIExpression()) #7, !dbg !1025
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1025
  %11 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %11, metadata !1007, metadata !DIExpression()) #7, !dbg !1010
  %12 = and i32 %11, 2, !dbg !1028
  %13 = icmp ne i32 %12, 0, !dbg !1029
  call void @llvm.dbg.value(metadata i1 %13, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1010
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1010
  %14 = icmp ult i32 %11, 4
  %15 = or i1 %14, %13, !dbg !1030
  call void @llvm.dbg.value(metadata i1 %14, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1010
  br i1 %15, label %66, label %16, !dbg !1030

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1032
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !1004, metadata !DIExpression()) #7, !dbg !1010
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %17) #6, !dbg !1033
  br label %66, !dbg !1035

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1036
  br i1 %19, label %20, label %43, !dbg !1038

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1004, metadata !DIExpression()) #7, !dbg !1039
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %21, metadata !1014, metadata !DIExpression()) #7, !dbg !1043
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #6, !dbg !1045
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1046
  call void @llvm.dbg.value(metadata i32* %23, metadata !1021, metadata !DIExpression()) #7, !dbg !1047
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1047
  %24 = atomicrmw and i32* %23, i32 -2 seq_cst, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %24, metadata !1007, metadata !DIExpression()) #7, !dbg !1039
  %25 = and i32 %24, 2, !dbg !1050
  %26 = icmp ne i32 %25, 0, !dbg !1051
  call void @llvm.dbg.value(metadata i1 %26, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  %27 = icmp ult i32 %24, 4
  %28 = or i1 %27, %26, !dbg !1052
  call void @llvm.dbg.value(metadata i1 %27, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  br i1 %28, label %31, label %29, !dbg !1052

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1053
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !1004, metadata !DIExpression()) #7, !dbg !1039
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %30) #6, !dbg !1054
  br label %31, !dbg !1055

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !1056, metadata !DIExpression()) #7, !dbg !1059
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #6, !dbg !1061
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1062, !tbaa !1001
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !1004, metadata !DIExpression()) #7, !dbg !1063
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %33, metadata !1014, metadata !DIExpression()) #7, !dbg !1066
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #6, !dbg !1068
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, i32 0, !dbg !1069
  call void @llvm.dbg.value(metadata i32* %35, metadata !1021, metadata !DIExpression()) #7, !dbg !1070
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1070
  %36 = atomicrmw and i32* %35, i32 -2 seq_cst, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %36, metadata !1007, metadata !DIExpression()) #7, !dbg !1063
  %37 = and i32 %36, 2, !dbg !1073
  %38 = icmp ne i32 %37, 0, !dbg !1074
  call void @llvm.dbg.value(metadata i1 %38, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1063
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1063
  %39 = icmp ult i32 %36, 4
  %40 = or i1 %39, %38, !dbg !1075
  call void @llvm.dbg.value(metadata i1 %39, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1063
  br i1 %40, label %66, label %41, !dbg !1075

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, !dbg !1076
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !1004, metadata !DIExpression()) #7, !dbg !1063
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %42) #6, !dbg !1077
  br label %66, !dbg !1078

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !1004, metadata !DIExpression()) #7, !dbg !1079
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %44, metadata !1014, metadata !DIExpression()) #7, !dbg !1083
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #6, !dbg !1085
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !1086
  call void @llvm.dbg.value(metadata i32* %46, metadata !1021, metadata !DIExpression()) #7, !dbg !1087
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1087
  %47 = atomicrmw and i32* %46, i32 -2 seq_cst, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %47, metadata !1007, metadata !DIExpression()) #7, !dbg !1079
  %48 = and i32 %47, 2, !dbg !1090
  %49 = icmp ne i32 %48, 0, !dbg !1091
  call void @llvm.dbg.value(metadata i1 %49, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1079
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1079
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49, !dbg !1092
  call void @llvm.dbg.value(metadata i1 %50, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1079
  br i1 %51, label %54, label %52, !dbg !1092

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !1093
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !1004, metadata !DIExpression()) #7, !dbg !1079
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %53) #6, !dbg !1094
  br label %54, !dbg !1095

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !1056, metadata !DIExpression()) #7, !dbg !1096
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #6, !dbg !1098
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1099, !tbaa !998
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !1004, metadata !DIExpression()) #7, !dbg !1100
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %56, metadata !1014, metadata !DIExpression()) #7, !dbg !1103
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #6, !dbg !1105
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, i32 0, !dbg !1106
  call void @llvm.dbg.value(metadata i32* %58, metadata !1021, metadata !DIExpression()) #7, !dbg !1107
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1107
  %59 = atomicrmw and i32* %58, i32 -2 seq_cst, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %59, metadata !1007, metadata !DIExpression()) #7, !dbg !1100
  %60 = and i32 %59, 2, !dbg !1110
  %61 = icmp ne i32 %60, 0, !dbg !1111
  call void @llvm.dbg.value(metadata i1 %61, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1100
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1100
  %62 = icmp ult i32 %59, 4
  %63 = or i1 %62, %61, !dbg !1112
  call void @llvm.dbg.value(metadata i1 %62, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1100
  br i1 %63, label %66, label %64, !dbg !1112

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, !dbg !1113
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !1004, metadata !DIExpression()) #7, !dbg !1100
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %65) #6, !dbg !1114
  br label %66, !dbg !1115

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #6, !dbg !1116
  ret void, !dbg !1117
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1120, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1121, metadata !DIExpression()), !dbg !1122
  ret i1 true, !dbg !1123
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #5 !dbg !1124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1126, metadata !DIExpression()), !dbg !1127
  ret void, !dbg !1128
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1129 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1131, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 %1, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i1 %2, metadata !1133, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1134
  ret i32 0, !dbg !1135
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1138, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1139, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i1 %2, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1142
  call void @llvm.dbg.value(metadata i1 %3, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1142
  ret void, !dbg !1143
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 !dbg !1144 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1149, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1150, metadata !DIExpression()), !dbg !1154
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #7, !dbg !1155
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1151, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1157, metadata !DIExpression()) #7, !dbg !1160
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !550, metadata !DIExpression()) #7, !dbg !1162
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1164
  store i8 0, i8* %6, align 8, !dbg !1164, !tbaa !557
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1165
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !1166
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1167
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #6, !dbg !1168
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1169
  store i32 0, i32* %11, align 8, !dbg !1169, !tbaa !1170
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1172
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1172, !tbaa !1173
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1174
  store i32 0, i32* %13, align 8, !dbg !1174, !tbaa !1175
  %14 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1176
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1152, metadata !DIExpression()), !dbg !1154
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #7, !dbg !1177
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1153, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1179, metadata !DIExpression()), !dbg !1183
  store i8 0, i8* %15, align 4, !dbg !1185, !tbaa !1186
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1188
  store i32 0, i32* %16, align 4, !dbg !1188, !tbaa !1189
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1190
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 4, !dbg !1190, !tbaa !1192
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1194
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #6, !dbg !1195
  br i1 %20, label %34, label %21, !dbg !1196

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1004, metadata !DIExpression()) #7, !dbg !1197
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14 to i8*, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %22, metadata !1014, metadata !DIExpression()) #7, !dbg !1201
  %23 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %22, i32 1) #6, !dbg !1203
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0, !dbg !1204
  call void @llvm.dbg.value(metadata i32* %24, metadata !1021, metadata !DIExpression()) #7, !dbg !1205
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1205
  %25 = atomicrmw and i32* %24, i32 -2 seq_cst, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %25, metadata !1007, metadata !DIExpression()) #7, !dbg !1197
  %26 = and i32 %25, 2, !dbg !1208
  %27 = icmp ne i32 %26, 0, !dbg !1209
  call void @llvm.dbg.value(metadata i1 %27, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1197
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1197
  %28 = icmp ult i32 %25, 4
  %29 = or i1 %28, %27, !dbg !1210
  call void @llvm.dbg.value(metadata i1 %28, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1197
  br i1 %29, label %32, label %30, !dbg !1210

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, !dbg !1211
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !1004, metadata !DIExpression()) #7, !dbg !1197
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %31) #6, !dbg !1212
  br label %32, !dbg !1213

32:                                               ; preds = %21, %30
  call void @llvm.dbg.value(metadata i8* %22, metadata !1056, metadata !DIExpression()) #7, !dbg !1214
  call void @__tsan_mutex_post_unlock(i8* nonnull %22, i32 1) #6, !dbg !1216
  %33 = load i32, i32* %16, align 4, !dbg !1217, !tbaa !1189
  br label %66, !dbg !1218

34:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1219, !tbaa !1173
  store i32 %0, i32* %11, align 8, !dbg !1220, !tbaa !1170
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !572, metadata !DIExpression()), !dbg !1221
  store i8 1, i8* %6, align 8, !dbg !1223, !tbaa !557
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 1, !dbg !1224
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 4, !dbg !1224, !tbaa !1226
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1229
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2, !dbg !1230
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1230
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, i32 0, i32 2, !dbg !1230
  %41 = select i1 %37, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, !dbg !1230
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !dbg !1231, !tbaa !452
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 2, !dbg !1232
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %42, align 4, !dbg !1233, !tbaa !1234
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1004, metadata !DIExpression()) #7, !dbg !1235
  %43 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14 to i8*, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %43, metadata !1014, metadata !DIExpression()) #7, !dbg !1238
  %44 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %43, i32 1) #6, !dbg !1240
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, i32 0, !dbg !1241
  call void @llvm.dbg.value(metadata i32* %45, metadata !1021, metadata !DIExpression()) #7, !dbg !1242
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1242
  %46 = atomicrmw and i32* %45, i32 -2 seq_cst, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %46, metadata !1007, metadata !DIExpression()) #7, !dbg !1235
  %47 = and i32 %46, 2, !dbg !1245
  %48 = icmp ne i32 %47, 0, !dbg !1246
  call void @llvm.dbg.value(metadata i1 %48, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1235
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1235
  %49 = icmp ult i32 %46, 4
  %50 = or i1 %49, %48, !dbg !1247
  call void @llvm.dbg.value(metadata i1 %49, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1235
  br i1 %50, label %53, label %51, !dbg !1247

51:                                               ; preds = %34
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i32 0, i32 0, !dbg !1248
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %52, metadata !1004, metadata !DIExpression()) #7, !dbg !1235
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %52) #6, !dbg !1249
  br label %53, !dbg !1250

53:                                               ; preds = %34, %51
  call void @llvm.dbg.value(metadata i8* %43, metadata !1056, metadata !DIExpression()) #7, !dbg !1251
  call void @__tsan_mutex_post_unlock(i8* nonnull %43, i32 1) #6, !dbg !1253
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1254
  %55 = load void (i8*)*, void (i8*)** %54, align 4, !dbg !1254, !tbaa !1255
  call void %55(i8* nonnull %19) #6, !dbg !1256
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !604, metadata !DIExpression()) #7, !dbg !1257
  %56 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1259
  %57 = load i8, i8* %6, align 8, !dbg !1260, !tbaa !557, !range !612
  %58 = icmp eq i8 %57, 0, !dbg !1260
  br i1 %58, label %63, label %59, !dbg !1261

59:                                               ; preds = %53, %59
  %60 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !1262
  %61 = load i8, i8* %6, align 8, !dbg !1260, !tbaa !557, !range !612
  %62 = icmp eq i8 %61, 0, !dbg !1260
  br i1 %62, label %63, label %59, !dbg !1261, !llvm.loop !1263

63:                                               ; preds = %59, %53
  %64 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1265
  %65 = load i32, i32* %13, align 8, !dbg !1266, !tbaa !1175
  br label %66, !dbg !1267

66:                                               ; preds = %63, %32
  %67 = phi i32 [ %65, %63 ], [ %33, %32 ], !dbg !1154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #7, !dbg !1268
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1269, metadata !DIExpression()) #7, !dbg !1272
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !628, metadata !DIExpression()) #7, !dbg !1274
  %68 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #6, !dbg !1277
  %69 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #7, !dbg !1268
  ret i32 %67, !dbg !1268
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 !dbg !1279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1282, metadata !DIExpression()), !dbg !1298
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1299
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1283, metadata !DIExpression()), !dbg !1298
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1300
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1284, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1285, metadata !DIExpression()), !dbg !1298
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1301, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1286, metadata !DIExpression()), !dbg !1298
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %12, !dbg !1302

12:                                               ; preds = %59, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %60, %59 ], !dbg !1303
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %61, %59 ], !dbg !1304
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %62, %59 ], !dbg !1305
  %16 = phi i32 [ undef, %2 ], [ %63, %59 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1285, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1284, metadata !DIExpression()), !dbg !1298
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1306
  br i1 %17, label %64, label %18, !dbg !1302

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 1, !dbg !1307
  %20 = load i32, i32* %19, align 4, !dbg !1308, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %20, metadata !1287, metadata !DIExpression()), !dbg !1309
  %21 = icmp eq i32 %20, %0, !dbg !1310
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 2, !dbg !1311
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 4, !dbg !1311, !tbaa !1173
  br i1 %21, label %24, label %59, !dbg !1312

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1289, metadata !DIExpression()), !dbg !1313
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 4, !dbg !1314, !tbaa !452
  call void @llvm.dbg.value(metadata i8 0, metadata !1292, metadata !DIExpression()), !dbg !1313
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1315, !tbaa !1234
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1316
  br i1 %26, label %29, label %27, !dbg !1317

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1293, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 undef, metadata !1292, metadata !DIExpression()), !dbg !1313
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1319
  br i1 %28, label %39, label %30, !dbg !1320

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1321, !tbaa !1234
  br label %39, !dbg !1323

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1293, metadata !DIExpression()), !dbg !1318
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 1, !dbg !1324
  %33 = load i32, i32* %32, align 4, !dbg !1325, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %33, metadata !1296, metadata !DIExpression()), !dbg !1326
  %34 = icmp eq i32 %33, %0, !dbg !1327
  call void @llvm.dbg.value(metadata i1 %34, metadata !1292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1313
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 2, !dbg !1328
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 4, !dbg !1328, !tbaa !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1293, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 undef, metadata !1292, metadata !DIExpression()), !dbg !1313
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1319
  %38 = or i1 %34, %37, !dbg !1329
  br i1 %38, label %39, label %30, !dbg !1320, !llvm.loop !1330

39:                                               ; preds = %30, %27, %29
  %40 = phi i1 [ false, %29 ], [ false, %27 ], [ %34, %30 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1292, metadata !DIExpression()), !dbg !1313
  %41 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1332, !tbaa !1333
  %42 = tail call i32 %41(i8* nonnull %8, i32 1, i1 zeroext %40) #6, !dbg !1334
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 3, !dbg !1335
  store i32 %42, i32* %43, align 8, !dbg !1336, !tbaa !1175
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !764, metadata !DIExpression()) #7, !dbg !1337
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 0, !dbg !1339
  %45 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %44) #6, !dbg !1340
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1004, metadata !DIExpression()) #7, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %9, metadata !1014, metadata !DIExpression()) #7, !dbg !1343
  %46 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32* %10, metadata !1021, metadata !DIExpression()) #7, !dbg !1346
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1346
  %47 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %47, metadata !1007, metadata !DIExpression()) #7, !dbg !1341
  %48 = and i32 %47, 2, !dbg !1349
  %49 = icmp ne i32 %48, 0, !dbg !1350
  call void @llvm.dbg.value(metadata i1 %49, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1341
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1341
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49, !dbg !1351
  call void @llvm.dbg.value(metadata i1 %50, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1341
  br i1 %51, label %53, label %52, !dbg !1351

52:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1004, metadata !DIExpression()) #7, !dbg !1341
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #6, !dbg !1352
  br label %53, !dbg !1353

53:                                               ; preds = %39, %52
  call void @llvm.dbg.value(metadata i8* %9, metadata !1056, metadata !DIExpression()) #7, !dbg !1354
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1356
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !771, metadata !DIExpression()) #7, !dbg !1357
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 2, !dbg !1359
  store i8 0, i8* %54, align 8, !dbg !1360, !tbaa !557
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 1, !dbg !1361
  %56 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %55) #6, !dbg !1362
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !780, metadata !DIExpression()) #7, !dbg !1363
  %57 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %44) #6, !dbg !1365
  %58 = zext i1 %40 to i32, !dbg !1366
  br label %59

59:                                               ; preds = %18, %53
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %53 ], [ %22, %18 ], !dbg !1298
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %53 ], [ %15, %18 ], !dbg !1298
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %53 ], [ %23, %18 ], !dbg !1298
  %63 = phi i32 [ %58, %53 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %62, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1285, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, metadata !1284, metadata !DIExpression()), !dbg !1298
  br i1 %21, label %75, label %12, !llvm.loop !1367

64:                                               ; preds = %12
  %65 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1369, !tbaa !1333
  %66 = tail call i32 %65(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1370
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1004, metadata !DIExpression()) #7, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %9, metadata !1014, metadata !DIExpression()) #7, !dbg !1373
  %67 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1375
  call void @llvm.dbg.value(metadata i32* %10, metadata !1021, metadata !DIExpression()) #7, !dbg !1376
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1376
  %68 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %68, metadata !1007, metadata !DIExpression()) #7, !dbg !1371
  %69 = and i32 %68, 2, !dbg !1379
  %70 = icmp ne i32 %69, 0, !dbg !1380
  call void @llvm.dbg.value(metadata i1 %70, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1371
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1371
  %71 = icmp ult i32 %68, 4
  %72 = or i1 %71, %70, !dbg !1381
  call void @llvm.dbg.value(metadata i1 %71, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1371
  br i1 %72, label %74, label %73, !dbg !1381

73:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1004, metadata !DIExpression()) #7, !dbg !1371
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #6, !dbg !1382
  br label %74, !dbg !1383

74:                                               ; preds = %64, %73
  call void @llvm.dbg.value(metadata i8* %9, metadata !1056, metadata !DIExpression()) #7, !dbg !1384
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1386
  br label %75, !dbg !1387

75:                                               ; preds = %59, %74
  %76 = phi i32 [ 0, %74 ], [ %63, %59 ], !dbg !1298
  ret i32 %76, !dbg !1388
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !1389 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1393, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %1, metadata !1394, metadata !DIExpression()), !dbg !1421
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #8, !dbg !1422
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1395, metadata !DIExpression()), !dbg !1421
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1396, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1397, metadata !DIExpression()), !dbg !1421
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1424, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1398, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1421
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1425
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1425
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1401, metadata !DIExpression()), !dbg !1426
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1427
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1405, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 16, metadata !1406, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1397, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1398, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1421
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1428
  br i1 %9, label %60, label %10, !dbg !1429

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1429

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i32 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i32 [ 0, %10 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1397, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1398, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %15, metadata !1406, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1405, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %17, metadata !1399, metadata !DIExpression()), !dbg !1421
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1430
  %19 = load i32, i32* %18, align 4, !dbg !1431, !tbaa !490
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1432
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1432, !tbaa !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1409, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %19, metadata !1407, metadata !DIExpression()), !dbg !1433
  %22 = icmp eq i32 %19, %0, !dbg !1434
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1435, !tbaa !452
  br i1 %22, label %23, label %54, !dbg !1436

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1437, !tbaa !1234
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1439
  br i1 %25, label %26, label %27, !dbg !1440

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1441, !tbaa !1234
  br label %27, !dbg !1443

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1444
  br i1 %28, label %29, label %46, !dbg !1445

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1410, metadata !DIExpression()), !dbg !1446
  %30 = shl i32 %15, 3, !dbg !1447
  %31 = call i8* @malloc(i32 %30) #6, !dbg !1448
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1405, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 0, metadata !1415, metadata !DIExpression()), !dbg !1450
  %33 = icmp eq i32 %15, 0, !dbg !1451
  br i1 %33, label %34, label %37, !dbg !1453

34:                                               ; preds = %37, %29
  %35 = shl i32 %15, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %35, metadata !1406, metadata !DIExpression()), !dbg !1421
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1455
  br i1 %36, label %46, label %44, !dbg !1457

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !1415, metadata !DIExpression()), !dbg !1450
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %38, !dbg !1458
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1458, !tbaa !452
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %38, !dbg !1460
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !dbg !1461, !tbaa !452
  %42 = add nuw i32 %38, 1, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %42, metadata !1415, metadata !DIExpression()), !dbg !1450
  %43 = icmp ult i32 %42, %15, !dbg !1451
  br i1 %43, label %37, label %34, !dbg !1453, !llvm.loop !1463

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1465
  call void @free(i8* %45) #6, !dbg !1467
  br label %46, !dbg !1468

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1421
  %48 = phi i32 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %48, metadata !1406, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1405, metadata !DIExpression()), !dbg !1421
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1469
  store i32 %1, i32* %49, align 8, !dbg !1470, !tbaa !1175
  %50 = add i32 %17, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %50, metadata !1399, metadata !DIExpression()), !dbg !1421
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i32 %17, !dbg !1472
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 4, !dbg !1473, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !764, metadata !DIExpression()) #7, !dbg !1474
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1476
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #6, !dbg !1477
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1398, metadata !DIExpression()), !dbg !1421
  br label %54, !dbg !1478

54:                                               ; preds = %12, %46
  %55 = phi i32 [ %50, %46 ], [ %17, %12 ], !dbg !1421
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1421
  %57 = phi i32 [ %48, %46 ], [ %15, %12 ], !dbg !1421
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1397, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1398, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %57, metadata !1406, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %56, metadata !1405, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %55, metadata !1399, metadata !DIExpression()), !dbg !1421
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1428
  br i1 %59, label %60, label %12, !dbg !1429, !llvm.loop !1479

60:                                               ; preds = %54, %2
  %61 = phi i32 [ 0, %2 ], [ %55, %54 ], !dbg !1421
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ], !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1004, metadata !DIExpression()) #7, !dbg !1481
  %63 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1483
  call void @llvm.dbg.value(metadata i8* %63, metadata !1014, metadata !DIExpression()) #7, !dbg !1484
  %64 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %63, i32 1) #6, !dbg !1486
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1487
  call void @llvm.dbg.value(metadata i32* %65, metadata !1021, metadata !DIExpression()) #7, !dbg !1488
  call void @llvm.dbg.value(metadata i32 -2, metadata !1024, metadata !DIExpression()) #7, !dbg !1488
  %66 = atomicrmw and i32* %65, i32 -2 seq_cst, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %66, metadata !1007, metadata !DIExpression()) #7, !dbg !1481
  %67 = and i32 %66, 2, !dbg !1491
  %68 = icmp ne i32 %67, 0, !dbg !1492
  call void @llvm.dbg.value(metadata i1 %68, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1481
  call void @llvm.dbg.value(metadata i1 undef, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1481
  %69 = icmp ult i32 %66, 4
  %70 = or i1 %69, %68, !dbg !1493
  call void @llvm.dbg.value(metadata i1 %69, metadata !1009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1481
  br i1 %70, label %73, label %71, !dbg !1493

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1494
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %72, metadata !1004, metadata !DIExpression()) #7, !dbg !1481
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %72) #6, !dbg !1495
  br label %73, !dbg !1496

73:                                               ; preds = %60, %71
  call void @llvm.dbg.value(metadata i8* %63, metadata !1056, metadata !DIExpression()) #7, !dbg !1497
  call void @__tsan_mutex_post_unlock(i8* nonnull %63, i32 1) #6, !dbg !1499
  call void @llvm.dbg.value(metadata i32 0, metadata !1417, metadata !DIExpression()), !dbg !1500
  %74 = icmp eq i32 %61, 0, !dbg !1501
  br i1 %74, label %84, label %75, !dbg !1503

75:                                               ; preds = %73, %75
  %76 = phi i32 [ %82, %75 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !1417, metadata !DIExpression()), !dbg !1500
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %76, !dbg !1504
  %78 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1504, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, metadata !771, metadata !DIExpression()) #7, !dbg !1506
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i32 0, i32 0, i32 2, !dbg !1508
  store i8 0, i8* %79, align 8, !dbg !1509, !tbaa !557
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i32 0, i32 0, i32 1, !dbg !1510
  %81 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %80) #6, !dbg !1511
  %82 = add nuw i32 %76, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %82, metadata !1417, metadata !DIExpression()), !dbg !1500
  %83 = icmp ult i32 %82, %61, !dbg !1501
  br i1 %83, label %75, label %86, !dbg !1503, !llvm.loop !1513

84:                                               ; preds = %86, %73
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8, !dbg !1515
  br i1 %85, label %96, label %94, !dbg !1517

86:                                               ; preds = %75, %86
  %87 = phi i32 [ %92, %86 ], [ 0, %75 ]
  call void @llvm.dbg.value(metadata i32 %87, metadata !1419, metadata !DIExpression()), !dbg !1518
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i32 %87, !dbg !1519
  %89 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %88, align 4, !dbg !1519, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !780, metadata !DIExpression()) #7, !dbg !1522
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, i32 0, i32 0, i32 0, !dbg !1524
  %91 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %90) #6, !dbg !1525
  %92 = add nuw i32 %87, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %92, metadata !1419, metadata !DIExpression()), !dbg !1518
  %93 = icmp ult i32 %92, %61, !dbg !1527
  br i1 %93, label %86, label %84, !dbg !1528, !llvm.loop !1529

94:                                               ; preds = %84
  %95 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*, !dbg !1531
  call void @free(i8* %95) #6, !dbg !1533
  br label %96, !dbg !1534

96:                                               ; preds = %94, %84
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1535
  ret i32 %61, !dbg !1536
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #4 !dbg !1537 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %1, metadata !1542, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %3, metadata !1544, metadata !DIExpression()), !dbg !1556
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1557
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1545, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i32 %1, metadata !1542, metadata !DIExpression()), !dbg !1556
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #8, !dbg !1559
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1560
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1546, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1179, metadata !DIExpression()), !dbg !1562
  store i8 0, i8* %8, align 4, !dbg !1564, !tbaa !1186
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1565
  store i32 0, i32* %9, align 4, !dbg !1565, !tbaa !1189
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1566
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1566, !tbaa !1192
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1568
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #6, !dbg !1569
  br i1 %13, label %15, label %14, !dbg !1570

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1571
  br label %126, !dbg !1573

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1574
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1574, !tbaa !998
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1575
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1547, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1548, metadata !DIExpression()), !dbg !1556
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1576, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1547, metadata !DIExpression()), !dbg !1556
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1577
  br i1 %20, label %105, label %21, !dbg !1578

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1578

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1547, metadata !DIExpression()), !dbg !1556
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1579
  %32 = load i32, i32* %31, align 4, !dbg !1580, !tbaa !490
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1581
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1581, !tbaa !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1555, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %32, metadata !1553, metadata !DIExpression()), !dbg !1582
  %35 = icmp eq i32 %32, %0, !dbg !1583
  br i1 %35, label %36, label %50, !dbg !1585

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1586, !tbaa !452
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1588, !tbaa !998
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1590
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1590, !tbaa !1234
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1591
  br i1 %40, label %41, label %42, !dbg !1592

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1593, !tbaa !1234
  br label %42, !dbg !1595

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44, !dbg !1596

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1598
  br i1 %45, label %48, label %46, !dbg !1601

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1602
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1604, !tbaa !1173
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32* %31, metadata !1605, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32* undef, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i32 %1, i32* %31, align 4, !dbg !1613, !tbaa !490
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1556
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1556
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1614
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1615
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1547, metadata !DIExpression()), !dbg !1556
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1577
  br i1 %56, label %86, label %24, !dbg !1578, !llvm.loop !1616

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1547, metadata !DIExpression()), !dbg !1556
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1579
  %64 = load i32, i32* %63, align 4, !dbg !1580, !tbaa !490
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1581
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1581, !tbaa !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1555, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %64, metadata !1553, metadata !DIExpression()), !dbg !1582
  %67 = icmp eq i32 %64, %0, !dbg !1583
  br i1 %67, label %68, label %80, !dbg !1585

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1586, !tbaa !452
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1588, !tbaa !998
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1590
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1590, !tbaa !1234
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1591
  br i1 %72, label %73, label %74, !dbg !1592

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1593, !tbaa !1234
  br label %74, !dbg !1595

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1598
  br i1 %75, label %78, label %76, !dbg !1601

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1602
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1604, !tbaa !1173
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32* %63, metadata !1605, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32* undef, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i32 %1, i32* %63, align 4, !dbg !1613, !tbaa !490
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1556
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1556
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1614
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1615
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1547, metadata !DIExpression()), !dbg !1556
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1577
  br i1 %85, label %86, label %57, !dbg !1578, !llvm.loop !1616

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1614
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1615
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1556
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1618
  br i1 %90, label %105, label %91, !dbg !1620

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1621
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1623, !tbaa !1173
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1624
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1624, !tbaa !1001
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1626
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1626, !tbaa !1226
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1627
  br i1 %97, label %102, label %98, !dbg !1628

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1629
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1629, !tbaa !1234
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1631
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1632, !tbaa !452
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1633
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1634, !tbaa !1234
  br label %105, !dbg !1635

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1636
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1636, !tbaa !1637
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1638
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #6, !dbg !1639
  br i1 %110, label %111, label %119, !dbg !1640

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1641
  store i32 %3, i32* %112, align 8, !dbg !1644, !tbaa !1175
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !764, metadata !DIExpression()) #7, !dbg !1645
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1647
  %114 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %113) #6, !dbg !1648
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1649
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !771, metadata !DIExpression()) #7, !dbg !1650
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1652
  store i8 0, i8* %115, align 8, !dbg !1653, !tbaa !557
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1654
  %117 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %116) #6, !dbg !1655
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !780, metadata !DIExpression()) #7, !dbg !1656
  %118 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %113) #6, !dbg !1658
  br label %120, !dbg !1659

119:                                              ; preds = %105
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1660
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i8, i8* %8, align 4, !dbg !1662
  %122 = and i8 %121, 1, !dbg !1662
  %123 = icmp ne i8 %122, 0, !dbg !1662
  %124 = and i1 %110, %123, !dbg !1662
  %125 = zext i1 %124 to i32, !dbg !1663
  br label %126

126:                                              ; preds = %120, %14
  %127 = phi i32 [ %125, %120 ], [ 0, %14 ], !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1664
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1664
  ret i32 %127, !dbg !1664
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1665 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1668, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* %0, metadata !1669, metadata !DIExpression()), !dbg !1671
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1672
  %4 = bitcast i8* %3 to i32**, !dbg !1672
  %5 = load i32*, i32** %4, align 4, !dbg !1672, !tbaa !1673
  %6 = load i32, i32* %5, align 4, !dbg !1675, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %6, metadata !1670, metadata !DIExpression()), !dbg !1671
  %7 = icmp eq i32 %6, 3, !dbg !1676
  ret i1 %7, !dbg !1677
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1678 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1680, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %1, metadata !1681, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i1 %2, metadata !1682, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %0, metadata !1683, metadata !DIExpression()), !dbg !1685
  %4 = select i1 %2, i32 2, i32 0, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %4, metadata !1684, metadata !DIExpression()), !dbg !1685
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1687
  %6 = bitcast i8* %5 to i32**, !dbg !1687
  %7 = load i32*, i32** %6, align 4, !dbg !1687, !tbaa !1673
  call void @llvm.dbg.value(metadata i32* %7, metadata !1688, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32* undef, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i32 %4, i32* %7, align 4, !dbg !1694, !tbaa !490
  fence seq_cst, !dbg !1695
  ret i32 0, !dbg !1696
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1699, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i1 %2, metadata !1701, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %0, metadata !1702, metadata !DIExpression()), !dbg !1706
  br i1 %2, label %8, label %4, !dbg !1707

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !1708
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1709
  %6 = bitcast i8* %5 to i32**, !dbg !1709
  %7 = load i32*, i32** %6, align 4, !dbg !1709, !tbaa !1710
  call void @llvm.dbg.value(metadata i32* %7, metadata !1605, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32* undef, metadata !1610, metadata !DIExpression()), !dbg !1712
  store i32 0, i32* %7, align 4, !dbg !1714, !tbaa !490
  br label %8, !dbg !1715

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1716
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 !dbg !1717 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1719, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1720, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %0, metadata !1721, metadata !DIExpression()), !dbg !1723
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1724
  %4 = bitcast i8* %3 to i32**, !dbg !1724
  %5 = load i32*, i32** %4, align 4, !dbg !1724, !tbaa !1725
  %6 = load i32, i32* %5, align 4, !dbg !1727, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %6, metadata !1722, metadata !DIExpression()), !dbg !1723
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1728
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1728
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1728, !tbaa !1730
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1731
  %11 = icmp eq i32 %6, %10, !dbg !1732
  br i1 %11, label %12, label %27, !dbg !1733

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32* %5, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32* undef, metadata !1610, metadata !DIExpression()), !dbg !1734
  store i32 0, i32* %5, align 4, !dbg !1736, !tbaa !490
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1737, metadata !DIExpression()), !dbg !1743
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1745
  %14 = load i32, i32* %13, align 4, !dbg !1746, !tbaa !490
  br label %15, !dbg !1747

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1743
  call void @llvm.dbg.value(metadata i32 %16, metadata !1740, metadata !DIExpression()), !dbg !1743
  %17 = and i32 %16, 1, !dbg !1748
  %18 = icmp eq i32 %17, 0, !dbg !1750
  br i1 %18, label %24, label %19, !dbg !1751

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1740, metadata !DIExpression()), !dbg !1743
  %20 = or i32 %16, 2, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %20, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32* %13, metadata !1754, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32* undef, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32* undef, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32* %13, metadata !509, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %16, metadata !517, metadata !DIExpression()), !dbg !1762
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1764
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %22, metadata !518, metadata !DIExpression()), !dbg !1762
  %23 = icmp eq i32 %16, %22, !dbg !1765
  br i1 %23, label %24, label %15, !llvm.loop !1766

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1768
  store i8 %25, i8* %26, align 4, !dbg !1769, !tbaa !1186
  br label %27, !dbg !1770

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1771
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1775, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i1 %2, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  call void @llvm.dbg.value(metadata i1 %3, metadata !1777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %0, metadata !1778, metadata !DIExpression()), !dbg !1779
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1780
  %6 = load i8, i8* %5, align 4, !dbg !1780, !tbaa !1186, !range !612
  %7 = icmp ne i8 %6, 0, !dbg !1780
  %8 = and i1 %7, %3, !dbg !1782
  br i1 %8, label %9, label %15, !dbg !1782

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1783
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1783
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1783, !tbaa !1730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1785, metadata !DIExpression()), !dbg !1788
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1790
  call void @llvm.dbg.value(metadata i32* %13, metadata !1791, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 2, metadata !1794, metadata !DIExpression()), !dbg !1795
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1797
  br label %15, !dbg !1798

15:                                               ; preds = %4, %9
  ret void, !dbg !1799
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1802, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1803, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %0, metadata !1804, metadata !DIExpression()), !dbg !1806
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1807
  %4 = bitcast i8* %3 to i32**, !dbg !1807
  %5 = load i32*, i32** %4, align 4, !dbg !1807, !tbaa !1808
  %6 = load i32, i32* %5, align 4, !dbg !1810, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %6, metadata !1805, metadata !DIExpression()), !dbg !1806
  %7 = icmp eq i32 %6, 0, !dbg !1811
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1813
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1813
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1813, !tbaa !1814
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1813
  br i1 %7, label %16, label %12, !dbg !1815

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1816
  br i1 %13, label %18, label %14, !dbg !1818

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1819
  br label %16, !dbg !1821

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1813, !tbaa !490
  br label %18, !dbg !1822

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1806
  ret i1 %19, !dbg !1822
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #4 !dbg !1823 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* %0, metadata !1826, metadata !DIExpression()), !dbg !1827
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1828
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1828
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1828, !tbaa !1814
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1829, metadata !DIExpression()) #7, !dbg !1834
  call void @llvm.dbg.value(metadata i32 1, metadata !1832, metadata !DIExpression()) #7, !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()) #7, !dbg !1834
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1836
  call void @llvm.dbg.value(metadata i32* %6, metadata !591, metadata !DIExpression()) #7, !dbg !1838
  call void @llvm.dbg.value(metadata i32* undef, metadata !594, metadata !DIExpression()) #7, !dbg !1838
  call void @llvm.dbg.value(metadata i32* undef, metadata !595, metadata !DIExpression()) #7, !dbg !1838
  call void @llvm.dbg.value(metadata i32* %6, metadata !509, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !517, metadata !DIExpression()) #7, !dbg !1840
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1842
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !1840
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1843
  br i1 %8, label %22, label %9, !dbg !1844

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1845, metadata !DIExpression()) #7, !dbg !1851
  call void @llvm.dbg.value(metadata i32 1, metadata !1848, metadata !DIExpression()) #7, !dbg !1851
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()) #7, !dbg !1851
  call void @llvm.dbg.value(metadata i32* %6, metadata !1854, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* undef, metadata !1857, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* undef, metadata !1858, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* %6, metadata !509, metadata !DIExpression()) #7, !dbg !1862
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !1862
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !1862
  call void @llvm.dbg.value(metadata i32 1, metadata !517, metadata !DIExpression()) #7, !dbg !1862
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1864
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !1862
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1865
  br i1 %11, label %22, label %12, !dbg !1866

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1867
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1867
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1850, metadata !DIExpression()) #7, !dbg !1868
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1869, metadata !DIExpression()) #7, !dbg !1873
  call void @llvm.dbg.value(metadata i32* %6, metadata !1872, metadata !DIExpression()) #7, !dbg !1873
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1875, metadata !DIExpression()) #7, !dbg !1879
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1881
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1882
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 4, !dbg !1882, !tbaa !1255
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1883
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1884
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !1884, !tbaa !1637
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1885
  store i32* %6, i32** %18, align 4, !dbg !1885, !tbaa !1673
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !1886, !tbaa !1192
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %16, align 4, !dbg !1888, !tbaa !1333
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !1889
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1890
  %21 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %20) #6, !dbg !1891
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1892
  br label %22, !dbg !1892

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1893
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1896, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %1, metadata !1897, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i1 %2, metadata !1898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()), !dbg !1903
  br i1 %2, label %8, label %4, !dbg !1904

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1905
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1906
  %6 = bitcast i8* %5 to i32**, !dbg !1906
  %7 = load i32*, i32** %6, align 4, !dbg !1906, !tbaa !1808
  call void @llvm.dbg.value(metadata i32* %7, metadata !1605, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32* undef, metadata !1610, metadata !DIExpression()), !dbg !1907
  store i32 0, i32* %7, align 4, !dbg !1909, !tbaa !490
  br label %8, !dbg !1910

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1911
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1912 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1919, metadata !DIExpression()) #7, !dbg !1924
  call void @llvm.dbg.value(metadata i32 0, metadata !1922, metadata !DIExpression()) #7, !dbg !1924
  call void @llvm.dbg.value(metadata i32 1, metadata !1923, metadata !DIExpression()) #7, !dbg !1924
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1926
  call void @llvm.dbg.value(metadata i32* %3, metadata !498, metadata !DIExpression()) #7, !dbg !1928
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !1928
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !1928
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()) #7, !dbg !1930
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !1930
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !1930
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !1930
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !1932
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !1930
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1933
  br i1 %5, label %53, label %6, !dbg !1934

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1919, metadata !DIExpression()) #7, !dbg !1924
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1935, metadata !DIExpression()) #7, !dbg !1949
  call void @llvm.dbg.value(metadata i32 40, metadata !1938, metadata !DIExpression()) #7, !dbg !1949
  %7 = load i32, i32* %3, align 4, !dbg !1952, !tbaa !490
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  br label %16, !dbg !1953

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !1954

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !1949
  call void @llvm.dbg.value(metadata i32 %18, metadata !1938, metadata !DIExpression()) #7, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %20, metadata !1939, metadata !DIExpression()) #7, !dbg !1949
  %21 = and i32 %20, 1, !dbg !1955
  %22 = icmp eq i32 %21, 0, !dbg !1956
  br i1 %22, label %23, label %28, !dbg !1954

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1939, metadata !DIExpression()) #7, !dbg !1949
  %24 = or i32 %20, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %24, metadata !1940, metadata !DIExpression()) #7, !dbg !1958
  call void @llvm.dbg.value(metadata i32* %3, metadata !498, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %20, metadata !517, metadata !DIExpression()) #7, !dbg !1962
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !1964
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %26, metadata !518, metadata !DIExpression()) #7, !dbg !1962
  %27 = icmp eq i32 %20, %26, !dbg !1965
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !528, metadata !DIExpression()) #7, !dbg !1966
  %29 = icmp sgt i32 %18, 0, !dbg !1969
  br i1 %29, label %30, label %35, !dbg !1970

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1949
  %31 = icmp eq i32 %18, 1, !dbg !1971
  br i1 %31, label %35, label %32, !dbg !1972

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %33, metadata !1938, metadata !DIExpression()) #7, !dbg !1949
  call void @halide_thread_yield() #6, !dbg !1974
  %34 = load i32, i32* %3, align 4, !dbg !1976, !tbaa !490
  br label %49, !dbg !1977

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1939, metadata !DIExpression()) #7, !dbg !1949
  %37 = and i32 %20, 2, !dbg !1978
  %38 = icmp eq i32 %37, 0, !dbg !1979
  br i1 %38, label %39, label %44, !dbg !1980

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !1939, metadata !DIExpression()) #7, !dbg !1949
  %40 = or i32 %20, 2, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %40, metadata !1944, metadata !DIExpression()) #7, !dbg !1982
  call void @llvm.dbg.value(metadata i32* %3, metadata !1754, metadata !DIExpression()) #7, !dbg !1983
  call void @llvm.dbg.value(metadata i32* undef, metadata !1757, metadata !DIExpression()) #7, !dbg !1983
  call void @llvm.dbg.value(metadata i32* undef, metadata !1758, metadata !DIExpression()) #7, !dbg !1983
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %20, metadata !517, metadata !DIExpression()) #7, !dbg !1986
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !1988
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %42, metadata !518, metadata !DIExpression()) #7, !dbg !1986
  %43 = icmp eq i32 %20, %42, !dbg !1989
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1990
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1947, metadata !DIExpression()) #7, !dbg !1991
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1869, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i32* %3, metadata !1872, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1875, metadata !DIExpression()) #7, !dbg !1994
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !1996, !tbaa !1255
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1997, !tbaa !1637
  store i32* %3, i32** %13, align 4, !dbg !1998, !tbaa !1673
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1999, !tbaa !1192
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2000, !tbaa !1333
  %45 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #6, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %45, metadata !1948, metadata !DIExpression()) #7, !dbg !2002
  %46 = icmp eq i32 %45, %14, !dbg !2003
  br i1 %46, label %52, label %47, !dbg !2005

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !1938, metadata !DIExpression()) #7, !dbg !1949
  %48 = load i32, i32* %3, align 4, !dbg !2006, !tbaa !490
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !2007
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !1954, !llvm.loop !2008

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !2007
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !2009
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !2010 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2013, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1829, metadata !DIExpression()) #7, !dbg !2015
  call void @llvm.dbg.value(metadata i32 1, metadata !1832, metadata !DIExpression()) #7, !dbg !2015
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()) #7, !dbg !2015
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !2017
  call void @llvm.dbg.value(metadata i32* %3, metadata !591, metadata !DIExpression()) #7, !dbg !2018
  call void @llvm.dbg.value(metadata i32* undef, metadata !594, metadata !DIExpression()) #7, !dbg !2018
  call void @llvm.dbg.value(metadata i32* undef, metadata !595, metadata !DIExpression()) #7, !dbg !2018
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()) #7, !dbg !2020
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !2020
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !2020
  call void @llvm.dbg.value(metadata i32 1, metadata !517, metadata !DIExpression()) #7, !dbg !2020
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !2020
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2023
  br i1 %5, label %19, label %6, !dbg !2024

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1845, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 1, metadata !1848, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32* %3, metadata !1854, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata i32* undef, metadata !1857, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata i32* undef, metadata !1858, metadata !DIExpression()) #7, !dbg !2027
  call void @llvm.dbg.value(metadata i32* %3, metadata !509, metadata !DIExpression()) #7, !dbg !2029
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !2029
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !2029
  call void @llvm.dbg.value(metadata i32 1, metadata !517, metadata !DIExpression()) #7, !dbg !2029
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2031
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !2029
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !2032
  br i1 %8, label %19, label %9, !dbg !2033

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #7, !dbg !2034
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1850, metadata !DIExpression()) #7, !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1869, metadata !DIExpression()) #7, !dbg !2036
  call void @llvm.dbg.value(metadata i32* %3, metadata !1872, metadata !DIExpression()) #7, !dbg !2036
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1875, metadata !DIExpression()) #7, !dbg !2038
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2040
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2041
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2041, !tbaa !1255
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2042
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2043
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2043, !tbaa !1637
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !2044
  store i32* %3, i32** %15, align 4, !dbg !2044, !tbaa !1673
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2045, !tbaa !1192
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2046, !tbaa !1333
  %16 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !2047
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !2048
  %18 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #6, !dbg !2049
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #7, !dbg !2050
  br label %19, !dbg !2050

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2051
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !2052 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2058, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2060, metadata !DIExpression()) #7, !dbg !2065
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %3, metadata !2068, metadata !DIExpression()) #7, !dbg !2071
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !2073
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2074
  %5 = load i32, i32* %4, align 4, !dbg !2075, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %5, metadata !2063, metadata !DIExpression()) #7, !dbg !2065
  %6 = icmp eq i32 %5, 0, !dbg !2076
  br i1 %6, label %7, label %8, !dbg !2078

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2079, metadata !DIExpression()) #7, !dbg !2082
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2085
  br label %20, !dbg !2086

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2060, metadata !DIExpression()) #7, !dbg !2065
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2058, metadata !DIExpression()), !dbg !2059
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2087
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2064, metadata !DIExpression()) #7, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %5, metadata !2063, metadata !DIExpression()) #7, !dbg !2065
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2089
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2090, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32* %4, metadata !2093, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2094, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1875, metadata !DIExpression()) #7, !dbg !2097
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2099
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2100
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2100, !tbaa !1255
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2101
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2101, !tbaa !1333
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2102
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !2103
  store i32* %4, i32** %15, align 4, !dbg !2103, !tbaa !1725
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !2104
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !2104, !tbaa !1730
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2105, !tbaa !1192
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2107, !tbaa !1637
  %17 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %5, metadata !2063, metadata !DIExpression()) #7, !dbg !2065
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !2109
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %17, i32 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %18, i32 0) #6, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %3, metadata !2079, metadata !DIExpression()) #7, !dbg !2111
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2114
  br label %20, !dbg !2114

20:                                               ; preds = %7, %8
  ret void, !dbg !2115
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !2116 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2118, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2119, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2121, metadata !DIExpression()) #7, !dbg !2126
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %3, metadata !2068, metadata !DIExpression()) #7, !dbg !2129
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !2131
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2132
  %5 = load i32, i32* %4, align 4, !dbg !2133, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %5, metadata !2124, metadata !DIExpression()) #7, !dbg !2126
  %6 = icmp eq i32 %5, 0, !dbg !2134
  br i1 %6, label %7, label %8, !dbg !2136

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2079, metadata !DIExpression()) #7, !dbg !2137
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2140
  br label %20, !dbg !2141

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2121, metadata !DIExpression()) #7, !dbg !2126
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2119, metadata !DIExpression()), !dbg !2120
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2142
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2142
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2125, metadata !DIExpression()) #7, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %5, metadata !2124, metadata !DIExpression()) #7, !dbg !2126
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2144
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2145, metadata !DIExpression()) #7, !dbg !2150
  call void @llvm.dbg.value(metadata i32* %4, metadata !2148, metadata !DIExpression()) #7, !dbg !2150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2149, metadata !DIExpression()) #7, !dbg !2150
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1875, metadata !DIExpression()) #7, !dbg !2152
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2154
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2154, !tbaa !1192
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2155
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2155, !tbaa !1255
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2156
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2157
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2157, !tbaa !1637
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !2158
  store i32* %4, i32** %15, align 4, !dbg !2158, !tbaa !1710
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !2159
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !2159, !tbaa !2160
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2161, !tbaa !1333
  %17 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2163
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !2164
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %18) #6, !dbg !2165
  call void @llvm.dbg.value(metadata i8* %3, metadata !2079, metadata !DIExpression()) #7, !dbg !2166
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2168
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2169
  br label %20, !dbg !2169

20:                                               ; preds = %7, %8
  ret void, !dbg !2170
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !2171 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2175, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2178, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2180, metadata !DIExpression()) #7, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2183, metadata !DIExpression()) #7, !dbg !2189
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2191
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2184, metadata !DIExpression()) #7, !dbg !2192
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2193
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2194, metadata !DIExpression()) #7, !dbg !2199
  call void @llvm.dbg.value(metadata i32* %6, metadata !2197, metadata !DIExpression()) #7, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2198, metadata !DIExpression()) #7, !dbg !2199
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1875, metadata !DIExpression()) #7, !dbg !2201
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !2203
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !2204
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !2205
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !2206
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !2206, !tbaa !1637
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !2207
  store i32* %6, i32** %11, align 4, !dbg !2207, !tbaa !1808
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !2208
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2208
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !2208, !tbaa !1814
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !2209, !tbaa !1192
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 4, !dbg !2211, !tbaa !1255
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %9, align 4, !dbg !2212, !tbaa !1333
  %14 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2213
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !2214
  %16 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #6, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %16, metadata !2185, metadata !DIExpression()) #7, !dbg !2189
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !2216
  %18 = icmp eq i32 %16, %17, !dbg !2217
  br i1 %18, label %69, label %19, !dbg !2218

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1919, metadata !DIExpression()) #7, !dbg !2219
  call void @llvm.dbg.value(metadata i32 0, metadata !1922, metadata !DIExpression()) #7, !dbg !2219
  call void @llvm.dbg.value(metadata i32 1, metadata !1923, metadata !DIExpression()) #7, !dbg !2219
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2222
  call void @llvm.dbg.value(metadata i32* %20, metadata !498, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32* %20, metadata !509, metadata !DIExpression()) #7, !dbg !2225
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !2225
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !2225
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()) #7, !dbg !2225
  %21 = cmpxchg i32* %20, i32 0, i32 1 seq_cst seq_cst, !dbg !2227
  call void @llvm.dbg.value(metadata i32 undef, metadata !518, metadata !DIExpression()) #7, !dbg !2225
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2228
  br i1 %22, label %77, label %23, !dbg !2229

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1935, metadata !DIExpression()) #7, !dbg !2230
  call void @llvm.dbg.value(metadata i32 40, metadata !1938, metadata !DIExpression()) #7, !dbg !2230
  %24 = load i32, i32* %20, align 4, !dbg !2232, !tbaa !490
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !2233

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !2234

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !2230
  call void @llvm.dbg.value(metadata i32 %34, metadata !1938, metadata !DIExpression()) #7, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %36, metadata !1939, metadata !DIExpression()) #7, !dbg !2230
  %37 = and i32 %36, 1, !dbg !2235
  %38 = icmp eq i32 %37, 0, !dbg !2236
  br i1 %38, label %39, label %44, !dbg !2234

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1939, metadata !DIExpression()) #7, !dbg !2230
  %40 = or i32 %36, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %40, metadata !1940, metadata !DIExpression()) #7, !dbg !2238
  call void @llvm.dbg.value(metadata i32* %20, metadata !498, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32* undef, metadata !504, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32* undef, metadata !505, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32* %20, metadata !509, metadata !DIExpression()) #7, !dbg !2241
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !2241
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %36, metadata !517, metadata !DIExpression()) #7, !dbg !2241
  %41 = cmpxchg i32* %20, i32 %36, i32 %40 seq_cst seq_cst, !dbg !2243
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %42, metadata !518, metadata !DIExpression()) #7, !dbg !2241
  %43 = icmp eq i32 %36, %42, !dbg !2244
  br i1 %43, label %77, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !528, metadata !DIExpression()) #7, !dbg !2245
  %45 = icmp sgt i32 %34, 0, !dbg !2247
  br i1 %45, label %46, label %51, !dbg !2248

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2230
  %47 = icmp eq i32 %34, 1, !dbg !2249
  br i1 %47, label %51, label %48, !dbg !2250

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %49, metadata !1938, metadata !DIExpression()) #7, !dbg !2230
  call void @halide_thread_yield() #6, !dbg !2252
  %50 = load i32, i32* %20, align 4, !dbg !2253, !tbaa !490
  br label %65, !dbg !2254

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1939, metadata !DIExpression()) #7, !dbg !2230
  %53 = and i32 %36, 2, !dbg !2255
  %54 = icmp eq i32 %53, 0, !dbg !2256
  br i1 %54, label %55, label %60, !dbg !2257

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !1939, metadata !DIExpression()) #7, !dbg !2230
  %56 = or i32 %36, 2, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %56, metadata !1944, metadata !DIExpression()) #7, !dbg !2259
  call void @llvm.dbg.value(metadata i32* %20, metadata !1754, metadata !DIExpression()) #7, !dbg !2260
  call void @llvm.dbg.value(metadata i32* undef, metadata !1757, metadata !DIExpression()) #7, !dbg !2260
  call void @llvm.dbg.value(metadata i32* undef, metadata !1758, metadata !DIExpression()) #7, !dbg !2260
  call void @llvm.dbg.value(metadata i32* %20, metadata !509, metadata !DIExpression()) #7, !dbg !2262
  call void @llvm.dbg.value(metadata i32* undef, metadata !515, metadata !DIExpression()) #7, !dbg !2262
  call void @llvm.dbg.value(metadata i32* undef, metadata !516, metadata !DIExpression()) #7, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %36, metadata !517, metadata !DIExpression()) #7, !dbg !2262
  %57 = cmpxchg i32* %20, i32 %36, i32 %56 seq_cst seq_cst, !dbg !2264
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %58, metadata !518, metadata !DIExpression()) #7, !dbg !2262
  %59 = icmp eq i32 %36, %58, !dbg !2265
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2266
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1947, metadata !DIExpression()) #7, !dbg !2267
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1869, metadata !DIExpression()) #7, !dbg !2268
  call void @llvm.dbg.value(metadata i32* %20, metadata !1872, metadata !DIExpression()) #7, !dbg !2268
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1875, metadata !DIExpression()) #7, !dbg !2270
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 4, !dbg !2272, !tbaa !1255
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !2273, !tbaa !1637
  store i32* %20, i32** %30, align 4, !dbg !2274, !tbaa !1673
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !2275, !tbaa !1192
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %28, align 4, !dbg !2276, !tbaa !1333
  %61 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #6, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %61, metadata !1948, metadata !DIExpression()) #7, !dbg !2278
  %62 = icmp eq i32 %61, %17, !dbg !2279
  br i1 %62, label %68, label %63, !dbg !2280

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !1938, metadata !DIExpression()) #7, !dbg !2230
  %64 = load i32, i32* %20, align 4, !dbg !2281, !tbaa !490
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2282
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !2234, !llvm.loop !2283

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2282
  br label %77

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2198, metadata !DIExpression()) #7, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2183, metadata !DIExpression()) #7, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2178, metadata !DIExpression()), !dbg !2179
  %70 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %70, metadata !823, metadata !DIExpression()) #7, !dbg !2285
  call void @__tsan_mutex_pre_lock(i8* %70, i32 1) #6, !dbg !2287
  %71 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2288
  %72 = load i32, i32* %71, align 4, !dbg !2289, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %72, metadata !2186, metadata !DIExpression()) #7, !dbg !2290
  %73 = and i32 %72, 1, !dbg !2291
  %74 = icmp eq i32 %73, 0, !dbg !2291
  br i1 %74, label %75, label %76, !dbg !2294

75:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !2295
  call void @abort() #6, !dbg !2295
  br label %76, !dbg !2295

76:                                               ; preds = %75, %69
  call void @llvm.dbg.value(metadata i8* %70, metadata !842, metadata !DIExpression()) #7, !dbg !2297
  call void @__tsan_mutex_post_lock(i8* nonnull %70, i32 1, i32 1) #6, !dbg !2299
  br label %77

77:                                               ; preds = %39, %19, %68, %76
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2300
  ret void, !dbg !2301
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2306, metadata !DIExpression()), !dbg !2308
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #6, !dbg !2309
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2307, metadata !DIExpression()), !dbg !2308
  %4 = icmp eq i8* %2, null, !dbg !2311
  br i1 %4, label %13, label %5, !dbg !2313

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !2314
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #6, !dbg !2315
  %8 = bitcast i8* %2 to i8**, !dbg !2316
  store i8* %7, i8** %8, align 4, !dbg !2316, !tbaa !2317
  %9 = icmp eq i8* %7, null, !dbg !2319
  br i1 %9, label %10, label %11, !dbg !2321

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2322
  br label %13, !dbg !2324

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #6, !dbg !2325
  br label %13, !dbg !2326

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !2308
  ret %struct.halide_mutex_array* %14, !dbg !2327
}

declare !dbg !2328 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

declare !dbg !2331 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !2334 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8* %1, metadata !2340, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()), !dbg !2342
  %3 = bitcast i8* %1 to i8**, !dbg !2343
  %4 = load i8*, i8** %3, align 4, !dbg !2343, !tbaa !2317
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2344
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2345
  ret void, !dbg !2346
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2347 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %1, metadata !2352, metadata !DIExpression()), !dbg !2353
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2354
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2354, !tbaa !2317
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2355
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #8, !dbg !2356
  ret i32 0, !dbg !2357
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2358 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()), !dbg !2362
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2363
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2363, !tbaa !2317
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2364
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #8, !dbg !2365
  ret i32 0, !dbg !2366
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #5 !dbg !2367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2372
  %2 = icmp sgt i32 %0, 256, !dbg !2373
  br i1 %2, label %6, label %3, !dbg !2375

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2376
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2376
  ret i32 %5, !dbg !2376

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2371, metadata !DIExpression()), !dbg !2372
  ret i32 256, !dbg !2377
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #0 !dbg !2378 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2382, metadata !DIExpression()), !dbg !2384
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()), !dbg !2384
  %2 = icmp eq i8* %1, null, !dbg !2386
  br i1 %2, label %3, label %6, !dbg !2388

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %4, metadata !2383, metadata !DIExpression()), !dbg !2384
  %5 = icmp eq i8* %4, null, !dbg !2391
  br i1 %5, label %9, label %6, !dbg !2393

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %8, metadata !2382, metadata !DIExpression()), !dbg !2384
  br label %11, !dbg !2396

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %10, metadata !2382, metadata !DIExpression()), !dbg !2384
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2399
  call void @llvm.dbg.value(metadata i32 %12, metadata !2382, metadata !DIExpression()), !dbg !2384
  ret i32 %12, !dbg !2400
}

declare !dbg !2401 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !2404 dso_local i32 @atoi(i8*) local_unnamed_addr #3

declare !dbg !2407 extern_weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2408 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2412, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 40, metadata !2414, metadata !DIExpression()), !dbg !2438
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2439
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2445

10:                                               ; preds = %390, %1
  %11 = phi i32 [ 0, %1 ], [ %391, %390 ], !dbg !2446
  call void @llvm.dbg.value(metadata i32 %11, metadata !2413, metadata !DIExpression()), !dbg !2438
  br i1 %3, label %15, label %12, !dbg !2447

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2442, metadata !DIExpression()), !dbg !2448
  %13 = load i32, i32* %4, align 4, !dbg !2449, !tbaa !2450
  %14 = icmp eq i32 %13, 0, !dbg !2453
  br i1 %14, label %18, label %21, !dbg !2454

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !2455, !tbaa !2456, !range !612
  %17 = icmp eq i8 %16, 0, !dbg !2455
  br i1 %17, label %48, label %405, !dbg !2445

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2439, !tbaa !2460
  %20 = icmp eq i32 %19, 0, !dbg !2439
  br i1 %20, label %405, label %21, !dbg !2445

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2461, !tbaa !2462
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2418, metadata !DIExpression()), !dbg !2463
  %23 = load i32, i32* %5, align 4, !dbg !2464, !tbaa !2468
  %24 = icmp eq i32 %23, 0, !dbg !2469
  br i1 %24, label %38, label %25, !dbg !2470

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2471, !tbaa !2460
  %27 = icmp eq i32 %26, 0, !dbg !2474
  br i1 %27, label %28, label %46, !dbg !2475

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2418, metadata !DIExpression()), !dbg !2463
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2476
  br i1 %29, label %35, label %30, !dbg !2478

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2416, metadata !DIExpression()), !dbg !2463
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2479
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2418, metadata !DIExpression()), !dbg !2463
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2481, !tbaa !2482
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2416, metadata !DIExpression()), !dbg !2463
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2476
  br i1 %34, label %35, label %30, !dbg !2478, !llvm.loop !2483

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %28 ], [ %32, %30 ], !dbg !2463
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2485, !tbaa !2482
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 4, !dbg !2486, !tbaa !452
  store i32 0, i32* %4, align 4, !dbg !2487, !tbaa !2450
  br label %390, !dbg !2488

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2489, !tbaa !2491
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2492
  br i1 %40, label %46, label %41, !dbg !2493

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i32 0, i32 9, !dbg !2494
  %43 = load i32, i32* %42, align 4, !dbg !2494, !tbaa !2468
  %44 = icmp eq i32 %43, 0, !dbg !2495
  br i1 %44, label %46, label %45, !dbg !2496

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2497, !tbaa !2468
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2499
  br label %390, !dbg !2500

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2418, metadata !DIExpression()), !dbg !2463
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2501
  br i1 %47, label %188, label %51, !dbg !2502

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2461, !tbaa !2462
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2418, metadata !DIExpression()), !dbg !2463
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2501
  br i1 %50, label %198, label %52, !dbg !2502

51:                                               ; preds = %46
  br i1 %3, label %52, label %117, !dbg !2502

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2503

54:                                               ; preds = %52, %113
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %115, %113 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %114, %113 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2418, metadata !DIExpression()), !dbg !2463
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 5, !dbg !2504
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 4, !dbg !2504, !tbaa !2491
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2422, metadata !DIExpression()), !dbg !2505
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2506
  br i1 %59, label %71, label %60, !dbg !2503

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 8, !dbg !2508
  %62 = load i32, i32* %61, align 4, !dbg !2508, !tbaa !2460
  %63 = icmp eq i32 %62, 0, !dbg !2511
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 0, i32 7, !dbg !2512
  %65 = load i32, i32* %64, align 4, !dbg !2512, !tbaa !2513
  br i1 %63, label %69, label %66, !dbg !2514

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2515
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2518
  call void @llvm.dbg.value(metadata i32 undef, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %74, !dbg !2520

71:                                               ; preds = %54
  %72 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2521, !tbaa !2523
  %73 = add nsw i32 %72, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %78, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %74, !dbg !2525

74:                                               ; preds = %71, %69, %66
  %75 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %71 ], [ %70, %69 ], [ %68, %66 ]
  %76 = phi i32 [ %73, %71 ], [ %65, %69 ], [ %67, %66 ]
  %77 = load i32, i32* %75, align 4, !dbg !2526, !tbaa !490
  %78 = sub i32 %76, %77, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %78, metadata !2423, metadata !DIExpression()), !dbg !2505
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 7, !dbg !2527
  %80 = load i32, i32* %79, align 4, !dbg !2527, !tbaa !2513
  %81 = icmp sge i32 %78, %80, !dbg !2528
  call void @llvm.dbg.value(metadata i1 %81, metadata !2420, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  call void @llvm.dbg.value(metadata i1 true, metadata !2424, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 8, !dbg !2529
  %83 = load i8, i8* %82, align 4, !dbg !2529, !tbaa !2530, !range !612
  %84 = icmp eq i8 %83, 0, !dbg !2529
  br i1 %84, label %89, label %85, !dbg !2531

85:                                               ; preds = %74
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 8, !dbg !2532
  %87 = load i32, i32* %86, align 4, !dbg !2532, !tbaa !2460
  %88 = icmp eq i32 %87, 0, !dbg !2533
  br label %89, !dbg !2531

89:                                               ; preds = %85, %74
  %90 = phi i1 [ true, %74 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !2425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  %91 = and i1 %90, %81, !dbg !2534
  br i1 %91, label %92, label %113, !dbg !2534

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2536, metadata !DIExpression()) #7, !dbg !2539
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 10, !dbg !2543
  %94 = load i32, i32* %93, align 4, !dbg !2543, !tbaa !2546
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 4, !dbg !2547
  %96 = load i32, i32* %95, align 4, !dbg !2547, !tbaa !2548
  %97 = icmp slt i32 %94, %96, !dbg !2549
  br i1 %97, label %98, label %217, !dbg !2550

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 3
  br label %100, !dbg !2550

100:                                              ; preds = %108, %98
  %101 = phi i32 [ %94, %98 ], [ %110, %108 ]
  %102 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %99, align 4, !dbg !2551, !tbaa !2554
  %103 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 0, !dbg !2555
  %104 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %103, align 4, !dbg !2555, !tbaa !2556
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 1, !dbg !2558
  %106 = load i32, i32* %105, align 4, !dbg !2558, !tbaa !2559
  %107 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %104, i32 %106) #6, !dbg !2560
  br i1 %107, label %108, label %113, !dbg !2561

108:                                              ; preds = %100
  %109 = load i32, i32* %93, align 4, !dbg !2562, !tbaa !2546
  %110 = add nsw i32 %109, 1, !dbg !2562
  store i32 %110, i32* %93, align 4, !dbg !2562, !tbaa !2546
  %111 = load i32, i32* %95, align 4, !dbg !2547, !tbaa !2548
  %112 = icmp slt i32 %110, %111, !dbg !2549
  br i1 %112, label %100, label %217, !dbg !2550, !llvm.loop !2563

113:                                              ; preds = %100, %89
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 2, !dbg !2565
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %114, metadata !2418, metadata !DIExpression()), !dbg !2463
  %115 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %114, align 4, !dbg !2566, !tbaa !2482
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %115, metadata !2416, metadata !DIExpression()), !dbg !2463
  %116 = icmp eq %"struct.Halide::Runtime::Internal::work"* %115, null, !dbg !2501
  br i1 %116, label %188, label %54, !dbg !2502

117:                                              ; preds = %51, %184
  %118 = phi %"struct.Halide::Runtime::Internal::work"* [ %186, %184 ], [ %22, %51 ]
  %119 = phi %"struct.Halide::Runtime::Internal::work"** [ %185, %184 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %119, metadata !2418, metadata !DIExpression()), !dbg !2463
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 5, !dbg !2504
  %121 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %120, align 4, !dbg !2504, !tbaa !2491
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %121, metadata !2422, metadata !DIExpression()), !dbg !2505
  %122 = icmp eq %"struct.Halide::Runtime::Internal::work"* %121, null, !dbg !2506
  br i1 %122, label %123, label %126, !dbg !2503

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2521, !tbaa !2523
  %125 = add nsw i32 %124, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32 undef, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %137, !dbg !2525

126:                                              ; preds = %117
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 8, !dbg !2508
  %128 = load i32, i32* %127, align 4, !dbg !2508, !tbaa !2460
  %129 = icmp eq i32 %128, 0, !dbg !2511
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 0, i32 7, !dbg !2512
  %131 = load i32, i32* %130, align 4, !dbg !2512, !tbaa !2513
  br i1 %129, label %132, label %134, !dbg !2514

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %141, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %137, !dbg !2520

134:                                              ; preds = %126
  %135 = mul nsw i32 %131, %128, !dbg !2515
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2423, metadata !DIExpression()), !dbg !2505
  br label %137

137:                                              ; preds = %132, %134, %123
  %138 = phi i32* [ %133, %132 ], [ %136, %134 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %123 ]
  %139 = phi i32 [ %131, %132 ], [ %135, %134 ], [ %125, %123 ]
  %140 = load i32, i32* %138, align 4, !dbg !2526, !tbaa !490
  %141 = sub i32 %139, %140, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %141, metadata !2423, metadata !DIExpression()), !dbg !2505
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 7, !dbg !2527
  %143 = load i32, i32* %142, align 4, !dbg !2527, !tbaa !2513
  %144 = icmp slt i32 %141, %143, !dbg !2528
  call void @llvm.dbg.value(metadata i1 %144, metadata !2420, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 3, !dbg !2567
  %146 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %145, align 4, !dbg !2567, !tbaa !2568
  %147 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2569, !tbaa !2568
  %148 = icmp ne %"struct.Halide::Runtime::Internal::work"* %146, %147, !dbg !2570
  %149 = icmp ne i32 %143, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2424, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 8, !dbg !2529
  %151 = load i8, i8* %150, align 4, !dbg !2529, !tbaa !2530, !range !612
  %152 = icmp eq i8 %151, 0, !dbg !2529
  br i1 %152, label %157, label %153, !dbg !2531

153:                                              ; preds = %137
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 8, !dbg !2532
  %155 = load i32, i32* %154, align 4, !dbg !2532, !tbaa !2460
  %156 = icmp eq i32 %155, 0, !dbg !2533
  br label %157, !dbg !2531

157:                                              ; preds = %153, %137
  %158 = phi i1 [ true, %137 ], [ %156, %153 ]
  call void @llvm.dbg.value(metadata i1 %158, metadata !2425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2505
  %159 = and i1 %149, %148, !dbg !2534
  %160 = or i1 %144, %159, !dbg !2534
  %161 = xor i1 %158, true, !dbg !2534
  %162 = or i1 %160, %161, !dbg !2534
  br i1 %162, label %184, label %163, !dbg !2534

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2536, metadata !DIExpression()) #7, !dbg !2539
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 10, !dbg !2543
  %165 = load i32, i32* %164, align 4, !dbg !2543, !tbaa !2546
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 4, !dbg !2547
  %167 = load i32, i32* %166, align 4, !dbg !2547, !tbaa !2548
  %168 = icmp slt i32 %165, %167, !dbg !2549
  br i1 %168, label %169, label %217, !dbg !2550

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 3
  br label %171, !dbg !2550

171:                                              ; preds = %179, %169
  %172 = phi i32 [ %165, %169 ], [ %181, %179 ]
  %173 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %170, align 4, !dbg !2551, !tbaa !2554
  %174 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 0, !dbg !2555
  %175 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %174, align 4, !dbg !2555, !tbaa !2556
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 1, !dbg !2558
  %177 = load i32, i32* %176, align 4, !dbg !2558, !tbaa !2559
  %178 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %175, i32 %177) #6, !dbg !2560
  br i1 %178, label %179, label %184, !dbg !2561

179:                                              ; preds = %171
  %180 = load i32, i32* %164, align 4, !dbg !2562, !tbaa !2546
  %181 = add nsw i32 %180, 1, !dbg !2562
  store i32 %181, i32* %164, align 4, !dbg !2562, !tbaa !2546
  %182 = load i32, i32* %166, align 4, !dbg !2547, !tbaa !2548
  %183 = icmp slt i32 %181, %182, !dbg !2549
  br i1 %183, label %171, label %217, !dbg !2550, !llvm.loop !2563

184:                                              ; preds = %171, %157
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 2, !dbg !2565
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %185, metadata !2418, metadata !DIExpression()), !dbg !2463
  %186 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %185, align 4, !dbg !2566, !tbaa !2482
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %186, metadata !2416, metadata !DIExpression()), !dbg !2463
  %187 = icmp eq %"struct.Halide::Runtime::Internal::work"* %186, null, !dbg !2501
  br i1 %187, label %188, label %117, !dbg !2502

188:                                              ; preds = %184, %113, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2418, metadata !DIExpression()), !dbg !2463
  br i1 %3, label %198, label %189, !dbg !2571

189:                                              ; preds = %188
  %190 = add nsw i32 %11, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %190, metadata !2413, metadata !DIExpression()), !dbg !2438
  %191 = icmp slt i32 %11, 40, !dbg !2578
  br i1 %191, label %192, label %193, !dbg !2579

192:                                              ; preds = %189
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2580
  tail call void @halide_thread_yield() #6, !dbg !2582
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2583
  br label %390, !dbg !2584

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2585, !tbaa !2587
  %195 = add nsw i32 %194, 1, !dbg !2585
  store i32 %195, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2585, !tbaa !2587
  store i8 1, i8* %8, align 4, !dbg !2588, !tbaa !2589
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2590
  store i8 0, i8* %8, align 4, !dbg !2591, !tbaa !2589
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2592, !tbaa !2587
  %197 = add nsw i32 %196, -1, !dbg !2592
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2592, !tbaa !2587
  br label %390

198:                                              ; preds = %48, %188
  %199 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2593, !tbaa !2595
  %200 = add nsw i32 %199, 1, !dbg !2593
  store i32 %200, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2593, !tbaa !2595
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2596, !tbaa !2598
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2599, !tbaa !2600
  %203 = icmp sgt i32 %201, %202, !dbg !2601
  br i1 %203, label %204, label %208, !dbg !2602

204:                                              ; preds = %198
  %205 = add nsw i32 %201, -1, !dbg !2603
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2603, !tbaa !2598
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2605
  %206 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2606, !tbaa !2598
  %207 = add nsw i32 %206, 1, !dbg !2606
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2606, !tbaa !2598
  br label %213, !dbg !2607

208:                                              ; preds = %198
  %209 = add nsw i32 %11, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %209, metadata !2413, metadata !DIExpression()), !dbg !2438
  %210 = icmp slt i32 %11, 40, !dbg !2610
  br i1 %210, label %211, label %212, !dbg !2611

211:                                              ; preds = %208
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2612
  tail call void @halide_thread_yield() #6, !dbg !2614
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2615
  br label %213, !dbg !2616

212:                                              ; preds = %208
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2617
  br label %213

213:                                              ; preds = %211, %212, %204
  %214 = phi i32 [ %11, %204 ], [ %209, %211 ], [ %209, %212 ], !dbg !2438
  call void @llvm.dbg.value(metadata i32 %214, metadata !2413, metadata !DIExpression()), !dbg !2438
  %215 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2619, !tbaa !2595
  %216 = add nsw i32 %215, -1, !dbg !2619
  store i32 %216, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2619, !tbaa !2595
  br label %390

217:                                              ; preds = %163, %92, %179, %108
  %218 = phi i32* [ %93, %108 ], [ %164, %179 ], [ %93, %92 ], [ %164, %163 ]
  %219 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %108 ], [ %119, %179 ], [ %56, %92 ], [ %119, %163 ]
  %220 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %108 ], [ %118, %179 ], [ %55, %92 ], [ %118, %163 ]
  store i32 0, i32* %218, align 4, !dbg !2620, !tbaa !2546
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2416, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %219, metadata !2418, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2438
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 8, !dbg !2621
  %222 = load i32, i32* %221, align 4, !dbg !2622, !tbaa !2460
  %223 = add nsw i32 %222, 1, !dbg !2622
  store i32 %223, i32* %221, align 4, !dbg !2622, !tbaa !2460
  %224 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 5, !dbg !2623
  %225 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2623, !tbaa !2491
  %226 = icmp eq %"struct.Halide::Runtime::Internal::work"* %225, null, !dbg !2625
  %227 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2626
  %228 = load i32, i32* %227, align 4, !dbg !2626, !tbaa !2513
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %225, i32 0, i32 6, !dbg !2627
  %230 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2627
  %231 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2627
  %232 = load i32, i32* %230, align 4, !dbg !2626, !tbaa !490
  %233 = add nsw i32 %232, %228, !dbg !2626
  store i32 %233, i32* %231, align 4, !dbg !2626, !tbaa !490
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2463
  %234 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 8, !dbg !2628
  %235 = load i8, i8* %234, align 4, !dbg !2628, !tbaa !2530, !range !612
  %236 = icmp eq i8 %235, 0, !dbg !2628
  br i1 %236, label %311, label %237, !dbg !2629

237:                                              ; preds = %217
  %238 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2630
  %239 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2630, !tbaa !2482
  store %"struct.Halide::Runtime::Internal::work"* %239, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2631, !tbaa !452
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2427, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !2430, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2463
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 10
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 4
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 3
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %246 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %248 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  br label %249, !dbg !2634

249:                                              ; preds = %237, %288
  %250 = phi i32 [ 1, %237 ], [ 0, %288 ]
  %251 = phi i32 [ 0, %237 ], [ %296, %288 ]
  call void @llvm.dbg.value(metadata i32 %251, metadata !2427, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %250, metadata !2430, metadata !DIExpression()), !dbg !2633
  %252 = load i32, i32* %240, align 4, !dbg !2635, !tbaa !2450
  %253 = sub nsw i32 %252, %251, !dbg !2637
  %254 = icmp sgt i32 %253, %250, !dbg !2638
  br i1 %254, label %255, label %285, !dbg !2639

255:                                              ; preds = %249
  %256 = load i32, i32* %241, align 4, !dbg !2640, !tbaa !2546
  %257 = load i32, i32* %242, align 4, !dbg !2642, !tbaa !2548
  br label %258, !dbg !2643

258:                                              ; preds = %255, %279
  %259 = phi i32 [ %280, %279 ], [ %252, %255 ]
  %260 = phi i32 [ %281, %279 ], [ %257, %255 ], !dbg !2642
  %261 = phi i32 [ 0, %279 ], [ %256, %255 ], !dbg !2640
  %262 = phi i32 [ %282, %279 ], [ %250, %255 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2430, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2536, metadata !DIExpression()) #7, !dbg !2644
  %263 = icmp slt i32 %261, %260, !dbg !2645
  br i1 %263, label %264, label %279, !dbg !2646

264:                                              ; preds = %258, %272
  %265 = phi i32 [ %274, %272 ], [ %261, %258 ]
  %266 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %243, align 4, !dbg !2647, !tbaa !2554
  %267 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 0, !dbg !2648
  %268 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %267, align 4, !dbg !2648, !tbaa !2556
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 1, !dbg !2649
  %270 = load i32, i32* %269, align 4, !dbg !2649, !tbaa !2559
  %271 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %268, i32 %270) #6, !dbg !2650
  br i1 %271, label %272, label %285, !dbg !2651

272:                                              ; preds = %264
  %273 = load i32, i32* %241, align 4, !dbg !2652, !tbaa !2546
  %274 = add nsw i32 %273, 1, !dbg !2652
  store i32 %274, i32* %241, align 4, !dbg !2652, !tbaa !2546
  %275 = load i32, i32* %242, align 4, !dbg !2642, !tbaa !2548
  %276 = icmp slt i32 %274, %275, !dbg !2645
  br i1 %276, label %264, label %277, !dbg !2646, !llvm.loop !2653

277:                                              ; preds = %272
  %278 = load i32, i32* %240, align 4, !dbg !2635, !tbaa !2450
  br label %279, !dbg !2655

279:                                              ; preds = %277, %258
  %280 = phi i32 [ %278, %277 ], [ %259, %258 ], !dbg !2635
  %281 = phi i32 [ %275, %277 ], [ %260, %258 ]
  store i32 0, i32* %241, align 4, !dbg !2655, !tbaa !2546
  %282 = add nuw nsw i32 %262, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %282, metadata !2430, metadata !DIExpression()), !dbg !2633
  %283 = sub nsw i32 %280, %251, !dbg !2637
  %284 = icmp sgt i32 %283, %282, !dbg !2638
  br i1 %284, label %258, label %288, !dbg !2639, !llvm.loop !2658

285:                                              ; preds = %264, %249
  %286 = phi i32 [ %250, %249 ], [ %262, %264 ]
  %287 = icmp eq i32 %286, 0, !dbg !2660
  br i1 %287, label %298, label %288, !dbg !2662

288:                                              ; preds = %279, %285
  %289 = phi i32 [ %286, %285 ], [ %282, %279 ]
  %290 = load i8*, i8** %244, align 4, !dbg !2663, !tbaa !2664
  %291 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %245, align 4, !dbg !2665, !tbaa !2666
  %292 = load i32, i32* %246, align 4, !dbg !2667, !tbaa !2668
  %293 = add nsw i32 %292, %251, !dbg !2669
  %294 = load i8*, i8** %247, align 4, !dbg !2670, !tbaa !2671
  %295 = tail call i32 @halide_do_loop_task(i8* %290, i32 (i8*, i32, i32, i8*, i8*)* %291, i32 %293, i32 %289, i8* %294, i8* nonnull %248) #8, !dbg !2672
  call void @llvm.dbg.value(metadata i32 %295, metadata !2426, metadata !DIExpression()), !dbg !2463
  %296 = add nuw nsw i32 %289, %251, !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %296, metadata !2427, metadata !DIExpression()), !dbg !2633
  %297 = icmp eq i32 %295, 0, !dbg !2674
  br i1 %297, label %249, label %298, !dbg !2634, !llvm.loop !2675

298:                                              ; preds = %285, %288
  %299 = phi i1 [ true, %285 ], [ false, %288 ]
  %300 = phi i32 [ 0, %285 ], [ %295, %288 ], !dbg !2463
  %301 = phi i32 [ %251, %285 ], [ %296, %288 ], !dbg !2633
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2677
  %302 = load i32, i32* %246, align 4, !dbg !2678, !tbaa !2668
  %303 = add nsw i32 %302, %301, !dbg !2678
  store i32 %303, i32* %246, align 4, !dbg !2678, !tbaa !2668
  %304 = load i32, i32* %240, align 4, !dbg !2679, !tbaa !2450
  %305 = sub nsw i32 %304, %301, !dbg !2679
  store i32 %305, i32* %240, align 4, !dbg !2679, !tbaa !2450
  br i1 %299, label %307, label %306, !dbg !2680

306:                                              ; preds = %298
  store i32 0, i32* %240, align 4, !dbg !2681, !tbaa !2450
  call void @llvm.dbg.value(metadata i32 %338, metadata !2426, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2463
  br label %340, !dbg !2684

307:                                              ; preds = %298
  %308 = icmp sgt i32 %305, 0, !dbg !2685
  br i1 %308, label %309, label %375, !dbg !2687

309:                                              ; preds = %307
  %310 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2688, !tbaa !2462
  store %"struct.Halide::Runtime::Internal::work"* %310, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2690, !tbaa !2482
  store %"struct.Halide::Runtime::Internal::work"* %220, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2691, !tbaa !2462
  br label %375, !dbg !2692

311:                                              ; preds = %217
  %312 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0, !dbg !2693
  %313 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %312, align 4, !dbg !2693, !tbaa.struct !2694
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %313, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2696
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1, !dbg !2693
  %315 = load i8*, i8** %314, align 4, !dbg !2693, !tbaa.struct !2697
  call void @llvm.dbg.value(metadata i8* %315, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2696
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5, !dbg !2693
  %317 = load i32, i32* %316, align 4, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %317, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2696
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 1, !dbg !2693
  %319 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %318, align 4, !dbg !2693, !tbaa.struct !2698
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %319, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2696
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7, !dbg !2693
  %321 = load i8*, i8** %320, align 4, !dbg !2693, !tbaa.struct !2699
  call void @llvm.dbg.value(metadata i8* %321, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2696
  %322 = add nsw i32 %317, 1, !dbg !2700
  store i32 %322, i32* %316, align 4, !dbg !2700, !tbaa !2668
  %323 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2701
  %324 = load i32, i32* %323, align 4, !dbg !2702, !tbaa !2450
  %325 = add nsw i32 %324, -1, !dbg !2702
  store i32 %325, i32* %323, align 4, !dbg !2702, !tbaa !2450
  %326 = icmp eq i32 %325, 0, !dbg !2703
  br i1 %326, label %327, label %330, !dbg !2705

327:                                              ; preds = %311
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2693
  %329 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %328, align 4, !dbg !2706, !tbaa !2482
  store %"struct.Halide::Runtime::Internal::work"* %329, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2708, !tbaa !452
  br label %330, !dbg !2709

330:                                              ; preds = %327, %311
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2710
  %331 = icmp eq i32 (i8*, i32, i8*)* %319, null, !dbg !2711
  br i1 %331, label %334, label %332, !dbg !2713

332:                                              ; preds = %330
  %333 = tail call i32 @halide_do_task(i8* %321, i32 (i8*, i32, i8*)* nonnull %319, i32 %317, i8* %315) #8, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %333, metadata !2426, metadata !DIExpression()), !dbg !2463
  br label %337, !dbg !2716

334:                                              ; preds = %330
  %335 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*, !dbg !2717
  %336 = tail call i32 @halide_do_loop_task(i8* %321, i32 (i8*, i32, i32, i8*, i8*)* %313, i32 %317, i32 1, i8* %315, i8* %335) #8, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %336, metadata !2426, metadata !DIExpression()), !dbg !2463
  br label %337

337:                                              ; preds = %332, %334
  %338 = phi i32 [ %333, %332 ], [ %336, %334 ], !dbg !2720
  call void @llvm.dbg.value(metadata i32 %338, metadata !2426, metadata !DIExpression()), !dbg !2463
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2721
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2463
  %339 = icmp eq i32 %338, 0, !dbg !2722
  br i1 %339, label %375, label %340, !dbg !2684

340:                                              ; preds = %306, %337
  %341 = phi i32 [ %300, %306 ], [ %338, %337 ]
  %342 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2723
  store i32 %341, i32* %342, align 4, !dbg !2724, !tbaa !2468
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2463
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 4, !dbg !2726
  %344 = load i32, i32* %343, align 4, !dbg !2726, !tbaa !2728
  %345 = icmp sgt i32 %344, 0, !dbg !2729
  br i1 %345, label %346, label %349, !dbg !2730

346:                                              ; preds = %340
  %347 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 3
  %348 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %347, align 4, !tbaa !2568
  br label %353, !dbg !2730

349:                                              ; preds = %371, %340
  %350 = phi i8 [ 0, %340 ], [ %372, %371 ], !dbg !2463
  %351 = and i8 %350, 1, !dbg !2731
  %352 = icmp ne i8 %351, 0, !dbg !2731
  br label %375, !dbg !2731

353:                                              ; preds = %346, %371
  %354 = phi i32 [ 0, %346 ], [ %373, %371 ]
  %355 = phi i8 [ 0, %346 ], [ %372, %371 ]
  call void @llvm.dbg.value(metadata i32 %354, metadata !2434, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 %355, metadata !2433, metadata !DIExpression()), !dbg !2463
  %356 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 9, !dbg !2732
  %357 = load i32, i32* %356, align 4, !dbg !2732, !tbaa !2468
  %358 = icmp eq i32 %357, 0, !dbg !2735
  br i1 %358, label %359, label %371, !dbg !2736

359:                                              ; preds = %353
  store i32 %341, i32* %356, align 4, !dbg !2737, !tbaa !2468
  %360 = load i32, i32* %221, align 4, !dbg !2739, !tbaa !2460
  %361 = icmp eq i32 %360, 0, !dbg !2740
  br i1 %361, label %362, label %366, !dbg !2741

362:                                              ; preds = %359
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 11, !dbg !2742
  %364 = load i8, i8* %363, align 4, !dbg !2742, !tbaa !2589, !range !612
  %365 = icmp ne i8 %364, 0, !dbg !2742
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ], !dbg !2743
  %368 = zext i1 %367 to i8, !dbg !2744
  %369 = and i8 %355, 1, !dbg !2745
  %370 = or i8 %369, %368, !dbg !2745
  call void @llvm.dbg.value(metadata i8 %370, metadata !2433, metadata !DIExpression()), !dbg !2463
  br label %371, !dbg !2746

371:                                              ; preds = %353, %366
  %372 = phi i8 [ %370, %366 ], [ %355, %353 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %372, metadata !2433, metadata !DIExpression()), !dbg !2463
  %373 = add nuw nsw i32 %354, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %373, metadata !2434, metadata !DIExpression()), !dbg !2725
  %374 = icmp slt i32 %373, %344, !dbg !2729
  br i1 %374, label %353, label %349, !dbg !2730, !llvm.loop !2748

375:                                              ; preds = %309, %307, %349, %337
  %376 = phi i1 [ %352, %349 ], [ false, %337 ], [ false, %307 ], [ false, %309 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2433, metadata !DIExpression()), !dbg !2463
  %377 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2750, !tbaa !2491
  %378 = icmp eq %"struct.Halide::Runtime::Internal::work"* %377, null, !dbg !2752
  %379 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2753
  %380 = load i32, i32* %379, align 4, !dbg !2753, !tbaa !2513
  %381 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %377, i32 0, i32 6, !dbg !2754
  %382 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2754
  %383 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2754
  %384 = load i32, i32* %382, align 4, !dbg !2753, !tbaa !490
  %385 = sub nsw i32 %384, %380, !dbg !2753
  store i32 %385, i32* %383, align 4, !dbg !2753, !tbaa !490
  %386 = load i32, i32* %221, align 4, !dbg !2755, !tbaa !2460
  %387 = add nsw i32 %386, -1, !dbg !2755
  store i32 %387, i32* %221, align 4, !dbg !2755, !tbaa !2460
  br i1 %376, label %404, label %388, !dbg !2756

388:                                              ; preds = %375
  %389 = icmp eq i32 %387, 0, !dbg !2758
  br i1 %389, label %392, label %390, !dbg !2759

390:                                              ; preds = %388, %396, %400, %404, %213, %193, %192, %45, %35
  %391 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %190, %192 ], [ %190, %193 ], [ %214, %213 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ 0, %388 ]
  br label %10, !dbg !2438, !llvm.loop !2760

392:                                              ; preds = %388
  %393 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2762
  %394 = load i32, i32* %393, align 4, !dbg !2762, !tbaa !2450
  %395 = icmp eq i32 %394, 0, !dbg !2763
  br i1 %395, label %400, label %396, !dbg !2764

396:                                              ; preds = %392
  %397 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2765
  %398 = load i32, i32* %397, align 4, !dbg !2765, !tbaa !2468
  %399 = icmp eq i32 %398, 0, !dbg !2766
  br i1 %399, label %390, label %400, !dbg !2767

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 11, !dbg !2768
  %402 = load i8, i8* %401, align 4, !dbg !2768, !tbaa !2589, !range !612
  %403 = icmp eq i8 %402, 0, !dbg !2768
  br i1 %403, label %390, label %404, !dbg !2769

404:                                              ; preds = %400, %375
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2770
  br label %390, !dbg !2772

405:                                              ; preds = %15, %18
  ret void, !dbg !2773
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2774 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %2, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %3, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %4, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %5, metadata !2781, metadata !DIExpression()), !dbg !2782
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !2783, !tbaa !452
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2783
  ret i32 %8, !dbg !2784
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %2, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %3, metadata !2790, metadata !DIExpression()), !dbg !2791
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !2792, !tbaa !452
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2793
  ret i32 %6, !dbg !2794
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 !dbg !2795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2798
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2799
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2800
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2801
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !2802
  ret void, !dbg !2803
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2809, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2810, metadata !DIExpression()), !dbg !2821
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2822, !tbaa !2824, !range !612
  %5 = icmp eq i8 %4, 0, !dbg !2822
  br i1 %5, label %6, label %25, !dbg !2825

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2826, metadata !DIExpression()) #7, !dbg !2832
  %8 = load i8, i8* %7, align 1, !dbg !2835, !tbaa !2836
  %9 = icmp eq i8 %8, 0, !dbg !2837
  br i1 %9, label %10, label %13, !dbg !2838

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %11, metadata !2826, metadata !DIExpression()) #7, !dbg !2832
  %12 = icmp ult i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2841
  br i1 %12, label %6, label %13, !dbg !2842, !llvm.loop !2843

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ %11, %10 ], !dbg !2832
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2845
  br i1 %15, label %17, label %16, !dbg !2848

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !2849
  tail call void @abort() #6, !dbg !2849
  br label %17, !dbg !2849

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2851, !tbaa !2853
  %19 = icmp eq i32 %18, 0, !dbg !2854
  br i1 %19, label %20, label %22, !dbg !2855

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !2856
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2858, !tbaa !2853
  br label %22, !dbg !2859

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2860
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #8, !dbg !2861
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2862, !tbaa !2853
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2863, !tbaa !2824
  br label %25, !dbg !2864

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2811, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 -1, metadata !2812, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 undef, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2813, metadata !DIExpression()), !dbg !2821
  %26 = icmp sgt i32 %0, 0, !dbg !2866
  br i1 %26, label %34, label %27, !dbg !2868

27:                                               ; preds = %61, %25
  %28 = phi i32 [ -1, %25 ], [ %62, %61 ], !dbg !2821
  %29 = phi i1 [ false, %25 ], [ %45, %61 ]
  %30 = phi i1 [ false, %25 ], [ %51, %61 ]
  %31 = phi i1 [ false, %25 ], [ %47, %61 ]
  %32 = phi i32 [ 0, %25 ], [ %44, %61 ], !dbg !2869
  %33 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2870
  br i1 %33, label %65, label %93, !dbg !2872

34:                                               ; preds = %25, %61
  %35 = phi i32 [ %44, %61 ], [ 0, %25 ]
  %36 = phi i32 [ %63, %61 ], [ 0, %25 ]
  %37 = phi i1 [ %47, %61 ], [ false, %25 ]
  %38 = phi i1 [ %51, %61 ], [ false, %25 ]
  %39 = phi i1 [ %45, %61 ], [ false, %25 ]
  %40 = phi i32 [ %62, %61 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !2811, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %36, metadata !2816, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %40, metadata !2812, metadata !DIExpression()), !dbg !2821
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 7, !dbg !2873
  %42 = load i32, i32* %41, align 4, !dbg !2873, !tbaa !2513
  %43 = icmp eq i32 %42, 0, !dbg !2876
  %44 = add i32 %42, %35, !dbg !2877
  %45 = or i1 %39, %43, !dbg !2877
  %46 = xor i1 %43, true, !dbg !2877
  %47 = or i1 %37, %46, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %44, metadata !2811, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2813, metadata !DIExpression()), !dbg !2821
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 4, !dbg !2878
  %49 = load i32, i32* %48, align 4, !dbg !2878, !tbaa !2548
  %50 = icmp ne i32 %49, 0, !dbg !2880
  %51 = or i1 %38, %50, !dbg !2881
  call void @llvm.dbg.value(metadata i8 undef, metadata !2814, metadata !DIExpression()), !dbg !2821
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 8, !dbg !2882
  %53 = load i8, i8* %52, align 4, !dbg !2882, !tbaa !2530, !range !612
  %54 = icmp eq i8 %53, 0, !dbg !2882
  br i1 %54, label %57, label %55, !dbg !2884

55:                                               ; preds = %34
  %56 = add nsw i32 %40, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %56, metadata !2812, metadata !DIExpression()), !dbg !2821
  br label %61, !dbg !2887

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 6, !dbg !2888
  %59 = load i32, i32* %58, align 4, !dbg !2888, !tbaa !2450
  %60 = add nsw i32 %59, %40, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %60, metadata !2812, metadata !DIExpression()), !dbg !2821
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ], !dbg !2891
  call void @llvm.dbg.value(metadata i32 %62, metadata !2812, metadata !DIExpression()), !dbg !2821
  %63 = add nuw nsw i32 %36, 1, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %44, metadata !2811, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %63, metadata !2816, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 undef, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 undef, metadata !2813, metadata !DIExpression()), !dbg !2821
  %64 = icmp slt i32 %63, %0, !dbg !2866
  br i1 %64, label %34, label %27, !dbg !2868, !llvm.loop !2893

65:                                               ; preds = %27
  %66 = or i1 %30, %31, !dbg !2895
  %67 = zext i1 %66 to i32, !dbg !2895
  %68 = add nsw i32 %32, %67, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %68, metadata !2811, metadata !DIExpression()), !dbg !2821
  %69 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2898, !tbaa !2523
  %70 = icmp slt i32 %69, 256, !dbg !2899
  br i1 %70, label %71, label %89, !dbg !2900

71:                                               ; preds = %65, %81
  %72 = phi i32 [ %86, %81 ], [ %69, %65 ]
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2901, !tbaa !2853
  %74 = add nsw i32 %73, -1, !dbg !2902
  %75 = icmp slt i32 %72, %74, !dbg !2903
  br i1 %75, label %81, label %76, !dbg !2904

76:                                               ; preds = %71
  %77 = add nsw i32 %72, 1, !dbg !2905
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2906, !tbaa !2907
  %79 = sub i32 %77, %78, !dbg !2908
  %80 = icmp slt i32 %79, %68, !dbg !2909
  br i1 %80, label %81, label %89, !dbg !2910

81:                                               ; preds = %71, %76
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2911, !tbaa !2598
  %83 = add nsw i32 %82, 1, !dbg !2911
  store i32 %83, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2911, !tbaa !2598
  %84 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #8, !dbg !2913
  %85 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2914, !tbaa !2523
  %86 = add nsw i32 %85, 1, !dbg !2914
  store i32 %86, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2914, !tbaa !2523
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %85, !dbg !2915
  store %struct.halide_thread* %84, %struct.halide_thread** %87, align 4, !dbg !2916, !tbaa !452
  %88 = icmp slt i32 %85, 255, !dbg !2899
  br i1 %88, label %71, label %89, !dbg !2900, !llvm.loop !2917

89:                                               ; preds = %76, %81, %65
  br i1 %66, label %90, label %109, !dbg !2919

90:                                               ; preds = %89
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2921, !tbaa !2907
  %92 = add nsw i32 %91, 1, !dbg !2921
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2921, !tbaa !2907
  br label %109, !dbg !2923

93:                                               ; preds = %27
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !2924
  %95 = load i32, i32* %94, align 4, !dbg !2924, !tbaa !2513
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !2924
  %97 = load i32, i32* %96, align 4, !dbg !2924, !tbaa !2460
  %98 = mul nsw i32 %97, %95, !dbg !2924
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2924
  %100 = load i32, i32* %99, align 4, !dbg !2924, !tbaa !2928
  %101 = sub nsw i32 %98, %100, !dbg !2924
  %102 = icmp sgt i32 %32, %101, !dbg !2924
  br i1 %102, label %103, label %104, !dbg !2929

103:                                              ; preds = %93
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !2930
  tail call void @abort() #6, !dbg !2930
  br label %104, !dbg !2930

104:                                              ; preds = %103, %93
  %105 = or i1 %30, %31, !dbg !2932
  br i1 %105, label %106, label %109, !dbg !2932

106:                                              ; preds = %104
  %107 = load i32, i32* %99, align 4, !dbg !2934, !tbaa !2928
  %108 = add nsw i32 %107, 1, !dbg !2934
  store i32 %108, i32* %99, align 4, !dbg !2934, !tbaa !2928
  br label %109, !dbg !2936

109:                                              ; preds = %104, %89, %106, %90
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2937
  br i1 %26, label %110, label %113, !dbg !2938

110:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2937
  %111 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !2462
  br label %126, !dbg !2938

112:                                              ; preds = %126
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2939, !tbaa !2462
  br label %113, !dbg !2938

113:                                              ; preds = %112, %109
  %114 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2942, !tbaa !2587
  %115 = icmp ne i32 %114, 0, !dbg !2943
  %116 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2944
  %117 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2944
  %118 = icmp slt i32 %116, %117, !dbg !2944
  %119 = or i1 %115, %118, !dbg !2944
  call void @llvm.dbg.value(metadata i1 %119, metadata !2820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2821
  %120 = icmp sgt i32 %28, %116
  %121 = or i1 %120, %119, !dbg !2945
  %122 = select i1 %121, i32 %117, i32 %28, !dbg !2945
  store i32 %122, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2947, !tbaa !2600
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !2948
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2949, !tbaa !2600
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2951, !tbaa !2598
  %125 = icmp sgt i32 %123, %124, !dbg !2952
  br i1 %125, label %136, label %138, !dbg !2953

126:                                              ; preds = %110, %126
  %127 = phi %"struct.Halide::Runtime::Internal::work"* [ %111, %110 ], [ %130, %126 ], !dbg !2954
  %128 = phi i32 [ %0, %110 ], [ %129, %126 ]
  %129 = add nsw i32 %128, -1, !dbg !2937
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, !dbg !2955
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 2, !dbg !2956
  store %"struct.Halide::Runtime::Internal::work"* %127, %"struct.Halide::Runtime::Internal::work"** %131, align 4, !dbg !2957, !tbaa !2482
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 3, !dbg !2958
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %132, align 4, !dbg !2959, !tbaa !2568
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 4, !dbg !2960
  store i32 %0, i32* %133, align 4, !dbg !2961, !tbaa !2728
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 6, !dbg !2962
  store i32 0, i32* %134, align 4, !dbg !2963, !tbaa !2928
  call void @llvm.dbg.value(metadata i32 %129, metadata !2818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2937
  %135 = icmp sgt i32 %128, 1, !dbg !2964
  br i1 %135, label %126, label %112, !dbg !2938, !llvm.loop !2965

136:                                              ; preds = %113
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #8, !dbg !2967
  br i1 %29, label %137, label %138, !dbg !2969

137:                                              ; preds = %136
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !2970
  br label %138, !dbg !2973

138:                                              ; preds = %136, %137, %113
  %139 = or i1 %30, %31, !dbg !2974
  br i1 %139, label %140, label %145, !dbg !2974

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2976
  %142 = select i1 %33, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %141, !dbg !2976
  %143 = load i32, i32* %142, align 4, !dbg !2978, !tbaa !490
  %144 = add nsw i32 %143, -1, !dbg !2978
  store i32 %144, i32* %142, align 4, !dbg !2978, !tbaa !490
  br label %145, !dbg !2980

145:                                              ; preds = %140, %138
  ret void, !dbg !2980
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2984, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 %2, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %3, metadata !2986, metadata !DIExpression()), !dbg !2987
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2988
  ret i32 %5, !dbg !2989
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2993, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %2, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %3, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %4, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %5, metadata !2997, metadata !DIExpression()), !dbg !2998
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2999
  ret i32 %7, !dbg !3000
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !3001 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3004, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %2, metadata !3005, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %3, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %4, metadata !3007, metadata !DIExpression()), !dbg !3009
  %7 = icmp slt i32 %3, 1, !dbg !3010
  br i1 %7, label %29, label %8, !dbg !3012

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #7, !dbg !3013
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3008, metadata !DIExpression()), !dbg !3014
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !3015
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !3016, !tbaa !2666
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !3017
  store i32 %2, i32* %11, align 4, !dbg !3018, !tbaa !2668
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !3019
  store i32 %3, i32* %12, align 4, !dbg !3020, !tbaa !2450
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !3021
  store i8 0, i8* %13, align 4, !dbg !3022, !tbaa !2530
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !3023
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !3024, !tbaa !2554
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !3025
  store i32 0, i32* %15, align 4, !dbg !3026, !tbaa !2548
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !3027
  store i8* %4, i8** %16, align 4, !dbg !3028, !tbaa !2671
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !3029
  store i32 0, i32* %17, align 4, !dbg !3030, !tbaa !2513
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !3031
  store i8* null, i8** %18, align 4, !dbg !3032, !tbaa !3033
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !3034
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !3035, !tbaa !3036
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !3037
  store i8* %0, i8** %20, align 4, !dbg !3038, !tbaa !2664
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !3039
  store i32 0, i32* %21, align 4, !dbg !3040, !tbaa !2468
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !3041
  store i32 0, i32* %22, align 4, !dbg !3042, !tbaa !2460
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !3043
  store i32 0, i32* %23, align 4, !dbg !3044, !tbaa !2546
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !3045
  store i8 0, i8* %24, align 4, !dbg !3046, !tbaa !2589
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !3047
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !3048, !tbaa !2568
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !3049
  store i32 0, i32* %26, align 4, !dbg !3050, !tbaa !2728
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !3051
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !3052, !tbaa !2491
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3053
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !3054
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !3055
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3056
  %28 = load i32, i32* %21, align 4, !dbg !3057, !tbaa !2468
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #7, !dbg !3058
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !3009
  ret i32 %30, !dbg !3058
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !3059 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3061, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %1, metadata !3062, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3063, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %3, metadata !3064, metadata !DIExpression()), !dbg !3071
  %5 = mul i32 %1, 80, !dbg !3072
  %6 = alloca i8, i32 %5, align 8, !dbg !3073
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %1, metadata !3062, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3063, metadata !DIExpression()), !dbg !3071
  %8 = icmp sgt i32 %1, 0, !dbg !3076
  br i1 %8, label %12, label %9, !dbg !3078

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %36, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !3079
  br i1 %11, label %54, label %39, !dbg !3081

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi i32 [ %36, %34 ], [ %1, %4 ]
  %15 = phi %struct.halide_parallel_task_t* [ %35, %34 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !3066, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %14, metadata !3062, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %15, metadata !3063, metadata !DIExpression()), !dbg !3071
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 0, i32 6, !dbg !3082
  %17 = load i32, i32* %16, align 4, !dbg !3082, !tbaa !3085
  %18 = icmp slt i32 %17, 1, !dbg !3086
  br i1 %18, label %19, label %21, !dbg !3087

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %20, metadata !3062, metadata !DIExpression()), !dbg !3071
  br label %34, !dbg !3090

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 1, !dbg !3091
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !3063, metadata !DIExpression()), !dbg !3071
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !3092
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !3093
  %25 = bitcast %struct.halide_parallel_task_t* %15 to i8*, !dbg !3093
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !3093, !tbaa.struct !3094
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !3095
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !3096, !tbaa !3036
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !3097
  store i8* %0, i8** %27, align 4, !dbg !3098, !tbaa !2664
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !3099
  store i32 0, i32* %28, align 4, !dbg !3100, !tbaa !2468
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !3101
  store i32 0, i32* %29, align 8, !dbg !3102, !tbaa !2460
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !3103
  store i32 0, i32* %30, align 8, !dbg !3104, !tbaa !2546
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !3105
  store i8 0, i8* %31, align 4, !dbg !3106, !tbaa !2589
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !3107
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !3108
  store i8* %3, i8** %33, align 4, !dbg !3108, !tbaa !2491
  br label %34, !dbg !3109

34:                                               ; preds = %21, %19
  %35 = phi %struct.halide_parallel_task_t* [ %15, %19 ], [ %22, %21 ]
  %36 = phi i32 [ %20, %19 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !3062, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !3063, metadata !DIExpression()), !dbg !3071
  %37 = add nuw nsw i32 %13, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %37, metadata !3066, metadata !DIExpression()), !dbg !3075
  %38 = icmp slt i32 %37, %36, !dbg !3076
  br i1 %38, label %12, label %9, !dbg !3078, !llvm.loop !3111

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3113
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3114
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !3069, metadata !DIExpression()), !dbg !3116
  %41 = icmp sgt i32 %10, 0, !dbg !3117
  br i1 %41, label %44, label %42, !dbg !3119

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !3071
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3120
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !3069, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %46, metadata !3068, metadata !DIExpression()), !dbg !3071
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !3121
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #8, !dbg !3123
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !3124
  %49 = load i32, i32* %48, align 4, !dbg !3124, !tbaa !2468
  %50 = icmp eq i32 %49, 0, !dbg !3126
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %51, metadata !3068, metadata !DIExpression()), !dbg !3071
  %52 = add nuw nsw i32 %45, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %52, metadata !3069, metadata !DIExpression()), !dbg !3116
  %53 = icmp slt i32 %52, %10, !dbg !3117
  br i1 %53, label %44, label %42, !dbg !3119, !llvm.loop !3129

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !3071
  ret i32 %55, !dbg !3131
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !3132 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %1, metadata !3135, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3136, metadata !DIExpression()), !dbg !3137
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3138
  call void @llvm.dbg.value(metadata i32* %3, metadata !3139, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32* undef, metadata !3145, metadata !DIExpression()), !dbg !3148
  store i32 %1, i32* %3, align 4, !dbg !3150, !tbaa !490
  fence seq_cst, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %1, metadata !3135, metadata !DIExpression()), !dbg !3137
  ret i32 %1, !dbg !3152
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3153 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3160
  %3 = icmp eq i32 %1, 0, !dbg !3161
  br i1 %3, label %15, label %4, !dbg !3163

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3164
  call void @llvm.dbg.value(metadata i32* %5, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32* undef, metadata !3168, metadata !DIExpression()), !dbg !3169
  fence seq_cst, !dbg !3171
  %6 = load i32, i32* %5, align 4, !dbg !3172, !tbaa !490
  br label %7, !dbg !3173

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !3160
  call void @llvm.dbg.value(metadata i32 %8, metadata !3158, metadata !DIExpression()), !dbg !3160
  %9 = sub nsw i32 %8, %1, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %9, metadata !3159, metadata !DIExpression()), !dbg !3160
  %10 = icmp sgt i32 %9, -1, !dbg !3176
  br i1 %10, label %11, label %15, !dbg !3177

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %5, metadata !3178, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32* undef, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32* undef, metadata !3184, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32* %5, metadata !3187, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32* undef, metadata !3190, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32* undef, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %8, metadata !3192, metadata !DIExpression()), !dbg !3194
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !3196
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %13, metadata !3193, metadata !DIExpression()), !dbg !3194
  %14 = icmp eq i32 %8, %13, !dbg !3197
  br i1 %14, label %15, label %7, !dbg !3198, !llvm.loop !3199

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !3160
  ret i1 %16, !dbg !3201
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3202 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %1, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3206, metadata !DIExpression()), !dbg !3208
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3209
  call void @llvm.dbg.value(metadata i32* %3, metadata !3210, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %1, metadata !3215, metadata !DIExpression()), !dbg !3216
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %4, metadata !3207, metadata !DIExpression()), !dbg !3208
  %5 = icmp eq i32 %4, 0, !dbg !3219
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3221
  br i1 %7, label %8, label %9, !dbg !3221

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3222
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !3224
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !3225
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3226
  br label %9, !dbg !3227

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3228
  ret i32 %10, !dbg !3229
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !3230 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !3232
  ret void, !dbg !3233
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !3234 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !3240, !tbaa !2824, !range !612
  %2 = icmp eq i8 %1, 0, !dbg !3240
  br i1 %2, label %15, label %3, !dbg !3241

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3242
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !3243, !tbaa !2456
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #8, !dbg !3244
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #8, !dbg !3245
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #8, !dbg !3246
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3247
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()), !dbg !3248
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3249, !tbaa !2523
  %5 = icmp sgt i32 %4, 0, !dbg !3251
  br i1 %5, label %8, label %6, !dbg !3252

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3253, metadata !DIExpression()) #7, !dbg !3259
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), metadata !3256, metadata !DIExpression()) #7, !dbg !3259
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3257, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #7, !dbg !3259
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), i32 0, i32 1072) #6, !dbg !3261
  br label %15, !dbg !3262

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3236, metadata !DIExpression()), !dbg !3248
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %9, !dbg !3263
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !3263, !tbaa !452
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !3265
  %12 = add nuw nsw i32 %9, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %12, metadata !3236, metadata !DIExpression()), !dbg !3248
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3249, !tbaa !2523
  %14 = icmp slt i32 %12, %13, !dbg !3251
  br i1 %14, label %8, label %6, !dbg !3252, !llvm.loop !3267

15:                                               ; preds = %6, %0
  ret void, !dbg !3269
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !3270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  %2 = icmp slt i32 %0, 0, !dbg !3275
  br i1 %2, label %3, label %4, !dbg !3277

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !3278
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3280
  br label %8, !dbg !3281

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3280
  %5 = icmp eq i32 %0, 0, !dbg !3282
  br i1 %5, label %6, label %8, !dbg !3281

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %7, metadata !3272, metadata !DIExpression()), !dbg !3274
  br label %8, !dbg !3286

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3272, metadata !DIExpression()), !dbg !3274
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3287, !tbaa !2853
  call void @llvm.dbg.value(metadata i32 %10, metadata !3273, metadata !DIExpression()), !dbg !3274
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #8, !dbg !3288
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3289, !tbaa !2853
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #8, !dbg !3290
  ret i32 %10, !dbg !3291
}

declare !dbg !3292 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3297, metadata !DIExpression()), !dbg !3299
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3300, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3298, metadata !DIExpression()), !dbg !3299
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3301, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3302
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3307, metadata !DIExpression()), !dbg !3309
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3310, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3311, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3312
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3313 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3317, metadata !DIExpression()), !dbg !3319
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3320, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3321, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3322
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !3323 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3327, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3328, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3329, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3333, metadata !DIExpression()), !dbg !3334
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3335, !tbaa !452
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3336, !tbaa !452
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3337, !tbaa !452
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3338, !tbaa !452
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3339, !tbaa !452
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3340, !tbaa !452
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3341, !tbaa !452
  ret void, !dbg !3342
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !3343 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3345, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %2, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %3, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %4, metadata !3349, metadata !DIExpression()), !dbg !3350
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3351, !tbaa !452
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !3352
  ret i32 %7, !dbg !3353
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !3354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %1, metadata !3357, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %3, metadata !3359, metadata !DIExpression()), !dbg !3360
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3361, !tbaa !452
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !3361
  ret i32 %6, !dbg !3362
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3363 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3368, !tbaa !452
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3368
  ret i32 %4, !dbg !3369
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3370 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %1, metadata !3373, metadata !DIExpression()), !dbg !3374
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3375, !tbaa !452
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3375
  ret i32 %4, !dbg !3376
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3377 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3382, !tbaa !452
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3382
  ret i1 %4, !dbg !3383
}

declare !dbg !3384 dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t*, i8*) local_unnamed_addr #3

declare !dbg !3388 dso_local i32 @pthread_cond_init(%struct.pthread_cond_t*, i8*) local_unnamed_addr #3

declare !dbg !3392 dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3395 dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t*, %struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3398 dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3399 dso_local i32 @pthread_cond_destroy(%struct.pthread_cond_t*) local_unnamed_addr #3

declare !dbg !3402 dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3403 dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t*) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_lock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_lock(i8*, i32, i32) local_unnamed_addr #3

declare dso_local i32 @__tsan_mutex_pre_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_signal(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_signal(i8*, i32) local_unnamed_addr #3

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
!llvm.module.flags = !{!390, !391, !392}
!llvm.ident = !{!393}

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
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !375, imports: !386, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!375 = !{!376, !379, !0, !381, !11, !121, !127, !133, !139, !146, !152, !158, !383}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!377 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !378, isLocal: true, isDefinition: true)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !378, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!382 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !378, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!384 = distinct !DIGlobalVariable(name: "__tsan_mutex_linker_init", scope: !161, file: !6, line: 37, type: !385, isLocal: true, isDefinition: true)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!386 = !{!387, !388, !389}
!387 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!388 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !167, line: 62)
!389 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!390 = !{i32 7, !"Dwarf Version", i32 4}
!391 = !{i32 2, !"Debug Info Version", i32 3}
!392 = !{i32 1, !"wchar_size", i32 4}
!393 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!394 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv", scope: !3, file: !167, line: 50, type: !395, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!43, !43}
!397 = !{!398, !399}
!398 = !DILocalVariable(name: "arg", arg: 1, scope: !394, file: !167, line: 50, type: !43)
!399 = !DILocalVariable(name: "t", scope: !394, file: !167, line: 51, type: !165)
!400 = !DILocation(line: 0, scope: !394)
!401 = !DILocation(line: 52, column: 8, scope: !394)
!402 = !{!403, !404, i64 0}
!403 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !404, i64 0, !404, i64 4, !407, i64 8}
!404 = !{!"any pointer", !405, i64 0}
!405 = !{!"omnipotent char", !406, i64 0}
!406 = !{!"Simple C++ TBAA"}
!407 = !{!"long", !405, i64 0}
!408 = !DILocation(line: 52, column: 13, scope: !394)
!409 = !{!403, !404, i64 4}
!410 = !DILocation(line: 52, column: 5, scope: !394)
!411 = !DILocation(line: 53, column: 5, scope: !394)
!412 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 64, type: !413, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!102, !170, !43}
!415 = !{!416, !417, !418}
!416 = !DILocalVariable(name: "f", arg: 1, scope: !412, file: !167, line: 64, type: !170)
!417 = !DILocalVariable(name: "closure", arg: 2, scope: !412, file: !167, line: 64, type: !43)
!418 = !DILocalVariable(name: "t", scope: !412, file: !167, line: 65, type: !165)
!419 = !DILocation(line: 0, scope: !412)
!420 = !DILocation(line: 65, column: 43, scope: !412)
!421 = !DILocation(line: 66, column: 8, scope: !412)
!422 = !DILocation(line: 66, column: 10, scope: !412)
!423 = !DILocation(line: 67, column: 8, scope: !412)
!424 = !DILocation(line: 67, column: 16, scope: !412)
!425 = !DILocation(line: 68, column: 8, scope: !412)
!426 = !DILocation(line: 68, column: 15, scope: !412)
!427 = !{!403, !407, i64 8}
!428 = !DILocation(line: 69, column: 5, scope: !412)
!429 = !DILocation(line: 70, column: 12, scope: !412)
!430 = !DILocation(line: 70, column: 5, scope: !412)
!431 = !DISubprogram(name: "malloc", scope: !23, file: !23, line: 87, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!432 = !DISubroutineType(types: !433)
!433 = !{!43, !25}
!434 = !DISubprogram(name: "pthread_create", scope: !167, file: !167, line: 21, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!435 = !DISubroutineType(types: !436)
!436 = !{!29, !437, !438, !440, !43}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!441 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !442, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !102}
!444 = !{!445, !446, !447}
!445 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !441, file: !167, line: 73, type: !102)
!446 = !DILocalVariable(name: "t", scope: !441, file: !167, line: 74, type: !165)
!447 = !DILocalVariable(name: "ret", scope: !441, file: !167, line: 75, type: !43)
!448 = !DILocation(line: 0, scope: !441)
!449 = !DILocation(line: 74, column: 25, scope: !441)
!450 = !DILocation(line: 75, column: 5, scope: !441)
!451 = !DILocation(line: 75, column: 11, scope: !441)
!452 = !{!404, !404, i64 0}
!453 = !DILocation(line: 76, column: 21, scope: !441)
!454 = !DILocation(line: 76, column: 5, scope: !441)
!455 = !DILocation(line: 77, column: 10, scope: !441)
!456 = !DILocation(line: 77, column: 5, scope: !441)
!457 = !DILocation(line: 78, column: 1, scope: !441)
!458 = !DISubprogram(name: "pthread_join", scope: !167, file: !167, line: 23, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!459 = !DISubroutineType(types: !460)
!460 = !{!29, !176, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!462 = !DISubprogram(name: "free", scope: !23, file: !23, line: 86, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!463 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !239, file: !6, line: 321, type: !243, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !242, retainedNodes: !464)
!464 = !{!465, !467, !479, !480, !484, !485, !486}
!465 = !DILocalVariable(name: "this", arg: 1, scope: !463, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!467 = !DILocalVariable(name: "spinner", scope: !463, file: !6, line: 322, type: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !469, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!469 = !{!470, !471, !475, !478}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !468, file: !6, line: 231, baseType: !29, size: 32)
!471 = !DISubprogram(name: "spin_control", scope: !468, file: !6, line: 235, type: !472, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!475 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !468, file: !6, line: 237, type: !476, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DISubroutineType(types: !477)
!477 = !{!64, !474}
!478 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !468, file: !6, line: 244, type: !472, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DILocalVariable(name: "expected", scope: !463, file: !6, line: 323, type: !22)
!480 = !DILocalVariable(name: "desired", scope: !481, file: !6, line: 328, type: !22)
!481 = distinct !DILexicalBlock(scope: !482, file: !6, line: 327, column: 37)
!482 = distinct !DILexicalBlock(scope: !483, file: !6, line: 327, column: 13)
!483 = distinct !DILexicalBlock(scope: !463, file: !6, line: 326, column: 18)
!484 = !DILocalVariable(name: "node", scope: !483, file: !6, line: 342, type: !178)
!485 = !DILocalVariable(name: "head", scope: !483, file: !6, line: 347, type: !177)
!486 = !DILocalVariable(name: "desired", scope: !483, file: !6, line: 359, type: !22)
!487 = !DILocation(line: 0, scope: !463)
!488 = !DILocation(line: 324, column: 26, scope: !463)
!489 = !DILocation(line: 324, column: 5, scope: !463)
!490 = !{!491, !491, i64 0}
!491 = !{!"int", !405, i64 0}
!492 = !DILocation(line: 326, column: 5, scope: !463)
!493 = !DILocation(line: 327, column: 13, scope: !483)
!494 = !DILocation(line: 327, column: 24, scope: !482)
!495 = !DILocation(line: 327, column: 14, scope: !482)
!496 = !DILocation(line: 328, column: 42, scope: !481)
!497 = !DILocation(line: 0, scope: !481)
!498 = !DILocalVariable(name: "addr", arg: 1, scope: !499, file: !6, line: 126, type: !302)
!499 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPjS4_S4_", scope: !500, file: !6, line: 126, type: !501, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !503)
!500 = !DINamespace(scope: !2)
!501 = !DISubroutineType(types: !502)
!502 = !{!64, !302, !302, !302}
!503 = !{!498, !504, !505}
!504 = !DILocalVariable(name: "expected", arg: 2, scope: !499, file: !6, line: 126, type: !302)
!505 = !DILocalVariable(name: "desired", arg: 3, scope: !499, file: !6, line: 126, type: !302)
!506 = !DILocation(line: 0, scope: !499, inlinedAt: !507)
!507 = distinct !DILocation(line: 330, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !481, file: !6, line: 330, column: 17)
!509 = !DILocalVariable(name: "addr", arg: 1, scope: !510, file: !6, line: 102, type: !513)
!510 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIjEEbPT_S6_S6_", scope: !500, file: !6, line: 102, type: !511, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !519, retainedNodes: !514)
!511 = !DISubroutineType(types: !512)
!512 = !{!64, !513, !513, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!514 = !{!509, !515, !516, !517, !518}
!515 = !DILocalVariable(name: "expected", arg: 2, scope: !510, file: !6, line: 102, type: !513)
!516 = !DILocalVariable(name: "desired", arg: 3, scope: !510, file: !6, line: 102, type: !513)
!517 = !DILocalVariable(name: "oldval", scope: !510, file: !6, line: 103, type: !25)
!518 = !DILocalVariable(name: "gotval", scope: !510, file: !6, line: 104, type: !25)
!519 = !{!520}
!520 = !DITemplateTypeParameter(name: "T", type: !25)
!521 = !DILocation(line: 0, scope: !510, inlinedAt: !522)
!522 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !507)
!523 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !522)
!524 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !522)
!525 = !DILocation(line: 336, column: 67, scope: !526)
!526 = distinct !DILexicalBlock(scope: !483, file: !6, line: 336, column: 13)
!527 = !DILocation(line: 336, column: 73, scope: !526)
!528 = !DILocalVariable(name: "this", arg: 1, scope: !529, type: !531, flags: DIFlagArtificial | DIFlagObjectPointer)
!529 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !468, file: !6, line: 237, type: !476, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !475, retainedNodes: !530)
!530 = !{!528}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!532 = !DILocation(line: 0, scope: !529, inlinedAt: !533)
!533 = distinct !DILocation(line: 336, column: 84, scope: !526)
!534 = !DILocation(line: 241, column: 27, scope: !529, inlinedAt: !533)
!535 = !DILocation(line: 336, column: 13, scope: !483)
!536 = !DILocation(line: 239, column: 23, scope: !537, inlinedAt: !533)
!537 = distinct !DILexicalBlock(scope: !538, file: !6, line: 238, column: 29)
!538 = distinct !DILexicalBlock(scope: !529, file: !6, line: 238, column: 13)
!539 = !DILocation(line: 337, column: 13, scope: !540)
!540 = distinct !DILexicalBlock(scope: !526, file: !6, line: 336, column: 99)
!541 = !DILocation(line: 338, column: 13, scope: !540)
!542 = !DILocation(line: 339, column: 13, scope: !540)
!543 = !DILocation(line: 342, column: 9, scope: !483)
!544 = !DILocation(line: 342, column: 30, scope: !483)
!545 = !DILocalVariable(name: "this", arg: 1, scope: !546, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!546 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !178, file: !6, line: 277, type: !227, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !226, retainedNodes: !547)
!547 = !{!545}
!548 = !DILocation(line: 0, scope: !546, inlinedAt: !549)
!549 = distinct !DILocation(line: 342, column: 30, scope: !483)
!550 = !DILocalVariable(name: "this", arg: 1, scope: !551, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!551 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !181, file: !167, line: 103, type: !215, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !214, retainedNodes: !552)
!552 = !{!550}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!554 = !DILocation(line: 0, scope: !551, inlinedAt: !555)
!555 = distinct !DILocation(line: 277, column: 19, scope: !546, inlinedAt: !549)
!556 = !DILocation(line: 96, column: 10, scope: !551, inlinedAt: !555)
!557 = !{!558, !561, i64 128}
!558 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !559, i64 0, !560, i64 64, !561, i64 128}
!559 = !{!"_ZTS15pthread_mutex_t", !405, i64 0}
!560 = !{!"_ZTS14pthread_cond_t", !405, i64 0}
!561 = !{!"bool", !405, i64 0}
!562 = !DILocation(line: 104, column: 9, scope: !563, inlinedAt: !555)
!563 = distinct !DILexicalBlock(scope: !551, file: !167, line: 103, column: 35)
!564 = !DILocation(line: 105, column: 9, scope: !563, inlinedAt: !555)
!565 = !DILocation(line: 273, column: 27, scope: !546, inlinedAt: !549)
!566 = !{!567, !404, i64 136}
!567 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !558, i64 0, !404, i64 136, !404, i64 140, !404, i64 144}
!568 = !DILocation(line: 274, column: 27, scope: !546, inlinedAt: !549)
!569 = !{!567, !404, i64 140}
!570 = !DILocation(line: 275, column: 27, scope: !546, inlinedAt: !549)
!571 = !{!567, !404, i64 144}
!572 = !DILocalVariable(name: "this", arg: 1, scope: !573, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!573 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !215, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !574)
!574 = !{!572}
!575 = !DILocation(line: 0, scope: !573, inlinedAt: !576)
!576 = distinct !DILocation(line: 344, column: 21, scope: !483)
!577 = !DILocation(line: 114, column: 21, scope: !573, inlinedAt: !576)
!578 = !DILocation(line: 347, column: 72, scope: !483)
!579 = !DILocation(line: 0, scope: !483)
!580 = !DILocation(line: 348, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !483, file: !6, line: 348, column: 13)
!582 = !DILocation(line: 348, column: 13, scope: !483)
!583 = !DILocation(line: 349, column: 23, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !6, line: 348, column: 30)
!585 = !DILocation(line: 351, column: 9, scope: !584)
!586 = !DILocation(line: 347, column: 38, scope: !483)
!587 = !DILocation(line: 356, column: 23, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !6, line: 351, column: 16)
!589 = !DILocation(line: 359, column: 60, scope: !483)
!590 = !DILocation(line: 359, column: 48, scope: !483)
!591 = !DILocalVariable(name: "addr", arg: 1, scope: !592, file: !6, line: 113, type: !302)
!592 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPjS4_S4_", scope: !500, file: !6, line: 113, type: !501, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !593)
!593 = !{!591, !594, !595}
!594 = !DILocalVariable(name: "expected", arg: 2, scope: !592, file: !6, line: 113, type: !302)
!595 = !DILocalVariable(name: "desired", arg: 3, scope: !592, file: !6, line: 113, type: !302)
!596 = !DILocation(line: 0, scope: !592, inlinedAt: !597)
!597 = distinct !DILocation(line: 360, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !483, file: !6, line: 360, column: 13)
!599 = !DILocation(line: 0, scope: !510, inlinedAt: !600)
!600 = distinct !DILocation(line: 114, column: 12, scope: !592, inlinedAt: !597)
!601 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !600)
!602 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !600)
!603 = !DILocation(line: 360, column: 13, scope: !483)
!604 = !DILocalVariable(name: "this", arg: 1, scope: !605, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!605 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !215, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !606)
!606 = !{!604}
!607 = !DILocation(line: 0, scope: !605, inlinedAt: !608)
!608 = distinct !DILocation(line: 361, column: 25, scope: !609)
!609 = distinct !DILexicalBlock(scope: !598, file: !6, line: 360, column: 75)
!610 = !DILocation(line: 118, column: 9, scope: !605, inlinedAt: !608)
!611 = !DILocation(line: 119, column: 16, scope: !605, inlinedAt: !608)
!612 = !{i8 0, i8 2}
!613 = !DILocation(line: 119, column: 9, scope: !605, inlinedAt: !608)
!614 = !DILocation(line: 120, column: 13, scope: !615, inlinedAt: !608)
!615 = distinct !DILexicalBlock(scope: !605, file: !167, line: 119, column: 29)
!616 = distinct !{!616, !613, !617, !618}
!617 = !DILocation(line: 121, column: 9, scope: !605, inlinedAt: !608)
!618 = !{!"llvm.loop.mustprogress"}
!619 = !DILocation(line: 122, column: 9, scope: !605, inlinedAt: !608)
!620 = !DILocation(line: 363, column: 13, scope: !609)
!621 = !DILocation(line: 364, column: 9, scope: !609)
!622 = !DILocation(line: 0, scope: !598)
!623 = !DILocalVariable(name: "this", arg: 1, scope: !624, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!624 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !178, file: !6, line: 280, type: !227, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !230, retainedNodes: !625)
!625 = !{!623}
!626 = !DILocation(line: 0, scope: !624, inlinedAt: !627)
!627 = distinct !DILocation(line: 365, column: 5, scope: !463)
!628 = !DILocalVariable(name: "this", arg: 1, scope: !629, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!629 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !181, file: !167, line: 108, type: !215, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !630)
!630 = !{!628}
!631 = !DILocation(line: 0, scope: !629, inlinedAt: !632)
!632 = distinct !DILocation(line: 280, column: 51, scope: !633, inlinedAt: !627)
!633 = distinct !DILexicalBlock(scope: !624, file: !6, line: 280, column: 51)
!634 = !DILocation(line: 109, column: 9, scope: !635, inlinedAt: !632)
!635 = distinct !DILexicalBlock(scope: !629, file: !167, line: 108, column: 36)
!636 = !DILocation(line: 110, column: 9, scope: !635, inlinedAt: !632)
!637 = !DILocation(line: 365, column: 5, scope: !463)
!638 = distinct !{!638, !492, !637}
!639 = !DILocation(line: 366, column: 1, scope: !463)
!640 = !DISubprogram(name: "halide_thread_yield", scope: !23, file: !23, line: 190, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!641 = !DISubroutineType(types: !642)
!642 = !{null}
!643 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !239, file: !6, line: 368, type: !243, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !644)
!644 = !{!645, !646, !647, !649, !650, !651, !653, !654, !655, !656, !658, !661, !662, !665}
!645 = !DILocalVariable(name: "this", arg: 1, scope: !643, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!646 = !DILocalVariable(name: "expected", scope: !643, file: !6, line: 369, type: !22)
!647 = !DILocalVariable(name: "thread_queuing", scope: !648, file: !6, line: 375, type: !64)
!648 = distinct !DILexicalBlock(scope: !643, file: !6, line: 372, column: 18)
!649 = !DILocalVariable(name: "none_queued", scope: !648, file: !6, line: 377, type: !64)
!650 = !DILocalVariable(name: "desired", scope: !648, file: !6, line: 382, type: !22)
!651 = !DILocalVariable(name: "head", scope: !652, file: !6, line: 389, type: !177)
!652 = distinct !DILexicalBlock(scope: !643, file: !6, line: 388, column: 18)
!653 = !DILocalVariable(name: "current", scope: !652, file: !6, line: 390, type: !177)
!654 = !DILocalVariable(name: "tail", scope: !652, file: !6, line: 391, type: !177)
!655 = !DILocalVariable(name: "times_through", scope: !652, file: !6, line: 392, type: !29)
!656 = !DILocalVariable(name: "next", scope: !657, file: !6, line: 394, type: !177)
!657 = distinct !DILexicalBlock(scope: !652, file: !6, line: 393, column: 33)
!658 = !DILocalVariable(name: "desired", scope: !659, file: !6, line: 406, type: !22)
!659 = distinct !DILexicalBlock(scope: !660, file: !6, line: 405, column: 34)
!660 = distinct !DILexicalBlock(scope: !652, file: !6, line: 405, column: 13)
!661 = !DILocalVariable(name: "new_tail", scope: !652, file: !6, line: 414, type: !177)
!662 = !DILocalVariable(name: "continue_outer", scope: !663, file: !6, line: 416, type: !64)
!663 = distinct !DILexicalBlock(scope: !664, file: !6, line: 415, column: 34)
!664 = distinct !DILexicalBlock(scope: !652, file: !6, line: 415, column: 13)
!665 = !DILocalVariable(name: "desired", scope: !666, file: !6, line: 418, type: !22)
!666 = distinct !DILexicalBlock(scope: !663, file: !6, line: 417, column: 37)
!667 = !DILocation(line: 0, scope: !643)
!668 = !DILocation(line: 370, column: 26, scope: !643)
!669 = !DILocation(line: 370, column: 5, scope: !643)
!670 = !DILocalVariable(name: "addr", arg: 1, scope: !671, file: !6, line: 135, type: !513)
!671 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIjEEvPT_S6_", scope: !500, file: !6, line: 135, type: !672, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !519, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !513, !513}
!674 = !{!670, !675}
!675 = !DILocalVariable(name: "val", arg: 2, scope: !671, file: !6, line: 135, type: !513)
!676 = !DILocation(line: 0, scope: !671, inlinedAt: !677)
!677 = distinct !DILocation(line: 370, column: 5, scope: !643)
!678 = !DILocation(line: 372, column: 5, scope: !643)
!679 = !DILocation(line: 136, column: 10, scope: !671, inlinedAt: !677)
!680 = !DILocation(line: 375, column: 41, scope: !648)
!681 = !DILocation(line: 375, column: 31, scope: !648)
!682 = !DILocation(line: 0, scope: !648)
!683 = !DILocation(line: 378, column: 28, scope: !684)
!684 = distinct !DILexicalBlock(scope: !648, file: !6, line: 378, column: 13)
!685 = !DILocation(line: 382, column: 38, scope: !648)
!686 = !DILocation(line: 0, scope: !499, inlinedAt: !687)
!687 = distinct !DILocation(line: 383, column: 13, scope: !688)
!688 = distinct !DILexicalBlock(scope: !648, file: !6, line: 383, column: 13)
!689 = !DILocation(line: 0, scope: !510, inlinedAt: !690)
!690 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !687)
!691 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !690)
!692 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !690)
!693 = !DILocation(line: 389, column: 72, scope: !652)
!694 = !DILocation(line: 389, column: 38, scope: !652)
!695 = !DILocation(line: 0, scope: !652)
!696 = !DILocation(line: 391, column: 47, scope: !652)
!697 = !DILocation(line: 393, column: 21, scope: !652)
!698 = !DILocation(line: 393, column: 9, scope: !652)
!699 = !DILocation(line: 394, column: 51, scope: !657)
!700 = !DILocation(line: 0, scope: !657)
!701 = !DILocation(line: 395, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !6, line: 395, column: 13)
!703 = distinct !DILexicalBlock(scope: !657, file: !6, line: 395, column: 13)
!704 = !DILocation(line: 395, column: 13, scope: !703)
!705 = !DILocation(line: 395, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !6, line: 395, column: 13)
!707 = !DILocation(line: 396, column: 19, scope: !657)
!708 = !DILocation(line: 396, column: 24, scope: !657)
!709 = !DILocation(line: 398, column: 29, scope: !657)
!710 = distinct !{!710, !698, !711, !618}
!711 = !DILocation(line: 400, column: 9, scope: !652)
!712 = !DILocation(line: 401, column: 20, scope: !652)
!713 = !DILocation(line: 405, column: 22, scope: !660)
!714 = !DILocation(line: 405, column: 13, scope: !660)
!715 = !DILocation(line: 405, column: 13, scope: !652)
!716 = !DILocation(line: 406, column: 42, scope: !659)
!717 = !DILocation(line: 0, scope: !659)
!718 = !DILocalVariable(name: "addr", arg: 1, scope: !719, file: !6, line: 118, type: !513)
!719 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIjEEbPT_S6_S6_", scope: !500, file: !6, line: 118, type: !511, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !519, retainedNodes: !720)
!720 = !{!718, !721, !722}
!721 = !DILocalVariable(name: "expected", arg: 2, scope: !719, file: !6, line: 118, type: !513)
!722 = !DILocalVariable(name: "desired", arg: 3, scope: !719, file: !6, line: 118, type: !513)
!723 = !DILocation(line: 0, scope: !719, inlinedAt: !724)
!724 = distinct !DILocation(line: 407, column: 17, scope: !725)
!725 = distinct !DILexicalBlock(scope: !659, file: !6, line: 407, column: 17)
!726 = !DILocation(line: 0, scope: !510, inlinedAt: !727)
!727 = distinct !DILocation(line: 119, column: 12, scope: !719, inlinedAt: !724)
!728 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !727)
!729 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !727)
!730 = !DILocation(line: 407, column: 17, scope: !659)
!731 = distinct !{!731, !732, !733}
!732 = !DILocation(line: 388, column: 5, scope: !643)
!733 = !DILocation(line: 445, column: 5, scope: !643)
!734 = !DILocation(line: 414, column: 48, scope: !652)
!735 = !DILocation(line: 415, column: 22, scope: !664)
!736 = !DILocation(line: 415, column: 13, scope: !652)
!737 = !DILocation(line: 418, column: 46, scope: !666)
!738 = !DILocation(line: 0, scope: !666)
!739 = !DILocation(line: 0, scope: !719, inlinedAt: !740)
!740 = distinct !DILocation(line: 419, column: 21, scope: !741)
!741 = distinct !DILexicalBlock(scope: !666, file: !6, line: 419, column: 21)
!742 = !DILocation(line: 0, scope: !510, inlinedAt: !743)
!743 = distinct !DILocation(line: 119, column: 12, scope: !719, inlinedAt: !740)
!744 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !743)
!745 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !743)
!746 = !DILocation(line: 419, column: 21, scope: !666)
!747 = !DILocation(line: 422, column: 74, scope: !748)
!748 = distinct !DILexicalBlock(scope: !666, file: !6, line: 422, column: 21)
!749 = !DILocation(line: 422, column: 21, scope: !666)
!750 = distinct !{!750, !751, !752, !618}
!751 = !DILocation(line: 417, column: 13, scope: !663)
!752 = !DILocation(line: 428, column: 13, scope: !663)
!753 = !DILocation(line: 434, column: 24, scope: !754)
!754 = distinct !DILexicalBlock(scope: !664, file: !6, line: 433, column: 16)
!755 = !DILocalVariable(name: "addr", arg: 1, scope: !756, file: !6, line: 92, type: !302)
!756 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPjj", scope: !500, file: !6, line: 92, type: !757, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!22, !302, !22}
!759 = !{!755, !760}
!760 = !DILocalVariable(name: "val", arg: 2, scope: !756, file: !6, line: 92, type: !22)
!761 = !DILocation(line: 0, scope: !756, inlinedAt: !762)
!762 = distinct !DILocation(line: 435, column: 13, scope: !754)
!763 = !DILocation(line: 93, column: 12, scope: !756, inlinedAt: !762)
!764 = !DILocalVariable(name: "this", arg: 1, scope: !765, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!765 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !215, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !766)
!766 = !{!764}
!767 = !DILocation(line: 0, scope: !765, inlinedAt: !768)
!768 = distinct !DILocation(line: 441, column: 22, scope: !652)
!769 = !DILocation(line: 126, column: 29, scope: !765, inlinedAt: !768)
!770 = !DILocation(line: 126, column: 9, scope: !765, inlinedAt: !768)
!771 = !DILocalVariable(name: "this", arg: 1, scope: !772, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!772 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !215, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !221, retainedNodes: !773)
!773 = !{!771}
!774 = !DILocation(line: 0, scope: !772, inlinedAt: !775)
!775 = distinct !DILocation(line: 442, column: 22, scope: !652)
!776 = !DILocation(line: 130, column: 9, scope: !772, inlinedAt: !775)
!777 = !DILocation(line: 130, column: 21, scope: !772, inlinedAt: !775)
!778 = !DILocation(line: 131, column: 30, scope: !772, inlinedAt: !775)
!779 = !DILocation(line: 131, column: 9, scope: !772, inlinedAt: !775)
!780 = !DILocalVariable(name: "this", arg: 1, scope: !781, type: !553, flags: DIFlagArtificial | DIFlagObjectPointer)
!781 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !215, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !222, retainedNodes: !782)
!782 = !{!780}
!783 = !DILocation(line: 0, scope: !781, inlinedAt: !784)
!784 = distinct !DILocation(line: 443, column: 22, scope: !652)
!785 = !DILocation(line: 135, column: 9, scope: !781, inlinedAt: !784)
!786 = !DILocation(line: 444, column: 9, scope: !652)
!787 = !DILocation(line: 0, scope: !663)
!788 = !DILocation(line: 446, column: 1, scope: !643)
!789 = !DISubprogram(name: "halide_print", scope: !18, file: !18, line: 97, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !43, !49}
!792 = !DISubprogram(name: "abort", scope: !23, file: !23, line: 108, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!793 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj", scope: !2, file: !6, line: 509, type: !794, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !797)
!794 = !DISubroutineType(types: !795)
!795 = !{!796, !22}
!796 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !236, size: 32)
!797 = !{!798, !799, !800}
!798 = !DILocalVariable(name: "addr", arg: 1, scope: !793, file: !6, line: 509, type: !22)
!799 = !DILocalVariable(name: "hash", scope: !793, file: !6, line: 510, type: !22)
!800 = !DILocalVariable(name: "bucket", scope: !793, file: !6, line: 515, type: !796)
!801 = !DILocation(line: 0, scope: !793)
!802 = !DILocalVariable(name: "addr", arg: 1, scope: !803, file: !6, line: 499, type: !22)
!803 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEjj", scope: !2, file: !6, line: 499, type: !804, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!22, !22, !24}
!806 = !{!802, !807}
!807 = !DILocalVariable(name: "bits", arg: 2, scope: !803, file: !6, line: 499, type: !24)
!808 = !DILocation(line: 0, scope: !803, inlinedAt: !809)
!809 = distinct !DILocation(line: 510, column: 22, scope: !793)
!810 = !DILocation(line: 505, column: 22, scope: !811, inlinedAt: !809)
!811 = distinct !DILexicalBlock(scope: !812, file: !6, line: 504, column: 12)
!812 = distinct !DILexicalBlock(scope: !803, file: !6, line: 502, column: 9)
!813 = !DILocation(line: 505, column: 47, scope: !811, inlinedAt: !809)
!814 = !DILocation(line: 515, column: 27, scope: !793)
!815 = !DILocalVariable(name: "this", arg: 1, scope: !816, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!816 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !239, file: !6, line: 291, type: !243, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !248, retainedNodes: !817)
!817 = !{!815, !818, !819}
!818 = !DILocalVariable(name: "expected", scope: !816, file: !6, line: 294, type: !22)
!819 = !DILocalVariable(name: "desired", scope: !816, file: !6, line: 295, type: !22)
!820 = !DILocation(line: 0, scope: !816, inlinedAt: !821)
!821 = distinct !DILocation(line: 517, column: 18, scope: !793)
!822 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !821)
!823 = !DILocalVariable(name: "mutex", arg: 1, scope: !824, file: !6, line: 56, type: !43)
!824 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_116if_tsan_pre_lockEPv", scope: !500, file: !6, line: 56, type: !171, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !825)
!825 = !{!823}
!826 = !DILocation(line: 0, scope: !824, inlinedAt: !827)
!827 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !821)
!828 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !827)
!829 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !821)
!830 = distinct !DILexicalBlock(scope: !816, file: !6, line: 297, column: 13)
!831 = !DILocation(line: 0, scope: !499, inlinedAt: !832)
!832 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !821)
!833 = !DILocation(line: 0, scope: !510, inlinedAt: !834)
!834 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !832)
!835 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !834)
!836 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !834)
!837 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !821)
!838 = !DILocation(line: 517, column: 12, scope: !793)
!839 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !821)
!840 = distinct !DILexicalBlock(scope: !830, file: !6, line: 297, column: 76)
!841 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !821)
!842 = !DILocalVariable(name: "mutex", arg: 1, scope: !843, file: !6, line: 60, type: !43)
!843 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_117if_tsan_post_lockEPv", scope: !500, file: !6, line: 60, type: !171, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !844)
!844 = !{!842}
!845 = !DILocation(line: 0, scope: !843, inlinedAt: !846)
!846 = distinct !DILocation(line: 301, column: 9, scope: !816, inlinedAt: !821)
!847 = !DILocation(line: 61, column: 5, scope: !843, inlinedAt: !846)
!848 = !DILocation(line: 519, column: 5, scope: !793)
!849 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj", scope: !2, file: !6, line: 531, type: !850, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !860)
!850 = !DISubroutineType(types: !851)
!851 = !{!852, !22, !22}
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !853, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !852, file: !6, line: 523, baseType: !796, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !852, file: !6, line: 524, baseType: !796, size: 32, offset: 32)
!856 = !DISubprogram(name: "bucket_pair", scope: !852, file: !6, line: 526, type: !857, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !859, !796, !796}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!860 = !{!861, !862, !863, !864, !865, !868, !871, !872, !874}
!861 = !DILocalVariable(name: "addr_from", arg: 1, scope: !849, file: !6, line: 531, type: !22)
!862 = !DILocalVariable(name: "addr_to", arg: 2, scope: !849, file: !6, line: 531, type: !22)
!863 = !DILocalVariable(name: "hash_from", scope: !849, file: !6, line: 533, type: !22)
!864 = !DILocalVariable(name: "hash_to", scope: !849, file: !6, line: 534, type: !22)
!865 = !DILocalVariable(name: "first", scope: !866, file: !6, line: 542, type: !796)
!866 = distinct !DILexicalBlock(scope: !867, file: !6, line: 541, column: 31)
!867 = distinct !DILexicalBlock(scope: !849, file: !6, line: 541, column: 9)
!868 = !DILocalVariable(name: "first", scope: !869, file: !6, line: 546, type: !796)
!869 = distinct !DILexicalBlock(scope: !870, file: !6, line: 545, column: 37)
!870 = distinct !DILexicalBlock(scope: !867, file: !6, line: 545, column: 16)
!871 = !DILocalVariable(name: "second", scope: !869, file: !6, line: 547, type: !796)
!872 = !DILocalVariable(name: "first", scope: !873, file: !6, line: 552, type: !796)
!873 = distinct !DILexicalBlock(scope: !870, file: !6, line: 551, column: 12)
!874 = !DILocalVariable(name: "second", scope: !873, file: !6, line: 553, type: !796)
!875 = !DILocation(line: 0, scope: !849)
!876 = !DILocation(line: 0, scope: !803, inlinedAt: !877)
!877 = distinct !DILocation(line: 533, column: 27, scope: !849)
!878 = !DILocation(line: 505, column: 22, scope: !811, inlinedAt: !877)
!879 = !DILocation(line: 505, column: 47, scope: !811, inlinedAt: !877)
!880 = !DILocation(line: 0, scope: !803, inlinedAt: !881)
!881 = distinct !DILocation(line: 534, column: 25, scope: !849)
!882 = !DILocation(line: 505, column: 22, scope: !811, inlinedAt: !881)
!883 = !DILocation(line: 505, column: 47, scope: !811, inlinedAt: !881)
!884 = !DILocation(line: 541, column: 19, scope: !867)
!885 = !DILocation(line: 541, column: 9, scope: !849)
!886 = !DILocation(line: 542, column: 30, scope: !866)
!887 = !DILocation(line: 0, scope: !866)
!888 = !DILocation(line: 0, scope: !816, inlinedAt: !889)
!889 = distinct !DILocation(line: 543, column: 21, scope: !866)
!890 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !889)
!891 = !DILocation(line: 0, scope: !824, inlinedAt: !892)
!892 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !889)
!893 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !892)
!894 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !889)
!895 = !DILocation(line: 0, scope: !499, inlinedAt: !896)
!896 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !889)
!897 = !DILocation(line: 0, scope: !510, inlinedAt: !898)
!898 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !896)
!899 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !898)
!900 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !898)
!901 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !889)
!902 = !DILocation(line: 543, column: 15, scope: !866)
!903 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !889)
!904 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !889)
!905 = !DILocation(line: 545, column: 26, scope: !870)
!906 = !DILocation(line: 545, column: 16, scope: !867)
!907 = !DILocation(line: 546, column: 30, scope: !869)
!908 = !DILocation(line: 0, scope: !869)
!909 = !DILocation(line: 547, column: 31, scope: !869)
!910 = !DILocation(line: 0, scope: !816, inlinedAt: !911)
!911 = distinct !DILocation(line: 548, column: 21, scope: !869)
!912 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !911)
!913 = !DILocation(line: 0, scope: !824, inlinedAt: !914)
!914 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !911)
!915 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !914)
!916 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !911)
!917 = !DILocation(line: 0, scope: !499, inlinedAt: !918)
!918 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !911)
!919 = !DILocation(line: 0, scope: !510, inlinedAt: !920)
!920 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !918)
!921 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !920)
!922 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !920)
!923 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !911)
!924 = !DILocation(line: 548, column: 15, scope: !869)
!925 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !911)
!926 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !911)
!927 = !DILocation(line: 0, scope: !843, inlinedAt: !928)
!928 = distinct !DILocation(line: 301, column: 9, scope: !816, inlinedAt: !911)
!929 = !DILocation(line: 61, column: 5, scope: !843, inlinedAt: !928)
!930 = !DILocation(line: 0, scope: !816, inlinedAt: !931)
!931 = distinct !DILocation(line: 549, column: 22, scope: !869)
!932 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !931)
!933 = !DILocation(line: 0, scope: !824, inlinedAt: !934)
!934 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !931)
!935 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !934)
!936 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !931)
!937 = !DILocation(line: 0, scope: !499, inlinedAt: !938)
!938 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !931)
!939 = !DILocation(line: 0, scope: !510, inlinedAt: !940)
!940 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !938)
!941 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !940)
!942 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !940)
!943 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !931)
!944 = !DILocation(line: 549, column: 16, scope: !869)
!945 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !931)
!946 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !931)
!947 = !DILocation(line: 552, column: 30, scope: !873)
!948 = !DILocation(line: 0, scope: !873)
!949 = !DILocation(line: 553, column: 31, scope: !873)
!950 = !DILocation(line: 0, scope: !816, inlinedAt: !951)
!951 = distinct !DILocation(line: 554, column: 21, scope: !873)
!952 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !951)
!953 = !DILocation(line: 0, scope: !824, inlinedAt: !954)
!954 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !951)
!955 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !954)
!956 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !951)
!957 = !DILocation(line: 0, scope: !499, inlinedAt: !958)
!958 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !951)
!959 = !DILocation(line: 0, scope: !510, inlinedAt: !960)
!960 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !958)
!961 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !960)
!962 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !960)
!963 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !951)
!964 = !DILocation(line: 554, column: 15, scope: !873)
!965 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !951)
!966 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !951)
!967 = !DILocation(line: 0, scope: !843, inlinedAt: !968)
!968 = distinct !DILocation(line: 301, column: 9, scope: !816, inlinedAt: !951)
!969 = !DILocation(line: 61, column: 5, scope: !843, inlinedAt: !968)
!970 = !DILocation(line: 0, scope: !816, inlinedAt: !971)
!971 = distinct !DILocation(line: 555, column: 22, scope: !873)
!972 = !DILocation(line: 292, column: 26, scope: !816, inlinedAt: !971)
!973 = !DILocation(line: 0, scope: !824, inlinedAt: !974)
!974 = distinct !DILocation(line: 292, column: 9, scope: !816, inlinedAt: !971)
!975 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !974)
!976 = !DILocation(line: 297, column: 47, scope: !830, inlinedAt: !971)
!977 = !DILocation(line: 0, scope: !499, inlinedAt: !978)
!978 = distinct !DILocation(line: 297, column: 14, scope: !830, inlinedAt: !971)
!979 = !DILocation(line: 0, scope: !510, inlinedAt: !980)
!980 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !978)
!981 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !980)
!982 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !980)
!983 = !DILocation(line: 297, column: 13, scope: !816, inlinedAt: !971)
!984 = !DILocation(line: 555, column: 16, scope: !873)
!985 = !DILocation(line: 298, column: 13, scope: !840, inlinedAt: !971)
!986 = !DILocation(line: 299, column: 9, scope: !840, inlinedAt: !971)
!987 = !DILocation(line: 0, scope: !867)
!988 = !DILocation(line: 558, column: 1, scope: !849)
!989 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !2, file: !6, line: 560, type: !990, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !993)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !992}
!992 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !852, size: 32)
!993 = !{!994}
!994 = !DILocalVariable(name: "buckets", arg: 1, scope: !989, file: !6, line: 560, type: !992)
!995 = !DILocation(line: 0, scope: !989)
!996 = !DILocation(line: 565, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !6, line: 565, column: 9)
!998 = !{!999, !404, i64 0}
!999 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !404, i64 0, !404, i64 4}
!1000 = !DILocation(line: 565, column: 35, scope: !997)
!1001 = !{!999, !404, i64 4}
!1002 = !DILocation(line: 565, column: 23, scope: !997)
!1003 = !DILocation(line: 565, column: 9, scope: !989)
!1004 = !DILocalVariable(name: "this", arg: 1, scope: !1005, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!1005 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !239, file: !6, line: 304, type: !243, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !249, retainedNodes: !1006)
!1006 = !{!1004, !1007, !1008, !1009}
!1007 = !DILocalVariable(name: "val", scope: !1005, file: !6, line: 307, type: !22)
!1008 = !DILocalVariable(name: "no_thread_queuing", scope: !1005, file: !6, line: 310, type: !64)
!1009 = !DILocalVariable(name: "some_queued", scope: !1005, file: !6, line: 312, type: !64)
!1010 = !DILocation(line: 0, scope: !1005, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 566, column: 28, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !997, file: !6, line: 565, column: 39)
!1013 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1011)
!1014 = !DILocalVariable(name: "mutex", arg: 1, scope: !1015, file: !6, line: 64, type: !43)
!1015 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_unlockEPv", scope: !500, file: !6, line: 64, type: !171, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1016)
!1016 = !{!1014}
!1017 = !DILocation(line: 0, scope: !1015, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1011)
!1019 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1018)
!1020 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1011)
!1021 = !DILocalVariable(name: "addr", arg: 1, scope: !1022, file: !6, line: 130, type: !302)
!1022 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPjj", scope: !500, file: !6, line: 130, type: !757, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1023)
!1023 = !{!1021, !1024}
!1024 = !DILocalVariable(name: "val", arg: 2, scope: !1022, file: !6, line: 130, type: !22)
!1025 = !DILocation(line: 0, scope: !1022, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1011)
!1027 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1026)
!1028 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1011)
!1029 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1011)
!1030 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1011)
!1031 = distinct !DILexicalBlock(scope: !1005, file: !6, line: 313, column: 13)
!1032 = !DILocation(line: 566, column: 22, scope: !1012)
!1033 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1011)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !6, line: 313, column: 47)
!1035 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1011)
!1036 = !DILocation(line: 567, column: 30, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !997, file: !6, line: 567, column: 16)
!1038 = !DILocation(line: 567, column: 16, scope: !997)
!1039 = !DILocation(line: 0, scope: !1005, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 568, column: 28, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !6, line: 567, column: 45)
!1042 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1040)
!1043 = !DILocation(line: 0, scope: !1015, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1040)
!1045 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1044)
!1046 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1040)
!1047 = !DILocation(line: 0, scope: !1022, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1040)
!1049 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1048)
!1050 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1040)
!1051 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1040)
!1052 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1040)
!1053 = !DILocation(line: 568, column: 22, scope: !1041)
!1054 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1040)
!1055 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1040)
!1056 = !DILocalVariable(name: "mutex", arg: 1, scope: !1057, file: !6, line: 67, type: !43)
!1057 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_unlockEPv", scope: !500, file: !6, line: 67, type: !171, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1058)
!1058 = !{!1056}
!1059 = !DILocation(line: 0, scope: !1057, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1040)
!1061 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1060)
!1062 = !DILocation(line: 569, column: 17, scope: !1041)
!1063 = !DILocation(line: 0, scope: !1005, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 569, column: 26, scope: !1041)
!1065 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1064)
!1066 = !DILocation(line: 0, scope: !1015, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1064)
!1068 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1067)
!1069 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1064)
!1070 = !DILocation(line: 0, scope: !1022, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1064)
!1072 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1071)
!1073 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1064)
!1074 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1064)
!1075 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1064)
!1076 = !DILocation(line: 569, column: 20, scope: !1041)
!1077 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1064)
!1078 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1064)
!1079 = !DILocation(line: 0, scope: !1005, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 571, column: 26, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1037, file: !6, line: 570, column: 12)
!1082 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1080)
!1083 = !DILocation(line: 0, scope: !1015, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1080)
!1085 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1084)
!1086 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1080)
!1087 = !DILocation(line: 0, scope: !1022, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1080)
!1089 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1088)
!1090 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1080)
!1091 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1080)
!1092 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1080)
!1093 = !DILocation(line: 571, column: 20, scope: !1081)
!1094 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1080)
!1095 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1080)
!1096 = !DILocation(line: 0, scope: !1057, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1080)
!1098 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1097)
!1099 = !DILocation(line: 572, column: 17, scope: !1081)
!1100 = !DILocation(line: 0, scope: !1005, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 572, column: 28, scope: !1081)
!1102 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1101)
!1103 = !DILocation(line: 0, scope: !1015, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1101)
!1105 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1104)
!1106 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1101)
!1107 = !DILocation(line: 0, scope: !1022, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1101)
!1109 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1108)
!1110 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1101)
!1111 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1101)
!1112 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1101)
!1113 = !DILocation(line: 572, column: 22, scope: !1081)
!1114 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1101)
!1115 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1101)
!1116 = !DILocation(line: 0, scope: !997)
!1117 = !DILocation(line: 574, column: 1, scope: !989)
!1118 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 583, type: !275, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1119)
!1119 = !{!1120, !1121}
!1120 = !DILocalVariable(name: "control", arg: 1, scope: !1118, file: !6, line: 583, type: !43)
!1121 = !DILocalVariable(name: "action", arg: 2, scope: !1118, file: !6, line: 583, type: !277)
!1122 = !DILocation(line: 0, scope: !1118)
!1123 = !DILocation(line: 584, column: 5, scope: !1118)
!1124 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "control", arg: 1, scope: !1124, file: !6, line: 586, type: !43)
!1127 = !DILocation(line: 0, scope: !1124)
!1128 = !DILocation(line: 586, column: 55, scope: !1124)
!1129 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !2, file: !6, line: 587, type: !289, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DILocalVariable(name: "control", arg: 1, scope: !1129, file: !6, line: 587, type: !43)
!1132 = !DILocalVariable(name: "unparked", arg: 2, scope: !1129, file: !6, line: 587, type: !29)
!1133 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1129, file: !6, line: 587, type: !64)
!1134 = !DILocation(line: 0, scope: !1129)
!1135 = !DILocation(line: 588, column: 5, scope: !1129)
!1136 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 590, type: !293, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1137)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "control", arg: 1, scope: !1136, file: !6, line: 590, type: !43)
!1139 = !DILocalVariable(name: "action", arg: 2, scope: !1136, file: !6, line: 590, type: !295)
!1140 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1136, file: !6, line: 590, type: !64)
!1141 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1136, file: !6, line: 590, type: !64)
!1142 = !DILocation(line: 0, scope: !1136)
!1143 = !DILocation(line: 590, column: 128, scope: !1136)
!1144 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE", scope: !2, file: !6, line: 605, type: !1145, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1148)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!22, !22, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !271, size: 32)
!1148 = !{!1149, !1150, !1151, !1152, !1153}
!1149 = !DILocalVariable(name: "addr", arg: 1, scope: !1144, file: !6, line: 605, type: !22)
!1150 = !DILocalVariable(name: "control", arg: 2, scope: !1144, file: !6, line: 605, type: !1147)
!1151 = !DILocalVariable(name: "queue_data", scope: !1144, file: !6, line: 606, type: !252)
!1152 = !DILocalVariable(name: "bucket", scope: !1144, file: !6, line: 608, type: !796)
!1153 = !DILocalVariable(name: "action", scope: !1144, file: !6, line: 610, type: !278)
!1154 = !DILocation(line: 0, scope: !1144)
!1155 = !DILocation(line: 606, column: 5, scope: !1144)
!1156 = !DILocation(line: 606, column: 16, scope: !1144)
!1157 = !DILocalVariable(name: "this", arg: 1, scope: !1158, type: !251, flags: DIFlagArtificial | DIFlagObjectPointer)
!1158 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !252, file: !6, line: 455, type: !259, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !258, retainedNodes: !1159)
!1159 = !{!1157}
!1160 = !DILocation(line: 0, scope: !1158, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 606, column: 16, scope: !1144)
!1162 = !DILocation(line: 0, scope: !551, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 455, column: 19, scope: !1158, inlinedAt: !1161)
!1164 = !DILocation(line: 96, column: 10, scope: !551, inlinedAt: !1163)
!1165 = !DILocation(line: 104, column: 29, scope: !563, inlinedAt: !1163)
!1166 = !DILocation(line: 104, column: 9, scope: !563, inlinedAt: !1163)
!1167 = !DILocation(line: 105, column: 28, scope: !563, inlinedAt: !1163)
!1168 = !DILocation(line: 105, column: 9, scope: !563, inlinedAt: !1163)
!1169 = !DILocation(line: 451, column: 15, scope: !1158, inlinedAt: !1161)
!1170 = !{!1171, !491, i64 136}
!1171 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !558, i64 0, !491, i64 136, !404, i64 140, !491, i64 144}
!1172 = !DILocation(line: 452, column: 17, scope: !1158, inlinedAt: !1161)
!1173 = !{!1171, !404, i64 140}
!1174 = !DILocation(line: 453, column: 15, scope: !1158, inlinedAt: !1161)
!1175 = !{!1171, !491, i64 144}
!1176 = !DILocation(line: 608, column: 27, scope: !1144)
!1177 = !DILocation(line: 610, column: 5, scope: !1144)
!1178 = !DILocation(line: 610, column: 21, scope: !1144)
!1179 = !DILocalVariable(name: "this", arg: 1, scope: !1180, type: !1182, flags: DIFlagArtificial | DIFlagObjectPointer)
!1180 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !278, file: !6, line: 580, type: !283, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !282, retainedNodes: !1181)
!1181 = !{!1179}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!1183 = !DILocation(line: 0, scope: !1180, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 610, column: 21, scope: !1144)
!1185 = !DILocation(line: 577, column: 10, scope: !1180, inlinedAt: !1184)
!1186 = !{!1187, !561, i64 0}
!1187 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !561, i64 0, !491, i64 4}
!1188 = !DILocation(line: 578, column: 15, scope: !1180, inlinedAt: !1184)
!1189 = !{!1187, !491, i64 4}
!1190 = !DILocation(line: 611, column: 18, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1144, file: !6, line: 611, column: 9)
!1192 = !{!1193, !404, i64 0}
!1193 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !404, i64 0, !404, i64 4, !404, i64 8, !404, i64 12}
!1194 = !DILocation(line: 611, column: 27, scope: !1191)
!1195 = !DILocation(line: 611, column: 10, scope: !1191)
!1196 = !DILocation(line: 611, column: 9, scope: !1144)
!1197 = !DILocation(line: 0, scope: !1005, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 612, column: 22, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !6, line: 611, column: 46)
!1200 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1198)
!1201 = !DILocation(line: 0, scope: !1015, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1198)
!1203 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1202)
!1204 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1198)
!1205 = !DILocation(line: 0, scope: !1022, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1198)
!1207 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1206)
!1208 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1198)
!1209 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1198)
!1210 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1198)
!1211 = !DILocation(line: 612, column: 16, scope: !1199)
!1212 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1198)
!1213 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1198)
!1214 = !DILocation(line: 0, scope: !1057, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1198)
!1216 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1215)
!1217 = !DILocation(line: 613, column: 23, scope: !1199)
!1218 = !DILocation(line: 613, column: 9, scope: !1199)
!1219 = !DILocation(line: 616, column: 21, scope: !1144)
!1220 = !DILocation(line: 617, column: 30, scope: !1144)
!1221 = !DILocation(line: 0, scope: !573, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 618, column: 23, scope: !1144)
!1223 = !DILocation(line: 114, column: 21, scope: !573, inlinedAt: !1222)
!1224 = !DILocation(line: 619, column: 16, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1144, file: !6, line: 619, column: 9)
!1226 = !{!1227, !404, i64 4}
!1227 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1228, i64 0, !404, i64 4, !404, i64 8}
!1228 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !491, i64 0}
!1229 = !DILocation(line: 619, column: 21, scope: !1225)
!1230 = !DILocation(line: 619, column: 9, scope: !1144)
!1231 = !DILocation(line: 0, scope: !1225)
!1232 = !DILocation(line: 624, column: 12, scope: !1144)
!1233 = !DILocation(line: 624, column: 17, scope: !1144)
!1234 = !{!1227, !404, i64 8}
!1235 = !DILocation(line: 0, scope: !1005, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 625, column: 18, scope: !1144)
!1237 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1236)
!1238 = !DILocation(line: 0, scope: !1015, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1236)
!1240 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1239)
!1241 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1236)
!1242 = !DILocation(line: 0, scope: !1022, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1236)
!1244 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1243)
!1245 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1236)
!1246 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1236)
!1247 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1236)
!1248 = !DILocation(line: 625, column: 12, scope: !1144)
!1249 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1236)
!1250 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1236)
!1251 = !DILocation(line: 0, scope: !1057, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1236)
!1253 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1252)
!1254 = !DILocation(line: 627, column: 13, scope: !1144)
!1255 = !{!1193, !404, i64 4}
!1256 = !DILocation(line: 627, column: 5, scope: !1144)
!1257 = !DILocation(line: 0, scope: !605, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 629, column: 23, scope: !1144)
!1259 = !DILocation(line: 118, column: 9, scope: !605, inlinedAt: !1258)
!1260 = !DILocation(line: 119, column: 16, scope: !605, inlinedAt: !1258)
!1261 = !DILocation(line: 119, column: 9, scope: !605, inlinedAt: !1258)
!1262 = !DILocation(line: 120, column: 13, scope: !615, inlinedAt: !1258)
!1263 = distinct !{!1263, !1261, !1264, !618}
!1264 = !DILocation(line: 121, column: 9, scope: !605, inlinedAt: !1258)
!1265 = !DILocation(line: 122, column: 9, scope: !605, inlinedAt: !1258)
!1266 = !DILocation(line: 631, column: 23, scope: !1144)
!1267 = !DILocation(line: 631, column: 5, scope: !1144)
!1268 = !DILocation(line: 634, column: 1, scope: !1144)
!1269 = !DILocalVariable(name: "this", arg: 1, scope: !1270, type: !251, flags: DIFlagArtificial | DIFlagObjectPointer)
!1270 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !252, file: !6, line: 457, type: !259, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !262, retainedNodes: !1271)
!1271 = !{!1269}
!1272 = !DILocation(line: 0, scope: !1270, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 634, column: 1, scope: !1144)
!1274 = !DILocation(line: 0, scope: !629, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 457, column: 41, scope: !1276, inlinedAt: !1273)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !6, line: 457, column: 41)
!1277 = !DILocation(line: 109, column: 9, scope: !635, inlinedAt: !1275)
!1278 = !DILocation(line: 110, column: 9, scope: !635, inlinedAt: !1275)
!1279 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE", scope: !2, file: !6, line: 636, type: !1145, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1289, !1292, !1293, !1296}
!1281 = !DILocalVariable(name: "addr", arg: 1, scope: !1279, file: !6, line: 636, type: !22)
!1282 = !DILocalVariable(name: "control", arg: 2, scope: !1279, file: !6, line: 636, type: !1147)
!1283 = !DILocalVariable(name: "bucket", scope: !1279, file: !6, line: 637, type: !796)
!1284 = !DILocalVariable(name: "data_location", scope: !1279, file: !6, line: 639, type: !266)
!1285 = !DILocalVariable(name: "prev", scope: !1279, file: !6, line: 640, type: !251)
!1286 = !DILocalVariable(name: "data", scope: !1279, file: !6, line: 641, type: !251)
!1287 = !DILocalVariable(name: "cur_addr", scope: !1288, file: !6, line: 643, type: !22)
!1288 = distinct !DILexicalBlock(scope: !1279, file: !6, line: 642, column: 29)
!1289 = !DILocalVariable(name: "next", scope: !1290, file: !6, line: 646, type: !251)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !6, line: 645, column: 31)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !6, line: 645, column: 13)
!1292 = !DILocalVariable(name: "more_waiters", scope: !1290, file: !6, line: 649, type: !64)
!1293 = !DILocalVariable(name: "data2", scope: !1294, file: !6, line: 654, type: !251)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !6, line: 653, column: 20)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !6, line: 651, column: 17)
!1296 = !DILocalVariable(name: "cur_addr2", scope: !1297, file: !6, line: 656, type: !22)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !6, line: 655, column: 59)
!1298 = !DILocation(line: 0, scope: !1279)
!1299 = !DILocation(line: 637, column: 27, scope: !1279)
!1300 = !DILocation(line: 639, column: 42, scope: !1279)
!1301 = !DILocation(line: 641, column: 24, scope: !1279)
!1302 = !DILocation(line: 642, column: 5, scope: !1279)
!1303 = !DILocation(line: 639, column: 18, scope: !1279)
!1304 = !DILocation(line: 640, column: 17, scope: !1279)
!1305 = !DILocation(line: 641, column: 17, scope: !1279)
!1306 = !DILocation(line: 642, column: 17, scope: !1279)
!1307 = !DILocation(line: 644, column: 36, scope: !1288)
!1308 = !DILocation(line: 644, column: 9, scope: !1288)
!1309 = !DILocation(line: 0, scope: !1288)
!1310 = !DILocation(line: 645, column: 22, scope: !1291)
!1311 = !DILocation(line: 0, scope: !1291)
!1312 = !DILocation(line: 645, column: 13, scope: !1288)
!1313 = !DILocation(line: 0, scope: !1290)
!1314 = !DILocation(line: 647, column: 28, scope: !1290)
!1315 = !DILocation(line: 651, column: 24, scope: !1295)
!1316 = !DILocation(line: 651, column: 29, scope: !1295)
!1317 = !DILocation(line: 651, column: 17, scope: !1290)
!1318 = !DILocation(line: 0, scope: !1294)
!1319 = !DILocation(line: 655, column: 30, scope: !1294)
!1320 = !DILocation(line: 655, column: 17, scope: !1294)
!1321 = !DILocation(line: 652, column: 29, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1295, file: !6, line: 651, column: 38)
!1323 = !DILocation(line: 653, column: 13, scope: !1322)
!1324 = !DILocation(line: 657, column: 49, scope: !1297)
!1325 = !DILocation(line: 657, column: 21, scope: !1297)
!1326 = !DILocation(line: 0, scope: !1297)
!1327 = !DILocation(line: 658, column: 47, scope: !1297)
!1328 = !DILocation(line: 659, column: 36, scope: !1297)
!1329 = !DILocation(line: 655, column: 41, scope: !1294)
!1330 = distinct !{!1330, !1320, !1331, !618}
!1331 = !DILocation(line: 660, column: 17, scope: !1294)
!1332 = !DILocation(line: 663, column: 41, scope: !1290)
!1333 = !{!1193, !404, i64 8}
!1334 = !DILocation(line: 663, column: 33, scope: !1290)
!1335 = !DILocation(line: 663, column: 19, scope: !1290)
!1336 = !DILocation(line: 663, column: 31, scope: !1290)
!1337 = !DILocation(line: 0, scope: !765, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 665, column: 26, scope: !1290)
!1339 = !DILocation(line: 126, column: 29, scope: !765, inlinedAt: !1338)
!1340 = !DILocation(line: 126, column: 9, scope: !765, inlinedAt: !1338)
!1341 = !DILocation(line: 0, scope: !1005, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 666, column: 26, scope: !1290)
!1343 = !DILocation(line: 0, scope: !1015, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1342)
!1345 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1344)
!1346 = !DILocation(line: 0, scope: !1022, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1342)
!1348 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1347)
!1349 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1342)
!1350 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1342)
!1351 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1342)
!1352 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1342)
!1353 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1342)
!1354 = !DILocation(line: 0, scope: !1057, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1342)
!1356 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1355)
!1357 = !DILocation(line: 0, scope: !772, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 667, column: 26, scope: !1290)
!1359 = !DILocation(line: 130, column: 9, scope: !772, inlinedAt: !1358)
!1360 = !DILocation(line: 130, column: 21, scope: !772, inlinedAt: !1358)
!1361 = !DILocation(line: 131, column: 30, scope: !772, inlinedAt: !1358)
!1362 = !DILocation(line: 131, column: 9, scope: !772, inlinedAt: !1358)
!1363 = !DILocation(line: 0, scope: !781, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 668, column: 26, scope: !1290)
!1365 = !DILocation(line: 135, column: 9, scope: !781, inlinedAt: !1364)
!1366 = !DILocation(line: 671, column: 20, scope: !1290)
!1367 = distinct !{!1367, !1302, !1368, !618}
!1368 = !DILocation(line: 677, column: 5, scope: !1279)
!1369 = !DILocation(line: 679, column: 13, scope: !1279)
!1370 = !DILocation(line: 679, column: 5, scope: !1279)
!1371 = !DILocation(line: 0, scope: !1005, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 681, column: 18, scope: !1279)
!1373 = !DILocation(line: 0, scope: !1015, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1372)
!1375 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1374)
!1376 = !DILocation(line: 0, scope: !1022, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1372)
!1378 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1377)
!1379 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1372)
!1380 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1372)
!1381 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1372)
!1382 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1372)
!1383 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1372)
!1384 = !DILocation(line: 0, scope: !1057, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1372)
!1386 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1385)
!1387 = !DILocation(line: 684, column: 5, scope: !1279)
!1388 = !DILocation(line: 685, column: 1, scope: !1279)
!1389 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj", scope: !2, file: !6, line: 687, type: !1390, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!22, !22, !22}
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1401, !1405, !1406, !1407, !1409, !1410, !1415, !1417, !1419}
!1393 = !DILocalVariable(name: "addr", arg: 1, scope: !1389, file: !6, line: 687, type: !22)
!1394 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1389, file: !6, line: 687, type: !22)
!1395 = !DILocalVariable(name: "bucket", scope: !1389, file: !6, line: 688, type: !796)
!1396 = !DILocalVariable(name: "data_location", scope: !1389, file: !6, line: 690, type: !266)
!1397 = !DILocalVariable(name: "prev", scope: !1389, file: !6, line: 691, type: !251)
!1398 = !DILocalVariable(name: "data", scope: !1389, file: !6, line: 692, type: !251)
!1399 = !DILocalVariable(name: "waiters", scope: !1389, file: !6, line: 693, type: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !25)
!1401 = !DILocalVariable(name: "temp_list_storage", scope: !1389, file: !6, line: 694, type: !1402)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 16)
!1405 = !DILocalVariable(name: "temp_list", scope: !1389, file: !6, line: 695, type: !266)
!1406 = !DILocalVariable(name: "max_waiters", scope: !1389, file: !6, line: 696, type: !1400)
!1407 = !DILocalVariable(name: "cur_addr", scope: !1408, file: !6, line: 699, type: !22)
!1408 = distinct !DILexicalBlock(scope: !1389, file: !6, line: 698, column: 29)
!1409 = !DILocalVariable(name: "next", scope: !1408, file: !6, line: 702, type: !251)
!1410 = !DILocalVariable(name: "temp", scope: !1411, file: !6, line: 711, type: !266)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !6, line: 710, column: 41)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !6, line: 710, column: 17)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !6, line: 703, column: 31)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !6, line: 703, column: 13)
!1415 = !DILocalVariable(name: "i", scope: !1416, file: !6, line: 713, type: !1400)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !6, line: 713, column: 17)
!1417 = !DILocalVariable(name: "i", scope: !1418, file: !6, line: 737, type: !1400)
!1418 = distinct !DILexicalBlock(scope: !1389, file: !6, line: 737, column: 5)
!1419 = !DILocalVariable(name: "i", scope: !1420, file: !6, line: 742, type: !1400)
!1420 = distinct !DILexicalBlock(scope: !1389, file: !6, line: 742, column: 5)
!1421 = !DILocation(line: 0, scope: !1389)
!1422 = !DILocation(line: 688, column: 27, scope: !1389)
!1423 = !DILocation(line: 690, column: 42, scope: !1389)
!1424 = !DILocation(line: 692, column: 24, scope: !1389)
!1425 = !DILocation(line: 694, column: 5, scope: !1389)
!1426 = !DILocation(line: 694, column: 17, scope: !1389)
!1427 = !DILocation(line: 695, column: 31, scope: !1389)
!1428 = !DILocation(line: 698, column: 17, scope: !1389)
!1429 = !DILocation(line: 698, column: 5, scope: !1389)
!1430 = !DILocation(line: 700, column: 36, scope: !1408)
!1431 = !DILocation(line: 700, column: 9, scope: !1408)
!1432 = !DILocation(line: 702, column: 34, scope: !1408)
!1433 = !DILocation(line: 0, scope: !1408)
!1434 = !DILocation(line: 703, column: 22, scope: !1414)
!1435 = !DILocation(line: 0, scope: !1414)
!1436 = !DILocation(line: 703, column: 13, scope: !1408)
!1437 = !DILocation(line: 706, column: 24, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1413, file: !6, line: 706, column: 17)
!1439 = !DILocation(line: 706, column: 29, scope: !1438)
!1440 = !DILocation(line: 706, column: 17, scope: !1413)
!1441 = !DILocation(line: 707, column: 29, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !6, line: 706, column: 38)
!1443 = !DILocation(line: 708, column: 13, scope: !1442)
!1444 = !DILocation(line: 710, column: 25, scope: !1412)
!1445 = !DILocation(line: 710, column: 17, scope: !1413)
!1446 = !DILocation(line: 0, scope: !1411)
!1447 = !DILocation(line: 712, column: 86, scope: !1411)
!1448 = !DILocation(line: 712, column: 44, scope: !1411)
!1449 = !DILocation(line: 712, column: 29, scope: !1411)
!1450 = !DILocation(line: 0, scope: !1416)
!1451 = !DILocation(line: 713, column: 38, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 713, column: 17)
!1453 = !DILocation(line: 713, column: 17, scope: !1416)
!1454 = !DILocation(line: 716, column: 29, scope: !1411)
!1455 = !DILocation(line: 717, column: 26, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1411, file: !6, line: 717, column: 21)
!1457 = !DILocation(line: 717, column: 21, scope: !1411)
!1458 = !DILocation(line: 714, column: 36, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !6, line: 713, column: 58)
!1460 = !DILocation(line: 714, column: 21, scope: !1459)
!1461 = !DILocation(line: 714, column: 34, scope: !1459)
!1462 = !DILocation(line: 713, column: 54, scope: !1452)
!1463 = distinct !{!1463, !1453, !1464, !618}
!1464 = !DILocation(line: 715, column: 17, scope: !1416)
!1465 = !DILocation(line: 718, column: 26, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !6, line: 717, column: 52)
!1467 = !DILocation(line: 718, column: 21, scope: !1466)
!1468 = !DILocation(line: 719, column: 17, scope: !1466)
!1469 = !DILocation(line: 722, column: 19, scope: !1413)
!1470 = !DILocation(line: 722, column: 31, scope: !1413)
!1471 = !DILocation(line: 724, column: 30, scope: !1413)
!1472 = !DILocation(line: 724, column: 13, scope: !1413)
!1473 = !DILocation(line: 724, column: 34, scope: !1413)
!1474 = !DILocation(line: 0, scope: !765, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 725, column: 26, scope: !1413)
!1476 = !DILocation(line: 126, column: 29, scope: !765, inlinedAt: !1475)
!1477 = !DILocation(line: 126, column: 9, scope: !765, inlinedAt: !1475)
!1478 = !DILocation(line: 728, column: 9, scope: !1413)
!1479 = distinct !{!1479, !1429, !1480, !618}
!1480 = !DILocation(line: 733, column: 5, scope: !1389)
!1481 = !DILocation(line: 0, scope: !1005, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 735, column: 18, scope: !1389)
!1483 = !DILocation(line: 305, column: 28, scope: !1005, inlinedAt: !1482)
!1484 = !DILocation(line: 0, scope: !1015, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 305, column: 9, scope: !1005, inlinedAt: !1482)
!1486 = !DILocation(line: 65, column: 11, scope: !1015, inlinedAt: !1485)
!1487 = !DILocation(line: 307, column: 51, scope: !1005, inlinedAt: !1482)
!1488 = !DILocation(line: 0, scope: !1022, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 307, column: 25, scope: !1005, inlinedAt: !1482)
!1490 = !DILocation(line: 131, column: 12, scope: !1022, inlinedAt: !1489)
!1491 = !DILocation(line: 310, column: 39, scope: !1005, inlinedAt: !1482)
!1492 = !DILocation(line: 310, column: 57, scope: !1005, inlinedAt: !1482)
!1493 = !DILocation(line: 313, column: 31, scope: !1031, inlinedAt: !1482)
!1494 = !DILocation(line: 735, column: 12, scope: !1389)
!1495 = !DILocation(line: 314, column: 13, scope: !1034, inlinedAt: !1482)
!1496 = !DILocation(line: 315, column: 9, scope: !1034, inlinedAt: !1482)
!1497 = !DILocation(line: 0, scope: !1057, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 317, column: 9, scope: !1005, inlinedAt: !1482)
!1499 = !DILocation(line: 68, column: 5, scope: !1057, inlinedAt: !1498)
!1500 = !DILocation(line: 0, scope: !1418)
!1501 = !DILocation(line: 737, column: 26, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1418, file: !6, line: 737, column: 5)
!1503 = !DILocation(line: 737, column: 5, scope: !1418)
!1504 = !DILocation(line: 738, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !6, line: 737, column: 42)
!1506 = !DILocation(line: 0, scope: !772, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 738, column: 30, scope: !1505)
!1508 = !DILocation(line: 130, column: 9, scope: !772, inlinedAt: !1507)
!1509 = !DILocation(line: 130, column: 21, scope: !772, inlinedAt: !1507)
!1510 = !DILocation(line: 131, column: 30, scope: !772, inlinedAt: !1507)
!1511 = !DILocation(line: 131, column: 9, scope: !772, inlinedAt: !1507)
!1512 = !DILocation(line: 737, column: 38, scope: !1502)
!1513 = distinct !{!1513, !1503, !1514, !618}
!1514 = !DILocation(line: 739, column: 5, scope: !1418)
!1515 = !DILocation(line: 746, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1389, file: !6, line: 746, column: 9)
!1517 = !DILocation(line: 746, column: 9, scope: !1389)
!1518 = !DILocation(line: 0, scope: !1420)
!1519 = !DILocation(line: 743, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !6, line: 742, column: 42)
!1521 = distinct !DILexicalBlock(scope: !1420, file: !6, line: 742, column: 5)
!1522 = !DILocation(line: 0, scope: !781, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 743, column: 30, scope: !1520)
!1524 = !DILocation(line: 135, column: 31, scope: !781, inlinedAt: !1523)
!1525 = !DILocation(line: 135, column: 9, scope: !781, inlinedAt: !1523)
!1526 = !DILocation(line: 742, column: 38, scope: !1521)
!1527 = !DILocation(line: 742, column: 26, scope: !1521)
!1528 = !DILocation(line: 742, column: 5, scope: !1420)
!1529 = distinct !{!1529, !1528, !1530, !618}
!1530 = !DILocation(line: 744, column: 5, scope: !1420)
!1531 = !DILocation(line: 747, column: 14, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1516, file: !6, line: 746, column: 45)
!1533 = !DILocation(line: 747, column: 9, scope: !1532)
!1534 = !DILocation(line: 748, column: 5, scope: !1532)
!1535 = !DILocation(line: 751, column: 1, scope: !1389)
!1536 = !DILocation(line: 750, column: 5, scope: !1389)
!1537 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj", scope: !2, file: !6, line: 753, type: !1538, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!29, !22, !22, !1147, !22}
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1555}
!1541 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1537, file: !6, line: 753, type: !22)
!1542 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1537, file: !6, line: 753, type: !22)
!1543 = !DILocalVariable(name: "control", arg: 3, scope: !1537, file: !6, line: 753, type: !1147)
!1544 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1537, file: !6, line: 753, type: !22)
!1545 = !DILocalVariable(name: "buckets", scope: !1537, file: !6, line: 754, type: !852)
!1546 = !DILocalVariable(name: "action", scope: !1537, file: !6, line: 756, type: !278)
!1547 = !DILocalVariable(name: "data_location", scope: !1537, file: !6, line: 762, type: !266)
!1548 = !DILocalVariable(name: "prev", scope: !1537, file: !6, line: 763, type: !251)
!1549 = !DILocalVariable(name: "data", scope: !1537, file: !6, line: 764, type: !251)
!1550 = !DILocalVariable(name: "requeue", scope: !1537, file: !6, line: 765, type: !251)
!1551 = !DILocalVariable(name: "requeue_tail", scope: !1537, file: !6, line: 766, type: !251)
!1552 = !DILocalVariable(name: "wakeup", scope: !1537, file: !6, line: 767, type: !251)
!1553 = !DILocalVariable(name: "cur_addr", scope: !1554, file: !6, line: 770, type: !22)
!1554 = distinct !DILexicalBlock(scope: !1537, file: !6, line: 769, column: 29)
!1555 = !DILocalVariable(name: "next", scope: !1554, file: !6, line: 773, type: !251)
!1556 = !DILocation(line: 0, scope: !1537)
!1557 = !DILocation(line: 754, column: 5, scope: !1537)
!1558 = !DILocation(line: 754, column: 17, scope: !1537)
!1559 = !DILocation(line: 754, column: 27, scope: !1537)
!1560 = !DILocation(line: 756, column: 5, scope: !1537)
!1561 = !DILocation(line: 756, column: 21, scope: !1537)
!1562 = !DILocation(line: 0, scope: !1180, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 756, column: 21, scope: !1537)
!1564 = !DILocation(line: 577, column: 10, scope: !1180, inlinedAt: !1563)
!1565 = !DILocation(line: 578, column: 15, scope: !1180, inlinedAt: !1563)
!1566 = !DILocation(line: 757, column: 18, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1537, file: !6, line: 757, column: 9)
!1568 = !DILocation(line: 757, column: 27, scope: !1567)
!1569 = !DILocation(line: 757, column: 10, scope: !1567)
!1570 = !DILocation(line: 757, column: 9, scope: !1537)
!1571 = !DILocation(line: 758, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 757, column: 46)
!1573 = !DILocation(line: 759, column: 9, scope: !1572)
!1574 = !DILocation(line: 762, column: 43, scope: !1537)
!1575 = !DILocation(line: 762, column: 48, scope: !1537)
!1576 = !DILocation(line: 764, column: 24, scope: !1537)
!1577 = !DILocation(line: 769, column: 17, scope: !1537)
!1578 = !DILocation(line: 769, column: 5, scope: !1537)
!1579 = !DILocation(line: 771, column: 36, scope: !1554)
!1580 = !DILocation(line: 771, column: 9, scope: !1554)
!1581 = !DILocation(line: 773, column: 34, scope: !1554)
!1582 = !DILocation(line: 0, scope: !1554)
!1583 = !DILocation(line: 774, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1554, file: !6, line: 774, column: 13)
!1585 = !DILocation(line: 774, column: 13, scope: !1554)
!1586 = !DILocation(line: 775, column: 28, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !6, line: 774, column: 36)
!1588 = !DILocation(line: 777, column: 25, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !6, line: 777, column: 17)
!1590 = !DILocation(line: 777, column: 30, scope: !1589)
!1591 = !DILocation(line: 777, column: 35, scope: !1589)
!1592 = !DILocation(line: 777, column: 17, scope: !1587)
!1593 = !DILocation(line: 778, column: 35, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !6, line: 777, column: 44)
!1595 = !DILocation(line: 779, column: 13, scope: !1594)
!1596 = !DILocation(line: 781, column: 35, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1587, file: !6, line: 781, column: 17)
!1598 = !DILocation(line: 784, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !6, line: 784, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !6, line: 783, column: 20)
!1601 = !DILocation(line: 784, column: 21, scope: !1600)
!1602 = !DILocation(line: 787, column: 35, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !6, line: 786, column: 24)
!1604 = !DILocation(line: 787, column: 40, scope: !1603)
!1605 = !DILocalVariable(name: "addr", arg: 1, scope: !1606, file: !6, line: 149, type: !302)
!1606 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPjS4_", scope: !500, file: !6, line: 149, type: !1607, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !302, !302}
!1609 = !{!1605, !1610}
!1610 = !DILocalVariable(name: "val", arg: 2, scope: !1606, file: !6, line: 149, type: !302)
!1611 = !DILocation(line: 0, scope: !1606, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 791, column: 17, scope: !1600)
!1613 = !DILocation(line: 150, column: 11, scope: !1606, inlinedAt: !1612)
!1614 = !DILocation(line: 765, column: 17, scope: !1537)
!1615 = !DILocation(line: 766, column: 17, scope: !1537)
!1616 = distinct !{!1616, !1578, !1617, !618}
!1617 = !DILocation(line: 800, column: 5, scope: !1537)
!1618 = !DILocation(line: 802, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1537, file: !6, line: 802, column: 9)
!1620 = !DILocation(line: 802, column: 9, scope: !1537)
!1621 = !DILocation(line: 803, column: 23, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !6, line: 802, column: 29)
!1623 = !DILocation(line: 803, column: 28, scope: !1622)
!1624 = !DILocation(line: 804, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !6, line: 804, column: 13)
!1626 = !DILocation(line: 804, column: 24, scope: !1625)
!1627 = !DILocation(line: 804, column: 29, scope: !1625)
!1628 = !DILocation(line: 804, column: 13, scope: !1622)
!1629 = !DILocation(line: 807, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !6, line: 806, column: 16)
!1631 = !DILocation(line: 807, column: 30, scope: !1630)
!1632 = !DILocation(line: 0, scope: !1625)
!1633 = !DILocation(line: 809, column: 20, scope: !1622)
!1634 = !DILocation(line: 809, column: 25, scope: !1622)
!1635 = !DILocation(line: 810, column: 5, scope: !1622)
!1636 = !DILocation(line: 812, column: 13, scope: !1537)
!1637 = !{!1193, !404, i64 12}
!1638 = !DILocation(line: 812, column: 55, scope: !1537)
!1639 = !DILocation(line: 812, column: 5, scope: !1537)
!1640 = !DILocation(line: 814, column: 9, scope: !1537)
!1641 = !DILocation(line: 815, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 814, column: 28)
!1643 = distinct !DILexicalBlock(scope: !1537, file: !6, line: 814, column: 9)
!1644 = !DILocation(line: 815, column: 29, scope: !1642)
!1645 = !DILocation(line: 0, scope: !765, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 816, column: 24, scope: !1642)
!1647 = !DILocation(line: 126, column: 29, scope: !765, inlinedAt: !1646)
!1648 = !DILocation(line: 126, column: 9, scope: !765, inlinedAt: !1646)
!1649 = !DILocation(line: 817, column: 9, scope: !1642)
!1650 = !DILocation(line: 0, scope: !772, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 818, column: 24, scope: !1642)
!1652 = !DILocation(line: 130, column: 9, scope: !772, inlinedAt: !1651)
!1653 = !DILocation(line: 130, column: 21, scope: !772, inlinedAt: !1651)
!1654 = !DILocation(line: 131, column: 30, scope: !772, inlinedAt: !1651)
!1655 = !DILocation(line: 131, column: 9, scope: !772, inlinedAt: !1651)
!1656 = !DILocation(line: 0, scope: !781, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 819, column: 24, scope: !1642)
!1658 = !DILocation(line: 135, column: 9, scope: !781, inlinedAt: !1657)
!1659 = !DILocation(line: 820, column: 5, scope: !1642)
!1660 = !DILocation(line: 821, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 820, column: 12)
!1662 = !DILocation(line: 824, column: 30, scope: !1537)
!1663 = !DILocation(line: 824, column: 12, scope: !1537)
!1664 = !DILocation(line: 825, column: 1, scope: !1537)
!1665 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 840, type: !275, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669, !1670}
!1667 = !DILocalVariable(name: "control", arg: 1, scope: !1665, file: !6, line: 840, type: !43)
!1668 = !DILocalVariable(name: "action", arg: 2, scope: !1665, file: !6, line: 840, type: !277)
!1669 = !DILocalVariable(name: "mutex_control", scope: !1665, file: !6, line: 841, type: !267)
!1670 = !DILocalVariable(name: "result", scope: !1665, file: !6, line: 843, type: !22)
!1671 = !DILocation(line: 0, scope: !1665)
!1672 = !DILocation(line: 844, column: 40, scope: !1665)
!1673 = !{!1674, !404, i64 16}
!1674 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !404, i64 16}
!1675 = !DILocation(line: 844, column: 5, scope: !1665)
!1676 = !DILocation(line: 845, column: 19, scope: !1665)
!1677 = !DILocation(line: 845, column: 5, scope: !1665)
!1678 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !2, file: !6, line: 849, type: !289, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684}
!1680 = !DILocalVariable(name: "control", arg: 1, scope: !1678, file: !6, line: 849, type: !43)
!1681 = !DILocalVariable(name: "unparked", arg: 2, scope: !1678, file: !6, line: 849, type: !29)
!1682 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1678, file: !6, line: 849, type: !64)
!1683 = !DILocalVariable(name: "mutex_control", scope: !1678, file: !6, line: 850, type: !267)
!1684 = !DILocalVariable(name: "return_state", scope: !1678, file: !6, line: 853, type: !22)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 853, column: 30, scope: !1678)
!1687 = !DILocation(line: 854, column: 41, scope: !1678)
!1688 = !DILocalVariable(name: "addr", arg: 1, scope: !1689, file: !6, line: 154, type: !513)
!1689 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIjEEvPT_S6_", scope: !500, file: !6, line: 154, type: !672, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !519, retainedNodes: !1690)
!1690 = !{!1688, !1691}
!1691 = !DILocalVariable(name: "val", arg: 2, scope: !1689, file: !6, line: 154, type: !513)
!1692 = !DILocation(line: 0, scope: !1689, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 854, column: 5, scope: !1678)
!1694 = !DILocation(line: 155, column: 11, scope: !1689, inlinedAt: !1693)
!1695 = !DILocation(line: 156, column: 5, scope: !1689, inlinedAt: !1693)
!1696 = !DILocation(line: 856, column: 5, scope: !1678)
!1697 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !2, file: !6, line: 968, type: !289, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703}
!1699 = !DILocalVariable(name: "control", arg: 1, scope: !1697, file: !6, line: 968, type: !43)
!1700 = !DILocalVariable(name: "unparked", arg: 2, scope: !1697, file: !6, line: 968, type: !29)
!1701 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1697, file: !6, line: 968, type: !64)
!1702 = !DILocalVariable(name: "signal_control", scope: !1697, file: !6, line: 969, type: !307)
!1703 = !DILocalVariable(name: "val", scope: !1704, file: !6, line: 972, type: !22)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !6, line: 971, column: 24)
!1705 = distinct !DILexicalBlock(scope: !1697, file: !6, line: 971, column: 9)
!1706 = !DILocation(line: 0, scope: !1697)
!1707 = !DILocation(line: 971, column: 9, scope: !1697)
!1708 = !DILocation(line: 0, scope: !1704)
!1709 = !DILocation(line: 973, column: 46, scope: !1704)
!1710 = !{!1711, !404, i64 16}
!1711 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !404, i64 16, !404, i64 20}
!1712 = !DILocation(line: 0, scope: !1606, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 973, column: 9, scope: !1704)
!1714 = !DILocation(line: 150, column: 11, scope: !1606, inlinedAt: !1713)
!1715 = !DILocation(line: 974, column: 5, scope: !1704)
!1716 = !DILocation(line: 979, column: 5, scope: !1697)
!1717 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 996, type: !275, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1718)
!1718 = !{!1719, !1720, !1721, !1722}
!1719 = !DILocalVariable(name: "control", arg: 1, scope: !1717, file: !6, line: 996, type: !43)
!1720 = !DILocalVariable(name: "action", arg: 2, scope: !1717, file: !6, line: 996, type: !277)
!1721 = !DILocalVariable(name: "broadcast_control", scope: !1717, file: !6, line: 997, type: !332)
!1722 = !DILocalVariable(name: "val", scope: !1717, file: !6, line: 999, type: !22)
!1723 = !DILocation(line: 0, scope: !1717)
!1724 = !DILocation(line: 1000, column: 44, scope: !1717)
!1725 = !{!1726, !404, i64 16}
!1726 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !404, i64 16, !404, i64 20}
!1727 = !DILocation(line: 1000, column: 5, scope: !1717)
!1728 = !DILocation(line: 1004, column: 46, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1717, file: !6, line: 1004, column: 9)
!1730 = !{!1726, !404, i64 20}
!1731 = !DILocation(line: 1004, column: 16, scope: !1729)
!1732 = !DILocation(line: 1004, column: 13, scope: !1729)
!1733 = !DILocation(line: 1004, column: 9, scope: !1717)
!1734 = !DILocation(line: 0, scope: !1606, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1009, column: 5, scope: !1717)
!1736 = !DILocation(line: 150, column: 11, scope: !1606, inlinedAt: !1735)
!1737 = !DILocalVariable(name: "this", arg: 1, scope: !1738, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1738 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !314, file: !6, line: 938, type: !325, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !324, retainedNodes: !1739)
!1739 = !{!1737, !1740, !1741}
!1740 = !DILocalVariable(name: "val", scope: !1738, file: !6, line: 939, type: !22)
!1741 = !DILocalVariable(name: "desired", scope: !1742, file: !6, line: 946, type: !22)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !6, line: 941, column: 22)
!1743 = !DILocation(line: 0, scope: !1738, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1011, column: 52, scope: !1717)
!1745 = !DILocation(line: 940, column: 30, scope: !1738, inlinedAt: !1744)
!1746 = !DILocation(line: 940, column: 9, scope: !1738, inlinedAt: !1744)
!1747 = !DILocation(line: 941, column: 9, scope: !1738, inlinedAt: !1744)
!1748 = !DILocation(line: 942, column: 23, scope: !1749, inlinedAt: !1744)
!1749 = distinct !DILexicalBlock(scope: !1742, file: !6, line: 942, column: 17)
!1750 = !DILocation(line: 942, column: 18, scope: !1749, inlinedAt: !1744)
!1751 = !DILocation(line: 942, column: 17, scope: !1742, inlinedAt: !1744)
!1752 = !DILocation(line: 946, column: 37, scope: !1742, inlinedAt: !1744)
!1753 = !DILocation(line: 0, scope: !1742, inlinedAt: !1744)
!1754 = !DILocalVariable(name: "addr", arg: 1, scope: !1755, file: !6, line: 122, type: !302)
!1755 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPjS4_S4_", scope: !500, file: !6, line: 122, type: !501, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1756)
!1756 = !{!1754, !1757, !1758}
!1757 = !DILocalVariable(name: "expected", arg: 2, scope: !1755, file: !6, line: 122, type: !302)
!1758 = !DILocalVariable(name: "desired", arg: 3, scope: !1755, file: !6, line: 122, type: !302)
!1759 = !DILocation(line: 0, scope: !1755, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 947, column: 17, scope: !1761, inlinedAt: !1744)
!1761 = distinct !DILexicalBlock(scope: !1742, file: !6, line: 947, column: 17)
!1762 = !DILocation(line: 0, scope: !510, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 123, column: 12, scope: !1755, inlinedAt: !1760)
!1764 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1763)
!1765 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1763)
!1766 = distinct !{!1766, !1747, !1767}
!1767 = !DILocation(line: 950, column: 9, scope: !1738, inlinedAt: !1744)
!1768 = !DILocation(line: 1011, column: 12, scope: !1717)
!1769 = !DILocation(line: 1011, column: 23, scope: !1717)
!1770 = !DILocation(line: 1013, column: 5, scope: !1717)
!1771 = !DILocation(line: 1014, column: 1, scope: !1717)
!1772 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 1016, type: !293, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778}
!1774 = !DILocalVariable(name: "control", arg: 1, scope: !1772, file: !6, line: 1016, type: !43)
!1775 = !DILocalVariable(name: "action", arg: 2, scope: !1772, file: !6, line: 1016, type: !295)
!1776 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1772, file: !6, line: 1016, type: !64)
!1777 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1772, file: !6, line: 1016, type: !64)
!1778 = !DILocalVariable(name: "broadcast_control", scope: !1772, file: !6, line: 1017, type: !332)
!1779 = !DILocation(line: 0, scope: !1772)
!1780 = !DILocation(line: 1019, column: 16, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1772, file: !6, line: 1019, column: 9)
!1782 = !DILocation(line: 1019, column: 27, scope: !1781)
!1783 = !DILocation(line: 1020, column: 28, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !6, line: 1019, column: 45)
!1785 = !DILocalVariable(name: "this", arg: 1, scope: !1786, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1786 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !314, file: !6, line: 953, type: !318, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !327, retainedNodes: !1787)
!1787 = !{!1785}
!1788 = !DILocation(line: 0, scope: !1786, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 1020, column: 35, scope: !1784)
!1790 = !DILocation(line: 954, column: 34, scope: !1786, inlinedAt: !1789)
!1791 = !DILocalVariable(name: "addr", arg: 1, scope: !1792, file: !6, line: 145, type: !302)
!1792 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPjj", scope: !500, file: !6, line: 145, type: !757, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1793)
!1793 = !{!1791, !1794}
!1794 = !DILocalVariable(name: "val", arg: 2, scope: !1792, file: !6, line: 145, type: !22)
!1795 = !DILocation(line: 0, scope: !1792, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 954, column: 9, scope: !1786, inlinedAt: !1789)
!1797 = !DILocation(line: 146, column: 12, scope: !1792, inlinedAt: !1796)
!1798 = !DILocation(line: 1021, column: 5, scope: !1784)
!1799 = !DILocation(line: 1022, column: 1, scope: !1772)
!1800 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 1038, type: !275, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1801)
!1801 = !{!1802, !1803, !1804, !1805}
!1802 = !DILocalVariable(name: "control", arg: 1, scope: !1800, file: !6, line: 1038, type: !43)
!1803 = !DILocalVariable(name: "action", arg: 2, scope: !1800, file: !6, line: 1038, type: !277)
!1804 = !DILocalVariable(name: "wait_control", scope: !1800, file: !6, line: 1039, type: !342)
!1805 = !DILocalVariable(name: "val", scope: !1800, file: !6, line: 1041, type: !22)
!1806 = !DILocation(line: 0, scope: !1800)
!1807 = !DILocation(line: 1042, column: 39, scope: !1800)
!1808 = !{!1809, !404, i64 16}
!1809 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !404, i64 16, !404, i64 20}
!1810 = !DILocation(line: 1042, column: 5, scope: !1800)
!1811 = !DILocation(line: 1044, column: 13, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1800, file: !6, line: 1044, column: 9)
!1813 = !DILocation(line: 0, scope: !1812)
!1814 = !{!1809, !404, i64 20}
!1815 = !DILocation(line: 1044, column: 9, scope: !1800)
!1816 = !DILocation(line: 1047, column: 20, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !6, line: 1047, column: 16)
!1818 = !DILocation(line: 1047, column: 16, scope: !1812)
!1819 = !DILocation(line: 1049, column: 16, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !6, line: 1047, column: 55)
!1821 = !DILocation(line: 1050, column: 9, scope: !1820)
!1822 = !DILocation(line: 1054, column: 1, scope: !1800)
!1823 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1824)
!1824 = !{!1825, !1826}
!1825 = !DILocalVariable(name: "control", arg: 1, scope: !1823, file: !6, line: 1056, type: !43)
!1826 = !DILocalVariable(name: "wait_control", scope: !1823, file: !6, line: 1057, type: !342)
!1827 = !DILocation(line: 0, scope: !1823)
!1828 = !DILocation(line: 1059, column: 19, scope: !1823)
!1829 = !DILocalVariable(name: "this", arg: 1, scope: !1830, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1830 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !314, file: !6, line: 929, type: !318, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !323, retainedNodes: !1831)
!1831 = !{!1829, !1832, !1833}
!1832 = !DILocalVariable(name: "expected", scope: !1830, file: !6, line: 930, type: !22)
!1833 = !DILocalVariable(name: "desired", scope: !1830, file: !6, line: 931, type: !22)
!1834 = !DILocation(line: 0, scope: !1830, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 1059, column: 26, scope: !1823)
!1836 = !DILocation(line: 933, column: 47, scope: !1837, inlinedAt: !1835)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !6, line: 933, column: 13)
!1838 = !DILocation(line: 0, scope: !592, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 933, column: 14, scope: !1837, inlinedAt: !1835)
!1840 = !DILocation(line: 0, scope: !510, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 114, column: 12, scope: !592, inlinedAt: !1839)
!1842 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1841)
!1843 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1841)
!1844 = !DILocation(line: 933, column: 13, scope: !1830, inlinedAt: !1835)
!1845 = !DILocalVariable(name: "this", arg: 1, scope: !1846, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1846 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !314, file: !6, line: 906, type: !318, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1847)
!1847 = !{!1845, !1848, !1849, !1850}
!1848 = !DILocalVariable(name: "expected", scope: !1846, file: !6, line: 907, type: !22)
!1849 = !DILocalVariable(name: "desired", scope: !1846, file: !6, line: 908, type: !22)
!1850 = !DILocalVariable(name: "control", scope: !1846, file: !6, line: 915, type: !268)
!1851 = !DILocation(line: 0, scope: !1846, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 934, column: 13, scope: !1853, inlinedAt: !1835)
!1853 = distinct !DILexicalBlock(scope: !1837, file: !6, line: 933, column: 76)
!1854 = !DILocalVariable(name: "addr", arg: 1, scope: !1855, file: !6, line: 109, type: !302)
!1855 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPjS4_S4_", scope: !500, file: !6, line: 109, type: !501, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1856)
!1856 = !{!1854, !1857, !1858}
!1857 = !DILocalVariable(name: "expected", arg: 2, scope: !1855, file: !6, line: 109, type: !302)
!1858 = !DILocalVariable(name: "desired", arg: 3, scope: !1855, file: !6, line: 109, type: !302)
!1859 = !DILocation(line: 0, scope: !1855, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 911, column: 13, scope: !1861, inlinedAt: !1852)
!1861 = distinct !DILexicalBlock(scope: !1846, file: !6, line: 911, column: 13)
!1862 = !DILocation(line: 0, scope: !510, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 110, column: 12, scope: !1855, inlinedAt: !1860)
!1864 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1863)
!1865 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1863)
!1866 = !DILocation(line: 911, column: 13, scope: !1846, inlinedAt: !1852)
!1867 = !DILocation(line: 915, column: 9, scope: !1846, inlinedAt: !1852)
!1868 = !DILocation(line: 915, column: 31, scope: !1846, inlinedAt: !1852)
!1869 = !DILocalVariable(name: "this", arg: 1, scope: !1870, type: !267, flags: DIFlagArtificial | DIFlagObjectPointer)
!1870 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPj", scope: !268, file: !6, line: 832, type: !304, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !303, retainedNodes: !1871)
!1871 = !{!1869, !1872}
!1872 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1870, file: !6, line: 832, type: !302)
!1873 = !DILocation(line: 0, scope: !1870, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 915, column: 31, scope: !1846, inlinedAt: !1852)
!1875 = !DILocalVariable(name: "this", arg: 1, scope: !1876, type: !1878, flags: DIFlagArtificial | DIFlagObjectPointer)
!1876 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !271, file: !6, line: 598, type: !298, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !297, retainedNodes: !1877)
!1877 = !{!1875}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 32)
!1879 = !DILocation(line: 0, scope: !1876, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 832, column: 19, scope: !1870, inlinedAt: !1874)
!1881 = !DILocation(line: 599, column: 11, scope: !1876, inlinedAt: !1880)
!1882 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !1880)
!1883 = !DILocation(line: 600, column: 11, scope: !1876, inlinedAt: !1880)
!1884 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !1880)
!1885 = !DILocation(line: 833, column: 11, scope: !1870, inlinedAt: !1874)
!1886 = !DILocation(line: 834, column: 18, scope: !1887, inlinedAt: !1874)
!1887 = distinct !DILexicalBlock(scope: !1870, file: !6, line: 833, column: 34)
!1888 = !DILocation(line: 835, column: 16, scope: !1887, inlinedAt: !1874)
!1889 = !DILocation(line: 916, column: 20, scope: !1846, inlinedAt: !1852)
!1890 = !DILocation(line: 916, column: 37, scope: !1846, inlinedAt: !1852)
!1891 = !DILocation(line: 916, column: 9, scope: !1846, inlinedAt: !1852)
!1892 = !DILocation(line: 917, column: 5, scope: !1846, inlinedAt: !1852)
!1893 = !DILocation(line: 1060, column: 1, scope: !1823)
!1894 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !2, file: !6, line: 1062, type: !289, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900}
!1896 = !DILocalVariable(name: "control", arg: 1, scope: !1894, file: !6, line: 1062, type: !43)
!1897 = !DILocalVariable(name: "unparked", arg: 2, scope: !1894, file: !6, line: 1062, type: !29)
!1898 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1894, file: !6, line: 1062, type: !64)
!1899 = !DILocalVariable(name: "wait_control", scope: !1894, file: !6, line: 1063, type: !342)
!1900 = !DILocalVariable(name: "val", scope: !1901, file: !6, line: 1066, type: !22)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !6, line: 1065, column: 24)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !6, line: 1065, column: 9)
!1903 = !DILocation(line: 0, scope: !1894)
!1904 = !DILocation(line: 1065, column: 9, scope: !1894)
!1905 = !DILocation(line: 0, scope: !1901)
!1906 = !DILocation(line: 1067, column: 44, scope: !1901)
!1907 = !DILocation(line: 0, scope: !1606, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 1067, column: 9, scope: !1901)
!1909 = !DILocation(line: 150, column: 11, scope: !1606, inlinedAt: !1908)
!1910 = !DILocation(line: 1068, column: 5, scope: !1901)
!1911 = !DILocation(line: 1069, column: 5, scope: !1894)
!1912 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1913, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !369}
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "mutex", arg: 1, scope: !1912, file: !6, line: 1131, type: !369)
!1917 = !DILocalVariable(name: "fast_mutex", scope: !1912, file: !6, line: 1132, type: !313)
!1918 = !DILocation(line: 0, scope: !1912)
!1919 = !DILocalVariable(name: "this", arg: 1, scope: !1920, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1920 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !314, file: !6, line: 920, type: !318, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1921)
!1921 = !{!1919, !1922, !1923}
!1922 = !DILocalVariable(name: "expected", scope: !1920, file: !6, line: 921, type: !22)
!1923 = !DILocalVariable(name: "desired", scope: !1920, file: !6, line: 922, type: !22)
!1924 = !DILocation(line: 0, scope: !1920, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1134, column: 17, scope: !1912)
!1926 = !DILocation(line: 924, column: 47, scope: !1927, inlinedAt: !1925)
!1927 = distinct !DILexicalBlock(scope: !1920, file: !6, line: 924, column: 13)
!1928 = !DILocation(line: 0, scope: !499, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 924, column: 14, scope: !1927, inlinedAt: !1925)
!1930 = !DILocation(line: 0, scope: !510, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !1929)
!1932 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1931)
!1933 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1931)
!1934 = !DILocation(line: 924, column: 13, scope: !1920, inlinedAt: !1925)
!1935 = !DILocalVariable(name: "this", arg: 1, scope: !1936, type: !313, flags: DIFlagArtificial | DIFlagObjectPointer)
!1936 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !314, file: !6, line: 862, type: !318, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !317, retainedNodes: !1937)
!1937 = !{!1935, !1938, !1939, !1940, !1944, !1947, !1948}
!1938 = !DILocalVariable(name: "spinner", scope: !1936, file: !6, line: 864, type: !468)
!1939 = !DILocalVariable(name: "expected", scope: !1936, file: !6, line: 865, type: !22)
!1940 = !DILocalVariable(name: "desired", scope: !1941, file: !6, line: 870, type: !22)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !6, line: 869, column: 41)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !6, line: 869, column: 17)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !6, line: 868, column: 22)
!1944 = !DILocalVariable(name: "desired", scope: !1945, file: !6, line: 888, type: !22)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !6, line: 887, column: 47)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !6, line: 887, column: 17)
!1947 = !DILocalVariable(name: "control", scope: !1943, file: !6, line: 895, type: !268)
!1948 = !DILocalVariable(name: "result", scope: !1943, file: !6, line: 896, type: !22)
!1949 = !DILocation(line: 0, scope: !1936, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 925, column: 13, scope: !1951, inlinedAt: !1925)
!1951 = distinct !DILexicalBlock(scope: !1927, file: !6, line: 924, column: 76)
!1952 = !DILocation(line: 866, column: 9, scope: !1936, inlinedAt: !1950)
!1953 = !DILocation(line: 868, column: 9, scope: !1936, inlinedAt: !1950)
!1954 = !DILocation(line: 869, column: 17, scope: !1943, inlinedAt: !1950)
!1955 = !DILocation(line: 869, column: 28, scope: !1942, inlinedAt: !1950)
!1956 = !DILocation(line: 869, column: 18, scope: !1942, inlinedAt: !1950)
!1957 = !DILocation(line: 870, column: 46, scope: !1941, inlinedAt: !1950)
!1958 = !DILocation(line: 0, scope: !1941, inlinedAt: !1950)
!1959 = !DILocation(line: 0, scope: !499, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 871, column: 21, scope: !1961, inlinedAt: !1950)
!1961 = distinct !DILexicalBlock(scope: !1941, file: !6, line: 871, column: 21)
!1962 = !DILocation(line: 0, scope: !510, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !1960)
!1964 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1963)
!1965 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1963)
!1966 = !DILocation(line: 0, scope: !529, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 880, column: 25, scope: !1968, inlinedAt: !1950)
!1968 = distinct !DILexicalBlock(scope: !1943, file: !6, line: 880, column: 17)
!1969 = !DILocation(line: 238, column: 24, scope: !538, inlinedAt: !1967)
!1970 = !DILocation(line: 238, column: 13, scope: !529, inlinedAt: !1967)
!1971 = !DILocation(line: 241, column: 27, scope: !529, inlinedAt: !1967)
!1972 = !DILocation(line: 880, column: 17, scope: !1943, inlinedAt: !1950)
!1973 = !DILocation(line: 239, column: 23, scope: !537, inlinedAt: !1967)
!1974 = !DILocation(line: 881, column: 17, scope: !1975, inlinedAt: !1950)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !6, line: 880, column: 40)
!1976 = !DILocation(line: 882, column: 17, scope: !1975, inlinedAt: !1950)
!1977 = !DILocation(line: 883, column: 17, scope: !1975, inlinedAt: !1950)
!1978 = !DILocation(line: 887, column: 27, scope: !1946, inlinedAt: !1950)
!1979 = !DILocation(line: 887, column: 41, scope: !1946, inlinedAt: !1950)
!1980 = !DILocation(line: 887, column: 17, scope: !1943, inlinedAt: !1950)
!1981 = !DILocation(line: 888, column: 46, scope: !1945, inlinedAt: !1950)
!1982 = !DILocation(line: 0, scope: !1945, inlinedAt: !1950)
!1983 = !DILocation(line: 0, scope: !1755, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 889, column: 22, scope: !1985, inlinedAt: !1950)
!1985 = distinct !DILexicalBlock(scope: !1945, file: !6, line: 889, column: 21)
!1986 = !DILocation(line: 0, scope: !510, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 123, column: 12, scope: !1755, inlinedAt: !1984)
!1988 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !1987)
!1989 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !1987)
!1990 = !DILocation(line: 895, column: 13, scope: !1943, inlinedAt: !1950)
!1991 = !DILocation(line: 895, column: 35, scope: !1943, inlinedAt: !1950)
!1992 = !DILocation(line: 0, scope: !1870, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 895, column: 35, scope: !1943, inlinedAt: !1950)
!1994 = !DILocation(line: 0, scope: !1876, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 832, column: 19, scope: !1870, inlinedAt: !1993)
!1996 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !1995)
!1997 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !1995)
!1998 = !DILocation(line: 833, column: 11, scope: !1870, inlinedAt: !1993)
!1999 = !DILocation(line: 834, column: 18, scope: !1887, inlinedAt: !1993)
!2000 = !DILocation(line: 835, column: 16, scope: !1887, inlinedAt: !1993)
!2001 = !DILocation(line: 896, column: 32, scope: !1943, inlinedAt: !1950)
!2002 = !DILocation(line: 0, scope: !1943, inlinedAt: !1950)
!2003 = !DILocation(line: 897, column: 24, scope: !2004, inlinedAt: !1950)
!2004 = distinct !DILexicalBlock(scope: !1943, file: !6, line: 897, column: 17)
!2005 = !DILocation(line: 897, column: 17, scope: !1943, inlinedAt: !1950)
!2006 = !DILocation(line: 902, column: 13, scope: !1943, inlinedAt: !1950)
!2007 = !DILocation(line: 903, column: 9, scope: !1936, inlinedAt: !1950)
!2008 = distinct !{!2008, !1953, !2007}
!2009 = !DILocation(line: 1135, column: 1, scope: !1912)
!2010 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1913, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2011)
!2011 = !{!2012, !2013}
!2012 = !DILocalVariable(name: "mutex", arg: 1, scope: !2010, file: !6, line: 1137, type: !369)
!2013 = !DILocalVariable(name: "fast_mutex", scope: !2010, file: !6, line: 1138, type: !313)
!2014 = !DILocation(line: 0, scope: !2010)
!2015 = !DILocation(line: 0, scope: !1830, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 1140, column: 17, scope: !2010)
!2017 = !DILocation(line: 933, column: 47, scope: !1837, inlinedAt: !2016)
!2018 = !DILocation(line: 0, scope: !592, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 933, column: 14, scope: !1837, inlinedAt: !2016)
!2020 = !DILocation(line: 0, scope: !510, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 114, column: 12, scope: !592, inlinedAt: !2019)
!2022 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !2021)
!2023 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !2021)
!2024 = !DILocation(line: 933, column: 13, scope: !1830, inlinedAt: !2016)
!2025 = !DILocation(line: 0, scope: !1846, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 934, column: 13, scope: !1853, inlinedAt: !2016)
!2027 = !DILocation(line: 0, scope: !1855, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 911, column: 13, scope: !1861, inlinedAt: !2026)
!2029 = !DILocation(line: 0, scope: !510, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 110, column: 12, scope: !1855, inlinedAt: !2028)
!2031 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !2030)
!2032 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !2030)
!2033 = !DILocation(line: 911, column: 13, scope: !1846, inlinedAt: !2026)
!2034 = !DILocation(line: 915, column: 9, scope: !1846, inlinedAt: !2026)
!2035 = !DILocation(line: 915, column: 31, scope: !1846, inlinedAt: !2026)
!2036 = !DILocation(line: 0, scope: !1870, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 915, column: 31, scope: !1846, inlinedAt: !2026)
!2038 = !DILocation(line: 0, scope: !1876, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 832, column: 19, scope: !1870, inlinedAt: !2037)
!2040 = !DILocation(line: 599, column: 11, scope: !1876, inlinedAt: !2039)
!2041 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !2039)
!2042 = !DILocation(line: 600, column: 11, scope: !1876, inlinedAt: !2039)
!2043 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !2039)
!2044 = !DILocation(line: 833, column: 11, scope: !1870, inlinedAt: !2037)
!2045 = !DILocation(line: 834, column: 18, scope: !1887, inlinedAt: !2037)
!2046 = !DILocation(line: 835, column: 16, scope: !1887, inlinedAt: !2037)
!2047 = !DILocation(line: 916, column: 20, scope: !1846, inlinedAt: !2026)
!2048 = !DILocation(line: 916, column: 37, scope: !1846, inlinedAt: !2026)
!2049 = !DILocation(line: 916, column: 9, scope: !1846, inlinedAt: !2026)
!2050 = !DILocation(line: 917, column: 5, scope: !1846, inlinedAt: !2026)
!2051 = !DILocation(line: 1141, column: 1, scope: !2010)
!2052 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !2053, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2056)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "cond", arg: 1, scope: !2052, file: !6, line: 1143, type: !2055)
!2058 = !DILocalVariable(name: "fast_cond", scope: !2052, file: !6, line: 1144, type: !352)
!2059 = !DILocation(line: 0, scope: !2052)
!2060 = !DILocalVariable(name: "this", arg: 1, scope: !2061, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2061 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !353, file: !6, line: 1092, type: !357, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !361, retainedNodes: !2062)
!2062 = !{!2060, !2063, !2064}
!2063 = !DILocalVariable(name: "val", scope: !2061, file: !6, line: 1094, type: !22)
!2064 = !DILocalVariable(name: "control", scope: !2061, file: !6, line: 1100, type: !333)
!2065 = !DILocation(line: 0, scope: !2061, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 1146, column: 16, scope: !2052)
!2067 = !DILocation(line: 1093, column: 28, scope: !2061, inlinedAt: !2066)
!2068 = !DILocalVariable(name: "cond", arg: 1, scope: !2069, file: !6, line: 70, type: !43)
!2069 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_signalEPv", scope: !500, file: !6, line: 70, type: !171, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2070)
!2070 = !{!2068}
!2071 = !DILocation(line: 0, scope: !2069, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1093, column: 9, scope: !2061, inlinedAt: !2066)
!2073 = !DILocation(line: 71, column: 5, scope: !2069, inlinedAt: !2072)
!2074 = !DILocation(line: 1095, column: 30, scope: !2061, inlinedAt: !2066)
!2075 = !DILocation(line: 1095, column: 9, scope: !2061, inlinedAt: !2066)
!2076 = !DILocation(line: 1096, column: 17, scope: !2077, inlinedAt: !2066)
!2077 = distinct !DILexicalBlock(scope: !2061, file: !6, line: 1096, column: 13)
!2078 = !DILocation(line: 1096, column: 13, scope: !2061, inlinedAt: !2066)
!2079 = !DILocalVariable(name: "cond", arg: 1, scope: !2080, file: !6, line: 73, type: !43)
!2080 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_signalEPv", scope: !500, file: !6, line: 73, type: !171, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2081)
!2081 = !{!2079}
!2082 = !DILocation(line: 0, scope: !2080, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1097, column: 13, scope: !2084, inlinedAt: !2066)
!2084 = distinct !DILexicalBlock(scope: !2077, file: !6, line: 1096, column: 23)
!2085 = !DILocation(line: 74, column: 5, scope: !2080, inlinedAt: !2083)
!2086 = !DILocation(line: 1098, column: 13, scope: !2084, inlinedAt: !2066)
!2087 = !DILocation(line: 1100, column: 9, scope: !2061, inlinedAt: !2066)
!2088 = !DILocation(line: 1100, column: 35, scope: !2061, inlinedAt: !2066)
!2089 = !DILocation(line: 1100, column: 51, scope: !2061, inlinedAt: !2066)
!2090 = !DILocalVariable(name: "this", arg: 1, scope: !2091, type: !332, flags: DIFlagArtificial | DIFlagObjectPointer)
!2091 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPjPNS2_10fast_mutexE", scope: !333, file: !6, line: 989, type: !339, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !338, retainedNodes: !2092)
!2092 = !{!2090, !2093, !2094}
!2093 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2091, file: !6, line: 989, type: !302)
!2094 = !DILocalVariable(name: "mutex", arg: 3, scope: !2091, file: !6, line: 989, type: !313)
!2095 = !DILocation(line: 0, scope: !2091, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 1100, column: 35, scope: !2061, inlinedAt: !2066)
!2097 = !DILocation(line: 0, scope: !1876, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 989, column: 19, scope: !2091, inlinedAt: !2096)
!2099 = !DILocation(line: 599, column: 11, scope: !1876, inlinedAt: !2098)
!2100 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !2098)
!2101 = !DILocation(line: 600, column: 11, scope: !1876, inlinedAt: !2098)
!2102 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !2098)
!2103 = !DILocation(line: 990, column: 11, scope: !2091, inlinedAt: !2096)
!2104 = !DILocation(line: 990, column: 35, scope: !2091, inlinedAt: !2096)
!2105 = !DILocation(line: 991, column: 18, scope: !2106, inlinedAt: !2096)
!2106 = distinct !DILexicalBlock(scope: !2091, file: !6, line: 990, column: 48)
!2107 = !DILocation(line: 992, column: 26, scope: !2106, inlinedAt: !2096)
!2108 = !DILocation(line: 1101, column: 24, scope: !2061, inlinedAt: !2066)
!2109 = !DILocation(line: 1101, column: 46, scope: !2061, inlinedAt: !2066)
!2110 = !DILocation(line: 1101, column: 9, scope: !2061, inlinedAt: !2066)
!2111 = !DILocation(line: 0, scope: !2080, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1102, column: 9, scope: !2061, inlinedAt: !2066)
!2113 = !DILocation(line: 74, column: 5, scope: !2080, inlinedAt: !2112)
!2114 = !DILocation(line: 1103, column: 5, scope: !2061, inlinedAt: !2066)
!2115 = !DILocation(line: 1147, column: 1, scope: !2052)
!2116 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !2053, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2117)
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "cond", arg: 1, scope: !2116, file: !6, line: 1149, type: !2055)
!2119 = !DILocalVariable(name: "fast_cond", scope: !2116, file: !6, line: 1150, type: !352)
!2120 = !DILocation(line: 0, scope: !2116)
!2121 = !DILocalVariable(name: "this", arg: 1, scope: !2122, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2122 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !353, file: !6, line: 1078, type: !357, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !2123)
!2123 = !{!2121, !2124, !2125}
!2124 = !DILocalVariable(name: "val", scope: !2122, file: !6, line: 1081, type: !22)
!2125 = !DILocalVariable(name: "control", scope: !2122, file: !6, line: 1087, type: !308)
!2126 = !DILocation(line: 0, scope: !2122, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 1152, column: 16, scope: !2116)
!2128 = !DILocation(line: 1079, column: 28, scope: !2122, inlinedAt: !2127)
!2129 = !DILocation(line: 0, scope: !2069, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 1079, column: 9, scope: !2122, inlinedAt: !2127)
!2131 = !DILocation(line: 71, column: 5, scope: !2069, inlinedAt: !2130)
!2132 = !DILocation(line: 1082, column: 30, scope: !2122, inlinedAt: !2127)
!2133 = !DILocation(line: 1082, column: 9, scope: !2122, inlinedAt: !2127)
!2134 = !DILocation(line: 1083, column: 17, scope: !2135, inlinedAt: !2127)
!2135 = distinct !DILexicalBlock(scope: !2122, file: !6, line: 1083, column: 13)
!2136 = !DILocation(line: 1083, column: 13, scope: !2122, inlinedAt: !2127)
!2137 = !DILocation(line: 0, scope: !2080, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 1084, column: 13, scope: !2139, inlinedAt: !2127)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !6, line: 1083, column: 23)
!2140 = !DILocation(line: 74, column: 5, scope: !2080, inlinedAt: !2138)
!2141 = !DILocation(line: 1085, column: 13, scope: !2139, inlinedAt: !2127)
!2142 = !DILocation(line: 1087, column: 9, scope: !2122, inlinedAt: !2127)
!2143 = !DILocation(line: 1087, column: 32, scope: !2122, inlinedAt: !2127)
!2144 = !DILocation(line: 1087, column: 48, scope: !2122, inlinedAt: !2127)
!2145 = !DILocalVariable(name: "this", arg: 1, scope: !2146, type: !307, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPjPNS2_10fast_mutexE", scope: !308, file: !6, line: 962, type: !329, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !328, retainedNodes: !2147)
!2147 = !{!2145, !2148, !2149}
!2148 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2146, file: !6, line: 962, type: !302)
!2149 = !DILocalVariable(name: "mutex", arg: 3, scope: !2146, file: !6, line: 962, type: !313)
!2150 = !DILocation(line: 0, scope: !2146, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 1087, column: 32, scope: !2122, inlinedAt: !2127)
!2152 = !DILocation(line: 0, scope: !1876, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 962, column: 19, scope: !2146, inlinedAt: !2151)
!2154 = !DILocation(line: 599, column: 11, scope: !1876, inlinedAt: !2153)
!2155 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !2153)
!2156 = !DILocation(line: 600, column: 11, scope: !1876, inlinedAt: !2153)
!2157 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !2153)
!2158 = !DILocation(line: 963, column: 11, scope: !2146, inlinedAt: !2151)
!2159 = !DILocation(line: 963, column: 35, scope: !2146, inlinedAt: !2151)
!2160 = !{!1711, !404, i64 20}
!2161 = !DILocation(line: 964, column: 16, scope: !2162, inlinedAt: !2151)
!2162 = distinct !DILexicalBlock(scope: !2146, file: !6, line: 963, column: 48)
!2163 = !DILocation(line: 1088, column: 20, scope: !2122, inlinedAt: !2127)
!2164 = !DILocation(line: 1088, column: 37, scope: !2122, inlinedAt: !2127)
!2165 = !DILocation(line: 1088, column: 9, scope: !2122, inlinedAt: !2127)
!2166 = !DILocation(line: 0, scope: !2080, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1089, column: 9, scope: !2122, inlinedAt: !2127)
!2168 = !DILocation(line: 74, column: 5, scope: !2080, inlinedAt: !2167)
!2169 = !DILocation(line: 1090, column: 5, scope: !2122, inlinedAt: !2127)
!2170 = !DILocation(line: 1153, column: 1, scope: !2116)
!2171 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !2172, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2055, !369}
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "cond", arg: 1, scope: !2171, file: !6, line: 1155, type: !2055)
!2176 = !DILocalVariable(name: "mutex", arg: 2, scope: !2171, file: !6, line: 1155, type: !369)
!2177 = !DILocalVariable(name: "fast_cond", scope: !2171, file: !6, line: 1156, type: !352)
!2178 = !DILocalVariable(name: "fast_mutex", scope: !2171, file: !6, line: 1158, type: !313)
!2179 = !DILocation(line: 0, scope: !2171)
!2180 = !DILocalVariable(name: "this", arg: 1, scope: !2181, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2181 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !353, file: !6, line: 1105, type: !363, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !362, retainedNodes: !2182)
!2182 = !{!2180, !2183, !2184, !2185, !2186}
!2183 = !DILocalVariable(name: "mutex", arg: 2, scope: !2181, file: !6, line: 1105, type: !313)
!2184 = !DILocalVariable(name: "control", scope: !2181, file: !6, line: 1106, type: !343)
!2185 = !DILocalVariable(name: "result", scope: !2181, file: !6, line: 1107, type: !22)
!2186 = !DILocalVariable(name: "val", scope: !2187, file: !6, line: 1114, type: !22)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !6, line: 1110, column: 16)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !6, line: 1108, column: 13)
!2189 = !DILocation(line: 0, scope: !2181, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 1160, column: 16, scope: !2171)
!2191 = !DILocation(line: 1106, column: 9, scope: !2181, inlinedAt: !2190)
!2192 = !DILocation(line: 1106, column: 30, scope: !2181, inlinedAt: !2190)
!2193 = !DILocation(line: 1106, column: 39, scope: !2181, inlinedAt: !2190)
!2194 = !DILocalVariable(name: "this", arg: 1, scope: !2195, type: !342, flags: DIFlagArtificial | DIFlagObjectPointer)
!2195 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPjPNS2_10fast_mutexE", scope: !343, file: !6, line: 1030, type: !349, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !348, retainedNodes: !2196)
!2196 = !{!2194, !2197, !2198}
!2197 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2195, file: !6, line: 1030, type: !302)
!2198 = !DILocalVariable(name: "mutex", arg: 3, scope: !2195, file: !6, line: 1030, type: !313)
!2199 = !DILocation(line: 0, scope: !2195, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 1106, column: 30, scope: !2181, inlinedAt: !2190)
!2201 = !DILocation(line: 0, scope: !1876, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 1030, column: 19, scope: !2195, inlinedAt: !2200)
!2203 = !DILocation(line: 599, column: 11, scope: !1876, inlinedAt: !2202)
!2204 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !2202)
!2205 = !DILocation(line: 600, column: 11, scope: !1876, inlinedAt: !2202)
!2206 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !2202)
!2207 = !DILocation(line: 1031, column: 11, scope: !2195, inlinedAt: !2200)
!2208 = !DILocation(line: 1031, column: 35, scope: !2195, inlinedAt: !2200)
!2209 = !DILocation(line: 1032, column: 18, scope: !2210, inlinedAt: !2200)
!2210 = distinct !DILexicalBlock(scope: !2195, file: !6, line: 1031, column: 48)
!2211 = !DILocation(line: 1033, column: 22, scope: !2210, inlinedAt: !2200)
!2212 = !DILocation(line: 1034, column: 16, scope: !2210, inlinedAt: !2200)
!2213 = !DILocation(line: 1107, column: 33, scope: !2181, inlinedAt: !2190)
!2214 = !DILocation(line: 1107, column: 50, scope: !2181, inlinedAt: !2190)
!2215 = !DILocation(line: 1107, column: 28, scope: !2181, inlinedAt: !2190)
!2216 = !DILocation(line: 1108, column: 23, scope: !2188, inlinedAt: !2190)
!2217 = !DILocation(line: 1108, column: 20, scope: !2188, inlinedAt: !2190)
!2218 = !DILocation(line: 1108, column: 13, scope: !2181, inlinedAt: !2190)
!2219 = !DILocation(line: 0, scope: !1920, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 1109, column: 20, scope: !2221, inlinedAt: !2190)
!2221 = distinct !DILexicalBlock(scope: !2188, file: !6, line: 1108, column: 41)
!2222 = !DILocation(line: 924, column: 47, scope: !1927, inlinedAt: !2220)
!2223 = !DILocation(line: 0, scope: !499, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 924, column: 14, scope: !1927, inlinedAt: !2220)
!2225 = !DILocation(line: 0, scope: !510, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !2224)
!2227 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !2226)
!2228 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !2226)
!2229 = !DILocation(line: 924, column: 13, scope: !1920, inlinedAt: !2220)
!2230 = !DILocation(line: 0, scope: !1936, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 925, column: 13, scope: !1951, inlinedAt: !2220)
!2232 = !DILocation(line: 866, column: 9, scope: !1936, inlinedAt: !2231)
!2233 = !DILocation(line: 868, column: 9, scope: !1936, inlinedAt: !2231)
!2234 = !DILocation(line: 869, column: 17, scope: !1943, inlinedAt: !2231)
!2235 = !DILocation(line: 869, column: 28, scope: !1942, inlinedAt: !2231)
!2236 = !DILocation(line: 869, column: 18, scope: !1942, inlinedAt: !2231)
!2237 = !DILocation(line: 870, column: 46, scope: !1941, inlinedAt: !2231)
!2238 = !DILocation(line: 0, scope: !1941, inlinedAt: !2231)
!2239 = !DILocation(line: 0, scope: !499, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 871, column: 21, scope: !1961, inlinedAt: !2231)
!2241 = !DILocation(line: 0, scope: !510, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 127, column: 12, scope: !499, inlinedAt: !2240)
!2243 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !2242)
!2244 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !2242)
!2245 = !DILocation(line: 0, scope: !529, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 880, column: 25, scope: !1968, inlinedAt: !2231)
!2247 = !DILocation(line: 238, column: 24, scope: !538, inlinedAt: !2246)
!2248 = !DILocation(line: 238, column: 13, scope: !529, inlinedAt: !2246)
!2249 = !DILocation(line: 241, column: 27, scope: !529, inlinedAt: !2246)
!2250 = !DILocation(line: 880, column: 17, scope: !1943, inlinedAt: !2231)
!2251 = !DILocation(line: 239, column: 23, scope: !537, inlinedAt: !2246)
!2252 = !DILocation(line: 881, column: 17, scope: !1975, inlinedAt: !2231)
!2253 = !DILocation(line: 882, column: 17, scope: !1975, inlinedAt: !2231)
!2254 = !DILocation(line: 883, column: 17, scope: !1975, inlinedAt: !2231)
!2255 = !DILocation(line: 887, column: 27, scope: !1946, inlinedAt: !2231)
!2256 = !DILocation(line: 887, column: 41, scope: !1946, inlinedAt: !2231)
!2257 = !DILocation(line: 887, column: 17, scope: !1943, inlinedAt: !2231)
!2258 = !DILocation(line: 888, column: 46, scope: !1945, inlinedAt: !2231)
!2259 = !DILocation(line: 0, scope: !1945, inlinedAt: !2231)
!2260 = !DILocation(line: 0, scope: !1755, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 889, column: 22, scope: !1985, inlinedAt: !2231)
!2262 = !DILocation(line: 0, scope: !510, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 123, column: 12, scope: !1755, inlinedAt: !2261)
!2264 = !DILocation(line: 104, column: 16, scope: !510, inlinedAt: !2263)
!2265 = !DILocation(line: 106, column: 19, scope: !510, inlinedAt: !2263)
!2266 = !DILocation(line: 895, column: 13, scope: !1943, inlinedAt: !2231)
!2267 = !DILocation(line: 895, column: 35, scope: !1943, inlinedAt: !2231)
!2268 = !DILocation(line: 0, scope: !1870, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 895, column: 35, scope: !1943, inlinedAt: !2231)
!2270 = !DILocation(line: 0, scope: !1876, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 832, column: 19, scope: !1870, inlinedAt: !2269)
!2272 = !DILocation(line: 599, column: 47, scope: !1876, inlinedAt: !2271)
!2273 = !DILocation(line: 600, column: 43, scope: !1876, inlinedAt: !2271)
!2274 = !DILocation(line: 833, column: 11, scope: !1870, inlinedAt: !2269)
!2275 = !DILocation(line: 834, column: 18, scope: !1887, inlinedAt: !2269)
!2276 = !DILocation(line: 835, column: 16, scope: !1887, inlinedAt: !2269)
!2277 = !DILocation(line: 896, column: 32, scope: !1943, inlinedAt: !2231)
!2278 = !DILocation(line: 0, scope: !1943, inlinedAt: !2231)
!2279 = !DILocation(line: 897, column: 24, scope: !2004, inlinedAt: !2231)
!2280 = !DILocation(line: 897, column: 17, scope: !1943, inlinedAt: !2231)
!2281 = !DILocation(line: 902, column: 13, scope: !1943, inlinedAt: !2231)
!2282 = !DILocation(line: 903, column: 9, scope: !1936, inlinedAt: !2231)
!2283 = distinct !{!2283, !2233, !2282}
!2284 = !DILocation(line: 1111, column: 30, scope: !2187, inlinedAt: !2190)
!2285 = !DILocation(line: 0, scope: !824, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1111, column: 13, scope: !2187, inlinedAt: !2190)
!2287 = !DILocation(line: 57, column: 5, scope: !824, inlinedAt: !2286)
!2288 = !DILocation(line: 1115, column: 33, scope: !2187, inlinedAt: !2190)
!2289 = !DILocation(line: 1115, column: 13, scope: !2187, inlinedAt: !2190)
!2290 = !DILocation(line: 0, scope: !2187, inlinedAt: !2190)
!2291 = !DILocation(line: 1116, column: 13, scope: !2292, inlinedAt: !2190)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !6, line: 1116, column: 13)
!2293 = distinct !DILexicalBlock(scope: !2187, file: !6, line: 1116, column: 13)
!2294 = !DILocation(line: 1116, column: 13, scope: !2293, inlinedAt: !2190)
!2295 = !DILocation(line: 1116, column: 13, scope: !2296, inlinedAt: !2190)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !6, line: 1116, column: 13)
!2297 = !DILocation(line: 0, scope: !843, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 1118, column: 13, scope: !2187, inlinedAt: !2190)
!2299 = !DILocation(line: 61, column: 5, scope: !843, inlinedAt: !2298)
!2300 = !DILocation(line: 1120, column: 5, scope: !2181, inlinedAt: !2190)
!2301 = !DILocation(line: 1161, column: 1, scope: !2171)
!2302 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2303, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!365, !29}
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "sz", arg: 1, scope: !2302, file: !6, line: 1168, type: !29)
!2307 = !DILocalVariable(name: "array", scope: !2302, file: !6, line: 1171, type: !365)
!2308 = !DILocation(line: 0, scope: !2302)
!2309 = !DILocation(line: 1171, column: 55, scope: !2302)
!2310 = !DILocation(line: 1171, column: 33, scope: !2302)
!2311 = !DILocation(line: 1173, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2302, file: !6, line: 1173, column: 9)
!2313 = !DILocation(line: 1173, column: 9, scope: !2302)
!2314 = !DILocation(line: 1178, column: 21, scope: !2302)
!2315 = !DILocation(line: 1177, column: 36, scope: !2302)
!2316 = !DILocation(line: 1177, column: 18, scope: !2302)
!2317 = !{!2318, !404, i64 0}
!2318 = !{!"_ZTS18halide_mutex_array", !404, i64 0}
!2319 = !DILocation(line: 1179, column: 22, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2302, file: !6, line: 1179, column: 9)
!2321 = !DILocation(line: 1179, column: 9, scope: !2302)
!2322 = !DILocation(line: 1180, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !6, line: 1179, column: 34)
!2324 = !DILocation(line: 1182, column: 9, scope: !2323)
!2325 = !DILocation(line: 1184, column: 5, scope: !2302)
!2326 = !DILocation(line: 1185, column: 5, scope: !2302)
!2327 = !DILocation(line: 1186, column: 1, scope: !2302)
!2328 = !DISubprogram(name: "halide_malloc", scope: !18, file: !18, line: 354, type: !2329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!43, !43, !25}
!2331 = !DISubprogram(name: "halide_free", scope: !18, file: !18, line: 355, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !43, !43}
!2334 = !DISubprogram(name: "memset", scope: !23, file: !23, line: 96, type: !2335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!43, !43, !29, !25}
!2337 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2332, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2338)
!2338 = !{!2339, !2340, !2341}
!2339 = !DILocalVariable(name: "user_context", arg: 1, scope: !2337, file: !6, line: 1188, type: !43)
!2340 = !DILocalVariable(name: "array", arg: 2, scope: !2337, file: !6, line: 1188, type: !43)
!2341 = !DILocalVariable(name: "arr_ptr", scope: !2337, file: !6, line: 1189, type: !365)
!2342 = !DILocation(line: 0, scope: !2337)
!2343 = !DILocation(line: 1190, column: 40, scope: !2337)
!2344 = !DILocation(line: 1190, column: 5, scope: !2337)
!2345 = !DILocation(line: 1191, column: 5, scope: !2337)
!2346 = !DILocation(line: 1192, column: 1, scope: !2337)
!2347 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2348, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!29, !365, !29}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "array", arg: 1, scope: !2347, file: !6, line: 1194, type: !365)
!2352 = !DILocalVariable(name: "entry", arg: 2, scope: !2347, file: !6, line: 1194, type: !29)
!2353 = !DILocation(line: 0, scope: !2347)
!2354 = !DILocation(line: 1195, column: 31, scope: !2347)
!2355 = !DILocation(line: 1195, column: 24, scope: !2347)
!2356 = !DILocation(line: 1195, column: 5, scope: !2347)
!2357 = !DILocation(line: 1196, column: 5, scope: !2347)
!2358 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2348, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2359)
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "array", arg: 1, scope: !2358, file: !6, line: 1199, type: !365)
!2361 = !DILocalVariable(name: "entry", arg: 2, scope: !2358, file: !6, line: 1199, type: !29)
!2362 = !DILocation(line: 0, scope: !2358)
!2363 = !DILocation(line: 1200, column: 33, scope: !2358)
!2364 = !DILocation(line: 1200, column: 26, scope: !2358)
!2365 = !DILocation(line: 1200, column: 5, scope: !2358)
!2366 = !DILocation(line: 1201, column: 5, scope: !2358)
!2367 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !3, file: !13, line: 69, type: !2368, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!29, !29}
!2370 = !{!2371}
!2371 = !DILocalVariable(name: "threads", arg: 1, scope: !2367, file: !13, line: 69, type: !29)
!2372 = !DILocation(line: 0, scope: !2367)
!2373 = !DILocation(line: 70, column: 17, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !13, line: 70, column: 9)
!2375 = !DILocation(line: 70, column: 9, scope: !2367)
!2376 = !DILocation(line: 72, column: 16, scope: !2374)
!2377 = !DILocation(line: 75, column: 5, scope: !2367)
!2378 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !3, file: !13, line: 78, type: !2379, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!29}
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "desired_num_threads", scope: !2378, file: !13, line: 79, type: !29)
!2383 = !DILocalVariable(name: "threads_str", scope: !2378, file: !13, line: 80, type: !374)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 80, column: 25, scope: !2378)
!2386 = !DILocation(line: 81, column: 10, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2378, file: !13, line: 81, column: 9)
!2388 = !DILocation(line: 81, column: 9, scope: !2378)
!2389 = !DILocation(line: 83, column: 23, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !13, line: 81, column: 23)
!2391 = !DILocation(line: 85, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2378, file: !13, line: 85, column: 9)
!2393 = !DILocation(line: 85, column: 9, scope: !2378)
!2394 = !DILocation(line: 86, column: 31, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !13, line: 85, column: 22)
!2396 = !DILocation(line: 87, column: 5, scope: !2395)
!2397 = !DILocation(line: 88, column: 31, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !13, line: 87, column: 12)
!2399 = !DILocation(line: 0, scope: !2392)
!2400 = !DILocation(line: 90, column: 5, scope: !2378)
!2401 = !DISubprogram(name: "getenv", scope: !23, file: !23, line: 85, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!374, !49}
!2404 = !DISubprogram(name: "atoi", scope: !23, file: !23, line: 89, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!29, !49}
!2407 = !DISubprogram(name: "halide_host_cpu_count", scope: !23, file: !23, line: 159, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2408 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !3, file: !13, line: 197, type: !2409, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !32}
!2411 = !{!2412, !2413, !2414, !2416, !2418, !2420, !2422, !2423, !2424, !2425, !2426, !2427, !2430, !2431, !2433, !2434}
!2412 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2408, file: !13, line: 197, type: !32)
!2413 = !DILocalVariable(name: "spin_count", scope: !2408, file: !13, line: 198, type: !29)
!2414 = !DILocalVariable(name: "max_spin_count", scope: !2408, file: !13, line: 199, type: !2415)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2416 = !DILocalVariable(name: "job", scope: !2417, file: !13, line: 202, type: !32)
!2417 = distinct !DILexicalBlock(scope: !2408, file: !13, line: 201, column: 69)
!2418 = !DILocalVariable(name: "prev_ptr", scope: !2417, file: !13, line: 203, type: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!2420 = !DILocalVariable(name: "enough_threads", scope: !2421, file: !13, line: 235, type: !64)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 229, column: 21)
!2422 = !DILocalVariable(name: "parent_job", scope: !2421, file: !13, line: 237, type: !32)
!2423 = !DILocalVariable(name: "threads_available", scope: !2421, file: !13, line: 239, type: !29)
!2424 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2421, file: !13, line: 256, type: !64)
!2425 = !DILocalVariable(name: "can_add_worker", scope: !2421, file: !13, line: 260, type: !64)
!2426 = !DILocalVariable(name: "result", scope: !2417, file: !13, line: 328, type: !29)
!2427 = !DILocalVariable(name: "total_iters", scope: !2428, file: !13, line: 336, type: !29)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !13, line: 330, column: 31)
!2429 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 330, column: 13)
!2430 = !DILocalVariable(name: "iters", scope: !2428, file: !13, line: 337, type: !29)
!2431 = !DILocalVariable(name: "myjob", scope: !2432, file: !13, line: 369, type: !33)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !13, line: 367, column: 16)
!2433 = !DILocalVariable(name: "wake_owners", scope: !2417, file: !13, line: 396, type: !64)
!2434 = !DILocalVariable(name: "i", scope: !2435, file: !13, line: 402, type: !29)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !13, line: 402, column: 13)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !13, line: 399, column: 26)
!2437 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 399, column: 13)
!2438 = !DILocation(line: 0, scope: !2408)
!2439 = !DILocation(line: 63, column: 31, scope: !2440, inlinedAt: !2444)
!2440 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2441)
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "this", arg: 1, scope: !2440, type: !2443, flags: DIFlagArtificial | DIFlagObjectPointer)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!2444 = distinct !DILocation(line: 201, column: 35, scope: !2408)
!2445 = !DILocation(line: 201, column: 5, scope: !2408)
!2446 = !DILocation(line: 198, column: 9, scope: !2408)
!2447 = !DILocation(line: 201, column: 12, scope: !2408)
!2448 = !DILocation(line: 0, scope: !2440, inlinedAt: !2444)
!2449 = !DILocation(line: 63, column: 21, scope: !2440, inlinedAt: !2444)
!2450 = !{!2451, !491, i64 24}
!2451 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2452, i64 0, !404, i64 36, !404, i64 40, !404, i64 44, !491, i64 48, !404, i64 52, !491, i64 56, !404, i64 60, !491, i64 64, !491, i64 68, !491, i64 72, !561, i64 76}
!2452 = !{!"_ZTS22halide_parallel_task_t", !404, i64 0, !404, i64 4, !404, i64 8, !404, i64 12, !491, i64 16, !491, i64 20, !491, i64 24, !491, i64 28, !561, i64 32}
!2453 = !DILocation(line: 63, column: 16, scope: !2440, inlinedAt: !2444)
!2454 = !DILocation(line: 63, column: 28, scope: !2440, inlinedAt: !2444)
!2455 = !DILocation(line: 201, column: 59, scope: !2408)
!2456 = !{!2457, !561, i64 1072}
!2457 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2458, i64 0, !491, i64 4, !491, i64 8, !404, i64 12, !491, i64 16, !491, i64 20, !491, i64 24, !2459, i64 28, !2459, i64 32, !2459, i64 36, !491, i64 40, !491, i64 44, !405, i64 48, !561, i64 1072, !561, i64 1073, !491, i64 1076}
!2458 = !{!"_ZTS12halide_mutex", !405, i64 0}
!2459 = !{!"_ZTS11halide_cond", !405, i64 0}
!2460 = !{!2451, !491, i64 64}
!2461 = !DILocation(line: 202, column: 32, scope: !2417)
!2462 = !{!2457, !404, i64 12}
!2463 = !DILocation(line: 0, scope: !2417)
!2464 = !DILocation(line: 206, column: 28, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !13, line: 206, column: 17)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !13, line: 205, column: 24)
!2467 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 205, column: 13)
!2468 = !{!2451, !491, i64 68}
!2469 = !DILocation(line: 206, column: 40, scope: !2465)
!2470 = !DILocation(line: 206, column: 17, scope: !2466)
!2471 = !DILocation(line: 207, column: 32, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !13, line: 207, column: 21)
!2473 = distinct !DILexicalBlock(scope: !2465, file: !13, line: 206, column: 46)
!2474 = !DILocation(line: 207, column: 47, scope: !2472)
!2475 = !DILocation(line: 207, column: 21, scope: !2473)
!2476 = !DILocation(line: 208, column: 32, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !13, line: 207, column: 53)
!2478 = !DILocation(line: 208, column: 21, scope: !2477)
!2479 = !DILocation(line: 209, column: 42, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !13, line: 208, column: 46)
!2481 = !DILocation(line: 210, column: 36, scope: !2480)
!2482 = !{!2451, !404, i64 40}
!2483 = distinct !{!2483, !2478, !2484, !618}
!2484 = !DILocation(line: 211, column: 21, scope: !2477)
!2485 = !DILocation(line: 212, column: 38, scope: !2477)
!2486 = !DILocation(line: 212, column: 31, scope: !2477)
!2487 = !DILocation(line: 213, column: 38, scope: !2477)
!2488 = !DILocation(line: 214, column: 21, scope: !2477)
!2489 = !DILocation(line: 216, column: 35, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2465, file: !13, line: 216, column: 24)
!2491 = !{!2451, !404, i64 52}
!2492 = !DILocation(line: 216, column: 24, scope: !2490)
!2493 = !DILocation(line: 216, column: 46, scope: !2490)
!2494 = !DILocation(line: 216, column: 72, scope: !2490)
!2495 = !DILocation(line: 216, column: 84, scope: !2490)
!2496 = !DILocation(line: 216, column: 24, scope: !2465)
!2497 = !DILocation(line: 217, column: 40, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !13, line: 216, column: 90)
!2499 = !DILocation(line: 221, column: 17, scope: !2498)
!2500 = !DILocation(line: 222, column: 17, scope: !2498)
!2501 = !DILocation(line: 229, column: 16, scope: !2417)
!2502 = !DILocation(line: 229, column: 9, scope: !2417)
!2503 = !DILocation(line: 240, column: 17, scope: !2421)
!2504 = !DILocation(line: 237, column: 37, scope: !2421)
!2505 = !DILocation(line: 0, scope: !2421)
!2506 = !DILocation(line: 240, column: 28, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2421, file: !13, line: 240, column: 17)
!2508 = !DILocation(line: 244, column: 33, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !13, line: 244, column: 21)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !13, line: 243, column: 20)
!2511 = !DILocation(line: 244, column: 48, scope: !2509)
!2512 = !DILocation(line: 0, scope: !2509)
!2513 = !{!2451, !491, i64 28}
!2514 = !DILocation(line: 244, column: 21, scope: !2510)
!2515 = !DILocation(line: 247, column: 68, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !13, line: 246, column: 24)
!2517 = !DILocation(line: 247, column: 113, scope: !2516)
!2518 = !DILocation(line: 245, column: 84, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2509, file: !13, line: 244, column: 54)
!2520 = !DILocation(line: 246, column: 17, scope: !2519)
!2521 = !DILocation(line: 242, column: 49, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2507, file: !13, line: 240, column: 40)
!2523 = !{!2457, !491, i64 16}
!2524 = !DILocation(line: 242, column: 65, scope: !2522)
!2525 = !DILocation(line: 243, column: 13, scope: !2522)
!2526 = !DILocation(line: 0, scope: !2507)
!2527 = !DILocation(line: 250, column: 61, scope: !2421)
!2528 = !DILocation(line: 250, column: 48, scope: !2421)
!2529 = !DILocation(line: 260, column: 47, scope: !2421)
!2530 = !{!2451, !561, i64 32}
!2531 = !DILocation(line: 260, column: 54, scope: !2421)
!2532 = !DILocation(line: 260, column: 63, scope: !2421)
!2533 = !DILocation(line: 260, column: 78, scope: !2421)
!2534 = !DILocation(line: 265, column: 32, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2421, file: !13, line: 265, column: 17)
!2536 = !DILocalVariable(name: "this", arg: 1, scope: !2537, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2537 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2538)
!2538 = !{!2536}
!2539 = !DILocation(line: 0, scope: !2537, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 266, column: 26, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !13, line: 266, column: 21)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !13, line: 265, column: 80)
!2543 = !DILocation(line: 47, column: 16, scope: !2544, inlinedAt: !2540)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !13, line: 47, column: 9)
!2545 = distinct !DILexicalBlock(scope: !2537, file: !13, line: 47, column: 9)
!2546 = !{!2451, !491, i64 72}
!2547 = !DILocation(line: 47, column: 38, scope: !2544, inlinedAt: !2540)
!2548 = !{!2451, !491, i64 16}
!2549 = !DILocation(line: 47, column: 31, scope: !2544, inlinedAt: !2540)
!2550 = !DILocation(line: 47, column: 9, scope: !2545, inlinedAt: !2540)
!2551 = !DILocation(line: 48, column: 60, scope: !2552, inlinedAt: !2540)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !13, line: 48, column: 17)
!2553 = distinct !DILexicalBlock(scope: !2544, file: !13, line: 47, column: 72)
!2554 = !{!2451, !404, i64 12}
!2555 = !DILocation(line: 48, column: 87, scope: !2552, inlinedAt: !2540)
!2556 = !{!2557, !404, i64 0}
!2557 = !{!"_ZTS26halide_semaphore_acquire_t", !404, i64 0, !491, i64 4}
!2558 = !DILocation(line: 49, column: 87, scope: !2552, inlinedAt: !2540)
!2559 = !{!2557, !491, i64 4}
!2560 = !DILocation(line: 48, column: 18, scope: !2552, inlinedAt: !2540)
!2561 = !DILocation(line: 48, column: 17, scope: !2553, inlinedAt: !2540)
!2562 = !DILocation(line: 47, column: 68, scope: !2544, inlinedAt: !2540)
!2563 = distinct !{!2563, !2550, !2564, !618}
!2564 = !DILocation(line: 56, column: 9, scope: !2545, inlinedAt: !2540)
!2565 = !DILocation(line: 272, column: 31, scope: !2421)
!2566 = !DILocation(line: 273, column: 24, scope: !2421)
!2567 = !DILocation(line: 256, column: 66, scope: !2421)
!2568 = !{!2451, !404, i64 44}
!2569 = !DILocation(line: 256, column: 89, scope: !2421)
!2570 = !DILocation(line: 256, column: 75, scope: !2421)
!2571 = !DILocation(line: 278, column: 17, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !13, line: 276, column: 19)
!2573 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 276, column: 13)
!2574 = !DILocation(line: 279, column: 31, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !13, line: 279, column: 21)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !13, line: 278, column: 28)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !13, line: 278, column: 17)
!2578 = !DILocation(line: 279, column: 34, scope: !2575)
!2579 = !DILocation(line: 279, column: 21, scope: !2576)
!2580 = !DILocation(line: 281, column: 21, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !13, line: 279, column: 52)
!2582 = !DILocation(line: 282, column: 21, scope: !2581)
!2583 = !DILocation(line: 283, column: 21, scope: !2581)
!2584 = !DILocation(line: 284, column: 17, scope: !2581)
!2585 = !DILocation(line: 285, column: 47, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2575, file: !13, line: 284, column: 24)
!2587 = !{!2457, !491, i64 44}
!2588 = !DILocation(line: 286, column: 50, scope: !2586)
!2589 = !{!2451, !561, i64 76}
!2590 = !DILocation(line: 287, column: 21, scope: !2586)
!2591 = !DILocation(line: 288, column: 50, scope: !2586)
!2592 = !DILocation(line: 289, column: 47, scope: !2586)
!2593 = !DILocation(line: 292, column: 44, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2577, file: !13, line: 291, column: 20)
!2595 = !{!2457, !491, i64 40}
!2596 = !DILocation(line: 293, column: 32, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !13, line: 293, column: 21)
!2598 = !{!2457, !491, i64 20}
!2599 = !DILocation(line: 293, column: 57, scope: !2597)
!2600 = !{!2457, !491, i64 24}
!2601 = !DILocation(line: 293, column: 44, scope: !2597)
!2602 = !DILocation(line: 293, column: 21, scope: !2594)
!2603 = !DILocation(line: 295, column: 43, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !13, line: 293, column: 77)
!2605 = !DILocation(line: 296, column: 21, scope: !2604)
!2606 = !DILocation(line: 297, column: 43, scope: !2604)
!2607 = !DILocation(line: 298, column: 17, scope: !2604)
!2608 = !DILocation(line: 298, column: 38, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2597, file: !13, line: 298, column: 28)
!2610 = !DILocation(line: 298, column: 41, scope: !2609)
!2611 = !DILocation(line: 298, column: 28, scope: !2597)
!2612 = !DILocation(line: 300, column: 21, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !13, line: 298, column: 59)
!2614 = !DILocation(line: 301, column: 21, scope: !2613)
!2615 = !DILocation(line: 302, column: 21, scope: !2613)
!2616 = !DILocation(line: 303, column: 17, scope: !2613)
!2617 = !DILocation(line: 304, column: 21, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2609, file: !13, line: 303, column: 24)
!2619 = !DILocation(line: 306, column: 44, scope: !2594)
!2620 = !DILocation(line: 58, column: 24, scope: !2537, inlinedAt: !2540)
!2621 = !DILocation(line: 318, column: 14, scope: !2417)
!2622 = !DILocation(line: 318, column: 28, scope: !2417)
!2623 = !DILocation(line: 320, column: 18, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 320, column: 13)
!2625 = !DILocation(line: 320, column: 29, scope: !2624)
!2626 = !DILocation(line: 0, scope: !2624)
!2627 = !DILocation(line: 320, column: 13, scope: !2417)
!2628 = !DILocation(line: 330, column: 23, scope: !2429)
!2629 = !DILocation(line: 330, column: 13, scope: !2417)
!2630 = !DILocation(line: 332, column: 30, scope: !2428)
!2631 = !DILocation(line: 332, column: 23, scope: !2428)
!2632 = !DILocation(line: 335, column: 13, scope: !2428)
!2633 = !DILocation(line: 0, scope: !2428)
!2634 = !DILocation(line: 338, column: 13, scope: !2428)
!2635 = !DILocation(line: 340, column: 35, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2428, file: !13, line: 338, column: 33)
!2637 = !DILocation(line: 340, column: 42, scope: !2636)
!2638 = !DILocation(line: 340, column: 57, scope: !2636)
!2639 = !DILocation(line: 340, column: 65, scope: !2636)
!2640 = !DILocation(line: 47, column: 16, scope: !2544, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 341, column: 29, scope: !2636)
!2642 = !DILocation(line: 47, column: 38, scope: !2544, inlinedAt: !2641)
!2643 = !DILocation(line: 340, column: 17, scope: !2636)
!2644 = !DILocation(line: 0, scope: !2537, inlinedAt: !2641)
!2645 = !DILocation(line: 47, column: 31, scope: !2544, inlinedAt: !2641)
!2646 = !DILocation(line: 47, column: 9, scope: !2545, inlinedAt: !2641)
!2647 = !DILocation(line: 48, column: 60, scope: !2552, inlinedAt: !2641)
!2648 = !DILocation(line: 48, column: 87, scope: !2552, inlinedAt: !2641)
!2649 = !DILocation(line: 49, column: 87, scope: !2552, inlinedAt: !2641)
!2650 = !DILocation(line: 48, column: 18, scope: !2552, inlinedAt: !2641)
!2651 = !DILocation(line: 48, column: 17, scope: !2553, inlinedAt: !2641)
!2652 = !DILocation(line: 47, column: 68, scope: !2544, inlinedAt: !2641)
!2653 = distinct !{!2653, !2646, !2654, !618}
!2654 = !DILocation(line: 56, column: 9, scope: !2545, inlinedAt: !2641)
!2655 = !DILocation(line: 58, column: 24, scope: !2537, inlinedAt: !2641)
!2656 = !DILocation(line: 342, column: 26, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2636, file: !13, line: 341, column: 46)
!2658 = distinct !{!2658, !2643, !2659, !618}
!2659 = !DILocation(line: 343, column: 17, scope: !2636)
!2660 = !DILocation(line: 344, column: 27, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2636, file: !13, line: 344, column: 21)
!2662 = !DILocation(line: 344, column: 21, scope: !2636)
!2663 = !DILocation(line: 349, column: 51, scope: !2636)
!2664 = !{!2451, !404, i64 60}
!2665 = !DILocation(line: 349, column: 75, scope: !2636)
!2666 = !{!2451, !404, i64 0}
!2667 = !DILocation(line: 350, column: 56, scope: !2636)
!2668 = !{!2451, !491, i64 20}
!2669 = !DILocation(line: 350, column: 60, scope: !2636)
!2670 = !DILocation(line: 351, column: 56, scope: !2636)
!2671 = !{!2451, !404, i64 4}
!2672 = !DILocation(line: 349, column: 26, scope: !2636)
!2673 = !DILocation(line: 352, column: 29, scope: !2636)
!2674 = !DILocation(line: 338, column: 27, scope: !2428)
!2675 = distinct !{!2675, !2634, !2676, !618}
!2676 = !DILocation(line: 354, column: 13, scope: !2428)
!2677 = !DILocation(line: 355, column: 13, scope: !2428)
!2678 = !DILocation(line: 357, column: 27, scope: !2428)
!2679 = !DILocation(line: 358, column: 30, scope: !2428)
!2680 = !DILocation(line: 361, column: 17, scope: !2428)
!2681 = !DILocation(line: 362, column: 34, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !13, line: 361, column: 30)
!2683 = distinct !DILexicalBlock(scope: !2428, file: !13, line: 361, column: 17)
!2684 = !DILocation(line: 399, column: 13, scope: !2417)
!2685 = !DILocation(line: 363, column: 41, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !13, line: 363, column: 24)
!2687 = !DILocation(line: 363, column: 24, scope: !2683)
!2688 = !DILocation(line: 364, column: 44, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2686, file: !13, line: 363, column: 46)
!2690 = !DILocation(line: 364, column: 31, scope: !2689)
!2691 = !DILocation(line: 365, column: 33, scope: !2689)
!2692 = !DILocation(line: 366, column: 13, scope: !2689)
!2693 = !DILocation(line: 369, column: 26, scope: !2432)
!2694 = !{i64 0, i64 4, !452, i64 4, i64 4, !452, i64 8, i64 4, !452, i64 12, i64 4, !452, i64 16, i64 4, !490, i64 20, i64 4, !490, i64 24, i64 4, !490, i64 28, i64 4, !490, i64 32, i64 1, !2695, i64 36, i64 4, !452, i64 40, i64 4, !452, i64 44, i64 4, !452, i64 48, i64 4, !490, i64 52, i64 4, !452, i64 56, i64 4, !490, i64 60, i64 4, !452, i64 64, i64 4, !490, i64 68, i64 4, !490, i64 72, i64 4, !490, i64 76, i64 1, !2695}
!2695 = !{!561, !561, i64 0}
!2696 = !DILocation(line: 0, scope: !2432)
!2697 = !{i64 0, i64 4, !452, i64 4, i64 4, !452, i64 8, i64 4, !452, i64 12, i64 4, !490, i64 16, i64 4, !490, i64 20, i64 4, !490, i64 24, i64 4, !490, i64 28, i64 1, !2695, i64 32, i64 4, !452, i64 36, i64 4, !452, i64 40, i64 4, !452, i64 44, i64 4, !490, i64 48, i64 4, !452, i64 52, i64 4, !490, i64 56, i64 4, !452, i64 60, i64 4, !490, i64 64, i64 4, !490, i64 68, i64 4, !490, i64 72, i64 1, !2695}
!2698 = !{i64 0, i64 4, !452, i64 4, i64 4, !452, i64 8, i64 4, !452, i64 12, i64 4, !490, i64 16, i64 4, !452, i64 20, i64 4, !490, i64 24, i64 4, !452, i64 28, i64 4, !490, i64 32, i64 4, !490, i64 36, i64 4, !490, i64 40, i64 1, !2695}
!2699 = !{i64 0, i64 4, !452, i64 4, i64 4, !490, i64 8, i64 4, !490, i64 12, i64 4, !490, i64 16, i64 1, !2695}
!2700 = !DILocation(line: 370, column: 26, scope: !2432)
!2701 = !DILocation(line: 371, column: 23, scope: !2432)
!2702 = !DILocation(line: 371, column: 29, scope: !2432)
!2703 = !DILocation(line: 375, column: 34, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2432, file: !13, line: 375, column: 17)
!2705 = !DILocation(line: 375, column: 17, scope: !2432)
!2706 = !DILocation(line: 376, column: 34, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !13, line: 375, column: 40)
!2708 = !DILocation(line: 376, column: 27, scope: !2707)
!2709 = !DILocation(line: 377, column: 13, scope: !2707)
!2710 = !DILocation(line: 380, column: 13, scope: !2432)
!2711 = !DILocation(line: 381, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2432, file: !13, line: 381, column: 17)
!2713 = !DILocation(line: 381, column: 17, scope: !2432)
!2714 = !DILocation(line: 382, column: 26, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !13, line: 381, column: 32)
!2716 = !DILocation(line: 384, column: 13, scope: !2715)
!2717 = !DILocation(line: 387, column: 66, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !13, line: 384, column: 20)
!2719 = !DILocation(line: 385, column: 26, scope: !2718)
!2720 = !DILocation(line: 0, scope: !2712)
!2721 = !DILocation(line: 389, column: 13, scope: !2432)
!2722 = !DILocation(line: 399, column: 20, scope: !2437)
!2723 = !DILocation(line: 400, column: 18, scope: !2436)
!2724 = !DILocation(line: 400, column: 30, scope: !2436)
!2725 = !DILocation(line: 0, scope: !2435)
!2726 = !DILocation(line: 402, column: 38, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2435, file: !13, line: 402, column: 13)
!2728 = !{!2451, !491, i64 48}
!2729 = !DILocation(line: 402, column: 31, scope: !2727)
!2730 = !DILocation(line: 402, column: 13, scope: !2435)
!2731 = !DILocation(line: 410, column: 9, scope: !2436)
!2732 = !DILocation(line: 404, column: 38, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !13, line: 404, column: 21)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !13, line: 402, column: 58)
!2735 = !DILocation(line: 404, column: 50, scope: !2733)
!2736 = !DILocation(line: 404, column: 21, scope: !2734)
!2737 = !DILocation(line: 405, column: 50, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !13, line: 404, column: 56)
!2739 = !DILocation(line: 406, column: 42, scope: !2738)
!2740 = !DILocation(line: 406, column: 57, scope: !2738)
!2741 = !DILocation(line: 406, column: 62, scope: !2738)
!2742 = !DILocation(line: 406, column: 82, scope: !2738)
!2743 = !DILocation(line: 0, scope: !2738)
!2744 = !DILocation(line: 406, column: 36, scope: !2738)
!2745 = !DILocation(line: 406, column: 33, scope: !2738)
!2746 = !DILocation(line: 407, column: 17, scope: !2738)
!2747 = !DILocation(line: 402, column: 54, scope: !2727)
!2748 = distinct !{!2748, !2730, !2749, !618}
!2749 = !DILocation(line: 409, column: 13, scope: !2435)
!2750 = !DILocation(line: 412, column: 18, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 412, column: 13)
!2752 = !DILocation(line: 412, column: 29, scope: !2751)
!2753 = !DILocation(line: 0, scope: !2751)
!2754 = !DILocation(line: 412, column: 13, scope: !2417)
!2755 = !DILocation(line: 421, column: 28, scope: !2417)
!2756 = !DILocation(line: 425, column: 25, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2417, file: !13, line: 425, column: 13)
!2758 = !DILocation(line: 426, column: 34, scope: !2757)
!2759 = !DILocation(line: 426, column: 39, scope: !2757)
!2760 = distinct !{!2760, !2445, !2761, !618}
!2761 = !DILocation(line: 430, column: 5, scope: !2408)
!2762 = !DILocation(line: 426, column: 53, scope: !2757)
!2763 = !DILocation(line: 426, column: 60, scope: !2757)
!2764 = !DILocation(line: 426, column: 65, scope: !2757)
!2765 = !DILocation(line: 426, column: 73, scope: !2757)
!2766 = !DILocation(line: 426, column: 85, scope: !2757)
!2767 = !DILocation(line: 426, column: 91, scope: !2757)
!2768 = !DILocation(line: 426, column: 99, scope: !2757)
!2769 = !DILocation(line: 425, column: 13, scope: !2417)
!2770 = !DILocation(line: 428, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2757, file: !13, line: 426, column: 119)
!2772 = !DILocation(line: 429, column: 9, scope: !2771)
!2773 = !DILocation(line: 431, column: 1, scope: !2408)
!2774 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781}
!2776 = !DILocalVariable(name: "user_context", arg: 1, scope: !2774, file: !13, line: 797, type: !43)
!2777 = !DILocalVariable(name: "f", arg: 2, scope: !2774, file: !13, line: 797, type: !39)
!2778 = !DILocalVariable(name: "min", arg: 3, scope: !2774, file: !13, line: 798, type: !29)
!2779 = !DILocalVariable(name: "size", arg: 4, scope: !2774, file: !13, line: 798, type: !29)
!2780 = !DILocalVariable(name: "closure", arg: 5, scope: !2774, file: !13, line: 798, type: !44)
!2781 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2774, file: !13, line: 798, type: !43)
!2782 = !DILocation(line: 0, scope: !2774)
!2783 = !DILocation(line: 799, column: 12, scope: !2774)
!2784 = !DILocation(line: 799, column: 5, scope: !2774)
!2785 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2786)
!2786 = !{!2787, !2788, !2789, !2790}
!2787 = !DILocalVariable(name: "user_context", arg: 1, scope: !2785, file: !13, line: 787, type: !43)
!2788 = !DILocalVariable(name: "f", arg: 2, scope: !2785, file: !13, line: 787, type: !66)
!2789 = !DILocalVariable(name: "idx", arg: 3, scope: !2785, file: !13, line: 787, type: !29)
!2790 = !DILocalVariable(name: "closure", arg: 4, scope: !2785, file: !13, line: 788, type: !44)
!2791 = !DILocation(line: 0, scope: !2785)
!2792 = !DILocation(line: 789, column: 14, scope: !2785)
!2793 = !DILocation(line: 789, column: 12, scope: !2785)
!2794 = !DILocation(line: 789, column: 5, scope: !2785)
!2795 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2796)
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "arg", arg: 1, scope: !2795, file: !13, line: 433, type: !43)
!2798 = !DILocation(line: 0, scope: !2795)
!2799 = !DILocation(line: 434, column: 5, scope: !2795)
!2800 = !DILocation(line: 435, column: 34, scope: !2795)
!2801 = !DILocation(line: 435, column: 5, scope: !2795)
!2802 = !DILocation(line: 436, column: 5, scope: !2795)
!2803 = !DILocation(line: 437, column: 1, scope: !2795)
!2804 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !3, file: !13, line: 439, type: !2805, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !29, !32, !32}
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2818, !2820}
!2808 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2804, file: !13, line: 439, type: !29)
!2809 = !DILocalVariable(name: "jobs", arg: 2, scope: !2804, file: !13, line: 439, type: !32)
!2810 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2804, file: !13, line: 439, type: !32)
!2811 = !DILocalVariable(name: "min_threads", scope: !2804, file: !13, line: 457, type: !29)
!2812 = !DILocalVariable(name: "workers_to_wake", scope: !2804, file: !13, line: 461, type: !29)
!2813 = !DILocalVariable(name: "stealable_jobs", scope: !2804, file: !13, line: 465, type: !64)
!2814 = !DILocalVariable(name: "job_has_acquires", scope: !2804, file: !13, line: 467, type: !64)
!2815 = !DILocalVariable(name: "job_may_block", scope: !2804, file: !13, line: 468, type: !64)
!2816 = !DILocalVariable(name: "i", scope: !2817, file: !13, line: 469, type: !29)
!2817 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 469, column: 5)
!2818 = !DILocalVariable(name: "i", scope: !2819, file: !13, line: 527, type: !29)
!2819 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 527, column: 5)
!2820 = !DILocalVariable(name: "nested_parallelism", scope: !2804, file: !13, line: 537, type: !64)
!2821 = !DILocation(line: 0, scope: !2804)
!2822 = !DILocation(line: 440, column: 21, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 440, column: 9)
!2824 = !{!2457, !561, i64 1073}
!2825 = !DILocation(line: 440, column: 9, scope: !2804)
!2826 = !DILocalVariable(name: "bytes", scope: !2827, file: !13, line: 148, type: !49)
!2827 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2828)
!2828 = !{!2829, !2826, !2831}
!2829 = !DILocalVariable(name: "this", arg: 1, scope: !2827, type: !2830, flags: DIFlagArtificial | DIFlagObjectPointer)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!2831 = !DILocalVariable(name: "limit", scope: !2827, file: !13, line: 149, type: !49)
!2832 = !DILocation(line: 0, scope: !2827, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 441, column: 20, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2823, file: !13, line: 440, column: 34)
!2835 = !DILocation(line: 150, column: 33, scope: !2827, inlinedAt: !2833)
!2836 = !{!405, !405, i64 0}
!2837 = !DILocation(line: 150, column: 40, scope: !2827, inlinedAt: !2833)
!2838 = !DILocation(line: 150, column: 9, scope: !2827, inlinedAt: !2833)
!2839 = !DILocation(line: 151, column: 18, scope: !2840, inlinedAt: !2833)
!2840 = distinct !DILexicalBlock(scope: !2827, file: !13, line: 150, column: 46)
!2841 = !DILocation(line: 150, column: 22, scope: !2827, inlinedAt: !2833)
!2842 = !DILocation(line: 150, column: 30, scope: !2827, inlinedAt: !2833)
!2843 = distinct !{!2843, !2838, !2844, !618}
!2844 = !DILocation(line: 152, column: 9, scope: !2827, inlinedAt: !2833)
!2845 = !DILocation(line: 153, column: 9, scope: !2846, inlinedAt: !2833)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !13, line: 153, column: 9)
!2847 = distinct !DILexicalBlock(scope: !2827, file: !13, line: 153, column: 9)
!2848 = !DILocation(line: 153, column: 9, scope: !2847, inlinedAt: !2833)
!2849 = !DILocation(line: 153, column: 9, scope: !2850, inlinedAt: !2833)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !13, line: 153, column: 9)
!2851 = !DILocation(line: 446, column: 25, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2834, file: !13, line: 446, column: 13)
!2853 = !{!2457, !491, i64 4}
!2854 = !DILocation(line: 446, column: 14, scope: !2852)
!2855 = !DILocation(line: 446, column: 13, scope: !2834)
!2856 = !DILocation(line: 447, column: 50, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !13, line: 446, column: 50)
!2858 = !DILocation(line: 447, column: 48, scope: !2857)
!2859 = !DILocation(line: 448, column: 9, scope: !2857)
!2860 = !DILocation(line: 449, column: 75, scope: !2834)
!2861 = !DILocation(line: 449, column: 46, scope: !2834)
!2862 = !DILocation(line: 449, column: 44, scope: !2834)
!2863 = !DILocation(line: 450, column: 32, scope: !2834)
!2864 = !DILocation(line: 451, column: 5, scope: !2834)
!2865 = !DILocation(line: 0, scope: !2817)
!2866 = !DILocation(line: 469, column: 23, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2817, file: !13, line: 469, column: 5)
!2868 = !DILocation(line: 469, column: 5, scope: !2817)
!2869 = !DILocation(line: 457, column: 9, scope: !2804)
!2870 = !DILocation(line: 487, column: 21, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 487, column: 9)
!2872 = !DILocation(line: 487, column: 9, scope: !2804)
!2873 = !DILocation(line: 470, column: 26, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !13, line: 470, column: 13)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !13, line: 469, column: 40)
!2876 = !DILocation(line: 470, column: 38, scope: !2874)
!2877 = !DILocation(line: 470, column: 13, scope: !2875)
!2878 = !DILocation(line: 476, column: 26, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !13, line: 476, column: 13)
!2880 = !DILocation(line: 476, column: 41, scope: !2879)
!2881 = !DILocation(line: 476, column: 13, scope: !2875)
!2882 = !DILocation(line: 480, column: 26, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !13, line: 480, column: 13)
!2884 = !DILocation(line: 480, column: 13, scope: !2875)
!2885 = !DILocation(line: 481, column: 28, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !13, line: 480, column: 34)
!2887 = !DILocation(line: 482, column: 9, scope: !2886)
!2888 = !DILocation(line: 483, column: 45, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2883, file: !13, line: 482, column: 16)
!2890 = !DILocation(line: 483, column: 29, scope: !2889)
!2891 = !DILocation(line: 0, scope: !2883)
!2892 = !DILocation(line: 469, column: 36, scope: !2867)
!2893 = distinct !{!2893, !2868, !2894, !618}
!2894 = !DILocation(line: 485, column: 5, scope: !2817)
!2895 = !DILocation(line: 497, column: 30, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !13, line: 497, column: 13)
!2897 = distinct !DILexicalBlock(scope: !2871, file: !13, line: 487, column: 33)
!2898 = !DILocation(line: 503, column: 27, scope: !2897)
!2899 = !DILocation(line: 503, column: 43, scope: !2897)
!2900 = !DILocation(line: 503, column: 57, scope: !2897)
!2901 = !DILocation(line: 504, column: 58, scope: !2897)
!2902 = !DILocation(line: 504, column: 82, scope: !2897)
!2903 = !DILocation(line: 504, column: 45, scope: !2897)
!2904 = !DILocation(line: 504, column: 87, scope: !2897)
!2905 = !DILocation(line: 505, column: 45, scope: !2897)
!2906 = !DILocation(line: 505, column: 63, scope: !2897)
!2907 = !{!2457, !491, i64 1076}
!2908 = !DILocation(line: 505, column: 50, scope: !2897)
!2909 = !DILocation(line: 505, column: 80, scope: !2897)
!2910 = !DILocation(line: 503, column: 9, scope: !2897)
!2911 = !DILocation(line: 508, column: 35, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2897, file: !13, line: 505, column: 96)
!2913 = !DILocation(line: 510, column: 17, scope: !2912)
!2914 = !DILocation(line: 509, column: 58, scope: !2912)
!2915 = !DILocation(line: 509, column: 13, scope: !2912)
!2916 = !DILocation(line: 509, column: 62, scope: !2912)
!2917 = distinct !{!2917, !2910, !2918, !618}
!2918 = !DILocation(line: 511, column: 9, scope: !2897)
!2919 = !DILocation(line: 513, column: 30, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2897, file: !13, line: 513, column: 13)
!2921 = !DILocation(line: 514, column: 40, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2920, file: !13, line: 513, column: 48)
!2923 = !DILocation(line: 515, column: 9, scope: !2922)
!2924 = !DILocation(line: 518, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !13, line: 518, column: 9)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !13, line: 518, column: 9)
!2927 = distinct !DILexicalBlock(scope: !2871, file: !13, line: 516, column: 12)
!2928 = !{!2451, !491, i64 56}
!2929 = !DILocation(line: 518, column: 9, scope: !2926)
!2930 = !DILocation(line: 518, column: 9, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !13, line: 518, column: 9)
!2932 = !DILocation(line: 521, column: 30, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2927, file: !13, line: 521, column: 13)
!2934 = !DILocation(line: 522, column: 42, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2933, file: !13, line: 521, column: 48)
!2936 = !DILocation(line: 523, column: 9, scope: !2935)
!2937 = !DILocation(line: 0, scope: !2819)
!2938 = !DILocation(line: 527, column: 5, scope: !2819)
!2939 = !DILocation(line: 0, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !13, line: 527, column: 45)
!2941 = distinct !DILexicalBlock(scope: !2819, file: !13, line: 527, column: 5)
!2942 = !DILocation(line: 538, column: 20, scope: !2804)
!2943 = !DILocation(line: 538, column: 9, scope: !2804)
!2944 = !DILocation(line: 538, column: 36, scope: !2804)
!2945 = !DILocation(line: 542, column: 28, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 542, column: 9)
!2947 = !DILocation(line: 0, scope: !2946)
!2948 = !DILocation(line: 550, column: 5, scope: !2804)
!2949 = !DILocation(line: 551, column: 20, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 551, column: 9)
!2951 = !DILocation(line: 551, column: 52, scope: !2950)
!2952 = !DILocation(line: 551, column: 39, scope: !2950)
!2953 = !DILocation(line: 551, column: 9, scope: !2804)
!2954 = !DILocation(line: 530, column: 39, scope: !2940)
!2955 = !DILocation(line: 530, column: 9, scope: !2940)
!2956 = !DILocation(line: 530, column: 17, scope: !2940)
!2957 = !DILocation(line: 530, column: 26, scope: !2940)
!2958 = !DILocation(line: 531, column: 17, scope: !2940)
!2959 = !DILocation(line: 531, column: 26, scope: !2940)
!2960 = !DILocation(line: 532, column: 17, scope: !2940)
!2961 = !DILocation(line: 532, column: 31, scope: !2940)
!2962 = !DILocation(line: 533, column: 17, scope: !2940)
!2963 = !DILocation(line: 533, column: 34, scope: !2940)
!2964 = !DILocation(line: 527, column: 34, scope: !2941)
!2965 = distinct !{!2965, !2938, !2966, !618}
!2966 = !DILocation(line: 535, column: 5, scope: !2819)
!2967 = !DILocation(line: 552, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2950, file: !13, line: 551, column: 65)
!2969 = !DILocation(line: 553, column: 13, scope: !2968)
!2970 = !DILocation(line: 554, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !13, line: 553, column: 29)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !13, line: 553, column: 13)
!2973 = !DILocation(line: 555, column: 9, scope: !2971)
!2974 = !DILocation(line: 558, column: 26, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2804, file: !13, line: 558, column: 9)
!2976 = !DILocation(line: 559, column: 13, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2975, file: !13, line: 558, column: 44)
!2978 = !DILocation(line: 0, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2977, file: !13, line: 559, column: 13)
!2980 = !DILocation(line: 565, column: 1, scope: !2804)
!2981 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2982)
!2982 = !{!2983, !2984, !2985, !2986}
!2983 = !DILocalVariable(name: "user_context", arg: 1, scope: !2981, file: !13, line: 589, type: !43)
!2984 = !DILocalVariable(name: "f", arg: 2, scope: !2981, file: !13, line: 589, type: !66)
!2985 = !DILocalVariable(name: "idx", arg: 3, scope: !2981, file: !13, line: 589, type: !29)
!2986 = !DILocalVariable(name: "closure", arg: 4, scope: !2981, file: !13, line: 590, type: !44)
!2987 = !DILocation(line: 0, scope: !2981)
!2988 = !DILocation(line: 591, column: 12, scope: !2981)
!2989 = !DILocation(line: 591, column: 5, scope: !2981)
!2990 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DILocalVariable(name: "user_context", arg: 1, scope: !2990, file: !13, line: 594, type: !43)
!2993 = !DILocalVariable(name: "f", arg: 2, scope: !2990, file: !13, line: 594, type: !39)
!2994 = !DILocalVariable(name: "min", arg: 3, scope: !2990, file: !13, line: 595, type: !29)
!2995 = !DILocalVariable(name: "extent", arg: 4, scope: !2990, file: !13, line: 595, type: !29)
!2996 = !DILocalVariable(name: "closure", arg: 5, scope: !2990, file: !13, line: 595, type: !44)
!2997 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2990, file: !13, line: 596, type: !43)
!2998 = !DILocation(line: 0, scope: !2990)
!2999 = !DILocation(line: 597, column: 12, scope: !2990)
!3000 = !DILocation(line: 597, column: 5, scope: !2990)
!3001 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3002)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008}
!3003 = !DILocalVariable(name: "user_context", arg: 1, scope: !3001, file: !13, line: 600, type: !43)
!3004 = !DILocalVariable(name: "f", arg: 2, scope: !3001, file: !13, line: 600, type: !66)
!3005 = !DILocalVariable(name: "min", arg: 3, scope: !3001, file: !13, line: 601, type: !29)
!3006 = !DILocalVariable(name: "size", arg: 4, scope: !3001, file: !13, line: 601, type: !29)
!3007 = !DILocalVariable(name: "closure", arg: 5, scope: !3001, file: !13, line: 601, type: !44)
!3008 = !DILocalVariable(name: "job", scope: !3001, file: !13, line: 606, type: !33)
!3009 = !DILocation(line: 0, scope: !3001)
!3010 = !DILocation(line: 602, column: 14, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3001, file: !13, line: 602, column: 9)
!3012 = !DILocation(line: 602, column: 9, scope: !3001)
!3013 = !DILocation(line: 606, column: 5, scope: !3001)
!3014 = !DILocation(line: 606, column: 10, scope: !3001)
!3015 = !DILocation(line: 607, column: 14, scope: !3001)
!3016 = !DILocation(line: 607, column: 17, scope: !3001)
!3017 = !DILocation(line: 608, column: 14, scope: !3001)
!3018 = !DILocation(line: 608, column: 18, scope: !3001)
!3019 = !DILocation(line: 609, column: 14, scope: !3001)
!3020 = !DILocation(line: 609, column: 21, scope: !3001)
!3021 = !DILocation(line: 610, column: 14, scope: !3001)
!3022 = !DILocation(line: 610, column: 21, scope: !3001)
!3023 = !DILocation(line: 611, column: 14, scope: !3001)
!3024 = !DILocation(line: 611, column: 25, scope: !3001)
!3025 = !DILocation(line: 612, column: 14, scope: !3001)
!3026 = !DILocation(line: 612, column: 29, scope: !3001)
!3027 = !DILocation(line: 613, column: 14, scope: !3001)
!3028 = !DILocation(line: 613, column: 22, scope: !3001)
!3029 = !DILocation(line: 614, column: 14, scope: !3001)
!3030 = !DILocation(line: 614, column: 26, scope: !3001)
!3031 = !DILocation(line: 615, column: 14, scope: !3001)
!3032 = !DILocation(line: 615, column: 19, scope: !3001)
!3033 = !{!2451, !404, i64 8}
!3034 = !DILocation(line: 616, column: 9, scope: !3001)
!3035 = !DILocation(line: 616, column: 17, scope: !3001)
!3036 = !{!2451, !404, i64 36}
!3037 = !DILocation(line: 617, column: 9, scope: !3001)
!3038 = !DILocation(line: 617, column: 22, scope: !3001)
!3039 = !DILocation(line: 618, column: 9, scope: !3001)
!3040 = !DILocation(line: 618, column: 21, scope: !3001)
!3041 = !DILocation(line: 619, column: 9, scope: !3001)
!3042 = !DILocation(line: 619, column: 24, scope: !3001)
!3043 = !DILocation(line: 620, column: 9, scope: !3001)
!3044 = !DILocation(line: 620, column: 24, scope: !3001)
!3045 = !DILocation(line: 621, column: 9, scope: !3001)
!3046 = !DILocation(line: 621, column: 27, scope: !3001)
!3047 = !DILocation(line: 622, column: 9, scope: !3001)
!3048 = !DILocation(line: 622, column: 18, scope: !3001)
!3049 = !DILocation(line: 623, column: 9, scope: !3001)
!3050 = !DILocation(line: 623, column: 23, scope: !3001)
!3051 = !DILocation(line: 624, column: 9, scope: !3001)
!3052 = !DILocation(line: 624, column: 20, scope: !3001)
!3053 = !DILocation(line: 625, column: 5, scope: !3001)
!3054 = !DILocation(line: 626, column: 5, scope: !3001)
!3055 = !DILocation(line: 627, column: 5, scope: !3001)
!3056 = !DILocation(line: 628, column: 5, scope: !3001)
!3057 = !DILocation(line: 629, column: 16, scope: !3001)
!3058 = !DILocation(line: 630, column: 1, scope: !3001)
!3059 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3068, !3069}
!3061 = !DILocalVariable(name: "user_context", arg: 1, scope: !3059, file: !13, line: 632, type: !43)
!3062 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3059, file: !13, line: 632, type: !29)
!3063 = !DILocalVariable(name: "tasks", arg: 3, scope: !3059, file: !13, line: 633, type: !145)
!3064 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3059, file: !13, line: 634, type: !43)
!3065 = !DILocalVariable(name: "jobs", scope: !3059, file: !13, line: 635, type: !32)
!3066 = !DILocalVariable(name: "i", scope: !3067, file: !13, line: 637, type: !29)
!3067 = distinct !DILexicalBlock(scope: !3059, file: !13, line: 637, column: 5)
!3068 = !DILocalVariable(name: "exit_status", scope: !3059, file: !13, line: 659, type: !29)
!3069 = !DILocalVariable(name: "i", scope: !3070, file: !13, line: 660, type: !29)
!3070 = distinct !DILexicalBlock(scope: !3059, file: !13, line: 660, column: 5)
!3071 = !DILocation(line: 0, scope: !3059)
!3072 = !DILocation(line: 635, column: 56, scope: !3059)
!3073 = !DILocation(line: 635, column: 26, scope: !3059)
!3074 = !DILocation(line: 635, column: 18, scope: !3059)
!3075 = !DILocation(line: 0, scope: !3067)
!3076 = !DILocation(line: 637, column: 23, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3067, file: !13, line: 637, column: 5)
!3078 = !DILocation(line: 637, column: 5, scope: !3067)
!3079 = !DILocation(line: 653, column: 19, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3059, file: !13, line: 653, column: 9)
!3081 = !DILocation(line: 653, column: 9, scope: !3059)
!3082 = !DILocation(line: 638, column: 20, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !13, line: 638, column: 13)
!3084 = distinct !DILexicalBlock(scope: !3077, file: !13, line: 637, column: 41)
!3085 = !{!2452, !491, i64 24}
!3086 = !DILocation(line: 638, column: 27, scope: !3083)
!3087 = !DILocation(line: 638, column: 13, scope: !3084)
!3088 = !DILocation(line: 640, column: 22, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !13, line: 638, column: 33)
!3090 = !DILocation(line: 641, column: 13, scope: !3089)
!3091 = !DILocation(line: 643, column: 30, scope: !3084)
!3092 = !DILocation(line: 643, column: 9, scope: !3084)
!3093 = !DILocation(line: 643, column: 22, scope: !3084)
!3094 = !{i64 0, i64 4, !452, i64 4, i64 4, !452, i64 8, i64 4, !452, i64 12, i64 4, !452, i64 16, i64 4, !490, i64 20, i64 4, !490, i64 24, i64 4, !490, i64 28, i64 4, !490, i64 32, i64 1, !2695}
!3095 = !DILocation(line: 644, column: 17, scope: !3084)
!3096 = !DILocation(line: 644, column: 25, scope: !3084)
!3097 = !DILocation(line: 645, column: 17, scope: !3084)
!3098 = !DILocation(line: 645, column: 30, scope: !3084)
!3099 = !DILocation(line: 646, column: 17, scope: !3084)
!3100 = !DILocation(line: 646, column: 29, scope: !3084)
!3101 = !DILocation(line: 647, column: 17, scope: !3084)
!3102 = !DILocation(line: 647, column: 32, scope: !3084)
!3103 = !DILocation(line: 648, column: 17, scope: !3084)
!3104 = !DILocation(line: 648, column: 32, scope: !3084)
!3105 = !DILocation(line: 649, column: 17, scope: !3084)
!3106 = !DILocation(line: 649, column: 35, scope: !3084)
!3107 = !DILocation(line: 650, column: 17, scope: !3084)
!3108 = !DILocation(line: 650, column: 28, scope: !3084)
!3109 = !DILocation(line: 651, column: 5, scope: !3084)
!3110 = !DILocation(line: 637, column: 37, scope: !3077)
!3111 = distinct !{!3111, !3078, !3112, !618}
!3112 = !DILocation(line: 651, column: 5, scope: !3067)
!3113 = !DILocation(line: 657, column: 5, scope: !3059)
!3114 = !DILocation(line: 658, column: 50, scope: !3059)
!3115 = !DILocation(line: 658, column: 5, scope: !3059)
!3116 = !DILocation(line: 0, scope: !3070)
!3117 = !DILocation(line: 660, column: 23, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3070, file: !13, line: 660, column: 5)
!3119 = !DILocation(line: 660, column: 5, scope: !3070)
!3120 = !DILocation(line: 668, column: 5, scope: !3059)
!3121 = !DILocation(line: 663, column: 43, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !13, line: 660, column: 41)
!3123 = !DILocation(line: 663, column: 9, scope: !3122)
!3124 = !DILocation(line: 664, column: 21, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !13, line: 664, column: 13)
!3126 = !DILocation(line: 664, column: 33, scope: !3125)
!3127 = !DILocation(line: 664, column: 13, scope: !3122)
!3128 = !DILocation(line: 660, column: 37, scope: !3118)
!3129 = distinct !{!3129, !3119, !3130, !618}
!3130 = !DILocation(line: 667, column: 5, scope: !3070)
!3131 = !DILocation(line: 670, column: 1, scope: !3059)
!3132 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3133)
!3133 = !{!3134, !3135, !3136}
!3134 = !DILocalVariable(name: "s", arg: 1, scope: !3132, file: !13, line: 715, type: !56)
!3135 = !DILocalVariable(name: "n", arg: 2, scope: !3132, file: !13, line: 715, type: !29)
!3136 = !DILocalVariable(name: "sem", scope: !3132, file: !13, line: 716, type: !370)
!3137 = !DILocation(line: 0, scope: !3132)
!3138 = !DILocation(line: 717, column: 76, scope: !3132)
!3139 = !DILocalVariable(name: "addr", arg: 1, scope: !3140, file: !6, line: 154, type: !3143)
!3140 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !500, file: !6, line: 154, type: !3141, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3146, retainedNodes: !3144)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !3143, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!3144 = !{!3139, !3145}
!3145 = !DILocalVariable(name: "val", arg: 2, scope: !3140, file: !6, line: 154, type: !3143)
!3146 = !{!3147}
!3147 = !DITemplateTypeParameter(name: "T", type: !29)
!3148 = !DILocation(line: 0, scope: !3140, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 717, column: 5, scope: !3132)
!3150 = !DILocation(line: 155, column: 11, scope: !3140, inlinedAt: !3149)
!3151 = !DILocation(line: 156, column: 5, scope: !3140, inlinedAt: !3149)
!3152 = !DILocation(line: 718, column: 5, scope: !3132)
!3153 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159}
!3155 = !DILocalVariable(name: "s", arg: 1, scope: !3153, file: !13, line: 735, type: !56)
!3156 = !DILocalVariable(name: "n", arg: 2, scope: !3153, file: !13, line: 735, type: !29)
!3157 = !DILocalVariable(name: "sem", scope: !3153, file: !13, line: 739, type: !370)
!3158 = !DILocalVariable(name: "expected", scope: !3153, file: !13, line: 741, type: !29)
!3159 = !DILocalVariable(name: "desired", scope: !3153, file: !13, line: 742, type: !29)
!3160 = !DILocation(line: 0, scope: !3153)
!3161 = !DILocation(line: 736, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3153, file: !13, line: 736, column: 9)
!3163 = !DILocation(line: 736, column: 9, scope: !3153)
!3164 = !DILocation(line: 743, column: 75, scope: !3153)
!3165 = !DILocalVariable(name: "addr", arg: 1, scope: !3166, file: !6, line: 140, type: !3143)
!3166 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !500, file: !6, line: 140, type: !3141, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3146, retainedNodes: !3167)
!3167 = !{!3165, !3168}
!3168 = !DILocalVariable(name: "val", arg: 2, scope: !3166, file: !6, line: 140, type: !3143)
!3169 = !DILocation(line: 0, scope: !3166, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 743, column: 5, scope: !3153)
!3171 = !DILocation(line: 141, column: 5, scope: !3166, inlinedAt: !3170)
!3172 = !DILocation(line: 142, column: 12, scope: !3166, inlinedAt: !3170)
!3173 = !DILocation(line: 744, column: 5, scope: !3153)
!3174 = !DILocation(line: 745, column: 28, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3153, file: !13, line: 744, column: 8)
!3176 = !DILocation(line: 746, column: 22, scope: !3153)
!3177 = !DILocation(line: 746, column: 27, scope: !3153)
!3178 = !DILocalVariable(name: "addr", arg: 1, scope: !3179, file: !6, line: 118, type: !3143)
!3179 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !500, file: !6, line: 118, type: !3180, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3146, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!64, !3143, !3143, !3143}
!3182 = !{!3178, !3183, !3184}
!3183 = !DILocalVariable(name: "expected", arg: 2, scope: !3179, file: !6, line: 118, type: !3143)
!3184 = !DILocalVariable(name: "desired", arg: 3, scope: !3179, file: !6, line: 118, type: !3143)
!3185 = !DILocation(line: 0, scope: !3179, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 747, column: 15, scope: !3153)
!3187 = !DILocalVariable(name: "addr", arg: 1, scope: !3188, file: !6, line: 102, type: !3143)
!3188 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIiEEbPT_S6_S6_", scope: !500, file: !6, line: 102, type: !3180, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3146, retainedNodes: !3189)
!3189 = !{!3187, !3190, !3191, !3192, !3193}
!3190 = !DILocalVariable(name: "expected", arg: 2, scope: !3188, file: !6, line: 102, type: !3143)
!3191 = !DILocalVariable(name: "desired", arg: 3, scope: !3188, file: !6, line: 102, type: !3143)
!3192 = !DILocalVariable(name: "oldval", scope: !3188, file: !6, line: 103, type: !29)
!3193 = !DILocalVariable(name: "gotval", scope: !3188, file: !6, line: 104, type: !29)
!3194 = !DILocation(line: 0, scope: !3188, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 119, column: 12, scope: !3179, inlinedAt: !3186)
!3196 = !DILocation(line: 104, column: 16, scope: !3188, inlinedAt: !3195)
!3197 = !DILocation(line: 106, column: 19, scope: !3188, inlinedAt: !3195)
!3198 = !DILocation(line: 746, column: 5, scope: !3175)
!3199 = distinct !{!3199, !3173, !3200, !618}
!3200 = !DILocation(line: 747, column: 123, scope: !3153)
!3201 = !DILocation(line: 749, column: 1, scope: !3153)
!3202 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3203)
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "s", arg: 1, scope: !3202, file: !13, line: 721, type: !56)
!3205 = !DILocalVariable(name: "n", arg: 2, scope: !3202, file: !13, line: 721, type: !29)
!3206 = !DILocalVariable(name: "sem", scope: !3202, file: !13, line: 722, type: !370)
!3207 = !DILocalVariable(name: "old_val", scope: !3202, file: !13, line: 723, type: !29)
!3208 = !DILocation(line: 0, scope: !3202)
!3209 = !DILocation(line: 723, column: 102, scope: !3202)
!3210 = !DILocalVariable(name: "addr", arg: 1, scope: !3211, file: !6, line: 97, type: !3143)
!3211 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !500, file: !6, line: 97, type: !3212, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3146, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!29, !3143, !29}
!3214 = !{!3210, !3215}
!3215 = !DILocalVariable(name: "val", arg: 2, scope: !3211, file: !6, line: 97, type: !29)
!3216 = !DILocation(line: 0, scope: !3211, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 723, column: 19, scope: !3202)
!3218 = !DILocation(line: 98, column: 12, scope: !3211, inlinedAt: !3217)
!3219 = !DILocation(line: 725, column: 17, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3202, file: !13, line: 725, column: 9)
!3221 = !DILocation(line: 725, column: 22, scope: !3220)
!3222 = !DILocation(line: 727, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !13, line: 725, column: 33)
!3224 = !DILocation(line: 728, column: 9, scope: !3223)
!3225 = !DILocation(line: 729, column: 9, scope: !3223)
!3226 = !DILocation(line: 730, column: 9, scope: !3223)
!3227 = !DILocation(line: 731, column: 5, scope: !3223)
!3228 = !DILocation(line: 732, column: 20, scope: !3202)
!3229 = !DILocation(line: 732, column: 5, scope: !3202)
!3230 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !3231, file: !13, line: 584, type: !641, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!3231 = !DINamespace(scope: null)
!3232 = !DILocation(line: 585, column: 5, scope: !3230)
!3233 = !DILocation(line: 586, column: 1, scope: !3230)
!3234 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !641, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3235)
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "i", scope: !3237, file: !13, line: 702, type: !29)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !13, line: 702, column: 9)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !13, line: 690, column: 33)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !13, line: 690, column: 9)
!3240 = !DILocation(line: 690, column: 20, scope: !3239)
!3241 = !DILocation(line: 690, column: 9, scope: !3234)
!3242 = !DILocation(line: 693, column: 9, scope: !3238)
!3243 = !DILocation(line: 695, column: 29, scope: !3238)
!3244 = !DILocation(line: 696, column: 9, scope: !3238)
!3245 = !DILocation(line: 697, column: 9, scope: !3238)
!3246 = !DILocation(line: 698, column: 9, scope: !3238)
!3247 = !DILocation(line: 699, column: 9, scope: !3238)
!3248 = !DILocation(line: 0, scope: !3237)
!3249 = !DILocation(line: 702, column: 40, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3237, file: !13, line: 702, column: 9)
!3251 = !DILocation(line: 702, column: 27, scope: !3250)
!3252 = !DILocation(line: 702, column: 9, scope: !3237)
!3253 = !DILocalVariable(name: "this", arg: 1, scope: !3254, type: !3258, flags: DIFlagArtificial | DIFlagObjectPointer)
!3254 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !3255)
!3255 = !{!3253, !3256, !3257}
!3256 = !DILocalVariable(name: "bytes", scope: !3254, file: !13, line: 160, type: !374)
!3257 = !DILocalVariable(name: "limit", scope: !3254, file: !13, line: 161, type: !374)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!3259 = !DILocation(line: 0, scope: !3254, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 707, column: 20, scope: !3238)
!3261 = !DILocation(line: 162, column: 9, scope: !3254, inlinedAt: !3260)
!3262 = !DILocation(line: 708, column: 5, scope: !3238)
!3263 = !DILocation(line: 703, column: 32, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3250, file: !13, line: 702, column: 62)
!3265 = !DILocation(line: 703, column: 13, scope: !3264)
!3266 = !DILocation(line: 702, column: 58, scope: !3250)
!3267 = distinct !{!3267, !3252, !3268, !618}
!3268 = !DILocation(line: 704, column: 9, scope: !3237)
!3269 = !DILocation(line: 709, column: 1, scope: !3234)
!3270 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2368, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3271)
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3270, file: !13, line: 672, type: !29)
!3273 = !DILocalVariable(name: "old", scope: !3270, file: !13, line: 683, type: !29)
!3274 = !DILocation(line: 0, scope: !3270)
!3275 = !DILocation(line: 673, column: 11, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3270, file: !13, line: 673, column: 9)
!3277 = !DILocation(line: 673, column: 9, scope: !3270)
!3278 = !DILocation(line: 674, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3276, file: !13, line: 673, column: 16)
!3280 = !DILocation(line: 679, column: 5, scope: !3270)
!3281 = !DILocation(line: 680, column: 9, scope: !3270)
!3282 = !DILocation(line: 680, column: 11, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3270, file: !13, line: 680, column: 9)
!3284 = !DILocation(line: 681, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3283, file: !13, line: 680, column: 17)
!3286 = !DILocation(line: 682, column: 5, scope: !3285)
!3287 = !DILocation(line: 683, column: 26, scope: !3270)
!3288 = !DILocation(line: 684, column: 42, scope: !3270)
!3289 = !DILocation(line: 684, column: 40, scope: !3270)
!3290 = !DILocation(line: 685, column: 5, scope: !3270)
!3291 = !DILocation(line: 686, column: 5, scope: !3270)
!3292 = !DISubprogram(name: "halide_error", scope: !18, file: !18, line: 111, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3293 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !3294, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!123, !123}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "f", arg: 1, scope: !3293, file: !13, line: 751, type: !123)
!3298 = !DILocalVariable(name: "result", scope: !3293, file: !13, line: 752, type: !123)
!3299 = !DILocation(line: 0, scope: !3293)
!3300 = !DILocation(line: 752, column: 31, scope: !3293)
!3301 = !DILocation(line: 753, column: 20, scope: !3293)
!3302 = !DILocation(line: 754, column: 5, scope: !3293)
!3303 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !3304, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!129, !129}
!3306 = !{!3307, !3308}
!3307 = !DILocalVariable(name: "f", arg: 1, scope: !3303, file: !13, line: 757, type: !129)
!3308 = !DILocalVariable(name: "result", scope: !3303, file: !13, line: 758, type: !129)
!3309 = !DILocation(line: 0, scope: !3303)
!3310 = !DILocation(line: 758, column: 36, scope: !3303)
!3311 = !DILocation(line: 759, column: 25, scope: !3303)
!3312 = !DILocation(line: 760, column: 5, scope: !3303)
!3313 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !3314, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!135, !135}
!3316 = !{!3317, !3318}
!3317 = !DILocalVariable(name: "f", arg: 1, scope: !3313, file: !13, line: 763, type: !135)
!3318 = !DILocalVariable(name: "result", scope: !3313, file: !13, line: 764, type: !135)
!3319 = !DILocation(line: 0, scope: !3313)
!3320 = !DILocation(line: 764, column: 34, scope: !3313)
!3321 = !DILocation(line: 765, column: 23, scope: !3313)
!3322 = !DILocation(line: 766, column: 5, scope: !3313)
!3323 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !3324, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !135, !123, !129, !141, !148, !154, !160}
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3327 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3323, file: !13, line: 770, type: !135)
!3328 = !DILocalVariable(name: "do_task", arg: 2, scope: !3323, file: !13, line: 771, type: !123)
!3329 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3323, file: !13, line: 772, type: !129)
!3330 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3323, file: !13, line: 773, type: !141)
!3331 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3323, file: !13, line: 774, type: !148)
!3332 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3323, file: !13, line: 775, type: !154)
!3333 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3323, file: !13, line: 776, type: !160)
!3334 = !DILocation(line: 0, scope: !3323)
!3335 = !DILocation(line: 778, column: 23, scope: !3323)
!3336 = !DILocation(line: 779, column: 20, scope: !3323)
!3337 = !DILocation(line: 780, column: 25, scope: !3323)
!3338 = !DILocation(line: 781, column: 30, scope: !3323)
!3339 = !DILocation(line: 782, column: 27, scope: !3323)
!3340 = !DILocation(line: 783, column: 34, scope: !3323)
!3341 = !DILocation(line: 784, column: 30, scope: !3323)
!3342 = !DILocation(line: 785, column: 1, scope: !3323)
!3343 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349}
!3345 = !DILocalVariable(name: "user_context", arg: 1, scope: !3343, file: !13, line: 792, type: !43)
!3346 = !DILocalVariable(name: "f", arg: 2, scope: !3343, file: !13, line: 792, type: !66)
!3347 = !DILocalVariable(name: "min", arg: 3, scope: !3343, file: !13, line: 793, type: !29)
!3348 = !DILocalVariable(name: "size", arg: 4, scope: !3343, file: !13, line: 793, type: !29)
!3349 = !DILocalVariable(name: "closure", arg: 5, scope: !3343, file: !13, line: 793, type: !44)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 794, column: 14, scope: !3343)
!3352 = !DILocation(line: 794, column: 12, scope: !3343)
!3353 = !DILocation(line: 794, column: 5, scope: !3343)
!3354 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3355)
!3355 = !{!3356, !3357, !3358, !3359}
!3356 = !DILocalVariable(name: "user_context", arg: 1, scope: !3354, file: !13, line: 802, type: !43)
!3357 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3354, file: !13, line: 802, type: !29)
!3358 = !DILocalVariable(name: "tasks", arg: 3, scope: !3354, file: !13, line: 803, type: !145)
!3359 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3354, file: !13, line: 804, type: !43)
!3360 = !DILocation(line: 0, scope: !3354)
!3361 = !DILocation(line: 805, column: 12, scope: !3354)
!3362 = !DILocation(line: 805, column: 5, scope: !3354)
!3363 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3364)
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "sema", arg: 1, scope: !3363, file: !13, line: 808, type: !56)
!3366 = !DILocalVariable(name: "count", arg: 2, scope: !3363, file: !13, line: 808, type: !29)
!3367 = !DILocation(line: 0, scope: !3363)
!3368 = !DILocation(line: 809, column: 12, scope: !3363)
!3369 = !DILocation(line: 809, column: 5, scope: !3363)
!3370 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3371)
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "sema", arg: 1, scope: !3370, file: !13, line: 812, type: !56)
!3373 = !DILocalVariable(name: "count", arg: 2, scope: !3370, file: !13, line: 812, type: !29)
!3374 = !DILocation(line: 0, scope: !3370)
!3375 = !DILocation(line: 813, column: 12, scope: !3370)
!3376 = !DILocation(line: 813, column: 5, scope: !3370)
!3377 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3378)
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "sema", arg: 1, scope: !3377, file: !13, line: 816, type: !56)
!3380 = !DILocalVariable(name: "count", arg: 2, scope: !3377, file: !13, line: 816, type: !29)
!3381 = !DILocation(line: 0, scope: !3377)
!3382 = !DILocation(line: 817, column: 12, scope: !3377)
!3383 = !DILocation(line: 817, column: 5, scope: !3377)
!3384 = !DISubprogram(name: "pthread_mutex_init", scope: !167, file: !167, line: 28, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!29, !3387, !438}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!3388 = !DISubprogram(name: "pthread_cond_init", scope: !167, file: !167, line: 24, type: !3389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!29, !3391, !438}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!3392 = !DISubprogram(name: "pthread_mutex_lock", scope: !167, file: !167, line: 29, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!29, !3387}
!3395 = !DISubprogram(name: "pthread_cond_wait", scope: !167, file: !167, line: 25, type: !3396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!29, !3391, !3387}
!3398 = !DISubprogram(name: "pthread_mutex_unlock", scope: !167, file: !167, line: 30, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3399 = !DISubprogram(name: "pthread_cond_destroy", scope: !167, file: !167, line: 27, type: !3400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!29, !3391}
!3402 = !DISubprogram(name: "pthread_mutex_destroy", scope: !167, file: !167, line: 31, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3403 = !DISubprogram(name: "pthread_cond_signal", scope: !167, file: !167, line: 26, type: !3400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
