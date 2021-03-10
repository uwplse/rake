; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp"
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
define weak dso_local i8* @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(i8* %0) #0 !dbg !393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i8* %0, metadata !398, metadata !DIExpression()), !dbg !399
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !400
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !400, !tbaa !401
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !407
  %5 = bitcast i8* %4 to i8**, !dbg !407
  %6 = load i8*, i8** %5, align 8, !dbg !407, !tbaa !408
  tail call void %3(i8* %6) #6, !dbg !409
  ret i8* null, !dbg !410
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !411 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !415, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8* %1, metadata !416, metadata !DIExpression()), !dbg !418
  %3 = tail call i8* @malloc(i64 24) #6, !dbg !419
  call void @llvm.dbg.value(metadata i8* %3, metadata !417, metadata !DIExpression()), !dbg !418
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !420
  store void (i8*)* %0, void (i8*)** %4, align 8, !dbg !421, !tbaa !401
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !422
  %6 = bitcast i8* %5 to i8**, !dbg !422
  store i8* %1, i8** %6, align 8, !dbg !423, !tbaa !408
  %7 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !424
  %8 = bitcast i8* %7 to i64*, !dbg !424
  store i64 0, i64* %8, align 8, !dbg !425, !tbaa !426
  %9 = tail call i32 @pthread_create(i64* nonnull %8, i8* null, i8* (i8*)* nonnull @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, i8* %3) #6, !dbg !427
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !428
  ret %struct.halide_thread* %10, !dbg !429
}

declare !dbg !430 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !434 dso_local i32 @pthread_create(i64*, i8*, i8* (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !441 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !445, metadata !DIExpression()), !dbg !448
  %3 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %3, metadata !446, metadata !DIExpression()), !dbg !448
  %4 = bitcast i8** %2 to i8*, !dbg !450
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !450
  call void @llvm.dbg.value(metadata i8* null, metadata !447, metadata !DIExpression()), !dbg !448
  store i8* null, i8** %2, align 8, !dbg !451, !tbaa !452
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %3, i64 0, i32 2, !dbg !453
  %6 = load i64, i64* %5, align 8, !dbg !453, !tbaa !426
  call void @llvm.dbg.value(metadata i8** %2, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !448
  %7 = call i32 @pthread_join(i64 %6, i8** nonnull %2) #6, !dbg !454
  %8 = bitcast %struct.halide_thread* %0 to i8*, !dbg !455
  call void @free(i8* %8) #6, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !457
  ret void, !dbg !457
}

declare !dbg !458 dso_local i32 @pthread_join(i64, i8**) local_unnamed_addr #3

declare !dbg !462 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !463 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !465, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 40, metadata !467, metadata !DIExpression()), !dbg !487
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !488
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !499
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !501
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !502

13:                                               ; preds = %71, %1
  %14 = phi i64 [ %4, %1 ], [ %72, %71 ]
  %15 = phi i32 [ 40, %1 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %14, metadata !479, metadata !DIExpression()), !dbg !487
  %16 = and i64 %14, 1, !dbg !503
  %17 = icmp eq i64 %16, 0, !dbg !504
  br i1 %17, label %18, label %29, !dbg !505

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !479, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %19, metadata !479, metadata !DIExpression()), !dbg !487
  %20 = or i64 %19, 1, !dbg !506
  call void @llvm.dbg.value(metadata i64 %20, metadata !480, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64* %3, metadata !508, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()), !dbg !515
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !518
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !518
  br i1 %22, label %74, label %23, !dbg !518

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !518
  call void @llvm.dbg.value(metadata i32 %15, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %24, metadata !479, metadata !DIExpression()), !dbg !487
  %25 = and i64 %24, 1, !dbg !503
  %26 = icmp eq i64 %25, 0, !dbg !504
  br i1 %26, label %18, label %27, !dbg !505

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !518
  br label %29, !dbg !519

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !487
  %31 = icmp ugt i64 %30, 3, !dbg !519
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !522, metadata !DIExpression()), !dbg !526
  br i1 %33, label %34, label %39, !dbg !521

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !467, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !487
  %35 = icmp sgt i32 %15, 1, !dbg !528
  br i1 %35, label %36, label %39, !dbg !529

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !530
  call void @llvm.dbg.value(metadata i32 %37, metadata !467, metadata !DIExpression()), !dbg !487
  call void @halide_thread_yield() #6, !dbg !533
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !535
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !537
  br label %71, !dbg !538

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %40, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #7, !dbg !539
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !484, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !541, metadata !DIExpression()) #7, !dbg !544
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !546, metadata !DIExpression()) #7, !dbg !550
  store i8 0, i8* %6, align 8, !dbg !552, !tbaa !553
  %41 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !558
  %42 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %8, i8* null) #6, !dbg !560
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !561, !tbaa !562
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !564, !tbaa !565
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !566, !tbaa !567
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !568, metadata !DIExpression()), !dbg !571
  store i8 1, i8* %6, align 8, !dbg !573, !tbaa !553
  call void @llvm.dbg.value(metadata i64 %30, metadata !479, metadata !DIExpression()), !dbg !487
  %43 = and i64 %30, -4, !dbg !574
  call void @llvm.dbg.value(metadata i64 %43, metadata !485, metadata !DIExpression()), !dbg !575
  %44 = icmp eq i64 %43, 0, !dbg !576
  br i1 %44, label %45, label %46, !dbg !578

45:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !579, !tbaa !567
  br label %48, !dbg !581

46:                                               ; preds = %39
  %47 = inttoptr i64 %43 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !582
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %47, metadata !485, metadata !DIExpression()), !dbg !575
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !583, !tbaa !562
  br label %48

48:                                               ; preds = %46, %45
  call void @llvm.dbg.value(metadata i64 %30, metadata !479, metadata !DIExpression()), !dbg !487
  %49 = and i64 %30, 3, !dbg !585
  %50 = or i64 %49, %12, !dbg !586
  call void @llvm.dbg.value(metadata i64 %50, metadata !486, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64* %3, metadata !587, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64* undef, metadata !590, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64* undef, metadata !591, metadata !DIExpression()), !dbg !592
  %51 = cmpxchg weak i64* %3, i64 %30, i64 %50 release monotonic, !dbg !595
  %52 = extractvalue { i64, i1 } %51, 1, !dbg !595
  br i1 %52, label %55, label %53, !dbg !595

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0, !dbg !595
  br label %66

55:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !596, metadata !DIExpression()) #7, !dbg !599
  %56 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !602
  %57 = load i8, i8* %6, align 8, !dbg !603, !tbaa !553, !range !604
  %58 = icmp eq i8 %57, 0, !dbg !603
  br i1 %58, label %63, label %59, !dbg !605

59:                                               ; preds = %55, %59
  %60 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %8, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !606
  %61 = load i8, i8* %6, align 8, !dbg !603, !tbaa !553, !range !604
  %62 = icmp eq i8 %61, 0, !dbg !603
  br i1 %62, label %63, label %59, !dbg !605, !llvm.loop !608

63:                                               ; preds = %59, %55
  %64 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !611
  call void @llvm.dbg.value(metadata i32 40, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !612
  %65 = load atomic i64, i64* %3 monotonic, align 8, !dbg !614
  br label %66, !dbg !615

66:                                               ; preds = %53, %63
  %67 = phi i64 [ %65, %63 ], [ %54, %53 ], !dbg !487
  %68 = phi i32 [ 40, %63 ], [ %40, %53 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %68, metadata !467, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !616, metadata !DIExpression()) #7, !dbg !619
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !621, metadata !DIExpression()) #7, !dbg !624
  %69 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %8) #6, !dbg !627
  %70 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !629
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #7, !dbg !630
  br label %71, !dbg !502

71:                                               ; preds = %66, %36
  %72 = phi i64 [ %38, %36 ], [ %67, %66 ]
  %73 = phi i32 [ %37, %36 ], [ %68, %66 ]
  br label %13, !dbg !487, !llvm.loop !631

74:                                               ; preds = %18
  ret void, !dbg !632
}

declare !dbg !633 dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !636 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !638, metadata !DIExpression()), !dbg !660
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !661
  call void @llvm.dbg.value(metadata i64* %2, metadata !489, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !662
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !664
  br label %4, !dbg !665

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !664
  call void @llvm.dbg.value(metadata i64 %5, metadata !639, metadata !DIExpression()), !dbg !660
  %6 = and i64 %5, 2, !dbg !666
  %7 = icmp ne i64 %6, 0, !dbg !667
  call void @llvm.dbg.value(metadata i1 %7, metadata !640, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !668
  call void @llvm.dbg.value(metadata i1 undef, metadata !642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !668
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !669
  call void @llvm.dbg.value(metadata i1 %8, metadata !642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !668
  br i1 %9, label %65, label %10, !dbg !669

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !639, metadata !DIExpression()), !dbg !660
  %11 = or i64 %5, 2, !dbg !671
  call void @llvm.dbg.value(metadata i64 %11, metadata !643, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i64* %2, metadata !508, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()), !dbg !672
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !675
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !675
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %63
  %16 = phi { i64, i1 } [ %64, %63 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !664
  call void @llvm.dbg.value(metadata i64 %17, metadata !639, metadata !DIExpression()), !dbg !660
  %18 = and i64 %17, -4, !dbg !676
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !644, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !646, metadata !DIExpression()), !dbg !678
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !647, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !648, metadata !DIExpression()), !dbg !678
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !678, !tbaa !567
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !646, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !647, metadata !DIExpression()), !dbg !678
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !680
  br i1 %22, label %23, label %34, !dbg !681

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !646, metadata !DIExpression()), !dbg !678
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !682
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !682, !tbaa !562
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !649, metadata !DIExpression()), !dbg !683
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !684
  br i1 %27, label %28, label %29, !dbg !687

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0)) #6, !dbg !688
  tail call void @abort() #6, !dbg !688
  br label %29, !dbg !688

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !690
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !691, !tbaa !565
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !646, metadata !DIExpression()), !dbg !678
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !692
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !647, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !678
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !678, !tbaa !567
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !647, metadata !DIExpression()), !dbg !678
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !680
  br i1 %33, label %23, label %34, !dbg !681, !llvm.loop !693

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !678
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !695, !tbaa !567
  call void @llvm.dbg.value(metadata i64 %17, metadata !639, metadata !DIExpression()), !dbg !660
  %36 = and i64 %17, 1, !dbg !696
  %37 = icmp eq i64 %36, 0, !dbg !697
  br i1 %37, label %42, label %38, !dbg !698

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !639, metadata !DIExpression()), !dbg !660
  %39 = and i64 %17, -3, !dbg !699
  call void @llvm.dbg.value(metadata i64 %39, metadata !651, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i64* %2, metadata !701, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* undef, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* undef, metadata !707, metadata !DIExpression()), !dbg !708
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !711
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !711
  br i1 %41, label %65, label %63, !dbg !711, !llvm.loop !712

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !715
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !715, !tbaa !565
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !654, metadata !DIExpression()), !dbg !678
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !716
  br i1 %45, label %46, label %54, !dbg !717

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !655, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %47, metadata !639, metadata !DIExpression()), !dbg !660
  %48 = and i64 %47, 1, !dbg !719
  call void @llvm.dbg.value(metadata i64 %48, metadata !658, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i64* %2, metadata !701, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i64* undef, metadata !706, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i64* undef, metadata !707, metadata !DIExpression()), !dbg !721
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !724
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !724
  br i1 %50, label %56, label %51, !dbg !724

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !724
  call void @llvm.dbg.value(metadata i64 %52, metadata !639, metadata !DIExpression()), !dbg !660
  %53 = icmp ult i64 %52, 4, !dbg !725
  br i1 %53, label %46, label %63, !dbg !727, !llvm.loop !728

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !731, !tbaa !567
  call void @llvm.dbg.value(metadata i64* %2, metadata !733, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 -3, metadata !738, metadata !DIExpression()), !dbg !739
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !741
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !742, metadata !DIExpression()) #7, !dbg !745
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !747
  %58 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !748
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !749, metadata !DIExpression()) #7, !dbg !752
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !754
  store i8 0, i8* %59, align 8, !dbg !755, !tbaa !553
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !756
  %61 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %60) #6, !dbg !757
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !758, metadata !DIExpression()) #7, !dbg !761
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %57) #6, !dbg !763
  br label %65, !dbg !764

63:                                               ; preds = %51, %38
  %64 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !678
  br label %15

65:                                               ; preds = %4, %38, %56
  ret void, !dbg !765
}

declare !dbg !766 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !769 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) local_unnamed_addr #0 !dbg !770 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !775, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %0, metadata !779, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 10, metadata !785, metadata !DIExpression()), !dbg !786
  %2 = mul i64 %0, -7046029254386353131, !dbg !788
  %3 = lshr i64 %2, 54, !dbg !791
  call void @llvm.dbg.value(metadata i64 %3, metadata !776, metadata !DIExpression()), !dbg !778
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !792
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !793, metadata !DIExpression()) #7, !dbg !798
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !800
  call void @llvm.dbg.value(metadata i8* %5, metadata !801, metadata !DIExpression()) #7, !dbg !804
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #6, !dbg !806
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !798
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !798
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !807
  call void @llvm.dbg.value(metadata i64* %6, metadata !508, metadata !DIExpression()) #7, !dbg !809
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !809
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !809
  %7 = cmpxchg weak i64* %6, i64 0, i64 1 acquire monotonic, !dbg !811
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !811
  br i1 %8, label %11, label %9, !dbg !812

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !813
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !793, metadata !DIExpression()) #7, !dbg !798
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !814
  br label %11, !dbg !816

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !817, metadata !DIExpression()) #7, !dbg !820
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #6, !dbg !822
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !823
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #4 !dbg !824 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !836, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %2, metadata !837, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %1, metadata !779, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 10, metadata !785, metadata !DIExpression()), !dbg !851
  %4 = mul i64 %1, -7046029254386353131, !dbg !853
  %5 = lshr i64 %4, 54, !dbg !854
  call void @llvm.dbg.value(metadata i64 %5, metadata !838, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %2, metadata !779, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 10, metadata !785, metadata !DIExpression()), !dbg !855
  %6 = mul i64 %2, -7046029254386353131, !dbg !857
  %7 = lshr i64 %6, 54, !dbg !858
  call void @llvm.dbg.value(metadata i64 %7, metadata !839, metadata !DIExpression()), !dbg !850
  %8 = icmp eq i64 %5, %7, !dbg !859
  br i1 %8, label %9, label %17, !dbg !860

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !861
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !840, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !793, metadata !DIExpression()) #7, !dbg !863
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !865
  call void @llvm.dbg.value(metadata i8* %11, metadata !801, metadata !DIExpression()) #7, !dbg !866
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #6, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !863
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !863
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !869
  call void @llvm.dbg.value(metadata i64* %12, metadata !508, metadata !DIExpression()) #7, !dbg !870
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !870
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !870
  %13 = cmpxchg weak i64* %12, i64 0, i64 1 acquire monotonic, !dbg !872
  %14 = extractvalue { i64, i1 } %13, 1, !dbg !872
  br i1 %14, label %51, label %15, !dbg !873

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !874
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !793, metadata !DIExpression()) #7, !dbg !863
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %16) #6, !dbg !875
  br label %51, !dbg !876

17:                                               ; preds = %3
  %18 = icmp ult i64 %5, %7, !dbg !877
  br i1 %18, label %19, label %35, !dbg !878

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !879
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !843, metadata !DIExpression()), !dbg !880
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !881
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !846, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !793, metadata !DIExpression()) #7, !dbg !882
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !884
  call void @llvm.dbg.value(metadata i8* %22, metadata !801, metadata !DIExpression()) #7, !dbg !885
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #6, !dbg !887
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !882
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !882
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !888
  call void @llvm.dbg.value(metadata i64* %23, metadata !508, metadata !DIExpression()) #7, !dbg !889
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !889
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !889
  %24 = cmpxchg weak i64* %23, i64 0, i64 1 acquire monotonic, !dbg !891
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !891
  br i1 %25, label %28, label %26, !dbg !892

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !793, metadata !DIExpression()) #7, !dbg !882
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #6, !dbg !894
  br label %28, !dbg !895

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !817, metadata !DIExpression()) #7, !dbg !896
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #6, !dbg !898
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !793, metadata !DIExpression()) #7, !dbg !899
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !901
  call void @llvm.dbg.value(metadata i8* %29, metadata !801, metadata !DIExpression()) #7, !dbg !902
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #6, !dbg !904
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !899
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !899
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, i32 0, !dbg !905
  call void @llvm.dbg.value(metadata i64* %30, metadata !508, metadata !DIExpression()) #7, !dbg !906
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !906
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !906
  %31 = cmpxchg weak i64* %30, i64 0, i64 1 acquire monotonic, !dbg !908
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !908
  br i1 %32, label %51, label %33, !dbg !909

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, !dbg !910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !793, metadata !DIExpression()) #7, !dbg !899
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %34) #6, !dbg !911
  br label %51, !dbg !912

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !913
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !847, metadata !DIExpression()), !dbg !914
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !915
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !849, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !793, metadata !DIExpression()) #7, !dbg !916
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !918
  call void @llvm.dbg.value(metadata i8* %38, metadata !801, metadata !DIExpression()) #7, !dbg !919
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #6, !dbg !921
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !916
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !916
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, i32 0, !dbg !922
  call void @llvm.dbg.value(metadata i64* %39, metadata !508, metadata !DIExpression()) #7, !dbg !923
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !923
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !923
  %40 = cmpxchg weak i64* %39, i64 0, i64 1 acquire monotonic, !dbg !925
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !925
  br i1 %41, label %44, label %42, !dbg !926

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, !dbg !927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !793, metadata !DIExpression()) #7, !dbg !916
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %43) #6, !dbg !928
  br label %44, !dbg !929

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !817, metadata !DIExpression()) #7, !dbg !930
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #6, !dbg !932
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !793, metadata !DIExpression()) #7, !dbg !933
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !935
  call void @llvm.dbg.value(metadata i8* %45, metadata !801, metadata !DIExpression()) #7, !dbg !936
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #6, !dbg !938
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #7, !dbg !933
  call void @llvm.dbg.value(metadata i64 1, metadata !797, metadata !DIExpression()) #7, !dbg !933
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, i32 0, !dbg !939
  call void @llvm.dbg.value(metadata i64* %46, metadata !508, metadata !DIExpression()) #7, !dbg !940
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !940
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !940
  %47 = cmpxchg weak i64* %46, i64 0, i64 1 acquire monotonic, !dbg !942
  %48 = extractvalue { i64, i1 } %47, 1, !dbg !942
  br i1 %48, label %51, label %49, !dbg !943

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, !dbg !944
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !793, metadata !DIExpression()) #7, !dbg !933
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %50) #6, !dbg !945
  br label %51, !dbg !946

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #6, !dbg !947
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !947
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 8, !dbg !947, !tbaa !452
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !947
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 8, !dbg !947, !tbaa !452
  ret void, !dbg !948
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 !dbg !949 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !954, metadata !DIExpression()), !dbg !955
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !956
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !956, !tbaa !958
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !960
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !960, !tbaa !961
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !962
  br i1 %6, label %7, label %18, !dbg !963

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !964, metadata !DIExpression()) #7, !dbg !970
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !973
  call void @llvm.dbg.value(metadata i8* %8, metadata !974, metadata !DIExpression()) #7, !dbg !977
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #6, !dbg !979
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !980
  call void @llvm.dbg.value(metadata i64* %10, metadata !981, metadata !DIExpression()) #7, !dbg !985
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !985
  %11 = atomicrmw and i64* %10, i64 -2 release, !dbg !987
  call void @llvm.dbg.value(metadata i64 %11, metadata !967, metadata !DIExpression()) #7, !dbg !970
  %12 = and i64 %11, 2, !dbg !988
  %13 = icmp ne i64 %12, 0, !dbg !989
  call void @llvm.dbg.value(metadata i1 %13, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !970
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !970
  %14 = icmp ult i64 %11, 4
  %15 = or i1 %14, %13, !dbg !990
  call void @llvm.dbg.value(metadata i1 %14, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !970
  br i1 %15, label %66, label %16, !dbg !990

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !992
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !964, metadata !DIExpression()) #7, !dbg !970
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %17) #6, !dbg !993
  br label %66, !dbg !995

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !996
  br i1 %19, label %20, label %43, !dbg !998

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !964, metadata !DIExpression()) #7, !dbg !999
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %21, metadata !974, metadata !DIExpression()) #7, !dbg !1003
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #6, !dbg !1005
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !1006
  call void @llvm.dbg.value(metadata i64* %23, metadata !981, metadata !DIExpression()) #7, !dbg !1007
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1007
  %24 = atomicrmw and i64* %23, i64 -2 release, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %24, metadata !967, metadata !DIExpression()) #7, !dbg !999
  %25 = and i64 %24, 2, !dbg !1010
  %26 = icmp ne i64 %25, 0, !dbg !1011
  call void @llvm.dbg.value(metadata i1 %26, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !999
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !999
  %27 = icmp ult i64 %24, 4
  %28 = or i1 %27, %26, !dbg !1012
  call void @llvm.dbg.value(metadata i1 %27, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !999
  br i1 %28, label %31, label %29, !dbg !1012

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !1013
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !964, metadata !DIExpression()) #7, !dbg !999
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %30) #6, !dbg !1014
  br label %31, !dbg !1015

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !1016, metadata !DIExpression()) #7, !dbg !1019
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #6, !dbg !1021
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !1022, !tbaa !961
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !964, metadata !DIExpression()) #7, !dbg !1023
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %33, metadata !974, metadata !DIExpression()) #7, !dbg !1026
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #6, !dbg !1028
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, i32 0, !dbg !1029
  call void @llvm.dbg.value(metadata i64* %35, metadata !981, metadata !DIExpression()) #7, !dbg !1030
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1030
  %36 = atomicrmw and i64* %35, i64 -2 release, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %36, metadata !967, metadata !DIExpression()) #7, !dbg !1023
  %37 = and i64 %36, 2, !dbg !1033
  %38 = icmp ne i64 %37, 0, !dbg !1034
  call void @llvm.dbg.value(metadata i1 %38, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1023
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1023
  %39 = icmp ult i64 %36, 4
  %40 = or i1 %39, %38, !dbg !1035
  call void @llvm.dbg.value(metadata i1 %39, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1023
  br i1 %40, label %66, label %41, !dbg !1035

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, !dbg !1036
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !964, metadata !DIExpression()) #7, !dbg !1023
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %42) #6, !dbg !1037
  br label %66, !dbg !1038

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !964, metadata !DIExpression()) #7, !dbg !1039
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %44, metadata !974, metadata !DIExpression()) #7, !dbg !1043
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #6, !dbg !1045
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !1046
  call void @llvm.dbg.value(metadata i64* %46, metadata !981, metadata !DIExpression()) #7, !dbg !1047
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1047
  %47 = atomicrmw and i64* %46, i64 -2 release, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %47, metadata !967, metadata !DIExpression()) #7, !dbg !1039
  %48 = and i64 %47, 2, !dbg !1050
  %49 = icmp ne i64 %48, 0, !dbg !1051
  call void @llvm.dbg.value(metadata i1 %49, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49, !dbg !1052
  call void @llvm.dbg.value(metadata i1 %50, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1039
  br i1 %51, label %54, label %52, !dbg !1052

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !1053
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !964, metadata !DIExpression()) #7, !dbg !1039
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %53) #6, !dbg !1054
  br label %54, !dbg !1055

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !1016, metadata !DIExpression()) #7, !dbg !1056
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #6, !dbg !1058
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !1059, !tbaa !958
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !964, metadata !DIExpression()) #7, !dbg !1060
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %56, metadata !974, metadata !DIExpression()) #7, !dbg !1063
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #6, !dbg !1065
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, i32 0, !dbg !1066
  call void @llvm.dbg.value(metadata i64* %58, metadata !981, metadata !DIExpression()) #7, !dbg !1067
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1067
  %59 = atomicrmw and i64* %58, i64 -2 release, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %59, metadata !967, metadata !DIExpression()) #7, !dbg !1060
  %60 = and i64 %59, 2, !dbg !1070
  %61 = icmp ne i64 %60, 0, !dbg !1071
  call void @llvm.dbg.value(metadata i1 %61, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1060
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1060
  %62 = icmp ult i64 %59, 4
  %63 = or i1 %62, %61, !dbg !1072
  call void @llvm.dbg.value(metadata i1 %62, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1060
  br i1 %63, label %66, label %64, !dbg !1072

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, !dbg !1073
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !964, metadata !DIExpression()) #7, !dbg !1060
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %65) #6, !dbg !1074
  br label %66, !dbg !1075

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #6, !dbg !1076
  ret void, !dbg !1077
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1078 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1080, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1081, metadata !DIExpression()), !dbg !1082
  ret i1 true, !dbg !1083
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #5 !dbg !1084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1086, metadata !DIExpression()), !dbg !1087
  ret void, !dbg !1088
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1089 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 %1, metadata !1092, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i1 %2, metadata !1093, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1094
  ret i64 0, !dbg !1095
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1099, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i1 %2, metadata !1100, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1102
  call void @llvm.dbg.value(metadata i1 %3, metadata !1101, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: nounwind
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 !dbg !1104 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1109, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1110, metadata !DIExpression()), !dbg !1114
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #7, !dbg !1115
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1111, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1117, metadata !DIExpression()) #7, !dbg !1120
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !546, metadata !DIExpression()) #7, !dbg !1122
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !1124
  store i8 0, i8* %6, align 8, !dbg !1124, !tbaa !553
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !1125
  %8 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t* nonnull %7, i8* null) #6, !dbg !1126
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !1127
  %10 = call i32 @pthread_cond_init(%struct.pthread_cond_t* nonnull %9, i8* null) #6, !dbg !1128
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !1129
  store i64 0, i64* %11, align 8, !dbg !1129, !tbaa !1130
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !1133
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1133, !tbaa !1134
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !1135
  store i64 0, i64* %13, align 8, !dbg !1135, !tbaa !1136
  %14 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1137
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !1112, metadata !DIExpression()), !dbg !1114
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !1138
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1138
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1113, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1140, metadata !DIExpression()), !dbg !1144
  store i8 0, i8* %15, align 8, !dbg !1146, !tbaa !1147
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !1149
  store i64 0, i64* %16, align 8, !dbg !1149, !tbaa !1150
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !1151
  %18 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %17, align 8, !dbg !1151, !tbaa !1153
  %19 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1155
  %20 = call zeroext i1 %18(i8* nonnull %19, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #6, !dbg !1156
  br i1 %20, label %33, label %21, !dbg !1157

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !964, metadata !DIExpression()) #7, !dbg !1158
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14 to i8*, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %22, metadata !974, metadata !DIExpression()) #7, !dbg !1162
  %23 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %22, i32 1) #6, !dbg !1164
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0, !dbg !1165
  call void @llvm.dbg.value(metadata i64* %24, metadata !981, metadata !DIExpression()) #7, !dbg !1166
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1166
  %25 = atomicrmw and i64* %24, i64 -2 release, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %25, metadata !967, metadata !DIExpression()) #7, !dbg !1158
  %26 = and i64 %25, 2, !dbg !1169
  %27 = icmp ne i64 %26, 0, !dbg !1170
  call void @llvm.dbg.value(metadata i1 %27, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1158
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1158
  %28 = icmp ult i64 %25, 4
  %29 = or i1 %28, %27, !dbg !1171
  call void @llvm.dbg.value(metadata i1 %28, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1158
  br i1 %29, label %32, label %30, !dbg !1171

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, !dbg !1172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !964, metadata !DIExpression()) #7, !dbg !1158
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #6, !dbg !1173
  br label %32, !dbg !1174

32:                                               ; preds = %21, %30
  call void @llvm.dbg.value(metadata i8* %22, metadata !1016, metadata !DIExpression()) #7, !dbg !1175
  call void @__tsan_mutex_post_unlock(i8* nonnull %22, i32 1) #6, !dbg !1177
  br label %64, !dbg !1178

33:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1179, !tbaa !1134
  store i64 %0, i64* %11, align 8, !dbg !1180, !tbaa !1130
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !568, metadata !DIExpression()), !dbg !1181
  store i8 1, i8* %6, align 8, !dbg !1183, !tbaa !553
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 1, !dbg !1184
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !dbg !1184, !tbaa !1186
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1189
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2, !dbg !1190
  %38 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, align 8, !dbg !1190
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %38, i64 0, i32 2, !dbg !1190
  %40 = select i1 %36, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, !dbg !1190
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 8, !dbg !1191, !tbaa !452
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 2, !dbg !1192
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1193, !tbaa !1194
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, metadata !964, metadata !DIExpression()) #7, !dbg !1195
  %42 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14 to i8*, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %42, metadata !974, metadata !DIExpression()) #7, !dbg !1198
  %43 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %42, i32 1) #6, !dbg !1200
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, i32 0, !dbg !1201
  call void @llvm.dbg.value(metadata i64* %44, metadata !981, metadata !DIExpression()) #7, !dbg !1202
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1202
  %45 = atomicrmw and i64* %44, i64 -2 release, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %45, metadata !967, metadata !DIExpression()) #7, !dbg !1195
  %46 = and i64 %45, 2, !dbg !1205
  %47 = icmp ne i64 %46, 0, !dbg !1206
  call void @llvm.dbg.value(metadata i1 %47, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1195
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1195
  %48 = icmp ult i64 %45, 4
  %49 = or i1 %48, %47, !dbg !1207
  call void @llvm.dbg.value(metadata i1 %48, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1195
  br i1 %49, label %52, label %50, !dbg !1207

50:                                               ; preds = %33
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %14, i64 0, i32 0, !dbg !1208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %51, metadata !964, metadata !DIExpression()) #7, !dbg !1195
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %51) #6, !dbg !1209
  br label %52, !dbg !1210

52:                                               ; preds = %33, %50
  call void @llvm.dbg.value(metadata i8* %42, metadata !1016, metadata !DIExpression()) #7, !dbg !1211
  call void @__tsan_mutex_post_unlock(i8* nonnull %42, i32 1) #6, !dbg !1213
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1214
  %54 = load void (i8*)*, void (i8*)** %53, align 8, !dbg !1214, !tbaa !1215
  call void %54(i8* nonnull %19) #6, !dbg !1216
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !596, metadata !DIExpression()) #7, !dbg !1217
  %55 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1219
  %56 = load i8, i8* %6, align 8, !dbg !1220, !tbaa !553, !range !604
  %57 = icmp eq i8 %56, 0, !dbg !1220
  br i1 %57, label %62, label %58, !dbg !1221

58:                                               ; preds = %52, %58
  %59 = call i32 @pthread_cond_wait(%struct.pthread_cond_t* nonnull %9, %struct.pthread_mutex_t* nonnull %7) #6, !dbg !1222
  %60 = load i8, i8* %6, align 8, !dbg !1220, !tbaa !553, !range !604
  %61 = icmp eq i8 %60, 0, !dbg !1220
  br i1 %61, label %62, label %58, !dbg !1221, !llvm.loop !1223

62:                                               ; preds = %58, %52
  %63 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1225
  br label %64, !dbg !1226

64:                                               ; preds = %62, %32
  %65 = phi i64* [ %13, %62 ], [ %16, %32 ]
  %66 = load i64, i64* %65, align 8, !dbg !1114, !tbaa !1227
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1228
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1229, metadata !DIExpression()) #7, !dbg !1232
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !621, metadata !DIExpression()) #7, !dbg !1234
  %67 = call i32 @pthread_cond_destroy(%struct.pthread_cond_t* nonnull %9) #6, !dbg !1237
  %68 = call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t* nonnull %7) #6, !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #7, !dbg !1228
  ret i64 %66, !dbg !1228
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 !dbg !1239 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1241, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1242, metadata !DIExpression()), !dbg !1258
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1259
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1243, metadata !DIExpression()), !dbg !1258
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1260
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1244, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1245, metadata !DIExpression()), !dbg !1258
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1261, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1246, metadata !DIExpression()), !dbg !1258
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %12, !dbg !1262

12:                                               ; preds = %62, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %63, %62 ], !dbg !1263
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %64, %62 ], !dbg !1264
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %65, %62 ], !dbg !1265
  %16 = phi i64 [ undef, %2 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1246, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1245, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1244, metadata !DIExpression()), !dbg !1258
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1266
  br i1 %17, label %67, label %18, !dbg !1262

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64* %19, metadata !489, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1268
  %20 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %20, metadata !1247, metadata !DIExpression()), !dbg !1271
  %21 = icmp eq i64 %20, %0, !dbg !1272
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 2, !dbg !1273
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 8, !dbg !1273, !tbaa !1134
  br i1 %21, label %24, label %62, !dbg !1274

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1249, metadata !DIExpression()), !dbg !1275
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 8, !dbg !1276, !tbaa !452
  call void @llvm.dbg.value(metadata i8 0, metadata !1252, metadata !DIExpression()), !dbg !1275
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1277, !tbaa !1194
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1278
  br i1 %26, label %29, label %27, !dbg !1279

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1253, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 0, metadata !1252, metadata !DIExpression()), !dbg !1275
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1281
  br i1 %28, label %41, label %30, !dbg !1282

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1283, !tbaa !1194
  br label %41, !dbg !1285

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1253, metadata !DIExpression()), !dbg !1280
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64* %32, metadata !489, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1287
  %33 = load atomic i64, i64* %32 monotonic, align 8, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %33, metadata !1256, metadata !DIExpression()), !dbg !1290
  %34 = icmp eq i64 %33, %0, !dbg !1291
  call void @llvm.dbg.value(metadata i1 %34, metadata !1252, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1275
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 2, !dbg !1292
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1292, !tbaa !1134
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1253, metadata !DIExpression()), !dbg !1280
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1281
  %38 = or i1 %34, %37, !dbg !1293
  br i1 %38, label %39, label %30, !dbg !1282, !llvm.loop !1294

39:                                               ; preds = %30
  %40 = zext i1 %34 to i8, !dbg !1296
  call void @llvm.dbg.value(metadata i8 %40, metadata !1252, metadata !DIExpression()), !dbg !1275
  br label %41, !dbg !1297

41:                                               ; preds = %39, %27, %29
  %42 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %40, %39 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %42, metadata !1252, metadata !DIExpression()), !dbg !1275
  %43 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1297, !tbaa !1299
  %44 = icmp ne i8 %42, 0, !dbg !1300
  %45 = tail call i64 %43(i8* nonnull %8, i32 1, i1 zeroext %44) #6, !dbg !1301
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 3, !dbg !1302
  store i64 %45, i64* %46, align 8, !dbg !1303, !tbaa !1136
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !742, metadata !DIExpression()) #7, !dbg !1304
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 0, !dbg !1306
  %48 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %47) #6, !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !964, metadata !DIExpression()) #7, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %9, metadata !974, metadata !DIExpression()) #7, !dbg !1310
  %49 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1312
  call void @llvm.dbg.value(metadata i64* %10, metadata !981, metadata !DIExpression()) #7, !dbg !1313
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1313
  %50 = atomicrmw and i64* %10, i64 -2 release, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %50, metadata !967, metadata !DIExpression()) #7, !dbg !1308
  %51 = and i64 %50, 2, !dbg !1316
  %52 = icmp ne i64 %51, 0, !dbg !1317
  call void @llvm.dbg.value(metadata i1 %52, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1308
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1308
  %53 = icmp ult i64 %50, 4
  %54 = or i1 %53, %52, !dbg !1318
  call void @llvm.dbg.value(metadata i1 %53, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1308
  br i1 %54, label %56, label %55, !dbg !1318

55:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !964, metadata !DIExpression()) #7, !dbg !1308
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #6, !dbg !1319
  br label %56, !dbg !1320

56:                                               ; preds = %41, %55
  call void @llvm.dbg.value(metadata i8* %9, metadata !1016, metadata !DIExpression()) #7, !dbg !1321
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1323
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !749, metadata !DIExpression()) #7, !dbg !1324
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 2, !dbg !1326
  store i8 0, i8* %57, align 8, !dbg !1327, !tbaa !553
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 1, !dbg !1328
  %59 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %58) #6, !dbg !1329
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !758, metadata !DIExpression()) #7, !dbg !1330
  %60 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %47) #6, !dbg !1332
  %61 = zext i8 %42 to i64
  br label %62

62:                                               ; preds = %18, %56
  %63 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %56 ], [ %22, %18 ], !dbg !1258
  %64 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %56 ], [ %15, %18 ], !dbg !1258
  %65 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %56 ], [ %23, %18 ], !dbg !1258
  %66 = phi i64 [ %61, %56 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %65, metadata !1246, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, metadata !1245, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, metadata !1244, metadata !DIExpression()), !dbg !1258
  br i1 %21, label %78, label %12, !llvm.loop !1333

67:                                               ; preds = %12
  %68 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1335, !tbaa !1299
  %69 = tail call i64 %68(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1336
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !964, metadata !DIExpression()) #7, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %9, metadata !974, metadata !DIExpression()) #7, !dbg !1339
  %70 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1341
  call void @llvm.dbg.value(metadata i64* %10, metadata !981, metadata !DIExpression()) #7, !dbg !1342
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1342
  %71 = atomicrmw and i64* %10, i64 -2 release, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %71, metadata !967, metadata !DIExpression()) #7, !dbg !1337
  %72 = and i64 %71, 2, !dbg !1345
  %73 = icmp ne i64 %72, 0, !dbg !1346
  call void @llvm.dbg.value(metadata i1 %73, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1337
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1337
  %74 = icmp ult i64 %71, 4
  %75 = or i1 %74, %73, !dbg !1347
  call void @llvm.dbg.value(metadata i1 %74, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1337
  br i1 %75, label %77, label %76, !dbg !1347

76:                                               ; preds = %67
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !964, metadata !DIExpression()) #7, !dbg !1337
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #6, !dbg !1348
  br label %77, !dbg !1349

77:                                               ; preds = %67, %76
  call void @llvm.dbg.value(metadata i8* %9, metadata !1016, metadata !DIExpression()) #7, !dbg !1350
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1352
  br label %78, !dbg !1353

78:                                               ; preds = %62, %77
  %79 = phi i64 [ 0, %77 ], [ %66, %62 ], !dbg !1258
  ret i64 %79, !dbg !1354
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy(i64 %0, i64 %1) local_unnamed_addr #0 !dbg !1355 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1359, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %1, metadata !1360, metadata !DIExpression()), !dbg !1387
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #8, !dbg !1388
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1361, metadata !DIExpression()), !dbg !1387
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1389
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1362, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1363, metadata !DIExpression()), !dbg !1387
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1390, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1364, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1365, metadata !DIExpression()), !dbg !1387
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1391
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1367, metadata !DIExpression()), !dbg !1392
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1393
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1371, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 16, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1363, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1364, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1365, metadata !DIExpression()), !dbg !1387
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1394
  br i1 %9, label %60, label %10, !dbg !1395

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1395

12:                                               ; preds = %10, %54
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %58, %54 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %54 ]
  %15 = phi i64 [ 16, %10 ], [ %57, %54 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %56, %54 ]
  %17 = phi i64 [ 0, %10 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1363, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1364, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %15, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1371, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %17, metadata !1365, metadata !DIExpression()), !dbg !1387
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64* %18, metadata !489, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1397
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1399
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1400
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1400, !tbaa !1134
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1375, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %19, metadata !1373, metadata !DIExpression()), !dbg !1401
  %22 = icmp eq i64 %19, %0, !dbg !1402
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1403, !tbaa !452
  br i1 %22, label %23, label %54, !dbg !1404

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1405, !tbaa !1194
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1407
  br i1 %25, label %26, label %27, !dbg !1408

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1409, !tbaa !1194
  br label %27, !dbg !1411

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1412
  br i1 %28, label %29, label %46, !dbg !1413

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1376, metadata !DIExpression()), !dbg !1414
  %30 = shl i64 %15, 4, !dbg !1415
  %31 = call i8* @malloc(i64 %30) #6, !dbg !1416
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1417
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1371, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1381, metadata !DIExpression()), !dbg !1418
  %33 = icmp eq i64 %15, 0, !dbg !1419
  br i1 %33, label %34, label %37, !dbg !1421

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %35, metadata !1372, metadata !DIExpression()), !dbg !1387
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1423
  br i1 %36, label %46, label %44, !dbg !1425

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1381, metadata !DIExpression()), !dbg !1418
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1426
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1426, !tbaa !452
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1428
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1429, !tbaa !452
  %42 = add nuw i64 %38, 1, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %42, metadata !1381, metadata !DIExpression()), !dbg !1418
  %43 = icmp eq i64 %42, %15, !dbg !1419
  br i1 %43, label %34, label %37, !dbg !1421, !llvm.loop !1431

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1433
  call void @free(i8* %45) #6, !dbg !1435
  br label %46, !dbg !1436

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1387
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1387
  call void @llvm.dbg.value(metadata i64 %48, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1371, metadata !DIExpression()), !dbg !1387
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1437
  store i64 %1, i64* %49, align 8, !dbg !1438, !tbaa !1136
  %50 = add i64 %17, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %50, metadata !1365, metadata !DIExpression()), !dbg !1387
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1440
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1441, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !742, metadata !DIExpression()) #7, !dbg !1442
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1444
  %53 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %52) #6, !dbg !1445
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1364, metadata !DIExpression()), !dbg !1387
  br label %54, !dbg !1446

54:                                               ; preds = %12, %46
  %55 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1387
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1387
  %57 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1387
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1363, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1364, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %57, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %56, metadata !1371, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %55, metadata !1365, metadata !DIExpression()), !dbg !1387
  %59 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1394
  br i1 %59, label %60, label %12, !dbg !1395, !llvm.loop !1447

60:                                               ; preds = %54, %2
  %61 = phi i64 [ 0, %2 ], [ %55, %54 ], !dbg !1387
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %56, %54 ], !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !964, metadata !DIExpression()) #7, !dbg !1449
  %63 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %63, metadata !974, metadata !DIExpression()) #7, !dbg !1452
  %64 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %63, i32 1) #6, !dbg !1454
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1455
  call void @llvm.dbg.value(metadata i64* %65, metadata !981, metadata !DIExpression()) #7, !dbg !1456
  call void @llvm.dbg.value(metadata i64 -2, metadata !984, metadata !DIExpression()) #7, !dbg !1456
  %66 = atomicrmw and i64* %65, i64 -2 release, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %66, metadata !967, metadata !DIExpression()) #7, !dbg !1449
  %67 = and i64 %66, 2, !dbg !1459
  %68 = icmp ne i64 %67, 0, !dbg !1460
  call void @llvm.dbg.value(metadata i1 %68, metadata !968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1449
  call void @llvm.dbg.value(metadata i1 undef, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1449
  %69 = icmp ult i64 %66, 4
  %70 = or i1 %69, %68, !dbg !1461
  call void @llvm.dbg.value(metadata i1 %69, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1449
  br i1 %70, label %73, label %71, !dbg !1461

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %72, metadata !964, metadata !DIExpression()) #7, !dbg !1449
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %72) #6, !dbg !1463
  br label %73, !dbg !1464

73:                                               ; preds = %60, %71
  call void @llvm.dbg.value(metadata i8* %63, metadata !1016, metadata !DIExpression()) #7, !dbg !1465
  call void @__tsan_mutex_post_unlock(i8* nonnull %63, i32 1) #6, !dbg !1467
  call void @llvm.dbg.value(metadata i64 0, metadata !1383, metadata !DIExpression()), !dbg !1468
  %74 = icmp eq i64 %61, 0, !dbg !1469
  br i1 %74, label %85, label %76, !dbg !1471

75:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 0, metadata !1385, metadata !DIExpression()), !dbg !1472
  br i1 %74, label %85, label %87, !dbg !1473

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %83, %76 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !1383, metadata !DIExpression()), !dbg !1468
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %77, !dbg !1474
  %79 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %78, align 8, !dbg !1474, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !749, metadata !DIExpression()) #7, !dbg !1476
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, i64 0, i32 0, i32 2, !dbg !1478
  store i8 0, i8* %80, align 8, !dbg !1479, !tbaa !553
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, i64 0, i32 0, i32 1, !dbg !1480
  %82 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %81) #6, !dbg !1481
  %83 = add nuw i64 %77, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %83, metadata !1383, metadata !DIExpression()), !dbg !1468
  %84 = icmp eq i64 %83, %61, !dbg !1469
  br i1 %84, label %75, label %76, !dbg !1471, !llvm.loop !1483

85:                                               ; preds = %87, %73, %75
  %86 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, %8, !dbg !1485
  br i1 %86, label %97, label %95, !dbg !1487

87:                                               ; preds = %75, %87
  %88 = phi i64 [ %93, %87 ], [ 0, %75 ]
  call void @llvm.dbg.value(metadata i64 %88, metadata !1385, metadata !DIExpression()), !dbg !1472
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, i64 %88, !dbg !1488
  %90 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %89, align 8, !dbg !1488, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %90, metadata !758, metadata !DIExpression()) #7, !dbg !1491
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %90, i64 0, i32 0, i32 0, !dbg !1493
  %92 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %91) #6, !dbg !1494
  %93 = add nuw i64 %88, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %93, metadata !1385, metadata !DIExpression()), !dbg !1472
  %94 = icmp eq i64 %93, %61, !dbg !1496
  br i1 %94, label %85, label %87, !dbg !1473, !llvm.loop !1497

95:                                               ; preds = %85
  %96 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62 to i8*, !dbg !1499
  call void @free(i8* %96) #6, !dbg !1501
  br label %97, !dbg !1502

97:                                               ; preds = %95, %85
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1503
  ret i64 %61, !dbg !1504
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #4 !dbg !1505 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1509, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %1, metadata !1510, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1511, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %3, metadata !1512, metadata !DIExpression()), !dbg !1524
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1525
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1525
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %1, metadata !1510, metadata !DIExpression()), !dbg !1524
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #8, !dbg !1527
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1528
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1514, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1140, metadata !DIExpression()), !dbg !1530
  store i8 0, i8* %8, align 8, !dbg !1532, !tbaa !1147
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1533
  store i64 0, i64* %9, align 8, !dbg !1533, !tbaa !1150
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1534
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1534, !tbaa !1153
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1536
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #6, !dbg !1537
  br i1 %13, label %15, label %14, !dbg !1538

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1539
  br label %94, !dbg !1541

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1542
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1542, !tbaa !958
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1543
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1515, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1516, metadata !DIExpression()), !dbg !1524
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1544, !tbaa !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1517, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1519, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1520, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1516, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1515, metadata !DIExpression()), !dbg !1524
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1545
  br i1 %20, label %73, label %21, !dbg !1546

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1520, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1519, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1517, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1516, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1515, metadata !DIExpression()), !dbg !1524
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64* %28, metadata !489, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1548
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1550
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1551
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1551, !tbaa !1134
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1523, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %29, metadata !1521, metadata !DIExpression()), !dbg !1552
  %32 = icmp eq i64 %29, %0, !dbg !1553
  br i1 %32, label %33, label %50, !dbg !1555

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1556, !tbaa !452
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1558, !tbaa !958
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1560
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1560, !tbaa !1194
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1561
  br i1 %37, label %38, label %39, !dbg !1562

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1563, !tbaa !1194
  br label %39, !dbg !1565

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1566, !tbaa !1147, !range !604
  %41 = icmp ne i8 %40, 0, !dbg !1566
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41, !dbg !1568
  br i1 %43, label %50, label %44, !dbg !1568

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1569
  br i1 %45, label %48, label %46, !dbg !1572

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1573
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1575, !tbaa !1134
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1519, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64* %28, metadata !1576, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64* undef, metadata !1581, metadata !DIExpression()), !dbg !1582
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1584
  br label %50

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1524
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1524
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1585
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1586
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1520, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1519, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1517, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1516, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1515, metadata !DIExpression()), !dbg !1524
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1545
  br i1 %56, label %57, label %21, !dbg !1546, !llvm.loop !1587

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1589
  br i1 %58, label %73, label %59, !dbg !1591

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1592
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1594, !tbaa !1134
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1595
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1595, !tbaa !961
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1597
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1597, !tbaa !1186
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1598
  br i1 %65, label %70, label %66, !dbg !1599

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1600
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1600, !tbaa !1194
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1602
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1603, !tbaa !452
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1604
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1605, !tbaa !1194
  br label %73, !dbg !1606

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1607
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1607, !tbaa !1608
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1609
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #6, !dbg !1610
  br i1 %78, label %79, label %87, !dbg !1611

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1612
  store i64 %3, i64* %80, align 8, !dbg !1615, !tbaa !1136
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !742, metadata !DIExpression()) #7, !dbg !1616
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1618
  %82 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t* nonnull %81) #6, !dbg !1619
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1620
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !749, metadata !DIExpression()) #7, !dbg !1621
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1623
  store i8 0, i8* %83, align 8, !dbg !1624, !tbaa !553
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1625
  %85 = call i32 @pthread_cond_signal(%struct.pthread_cond_t* nonnull %84) #6, !dbg !1626
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !758, metadata !DIExpression()) #7, !dbg !1627
  %86 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t* nonnull %81) #6, !dbg !1629
  br label %88, !dbg !1630

87:                                               ; preds = %73
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1631
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i8, i8* %8, align 8, !dbg !1633
  %90 = and i8 %89, 1, !dbg !1633
  %91 = icmp ne i8 %90, 0, !dbg !1633
  %92 = and i1 %78, %91, !dbg !1633
  %93 = zext i1 %92 to i32, !dbg !1634
  br label %94

94:                                               ; preds = %88, %14
  %95 = phi i32 [ %93, %88 ], [ 0, %14 ], !dbg !1524
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1635
  ret i32 %95, !dbg !1635
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1636 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1638, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1639, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()), !dbg !1642
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1643
  %4 = bitcast i8* %3 to i64**, !dbg !1643
  %5 = load i64*, i64** %4, align 8, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata i64* %5, metadata !489, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1646
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %6, metadata !1641, metadata !DIExpression()), !dbg !1642
  %7 = icmp eq i64 %6, 3, !dbg !1649
  ret i1 %7, !dbg !1650
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1653, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %1, metadata !1654, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i1 %2, metadata !1655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %0, metadata !1656, metadata !DIExpression()), !dbg !1658
  %4 = select i1 %2, i64 2, i64 0, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %4, metadata !1657, metadata !DIExpression()), !dbg !1658
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1660
  %6 = bitcast i8* %5 to i64**, !dbg !1660
  %7 = load i64*, i64** %6, align 8, !dbg !1660, !tbaa !1644
  call void @llvm.dbg.value(metadata i64* %7, metadata !1661, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64* undef, metadata !1664, metadata !DIExpression()), !dbg !1665
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1667
  ret i64 0, !dbg !1668
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1671, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i32 %1, metadata !1672, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i1 %2, metadata !1673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1678
  call void @llvm.dbg.value(metadata i8* %0, metadata !1674, metadata !DIExpression()), !dbg !1678
  br i1 %2, label %8, label %4, !dbg !1679

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1674, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i64 0, metadata !1675, metadata !DIExpression()), !dbg !1680
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1681
  %6 = bitcast i8* %5 to i64**, !dbg !1681
  %7 = load i64*, i64** %6, align 8, !dbg !1681, !tbaa !1682
  call void @llvm.dbg.value(metadata i64* %7, metadata !1576, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64* undef, metadata !1581, metadata !DIExpression()), !dbg !1684
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1686
  br label %8, !dbg !1687

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1688
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 !dbg !1689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %0, metadata !1693, metadata !DIExpression()), !dbg !1695
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1696
  %4 = bitcast i8* %3 to i64**, !dbg !1696
  %5 = load i64*, i64** %4, align 8, !dbg !1696, !tbaa !1697
  call void @llvm.dbg.value(metadata i64* %5, metadata !489, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1699
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %6, metadata !1694, metadata !DIExpression()), !dbg !1695
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1702
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1702
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1702, !tbaa !1704
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1705
  %11 = icmp eq i64 %6, %10, !dbg !1706
  br i1 %11, label %12, label %30, !dbg !1707

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64* %5, metadata !1576, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64* undef, metadata !1581, metadata !DIExpression()), !dbg !1708
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1710
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1711, !tbaa !1704
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1712, metadata !DIExpression()), !dbg !1718
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1720
  call void @llvm.dbg.value(metadata i64* %14, metadata !489, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1721
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %15, metadata !1715, metadata !DIExpression()), !dbg !1718
  %16 = and i64 %15, 1, !dbg !1724
  %17 = icmp eq i64 %16, 0, !dbg !1726
  br i1 %17, label %27, label %18, !dbg !1727

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %19, metadata !1715, metadata !DIExpression()), !dbg !1718
  %20 = or i64 %19, 2, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %20, metadata !1716, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64* %14, metadata !1730, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64* undef, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64* undef, metadata !1734, metadata !DIExpression()), !dbg !1735
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1738
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1738
  br i1 %22, label %27, label %23, !dbg !1738

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %24, metadata !1715, metadata !DIExpression()), !dbg !1718
  %25 = and i64 %24, 1, !dbg !1724
  %26 = icmp eq i64 %25, 0, !dbg !1726
  br i1 %26, label %27, label %18, !dbg !1727

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1739
  store i8 %28, i8* %29, align 8, !dbg !1740, !tbaa !1147
  br label %30, !dbg !1741

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1742
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i1 %2, metadata !1747, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1750
  call void @llvm.dbg.value(metadata i1 %3, metadata !1748, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %0, metadata !1749, metadata !DIExpression()), !dbg !1750
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1751
  %6 = load i8, i8* %5, align 8, !dbg !1751, !tbaa !1147, !range !604
  %7 = icmp ne i8 %6, 0, !dbg !1751
  %8 = and i1 %7, %3, !dbg !1753
  br i1 %8, label %9, label %15, !dbg !1753

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1754
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1754
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1754, !tbaa !1704
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1756, metadata !DIExpression()), !dbg !1759
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1761
  call void @llvm.dbg.value(metadata i64* %13, metadata !1762, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 2, metadata !1765, metadata !DIExpression()), !dbg !1766
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1768
  br label %15, !dbg !1769

15:                                               ; preds = %4, %9
  ret void, !dbg !1770
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1771 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1773, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1774, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %0, metadata !1775, metadata !DIExpression()), !dbg !1777
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1778
  %4 = bitcast i8* %3 to i64**, !dbg !1778
  %5 = load i64*, i64** %4, align 8, !dbg !1778, !tbaa !1779
  call void @llvm.dbg.value(metadata i64* %5, metadata !489, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()), !dbg !1781
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %6, metadata !1776, metadata !DIExpression()), !dbg !1777
  %7 = icmp eq i64 %6, 0, !dbg !1784
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1786
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1786
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1786, !tbaa !1787
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1786
  br i1 %7, label %12, label %13, !dbg !1788

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %11, metadata !1776, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64* %5, metadata !1576, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64* undef, metadata !1581, metadata !DIExpression()), !dbg !1789
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1792
  br label %17, !dbg !1793

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1794
  br i1 %14, label %17, label %15, !dbg !1796

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1797
  store i64 %11, i64* %16, align 8, !dbg !1799, !tbaa !1150
  br label %17, !dbg !1800

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1777
  ret i1 %18, !dbg !1801
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #4 !dbg !1802 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1804, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %0, metadata !1805, metadata !DIExpression()), !dbg !1806
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1807
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1807
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1807, !tbaa !1787
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1808, metadata !DIExpression()) #7, !dbg !1813
  call void @llvm.dbg.value(metadata i64 1, metadata !1811, metadata !DIExpression()) #7, !dbg !1813
  call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()) #7, !dbg !1813
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1815
  call void @llvm.dbg.value(metadata i64* %6, metadata !587, metadata !DIExpression()) #7, !dbg !1817
  call void @llvm.dbg.value(metadata i64* undef, metadata !590, metadata !DIExpression()) #7, !dbg !1817
  call void @llvm.dbg.value(metadata i64* undef, metadata !591, metadata !DIExpression()) #7, !dbg !1817
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1819
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1819
  br i1 %8, label %22, label %9, !dbg !1820

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1821, metadata !DIExpression()) #7, !dbg !1827
  call void @llvm.dbg.value(metadata i64 1, metadata !1824, metadata !DIExpression()) #7, !dbg !1827
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()) #7, !dbg !1827
  call void @llvm.dbg.value(metadata i64* %6, metadata !1830, metadata !DIExpression()) #7, !dbg !1835
  call void @llvm.dbg.value(metadata i64* undef, metadata !1833, metadata !DIExpression()) #7, !dbg !1835
  call void @llvm.dbg.value(metadata i64* undef, metadata !1834, metadata !DIExpression()) #7, !dbg !1835
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1838
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1838
  br i1 %11, label %22, label %12, !dbg !1839

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1840
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1826, metadata !DIExpression()) #7, !dbg !1841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1842, metadata !DIExpression()) #7, !dbg !1846
  call void @llvm.dbg.value(metadata i64* %6, metadata !1845, metadata !DIExpression()) #7, !dbg !1846
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1848, metadata !DIExpression()) #7, !dbg !1852
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1854
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1855
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 8, !dbg !1855, !tbaa !1215
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1856
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1857
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1857, !tbaa !1608
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1858
  store i64* %6, i64** %18, align 8, !dbg !1858, !tbaa !1644
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1859, !tbaa !1153
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %16, align 8, !dbg !1861, !tbaa !1299
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1862
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1863
  %21 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %20) #6, !dbg !1864
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1865
  br label %22, !dbg !1865

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1866
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %1, metadata !1870, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i1 %2, metadata !1871, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %0, metadata !1872, metadata !DIExpression()), !dbg !1876
  br i1 %2, label %8, label %4, !dbg !1877

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1872, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 0, metadata !1873, metadata !DIExpression()), !dbg !1878
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1879
  %6 = bitcast i8* %5 to i64**, !dbg !1879
  %7 = load i64*, i64** %6, align 8, !dbg !1879, !tbaa !1779
  call void @llvm.dbg.value(metadata i64* %7, metadata !1576, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64* undef, metadata !1581, metadata !DIExpression()), !dbg !1880
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1882
  br label %8, !dbg !1883

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1884
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1885 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1890, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1892, metadata !DIExpression()) #7, !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()) #7, !dbg !1897
  call void @llvm.dbg.value(metadata i64 1, metadata !1896, metadata !DIExpression()) #7, !dbg !1897
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1899
  call void @llvm.dbg.value(metadata i64* %3, metadata !508, metadata !DIExpression()) #7, !dbg !1901
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1901
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !1901
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !1903
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1903
  br i1 %5, label %59, label %6, !dbg !1904

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1892, metadata !DIExpression()) #7, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1890, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1905, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata i32 40, metadata !1908, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()) #7, !dbg !1922
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !1922
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1924
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  br label %16, !dbg !1925

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1908, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %17, metadata !1909, metadata !DIExpression()) #7, !dbg !1919
  %19 = and i64 %17, 1, !dbg !1926
  %20 = icmp eq i64 %19, 0, !dbg !1927
  br i1 %20, label %21, label %32, !dbg !1928

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1909, metadata !DIExpression()) #7, !dbg !1919
  %23 = or i64 %22, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %23, metadata !1910, metadata !DIExpression()) #7, !dbg !1930
  call void @llvm.dbg.value(metadata i64* %3, metadata !508, metadata !DIExpression()) #7, !dbg !1931
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !1931
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !1931
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !1934
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1934
  br i1 %25, label %59, label %26, !dbg !1934

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %18, metadata !1908, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %27, metadata !1909, metadata !DIExpression()) #7, !dbg !1919
  %28 = and i64 %27, 1, !dbg !1926
  %29 = icmp eq i64 %28, 0, !dbg !1927
  br i1 %29, label %21, label %30, !dbg !1928

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !1934
  br label %32, !dbg !1935

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !522, metadata !DIExpression()) #7, !dbg !1938
  %34 = icmp sgt i32 %18, 0, !dbg !1935
  br i1 %34, label %35, label %40, !dbg !1939

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !1908, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1919
  %36 = icmp eq i32 %18, 1, !dbg !1940
  br i1 %36, label %40, label %37, !dbg !1941

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %38, metadata !1908, metadata !DIExpression()) #7, !dbg !1919
  call void @halide_thread_yield() #6, !dbg !1943
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()) #7, !dbg !1945
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !1945
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1947
  br label %55, !dbg !1948

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1909, metadata !DIExpression()) #7, !dbg !1919
  %42 = and i64 %33, 2, !dbg !1949
  %43 = icmp eq i64 %42, 0, !dbg !1950
  br i1 %43, label %44, label %50, !dbg !1951

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !1909, metadata !DIExpression()) #7, !dbg !1919
  %45 = or i64 %33, 2, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %45, metadata !1914, metadata !DIExpression()) #7, !dbg !1953
  call void @llvm.dbg.value(metadata i64* %3, metadata !1730, metadata !DIExpression()) #7, !dbg !1954
  call void @llvm.dbg.value(metadata i64* undef, metadata !1733, metadata !DIExpression()) #7, !dbg !1954
  call void @llvm.dbg.value(metadata i64* undef, metadata !1734, metadata !DIExpression()) #7, !dbg !1954
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !1957
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !1957
  br i1 %47, label %50, label %48, !dbg !1957

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !1957
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1958
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1917, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1842, metadata !DIExpression()) #7, !dbg !1960
  call void @llvm.dbg.value(metadata i64* %3, metadata !1845, metadata !DIExpression()) #7, !dbg !1960
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1848, metadata !DIExpression()) #7, !dbg !1962
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !1964, !tbaa !1215
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1965, !tbaa !1608
  store i64* %3, i64** %13, align 8, !dbg !1966, !tbaa !1644
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1967, !tbaa !1153
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !1968, !tbaa !1299
  %51 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #6, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %51, metadata !1918, metadata !DIExpression()) #7, !dbg !1970
  %52 = icmp eq i64 %51, %14, !dbg !1971
  br i1 %52, label %58, label %53, !dbg !1973

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !1908, metadata !DIExpression()) #7, !dbg !1919
  call void @llvm.dbg.value(metadata i64* %3, metadata !489, metadata !DIExpression()) #7, !dbg !1974
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !1974
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1976
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1977
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !1919, !llvm.loop !1978

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1977
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !1979
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1980 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1983, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1808, metadata !DIExpression()) #7, !dbg !1985
  call void @llvm.dbg.value(metadata i64 1, metadata !1811, metadata !DIExpression()) #7, !dbg !1985
  call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()) #7, !dbg !1985
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1987
  call void @llvm.dbg.value(metadata i64* %3, metadata !587, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i64* undef, metadata !590, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i64* undef, metadata !591, metadata !DIExpression()) #7, !dbg !1988
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !1990
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1990
  br i1 %5, label %19, label %6, !dbg !1991

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1821, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i64 1, metadata !1824, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i64* %3, metadata !1830, metadata !DIExpression()) #7, !dbg !1994
  call void @llvm.dbg.value(metadata i64* undef, metadata !1833, metadata !DIExpression()) #7, !dbg !1994
  call void @llvm.dbg.value(metadata i64* undef, metadata !1834, metadata !DIExpression()) #7, !dbg !1994
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !1996
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1996
  br i1 %8, label %19, label %9, !dbg !1997

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1998
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1826, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1842, metadata !DIExpression()) #7, !dbg !2000
  call void @llvm.dbg.value(metadata i64* %3, metadata !1845, metadata !DIExpression()) #7, !dbg !2000
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1848, metadata !DIExpression()) #7, !dbg !2002
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2004
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2005
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2005, !tbaa !1215
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2006
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2007
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2007, !tbaa !1608
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !2008
  store i64* %3, i64** %15, align 8, !dbg !2008, !tbaa !1644
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2009, !tbaa !1153
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2010, !tbaa !1299
  %16 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !2011
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !2012
  %18 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #6, !dbg !2013
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7, !dbg !2014
  br label %19, !dbg !2014

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2015
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !2016 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2024, metadata !DIExpression()) #7, !dbg !2029
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2031
  call void @llvm.dbg.value(metadata i8* %3, metadata !2032, metadata !DIExpression()) #7, !dbg !2035
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !2037
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2038
  call void @llvm.dbg.value(metadata i64* %4, metadata !489, metadata !DIExpression()) #7, !dbg !2039
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2039
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %5, metadata !2027, metadata !DIExpression()) #7, !dbg !2029
  %6 = icmp eq i64 %5, 0, !dbg !2042
  br i1 %6, label %7, label %8, !dbg !2044

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2045, metadata !DIExpression()) #7, !dbg !2048
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2051
  br label %20, !dbg !2052

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2024, metadata !DIExpression()) #7, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2022, metadata !DIExpression()), !dbg !2023
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #7, !dbg !2053
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2028, metadata !DIExpression()) #7, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %5, metadata !2027, metadata !DIExpression()) #7, !dbg !2029
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2055
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2056, metadata !DIExpression()) #7, !dbg !2061
  call void @llvm.dbg.value(metadata i64* %4, metadata !2059, metadata !DIExpression()) #7, !dbg !2061
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2060, metadata !DIExpression()) #7, !dbg !2061
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1848, metadata !DIExpression()) #7, !dbg !2063
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2065
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2066
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2066, !tbaa !1215
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2067
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2067, !tbaa !1299
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2068
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !2069
  store i64* %4, i64** %15, align 8, !dbg !2069, !tbaa !1697
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !2070
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !2070, !tbaa !1704
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2071, !tbaa !1153
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2073, !tbaa !1608
  %17 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %5, metadata !2027, metadata !DIExpression()) #7, !dbg !2029
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !2075
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %17, i64 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %18, i64 0) #6, !dbg !2076
  call void @llvm.dbg.value(metadata i8* %3, metadata !2045, metadata !DIExpression()) #7, !dbg !2077
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2079
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #7, !dbg !2080
  br label %20, !dbg !2080

20:                                               ; preds = %7, %8
  ret void, !dbg !2081
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !2082 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2085, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2087, metadata !DIExpression()) #7, !dbg !2092
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %3, metadata !2032, metadata !DIExpression()) #7, !dbg !2095
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !2097
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2098
  call void @llvm.dbg.value(metadata i64* %4, metadata !489, metadata !DIExpression()) #7, !dbg !2099
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2099
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %5, metadata !2090, metadata !DIExpression()) #7, !dbg !2092
  %6 = icmp eq i64 %5, 0, !dbg !2102
  br i1 %6, label %7, label %8, !dbg !2104

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2045, metadata !DIExpression()) #7, !dbg !2105
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2108
  br label %20, !dbg !2109

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2087, metadata !DIExpression()) #7, !dbg !2092
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2085, metadata !DIExpression()), !dbg !2086
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #7, !dbg !2110
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2091, metadata !DIExpression()) #7, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %5, metadata !2090, metadata !DIExpression()) #7, !dbg !2092
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2112
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2113, metadata !DIExpression()) #7, !dbg !2118
  call void @llvm.dbg.value(metadata i64* %4, metadata !2116, metadata !DIExpression()) #7, !dbg !2118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2117, metadata !DIExpression()) #7, !dbg !2118
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1848, metadata !DIExpression()) #7, !dbg !2120
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2122
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2122, !tbaa !1153
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2123
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2123, !tbaa !1215
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2124
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2125
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2125, !tbaa !1608
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !2126
  store i64* %4, i64** %15, align 8, !dbg !2126, !tbaa !1682
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !2127
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !2127, !tbaa !2128
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2129, !tbaa !1299
  %17 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2131
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !2132
  %19 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %18) #6, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %3, metadata !2045, metadata !DIExpression()) #7, !dbg !2134
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #7, !dbg !2137
  br label %20, !dbg !2137

20:                                               ; preds = %7, %8
  ret void, !dbg !2138
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !2139 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2143, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2148, metadata !DIExpression()) #7, !dbg !2157
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2151, metadata !DIExpression()) #7, !dbg !2157
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2159
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2159
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2152, metadata !DIExpression()) #7, !dbg !2160
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2161
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2162, metadata !DIExpression()) #7, !dbg !2167
  call void @llvm.dbg.value(metadata i64* %6, metadata !2165, metadata !DIExpression()) #7, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2166, metadata !DIExpression()) #7, !dbg !2167
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1848, metadata !DIExpression()) #7, !dbg !2169
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !2171
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !2172
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !2173
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !2174
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !2174, !tbaa !1608
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !2175
  store i64* %6, i64** %11, align 8, !dbg !2175, !tbaa !1779
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !2176
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2176
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !2176, !tbaa !1787
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !2177, !tbaa !1153
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 8, !dbg !2179, !tbaa !1215
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %9, align 8, !dbg !2180, !tbaa !1299
  %14 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2181
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !2182
  %16 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #6, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %16, metadata !2153, metadata !DIExpression()) #7, !dbg !2157
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !2184
  %18 = icmp eq i64 %16, %17, !dbg !2185
  br i1 %18, label %75, label %19, !dbg !2186

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1892, metadata !DIExpression()) #7, !dbg !2187
  call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()) #7, !dbg !2187
  call void @llvm.dbg.value(metadata i64 1, metadata !1896, metadata !DIExpression()) #7, !dbg !2187
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2190
  call void @llvm.dbg.value(metadata i64* %20, metadata !508, metadata !DIExpression()) #7, !dbg !2191
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !2191
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !2191
  %21 = cmpxchg weak i64* %20, i64 0, i64 1 acquire monotonic, !dbg !2193
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !2193
  br i1 %22, label %83, label %23, !dbg !2194

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1905, metadata !DIExpression()) #7, !dbg !2195
  call void @llvm.dbg.value(metadata i32 40, metadata !1908, metadata !DIExpression()) #7, !dbg !2195
  call void @llvm.dbg.value(metadata i64* %20, metadata !489, metadata !DIExpression()) #7, !dbg !2197
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2197
  %24 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2199
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !2200

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1908, metadata !DIExpression()) #7, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %33, metadata !1909, metadata !DIExpression()) #7, !dbg !2195
  %35 = and i64 %33, 1, !dbg !2201
  %36 = icmp eq i64 %35, 0, !dbg !2202
  br i1 %36, label %37, label %48, !dbg !2203

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1909, metadata !DIExpression()) #7, !dbg !2195
  %39 = or i64 %38, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %39, metadata !1910, metadata !DIExpression()) #7, !dbg !2205
  call void @llvm.dbg.value(metadata i64* %20, metadata !508, metadata !DIExpression()) #7, !dbg !2206
  call void @llvm.dbg.value(metadata i64* undef, metadata !513, metadata !DIExpression()) #7, !dbg !2206
  call void @llvm.dbg.value(metadata i64* undef, metadata !514, metadata !DIExpression()) #7, !dbg !2206
  %40 = cmpxchg weak i64* %20, i64 %38, i64 %39 acquire monotonic, !dbg !2208
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !2208
  br i1 %41, label %83, label %42, !dbg !2208

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %34, metadata !1908, metadata !DIExpression()) #7, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %43, metadata !1909, metadata !DIExpression()) #7, !dbg !2195
  %44 = and i64 %43, 1, !dbg !2201
  %45 = icmp eq i64 %44, 0, !dbg !2202
  br i1 %45, label %37, label %46, !dbg !2203

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !2208
  br label %48, !dbg !2209

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !2195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !522, metadata !DIExpression()) #7, !dbg !2211
  %50 = icmp sgt i32 %34, 0, !dbg !2209
  br i1 %50, label %51, label %56, !dbg !2212

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !1908, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2195
  %52 = icmp eq i32 %34, 1, !dbg !2213
  br i1 %52, label %56, label %53, !dbg !2214

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %54, metadata !1908, metadata !DIExpression()) #7, !dbg !2195
  call void @halide_thread_yield() #6, !dbg !2216
  call void @llvm.dbg.value(metadata i64* %20, metadata !489, metadata !DIExpression()) #7, !dbg !2217
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2217
  %55 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2219
  br label %71, !dbg !2220

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1909, metadata !DIExpression()) #7, !dbg !2195
  %58 = and i64 %49, 2, !dbg !2221
  %59 = icmp eq i64 %58, 0, !dbg !2222
  br i1 %59, label %60, label %66, !dbg !2223

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !1909, metadata !DIExpression()) #7, !dbg !2195
  %61 = or i64 %49, 2, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %61, metadata !1914, metadata !DIExpression()) #7, !dbg !2225
  call void @llvm.dbg.value(metadata i64* %20, metadata !1730, metadata !DIExpression()) #7, !dbg !2226
  call void @llvm.dbg.value(metadata i64* undef, metadata !1733, metadata !DIExpression()) #7, !dbg !2226
  call void @llvm.dbg.value(metadata i64* undef, metadata !1734, metadata !DIExpression()) #7, !dbg !2226
  %62 = cmpxchg weak i64* %20, i64 %49, i64 %61 monotonic monotonic, !dbg !2228
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !2228
  br i1 %63, label %66, label %64, !dbg !2228

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !2228
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2229
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1917, metadata !DIExpression()) #7, !dbg !2230
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1842, metadata !DIExpression()) #7, !dbg !2231
  call void @llvm.dbg.value(metadata i64* %20, metadata !1845, metadata !DIExpression()) #7, !dbg !2231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1848, metadata !DIExpression()) #7, !dbg !2233
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 8, !dbg !2235, !tbaa !1215
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !2236, !tbaa !1608
  store i64* %20, i64** %30, align 8, !dbg !2237, !tbaa !1644
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !2238, !tbaa !1153
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %28, align 8, !dbg !2239, !tbaa !1299
  %67 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #6, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %67, metadata !1918, metadata !DIExpression()) #7, !dbg !2241
  %68 = icmp eq i64 %67, %17, !dbg !2242
  br i1 %68, label %74, label %69, !dbg !2243

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !1908, metadata !DIExpression()) #7, !dbg !2195
  call void @llvm.dbg.value(metadata i64* %20, metadata !489, metadata !DIExpression()) #7, !dbg !2244
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2244
  %70 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2246
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2247
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !2195, !llvm.loop !2248

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2247
  br label %83

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2166, metadata !DIExpression()) #7, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2151, metadata !DIExpression()) #7, !dbg !2157
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2146, metadata !DIExpression()), !dbg !2147
  %76 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %76, metadata !801, metadata !DIExpression()) #7, !dbg !2250
  call void @__tsan_mutex_pre_lock(i8* %76, i32 1) #6, !dbg !2252
  %77 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64* %77, metadata !489, metadata !DIExpression()) #7, !dbg !2254
  call void @llvm.dbg.value(metadata i64* undef, metadata !496, metadata !DIExpression()) #7, !dbg !2254
  %78 = load atomic i64, i64* %77 monotonic, align 8, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %78, metadata !2154, metadata !DIExpression()) #7, !dbg !2257
  %79 = and i64 %78, 1, !dbg !2258
  %80 = icmp eq i64 %79, 0, !dbg !2258
  br i1 %80, label %81, label %82, !dbg !2261

81:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2262
  call void @abort() #6, !dbg !2262
  br label %82, !dbg !2262

82:                                               ; preds = %81, %75
  call void @llvm.dbg.value(metadata i8* %76, metadata !817, metadata !DIExpression()) #7, !dbg !2264
  call void @__tsan_mutex_post_lock(i8* nonnull %76, i32 1, i32 1) #6, !dbg !2266
  br label %83

83:                                               ; preds = %37, %19, %74, %82
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2275
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #6, !dbg !2276
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2274, metadata !DIExpression()), !dbg !2275
  %4 = icmp eq i8* %2, null, !dbg !2278
  br i1 %4, label %14, label %5, !dbg !2280

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !2281
  %7 = shl nsw i64 %6, 3, !dbg !2282
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #6, !dbg !2283
  %9 = bitcast i8* %2 to i8**, !dbg !2284
  store i8* %8, i8** %9, align 8, !dbg !2284, !tbaa !2285
  %10 = icmp eq i8* %8, null, !dbg !2287
  br i1 %10, label %11, label %12, !dbg !2289

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2290
  br label %14, !dbg !2292

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #6, !dbg !2293
  br label %14, !dbg !2294

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !2275
  ret %struct.halide_mutex_array* %15, !dbg !2295
}

declare !dbg !2296 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

declare !dbg !2299 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare !dbg !2302 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !2309, metadata !DIExpression()), !dbg !2310
  %3 = bitcast i8* %1 to i8**, !dbg !2311
  %4 = load i8*, i8** %3, align 8, !dbg !2311, !tbaa !2285
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2312
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2313
  ret void, !dbg !2314
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2315 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %1, metadata !2320, metadata !DIExpression()), !dbg !2321
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2322
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2322, !tbaa !2285
  %5 = sext i32 %1 to i64, !dbg !2323
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2323
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #8, !dbg !2324
  ret i32 0, !dbg !2325
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2326 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %1, metadata !2329, metadata !DIExpression()), !dbg !2330
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2331
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2331, !tbaa !2285
  %5 = sext i32 %1 to i64, !dbg !2332
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2332
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #8, !dbg !2333
  ret i32 0, !dbg !2334
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #5 !dbg !2335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()), !dbg !2340
  %2 = icmp sgt i32 %0, 256, !dbg !2341
  br i1 %2, label %6, label %3, !dbg !2343

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2344
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2344
  ret i32 %5, !dbg !2344

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2339, metadata !DIExpression()), !dbg !2340
  ret i32 256, !dbg !2345
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #0 !dbg !2346 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()), !dbg !2352
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %1, metadata !2351, metadata !DIExpression()), !dbg !2352
  %2 = icmp eq i8* %1, null, !dbg !2354
  br i1 %2, label %3, label %6, !dbg !2356

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %4, metadata !2351, metadata !DIExpression()), !dbg !2352
  %5 = icmp eq i8* %4, null, !dbg !2359
  br i1 %5, label %9, label %6, !dbg !2361

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %8, metadata !2350, metadata !DIExpression()), !dbg !2352
  br label %11, !dbg !2364

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %10, metadata !2350, metadata !DIExpression()), !dbg !2352
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2367
  call void @llvm.dbg.value(metadata i32 %12, metadata !2350, metadata !DIExpression()), !dbg !2352
  ret i32 %12, !dbg !2368
}

declare !dbg !2369 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !2372 dso_local i32 @atoi(i8*) local_unnamed_addr #3

declare !dbg !2375 extern_weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2376 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2380, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 40, metadata !2382, metadata !DIExpression()), !dbg !2406
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !2407
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !2413

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !2414
  call void @llvm.dbg.value(metadata i32 %11, metadata !2381, metadata !DIExpression()), !dbg !2406
  br i1 %3, label %15, label %12, !dbg !2415

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2410, metadata !DIExpression()), !dbg !2416
  %13 = load i32, i32* %4, align 8, !dbg !2417, !tbaa !2418
  %14 = icmp eq i32 %13, 0, !dbg !2422
  br i1 %14, label %18, label %21, !dbg !2423

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !2424, !tbaa !2425, !range !604
  %17 = icmp eq i8 %16, 0, !dbg !2424
  br i1 %17, label %48, label %417, !dbg !2413

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !2407, !tbaa !2429
  %20 = icmp eq i32 %19, 0, !dbg !2407
  br i1 %20, label %417, label %21, !dbg !2413

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2430, !tbaa !2431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2384, metadata !DIExpression()), !dbg !2432
  %23 = load i32, i32* %5, align 4, !dbg !2433, !tbaa !2437
  %24 = icmp eq i32 %23, 0, !dbg !2438
  br i1 %24, label %38, label %25, !dbg !2439

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2440, !tbaa !2429
  %27 = icmp eq i32 %26, 0, !dbg !2443
  br i1 %27, label %28, label %46, !dbg !2444

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2386, metadata !DIExpression()), !dbg !2432
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2445
  br i1 %29, label %35, label %30, !dbg !2447

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2384, metadata !DIExpression()), !dbg !2432
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2386, metadata !DIExpression()), !dbg !2432
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2450, !tbaa !2451
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2384, metadata !DIExpression()), !dbg !2432
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2445
  br i1 %34, label %35, label %30, !dbg !2447, !llvm.loop !2452

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2432
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2454, !tbaa !2451
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2455, !tbaa !452
  store i32 0, i32* %4, align 8, !dbg !2456, !tbaa !2418
  br label %402, !dbg !2457

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2458, !tbaa !2460
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2461
  br i1 %40, label %46, label %41, !dbg !2462

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2463
  %43 = load i32, i32* %42, align 4, !dbg !2463, !tbaa !2437
  %44 = icmp eq i32 %43, 0, !dbg !2464
  br i1 %44, label %46, label %45, !dbg !2465

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2466, !tbaa !2437
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2468
  br label %402, !dbg !2469

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2386, metadata !DIExpression()), !dbg !2432
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2470
  br i1 %47, label %196, label %51, !dbg !2471

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2430, !tbaa !2431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2386, metadata !DIExpression()), !dbg !2432
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2470
  br i1 %50, label %206, label %52, !dbg !2471

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2471

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2472

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2386, metadata !DIExpression()), !dbg !2432
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2473
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2473, !tbaa !2460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2390, metadata !DIExpression()), !dbg !2474
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2475
  br i1 %59, label %75, label %60, !dbg !2472

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2477
  %62 = load i32, i32* %61, align 8, !dbg !2477, !tbaa !2429
  %63 = icmp eq i32 %62, 0, !dbg !2480
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2481
  %65 = load i32, i32* %64, align 4, !dbg !2481, !tbaa !2482
  br i1 %63, label %71, label %66, !dbg !2483

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2484
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2486
  %69 = load i32, i32* %68, align 8, !dbg !2486, !tbaa !2487
  %70 = sub nsw i32 %67, %69, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %70, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2489
  %73 = load i32, i32* %72, align 8, !dbg !2489, !tbaa !2487
  %74 = sub nsw i32 %65, %73, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %74, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %80, !dbg !2492

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2493, !tbaa !2495
  %77 = add nsw i32 %76, 1, !dbg !2496
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2497, !tbaa !2498
  %79 = sub i32 %77, %78, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %79, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %80, !dbg !2500

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2501
  call void @llvm.dbg.value(metadata i32 %81, metadata !2391, metadata !DIExpression()), !dbg !2474
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2502
  %83 = load i32, i32* %82, align 4, !dbg !2502, !tbaa !2482
  %84 = icmp sge i32 %81, %83, !dbg !2503
  call void @llvm.dbg.value(metadata i1 %84, metadata !2388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  call void @llvm.dbg.value(metadata i1 true, metadata !2392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2504
  %86 = load i8, i8* %85, align 8, !dbg !2504, !tbaa !2505, !range !604
  %87 = icmp eq i8 %86, 0, !dbg !2504
  br i1 %87, label %92, label %88, !dbg !2506

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2507
  %90 = load i32, i32* %89, align 8, !dbg !2507, !tbaa !2429
  %91 = icmp eq i32 %90, 0, !dbg !2508
  br label %92, !dbg !2506

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !2393, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  %94 = and i1 %93, %84, !dbg !2509
  br i1 %94, label %95, label %117, !dbg !2509

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2511, metadata !DIExpression()) #7, !dbg !2514
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2518
  %97 = load i32, i32* %96, align 8, !dbg !2518, !tbaa !2521
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2522
  %99 = load i32, i32* %98, align 8, !dbg !2522, !tbaa !2523
  %100 = icmp slt i32 %97, %99, !dbg !2524
  br i1 %100, label %101, label %225, !dbg !2525

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2525

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2526, !tbaa !2529
  %106 = sext i32 %104 to i64, !dbg !2530
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2531
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 8, !dbg !2531, !tbaa !2532
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2534
  %110 = load i32, i32* %109, align 8, !dbg !2534, !tbaa !2535
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %110) #6, !dbg !2536
  br i1 %111, label %112, label %117, !dbg !2537

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2538, !tbaa !2521
  %114 = add nsw i32 %113, 1, !dbg !2538
  store i32 %114, i32* %96, align 8, !dbg !2538, !tbaa !2521
  %115 = load i32, i32* %98, align 8, !dbg !2522, !tbaa !2523
  %116 = icmp slt i32 %114, %115, !dbg !2524
  br i1 %116, label %103, label %225, !dbg !2525, !llvm.loop !2539

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !2386, metadata !DIExpression()), !dbg !2432
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2542, !tbaa !2451
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !2384, metadata !DIExpression()), !dbg !2432
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2470
  br i1 %120, label %196, label %54, !dbg !2471

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !2386, metadata !DIExpression()), !dbg !2432
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2473
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2473, !tbaa !2460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !2390, metadata !DIExpression()), !dbg !2474
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2475
  br i1 %126, label %127, label %132, !dbg !2472

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2493, !tbaa !2495
  %129 = add nsw i32 %128, 1, !dbg !2496
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2497, !tbaa !2498
  %131 = sub i32 %129, %130, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %131, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %147, !dbg !2500

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2477
  %134 = load i32, i32* %133, align 8, !dbg !2477, !tbaa !2429
  %135 = icmp eq i32 %134, 0, !dbg !2480
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2481
  %137 = load i32, i32* %136, align 4, !dbg !2481, !tbaa !2482
  br i1 %135, label %138, label %142, !dbg !2483

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2489
  %140 = load i32, i32* %139, align 8, !dbg !2489, !tbaa !2487
  %141 = sub nsw i32 %137, %140, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %141, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %147, !dbg !2492

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2484
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2486
  %145 = load i32, i32* %144, align 8, !dbg !2486, !tbaa !2487
  %146 = sub nsw i32 %143, %145, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %146, metadata !2391, metadata !DIExpression()), !dbg !2474
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2501
  call void @llvm.dbg.value(metadata i32 %148, metadata !2391, metadata !DIExpression()), !dbg !2474
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2502
  %150 = load i32, i32* %149, align 4, !dbg !2502, !tbaa !2482
  %151 = icmp slt i32 %148, %150, !dbg !2503
  call void @llvm.dbg.value(metadata i1 %151, metadata !2388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2543
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2543, !tbaa !2544
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2545, !tbaa !2544
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2546
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2504
  %158 = load i8, i8* %157, align 8, !dbg !2504, !tbaa !2505, !range !604
  %159 = icmp eq i8 %158, 0, !dbg !2504
  br i1 %159, label %164, label %160, !dbg !2506

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2507
  %162 = load i32, i32* %161, align 8, !dbg !2507, !tbaa !2429
  %163 = icmp eq i32 %162, 0, !dbg !2508
  br label %164, !dbg !2506

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !2393, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  %166 = and i1 %156, %155, !dbg !2509
  %167 = or i1 %151, %166, !dbg !2509
  %168 = xor i1 %165, true, !dbg !2509
  %169 = or i1 %167, %168, !dbg !2509
  br i1 %169, label %192, label %170, !dbg !2509

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2511, metadata !DIExpression()) #7, !dbg !2514
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2518
  %172 = load i32, i32* %171, align 8, !dbg !2518, !tbaa !2521
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2522
  %174 = load i32, i32* %173, align 8, !dbg !2522, !tbaa !2523
  %175 = icmp slt i32 %172, %174, !dbg !2524
  br i1 %175, label %176, label %225, !dbg !2525

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2525

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2526, !tbaa !2529
  %181 = sext i32 %179 to i64, !dbg !2530
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2531
  %183 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %182, align 8, !dbg !2531, !tbaa !2532
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2534
  %185 = load i32, i32* %184, align 8, !dbg !2534, !tbaa !2535
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %183, i32 %185) #6, !dbg !2536
  br i1 %186, label %187, label %192, !dbg !2537

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2538, !tbaa !2521
  %189 = add nsw i32 %188, 1, !dbg !2538
  store i32 %189, i32* %171, align 8, !dbg !2538, !tbaa !2521
  %190 = load i32, i32* %173, align 8, !dbg !2522, !tbaa !2523
  %191 = icmp slt i32 %189, %190, !dbg !2524
  br i1 %191, label %178, label %225, !dbg !2525, !llvm.loop !2539

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !2386, metadata !DIExpression()), !dbg !2432
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2542, !tbaa !2451
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !2384, metadata !DIExpression()), !dbg !2432
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2470
  br i1 %195, label %196, label %121, !dbg !2471

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2386, metadata !DIExpression()), !dbg !2432
  br i1 %3, label %206, label %197, !dbg !2547

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %198, metadata !2381, metadata !DIExpression()), !dbg !2406
  %199 = icmp slt i32 %11, 40, !dbg !2554
  br i1 %199, label %200, label %201, !dbg !2555

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2556
  tail call void @halide_thread_yield() #6, !dbg !2558
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2559
  br label %402, !dbg !2560

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2561, !tbaa !2563
  %203 = add nsw i32 %202, 1, !dbg !2561
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2561, !tbaa !2563
  store i8 1, i8* %8, align 4, !dbg !2564, !tbaa !2565
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2566
  store i8 0, i8* %8, align 4, !dbg !2567, !tbaa !2565
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2568, !tbaa !2563
  %205 = add nsw i32 %204, -1, !dbg !2568
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2568, !tbaa !2563
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2569, !tbaa !2571
  %208 = add nsw i32 %207, 1, !dbg !2569
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2569, !tbaa !2571
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2572, !tbaa !2574
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2575, !tbaa !2576
  %211 = icmp sgt i32 %209, %210, !dbg !2577
  br i1 %211, label %212, label %216, !dbg !2578

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2579
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2579, !tbaa !2574
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2581
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2582, !tbaa !2574
  %215 = add nsw i32 %214, 1, !dbg !2582
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2582, !tbaa !2574
  br label %221, !dbg !2583

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %217, metadata !2381, metadata !DIExpression()), !dbg !2406
  %218 = icmp slt i32 %11, 40, !dbg !2586
  br i1 %218, label %219, label %220, !dbg !2587

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2588
  tail call void @halide_thread_yield() #6, !dbg !2590
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2591
  br label %221, !dbg !2592

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2593
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %222, metadata !2381, metadata !DIExpression()), !dbg !2406
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2595, !tbaa !2571
  %224 = add nsw i32 %223, -1, !dbg !2595
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2595, !tbaa !2571
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2596, !tbaa !2521
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2384, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !2386, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()), !dbg !2406
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2597
  %230 = load i32, i32* %229, align 8, !dbg !2598, !tbaa !2429
  %231 = add nsw i32 %230, 1, !dbg !2598
  store i32 %231, i32* %229, align 8, !dbg !2598, !tbaa !2429
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2599
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2599, !tbaa !2460
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2601
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2602
  %236 = load i32, i32* %235, align 4, !dbg !2602, !tbaa !2482
  br i1 %234, label %237, label %240, !dbg !2603

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2604, !tbaa !2498
  %239 = add nsw i32 %238, %236, !dbg !2604
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2604, !tbaa !2498
  br label %244, !dbg !2606

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2607
  %242 = load i32, i32* %241, align 8, !dbg !2609, !tbaa !2487
  %243 = add nsw i32 %242, %236, !dbg !2609
  store i32 %243, i32* %241, align 8, !dbg !2609, !tbaa !2487
  br label %244

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()), !dbg !2432
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2610
  %246 = load i8, i8* %245, align 8, !dbg !2610, !tbaa !2505, !range !604
  %247 = icmp eq i8 %246, 0, !dbg !2610
  br i1 %247, label %323, label %248, !dbg !2611

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2612
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2612, !tbaa !2451
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2613, !tbaa !452
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 1, metadata !2398, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()), !dbg !2432
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %259 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  br label %260, !dbg !2616

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2395, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %261, metadata !2398, metadata !DIExpression()), !dbg !2615
  %263 = load i32, i32* %251, align 8, !dbg !2617, !tbaa !2418
  %264 = sub nsw i32 %263, %262, !dbg !2619
  %265 = icmp sgt i32 %264, %261, !dbg !2620
  br i1 %265, label %266, label %297, !dbg !2621

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2622, !tbaa !2521
  %268 = load i32, i32* %253, align 8, !dbg !2624, !tbaa !2523
  br label %269, !dbg !2625

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2624
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2622
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !2398, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2511, metadata !DIExpression()) #7, !dbg !2626
  %274 = icmp slt i32 %272, %271, !dbg !2627
  br i1 %274, label %275, label %291, !dbg !2628

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2629, !tbaa !2529
  %278 = sext i32 %276 to i64, !dbg !2630
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2631
  %280 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %279, align 8, !dbg !2631, !tbaa !2532
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2632
  %282 = load i32, i32* %281, align 8, !dbg !2632, !tbaa !2535
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %280, i32 %282) #6, !dbg !2633
  br i1 %283, label %284, label %297, !dbg !2634

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2635, !tbaa !2521
  %286 = add nsw i32 %285, 1, !dbg !2635
  store i32 %286, i32* %252, align 8, !dbg !2635, !tbaa !2521
  %287 = load i32, i32* %253, align 8, !dbg !2624, !tbaa !2523
  %288 = icmp slt i32 %286, %287, !dbg !2627
  br i1 %288, label %275, label %289, !dbg !2628, !llvm.loop !2636

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2617, !tbaa !2418
  br label %291, !dbg !2638

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2617
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2638, !tbaa !2521
  %294 = add nuw nsw i32 %273, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %294, metadata !2398, metadata !DIExpression()), !dbg !2615
  %295 = sub nsw i32 %292, %262, !dbg !2619
  %296 = icmp sgt i32 %295, %294, !dbg !2620
  br i1 %296, label %269, label %300, !dbg !2621, !llvm.loop !2641

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2643
  br i1 %299, label %310, label %300, !dbg !2645

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %255, align 8, !dbg !2646, !tbaa !2647
  %303 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %256, align 8, !dbg !2648, !tbaa !2649
  %304 = load i32, i32* %257, align 4, !dbg !2650, !tbaa !2651
  %305 = add nsw i32 %304, %262, !dbg !2652
  %306 = load i8*, i8** %258, align 8, !dbg !2653, !tbaa !2654
  %307 = tail call i32 @halide_do_loop_task(i8* %302, i32 (i8*, i32, i32, i8*, i8*)* %303, i32 %305, i32 %301, i8* %306, i8* nonnull %259) #8, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %307, metadata !2394, metadata !DIExpression()), !dbg !2432
  %308 = add nuw nsw i32 %301, %262, !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2398, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %308, metadata !2395, metadata !DIExpression()), !dbg !2615
  %309 = icmp eq i32 %307, 0, !dbg !2657
  br i1 %309, label %260, label %310, !dbg !2616, !llvm.loop !2658

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2432
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2615
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2660
  %314 = load i32, i32* %257, align 4, !dbg !2661, !tbaa !2651
  %315 = add nsw i32 %314, %313, !dbg !2661
  store i32 %315, i32* %257, align 4, !dbg !2661, !tbaa !2651
  %316 = load i32, i32* %251, align 8, !dbg !2662, !tbaa !2418
  %317 = sub nsw i32 %316, %313, !dbg !2662
  store i32 %317, i32* %251, align 8, !dbg !2662, !tbaa !2418
  br i1 %311, label %319, label %318, !dbg !2663

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2664, !tbaa !2418
  call void @llvm.dbg.value(metadata i32 %350, metadata !2394, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2432
  br label %352, !dbg !2667

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2668
  br i1 %320, label %321, label %382, !dbg !2670

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2671, !tbaa !2431
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2673, !tbaa !2451
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2674, !tbaa !2431
  br label %382, !dbg !2675

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2676
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2676, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2680
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2676
  %327 = load i8*, i8** %326, align 8, !dbg !2676, !tbaa.struct !2681
  call void @llvm.dbg.value(metadata i8* %327, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2680
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2676
  %329 = load i32, i32* %328, align 4, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %329, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2680
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2676
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2676, !tbaa.struct !2682
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2680
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2676
  %333 = load i8*, i8** %332, align 8, !dbg !2676, !tbaa.struct !2683
  call void @llvm.dbg.value(metadata i8* %333, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2680
  %334 = add nsw i32 %329, 1, !dbg !2684
  store i32 %334, i32* %328, align 4, !dbg !2684, !tbaa !2651
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2685
  %336 = load i32, i32* %335, align 8, !dbg !2686, !tbaa !2418
  %337 = add nsw i32 %336, -1, !dbg !2686
  store i32 %337, i32* %335, align 8, !dbg !2686, !tbaa !2418
  %338 = icmp eq i32 %337, 0, !dbg !2687
  br i1 %338, label %339, label %342, !dbg !2689

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2690
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2690, !tbaa !2451
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2692, !tbaa !452
  br label %342, !dbg !2693

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2694
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2695
  br i1 %343, label %346, label %344, !dbg !2697

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #8, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %345, metadata !2394, metadata !DIExpression()), !dbg !2432
  br label %349, !dbg !2700

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2701
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #8, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %348, metadata !2394, metadata !DIExpression()), !dbg !2432
  br label %349

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2704
  call void @llvm.dbg.value(metadata i32 %350, metadata !2394, metadata !DIExpression()), !dbg !2432
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2432
  %351 = icmp eq i32 %350, 0, !dbg !2706
  br i1 %351, label %382, label %352, !dbg !2667

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2707
  store i32 %353, i32* %354, align 4, !dbg !2708, !tbaa !2437
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2432
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2710
  %356 = load i32, i32* %355, align 8, !dbg !2710, !tbaa !2712
  %357 = icmp sgt i32 %356, 0, !dbg !2713
  br i1 %357, label %358, label %382, !dbg !2714

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2544
  %361 = zext i32 %356 to i64, !dbg !2713
  br label %362, !dbg !2714

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !2402, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 %364, metadata !2401, metadata !DIExpression()), !dbg !2432
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2715
  %366 = load i32, i32* %365, align 4, !dbg !2715, !tbaa !2437
  %367 = icmp eq i32 %366, 0, !dbg !2718
  br i1 %367, label %368, label %378, !dbg !2719

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2720, !tbaa !2437
  %369 = load i32, i32* %229, align 8, !dbg !2722, !tbaa !2429
  %370 = icmp eq i32 %369, 0, !dbg !2723
  br i1 %370, label %371, label %374, !dbg !2724

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2725
  %373 = load i8, i8* %372, align 4, !dbg !2725, !tbaa !2565, !range !604
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2726
  %376 = and i8 %364, 1, !dbg !2727
  %377 = or i8 %375, %376, !dbg !2727
  call void @llvm.dbg.value(metadata i8 %377, metadata !2401, metadata !DIExpression()), !dbg !2432
  br label %378, !dbg !2728

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8 %379, metadata !2401, metadata !DIExpression()), !dbg !2432
  %380 = add nuw nsw i64 %363, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %380, metadata !2402, metadata !DIExpression()), !dbg !2709
  %381 = icmp eq i64 %380, %361, !dbg !2713
  br i1 %381, label %382, label %362, !dbg !2714, !llvm.loop !2730

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2732
  call void @llvm.dbg.value(metadata i8 %383, metadata !2401, metadata !DIExpression()), !dbg !2432
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2733, !tbaa !2460
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2735
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2736
  %387 = load i32, i32* %386, align 4, !dbg !2736, !tbaa !2482
  br i1 %385, label %388, label %391, !dbg !2737

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2738, !tbaa !2498
  %390 = sub nsw i32 %389, %387, !dbg !2738
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2738, !tbaa !2498
  br label %395, !dbg !2740

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2741
  %393 = load i32, i32* %392, align 8, !dbg !2743, !tbaa !2487
  %394 = sub nsw i32 %393, %387, !dbg !2743
  store i32 %394, i32* %392, align 8, !dbg !2743, !tbaa !2487
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2744, !tbaa !2429
  %397 = add nsw i32 %396, -1, !dbg !2744
  store i32 %397, i32* %229, align 8, !dbg !2744, !tbaa !2429
  %398 = and i8 %383, 1, !dbg !2745
  %399 = icmp eq i8 %398, 0, !dbg !2745
  br i1 %399, label %400, label %416, !dbg !2747

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2748
  br i1 %401, label %404, label %402, !dbg !2749

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !2406, !llvm.loop !2750

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2752
  %406 = load i32, i32* %405, align 8, !dbg !2752, !tbaa !2418
  %407 = icmp eq i32 %406, 0, !dbg !2753
  br i1 %407, label %412, label %408, !dbg !2754

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2755
  %410 = load i32, i32* %409, align 4, !dbg !2755, !tbaa !2437
  %411 = icmp eq i32 %410, 0, !dbg !2756
  br i1 %411, label %402, label %412, !dbg !2757

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2758
  %414 = load i8, i8* %413, align 4, !dbg !2758, !tbaa !2565, !range !604
  %415 = icmp eq i8 %414, 0, !dbg !2758
  br i1 %415, label %402, label %416, !dbg !2759

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2760
  br label %402, !dbg !2762

417:                                              ; preds = %15, %18
  ret void, !dbg !2763
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2766, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2767, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %2, metadata !2768, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %3, metadata !2769, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %4, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %5, metadata !2771, metadata !DIExpression()), !dbg !2772
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !2773, !tbaa !452
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2773
  ret i32 %8, !dbg !2774
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %2, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %3, metadata !2780, metadata !DIExpression()), !dbg !2781
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !2782, !tbaa !452
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2783
  ret i32 %6, !dbg !2784
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #0 !dbg !2785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2787, metadata !DIExpression()), !dbg !2788
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2789
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2790
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2791
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !2792
  ret void, !dbg !2793
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2799, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2800, metadata !DIExpression()), !dbg !2811
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2812, !tbaa !2814, !range !604
  %5 = icmp eq i8 %4, 0, !dbg !2812
  br i1 %5, label %6, label %25, !dbg !2815

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2816, metadata !DIExpression()) #7, !dbg !2822
  %8 = load i8, i8* %7, align 1, !dbg !2825, !tbaa !2826
  %9 = icmp eq i8 %8, 0, !dbg !2827
  br i1 %9, label %10, label %13, !dbg !2828

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %11, metadata !2816, metadata !DIExpression()) #7, !dbg !2822
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2831
  br i1 %12, label %13, label %6, !dbg !2832, !llvm.loop !2833

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2822
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), !dbg !2835
  br i1 %15, label %17, label %16, !dbg !2838

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2839
  tail call void @abort() #6, !dbg !2839
  br label %17, !dbg !2839

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2841, !tbaa !2843
  %19 = icmp eq i32 %18, 0, !dbg !2844
  br i1 %19, label %20, label %22, !dbg !2845

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !2846
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2848, !tbaa !2843
  br label %22, !dbg !2849

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2850
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #8, !dbg !2851
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2852, !tbaa !2843
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2853, !tbaa !2814
  br label %25, !dbg !2854

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2801, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 -1, metadata !2802, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, metadata !2804, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, metadata !2805, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2855
  %26 = icmp sgt i32 %0, 0, !dbg !2856
  br i1 %26, label %27, label %31, !dbg !2858

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2856
  br label %38, !dbg !2858

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2859
  br label %31, !dbg !2859

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2811
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2811
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2861
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2862
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2859
  br i1 %37, label %68, label %100, !dbg !2863

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2801, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %39, metadata !2806, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %41, metadata !2805, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %42, metadata !2804, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %43, metadata !2803, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %44, metadata !2802, metadata !DIExpression()), !dbg !2811
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2864
  %46 = load i32, i32* %45, align 4, !dbg !2864, !tbaa !2482
  %47 = icmp eq i32 %46, 0, !dbg !2867
  %48 = add i32 %46, %40, !dbg !2868
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2868
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %48, metadata !2801, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %50, metadata !2805, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %49, metadata !2803, metadata !DIExpression()), !dbg !2811
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2869
  %52 = load i32, i32* %51, align 8, !dbg !2869, !tbaa !2523
  %53 = icmp eq i32 %52, 0, !dbg !2871
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2872
  call void @llvm.dbg.value(metadata i8 %54, metadata !2804, metadata !DIExpression()), !dbg !2811
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !2873
  %56 = load i8, i8* %55, align 8, !dbg !2873, !tbaa !2505, !range !604
  %57 = icmp eq i8 %56, 0, !dbg !2873
  br i1 %57, label %60, label %58, !dbg !2875

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %59, metadata !2802, metadata !DIExpression()), !dbg !2811
  br label %64, !dbg !2878

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !2879
  %62 = load i32, i32* %61, align 8, !dbg !2879, !tbaa !2418
  %63 = add nsw i32 %62, %44, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %63, metadata !2802, metadata !DIExpression()), !dbg !2811
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !2882
  call void @llvm.dbg.value(metadata i32 %65, metadata !2802, metadata !DIExpression()), !dbg !2811
  %66 = add nuw nsw i64 %39, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %48, metadata !2801, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %66, metadata !2806, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %50, metadata !2805, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %54, metadata !2804, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %49, metadata !2803, metadata !DIExpression()), !dbg !2811
  %67 = icmp eq i64 %66, %28, !dbg !2856
  br i1 %67, label %29, label %38, !dbg !2858, !llvm.loop !2884

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !2886
  %70 = and i8 %69, 1, !dbg !2886
  %71 = icmp eq i8 %70, 0, !dbg !2886
  %72 = xor i1 %71, true, !dbg !2886
  %73 = zext i1 %72 to i32, !dbg !2886
  %74 = add nsw i32 %36, %73, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %74, metadata !2801, metadata !DIExpression()), !dbg !2811
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2889, !tbaa !2495
  %76 = icmp slt i32 %75, 256, !dbg !2890
  br i1 %76, label %77, label %96, !dbg !2891

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2892, !tbaa !2843
  %80 = add nsw i32 %79, -1, !dbg !2893
  %81 = icmp slt i32 %78, %80, !dbg !2894
  br i1 %81, label %87, label %82, !dbg !2895

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !2896
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2897, !tbaa !2498
  %85 = sub i32 %83, %84, !dbg !2898
  %86 = icmp slt i32 %85, %74, !dbg !2899
  br i1 %86, label %87, label %96, !dbg !2900

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2901, !tbaa !2574
  %89 = add nsw i32 %88, 1, !dbg !2901
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2901, !tbaa !2574
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #8, !dbg !2903
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2904, !tbaa !2495
  %92 = add nsw i32 %91, 1, !dbg !2904
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2904, !tbaa !2495
  %93 = sext i32 %91 to i64, !dbg !2905
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %93, !dbg !2905
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !2906, !tbaa !452
  %95 = icmp slt i32 %91, 255, !dbg !2890
  br i1 %95, label %77, label %96, !dbg !2891, !llvm.loop !2907

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !2909

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2911, !tbaa !2498
  %99 = add nsw i32 %98, 1, !dbg !2911
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2911, !tbaa !2498
  br label %118, !dbg !2913

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !2914
  %102 = load i32, i32* %101, align 4, !dbg !2914, !tbaa !2482
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !2914
  %104 = load i32, i32* %103, align 8, !dbg !2914, !tbaa !2429
  %105 = mul nsw i32 %104, %102, !dbg !2914
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2914
  %107 = load i32, i32* %106, align 8, !dbg !2914, !tbaa !2487
  %108 = sub nsw i32 %105, %107, !dbg !2914
  %109 = icmp sgt i32 %36, %108, !dbg !2914
  br i1 %109, label %110, label %111, !dbg !2918

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2919
  tail call void @abort() #6, !dbg !2919
  br label %111, !dbg !2919

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !2921
  %113 = and i8 %112, 1, !dbg !2921
  %114 = icmp eq i8 %113, 0, !dbg !2921
  br i1 %114, label %118, label %115, !dbg !2921

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !2923, !tbaa !2487
  %117 = add nsw i32 %116, 1, !dbg !2923
  store i32 %117, i32* %106, align 8, !dbg !2923, !tbaa !2487
  br label %118, !dbg !2925

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2926
  br i1 %26, label %119, label %123, !dbg !2927

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2926
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !2431
  %121 = zext i32 %0 to i64, !dbg !2927
  br label %136, !dbg !2927

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2928, !tbaa !2431
  br label %123, !dbg !2927

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2931, !tbaa !2563
  %125 = icmp ne i32 %124, 0, !dbg !2932
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2933
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2933
  %128 = icmp slt i32 %126, %127, !dbg !2933
  %129 = or i1 %125, %128, !dbg !2933
  call void @llvm.dbg.value(metadata i1 %129, metadata !2810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2811
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129, !dbg !2934
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !2934
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2936, !tbaa !2576
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !2937
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2938, !tbaa !2576
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2940, !tbaa !2574
  %135 = icmp sgt i32 %133, %134, !dbg !2941
  br i1 %135, label %146, label %149, !dbg !2942

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !2943
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !2943
  %139 = add nsw i64 %137, -1, !dbg !2926
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !2944
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !2945
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !2946, !tbaa !2451
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !2947
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !2948, !tbaa !2544
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !2949
  store i32 %0, i32* %143, align 8, !dbg !2950, !tbaa !2712
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !2951
  store i32 0, i32* %144, align 8, !dbg !2952, !tbaa !2487
  call void @llvm.dbg.value(metadata i64 %139, metadata !2808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2926
  %145 = icmp sgt i64 %137, 1, !dbg !2953
  br i1 %145, label %136, label %122, !dbg !2927, !llvm.loop !2954

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #8, !dbg !2956
  %147 = icmp eq i8 %33, 0, !dbg !2958
  br i1 %147, label %149, label %148, !dbg !2960

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !2961
  br label %149, !dbg !2963

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !2964
  %151 = and i8 %150, 1, !dbg !2964
  %152 = icmp eq i8 %151, 0, !dbg !2964
  br i1 %152, label %161, label %153, !dbg !2964

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !2966

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2968
  %156 = load i32, i32* %155, align 8, !dbg !2971, !tbaa !2487
  %157 = add nsw i32 %156, -1, !dbg !2971
  store i32 %157, i32* %155, align 8, !dbg !2971, !tbaa !2487
  br label %161, !dbg !2972

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2973, !tbaa !2498
  %160 = add nsw i32 %159, -1, !dbg !2973
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2973, !tbaa !2498
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !2975
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %2, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()), !dbg !2982
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2983
  ret i32 %5, !dbg !2984
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2988, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %2, metadata !2989, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %3, metadata !2990, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %4, metadata !2991, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %5, metadata !2992, metadata !DIExpression()), !dbg !2993
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2994
  ret i32 %7, !dbg !2995
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2996 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2999, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %2, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %3, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %4, metadata !3002, metadata !DIExpression()), !dbg !3004
  %7 = icmp slt i32 %3, 1, !dbg !3005
  br i1 %7, label %29, label %8, !dbg !3007

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3008
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3003, metadata !DIExpression()), !dbg !3009
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !3010
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !3011, !tbaa !2649
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !3012
  store i32 %2, i32* %11, align 4, !dbg !3013, !tbaa !2651
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !3014
  store i32 %3, i32* %12, align 8, !dbg !3015, !tbaa !2418
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !3016
  store i8 0, i8* %13, align 8, !dbg !3017, !tbaa !2505
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !3018
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !3019, !tbaa !2529
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !3020
  store i32 0, i32* %15, align 8, !dbg !3021, !tbaa !2523
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !3022
  store i8* %4, i8** %16, align 8, !dbg !3023, !tbaa !2654
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !3024
  store i32 0, i32* %17, align 4, !dbg !3025, !tbaa !2482
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !3026
  store i8* null, i8** %18, align 8, !dbg !3027, !tbaa !3028
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !3029
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !3030, !tbaa !3031
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !3032
  store i8* %0, i8** %20, align 8, !dbg !3033, !tbaa !2647
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !3034
  store i32 0, i32* %21, align 4, !dbg !3035, !tbaa !2437
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !3036
  store i32 0, i32* %22, align 8, !dbg !3037, !tbaa !2429
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !3038
  store i32 0, i32* %23, align 8, !dbg !3039, !tbaa !2521
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !3040
  store i8 0, i8* %24, align 4, !dbg !3041, !tbaa !2565
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !3042
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !3043, !tbaa !2544
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !3044
  store i32 0, i32* %26, align 8, !dbg !3045, !tbaa !2712
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !3046
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !3047, !tbaa !2460
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3048
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !3049
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !3050
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3051
  %28 = load i32, i32* %21, align 4, !dbg !3052, !tbaa !2437
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3053
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !3004
  ret i32 %30, !dbg !3053
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !3054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %1, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3058, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %3, metadata !3059, metadata !DIExpression()), !dbg !3066
  %5 = sext i32 %1 to i64, !dbg !3067
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !3068
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3060, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %1, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3058, metadata !DIExpression()), !dbg !3066
  %7 = icmp sgt i32 %1, 0, !dbg !3070
  br i1 %7, label %11, label %8, !dbg !3072

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %35, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !3073
  br i1 %10, label %56, label %39, !dbg !3075

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %33 ], [ %1, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %34, %33 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %13, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !3058, metadata !DIExpression()), !dbg !3066
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 0, i32 6, !dbg !3076
  %16 = load i32, i32* %15, align 8, !dbg !3076, !tbaa !3079
  %17 = icmp slt i32 %16, 1, !dbg !3080
  br i1 %17, label %18, label %20, !dbg !3081

18:                                               ; preds = %11
  %19 = add nsw i32 %13, -1, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %19, metadata !3057, metadata !DIExpression()), !dbg !3066
  br label %33, !dbg !3084

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 1, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !3058, metadata !DIExpression()), !dbg !3066
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !3086
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !3087
  %24 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !3087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !3087, !tbaa.struct !3088
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !3089
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !3090, !tbaa !3031
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !3091
  store i8* %0, i8** %26, align 8, !dbg !3092, !tbaa !2647
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !3093
  store i32 0, i32* %27, align 4, !dbg !3094, !tbaa !2437
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !3095
  store i32 0, i32* %28, align 8, !dbg !3096, !tbaa !2429
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !3097
  store i32 0, i32* %29, align 8, !dbg !3098, !tbaa !2521
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !3099
  store i8 0, i8* %30, align 4, !dbg !3100, !tbaa !2565
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !3101
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !3102
  store i8* %3, i8** %32, align 8, !dbg !3102, !tbaa !2460
  br label %33, !dbg !3103

33:                                               ; preds = %20, %18
  %34 = phi %struct.halide_parallel_task_t* [ %14, %18 ], [ %21, %20 ]
  %35 = phi i32 [ %19, %18 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %34, metadata !3058, metadata !DIExpression()), !dbg !3066
  %36 = add nuw nsw i64 %12, 1, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %36, metadata !3061, metadata !DIExpression()), !dbg !3069
  %37 = sext i32 %35 to i64, !dbg !3070
  %38 = icmp slt i64 %36, %37, !dbg !3070
  br i1 %38, label %11, label %8, !dbg !3072, !llvm.loop !3105

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3107
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3108
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3064, metadata !DIExpression()), !dbg !3110
  %41 = icmp sgt i32 %9, 0, !dbg !3111
  br i1 %41, label %42, label %44, !dbg !3113

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !3111
  br label %46, !dbg !3113

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !3066
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3114
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !3064, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %48, metadata !3063, metadata !DIExpression()), !dbg !3066
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !3115
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #8, !dbg !3117
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !3118
  %51 = load i32, i32* %50, align 4, !dbg !3118, !tbaa !2437
  %52 = icmp eq i32 %51, 0, !dbg !3120
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %53, metadata !3063, metadata !DIExpression()), !dbg !3066
  %54 = add nuw nsw i64 %47, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %54, metadata !3064, metadata !DIExpression()), !dbg !3110
  %55 = icmp eq i64 %54, %43, !dbg !3111
  br i1 %55, label %44, label %46, !dbg !3113, !llvm.loop !3123

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !3066
  ret i32 %57, !dbg !3125
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !3126 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %1, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3130, metadata !DIExpression()), !dbg !3131
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3132
  call void @llvm.dbg.value(metadata i32* %3, metadata !3133, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32* undef, metadata !3139, metadata !DIExpression()), !dbg !3142
  store atomic i32 %1, i32* %3 release, align 4, !dbg !3144
  call void @llvm.dbg.value(metadata i32 %1, metadata !3129, metadata !DIExpression()), !dbg !3131
  ret i32 %1, !dbg !3145
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3146 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3148, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %1, metadata !3149, metadata !DIExpression()), !dbg !3153
  %3 = icmp eq i32 %1, 0, !dbg !3154
  br i1 %3, label %20, label %4, !dbg !3156

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3157
  call void @llvm.dbg.value(metadata i32* %5, metadata !3158, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32* undef, metadata !3161, metadata !DIExpression()), !dbg !3162
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %6, metadata !3151, metadata !DIExpression()), !dbg !3153
  %7 = sub nsw i32 %6, %1, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %7, metadata !3152, metadata !DIExpression()), !dbg !3153
  %8 = icmp sgt i32 %7, -1, !dbg !3167
  br i1 %8, label %9, label %20, !dbg !3168

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32* %5, metadata !3169, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32* undef, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32* undef, metadata !3175, metadata !DIExpression()), !dbg !3176
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !3178
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !3178
  br i1 %13, label %18, label %14, !dbg !3178

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %15, metadata !3151, metadata !DIExpression()), !dbg !3153
  %16 = sub nsw i32 %15, %1, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %16, metadata !3152, metadata !DIExpression()), !dbg !3153
  %17 = icmp sgt i32 %16, -1, !dbg !3167
  br i1 %17, label %9, label %18, !dbg !3168

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !3178
  br label %20, !dbg !3179

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !3153
  ret i1 %21, !dbg !3179
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3180 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %1, metadata !3183, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3187
  call void @llvm.dbg.value(metadata i32* %3, metadata !3188, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %1, metadata !3193, metadata !DIExpression()), !dbg !3194
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %4, metadata !3185, metadata !DIExpression()), !dbg !3186
  %5 = icmp eq i32 %4, 0, !dbg !3197
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3199
  br i1 %7, label %8, label %9, !dbg !3199

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3200
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !3202
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !3203
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3204
  br label %9, !dbg !3205

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3206
  ret i32 %10, !dbg !3207
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !3208 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !3212 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !3218, !tbaa !2814, !range !604
  %2 = icmp eq i8 %1, 0, !dbg !3218
  br i1 %2, label %16, label %3, !dbg !3219

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3220
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !3221, !tbaa !2425
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #8, !dbg !3222
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #8, !dbg !3223
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #8, !dbg !3224
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3214, metadata !DIExpression()), !dbg !3226
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3227, !tbaa !2495
  %5 = icmp sgt i32 %4, 0, !dbg !3229
  br i1 %5, label %8, label %6, !dbg !3230

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3231, metadata !DIExpression()) #7, !dbg !3237
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), metadata !3234, metadata !DIExpression()) #7, !dbg !3237
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3235, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #7, !dbg !3237
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i32 0, i64 2116) #6, !dbg !3239
  br label %16, !dbg !3240

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3214, metadata !DIExpression()), !dbg !3226
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %9, !dbg !3241
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !3241, !tbaa !452
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !3243
  %12 = add nuw nsw i64 %9, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %12, metadata !3214, metadata !DIExpression()), !dbg !3226
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3227, !tbaa !2495
  %14 = sext i32 %13 to i64, !dbg !3229
  %15 = icmp slt i64 %12, %14, !dbg !3229
  br i1 %15, label %8, label %6, !dbg !3230, !llvm.loop !3245

16:                                               ; preds = %6, %0
  ret void, !dbg !3247
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()), !dbg !3252
  %2 = icmp slt i32 %0, 0, !dbg !3253
  br i1 %2, label %3, label %4, !dbg !3255

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3256
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3258
  br label %8, !dbg !3259

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3258
  %5 = icmp eq i32 %0, 0, !dbg !3260
  br i1 %5, label %6, label %8, !dbg !3259

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #8, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %7, metadata !3250, metadata !DIExpression()), !dbg !3252
  br label %8, !dbg !3264

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3250, metadata !DIExpression()), !dbg !3252
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3265, !tbaa !2843
  call void @llvm.dbg.value(metadata i32 %10, metadata !3251, metadata !DIExpression()), !dbg !3252
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #8, !dbg !3266
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3267, !tbaa !2843
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #8, !dbg !3268
  ret i32 %10, !dbg !3269
}

declare !dbg !3270 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3271 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3275, metadata !DIExpression()), !dbg !3277
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3278, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3279, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3280
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !3281 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3285, metadata !DIExpression()), !dbg !3287
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3288, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3289, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3290
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !3291 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3298, !tbaa !452
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3296, metadata !DIExpression()), !dbg !3297
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3299, !tbaa !452
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3300
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !3301 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3305, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3306, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3307, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3311, metadata !DIExpression()), !dbg !3312
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3313, !tbaa !452
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3314, !tbaa !452
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3315, !tbaa !452
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3316, !tbaa !452
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3317, !tbaa !452
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3318, !tbaa !452
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3319, !tbaa !452
  ret void, !dbg !3320
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !3321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %2, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %3, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %4, metadata !3327, metadata !DIExpression()), !dbg !3328
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3329, !tbaa !452
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !3330
  ret i32 %7, !dbg !3331
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !3332 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %1, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %3, metadata !3337, metadata !DIExpression()), !dbg !3338
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3339, !tbaa !452
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !3339
  ret i32 %6, !dbg !3340
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3341 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression()), !dbg !3345
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3346, !tbaa !452
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3346
  ret i32 %4, !dbg !3347
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3348 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3352
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3353, !tbaa !452
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3353
  ret i32 %4, !dbg !3354
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !3355 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression()), !dbg !3359
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3360, !tbaa !452
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !3360
  ret i1 %4, !dbg !3361
}

declare !dbg !3362 dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t*, i8*) local_unnamed_addr #3

declare !dbg !3366 dso_local i32 @pthread_cond_init(%struct.pthread_cond_t*, i8*) local_unnamed_addr #3

declare !dbg !3370 dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3373 dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t*, %struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3376 dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3377 dso_local i32 @pthread_cond_destroy(%struct.pthread_cond_t*) local_unnamed_addr #3

declare !dbg !3380 dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t*) local_unnamed_addr #3

declare !dbg !3381 dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t*) local_unnamed_addr #3

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
!llvm.module.flags = !{!389, !390, !391}
!llvm.ident = !{!392}

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
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !373, imports: !385, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_threads_tsan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!373 = !{!374, !377, !0, !379, !11, !121, !127, !133, !139, !146, !152, !158, !381}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!375 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !376, isLocal: true, isDefinition: true)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !376, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !376, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!382 = distinct !DIGlobalVariable(name: "__tsan_mutex_linker_init", scope: !161, file: !6, line: 37, type: !383, isLocal: true, isDefinition: true)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!385 = !{!386, !387, !388}
!386 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!387 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !167, line: 62)
!388 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!389 = !{i32 7, !"Dwarf Version", i32 4}
!390 = !{i32 2, !"Debug Info Version", i32 3}
!391 = !{i32 1, !"wchar_size", i32 4}
!392 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!393 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv", scope: !3, file: !167, line: 50, type: !394, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!43, !43}
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "arg", arg: 1, scope: !393, file: !167, line: 50, type: !43)
!398 = !DILocalVariable(name: "t", scope: !393, file: !167, line: 51, type: !165)
!399 = !DILocation(line: 0, scope: !393)
!400 = !DILocation(line: 52, column: 8, scope: !393)
!401 = !{!402, !403, i64 0}
!402 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !403, i64 0, !403, i64 8, !406, i64 16}
!403 = !{!"any pointer", !404, i64 0}
!404 = !{!"omnipotent char", !405, i64 0}
!405 = !{!"Simple C++ TBAA"}
!406 = !{!"long", !404, i64 0}
!407 = !DILocation(line: 52, column: 13, scope: !393)
!408 = !{!402, !403, i64 8}
!409 = !DILocation(line: 52, column: 5, scope: !393)
!410 = !DILocation(line: 53, column: 5, scope: !393)
!411 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 64, type: !412, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!102, !170, !43}
!414 = !{!415, !416, !417}
!415 = !DILocalVariable(name: "f", arg: 1, scope: !411, file: !167, line: 64, type: !170)
!416 = !DILocalVariable(name: "closure", arg: 2, scope: !411, file: !167, line: 64, type: !43)
!417 = !DILocalVariable(name: "t", scope: !411, file: !167, line: 65, type: !165)
!418 = !DILocation(line: 0, scope: !411)
!419 = !DILocation(line: 65, column: 43, scope: !411)
!420 = !DILocation(line: 66, column: 8, scope: !411)
!421 = !DILocation(line: 66, column: 10, scope: !411)
!422 = !DILocation(line: 67, column: 8, scope: !411)
!423 = !DILocation(line: 67, column: 16, scope: !411)
!424 = !DILocation(line: 68, column: 8, scope: !411)
!425 = !DILocation(line: 68, column: 15, scope: !411)
!426 = !{!402, !406, i64 16}
!427 = !DILocation(line: 69, column: 5, scope: !411)
!428 = !DILocation(line: 70, column: 12, scope: !411)
!429 = !DILocation(line: 70, column: 5, scope: !411)
!430 = !DISubprogram(name: "malloc", scope: !23, file: !23, line: 87, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!431 = !DISubroutineType(types: !432)
!432 = !{!43, !433}
!433 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!434 = !DISubprogram(name: "pthread_create", scope: !167, file: !167, line: 21, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!435 = !DISubroutineType(types: !436)
!436 = !{!29, !437, !438, !440, !43}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
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
!452 = !{!403, !403, i64 0}
!453 = !DILocation(line: 76, column: 21, scope: !441)
!454 = !DILocation(line: 76, column: 5, scope: !441)
!455 = !DILocation(line: 77, column: 10, scope: !441)
!456 = !DILocation(line: 77, column: 5, scope: !441)
!457 = !DILocation(line: 78, column: 1, scope: !441)
!458 = !DISubprogram(name: "pthread_join", scope: !167, file: !167, line: 23, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!459 = !DISubroutineType(types: !460)
!460 = !{!29, !176, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!462 = !DISubprogram(name: "free", scope: !23, file: !23, line: 86, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!463 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !237, file: !6, line: 321, type: !241, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !240, retainedNodes: !464)
!464 = !{!465, !467, !479, !480, !484, !485, !486}
!465 = !DILocalVariable(name: "this", arg: 1, scope: !463, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!467 = !DILocalVariable(name: "spinner", scope: !463, file: !6, line: 322, type: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !469, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!469 = !{!470, !471, !475, !478}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !468, file: !6, line: 231, baseType: !29, size: 32)
!471 = !DISubprogram(name: "spin_control", scope: !468, file: !6, line: 235, type: !472, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!489 = !DILocalVariable(name: "addr", arg: 1, scope: !490, file: !6, line: 200, type: !494)
!490 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIyEEvPT_S6_", scope: !491, file: !6, line: 200, type: !492, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !495)
!491 = !DINamespace(scope: !2)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!495 = !{!489, !496}
!496 = !DILocalVariable(name: "val", arg: 2, scope: !490, file: !6, line: 200, type: !494)
!497 = !{!498}
!498 = !DITemplateTypeParameter(name: "T", type: !25)
!499 = !DILocation(line: 0, scope: !490, inlinedAt: !500)
!500 = distinct !DILocation(line: 324, column: 5, scope: !463)
!501 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !500)
!502 = !DILocation(line: 326, column: 5, scope: !463)
!503 = !DILocation(line: 327, column: 24, scope: !482)
!504 = !DILocation(line: 327, column: 14, scope: !482)
!505 = !DILocation(line: 327, column: 13, scope: !483)
!506 = !DILocation(line: 328, column: 42, scope: !481)
!507 = !DILocation(line: 0, scope: !481)
!508 = !DILocalVariable(name: "addr", arg: 1, scope: !509, file: !6, line: 191, type: !300)
!509 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPyS4_S4_", scope: !491, file: !6, line: 191, type: !510, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!64, !300, !300, !300}
!512 = !{!508, !513, !514}
!513 = !DILocalVariable(name: "expected", arg: 2, scope: !509, file: !6, line: 191, type: !300)
!514 = !DILocalVariable(name: "desired", arg: 3, scope: !509, file: !6, line: 191, type: !300)
!515 = !DILocation(line: 0, scope: !509, inlinedAt: !516)
!516 = distinct !DILocation(line: 330, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !481, file: !6, line: 330, column: 17)
!518 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !516)
!519 = !DILocation(line: 336, column: 67, scope: !520)
!520 = distinct !DILexicalBlock(scope: !483, file: !6, line: 336, column: 13)
!521 = !DILocation(line: 336, column: 73, scope: !520)
!522 = !DILocalVariable(name: "this", arg: 1, scope: !523, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !468, file: !6, line: 237, type: !476, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !475, retainedNodes: !524)
!524 = !{!522}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!526 = !DILocation(line: 0, scope: !523, inlinedAt: !527)
!527 = distinct !DILocation(line: 336, column: 84, scope: !520)
!528 = !DILocation(line: 241, column: 27, scope: !523, inlinedAt: !527)
!529 = !DILocation(line: 336, column: 13, scope: !483)
!530 = !DILocation(line: 239, column: 23, scope: !531, inlinedAt: !527)
!531 = distinct !DILexicalBlock(scope: !532, file: !6, line: 238, column: 29)
!532 = distinct !DILexicalBlock(scope: !523, file: !6, line: 238, column: 13)
!533 = !DILocation(line: 337, column: 13, scope: !534)
!534 = distinct !DILexicalBlock(scope: !520, file: !6, line: 336, column: 99)
!535 = !DILocation(line: 0, scope: !490, inlinedAt: !536)
!536 = distinct !DILocation(line: 338, column: 13, scope: !534)
!537 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !536)
!538 = !DILocation(line: 339, column: 13, scope: !534)
!539 = !DILocation(line: 342, column: 9, scope: !483)
!540 = !DILocation(line: 342, column: 30, scope: !483)
!541 = !DILocalVariable(name: "this", arg: 1, scope: !542, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!542 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !178, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !224, retainedNodes: !543)
!543 = !{!541}
!544 = !DILocation(line: 0, scope: !542, inlinedAt: !545)
!545 = distinct !DILocation(line: 342, column: 30, scope: !483)
!546 = !DILocalVariable(name: "this", arg: 1, scope: !547, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!547 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !181, file: !167, line: 103, type: !213, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !212, retainedNodes: !548)
!548 = !{!546}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!550 = !DILocation(line: 0, scope: !547, inlinedAt: !551)
!551 = distinct !DILocation(line: 277, column: 19, scope: !542, inlinedAt: !545)
!552 = !DILocation(line: 96, column: 10, scope: !547, inlinedAt: !551)
!553 = !{!554, !557, i64 128}
!554 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !555, i64 0, !556, i64 64, !557, i64 128}
!555 = !{!"_ZTS15pthread_mutex_t", !404, i64 0}
!556 = !{!"_ZTS14pthread_cond_t", !404, i64 0}
!557 = !{!"bool", !404, i64 0}
!558 = !DILocation(line: 104, column: 9, scope: !559, inlinedAt: !551)
!559 = distinct !DILexicalBlock(scope: !547, file: !167, line: 103, column: 35)
!560 = !DILocation(line: 105, column: 9, scope: !559, inlinedAt: !551)
!561 = !DILocation(line: 273, column: 27, scope: !542, inlinedAt: !545)
!562 = !{!563, !403, i64 136}
!563 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !554, i64 0, !403, i64 136, !403, i64 144, !403, i64 152}
!564 = !DILocation(line: 274, column: 27, scope: !542, inlinedAt: !545)
!565 = !{!563, !403, i64 144}
!566 = !DILocation(line: 275, column: 27, scope: !542, inlinedAt: !545)
!567 = !{!563, !403, i64 152}
!568 = !DILocalVariable(name: "this", arg: 1, scope: !569, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!569 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !181, file: !167, line: 113, type: !213, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !570)
!570 = !{!568}
!571 = !DILocation(line: 0, scope: !569, inlinedAt: !572)
!572 = distinct !DILocation(line: 344, column: 21, scope: !483)
!573 = !DILocation(line: 114, column: 21, scope: !569, inlinedAt: !572)
!574 = !DILocation(line: 347, column: 72, scope: !483)
!575 = !DILocation(line: 0, scope: !483)
!576 = !DILocation(line: 348, column: 18, scope: !577)
!577 = distinct !DILexicalBlock(scope: !483, file: !6, line: 348, column: 13)
!578 = !DILocation(line: 348, column: 13, scope: !483)
!579 = !DILocation(line: 349, column: 23, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !6, line: 348, column: 30)
!581 = !DILocation(line: 351, column: 9, scope: !580)
!582 = !DILocation(line: 347, column: 38, scope: !483)
!583 = !DILocation(line: 356, column: 23, scope: !584)
!584 = distinct !DILexicalBlock(scope: !577, file: !6, line: 351, column: 16)
!585 = !DILocation(line: 359, column: 60, scope: !483)
!586 = !DILocation(line: 359, column: 48, scope: !483)
!587 = !DILocalVariable(name: "addr", arg: 1, scope: !588, file: !6, line: 183, type: !300)
!588 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPyS4_S4_", scope: !491, file: !6, line: 183, type: !510, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !589)
!589 = !{!587, !590, !591}
!590 = !DILocalVariable(name: "expected", arg: 2, scope: !588, file: !6, line: 183, type: !300)
!591 = !DILocalVariable(name: "desired", arg: 3, scope: !588, file: !6, line: 183, type: !300)
!592 = !DILocation(line: 0, scope: !588, inlinedAt: !593)
!593 = distinct !DILocation(line: 360, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !483, file: !6, line: 360, column: 13)
!595 = !DILocation(line: 184, column: 12, scope: !588, inlinedAt: !593)
!596 = !DILocalVariable(name: "this", arg: 1, scope: !597, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!597 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !181, file: !167, line: 117, type: !213, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !598)
!598 = !{!596}
!599 = !DILocation(line: 0, scope: !597, inlinedAt: !600)
!600 = distinct !DILocation(line: 361, column: 25, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !6, line: 360, column: 75)
!602 = !DILocation(line: 118, column: 9, scope: !597, inlinedAt: !600)
!603 = !DILocation(line: 119, column: 16, scope: !597, inlinedAt: !600)
!604 = !{i8 0, i8 2}
!605 = !DILocation(line: 119, column: 9, scope: !597, inlinedAt: !600)
!606 = !DILocation(line: 120, column: 13, scope: !607, inlinedAt: !600)
!607 = distinct !DILexicalBlock(scope: !597, file: !167, line: 119, column: 29)
!608 = distinct !{!608, !605, !609, !610}
!609 = !DILocation(line: 121, column: 9, scope: !597, inlinedAt: !600)
!610 = !{!"llvm.loop.mustprogress"}
!611 = !DILocation(line: 122, column: 9, scope: !597, inlinedAt: !600)
!612 = !DILocation(line: 0, scope: !490, inlinedAt: !613)
!613 = distinct !DILocation(line: 363, column: 13, scope: !601)
!614 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !613)
!615 = !DILocation(line: 364, column: 9, scope: !601)
!616 = !DILocalVariable(name: "this", arg: 1, scope: !617, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!617 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !178, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !228, retainedNodes: !618)
!618 = !{!616}
!619 = !DILocation(line: 0, scope: !617, inlinedAt: !620)
!620 = distinct !DILocation(line: 365, column: 5, scope: !463)
!621 = !DILocalVariable(name: "this", arg: 1, scope: !622, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!622 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !181, file: !167, line: 108, type: !213, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !623)
!623 = !{!621}
!624 = !DILocation(line: 0, scope: !622, inlinedAt: !625)
!625 = distinct !DILocation(line: 280, column: 51, scope: !626, inlinedAt: !620)
!626 = distinct !DILexicalBlock(scope: !617, file: !6, line: 280, column: 51)
!627 = !DILocation(line: 109, column: 9, scope: !628, inlinedAt: !625)
!628 = distinct !DILexicalBlock(scope: !622, file: !167, line: 108, column: 36)
!629 = !DILocation(line: 110, column: 9, scope: !628, inlinedAt: !625)
!630 = !DILocation(line: 365, column: 5, scope: !463)
!631 = distinct !{!631, !502, !630}
!632 = !DILocation(line: 366, column: 1, scope: !463)
!633 = !DISubprogram(name: "halide_thread_yield", scope: !23, file: !23, line: 190, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!634 = !DISubroutineType(types: !635)
!635 = !{null}
!636 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !237, file: !6, line: 368, type: !241, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !637)
!637 = !{!638, !639, !640, !642, !643, !644, !646, !647, !648, !649, !651, !654, !655, !658}
!638 = !DILocalVariable(name: "this", arg: 1, scope: !636, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!639 = !DILocalVariable(name: "expected", scope: !636, file: !6, line: 369, type: !22)
!640 = !DILocalVariable(name: "thread_queuing", scope: !641, file: !6, line: 375, type: !64)
!641 = distinct !DILexicalBlock(scope: !636, file: !6, line: 372, column: 18)
!642 = !DILocalVariable(name: "none_queued", scope: !641, file: !6, line: 377, type: !64)
!643 = !DILocalVariable(name: "desired", scope: !641, file: !6, line: 382, type: !22)
!644 = !DILocalVariable(name: "head", scope: !645, file: !6, line: 389, type: !177)
!645 = distinct !DILexicalBlock(scope: !636, file: !6, line: 388, column: 18)
!646 = !DILocalVariable(name: "current", scope: !645, file: !6, line: 390, type: !177)
!647 = !DILocalVariable(name: "tail", scope: !645, file: !6, line: 391, type: !177)
!648 = !DILocalVariable(name: "times_through", scope: !645, file: !6, line: 392, type: !29)
!649 = !DILocalVariable(name: "next", scope: !650, file: !6, line: 394, type: !177)
!650 = distinct !DILexicalBlock(scope: !645, file: !6, line: 393, column: 33)
!651 = !DILocalVariable(name: "desired", scope: !652, file: !6, line: 406, type: !22)
!652 = distinct !DILexicalBlock(scope: !653, file: !6, line: 405, column: 34)
!653 = distinct !DILexicalBlock(scope: !645, file: !6, line: 405, column: 13)
!654 = !DILocalVariable(name: "new_tail", scope: !645, file: !6, line: 414, type: !177)
!655 = !DILocalVariable(name: "continue_outer", scope: !656, file: !6, line: 416, type: !64)
!656 = distinct !DILexicalBlock(scope: !657, file: !6, line: 415, column: 34)
!657 = distinct !DILexicalBlock(scope: !645, file: !6, line: 415, column: 13)
!658 = !DILocalVariable(name: "desired", scope: !659, file: !6, line: 418, type: !22)
!659 = distinct !DILexicalBlock(scope: !656, file: !6, line: 417, column: 37)
!660 = !DILocation(line: 0, scope: !636)
!661 = !DILocation(line: 370, column: 26, scope: !636)
!662 = !DILocation(line: 0, scope: !490, inlinedAt: !663)
!663 = distinct !DILocation(line: 370, column: 5, scope: !636)
!664 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !663)
!665 = !DILocation(line: 372, column: 5, scope: !636)
!666 = !DILocation(line: 375, column: 41, scope: !641)
!667 = !DILocation(line: 375, column: 31, scope: !641)
!668 = !DILocation(line: 0, scope: !641)
!669 = !DILocation(line: 378, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !641, file: !6, line: 378, column: 13)
!671 = !DILocation(line: 382, column: 38, scope: !641)
!672 = !DILocation(line: 0, scope: !509, inlinedAt: !673)
!673 = distinct !DILocation(line: 383, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !641, file: !6, line: 383, column: 13)
!675 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !673)
!676 = !DILocation(line: 389, column: 72, scope: !645)
!677 = !DILocation(line: 389, column: 38, scope: !645)
!678 = !DILocation(line: 0, scope: !645)
!679 = !DILocation(line: 391, column: 47, scope: !645)
!680 = !DILocation(line: 393, column: 21, scope: !645)
!681 = !DILocation(line: 393, column: 9, scope: !645)
!682 = !DILocation(line: 394, column: 51, scope: !650)
!683 = !DILocation(line: 0, scope: !650)
!684 = !DILocation(line: 395, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !6, line: 395, column: 13)
!686 = distinct !DILexicalBlock(scope: !650, file: !6, line: 395, column: 13)
!687 = !DILocation(line: 395, column: 13, scope: !686)
!688 = !DILocation(line: 395, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !6, line: 395, column: 13)
!690 = !DILocation(line: 396, column: 19, scope: !650)
!691 = !DILocation(line: 396, column: 24, scope: !650)
!692 = !DILocation(line: 398, column: 29, scope: !650)
!693 = distinct !{!693, !681, !694, !610}
!694 = !DILocation(line: 400, column: 9, scope: !645)
!695 = !DILocation(line: 401, column: 20, scope: !645)
!696 = !DILocation(line: 405, column: 22, scope: !653)
!697 = !DILocation(line: 405, column: 13, scope: !653)
!698 = !DILocation(line: 405, column: 13, scope: !645)
!699 = !DILocation(line: 406, column: 42, scope: !652)
!700 = !DILocation(line: 0, scope: !652)
!701 = !DILocalVariable(name: "addr", arg: 1, scope: !702, file: !6, line: 179, type: !494)
!702 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIyEEbPT_S6_S6_", scope: !491, file: !6, line: 179, type: !703, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!64, !494, !494, !494}
!705 = !{!701, !706, !707}
!706 = !DILocalVariable(name: "expected", arg: 2, scope: !702, file: !6, line: 179, type: !494)
!707 = !DILocalVariable(name: "desired", arg: 3, scope: !702, file: !6, line: 179, type: !494)
!708 = !DILocation(line: 0, scope: !702, inlinedAt: !709)
!709 = distinct !DILocation(line: 407, column: 17, scope: !710)
!710 = distinct !DILexicalBlock(scope: !652, file: !6, line: 407, column: 17)
!711 = !DILocation(line: 180, column: 12, scope: !702, inlinedAt: !709)
!712 = distinct !{!712, !713, !714}
!713 = !DILocation(line: 388, column: 5, scope: !636)
!714 = !DILocation(line: 445, column: 5, scope: !636)
!715 = !DILocation(line: 414, column: 48, scope: !645)
!716 = !DILocation(line: 415, column: 22, scope: !657)
!717 = !DILocation(line: 415, column: 13, scope: !645)
!718 = !DILocation(line: 0, scope: !656)
!719 = !DILocation(line: 418, column: 46, scope: !659)
!720 = !DILocation(line: 0, scope: !659)
!721 = !DILocation(line: 0, scope: !702, inlinedAt: !722)
!722 = distinct !DILocation(line: 419, column: 21, scope: !723)
!723 = distinct !DILexicalBlock(scope: !659, file: !6, line: 419, column: 21)
!724 = !DILocation(line: 180, column: 12, scope: !702, inlinedAt: !722)
!725 = !DILocation(line: 422, column: 74, scope: !726)
!726 = distinct !DILexicalBlock(scope: !659, file: !6, line: 422, column: 21)
!727 = !DILocation(line: 422, column: 21, scope: !659)
!728 = distinct !{!728, !729, !730, !610}
!729 = !DILocation(line: 417, column: 13, scope: !656)
!730 = !DILocation(line: 428, column: 13, scope: !656)
!731 = !DILocation(line: 434, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !657, file: !6, line: 433, column: 16)
!733 = !DILocalVariable(name: "addr", arg: 1, scope: !734, file: !6, line: 165, type: !300)
!734 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPyy", scope: !491, file: !6, line: 165, type: !735, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!22, !300, !22}
!737 = !{!733, !738}
!738 = !DILocalVariable(name: "val", arg: 2, scope: !734, file: !6, line: 165, type: !22)
!739 = !DILocation(line: 0, scope: !734, inlinedAt: !740)
!740 = distinct !DILocation(line: 435, column: 13, scope: !732)
!741 = !DILocation(line: 166, column: 12, scope: !734, inlinedAt: !740)
!742 = !DILocalVariable(name: "this", arg: 1, scope: !743, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!743 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !181, file: !167, line: 125, type: !213, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !744)
!744 = !{!742}
!745 = !DILocation(line: 0, scope: !743, inlinedAt: !746)
!746 = distinct !DILocation(line: 441, column: 22, scope: !645)
!747 = !DILocation(line: 126, column: 29, scope: !743, inlinedAt: !746)
!748 = !DILocation(line: 126, column: 9, scope: !743, inlinedAt: !746)
!749 = !DILocalVariable(name: "this", arg: 1, scope: !750, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!750 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !181, file: !167, line: 129, type: !213, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !751)
!751 = !{!749}
!752 = !DILocation(line: 0, scope: !750, inlinedAt: !753)
!753 = distinct !DILocation(line: 442, column: 22, scope: !645)
!754 = !DILocation(line: 130, column: 9, scope: !750, inlinedAt: !753)
!755 = !DILocation(line: 130, column: 21, scope: !750, inlinedAt: !753)
!756 = !DILocation(line: 131, column: 30, scope: !750, inlinedAt: !753)
!757 = !DILocation(line: 131, column: 9, scope: !750, inlinedAt: !753)
!758 = !DILocalVariable(name: "this", arg: 1, scope: !759, type: !549, flags: DIFlagArtificial | DIFlagObjectPointer)
!759 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !181, file: !167, line: 134, type: !213, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !760)
!760 = !{!758}
!761 = !DILocation(line: 0, scope: !759, inlinedAt: !762)
!762 = distinct !DILocation(line: 443, column: 22, scope: !645)
!763 = !DILocation(line: 135, column: 9, scope: !759, inlinedAt: !762)
!764 = !DILocation(line: 444, column: 9, scope: !645)
!765 = !DILocation(line: 446, column: 1, scope: !636)
!766 = !DISubprogram(name: "halide_print", scope: !18, file: !18, line: 97, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !43, !49}
!769 = !DISubprogram(name: "abort", scope: !23, file: !23, line: 108, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!770 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy", scope: !2, file: !6, line: 509, type: !771, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !774)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !22}
!773 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 64)
!774 = !{!775, !776, !777}
!775 = !DILocalVariable(name: "addr", arg: 1, scope: !770, file: !6, line: 509, type: !22)
!776 = !DILocalVariable(name: "hash", scope: !770, file: !6, line: 510, type: !22)
!777 = !DILocalVariable(name: "bucket", scope: !770, file: !6, line: 515, type: !773)
!778 = !DILocation(line: 0, scope: !770)
!779 = !DILocalVariable(name: "addr", arg: 1, scope: !780, file: !6, line: 499, type: !22)
!780 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEyj", scope: !2, file: !6, line: 499, type: !781, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !784)
!781 = !DISubroutineType(types: !782)
!782 = !{!22, !22, !783}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !384)
!784 = !{!779, !785}
!785 = !DILocalVariable(name: "bits", arg: 2, scope: !780, file: !6, line: 499, type: !783)
!786 = !DILocation(line: 0, scope: !780, inlinedAt: !787)
!787 = distinct !DILocation(line: 510, column: 22, scope: !770)
!788 = !DILocation(line: 503, column: 22, scope: !789, inlinedAt: !787)
!789 = distinct !DILexicalBlock(scope: !790, file: !6, line: 502, column: 33)
!790 = distinct !DILexicalBlock(scope: !780, file: !6, line: 502, column: 9)
!791 = !DILocation(line: 503, column: 55, scope: !789, inlinedAt: !787)
!792 = !DILocation(line: 515, column: 27, scope: !770)
!793 = !DILocalVariable(name: "this", arg: 1, scope: !794, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!794 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !795)
!795 = !{!793, !796, !797}
!796 = !DILocalVariable(name: "expected", scope: !794, file: !6, line: 294, type: !22)
!797 = !DILocalVariable(name: "desired", scope: !794, file: !6, line: 295, type: !22)
!798 = !DILocation(line: 0, scope: !794, inlinedAt: !799)
!799 = distinct !DILocation(line: 517, column: 18, scope: !770)
!800 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !799)
!801 = !DILocalVariable(name: "mutex", arg: 1, scope: !802, file: !6, line: 56, type: !43)
!802 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_116if_tsan_pre_lockEPv", scope: !491, file: !6, line: 56, type: !171, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !803)
!803 = !{!801}
!804 = !DILocation(line: 0, scope: !802, inlinedAt: !805)
!805 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !799)
!806 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !805)
!807 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !799)
!808 = distinct !DILexicalBlock(scope: !794, file: !6, line: 297, column: 13)
!809 = !DILocation(line: 0, scope: !509, inlinedAt: !810)
!810 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !799)
!811 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !810)
!812 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !799)
!813 = !DILocation(line: 517, column: 12, scope: !770)
!814 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !799)
!815 = distinct !DILexicalBlock(scope: !808, file: !6, line: 297, column: 76)
!816 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !799)
!817 = !DILocalVariable(name: "mutex", arg: 1, scope: !818, file: !6, line: 60, type: !43)
!818 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_117if_tsan_post_lockEPv", scope: !491, file: !6, line: 60, type: !171, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !819)
!819 = !{!817}
!820 = !DILocation(line: 0, scope: !818, inlinedAt: !821)
!821 = distinct !DILocation(line: 301, column: 9, scope: !794, inlinedAt: !799)
!822 = !DILocation(line: 61, column: 5, scope: !818, inlinedAt: !821)
!823 = !DILocation(line: 519, column: 5, scope: !770)
!824 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy", scope: !2, file: !6, line: 531, type: !825, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !835)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !22, !22}
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !828, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !827, file: !6, line: 523, baseType: !773, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !827, file: !6, line: 524, baseType: !773, size: 64, offset: 64)
!831 = !DISubprogram(name: "bucket_pair", scope: !827, file: !6, line: 526, type: !832, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834, !773, !773}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!835 = !{!836, !837, !838, !839, !840, !843, !846, !847, !849}
!836 = !DILocalVariable(name: "addr_from", arg: 1, scope: !824, file: !6, line: 531, type: !22)
!837 = !DILocalVariable(name: "addr_to", arg: 2, scope: !824, file: !6, line: 531, type: !22)
!838 = !DILocalVariable(name: "hash_from", scope: !824, file: !6, line: 533, type: !22)
!839 = !DILocalVariable(name: "hash_to", scope: !824, file: !6, line: 534, type: !22)
!840 = !DILocalVariable(name: "first", scope: !841, file: !6, line: 542, type: !773)
!841 = distinct !DILexicalBlock(scope: !842, file: !6, line: 541, column: 31)
!842 = distinct !DILexicalBlock(scope: !824, file: !6, line: 541, column: 9)
!843 = !DILocalVariable(name: "first", scope: !844, file: !6, line: 546, type: !773)
!844 = distinct !DILexicalBlock(scope: !845, file: !6, line: 545, column: 37)
!845 = distinct !DILexicalBlock(scope: !842, file: !6, line: 545, column: 16)
!846 = !DILocalVariable(name: "second", scope: !844, file: !6, line: 547, type: !773)
!847 = !DILocalVariable(name: "first", scope: !848, file: !6, line: 552, type: !773)
!848 = distinct !DILexicalBlock(scope: !845, file: !6, line: 551, column: 12)
!849 = !DILocalVariable(name: "second", scope: !848, file: !6, line: 553, type: !773)
!850 = !DILocation(line: 0, scope: !824)
!851 = !DILocation(line: 0, scope: !780, inlinedAt: !852)
!852 = distinct !DILocation(line: 533, column: 27, scope: !824)
!853 = !DILocation(line: 503, column: 22, scope: !789, inlinedAt: !852)
!854 = !DILocation(line: 503, column: 55, scope: !789, inlinedAt: !852)
!855 = !DILocation(line: 0, scope: !780, inlinedAt: !856)
!856 = distinct !DILocation(line: 534, column: 25, scope: !824)
!857 = !DILocation(line: 503, column: 22, scope: !789, inlinedAt: !856)
!858 = !DILocation(line: 503, column: 55, scope: !789, inlinedAt: !856)
!859 = !DILocation(line: 541, column: 19, scope: !842)
!860 = !DILocation(line: 541, column: 9, scope: !824)
!861 = !DILocation(line: 542, column: 30, scope: !841)
!862 = !DILocation(line: 0, scope: !841)
!863 = !DILocation(line: 0, scope: !794, inlinedAt: !864)
!864 = distinct !DILocation(line: 543, column: 21, scope: !841)
!865 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !864)
!866 = !DILocation(line: 0, scope: !802, inlinedAt: !867)
!867 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !864)
!868 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !867)
!869 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !864)
!870 = !DILocation(line: 0, scope: !509, inlinedAt: !871)
!871 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !864)
!872 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !871)
!873 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !864)
!874 = !DILocation(line: 543, column: 15, scope: !841)
!875 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !864)
!876 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !864)
!877 = !DILocation(line: 545, column: 26, scope: !845)
!878 = !DILocation(line: 545, column: 16, scope: !842)
!879 = !DILocation(line: 546, column: 30, scope: !844)
!880 = !DILocation(line: 0, scope: !844)
!881 = !DILocation(line: 547, column: 31, scope: !844)
!882 = !DILocation(line: 0, scope: !794, inlinedAt: !883)
!883 = distinct !DILocation(line: 548, column: 21, scope: !844)
!884 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !883)
!885 = !DILocation(line: 0, scope: !802, inlinedAt: !886)
!886 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !883)
!887 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !886)
!888 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !883)
!889 = !DILocation(line: 0, scope: !509, inlinedAt: !890)
!890 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !883)
!891 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !890)
!892 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !883)
!893 = !DILocation(line: 548, column: 15, scope: !844)
!894 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !883)
!895 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !883)
!896 = !DILocation(line: 0, scope: !818, inlinedAt: !897)
!897 = distinct !DILocation(line: 301, column: 9, scope: !794, inlinedAt: !883)
!898 = !DILocation(line: 61, column: 5, scope: !818, inlinedAt: !897)
!899 = !DILocation(line: 0, scope: !794, inlinedAt: !900)
!900 = distinct !DILocation(line: 549, column: 22, scope: !844)
!901 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !900)
!902 = !DILocation(line: 0, scope: !802, inlinedAt: !903)
!903 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !900)
!904 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !903)
!905 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !900)
!906 = !DILocation(line: 0, scope: !509, inlinedAt: !907)
!907 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !900)
!908 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !907)
!909 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !900)
!910 = !DILocation(line: 549, column: 16, scope: !844)
!911 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !900)
!912 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !900)
!913 = !DILocation(line: 552, column: 30, scope: !848)
!914 = !DILocation(line: 0, scope: !848)
!915 = !DILocation(line: 553, column: 31, scope: !848)
!916 = !DILocation(line: 0, scope: !794, inlinedAt: !917)
!917 = distinct !DILocation(line: 554, column: 21, scope: !848)
!918 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !917)
!919 = !DILocation(line: 0, scope: !802, inlinedAt: !920)
!920 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !917)
!921 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !920)
!922 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !917)
!923 = !DILocation(line: 0, scope: !509, inlinedAt: !924)
!924 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !917)
!925 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !924)
!926 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !917)
!927 = !DILocation(line: 554, column: 15, scope: !848)
!928 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !917)
!929 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !917)
!930 = !DILocation(line: 0, scope: !818, inlinedAt: !931)
!931 = distinct !DILocation(line: 301, column: 9, scope: !794, inlinedAt: !917)
!932 = !DILocation(line: 61, column: 5, scope: !818, inlinedAt: !931)
!933 = !DILocation(line: 0, scope: !794, inlinedAt: !934)
!934 = distinct !DILocation(line: 555, column: 22, scope: !848)
!935 = !DILocation(line: 292, column: 26, scope: !794, inlinedAt: !934)
!936 = !DILocation(line: 0, scope: !802, inlinedAt: !937)
!937 = distinct !DILocation(line: 292, column: 9, scope: !794, inlinedAt: !934)
!938 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !937)
!939 = !DILocation(line: 297, column: 47, scope: !808, inlinedAt: !934)
!940 = !DILocation(line: 0, scope: !509, inlinedAt: !941)
!941 = distinct !DILocation(line: 297, column: 14, scope: !808, inlinedAt: !934)
!942 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !941)
!943 = !DILocation(line: 297, column: 13, scope: !794, inlinedAt: !934)
!944 = !DILocation(line: 555, column: 16, scope: !848)
!945 = !DILocation(line: 298, column: 13, scope: !815, inlinedAt: !934)
!946 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !934)
!947 = !DILocation(line: 0, scope: !842)
!948 = !DILocation(line: 558, column: 1, scope: !824)
!949 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !2, file: !6, line: 560, type: !950, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !953)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !952}
!952 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !827, size: 64)
!953 = !{!954}
!954 = !DILocalVariable(name: "buckets", arg: 1, scope: !949, file: !6, line: 560, type: !952)
!955 = !DILocation(line: 0, scope: !949)
!956 = !DILocation(line: 565, column: 18, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !6, line: 565, column: 9)
!958 = !{!959, !403, i64 0}
!959 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !403, i64 0, !403, i64 8}
!960 = !DILocation(line: 565, column: 35, scope: !957)
!961 = !{!959, !403, i64 8}
!962 = !DILocation(line: 565, column: 23, scope: !957)
!963 = !DILocation(line: 565, column: 9, scope: !949)
!964 = !DILocalVariable(name: "this", arg: 1, scope: !965, type: !466, flags: DIFlagArtificial | DIFlagObjectPointer)
!965 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !247, retainedNodes: !966)
!966 = !{!964, !967, !968, !969}
!967 = !DILocalVariable(name: "val", scope: !965, file: !6, line: 307, type: !22)
!968 = !DILocalVariable(name: "no_thread_queuing", scope: !965, file: !6, line: 310, type: !64)
!969 = !DILocalVariable(name: "some_queued", scope: !965, file: !6, line: 312, type: !64)
!970 = !DILocation(line: 0, scope: !965, inlinedAt: !971)
!971 = distinct !DILocation(line: 566, column: 28, scope: !972)
!972 = distinct !DILexicalBlock(scope: !957, file: !6, line: 565, column: 39)
!973 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !971)
!974 = !DILocalVariable(name: "mutex", arg: 1, scope: !975, file: !6, line: 64, type: !43)
!975 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_unlockEPv", scope: !491, file: !6, line: 64, type: !171, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !976)
!976 = !{!974}
!977 = !DILocation(line: 0, scope: !975, inlinedAt: !978)
!978 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !971)
!979 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !978)
!980 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !971)
!981 = !DILocalVariable(name: "addr", arg: 1, scope: !982, file: !6, line: 195, type: !300)
!982 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPyy", scope: !491, file: !6, line: 195, type: !735, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !983)
!983 = !{!981, !984}
!984 = !DILocalVariable(name: "val", arg: 2, scope: !982, file: !6, line: 195, type: !22)
!985 = !DILocation(line: 0, scope: !982, inlinedAt: !986)
!986 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !971)
!987 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !986)
!988 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !971)
!989 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !971)
!990 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !971)
!991 = distinct !DILexicalBlock(scope: !965, file: !6, line: 313, column: 13)
!992 = !DILocation(line: 566, column: 22, scope: !972)
!993 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !971)
!994 = distinct !DILexicalBlock(scope: !991, file: !6, line: 313, column: 47)
!995 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !971)
!996 = !DILocation(line: 567, column: 30, scope: !997)
!997 = distinct !DILexicalBlock(scope: !957, file: !6, line: 567, column: 16)
!998 = !DILocation(line: 567, column: 16, scope: !957)
!999 = !DILocation(line: 0, scope: !965, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 568, column: 28, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !6, line: 567, column: 45)
!1002 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1000)
!1003 = !DILocation(line: 0, scope: !975, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1000)
!1005 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1004)
!1006 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1000)
!1007 = !DILocation(line: 0, scope: !982, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1000)
!1009 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1008)
!1010 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1000)
!1011 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1000)
!1012 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1000)
!1013 = !DILocation(line: 568, column: 22, scope: !1001)
!1014 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1000)
!1015 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1000)
!1016 = !DILocalVariable(name: "mutex", arg: 1, scope: !1017, file: !6, line: 67, type: !43)
!1017 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_unlockEPv", scope: !491, file: !6, line: 67, type: !171, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1018)
!1018 = !{!1016}
!1019 = !DILocation(line: 0, scope: !1017, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1000)
!1021 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1020)
!1022 = !DILocation(line: 569, column: 17, scope: !1001)
!1023 = !DILocation(line: 0, scope: !965, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 569, column: 26, scope: !1001)
!1025 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1024)
!1026 = !DILocation(line: 0, scope: !975, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1024)
!1028 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1027)
!1029 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1024)
!1030 = !DILocation(line: 0, scope: !982, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1024)
!1032 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1031)
!1033 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1024)
!1034 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1024)
!1035 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1024)
!1036 = !DILocation(line: 569, column: 20, scope: !1001)
!1037 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1024)
!1038 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1024)
!1039 = !DILocation(line: 0, scope: !965, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 571, column: 26, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !997, file: !6, line: 570, column: 12)
!1042 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1040)
!1043 = !DILocation(line: 0, scope: !975, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1040)
!1045 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1044)
!1046 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1040)
!1047 = !DILocation(line: 0, scope: !982, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1040)
!1049 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1048)
!1050 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1040)
!1051 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1040)
!1052 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1040)
!1053 = !DILocation(line: 571, column: 20, scope: !1041)
!1054 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1040)
!1055 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1040)
!1056 = !DILocation(line: 0, scope: !1017, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1040)
!1058 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1057)
!1059 = !DILocation(line: 572, column: 17, scope: !1041)
!1060 = !DILocation(line: 0, scope: !965, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 572, column: 28, scope: !1041)
!1062 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1061)
!1063 = !DILocation(line: 0, scope: !975, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1061)
!1065 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1064)
!1066 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1061)
!1067 = !DILocation(line: 0, scope: !982, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1061)
!1069 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1068)
!1070 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1061)
!1071 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1061)
!1072 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1061)
!1073 = !DILocation(line: 572, column: 22, scope: !1041)
!1074 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1061)
!1075 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1061)
!1076 = !DILocation(line: 0, scope: !957)
!1077 = !DILocation(line: 574, column: 1, scope: !949)
!1078 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 583, type: !273, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "control", arg: 1, scope: !1078, file: !6, line: 583, type: !43)
!1081 = !DILocalVariable(name: "action", arg: 2, scope: !1078, file: !6, line: 583, type: !275)
!1082 = !DILocation(line: 0, scope: !1078)
!1083 = !DILocation(line: 584, column: 5, scope: !1078)
!1084 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1085)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "control", arg: 1, scope: !1084, file: !6, line: 586, type: !43)
!1087 = !DILocation(line: 0, scope: !1084)
!1088 = !DILocation(line: 586, column: 55, scope: !1084)
!1089 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !2, file: !6, line: 587, type: !287, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "control", arg: 1, scope: !1089, file: !6, line: 587, type: !43)
!1092 = !DILocalVariable(name: "unparked", arg: 2, scope: !1089, file: !6, line: 587, type: !29)
!1093 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1089, file: !6, line: 587, type: !64)
!1094 = !DILocation(line: 0, scope: !1089)
!1095 = !DILocation(line: 588, column: 5, scope: !1089)
!1096 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 590, type: !291, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DILocalVariable(name: "control", arg: 1, scope: !1096, file: !6, line: 590, type: !43)
!1099 = !DILocalVariable(name: "action", arg: 2, scope: !1096, file: !6, line: 590, type: !293)
!1100 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1096, file: !6, line: 590, type: !64)
!1101 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1096, file: !6, line: 590, type: !64)
!1102 = !DILocation(line: 0, scope: !1096)
!1103 = !DILocation(line: 590, column: 128, scope: !1096)
!1104 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE", scope: !2, file: !6, line: 605, type: !1105, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1108)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!22, !22, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 64)
!1108 = !{!1109, !1110, !1111, !1112, !1113}
!1109 = !DILocalVariable(name: "addr", arg: 1, scope: !1104, file: !6, line: 605, type: !22)
!1110 = !DILocalVariable(name: "control", arg: 2, scope: !1104, file: !6, line: 605, type: !1107)
!1111 = !DILocalVariable(name: "queue_data", scope: !1104, file: !6, line: 606, type: !250)
!1112 = !DILocalVariable(name: "bucket", scope: !1104, file: !6, line: 608, type: !773)
!1113 = !DILocalVariable(name: "action", scope: !1104, file: !6, line: 610, type: !276)
!1114 = !DILocation(line: 0, scope: !1104)
!1115 = !DILocation(line: 606, column: 5, scope: !1104)
!1116 = !DILocation(line: 606, column: 16, scope: !1104)
!1117 = !DILocalVariable(name: "this", arg: 1, scope: !1118, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1118 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !256, retainedNodes: !1119)
!1119 = !{!1117}
!1120 = !DILocation(line: 0, scope: !1118, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 606, column: 16, scope: !1104)
!1122 = !DILocation(line: 0, scope: !547, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 455, column: 19, scope: !1118, inlinedAt: !1121)
!1124 = !DILocation(line: 96, column: 10, scope: !547, inlinedAt: !1123)
!1125 = !DILocation(line: 104, column: 29, scope: !559, inlinedAt: !1123)
!1126 = !DILocation(line: 104, column: 9, scope: !559, inlinedAt: !1123)
!1127 = !DILocation(line: 105, column: 28, scope: !559, inlinedAt: !1123)
!1128 = !DILocation(line: 105, column: 9, scope: !559, inlinedAt: !1123)
!1129 = !DILocation(line: 451, column: 15, scope: !1118, inlinedAt: !1121)
!1130 = !{!1131, !1132, i64 136}
!1131 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !554, i64 0, !1132, i64 136, !403, i64 144, !1132, i64 152}
!1132 = !{!"long long", !404, i64 0}
!1133 = !DILocation(line: 452, column: 17, scope: !1118, inlinedAt: !1121)
!1134 = !{!1131, !403, i64 144}
!1135 = !DILocation(line: 453, column: 15, scope: !1118, inlinedAt: !1121)
!1136 = !{!1131, !1132, i64 152}
!1137 = !DILocation(line: 608, column: 27, scope: !1104)
!1138 = !DILocation(line: 610, column: 5, scope: !1104)
!1139 = !DILocation(line: 610, column: 21, scope: !1104)
!1140 = !DILocalVariable(name: "this", arg: 1, scope: !1141, type: !1143, flags: DIFlagArtificial | DIFlagObjectPointer)
!1141 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !280, retainedNodes: !1142)
!1142 = !{!1140}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1144 = !DILocation(line: 0, scope: !1141, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 610, column: 21, scope: !1104)
!1146 = !DILocation(line: 577, column: 10, scope: !1141, inlinedAt: !1145)
!1147 = !{!1148, !557, i64 0}
!1148 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !557, i64 0, !1132, i64 8}
!1149 = !DILocation(line: 578, column: 15, scope: !1141, inlinedAt: !1145)
!1150 = !{!1148, !1132, i64 8}
!1151 = !DILocation(line: 611, column: 18, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1104, file: !6, line: 611, column: 9)
!1153 = !{!1154, !403, i64 0}
!1154 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !403, i64 0, !403, i64 8, !403, i64 16, !403, i64 24}
!1155 = !DILocation(line: 611, column: 27, scope: !1152)
!1156 = !DILocation(line: 611, column: 10, scope: !1152)
!1157 = !DILocation(line: 611, column: 9, scope: !1104)
!1158 = !DILocation(line: 0, scope: !965, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 612, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !6, line: 611, column: 46)
!1161 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1159)
!1162 = !DILocation(line: 0, scope: !975, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1159)
!1164 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1163)
!1165 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1159)
!1166 = !DILocation(line: 0, scope: !982, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1159)
!1168 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1167)
!1169 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1159)
!1170 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1159)
!1171 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1159)
!1172 = !DILocation(line: 612, column: 16, scope: !1160)
!1173 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1159)
!1174 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1159)
!1175 = !DILocation(line: 0, scope: !1017, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1159)
!1177 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1176)
!1178 = !DILocation(line: 613, column: 9, scope: !1160)
!1179 = !DILocation(line: 616, column: 21, scope: !1104)
!1180 = !DILocation(line: 617, column: 30, scope: !1104)
!1181 = !DILocation(line: 0, scope: !569, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 618, column: 23, scope: !1104)
!1183 = !DILocation(line: 114, column: 21, scope: !569, inlinedAt: !1182)
!1184 = !DILocation(line: 619, column: 16, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1104, file: !6, line: 619, column: 9)
!1186 = !{!1187, !403, i64 8}
!1187 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1188, i64 0, !403, i64 8, !403, i64 16}
!1188 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !1132, i64 0}
!1189 = !DILocation(line: 619, column: 21, scope: !1185)
!1190 = !DILocation(line: 619, column: 9, scope: !1104)
!1191 = !DILocation(line: 0, scope: !1185)
!1192 = !DILocation(line: 624, column: 12, scope: !1104)
!1193 = !DILocation(line: 624, column: 17, scope: !1104)
!1194 = !{!1187, !403, i64 16}
!1195 = !DILocation(line: 0, scope: !965, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 625, column: 18, scope: !1104)
!1197 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1196)
!1198 = !DILocation(line: 0, scope: !975, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1196)
!1200 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1199)
!1201 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1196)
!1202 = !DILocation(line: 0, scope: !982, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1196)
!1204 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1203)
!1205 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1196)
!1206 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1196)
!1207 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1196)
!1208 = !DILocation(line: 625, column: 12, scope: !1104)
!1209 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1196)
!1210 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1196)
!1211 = !DILocation(line: 0, scope: !1017, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1196)
!1213 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1212)
!1214 = !DILocation(line: 627, column: 13, scope: !1104)
!1215 = !{!1154, !403, i64 8}
!1216 = !DILocation(line: 627, column: 5, scope: !1104)
!1217 = !DILocation(line: 0, scope: !597, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 629, column: 23, scope: !1104)
!1219 = !DILocation(line: 118, column: 9, scope: !597, inlinedAt: !1218)
!1220 = !DILocation(line: 119, column: 16, scope: !597, inlinedAt: !1218)
!1221 = !DILocation(line: 119, column: 9, scope: !597, inlinedAt: !1218)
!1222 = !DILocation(line: 120, column: 13, scope: !607, inlinedAt: !1218)
!1223 = distinct !{!1223, !1221, !1224, !610}
!1224 = !DILocation(line: 121, column: 9, scope: !597, inlinedAt: !1218)
!1225 = !DILocation(line: 122, column: 9, scope: !597, inlinedAt: !1218)
!1226 = !DILocation(line: 631, column: 5, scope: !1104)
!1227 = !{!1132, !1132, i64 0}
!1228 = !DILocation(line: 634, column: 1, scope: !1104)
!1229 = !DILocalVariable(name: "this", arg: 1, scope: !1230, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1230 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !260, retainedNodes: !1231)
!1231 = !{!1229}
!1232 = !DILocation(line: 0, scope: !1230, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 634, column: 1, scope: !1104)
!1234 = !DILocation(line: 0, scope: !622, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 457, column: 41, scope: !1236, inlinedAt: !1233)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !6, line: 457, column: 41)
!1237 = !DILocation(line: 109, column: 9, scope: !628, inlinedAt: !1235)
!1238 = !DILocation(line: 110, column: 9, scope: !628, inlinedAt: !1235)
!1239 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE", scope: !2, file: !6, line: 636, type: !1105, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1249, !1252, !1253, !1256}
!1241 = !DILocalVariable(name: "addr", arg: 1, scope: !1239, file: !6, line: 636, type: !22)
!1242 = !DILocalVariable(name: "control", arg: 2, scope: !1239, file: !6, line: 636, type: !1107)
!1243 = !DILocalVariable(name: "bucket", scope: !1239, file: !6, line: 637, type: !773)
!1244 = !DILocalVariable(name: "data_location", scope: !1239, file: !6, line: 639, type: !264)
!1245 = !DILocalVariable(name: "prev", scope: !1239, file: !6, line: 640, type: !249)
!1246 = !DILocalVariable(name: "data", scope: !1239, file: !6, line: 641, type: !249)
!1247 = !DILocalVariable(name: "cur_addr", scope: !1248, file: !6, line: 643, type: !22)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !6, line: 642, column: 29)
!1249 = !DILocalVariable(name: "next", scope: !1250, file: !6, line: 646, type: !249)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 645, column: 31)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !6, line: 645, column: 13)
!1252 = !DILocalVariable(name: "more_waiters", scope: !1250, file: !6, line: 649, type: !64)
!1253 = !DILocalVariable(name: "data2", scope: !1254, file: !6, line: 654, type: !249)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !6, line: 653, column: 20)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !6, line: 651, column: 17)
!1256 = !DILocalVariable(name: "cur_addr2", scope: !1257, file: !6, line: 656, type: !22)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !6, line: 655, column: 59)
!1258 = !DILocation(line: 0, scope: !1239)
!1259 = !DILocation(line: 637, column: 27, scope: !1239)
!1260 = !DILocation(line: 639, column: 42, scope: !1239)
!1261 = !DILocation(line: 641, column: 24, scope: !1239)
!1262 = !DILocation(line: 642, column: 5, scope: !1239)
!1263 = !DILocation(line: 639, column: 18, scope: !1239)
!1264 = !DILocation(line: 640, column: 17, scope: !1239)
!1265 = !DILocation(line: 641, column: 17, scope: !1239)
!1266 = !DILocation(line: 642, column: 17, scope: !1239)
!1267 = !DILocation(line: 644, column: 36, scope: !1248)
!1268 = !DILocation(line: 0, scope: !490, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 644, column: 9, scope: !1248)
!1270 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1269)
!1271 = !DILocation(line: 0, scope: !1248)
!1272 = !DILocation(line: 645, column: 22, scope: !1251)
!1273 = !DILocation(line: 0, scope: !1251)
!1274 = !DILocation(line: 645, column: 13, scope: !1248)
!1275 = !DILocation(line: 0, scope: !1250)
!1276 = !DILocation(line: 647, column: 28, scope: !1250)
!1277 = !DILocation(line: 651, column: 24, scope: !1255)
!1278 = !DILocation(line: 651, column: 29, scope: !1255)
!1279 = !DILocation(line: 651, column: 17, scope: !1250)
!1280 = !DILocation(line: 0, scope: !1254)
!1281 = !DILocation(line: 655, column: 30, scope: !1254)
!1282 = !DILocation(line: 655, column: 17, scope: !1254)
!1283 = !DILocation(line: 652, column: 29, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1255, file: !6, line: 651, column: 38)
!1285 = !DILocation(line: 653, column: 13, scope: !1284)
!1286 = !DILocation(line: 657, column: 49, scope: !1257)
!1287 = !DILocation(line: 0, scope: !490, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 657, column: 21, scope: !1257)
!1289 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1288)
!1290 = !DILocation(line: 0, scope: !1257)
!1291 = !DILocation(line: 658, column: 47, scope: !1257)
!1292 = !DILocation(line: 659, column: 36, scope: !1257)
!1293 = !DILocation(line: 655, column: 41, scope: !1254)
!1294 = distinct !{!1294, !1282, !1295, !610}
!1295 = !DILocation(line: 660, column: 17, scope: !1254)
!1296 = !DILocation(line: 658, column: 34, scope: !1257)
!1297 = !DILocation(line: 663, column: 41, scope: !1250)
!1298 = !DILocation(line: 649, column: 18, scope: !1250)
!1299 = !{!1154, !403, i64 16}
!1300 = !DILocation(line: 663, column: 61, scope: !1250)
!1301 = !DILocation(line: 663, column: 33, scope: !1250)
!1302 = !DILocation(line: 663, column: 19, scope: !1250)
!1303 = !DILocation(line: 663, column: 31, scope: !1250)
!1304 = !DILocation(line: 0, scope: !743, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 665, column: 26, scope: !1250)
!1306 = !DILocation(line: 126, column: 29, scope: !743, inlinedAt: !1305)
!1307 = !DILocation(line: 126, column: 9, scope: !743, inlinedAt: !1305)
!1308 = !DILocation(line: 0, scope: !965, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 666, column: 26, scope: !1250)
!1310 = !DILocation(line: 0, scope: !975, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1309)
!1312 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1311)
!1313 = !DILocation(line: 0, scope: !982, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1309)
!1315 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1314)
!1316 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1309)
!1317 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1309)
!1318 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1309)
!1319 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1309)
!1320 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1309)
!1321 = !DILocation(line: 0, scope: !1017, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1309)
!1323 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1322)
!1324 = !DILocation(line: 0, scope: !750, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 667, column: 26, scope: !1250)
!1326 = !DILocation(line: 130, column: 9, scope: !750, inlinedAt: !1325)
!1327 = !DILocation(line: 130, column: 21, scope: !750, inlinedAt: !1325)
!1328 = !DILocation(line: 131, column: 30, scope: !750, inlinedAt: !1325)
!1329 = !DILocation(line: 131, column: 9, scope: !750, inlinedAt: !1325)
!1330 = !DILocation(line: 0, scope: !759, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 668, column: 26, scope: !1250)
!1332 = !DILocation(line: 135, column: 9, scope: !759, inlinedAt: !1331)
!1333 = distinct !{!1333, !1262, !1334, !610}
!1334 = !DILocation(line: 677, column: 5, scope: !1239)
!1335 = !DILocation(line: 679, column: 13, scope: !1239)
!1336 = !DILocation(line: 679, column: 5, scope: !1239)
!1337 = !DILocation(line: 0, scope: !965, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 681, column: 18, scope: !1239)
!1339 = !DILocation(line: 0, scope: !975, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1338)
!1341 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1340)
!1342 = !DILocation(line: 0, scope: !982, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1338)
!1344 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1343)
!1345 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1338)
!1346 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1338)
!1347 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1338)
!1348 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1338)
!1349 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1338)
!1350 = !DILocation(line: 0, scope: !1017, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1338)
!1352 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1351)
!1353 = !DILocation(line: 684, column: 5, scope: !1239)
!1354 = !DILocation(line: 685, column: 1, scope: !1239)
!1355 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy", scope: !2, file: !6, line: 687, type: !1356, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!22, !22, !22}
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1367, !1371, !1372, !1373, !1375, !1376, !1381, !1383, !1385}
!1359 = !DILocalVariable(name: "addr", arg: 1, scope: !1355, file: !6, line: 687, type: !22)
!1360 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1355, file: !6, line: 687, type: !22)
!1361 = !DILocalVariable(name: "bucket", scope: !1355, file: !6, line: 688, type: !773)
!1362 = !DILocalVariable(name: "data_location", scope: !1355, file: !6, line: 690, type: !264)
!1363 = !DILocalVariable(name: "prev", scope: !1355, file: !6, line: 691, type: !249)
!1364 = !DILocalVariable(name: "data", scope: !1355, file: !6, line: 692, type: !249)
!1365 = !DILocalVariable(name: "waiters", scope: !1355, file: !6, line: 693, type: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !433)
!1367 = !DILocalVariable(name: "temp_list_storage", scope: !1355, file: !6, line: 694, type: !1368)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 16)
!1371 = !DILocalVariable(name: "temp_list", scope: !1355, file: !6, line: 695, type: !264)
!1372 = !DILocalVariable(name: "max_waiters", scope: !1355, file: !6, line: 696, type: !1366)
!1373 = !DILocalVariable(name: "cur_addr", scope: !1374, file: !6, line: 699, type: !22)
!1374 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 698, column: 29)
!1375 = !DILocalVariable(name: "next", scope: !1374, file: !6, line: 702, type: !249)
!1376 = !DILocalVariable(name: "temp", scope: !1377, file: !6, line: 711, type: !264)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !6, line: 710, column: 41)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 710, column: 17)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !6, line: 703, column: 31)
!1380 = distinct !DILexicalBlock(scope: !1374, file: !6, line: 703, column: 13)
!1381 = !DILocalVariable(name: "i", scope: !1382, file: !6, line: 713, type: !1366)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !6, line: 713, column: 17)
!1383 = !DILocalVariable(name: "i", scope: !1384, file: !6, line: 737, type: !1366)
!1384 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 737, column: 5)
!1385 = !DILocalVariable(name: "i", scope: !1386, file: !6, line: 742, type: !1366)
!1386 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 742, column: 5)
!1387 = !DILocation(line: 0, scope: !1355)
!1388 = !DILocation(line: 688, column: 27, scope: !1355)
!1389 = !DILocation(line: 690, column: 42, scope: !1355)
!1390 = !DILocation(line: 692, column: 24, scope: !1355)
!1391 = !DILocation(line: 694, column: 5, scope: !1355)
!1392 = !DILocation(line: 694, column: 17, scope: !1355)
!1393 = !DILocation(line: 695, column: 31, scope: !1355)
!1394 = !DILocation(line: 698, column: 17, scope: !1355)
!1395 = !DILocation(line: 698, column: 5, scope: !1355)
!1396 = !DILocation(line: 700, column: 36, scope: !1374)
!1397 = !DILocation(line: 0, scope: !490, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 700, column: 9, scope: !1374)
!1399 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1398)
!1400 = !DILocation(line: 702, column: 34, scope: !1374)
!1401 = !DILocation(line: 0, scope: !1374)
!1402 = !DILocation(line: 703, column: 22, scope: !1380)
!1403 = !DILocation(line: 0, scope: !1380)
!1404 = !DILocation(line: 703, column: 13, scope: !1374)
!1405 = !DILocation(line: 706, column: 24, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 706, column: 17)
!1407 = !DILocation(line: 706, column: 29, scope: !1406)
!1408 = !DILocation(line: 706, column: 17, scope: !1379)
!1409 = !DILocation(line: 707, column: 29, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !6, line: 706, column: 38)
!1411 = !DILocation(line: 708, column: 13, scope: !1410)
!1412 = !DILocation(line: 710, column: 25, scope: !1378)
!1413 = !DILocation(line: 710, column: 17, scope: !1379)
!1414 = !DILocation(line: 0, scope: !1377)
!1415 = !DILocation(line: 712, column: 86, scope: !1377)
!1416 = !DILocation(line: 712, column: 44, scope: !1377)
!1417 = !DILocation(line: 712, column: 29, scope: !1377)
!1418 = !DILocation(line: 0, scope: !1382)
!1419 = !DILocation(line: 713, column: 38, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1382, file: !6, line: 713, column: 17)
!1421 = !DILocation(line: 713, column: 17, scope: !1382)
!1422 = !DILocation(line: 716, column: 29, scope: !1377)
!1423 = !DILocation(line: 717, column: 26, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1377, file: !6, line: 717, column: 21)
!1425 = !DILocation(line: 717, column: 21, scope: !1377)
!1426 = !DILocation(line: 714, column: 36, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !6, line: 713, column: 58)
!1428 = !DILocation(line: 714, column: 21, scope: !1427)
!1429 = !DILocation(line: 714, column: 34, scope: !1427)
!1430 = !DILocation(line: 713, column: 54, scope: !1420)
!1431 = distinct !{!1431, !1421, !1432, !610}
!1432 = !DILocation(line: 715, column: 17, scope: !1382)
!1433 = !DILocation(line: 718, column: 26, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1424, file: !6, line: 717, column: 52)
!1435 = !DILocation(line: 718, column: 21, scope: !1434)
!1436 = !DILocation(line: 719, column: 17, scope: !1434)
!1437 = !DILocation(line: 722, column: 19, scope: !1379)
!1438 = !DILocation(line: 722, column: 31, scope: !1379)
!1439 = !DILocation(line: 724, column: 30, scope: !1379)
!1440 = !DILocation(line: 724, column: 13, scope: !1379)
!1441 = !DILocation(line: 724, column: 34, scope: !1379)
!1442 = !DILocation(line: 0, scope: !743, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 725, column: 26, scope: !1379)
!1444 = !DILocation(line: 126, column: 29, scope: !743, inlinedAt: !1443)
!1445 = !DILocation(line: 126, column: 9, scope: !743, inlinedAt: !1443)
!1446 = !DILocation(line: 728, column: 9, scope: !1379)
!1447 = distinct !{!1447, !1395, !1448, !610}
!1448 = !DILocation(line: 733, column: 5, scope: !1355)
!1449 = !DILocation(line: 0, scope: !965, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 735, column: 18, scope: !1355)
!1451 = !DILocation(line: 305, column: 28, scope: !965, inlinedAt: !1450)
!1452 = !DILocation(line: 0, scope: !975, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 305, column: 9, scope: !965, inlinedAt: !1450)
!1454 = !DILocation(line: 65, column: 11, scope: !975, inlinedAt: !1453)
!1455 = !DILocation(line: 307, column: 51, scope: !965, inlinedAt: !1450)
!1456 = !DILocation(line: 0, scope: !982, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 307, column: 25, scope: !965, inlinedAt: !1450)
!1458 = !DILocation(line: 196, column: 12, scope: !982, inlinedAt: !1457)
!1459 = !DILocation(line: 310, column: 39, scope: !965, inlinedAt: !1450)
!1460 = !DILocation(line: 310, column: 57, scope: !965, inlinedAt: !1450)
!1461 = !DILocation(line: 313, column: 31, scope: !991, inlinedAt: !1450)
!1462 = !DILocation(line: 735, column: 12, scope: !1355)
!1463 = !DILocation(line: 314, column: 13, scope: !994, inlinedAt: !1450)
!1464 = !DILocation(line: 315, column: 9, scope: !994, inlinedAt: !1450)
!1465 = !DILocation(line: 0, scope: !1017, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 317, column: 9, scope: !965, inlinedAt: !1450)
!1467 = !DILocation(line: 68, column: 5, scope: !1017, inlinedAt: !1466)
!1468 = !DILocation(line: 0, scope: !1384)
!1469 = !DILocation(line: 737, column: 26, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1384, file: !6, line: 737, column: 5)
!1471 = !DILocation(line: 737, column: 5, scope: !1384)
!1472 = !DILocation(line: 0, scope: !1386)
!1473 = !DILocation(line: 742, column: 5, scope: !1386)
!1474 = !DILocation(line: 738, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 737, column: 42)
!1476 = !DILocation(line: 0, scope: !750, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 738, column: 30, scope: !1475)
!1478 = !DILocation(line: 130, column: 9, scope: !750, inlinedAt: !1477)
!1479 = !DILocation(line: 130, column: 21, scope: !750, inlinedAt: !1477)
!1480 = !DILocation(line: 131, column: 30, scope: !750, inlinedAt: !1477)
!1481 = !DILocation(line: 131, column: 9, scope: !750, inlinedAt: !1477)
!1482 = !DILocation(line: 737, column: 38, scope: !1470)
!1483 = distinct !{!1483, !1471, !1484, !610}
!1484 = !DILocation(line: 739, column: 5, scope: !1384)
!1485 = !DILocation(line: 746, column: 19, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 746, column: 9)
!1487 = !DILocation(line: 746, column: 9, scope: !1355)
!1488 = !DILocation(line: 743, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !6, line: 742, column: 42)
!1490 = distinct !DILexicalBlock(scope: !1386, file: !6, line: 742, column: 5)
!1491 = !DILocation(line: 0, scope: !759, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 743, column: 30, scope: !1489)
!1493 = !DILocation(line: 135, column: 31, scope: !759, inlinedAt: !1492)
!1494 = !DILocation(line: 135, column: 9, scope: !759, inlinedAt: !1492)
!1495 = !DILocation(line: 742, column: 38, scope: !1490)
!1496 = !DILocation(line: 742, column: 26, scope: !1490)
!1497 = distinct !{!1497, !1473, !1498, !610}
!1498 = !DILocation(line: 744, column: 5, scope: !1386)
!1499 = !DILocation(line: 747, column: 14, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1486, file: !6, line: 746, column: 45)
!1501 = !DILocation(line: 747, column: 9, scope: !1500)
!1502 = !DILocation(line: 748, column: 5, scope: !1500)
!1503 = !DILocation(line: 751, column: 1, scope: !1355)
!1504 = !DILocation(line: 750, column: 5, scope: !1355)
!1505 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy", scope: !2, file: !6, line: 753, type: !1506, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!29, !22, !22, !1107, !22}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1523}
!1509 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1505, file: !6, line: 753, type: !22)
!1510 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1505, file: !6, line: 753, type: !22)
!1511 = !DILocalVariable(name: "control", arg: 3, scope: !1505, file: !6, line: 753, type: !1107)
!1512 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1505, file: !6, line: 753, type: !22)
!1513 = !DILocalVariable(name: "buckets", scope: !1505, file: !6, line: 754, type: !827)
!1514 = !DILocalVariable(name: "action", scope: !1505, file: !6, line: 756, type: !276)
!1515 = !DILocalVariable(name: "data_location", scope: !1505, file: !6, line: 762, type: !264)
!1516 = !DILocalVariable(name: "prev", scope: !1505, file: !6, line: 763, type: !249)
!1517 = !DILocalVariable(name: "data", scope: !1505, file: !6, line: 764, type: !249)
!1518 = !DILocalVariable(name: "requeue", scope: !1505, file: !6, line: 765, type: !249)
!1519 = !DILocalVariable(name: "requeue_tail", scope: !1505, file: !6, line: 766, type: !249)
!1520 = !DILocalVariable(name: "wakeup", scope: !1505, file: !6, line: 767, type: !249)
!1521 = !DILocalVariable(name: "cur_addr", scope: !1522, file: !6, line: 770, type: !22)
!1522 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 769, column: 29)
!1523 = !DILocalVariable(name: "next", scope: !1522, file: !6, line: 773, type: !249)
!1524 = !DILocation(line: 0, scope: !1505)
!1525 = !DILocation(line: 754, column: 5, scope: !1505)
!1526 = !DILocation(line: 754, column: 17, scope: !1505)
!1527 = !DILocation(line: 754, column: 27, scope: !1505)
!1528 = !DILocation(line: 756, column: 5, scope: !1505)
!1529 = !DILocation(line: 756, column: 21, scope: !1505)
!1530 = !DILocation(line: 0, scope: !1141, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 756, column: 21, scope: !1505)
!1532 = !DILocation(line: 577, column: 10, scope: !1141, inlinedAt: !1531)
!1533 = !DILocation(line: 578, column: 15, scope: !1141, inlinedAt: !1531)
!1534 = !DILocation(line: 757, column: 18, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 757, column: 9)
!1536 = !DILocation(line: 757, column: 27, scope: !1535)
!1537 = !DILocation(line: 757, column: 10, scope: !1535)
!1538 = !DILocation(line: 757, column: 9, scope: !1505)
!1539 = !DILocation(line: 758, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !6, line: 757, column: 46)
!1541 = !DILocation(line: 759, column: 9, scope: !1540)
!1542 = !DILocation(line: 762, column: 43, scope: !1505)
!1543 = !DILocation(line: 762, column: 48, scope: !1505)
!1544 = !DILocation(line: 764, column: 24, scope: !1505)
!1545 = !DILocation(line: 769, column: 17, scope: !1505)
!1546 = !DILocation(line: 769, column: 5, scope: !1505)
!1547 = !DILocation(line: 771, column: 36, scope: !1522)
!1548 = !DILocation(line: 0, scope: !490, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 771, column: 9, scope: !1522)
!1550 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1549)
!1551 = !DILocation(line: 773, column: 34, scope: !1522)
!1552 = !DILocation(line: 0, scope: !1522)
!1553 = !DILocation(line: 774, column: 22, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1522, file: !6, line: 774, column: 13)
!1555 = !DILocation(line: 774, column: 13, scope: !1522)
!1556 = !DILocation(line: 775, column: 28, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !6, line: 774, column: 36)
!1558 = !DILocation(line: 777, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1557, file: !6, line: 777, column: 17)
!1560 = !DILocation(line: 777, column: 30, scope: !1559)
!1561 = !DILocation(line: 777, column: 35, scope: !1559)
!1562 = !DILocation(line: 777, column: 17, scope: !1557)
!1563 = !DILocation(line: 778, column: 35, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !6, line: 777, column: 44)
!1565 = !DILocation(line: 779, column: 13, scope: !1564)
!1566 = !DILocation(line: 781, column: 24, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !6, line: 781, column: 17)
!1568 = !DILocation(line: 781, column: 35, scope: !1567)
!1569 = !DILocation(line: 784, column: 29, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !6, line: 784, column: 21)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 783, column: 20)
!1572 = !DILocation(line: 784, column: 21, scope: !1571)
!1573 = !DILocation(line: 787, column: 35, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !6, line: 786, column: 24)
!1575 = !DILocation(line: 787, column: 40, scope: !1574)
!1576 = !DILocalVariable(name: "addr", arg: 1, scope: !1577, file: !6, line: 213, type: !300)
!1577 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPyS4_", scope: !491, file: !6, line: 213, type: !1578, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !300, !300}
!1580 = !{!1576, !1581}
!1581 = !DILocalVariable(name: "val", arg: 2, scope: !1577, file: !6, line: 213, type: !300)
!1582 = !DILocation(line: 0, scope: !1577, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 791, column: 17, scope: !1571)
!1584 = !DILocation(line: 214, column: 5, scope: !1577, inlinedAt: !1583)
!1585 = !DILocation(line: 765, column: 17, scope: !1505)
!1586 = !DILocation(line: 766, column: 17, scope: !1505)
!1587 = distinct !{!1587, !1546, !1588, !610}
!1588 = !DILocation(line: 800, column: 5, scope: !1505)
!1589 = !DILocation(line: 802, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 802, column: 9)
!1591 = !DILocation(line: 802, column: 9, scope: !1505)
!1592 = !DILocation(line: 803, column: 23, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !6, line: 802, column: 29)
!1594 = !DILocation(line: 803, column: 28, scope: !1593)
!1595 = !DILocation(line: 804, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !6, line: 804, column: 13)
!1597 = !DILocation(line: 804, column: 24, scope: !1596)
!1598 = !DILocation(line: 804, column: 29, scope: !1596)
!1599 = !DILocation(line: 804, column: 13, scope: !1593)
!1600 = !DILocation(line: 807, column: 24, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !6, line: 806, column: 16)
!1602 = !DILocation(line: 807, column: 30, scope: !1601)
!1603 = !DILocation(line: 0, scope: !1596)
!1604 = !DILocation(line: 809, column: 20, scope: !1593)
!1605 = !DILocation(line: 809, column: 25, scope: !1593)
!1606 = !DILocation(line: 810, column: 5, scope: !1593)
!1607 = !DILocation(line: 812, column: 13, scope: !1505)
!1608 = !{!1154, !403, i64 24}
!1609 = !DILocation(line: 812, column: 55, scope: !1505)
!1610 = !DILocation(line: 812, column: 5, scope: !1505)
!1611 = !DILocation(line: 814, column: 9, scope: !1505)
!1612 = !DILocation(line: 815, column: 17, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !6, line: 814, column: 28)
!1614 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 814, column: 9)
!1615 = !DILocation(line: 815, column: 29, scope: !1613)
!1616 = !DILocation(line: 0, scope: !743, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 816, column: 24, scope: !1613)
!1618 = !DILocation(line: 126, column: 29, scope: !743, inlinedAt: !1617)
!1619 = !DILocation(line: 126, column: 9, scope: !743, inlinedAt: !1617)
!1620 = !DILocation(line: 817, column: 9, scope: !1613)
!1621 = !DILocation(line: 0, scope: !750, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 818, column: 24, scope: !1613)
!1623 = !DILocation(line: 130, column: 9, scope: !750, inlinedAt: !1622)
!1624 = !DILocation(line: 130, column: 21, scope: !750, inlinedAt: !1622)
!1625 = !DILocation(line: 131, column: 30, scope: !750, inlinedAt: !1622)
!1626 = !DILocation(line: 131, column: 9, scope: !750, inlinedAt: !1622)
!1627 = !DILocation(line: 0, scope: !759, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 819, column: 24, scope: !1613)
!1629 = !DILocation(line: 135, column: 9, scope: !759, inlinedAt: !1628)
!1630 = !DILocation(line: 820, column: 5, scope: !1613)
!1631 = !DILocation(line: 821, column: 9, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1614, file: !6, line: 820, column: 12)
!1633 = !DILocation(line: 824, column: 30, scope: !1505)
!1634 = !DILocation(line: 824, column: 12, scope: !1505)
!1635 = !DILocation(line: 825, column: 1, scope: !1505)
!1636 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 840, type: !273, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1637)
!1637 = !{!1638, !1639, !1640, !1641}
!1638 = !DILocalVariable(name: "control", arg: 1, scope: !1636, file: !6, line: 840, type: !43)
!1639 = !DILocalVariable(name: "action", arg: 2, scope: !1636, file: !6, line: 840, type: !275)
!1640 = !DILocalVariable(name: "mutex_control", scope: !1636, file: !6, line: 841, type: !265)
!1641 = !DILocalVariable(name: "result", scope: !1636, file: !6, line: 843, type: !22)
!1642 = !DILocation(line: 0, scope: !1636)
!1643 = !DILocation(line: 844, column: 40, scope: !1636)
!1644 = !{!1645, !403, i64 32}
!1645 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !403, i64 32}
!1646 = !DILocation(line: 0, scope: !490, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 844, column: 5, scope: !1636)
!1648 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1647)
!1649 = !DILocation(line: 845, column: 19, scope: !1636)
!1650 = !DILocation(line: 845, column: 5, scope: !1636)
!1651 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !2, file: !6, line: 849, type: !287, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657}
!1653 = !DILocalVariable(name: "control", arg: 1, scope: !1651, file: !6, line: 849, type: !43)
!1654 = !DILocalVariable(name: "unparked", arg: 2, scope: !1651, file: !6, line: 849, type: !29)
!1655 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1651, file: !6, line: 849, type: !64)
!1656 = !DILocalVariable(name: "mutex_control", scope: !1651, file: !6, line: 850, type: !265)
!1657 = !DILocalVariable(name: "return_state", scope: !1651, file: !6, line: 853, type: !22)
!1658 = !DILocation(line: 0, scope: !1651)
!1659 = !DILocation(line: 853, column: 30, scope: !1651)
!1660 = !DILocation(line: 854, column: 41, scope: !1651)
!1661 = !DILocalVariable(name: "addr", arg: 1, scope: !1662, file: !6, line: 218, type: !494)
!1662 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIyEEvPT_S6_", scope: !491, file: !6, line: 218, type: !492, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !1663)
!1663 = !{!1661, !1664}
!1664 = !DILocalVariable(name: "val", arg: 2, scope: !1662, file: !6, line: 218, type: !494)
!1665 = !DILocation(line: 0, scope: !1662, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 854, column: 5, scope: !1651)
!1667 = !DILocation(line: 219, column: 5, scope: !1662, inlinedAt: !1666)
!1668 = !DILocation(line: 856, column: 5, scope: !1651)
!1669 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !2, file: !6, line: 968, type: !287, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675}
!1671 = !DILocalVariable(name: "control", arg: 1, scope: !1669, file: !6, line: 968, type: !43)
!1672 = !DILocalVariable(name: "unparked", arg: 2, scope: !1669, file: !6, line: 968, type: !29)
!1673 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1669, file: !6, line: 968, type: !64)
!1674 = !DILocalVariable(name: "signal_control", scope: !1669, file: !6, line: 969, type: !305)
!1675 = !DILocalVariable(name: "val", scope: !1676, file: !6, line: 972, type: !22)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 971, column: 24)
!1677 = distinct !DILexicalBlock(scope: !1669, file: !6, line: 971, column: 9)
!1678 = !DILocation(line: 0, scope: !1669)
!1679 = !DILocation(line: 971, column: 9, scope: !1669)
!1680 = !DILocation(line: 0, scope: !1676)
!1681 = !DILocation(line: 973, column: 46, scope: !1676)
!1682 = !{!1683, !403, i64 32}
!1683 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !403, i64 32, !403, i64 40}
!1684 = !DILocation(line: 0, scope: !1577, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 973, column: 9, scope: !1676)
!1686 = !DILocation(line: 214, column: 5, scope: !1577, inlinedAt: !1685)
!1687 = !DILocation(line: 974, column: 5, scope: !1676)
!1688 = !DILocation(line: 979, column: 5, scope: !1669)
!1689 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 996, type: !273, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1690)
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DILocalVariable(name: "control", arg: 1, scope: !1689, file: !6, line: 996, type: !43)
!1692 = !DILocalVariable(name: "action", arg: 2, scope: !1689, file: !6, line: 996, type: !275)
!1693 = !DILocalVariable(name: "broadcast_control", scope: !1689, file: !6, line: 997, type: !330)
!1694 = !DILocalVariable(name: "val", scope: !1689, file: !6, line: 999, type: !22)
!1695 = !DILocation(line: 0, scope: !1689)
!1696 = !DILocation(line: 1000, column: 44, scope: !1689)
!1697 = !{!1698, !403, i64 32}
!1698 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !403, i64 32, !403, i64 40}
!1699 = !DILocation(line: 0, scope: !490, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 1000, column: 5, scope: !1689)
!1701 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1700)
!1702 = !DILocation(line: 1004, column: 46, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 1004, column: 9)
!1704 = !{!1698, !403, i64 40}
!1705 = !DILocation(line: 1004, column: 16, scope: !1703)
!1706 = !DILocation(line: 1004, column: 13, scope: !1703)
!1707 = !DILocation(line: 1004, column: 9, scope: !1689)
!1708 = !DILocation(line: 0, scope: !1577, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 1009, column: 5, scope: !1689)
!1710 = !DILocation(line: 214, column: 5, scope: !1577, inlinedAt: !1709)
!1711 = !DILocation(line: 1011, column: 45, scope: !1689)
!1712 = !DILocalVariable(name: "this", arg: 1, scope: !1713, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1713 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1714)
!1714 = !{!1712, !1715, !1716}
!1715 = !DILocalVariable(name: "val", scope: !1713, file: !6, line: 939, type: !22)
!1716 = !DILocalVariable(name: "desired", scope: !1717, file: !6, line: 946, type: !22)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !6, line: 941, column: 22)
!1718 = !DILocation(line: 0, scope: !1713, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 1011, column: 52, scope: !1689)
!1720 = !DILocation(line: 940, column: 30, scope: !1713, inlinedAt: !1719)
!1721 = !DILocation(line: 0, scope: !490, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 940, column: 9, scope: !1713, inlinedAt: !1719)
!1723 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1722)
!1724 = !DILocation(line: 942, column: 23, scope: !1725, inlinedAt: !1719)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !6, line: 942, column: 17)
!1726 = !DILocation(line: 942, column: 18, scope: !1725, inlinedAt: !1719)
!1727 = !DILocation(line: 942, column: 17, scope: !1717, inlinedAt: !1719)
!1728 = !DILocation(line: 946, column: 37, scope: !1717, inlinedAt: !1719)
!1729 = !DILocation(line: 0, scope: !1717, inlinedAt: !1719)
!1730 = !DILocalVariable(name: "addr", arg: 1, scope: !1731, file: !6, line: 187, type: !300)
!1731 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPyS4_S4_", scope: !491, file: !6, line: 187, type: !510, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1732)
!1732 = !{!1730, !1733, !1734}
!1733 = !DILocalVariable(name: "expected", arg: 2, scope: !1731, file: !6, line: 187, type: !300)
!1734 = !DILocalVariable(name: "desired", arg: 3, scope: !1731, file: !6, line: 187, type: !300)
!1735 = !DILocation(line: 0, scope: !1731, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 947, column: 17, scope: !1737, inlinedAt: !1719)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !6, line: 947, column: 17)
!1738 = !DILocation(line: 188, column: 12, scope: !1731, inlinedAt: !1736)
!1739 = !DILocation(line: 1011, column: 12, scope: !1689)
!1740 = !DILocation(line: 1011, column: 23, scope: !1689)
!1741 = !DILocation(line: 1013, column: 5, scope: !1689)
!1742 = !DILocation(line: 1014, column: 1, scope: !1689)
!1743 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !2, file: !6, line: 1016, type: !291, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749}
!1745 = !DILocalVariable(name: "control", arg: 1, scope: !1743, file: !6, line: 1016, type: !43)
!1746 = !DILocalVariable(name: "action", arg: 2, scope: !1743, file: !6, line: 1016, type: !293)
!1747 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1743, file: !6, line: 1016, type: !64)
!1748 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1743, file: !6, line: 1016, type: !64)
!1749 = !DILocalVariable(name: "broadcast_control", scope: !1743, file: !6, line: 1017, type: !330)
!1750 = !DILocation(line: 0, scope: !1743)
!1751 = !DILocation(line: 1019, column: 16, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1743, file: !6, line: 1019, column: 9)
!1753 = !DILocation(line: 1019, column: 27, scope: !1752)
!1754 = !DILocation(line: 1020, column: 28, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !6, line: 1019, column: 45)
!1756 = !DILocalVariable(name: "this", arg: 1, scope: !1757, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1757 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !325, retainedNodes: !1758)
!1758 = !{!1756}
!1759 = !DILocation(line: 0, scope: !1757, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 1020, column: 35, scope: !1755)
!1761 = !DILocation(line: 954, column: 34, scope: !1757, inlinedAt: !1760)
!1762 = !DILocalVariable(name: "addr", arg: 1, scope: !1763, file: !6, line: 209, type: !300)
!1763 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPyy", scope: !491, file: !6, line: 209, type: !735, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1764)
!1764 = !{!1762, !1765}
!1765 = !DILocalVariable(name: "val", arg: 2, scope: !1763, file: !6, line: 209, type: !22)
!1766 = !DILocation(line: 0, scope: !1763, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 954, column: 9, scope: !1757, inlinedAt: !1760)
!1768 = !DILocation(line: 210, column: 12, scope: !1763, inlinedAt: !1767)
!1769 = !DILocation(line: 1021, column: 5, scope: !1755)
!1770 = !DILocation(line: 1022, column: 1, scope: !1743)
!1771 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !2, file: !6, line: 1038, type: !273, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775, !1776}
!1773 = !DILocalVariable(name: "control", arg: 1, scope: !1771, file: !6, line: 1038, type: !43)
!1774 = !DILocalVariable(name: "action", arg: 2, scope: !1771, file: !6, line: 1038, type: !275)
!1775 = !DILocalVariable(name: "wait_control", scope: !1771, file: !6, line: 1039, type: !340)
!1776 = !DILocalVariable(name: "val", scope: !1771, file: !6, line: 1041, type: !22)
!1777 = !DILocation(line: 0, scope: !1771)
!1778 = !DILocation(line: 1042, column: 39, scope: !1771)
!1779 = !{!1780, !403, i64 32}
!1780 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !403, i64 32, !403, i64 40}
!1781 = !DILocation(line: 0, scope: !490, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1042, column: 5, scope: !1771)
!1783 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1782)
!1784 = !DILocation(line: 1044, column: 13, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1771, file: !6, line: 1044, column: 9)
!1786 = !DILocation(line: 0, scope: !1785)
!1787 = !{!1780, !403, i64 40}
!1788 = !DILocation(line: 1044, column: 9, scope: !1771)
!1789 = !DILocation(line: 0, scope: !1577, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 1046, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1785, file: !6, line: 1044, column: 19)
!1792 = !DILocation(line: 214, column: 5, scope: !1577, inlinedAt: !1790)
!1793 = !DILocation(line: 1047, column: 5, scope: !1791)
!1794 = !DILocation(line: 1047, column: 20, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1785, file: !6, line: 1047, column: 16)
!1796 = !DILocation(line: 1047, column: 16, scope: !1785)
!1797 = !DILocation(line: 1049, column: 16, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !6, line: 1047, column: 55)
!1799 = !DILocation(line: 1049, column: 36, scope: !1798)
!1800 = !DILocation(line: 1050, column: 9, scope: !1798)
!1801 = !DILocation(line: 1054, column: 1, scope: !1771)
!1802 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1803)
!1803 = !{!1804, !1805}
!1804 = !DILocalVariable(name: "control", arg: 1, scope: !1802, file: !6, line: 1056, type: !43)
!1805 = !DILocalVariable(name: "wait_control", scope: !1802, file: !6, line: 1057, type: !340)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !DILocation(line: 1059, column: 19, scope: !1802)
!1808 = !DILocalVariable(name: "this", arg: 1, scope: !1809, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1809 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1810)
!1810 = !{!1808, !1811, !1812}
!1811 = !DILocalVariable(name: "expected", scope: !1809, file: !6, line: 930, type: !22)
!1812 = !DILocalVariable(name: "desired", scope: !1809, file: !6, line: 931, type: !22)
!1813 = !DILocation(line: 0, scope: !1809, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 1059, column: 26, scope: !1802)
!1815 = !DILocation(line: 933, column: 47, scope: !1816, inlinedAt: !1814)
!1816 = distinct !DILexicalBlock(scope: !1809, file: !6, line: 933, column: 13)
!1817 = !DILocation(line: 0, scope: !588, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 933, column: 14, scope: !1816, inlinedAt: !1814)
!1819 = !DILocation(line: 184, column: 12, scope: !588, inlinedAt: !1818)
!1820 = !DILocation(line: 933, column: 13, scope: !1809, inlinedAt: !1814)
!1821 = !DILocalVariable(name: "this", arg: 1, scope: !1822, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1822 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1823)
!1823 = !{!1821, !1824, !1825, !1826}
!1824 = !DILocalVariable(name: "expected", scope: !1822, file: !6, line: 907, type: !22)
!1825 = !DILocalVariable(name: "desired", scope: !1822, file: !6, line: 908, type: !22)
!1826 = !DILocalVariable(name: "control", scope: !1822, file: !6, line: 915, type: !266)
!1827 = !DILocation(line: 0, scope: !1822, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 934, column: 13, scope: !1829, inlinedAt: !1814)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !6, line: 933, column: 76)
!1830 = !DILocalVariable(name: "addr", arg: 1, scope: !1831, file: !6, line: 174, type: !300)
!1831 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPyS4_S4_", scope: !491, file: !6, line: 174, type: !510, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1832)
!1832 = !{!1830, !1833, !1834}
!1833 = !DILocalVariable(name: "expected", arg: 2, scope: !1831, file: !6, line: 174, type: !300)
!1834 = !DILocalVariable(name: "desired", arg: 3, scope: !1831, file: !6, line: 174, type: !300)
!1835 = !DILocation(line: 0, scope: !1831, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 911, column: 13, scope: !1837, inlinedAt: !1828)
!1837 = distinct !DILexicalBlock(scope: !1822, file: !6, line: 911, column: 13)
!1838 = !DILocation(line: 175, column: 12, scope: !1831, inlinedAt: !1836)
!1839 = !DILocation(line: 911, column: 13, scope: !1822, inlinedAt: !1828)
!1840 = !DILocation(line: 915, column: 9, scope: !1822, inlinedAt: !1828)
!1841 = !DILocation(line: 915, column: 31, scope: !1822, inlinedAt: !1828)
!1842 = !DILocalVariable(name: "this", arg: 1, scope: !1843, type: !265, flags: DIFlagArtificial | DIFlagObjectPointer)
!1843 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPy", scope: !266, file: !6, line: 832, type: !302, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !301, retainedNodes: !1844)
!1844 = !{!1842, !1845}
!1845 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1843, file: !6, line: 832, type: !300)
!1846 = !DILocation(line: 0, scope: !1843, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 915, column: 31, scope: !1822, inlinedAt: !1828)
!1848 = !DILocalVariable(name: "this", arg: 1, scope: !1849, type: !1851, flags: DIFlagArtificial | DIFlagObjectPointer)
!1849 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !269, file: !6, line: 598, type: !296, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !295, retainedNodes: !1850)
!1850 = !{!1848}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1852 = !DILocation(line: 0, scope: !1849, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 832, column: 19, scope: !1843, inlinedAt: !1847)
!1854 = !DILocation(line: 599, column: 11, scope: !1849, inlinedAt: !1853)
!1855 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !1853)
!1856 = !DILocation(line: 600, column: 11, scope: !1849, inlinedAt: !1853)
!1857 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !1853)
!1858 = !DILocation(line: 833, column: 11, scope: !1843, inlinedAt: !1847)
!1859 = !DILocation(line: 834, column: 18, scope: !1860, inlinedAt: !1847)
!1860 = distinct !DILexicalBlock(scope: !1843, file: !6, line: 833, column: 34)
!1861 = !DILocation(line: 835, column: 16, scope: !1860, inlinedAt: !1847)
!1862 = !DILocation(line: 916, column: 20, scope: !1822, inlinedAt: !1828)
!1863 = !DILocation(line: 916, column: 37, scope: !1822, inlinedAt: !1828)
!1864 = !DILocation(line: 916, column: 9, scope: !1822, inlinedAt: !1828)
!1865 = !DILocation(line: 917, column: 5, scope: !1822, inlinedAt: !1828)
!1866 = !DILocation(line: 1060, column: 1, scope: !1802)
!1867 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !2, file: !6, line: 1062, type: !287, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873}
!1869 = !DILocalVariable(name: "control", arg: 1, scope: !1867, file: !6, line: 1062, type: !43)
!1870 = !DILocalVariable(name: "unparked", arg: 2, scope: !1867, file: !6, line: 1062, type: !29)
!1871 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1867, file: !6, line: 1062, type: !64)
!1872 = !DILocalVariable(name: "wait_control", scope: !1867, file: !6, line: 1063, type: !340)
!1873 = !DILocalVariable(name: "val", scope: !1874, file: !6, line: 1066, type: !22)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 1065, column: 24)
!1875 = distinct !DILexicalBlock(scope: !1867, file: !6, line: 1065, column: 9)
!1876 = !DILocation(line: 0, scope: !1867)
!1877 = !DILocation(line: 1065, column: 9, scope: !1867)
!1878 = !DILocation(line: 0, scope: !1874)
!1879 = !DILocation(line: 1067, column: 44, scope: !1874)
!1880 = !DILocation(line: 0, scope: !1577, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 1067, column: 9, scope: !1874)
!1882 = !DILocation(line: 214, column: 5, scope: !1577, inlinedAt: !1881)
!1883 = !DILocation(line: 1068, column: 5, scope: !1874)
!1884 = !DILocation(line: 1069, column: 5, scope: !1867)
!1885 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1886, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !367}
!1888 = !{!1889, !1890}
!1889 = !DILocalVariable(name: "mutex", arg: 1, scope: !1885, file: !6, line: 1131, type: !367)
!1890 = !DILocalVariable(name: "fast_mutex", scope: !1885, file: !6, line: 1132, type: !311)
!1891 = !DILocation(line: 0, scope: !1885)
!1892 = !DILocalVariable(name: "this", arg: 1, scope: !1893, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1893 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1894)
!1894 = !{!1892, !1895, !1896}
!1895 = !DILocalVariable(name: "expected", scope: !1893, file: !6, line: 921, type: !22)
!1896 = !DILocalVariable(name: "desired", scope: !1893, file: !6, line: 922, type: !22)
!1897 = !DILocation(line: 0, scope: !1893, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 1134, column: 17, scope: !1885)
!1899 = !DILocation(line: 924, column: 47, scope: !1900, inlinedAt: !1898)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !6, line: 924, column: 13)
!1901 = !DILocation(line: 0, scope: !509, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 924, column: 14, scope: !1900, inlinedAt: !1898)
!1903 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !1902)
!1904 = !DILocation(line: 924, column: 13, scope: !1893, inlinedAt: !1898)
!1905 = !DILocalVariable(name: "this", arg: 1, scope: !1906, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1906 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !315, retainedNodes: !1907)
!1907 = !{!1905, !1908, !1909, !1910, !1914, !1917, !1918}
!1908 = !DILocalVariable(name: "spinner", scope: !1906, file: !6, line: 864, type: !468)
!1909 = !DILocalVariable(name: "expected", scope: !1906, file: !6, line: 865, type: !22)
!1910 = !DILocalVariable(name: "desired", scope: !1911, file: !6, line: 870, type: !22)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !6, line: 869, column: 41)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !6, line: 869, column: 17)
!1913 = distinct !DILexicalBlock(scope: !1906, file: !6, line: 868, column: 22)
!1914 = !DILocalVariable(name: "desired", scope: !1915, file: !6, line: 888, type: !22)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !6, line: 887, column: 47)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !6, line: 887, column: 17)
!1917 = !DILocalVariable(name: "control", scope: !1913, file: !6, line: 895, type: !266)
!1918 = !DILocalVariable(name: "result", scope: !1913, file: !6, line: 896, type: !22)
!1919 = !DILocation(line: 0, scope: !1906, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 925, column: 13, scope: !1921, inlinedAt: !1898)
!1921 = distinct !DILexicalBlock(scope: !1900, file: !6, line: 924, column: 76)
!1922 = !DILocation(line: 0, scope: !490, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 866, column: 9, scope: !1906, inlinedAt: !1920)
!1924 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1923)
!1925 = !DILocation(line: 868, column: 9, scope: !1906, inlinedAt: !1920)
!1926 = !DILocation(line: 869, column: 28, scope: !1912, inlinedAt: !1920)
!1927 = !DILocation(line: 869, column: 18, scope: !1912, inlinedAt: !1920)
!1928 = !DILocation(line: 869, column: 17, scope: !1913, inlinedAt: !1920)
!1929 = !DILocation(line: 870, column: 46, scope: !1911, inlinedAt: !1920)
!1930 = !DILocation(line: 0, scope: !1911, inlinedAt: !1920)
!1931 = !DILocation(line: 0, scope: !509, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 871, column: 21, scope: !1933, inlinedAt: !1920)
!1933 = distinct !DILexicalBlock(scope: !1911, file: !6, line: 871, column: 21)
!1934 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !1932)
!1935 = !DILocation(line: 238, column: 24, scope: !532, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 880, column: 25, scope: !1937, inlinedAt: !1920)
!1937 = distinct !DILexicalBlock(scope: !1913, file: !6, line: 880, column: 17)
!1938 = !DILocation(line: 0, scope: !523, inlinedAt: !1936)
!1939 = !DILocation(line: 238, column: 13, scope: !523, inlinedAt: !1936)
!1940 = !DILocation(line: 241, column: 27, scope: !523, inlinedAt: !1936)
!1941 = !DILocation(line: 880, column: 17, scope: !1913, inlinedAt: !1920)
!1942 = !DILocation(line: 239, column: 23, scope: !531, inlinedAt: !1936)
!1943 = !DILocation(line: 881, column: 17, scope: !1944, inlinedAt: !1920)
!1944 = distinct !DILexicalBlock(scope: !1937, file: !6, line: 880, column: 40)
!1945 = !DILocation(line: 0, scope: !490, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 882, column: 17, scope: !1944, inlinedAt: !1920)
!1947 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1946)
!1948 = !DILocation(line: 883, column: 17, scope: !1944, inlinedAt: !1920)
!1949 = !DILocation(line: 887, column: 27, scope: !1916, inlinedAt: !1920)
!1950 = !DILocation(line: 887, column: 41, scope: !1916, inlinedAt: !1920)
!1951 = !DILocation(line: 887, column: 17, scope: !1913, inlinedAt: !1920)
!1952 = !DILocation(line: 888, column: 46, scope: !1915, inlinedAt: !1920)
!1953 = !DILocation(line: 0, scope: !1915, inlinedAt: !1920)
!1954 = !DILocation(line: 0, scope: !1731, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 889, column: 22, scope: !1956, inlinedAt: !1920)
!1956 = distinct !DILexicalBlock(scope: !1915, file: !6, line: 889, column: 21)
!1957 = !DILocation(line: 188, column: 12, scope: !1731, inlinedAt: !1955)
!1958 = !DILocation(line: 895, column: 13, scope: !1913, inlinedAt: !1920)
!1959 = !DILocation(line: 895, column: 35, scope: !1913, inlinedAt: !1920)
!1960 = !DILocation(line: 0, scope: !1843, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 895, column: 35, scope: !1913, inlinedAt: !1920)
!1962 = !DILocation(line: 0, scope: !1849, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 832, column: 19, scope: !1843, inlinedAt: !1961)
!1964 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !1963)
!1965 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !1963)
!1966 = !DILocation(line: 833, column: 11, scope: !1843, inlinedAt: !1961)
!1967 = !DILocation(line: 834, column: 18, scope: !1860, inlinedAt: !1961)
!1968 = !DILocation(line: 835, column: 16, scope: !1860, inlinedAt: !1961)
!1969 = !DILocation(line: 896, column: 32, scope: !1913, inlinedAt: !1920)
!1970 = !DILocation(line: 0, scope: !1913, inlinedAt: !1920)
!1971 = !DILocation(line: 897, column: 24, scope: !1972, inlinedAt: !1920)
!1972 = distinct !DILexicalBlock(scope: !1913, file: !6, line: 897, column: 17)
!1973 = !DILocation(line: 897, column: 17, scope: !1913, inlinedAt: !1920)
!1974 = !DILocation(line: 0, scope: !490, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 902, column: 13, scope: !1913, inlinedAt: !1920)
!1976 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !1975)
!1977 = !DILocation(line: 903, column: 9, scope: !1906, inlinedAt: !1920)
!1978 = distinct !{!1978, !1925, !1977}
!1979 = !DILocation(line: 1135, column: 1, scope: !1885)
!1980 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1886, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1981)
!1981 = !{!1982, !1983}
!1982 = !DILocalVariable(name: "mutex", arg: 1, scope: !1980, file: !6, line: 1137, type: !367)
!1983 = !DILocalVariable(name: "fast_mutex", scope: !1980, file: !6, line: 1138, type: !311)
!1984 = !DILocation(line: 0, scope: !1980)
!1985 = !DILocation(line: 0, scope: !1809, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 1140, column: 17, scope: !1980)
!1987 = !DILocation(line: 933, column: 47, scope: !1816, inlinedAt: !1986)
!1988 = !DILocation(line: 0, scope: !588, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 933, column: 14, scope: !1816, inlinedAt: !1986)
!1990 = !DILocation(line: 184, column: 12, scope: !588, inlinedAt: !1989)
!1991 = !DILocation(line: 933, column: 13, scope: !1809, inlinedAt: !1986)
!1992 = !DILocation(line: 0, scope: !1822, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 934, column: 13, scope: !1829, inlinedAt: !1986)
!1994 = !DILocation(line: 0, scope: !1831, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 911, column: 13, scope: !1837, inlinedAt: !1993)
!1996 = !DILocation(line: 175, column: 12, scope: !1831, inlinedAt: !1995)
!1997 = !DILocation(line: 911, column: 13, scope: !1822, inlinedAt: !1993)
!1998 = !DILocation(line: 915, column: 9, scope: !1822, inlinedAt: !1993)
!1999 = !DILocation(line: 915, column: 31, scope: !1822, inlinedAt: !1993)
!2000 = !DILocation(line: 0, scope: !1843, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 915, column: 31, scope: !1822, inlinedAt: !1993)
!2002 = !DILocation(line: 0, scope: !1849, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 832, column: 19, scope: !1843, inlinedAt: !2001)
!2004 = !DILocation(line: 599, column: 11, scope: !1849, inlinedAt: !2003)
!2005 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !2003)
!2006 = !DILocation(line: 600, column: 11, scope: !1849, inlinedAt: !2003)
!2007 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !2003)
!2008 = !DILocation(line: 833, column: 11, scope: !1843, inlinedAt: !2001)
!2009 = !DILocation(line: 834, column: 18, scope: !1860, inlinedAt: !2001)
!2010 = !DILocation(line: 835, column: 16, scope: !1860, inlinedAt: !2001)
!2011 = !DILocation(line: 916, column: 20, scope: !1822, inlinedAt: !1993)
!2012 = !DILocation(line: 916, column: 37, scope: !1822, inlinedAt: !1993)
!2013 = !DILocation(line: 916, column: 9, scope: !1822, inlinedAt: !1993)
!2014 = !DILocation(line: 917, column: 5, scope: !1822, inlinedAt: !1993)
!2015 = !DILocation(line: 1141, column: 1, scope: !1980)
!2016 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !2017, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2020)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "cond", arg: 1, scope: !2016, file: !6, line: 1143, type: !2019)
!2022 = !DILocalVariable(name: "fast_cond", scope: !2016, file: !6, line: 1144, type: !350)
!2023 = !DILocation(line: 0, scope: !2016)
!2024 = !DILocalVariable(name: "this", arg: 1, scope: !2025, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!2025 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !359, retainedNodes: !2026)
!2026 = !{!2024, !2027, !2028}
!2027 = !DILocalVariable(name: "val", scope: !2025, file: !6, line: 1094, type: !22)
!2028 = !DILocalVariable(name: "control", scope: !2025, file: !6, line: 1100, type: !331)
!2029 = !DILocation(line: 0, scope: !2025, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 1146, column: 16, scope: !2016)
!2031 = !DILocation(line: 1093, column: 28, scope: !2025, inlinedAt: !2030)
!2032 = !DILocalVariable(name: "cond", arg: 1, scope: !2033, file: !6, line: 70, type: !43)
!2033 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_signalEPv", scope: !491, file: !6, line: 70, type: !171, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2034)
!2034 = !{!2032}
!2035 = !DILocation(line: 0, scope: !2033, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 1093, column: 9, scope: !2025, inlinedAt: !2030)
!2037 = !DILocation(line: 71, column: 5, scope: !2033, inlinedAt: !2036)
!2038 = !DILocation(line: 1095, column: 30, scope: !2025, inlinedAt: !2030)
!2039 = !DILocation(line: 0, scope: !490, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 1095, column: 9, scope: !2025, inlinedAt: !2030)
!2041 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2040)
!2042 = !DILocation(line: 1096, column: 17, scope: !2043, inlinedAt: !2030)
!2043 = distinct !DILexicalBlock(scope: !2025, file: !6, line: 1096, column: 13)
!2044 = !DILocation(line: 1096, column: 13, scope: !2025, inlinedAt: !2030)
!2045 = !DILocalVariable(name: "cond", arg: 1, scope: !2046, file: !6, line: 73, type: !43)
!2046 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_signalEPv", scope: !491, file: !6, line: 73, type: !171, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2047)
!2047 = !{!2045}
!2048 = !DILocation(line: 0, scope: !2046, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1097, column: 13, scope: !2050, inlinedAt: !2030)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !6, line: 1096, column: 23)
!2051 = !DILocation(line: 74, column: 5, scope: !2046, inlinedAt: !2049)
!2052 = !DILocation(line: 1098, column: 13, scope: !2050, inlinedAt: !2030)
!2053 = !DILocation(line: 1100, column: 9, scope: !2025, inlinedAt: !2030)
!2054 = !DILocation(line: 1100, column: 35, scope: !2025, inlinedAt: !2030)
!2055 = !DILocation(line: 1100, column: 51, scope: !2025, inlinedAt: !2030)
!2056 = !DILocalVariable(name: "this", arg: 1, scope: !2057, type: !330, flags: DIFlagArtificial | DIFlagObjectPointer)
!2057 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPyPNS2_10fast_mutexE", scope: !331, file: !6, line: 989, type: !337, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !336, retainedNodes: !2058)
!2058 = !{!2056, !2059, !2060}
!2059 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2057, file: !6, line: 989, type: !300)
!2060 = !DILocalVariable(name: "mutex", arg: 3, scope: !2057, file: !6, line: 989, type: !311)
!2061 = !DILocation(line: 0, scope: !2057, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 1100, column: 35, scope: !2025, inlinedAt: !2030)
!2063 = !DILocation(line: 0, scope: !1849, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 989, column: 19, scope: !2057, inlinedAt: !2062)
!2065 = !DILocation(line: 599, column: 11, scope: !1849, inlinedAt: !2064)
!2066 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !2064)
!2067 = !DILocation(line: 600, column: 11, scope: !1849, inlinedAt: !2064)
!2068 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !2064)
!2069 = !DILocation(line: 990, column: 11, scope: !2057, inlinedAt: !2062)
!2070 = !DILocation(line: 990, column: 35, scope: !2057, inlinedAt: !2062)
!2071 = !DILocation(line: 991, column: 18, scope: !2072, inlinedAt: !2062)
!2072 = distinct !DILexicalBlock(scope: !2057, file: !6, line: 990, column: 48)
!2073 = !DILocation(line: 992, column: 26, scope: !2072, inlinedAt: !2062)
!2074 = !DILocation(line: 1101, column: 24, scope: !2025, inlinedAt: !2030)
!2075 = !DILocation(line: 1101, column: 46, scope: !2025, inlinedAt: !2030)
!2076 = !DILocation(line: 1101, column: 9, scope: !2025, inlinedAt: !2030)
!2077 = !DILocation(line: 0, scope: !2046, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 1102, column: 9, scope: !2025, inlinedAt: !2030)
!2079 = !DILocation(line: 74, column: 5, scope: !2046, inlinedAt: !2078)
!2080 = !DILocation(line: 1103, column: 5, scope: !2025, inlinedAt: !2030)
!2081 = !DILocation(line: 1147, column: 1, scope: !2016)
!2082 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !2017, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2083)
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "cond", arg: 1, scope: !2082, file: !6, line: 1149, type: !2019)
!2085 = !DILocalVariable(name: "fast_cond", scope: !2082, file: !6, line: 1150, type: !350)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocalVariable(name: "this", arg: 1, scope: !2088, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!2088 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !2089)
!2089 = !{!2087, !2090, !2091}
!2090 = !DILocalVariable(name: "val", scope: !2088, file: !6, line: 1081, type: !22)
!2091 = !DILocalVariable(name: "control", scope: !2088, file: !6, line: 1087, type: !306)
!2092 = !DILocation(line: 0, scope: !2088, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 1152, column: 16, scope: !2082)
!2094 = !DILocation(line: 1079, column: 28, scope: !2088, inlinedAt: !2093)
!2095 = !DILocation(line: 0, scope: !2033, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 1079, column: 9, scope: !2088, inlinedAt: !2093)
!2097 = !DILocation(line: 71, column: 5, scope: !2033, inlinedAt: !2096)
!2098 = !DILocation(line: 1082, column: 30, scope: !2088, inlinedAt: !2093)
!2099 = !DILocation(line: 0, scope: !490, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1082, column: 9, scope: !2088, inlinedAt: !2093)
!2101 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2100)
!2102 = !DILocation(line: 1083, column: 17, scope: !2103, inlinedAt: !2093)
!2103 = distinct !DILexicalBlock(scope: !2088, file: !6, line: 1083, column: 13)
!2104 = !DILocation(line: 1083, column: 13, scope: !2088, inlinedAt: !2093)
!2105 = !DILocation(line: 0, scope: !2046, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 1084, column: 13, scope: !2107, inlinedAt: !2093)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !6, line: 1083, column: 23)
!2108 = !DILocation(line: 74, column: 5, scope: !2046, inlinedAt: !2106)
!2109 = !DILocation(line: 1085, column: 13, scope: !2107, inlinedAt: !2093)
!2110 = !DILocation(line: 1087, column: 9, scope: !2088, inlinedAt: !2093)
!2111 = !DILocation(line: 1087, column: 32, scope: !2088, inlinedAt: !2093)
!2112 = !DILocation(line: 1087, column: 48, scope: !2088, inlinedAt: !2093)
!2113 = !DILocalVariable(name: "this", arg: 1, scope: !2114, type: !305, flags: DIFlagArtificial | DIFlagObjectPointer)
!2114 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPyPNS2_10fast_mutexE", scope: !306, file: !6, line: 962, type: !327, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !326, retainedNodes: !2115)
!2115 = !{!2113, !2116, !2117}
!2116 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2114, file: !6, line: 962, type: !300)
!2117 = !DILocalVariable(name: "mutex", arg: 3, scope: !2114, file: !6, line: 962, type: !311)
!2118 = !DILocation(line: 0, scope: !2114, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 1087, column: 32, scope: !2088, inlinedAt: !2093)
!2120 = !DILocation(line: 0, scope: !1849, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 962, column: 19, scope: !2114, inlinedAt: !2119)
!2122 = !DILocation(line: 599, column: 11, scope: !1849, inlinedAt: !2121)
!2123 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !2121)
!2124 = !DILocation(line: 600, column: 11, scope: !1849, inlinedAt: !2121)
!2125 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !2121)
!2126 = !DILocation(line: 963, column: 11, scope: !2114, inlinedAt: !2119)
!2127 = !DILocation(line: 963, column: 35, scope: !2114, inlinedAt: !2119)
!2128 = !{!1683, !403, i64 40}
!2129 = !DILocation(line: 964, column: 16, scope: !2130, inlinedAt: !2119)
!2130 = distinct !DILexicalBlock(scope: !2114, file: !6, line: 963, column: 48)
!2131 = !DILocation(line: 1088, column: 20, scope: !2088, inlinedAt: !2093)
!2132 = !DILocation(line: 1088, column: 37, scope: !2088, inlinedAt: !2093)
!2133 = !DILocation(line: 1088, column: 9, scope: !2088, inlinedAt: !2093)
!2134 = !DILocation(line: 0, scope: !2046, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 1089, column: 9, scope: !2088, inlinedAt: !2093)
!2136 = !DILocation(line: 74, column: 5, scope: !2046, inlinedAt: !2135)
!2137 = !DILocation(line: 1090, column: 5, scope: !2088, inlinedAt: !2093)
!2138 = !DILocation(line: 1153, column: 1, scope: !2082)
!2139 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !2140, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2019, !367}
!2142 = !{!2143, !2144, !2145, !2146}
!2143 = !DILocalVariable(name: "cond", arg: 1, scope: !2139, file: !6, line: 1155, type: !2019)
!2144 = !DILocalVariable(name: "mutex", arg: 2, scope: !2139, file: !6, line: 1155, type: !367)
!2145 = !DILocalVariable(name: "fast_cond", scope: !2139, file: !6, line: 1156, type: !350)
!2146 = !DILocalVariable(name: "fast_mutex", scope: !2139, file: !6, line: 1158, type: !311)
!2147 = !DILocation(line: 0, scope: !2139)
!2148 = !DILocalVariable(name: "this", arg: 1, scope: !2149, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!2149 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !2150)
!2150 = !{!2148, !2151, !2152, !2153, !2154}
!2151 = !DILocalVariable(name: "mutex", arg: 2, scope: !2149, file: !6, line: 1105, type: !311)
!2152 = !DILocalVariable(name: "control", scope: !2149, file: !6, line: 1106, type: !341)
!2153 = !DILocalVariable(name: "result", scope: !2149, file: !6, line: 1107, type: !22)
!2154 = !DILocalVariable(name: "val", scope: !2155, file: !6, line: 1114, type: !22)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !6, line: 1110, column: 16)
!2156 = distinct !DILexicalBlock(scope: !2149, file: !6, line: 1108, column: 13)
!2157 = !DILocation(line: 0, scope: !2149, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 1160, column: 16, scope: !2139)
!2159 = !DILocation(line: 1106, column: 9, scope: !2149, inlinedAt: !2158)
!2160 = !DILocation(line: 1106, column: 30, scope: !2149, inlinedAt: !2158)
!2161 = !DILocation(line: 1106, column: 39, scope: !2149, inlinedAt: !2158)
!2162 = !DILocalVariable(name: "this", arg: 1, scope: !2163, type: !340, flags: DIFlagArtificial | DIFlagObjectPointer)
!2163 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPyPNS2_10fast_mutexE", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !346, retainedNodes: !2164)
!2164 = !{!2162, !2165, !2166}
!2165 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2163, file: !6, line: 1030, type: !300)
!2166 = !DILocalVariable(name: "mutex", arg: 3, scope: !2163, file: !6, line: 1030, type: !311)
!2167 = !DILocation(line: 0, scope: !2163, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 1106, column: 30, scope: !2149, inlinedAt: !2158)
!2169 = !DILocation(line: 0, scope: !1849, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 1030, column: 19, scope: !2163, inlinedAt: !2168)
!2171 = !DILocation(line: 599, column: 11, scope: !1849, inlinedAt: !2170)
!2172 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !2170)
!2173 = !DILocation(line: 600, column: 11, scope: !1849, inlinedAt: !2170)
!2174 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !2170)
!2175 = !DILocation(line: 1031, column: 11, scope: !2163, inlinedAt: !2168)
!2176 = !DILocation(line: 1031, column: 35, scope: !2163, inlinedAt: !2168)
!2177 = !DILocation(line: 1032, column: 18, scope: !2178, inlinedAt: !2168)
!2178 = distinct !DILexicalBlock(scope: !2163, file: !6, line: 1031, column: 48)
!2179 = !DILocation(line: 1033, column: 22, scope: !2178, inlinedAt: !2168)
!2180 = !DILocation(line: 1034, column: 16, scope: !2178, inlinedAt: !2168)
!2181 = !DILocation(line: 1107, column: 33, scope: !2149, inlinedAt: !2158)
!2182 = !DILocation(line: 1107, column: 50, scope: !2149, inlinedAt: !2158)
!2183 = !DILocation(line: 1107, column: 28, scope: !2149, inlinedAt: !2158)
!2184 = !DILocation(line: 1108, column: 23, scope: !2156, inlinedAt: !2158)
!2185 = !DILocation(line: 1108, column: 20, scope: !2156, inlinedAt: !2158)
!2186 = !DILocation(line: 1108, column: 13, scope: !2149, inlinedAt: !2158)
!2187 = !DILocation(line: 0, scope: !1893, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 1109, column: 20, scope: !2189, inlinedAt: !2158)
!2189 = distinct !DILexicalBlock(scope: !2156, file: !6, line: 1108, column: 41)
!2190 = !DILocation(line: 924, column: 47, scope: !1900, inlinedAt: !2188)
!2191 = !DILocation(line: 0, scope: !509, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 924, column: 14, scope: !1900, inlinedAt: !2188)
!2193 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !2192)
!2194 = !DILocation(line: 924, column: 13, scope: !1893, inlinedAt: !2188)
!2195 = !DILocation(line: 0, scope: !1906, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 925, column: 13, scope: !1921, inlinedAt: !2188)
!2197 = !DILocation(line: 0, scope: !490, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 866, column: 9, scope: !1906, inlinedAt: !2196)
!2199 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2198)
!2200 = !DILocation(line: 868, column: 9, scope: !1906, inlinedAt: !2196)
!2201 = !DILocation(line: 869, column: 28, scope: !1912, inlinedAt: !2196)
!2202 = !DILocation(line: 869, column: 18, scope: !1912, inlinedAt: !2196)
!2203 = !DILocation(line: 869, column: 17, scope: !1913, inlinedAt: !2196)
!2204 = !DILocation(line: 870, column: 46, scope: !1911, inlinedAt: !2196)
!2205 = !DILocation(line: 0, scope: !1911, inlinedAt: !2196)
!2206 = !DILocation(line: 0, scope: !509, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 871, column: 21, scope: !1933, inlinedAt: !2196)
!2208 = !DILocation(line: 192, column: 12, scope: !509, inlinedAt: !2207)
!2209 = !DILocation(line: 238, column: 24, scope: !532, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 880, column: 25, scope: !1937, inlinedAt: !2196)
!2211 = !DILocation(line: 0, scope: !523, inlinedAt: !2210)
!2212 = !DILocation(line: 238, column: 13, scope: !523, inlinedAt: !2210)
!2213 = !DILocation(line: 241, column: 27, scope: !523, inlinedAt: !2210)
!2214 = !DILocation(line: 880, column: 17, scope: !1913, inlinedAt: !2196)
!2215 = !DILocation(line: 239, column: 23, scope: !531, inlinedAt: !2210)
!2216 = !DILocation(line: 881, column: 17, scope: !1944, inlinedAt: !2196)
!2217 = !DILocation(line: 0, scope: !490, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 882, column: 17, scope: !1944, inlinedAt: !2196)
!2219 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2218)
!2220 = !DILocation(line: 883, column: 17, scope: !1944, inlinedAt: !2196)
!2221 = !DILocation(line: 887, column: 27, scope: !1916, inlinedAt: !2196)
!2222 = !DILocation(line: 887, column: 41, scope: !1916, inlinedAt: !2196)
!2223 = !DILocation(line: 887, column: 17, scope: !1913, inlinedAt: !2196)
!2224 = !DILocation(line: 888, column: 46, scope: !1915, inlinedAt: !2196)
!2225 = !DILocation(line: 0, scope: !1915, inlinedAt: !2196)
!2226 = !DILocation(line: 0, scope: !1731, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 889, column: 22, scope: !1956, inlinedAt: !2196)
!2228 = !DILocation(line: 188, column: 12, scope: !1731, inlinedAt: !2227)
!2229 = !DILocation(line: 895, column: 13, scope: !1913, inlinedAt: !2196)
!2230 = !DILocation(line: 895, column: 35, scope: !1913, inlinedAt: !2196)
!2231 = !DILocation(line: 0, scope: !1843, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 895, column: 35, scope: !1913, inlinedAt: !2196)
!2233 = !DILocation(line: 0, scope: !1849, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 832, column: 19, scope: !1843, inlinedAt: !2232)
!2235 = !DILocation(line: 599, column: 47, scope: !1849, inlinedAt: !2234)
!2236 = !DILocation(line: 600, column: 43, scope: !1849, inlinedAt: !2234)
!2237 = !DILocation(line: 833, column: 11, scope: !1843, inlinedAt: !2232)
!2238 = !DILocation(line: 834, column: 18, scope: !1860, inlinedAt: !2232)
!2239 = !DILocation(line: 835, column: 16, scope: !1860, inlinedAt: !2232)
!2240 = !DILocation(line: 896, column: 32, scope: !1913, inlinedAt: !2196)
!2241 = !DILocation(line: 0, scope: !1913, inlinedAt: !2196)
!2242 = !DILocation(line: 897, column: 24, scope: !1972, inlinedAt: !2196)
!2243 = !DILocation(line: 897, column: 17, scope: !1913, inlinedAt: !2196)
!2244 = !DILocation(line: 0, scope: !490, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 902, column: 13, scope: !1913, inlinedAt: !2196)
!2246 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2245)
!2247 = !DILocation(line: 903, column: 9, scope: !1906, inlinedAt: !2196)
!2248 = distinct !{!2248, !2200, !2247}
!2249 = !DILocation(line: 1111, column: 30, scope: !2155, inlinedAt: !2158)
!2250 = !DILocation(line: 0, scope: !802, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 1111, column: 13, scope: !2155, inlinedAt: !2158)
!2252 = !DILocation(line: 57, column: 5, scope: !802, inlinedAt: !2251)
!2253 = !DILocation(line: 1115, column: 33, scope: !2155, inlinedAt: !2158)
!2254 = !DILocation(line: 0, scope: !490, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1115, column: 13, scope: !2155, inlinedAt: !2158)
!2256 = !DILocation(line: 201, column: 5, scope: !490, inlinedAt: !2255)
!2257 = !DILocation(line: 0, scope: !2155, inlinedAt: !2158)
!2258 = !DILocation(line: 1116, column: 13, scope: !2259, inlinedAt: !2158)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !6, line: 1116, column: 13)
!2260 = distinct !DILexicalBlock(scope: !2155, file: !6, line: 1116, column: 13)
!2261 = !DILocation(line: 1116, column: 13, scope: !2260, inlinedAt: !2158)
!2262 = !DILocation(line: 1116, column: 13, scope: !2263, inlinedAt: !2158)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !6, line: 1116, column: 13)
!2264 = !DILocation(line: 0, scope: !818, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1118, column: 13, scope: !2155, inlinedAt: !2158)
!2266 = !DILocation(line: 61, column: 5, scope: !818, inlinedAt: !2265)
!2267 = !DILocation(line: 1120, column: 5, scope: !2149, inlinedAt: !2158)
!2268 = !DILocation(line: 1161, column: 1, scope: !2139)
!2269 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2270, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!363, !29}
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "sz", arg: 1, scope: !2269, file: !6, line: 1168, type: !29)
!2274 = !DILocalVariable(name: "array", scope: !2269, file: !6, line: 1171, type: !363)
!2275 = !DILocation(line: 0, scope: !2269)
!2276 = !DILocation(line: 1171, column: 55, scope: !2269)
!2277 = !DILocation(line: 1171, column: 33, scope: !2269)
!2278 = !DILocation(line: 1173, column: 15, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2269, file: !6, line: 1173, column: 9)
!2280 = !DILocation(line: 1173, column: 9, scope: !2269)
!2281 = !DILocation(line: 1178, column: 18, scope: !2269)
!2282 = !DILocation(line: 1178, column: 21, scope: !2269)
!2283 = !DILocation(line: 1177, column: 36, scope: !2269)
!2284 = !DILocation(line: 1177, column: 18, scope: !2269)
!2285 = !{!2286, !403, i64 0}
!2286 = !{!"_ZTS18halide_mutex_array", !403, i64 0}
!2287 = !DILocation(line: 1179, column: 22, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2269, file: !6, line: 1179, column: 9)
!2289 = !DILocation(line: 1179, column: 9, scope: !2269)
!2290 = !DILocation(line: 1180, column: 9, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !6, line: 1179, column: 34)
!2292 = !DILocation(line: 1182, column: 9, scope: !2291)
!2293 = !DILocation(line: 1184, column: 5, scope: !2269)
!2294 = !DILocation(line: 1185, column: 5, scope: !2269)
!2295 = !DILocation(line: 1186, column: 1, scope: !2269)
!2296 = !DISubprogram(name: "halide_malloc", scope: !18, file: !18, line: 354, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!43, !43, !433}
!2299 = !DISubprogram(name: "halide_free", scope: !18, file: !18, line: 355, type: !2300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !43, !43}
!2302 = !DISubprogram(name: "memset", scope: !23, file: !23, line: 96, type: !2303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!43, !43, !29, !433}
!2305 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2300, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "user_context", arg: 1, scope: !2305, file: !6, line: 1188, type: !43)
!2308 = !DILocalVariable(name: "array", arg: 2, scope: !2305, file: !6, line: 1188, type: !43)
!2309 = !DILocalVariable(name: "arr_ptr", scope: !2305, file: !6, line: 1189, type: !363)
!2310 = !DILocation(line: 0, scope: !2305)
!2311 = !DILocation(line: 1190, column: 40, scope: !2305)
!2312 = !DILocation(line: 1190, column: 5, scope: !2305)
!2313 = !DILocation(line: 1191, column: 5, scope: !2305)
!2314 = !DILocation(line: 1192, column: 1, scope: !2305)
!2315 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2316, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!29, !363, !29}
!2318 = !{!2319, !2320}
!2319 = !DILocalVariable(name: "array", arg: 1, scope: !2315, file: !6, line: 1194, type: !363)
!2320 = !DILocalVariable(name: "entry", arg: 2, scope: !2315, file: !6, line: 1194, type: !29)
!2321 = !DILocation(line: 0, scope: !2315)
!2322 = !DILocation(line: 1195, column: 31, scope: !2315)
!2323 = !DILocation(line: 1195, column: 24, scope: !2315)
!2324 = !DILocation(line: 1195, column: 5, scope: !2315)
!2325 = !DILocation(line: 1196, column: 5, scope: !2315)
!2326 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2316, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2327)
!2327 = !{!2328, !2329}
!2328 = !DILocalVariable(name: "array", arg: 1, scope: !2326, file: !6, line: 1199, type: !363)
!2329 = !DILocalVariable(name: "entry", arg: 2, scope: !2326, file: !6, line: 1199, type: !29)
!2330 = !DILocation(line: 0, scope: !2326)
!2331 = !DILocation(line: 1200, column: 33, scope: !2326)
!2332 = !DILocation(line: 1200, column: 26, scope: !2326)
!2333 = !DILocation(line: 1200, column: 5, scope: !2326)
!2334 = !DILocation(line: 1201, column: 5, scope: !2326)
!2335 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !3, file: !13, line: 69, type: !2336, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!29, !29}
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "threads", arg: 1, scope: !2335, file: !13, line: 69, type: !29)
!2340 = !DILocation(line: 0, scope: !2335)
!2341 = !DILocation(line: 70, column: 17, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !13, line: 70, column: 9)
!2343 = !DILocation(line: 70, column: 9, scope: !2335)
!2344 = !DILocation(line: 72, column: 16, scope: !2342)
!2345 = !DILocation(line: 75, column: 5, scope: !2335)
!2346 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !3, file: !13, line: 78, type: !2347, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!29}
!2349 = !{!2350, !2351}
!2350 = !DILocalVariable(name: "desired_num_threads", scope: !2346, file: !13, line: 79, type: !29)
!2351 = !DILocalVariable(name: "threads_str", scope: !2346, file: !13, line: 80, type: !372)
!2352 = !DILocation(line: 0, scope: !2346)
!2353 = !DILocation(line: 80, column: 25, scope: !2346)
!2354 = !DILocation(line: 81, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2346, file: !13, line: 81, column: 9)
!2356 = !DILocation(line: 81, column: 9, scope: !2346)
!2357 = !DILocation(line: 83, column: 23, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !13, line: 81, column: 23)
!2359 = !DILocation(line: 85, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2346, file: !13, line: 85, column: 9)
!2361 = !DILocation(line: 85, column: 9, scope: !2346)
!2362 = !DILocation(line: 86, column: 31, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !13, line: 85, column: 22)
!2364 = !DILocation(line: 87, column: 5, scope: !2363)
!2365 = !DILocation(line: 88, column: 31, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !13, line: 87, column: 12)
!2367 = !DILocation(line: 0, scope: !2360)
!2368 = !DILocation(line: 90, column: 5, scope: !2346)
!2369 = !DISubprogram(name: "getenv", scope: !23, file: !23, line: 85, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!372, !49}
!2372 = !DISubprogram(name: "atoi", scope: !23, file: !23, line: 89, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!29, !49}
!2375 = !DISubprogram(name: "halide_host_cpu_count", scope: !23, file: !23, line: 159, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!2376 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !3, file: !13, line: 197, type: !2377, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !32}
!2379 = !{!2380, !2381, !2382, !2384, !2386, !2388, !2390, !2391, !2392, !2393, !2394, !2395, !2398, !2399, !2401, !2402}
!2380 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2376, file: !13, line: 197, type: !32)
!2381 = !DILocalVariable(name: "spin_count", scope: !2376, file: !13, line: 198, type: !29)
!2382 = !DILocalVariable(name: "max_spin_count", scope: !2376, file: !13, line: 199, type: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2384 = !DILocalVariable(name: "job", scope: !2385, file: !13, line: 202, type: !32)
!2385 = distinct !DILexicalBlock(scope: !2376, file: !13, line: 201, column: 69)
!2386 = !DILocalVariable(name: "prev_ptr", scope: !2385, file: !13, line: 203, type: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2388 = !DILocalVariable(name: "enough_threads", scope: !2389, file: !13, line: 235, type: !64)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 229, column: 21)
!2390 = !DILocalVariable(name: "parent_job", scope: !2389, file: !13, line: 237, type: !32)
!2391 = !DILocalVariable(name: "threads_available", scope: !2389, file: !13, line: 239, type: !29)
!2392 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2389, file: !13, line: 256, type: !64)
!2393 = !DILocalVariable(name: "can_add_worker", scope: !2389, file: !13, line: 260, type: !64)
!2394 = !DILocalVariable(name: "result", scope: !2385, file: !13, line: 328, type: !29)
!2395 = !DILocalVariable(name: "total_iters", scope: !2396, file: !13, line: 336, type: !29)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !13, line: 330, column: 31)
!2397 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 330, column: 13)
!2398 = !DILocalVariable(name: "iters", scope: !2396, file: !13, line: 337, type: !29)
!2399 = !DILocalVariable(name: "myjob", scope: !2400, file: !13, line: 369, type: !33)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !13, line: 367, column: 16)
!2401 = !DILocalVariable(name: "wake_owners", scope: !2385, file: !13, line: 396, type: !64)
!2402 = !DILocalVariable(name: "i", scope: !2403, file: !13, line: 402, type: !29)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !13, line: 402, column: 13)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !13, line: 399, column: 26)
!2405 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 399, column: 13)
!2406 = !DILocation(line: 0, scope: !2376)
!2407 = !DILocation(line: 63, column: 31, scope: !2408, inlinedAt: !2412)
!2408 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2409)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "this", arg: 1, scope: !2408, type: !2411, flags: DIFlagArtificial | DIFlagObjectPointer)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2412 = distinct !DILocation(line: 201, column: 35, scope: !2376)
!2413 = !DILocation(line: 201, column: 5, scope: !2376)
!2414 = !DILocation(line: 198, column: 9, scope: !2376)
!2415 = !DILocation(line: 201, column: 12, scope: !2376)
!2416 = !DILocation(line: 0, scope: !2408, inlinedAt: !2412)
!2417 = !DILocation(line: 63, column: 21, scope: !2408, inlinedAt: !2412)
!2418 = !{!2419, !2421, i64 40}
!2419 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2420, i64 0, !403, i64 56, !403, i64 64, !403, i64 72, !2421, i64 80, !403, i64 88, !2421, i64 96, !403, i64 104, !2421, i64 112, !2421, i64 116, !2421, i64 120, !557, i64 124}
!2420 = !{!"_ZTS22halide_parallel_task_t", !403, i64 0, !403, i64 8, !403, i64 16, !403, i64 24, !2421, i64 32, !2421, i64 36, !2421, i64 40, !2421, i64 44, !557, i64 48}
!2421 = !{!"int", !404, i64 0}
!2422 = !DILocation(line: 63, column: 16, scope: !2408, inlinedAt: !2412)
!2423 = !DILocation(line: 63, column: 28, scope: !2408, inlinedAt: !2412)
!2424 = !DILocation(line: 201, column: 59, scope: !2376)
!2425 = !{!2426, !557, i64 2120}
!2426 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2427, i64 0, !2421, i64 8, !2421, i64 12, !403, i64 16, !2421, i64 24, !2421, i64 28, !2421, i64 32, !2428, i64 40, !2428, i64 48, !2428, i64 56, !2421, i64 64, !2421, i64 68, !404, i64 72, !557, i64 2120, !557, i64 2121, !2421, i64 2124}
!2427 = !{!"_ZTS12halide_mutex", !404, i64 0}
!2428 = !{!"_ZTS11halide_cond", !404, i64 0}
!2429 = !{!2419, !2421, i64 112}
!2430 = !DILocation(line: 202, column: 32, scope: !2385)
!2431 = !{!2426, !403, i64 16}
!2432 = !DILocation(line: 0, scope: !2385)
!2433 = !DILocation(line: 206, column: 28, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !13, line: 206, column: 17)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !13, line: 205, column: 24)
!2436 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 205, column: 13)
!2437 = !{!2419, !2421, i64 116}
!2438 = !DILocation(line: 206, column: 40, scope: !2434)
!2439 = !DILocation(line: 206, column: 17, scope: !2435)
!2440 = !DILocation(line: 207, column: 32, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !13, line: 207, column: 21)
!2442 = distinct !DILexicalBlock(scope: !2434, file: !13, line: 206, column: 46)
!2443 = !DILocation(line: 207, column: 47, scope: !2441)
!2444 = !DILocation(line: 207, column: 21, scope: !2442)
!2445 = !DILocation(line: 208, column: 32, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !13, line: 207, column: 53)
!2447 = !DILocation(line: 208, column: 21, scope: !2446)
!2448 = !DILocation(line: 209, column: 42, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !13, line: 208, column: 46)
!2450 = !DILocation(line: 210, column: 36, scope: !2449)
!2451 = !{!2419, !403, i64 64}
!2452 = distinct !{!2452, !2447, !2453, !610}
!2453 = !DILocation(line: 211, column: 21, scope: !2446)
!2454 = !DILocation(line: 212, column: 38, scope: !2446)
!2455 = !DILocation(line: 212, column: 31, scope: !2446)
!2456 = !DILocation(line: 213, column: 38, scope: !2446)
!2457 = !DILocation(line: 214, column: 21, scope: !2446)
!2458 = !DILocation(line: 216, column: 35, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2434, file: !13, line: 216, column: 24)
!2460 = !{!2419, !403, i64 88}
!2461 = !DILocation(line: 216, column: 24, scope: !2459)
!2462 = !DILocation(line: 216, column: 46, scope: !2459)
!2463 = !DILocation(line: 216, column: 72, scope: !2459)
!2464 = !DILocation(line: 216, column: 84, scope: !2459)
!2465 = !DILocation(line: 216, column: 24, scope: !2434)
!2466 = !DILocation(line: 217, column: 40, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !13, line: 216, column: 90)
!2468 = !DILocation(line: 221, column: 17, scope: !2467)
!2469 = !DILocation(line: 222, column: 17, scope: !2467)
!2470 = !DILocation(line: 229, column: 16, scope: !2385)
!2471 = !DILocation(line: 229, column: 9, scope: !2385)
!2472 = !DILocation(line: 240, column: 17, scope: !2389)
!2473 = !DILocation(line: 237, column: 37, scope: !2389)
!2474 = !DILocation(line: 0, scope: !2389)
!2475 = !DILocation(line: 240, column: 28, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2389, file: !13, line: 240, column: 17)
!2477 = !DILocation(line: 244, column: 33, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !13, line: 244, column: 21)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 243, column: 20)
!2480 = !DILocation(line: 244, column: 48, scope: !2478)
!2481 = !DILocation(line: 0, scope: !2478)
!2482 = !{!2419, !2421, i64 44}
!2483 = !DILocation(line: 244, column: 21, scope: !2479)
!2484 = !DILocation(line: 247, column: 68, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !13, line: 246, column: 24)
!2486 = !DILocation(line: 247, column: 113, scope: !2485)
!2487 = !{!2419, !2421, i64 96}
!2488 = !DILocation(line: 247, column: 99, scope: !2485)
!2489 = !DILocation(line: 245, column: 84, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2478, file: !13, line: 244, column: 54)
!2491 = !DILocation(line: 245, column: 70, scope: !2490)
!2492 = !DILocation(line: 246, column: 17, scope: !2490)
!2493 = !DILocation(line: 242, column: 49, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 240, column: 40)
!2495 = !{!2426, !2421, i64 24}
!2496 = !DILocation(line: 242, column: 65, scope: !2494)
!2497 = !DILocation(line: 242, column: 83, scope: !2494)
!2498 = !{!2426, !2421, i64 2124}
!2499 = !DILocation(line: 242, column: 70, scope: !2494)
!2500 = !DILocation(line: 243, column: 13, scope: !2494)
!2501 = !DILocation(line: 0, scope: !2476)
!2502 = !DILocation(line: 250, column: 61, scope: !2389)
!2503 = !DILocation(line: 250, column: 48, scope: !2389)
!2504 = !DILocation(line: 260, column: 47, scope: !2389)
!2505 = !{!2419, !557, i64 48}
!2506 = !DILocation(line: 260, column: 54, scope: !2389)
!2507 = !DILocation(line: 260, column: 63, scope: !2389)
!2508 = !DILocation(line: 260, column: 78, scope: !2389)
!2509 = !DILocation(line: 265, column: 32, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2389, file: !13, line: 265, column: 17)
!2511 = !DILocalVariable(name: "this", arg: 1, scope: !2512, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2512 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2513)
!2513 = !{!2511}
!2514 = !DILocation(line: 0, scope: !2512, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 266, column: 26, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !13, line: 266, column: 21)
!2517 = distinct !DILexicalBlock(scope: !2510, file: !13, line: 265, column: 80)
!2518 = !DILocation(line: 47, column: 16, scope: !2519, inlinedAt: !2515)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !13, line: 47, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2512, file: !13, line: 47, column: 9)
!2521 = !{!2419, !2421, i64 120}
!2522 = !DILocation(line: 47, column: 38, scope: !2519, inlinedAt: !2515)
!2523 = !{!2419, !2421, i64 32}
!2524 = !DILocation(line: 47, column: 31, scope: !2519, inlinedAt: !2515)
!2525 = !DILocation(line: 47, column: 9, scope: !2520, inlinedAt: !2515)
!2526 = !DILocation(line: 48, column: 60, scope: !2527, inlinedAt: !2515)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !13, line: 48, column: 17)
!2528 = distinct !DILexicalBlock(scope: !2519, file: !13, line: 47, column: 72)
!2529 = !{!2419, !403, i64 24}
!2530 = !DILocation(line: 48, column: 55, scope: !2527, inlinedAt: !2515)
!2531 = !DILocation(line: 48, column: 87, scope: !2527, inlinedAt: !2515)
!2532 = !{!2533, !403, i64 0}
!2533 = !{!"_ZTS26halide_semaphore_acquire_t", !403, i64 0, !2421, i64 8}
!2534 = !DILocation(line: 49, column: 87, scope: !2527, inlinedAt: !2515)
!2535 = !{!2533, !2421, i64 8}
!2536 = !DILocation(line: 48, column: 18, scope: !2527, inlinedAt: !2515)
!2537 = !DILocation(line: 48, column: 17, scope: !2528, inlinedAt: !2515)
!2538 = !DILocation(line: 47, column: 68, scope: !2519, inlinedAt: !2515)
!2539 = distinct !{!2539, !2525, !2540, !610}
!2540 = !DILocation(line: 56, column: 9, scope: !2520, inlinedAt: !2515)
!2541 = !DILocation(line: 272, column: 31, scope: !2389)
!2542 = !DILocation(line: 273, column: 24, scope: !2389)
!2543 = !DILocation(line: 256, column: 66, scope: !2389)
!2544 = !{!2419, !403, i64 72}
!2545 = !DILocation(line: 256, column: 89, scope: !2389)
!2546 = !DILocation(line: 256, column: 75, scope: !2389)
!2547 = !DILocation(line: 278, column: 17, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !13, line: 276, column: 19)
!2549 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 276, column: 13)
!2550 = !DILocation(line: 279, column: 31, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !13, line: 279, column: 21)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !13, line: 278, column: 28)
!2553 = distinct !DILexicalBlock(scope: !2548, file: !13, line: 278, column: 17)
!2554 = !DILocation(line: 279, column: 34, scope: !2551)
!2555 = !DILocation(line: 279, column: 21, scope: !2552)
!2556 = !DILocation(line: 281, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !13, line: 279, column: 52)
!2558 = !DILocation(line: 282, column: 21, scope: !2557)
!2559 = !DILocation(line: 283, column: 21, scope: !2557)
!2560 = !DILocation(line: 284, column: 17, scope: !2557)
!2561 = !DILocation(line: 285, column: 47, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2551, file: !13, line: 284, column: 24)
!2563 = !{!2426, !2421, i64 68}
!2564 = !DILocation(line: 286, column: 50, scope: !2562)
!2565 = !{!2419, !557, i64 124}
!2566 = !DILocation(line: 287, column: 21, scope: !2562)
!2567 = !DILocation(line: 288, column: 50, scope: !2562)
!2568 = !DILocation(line: 289, column: 47, scope: !2562)
!2569 = !DILocation(line: 292, column: 44, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2553, file: !13, line: 291, column: 20)
!2571 = !{!2426, !2421, i64 64}
!2572 = !DILocation(line: 293, column: 32, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !13, line: 293, column: 21)
!2574 = !{!2426, !2421, i64 28}
!2575 = !DILocation(line: 293, column: 57, scope: !2573)
!2576 = !{!2426, !2421, i64 32}
!2577 = !DILocation(line: 293, column: 44, scope: !2573)
!2578 = !DILocation(line: 293, column: 21, scope: !2570)
!2579 = !DILocation(line: 295, column: 43, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2573, file: !13, line: 293, column: 77)
!2581 = !DILocation(line: 296, column: 21, scope: !2580)
!2582 = !DILocation(line: 297, column: 43, scope: !2580)
!2583 = !DILocation(line: 298, column: 17, scope: !2580)
!2584 = !DILocation(line: 298, column: 38, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2573, file: !13, line: 298, column: 28)
!2586 = !DILocation(line: 298, column: 41, scope: !2585)
!2587 = !DILocation(line: 298, column: 28, scope: !2573)
!2588 = !DILocation(line: 300, column: 21, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !13, line: 298, column: 59)
!2590 = !DILocation(line: 301, column: 21, scope: !2589)
!2591 = !DILocation(line: 302, column: 21, scope: !2589)
!2592 = !DILocation(line: 303, column: 17, scope: !2589)
!2593 = !DILocation(line: 304, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2585, file: !13, line: 303, column: 24)
!2595 = !DILocation(line: 306, column: 44, scope: !2570)
!2596 = !DILocation(line: 58, column: 24, scope: !2512, inlinedAt: !2515)
!2597 = !DILocation(line: 318, column: 14, scope: !2385)
!2598 = !DILocation(line: 318, column: 28, scope: !2385)
!2599 = !DILocation(line: 320, column: 18, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 320, column: 13)
!2601 = !DILocation(line: 320, column: 29, scope: !2600)
!2602 = !DILocation(line: 0, scope: !2600)
!2603 = !DILocation(line: 320, column: 13, scope: !2385)
!2604 = !DILocation(line: 321, column: 41, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !13, line: 320, column: 41)
!2606 = !DILocation(line: 323, column: 9, scope: !2605)
!2607 = !DILocation(line: 324, column: 30, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !13, line: 323, column: 16)
!2609 = !DILocation(line: 324, column: 47, scope: !2608)
!2610 = !DILocation(line: 330, column: 23, scope: !2397)
!2611 = !DILocation(line: 330, column: 13, scope: !2385)
!2612 = !DILocation(line: 332, column: 30, scope: !2396)
!2613 = !DILocation(line: 332, column: 23, scope: !2396)
!2614 = !DILocation(line: 335, column: 13, scope: !2396)
!2615 = !DILocation(line: 0, scope: !2396)
!2616 = !DILocation(line: 338, column: 13, scope: !2396)
!2617 = !DILocation(line: 340, column: 35, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2396, file: !13, line: 338, column: 33)
!2619 = !DILocation(line: 340, column: 42, scope: !2618)
!2620 = !DILocation(line: 340, column: 57, scope: !2618)
!2621 = !DILocation(line: 340, column: 65, scope: !2618)
!2622 = !DILocation(line: 47, column: 16, scope: !2519, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 341, column: 29, scope: !2618)
!2624 = !DILocation(line: 47, column: 38, scope: !2519, inlinedAt: !2623)
!2625 = !DILocation(line: 340, column: 17, scope: !2618)
!2626 = !DILocation(line: 0, scope: !2512, inlinedAt: !2623)
!2627 = !DILocation(line: 47, column: 31, scope: !2519, inlinedAt: !2623)
!2628 = !DILocation(line: 47, column: 9, scope: !2520, inlinedAt: !2623)
!2629 = !DILocation(line: 48, column: 60, scope: !2527, inlinedAt: !2623)
!2630 = !DILocation(line: 48, column: 55, scope: !2527, inlinedAt: !2623)
!2631 = !DILocation(line: 48, column: 87, scope: !2527, inlinedAt: !2623)
!2632 = !DILocation(line: 49, column: 87, scope: !2527, inlinedAt: !2623)
!2633 = !DILocation(line: 48, column: 18, scope: !2527, inlinedAt: !2623)
!2634 = !DILocation(line: 48, column: 17, scope: !2528, inlinedAt: !2623)
!2635 = !DILocation(line: 47, column: 68, scope: !2519, inlinedAt: !2623)
!2636 = distinct !{!2636, !2628, !2637, !610}
!2637 = !DILocation(line: 56, column: 9, scope: !2520, inlinedAt: !2623)
!2638 = !DILocation(line: 58, column: 24, scope: !2512, inlinedAt: !2623)
!2639 = !DILocation(line: 342, column: 26, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2618, file: !13, line: 341, column: 46)
!2641 = distinct !{!2641, !2625, !2642, !610}
!2642 = !DILocation(line: 343, column: 17, scope: !2618)
!2643 = !DILocation(line: 344, column: 27, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2618, file: !13, line: 344, column: 21)
!2645 = !DILocation(line: 344, column: 21, scope: !2618)
!2646 = !DILocation(line: 349, column: 51, scope: !2618)
!2647 = !{!2419, !403, i64 104}
!2648 = !DILocation(line: 349, column: 75, scope: !2618)
!2649 = !{!2419, !403, i64 0}
!2650 = !DILocation(line: 350, column: 56, scope: !2618)
!2651 = !{!2419, !2421, i64 36}
!2652 = !DILocation(line: 350, column: 60, scope: !2618)
!2653 = !DILocation(line: 351, column: 56, scope: !2618)
!2654 = !{!2419, !403, i64 8}
!2655 = !DILocation(line: 349, column: 26, scope: !2618)
!2656 = !DILocation(line: 352, column: 29, scope: !2618)
!2657 = !DILocation(line: 338, column: 27, scope: !2396)
!2658 = distinct !{!2658, !2616, !2659, !610}
!2659 = !DILocation(line: 354, column: 13, scope: !2396)
!2660 = !DILocation(line: 355, column: 13, scope: !2396)
!2661 = !DILocation(line: 357, column: 27, scope: !2396)
!2662 = !DILocation(line: 358, column: 30, scope: !2396)
!2663 = !DILocation(line: 361, column: 17, scope: !2396)
!2664 = !DILocation(line: 362, column: 34, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !13, line: 361, column: 30)
!2666 = distinct !DILexicalBlock(scope: !2396, file: !13, line: 361, column: 17)
!2667 = !DILocation(line: 399, column: 13, scope: !2385)
!2668 = !DILocation(line: 363, column: 41, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !13, line: 363, column: 24)
!2670 = !DILocation(line: 363, column: 24, scope: !2666)
!2671 = !DILocation(line: 364, column: 44, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !13, line: 363, column: 46)
!2673 = !DILocation(line: 364, column: 31, scope: !2672)
!2674 = !DILocation(line: 365, column: 33, scope: !2672)
!2675 = !DILocation(line: 366, column: 13, scope: !2672)
!2676 = !DILocation(line: 369, column: 26, scope: !2400)
!2677 = !{i64 0, i64 8, !452, i64 8, i64 8, !452, i64 16, i64 8, !452, i64 24, i64 8, !452, i64 32, i64 4, !2678, i64 36, i64 4, !2678, i64 40, i64 4, !2678, i64 44, i64 4, !2678, i64 48, i64 1, !2679, i64 56, i64 8, !452, i64 64, i64 8, !452, i64 72, i64 8, !452, i64 80, i64 4, !2678, i64 88, i64 8, !452, i64 96, i64 4, !2678, i64 104, i64 8, !452, i64 112, i64 4, !2678, i64 116, i64 4, !2678, i64 120, i64 4, !2678, i64 124, i64 1, !2679}
!2678 = !{!2421, !2421, i64 0}
!2679 = !{!557, !557, i64 0}
!2680 = !DILocation(line: 0, scope: !2400)
!2681 = !{i64 0, i64 8, !452, i64 8, i64 8, !452, i64 16, i64 8, !452, i64 24, i64 4, !2678, i64 28, i64 4, !2678, i64 32, i64 4, !2678, i64 36, i64 4, !2678, i64 40, i64 1, !2679, i64 48, i64 8, !452, i64 56, i64 8, !452, i64 64, i64 8, !452, i64 72, i64 4, !2678, i64 80, i64 8, !452, i64 88, i64 4, !2678, i64 96, i64 8, !452, i64 104, i64 4, !2678, i64 108, i64 4, !2678, i64 112, i64 4, !2678, i64 116, i64 1, !2679}
!2682 = !{i64 0, i64 8, !452, i64 8, i64 8, !452, i64 16, i64 8, !452, i64 24, i64 4, !2678, i64 32, i64 8, !452, i64 40, i64 4, !2678, i64 48, i64 8, !452, i64 56, i64 4, !2678, i64 60, i64 4, !2678, i64 64, i64 4, !2678, i64 68, i64 1, !2679}
!2683 = !{i64 0, i64 8, !452, i64 8, i64 4, !2678, i64 12, i64 4, !2678, i64 16, i64 4, !2678, i64 20, i64 1, !2679}
!2684 = !DILocation(line: 370, column: 26, scope: !2400)
!2685 = !DILocation(line: 371, column: 23, scope: !2400)
!2686 = !DILocation(line: 371, column: 29, scope: !2400)
!2687 = !DILocation(line: 375, column: 34, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2400, file: !13, line: 375, column: 17)
!2689 = !DILocation(line: 375, column: 17, scope: !2400)
!2690 = !DILocation(line: 376, column: 34, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !13, line: 375, column: 40)
!2692 = !DILocation(line: 376, column: 27, scope: !2691)
!2693 = !DILocation(line: 377, column: 13, scope: !2691)
!2694 = !DILocation(line: 380, column: 13, scope: !2400)
!2695 = !DILocation(line: 381, column: 17, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2400, file: !13, line: 381, column: 17)
!2697 = !DILocation(line: 381, column: 17, scope: !2400)
!2698 = !DILocation(line: 382, column: 26, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !13, line: 381, column: 32)
!2700 = !DILocation(line: 384, column: 13, scope: !2699)
!2701 = !DILocation(line: 387, column: 66, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2696, file: !13, line: 384, column: 20)
!2703 = !DILocation(line: 385, column: 26, scope: !2702)
!2704 = !DILocation(line: 0, scope: !2696)
!2705 = !DILocation(line: 389, column: 13, scope: !2400)
!2706 = !DILocation(line: 399, column: 20, scope: !2405)
!2707 = !DILocation(line: 400, column: 18, scope: !2404)
!2708 = !DILocation(line: 400, column: 30, scope: !2404)
!2709 = !DILocation(line: 0, scope: !2403)
!2710 = !DILocation(line: 402, column: 38, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2403, file: !13, line: 402, column: 13)
!2712 = !{!2419, !2421, i64 80}
!2713 = !DILocation(line: 402, column: 31, scope: !2711)
!2714 = !DILocation(line: 402, column: 13, scope: !2403)
!2715 = !DILocation(line: 404, column: 38, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !13, line: 404, column: 21)
!2717 = distinct !DILexicalBlock(scope: !2711, file: !13, line: 402, column: 58)
!2718 = !DILocation(line: 404, column: 50, scope: !2716)
!2719 = !DILocation(line: 404, column: 21, scope: !2717)
!2720 = !DILocation(line: 405, column: 50, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !13, line: 404, column: 56)
!2722 = !DILocation(line: 406, column: 42, scope: !2721)
!2723 = !DILocation(line: 406, column: 57, scope: !2721)
!2724 = !DILocation(line: 406, column: 62, scope: !2721)
!2725 = !DILocation(line: 406, column: 82, scope: !2721)
!2726 = !DILocation(line: 0, scope: !2721)
!2727 = !DILocation(line: 406, column: 33, scope: !2721)
!2728 = !DILocation(line: 407, column: 17, scope: !2721)
!2729 = !DILocation(line: 402, column: 54, scope: !2711)
!2730 = distinct !{!2730, !2714, !2731, !610}
!2731 = !DILocation(line: 409, column: 13, scope: !2403)
!2732 = !DILocation(line: 396, column: 14, scope: !2385)
!2733 = !DILocation(line: 412, column: 18, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 412, column: 13)
!2735 = !DILocation(line: 412, column: 29, scope: !2734)
!2736 = !DILocation(line: 0, scope: !2734)
!2737 = !DILocation(line: 412, column: 13, scope: !2385)
!2738 = !DILocation(line: 413, column: 41, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2734, file: !13, line: 412, column: 41)
!2740 = !DILocation(line: 415, column: 9, scope: !2739)
!2741 = !DILocation(line: 416, column: 30, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2734, file: !13, line: 415, column: 16)
!2743 = !DILocation(line: 416, column: 47, scope: !2742)
!2744 = !DILocation(line: 421, column: 28, scope: !2385)
!2745 = !DILocation(line: 425, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 425, column: 13)
!2747 = !DILocation(line: 425, column: 25, scope: !2746)
!2748 = !DILocation(line: 426, column: 34, scope: !2746)
!2749 = !DILocation(line: 426, column: 39, scope: !2746)
!2750 = distinct !{!2750, !2413, !2751, !610}
!2751 = !DILocation(line: 430, column: 5, scope: !2376)
!2752 = !DILocation(line: 426, column: 53, scope: !2746)
!2753 = !DILocation(line: 426, column: 60, scope: !2746)
!2754 = !DILocation(line: 426, column: 65, scope: !2746)
!2755 = !DILocation(line: 426, column: 73, scope: !2746)
!2756 = !DILocation(line: 426, column: 85, scope: !2746)
!2757 = !DILocation(line: 426, column: 91, scope: !2746)
!2758 = !DILocation(line: 426, column: 99, scope: !2746)
!2759 = !DILocation(line: 425, column: 13, scope: !2385)
!2760 = !DILocation(line: 428, column: 13, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2746, file: !13, line: 426, column: 119)
!2762 = !DILocation(line: 429, column: 9, scope: !2761)
!2763 = !DILocation(line: 431, column: 1, scope: !2376)
!2764 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2765)
!2765 = !{!2766, !2767, !2768, !2769, !2770, !2771}
!2766 = !DILocalVariable(name: "user_context", arg: 1, scope: !2764, file: !13, line: 797, type: !43)
!2767 = !DILocalVariable(name: "f", arg: 2, scope: !2764, file: !13, line: 797, type: !39)
!2768 = !DILocalVariable(name: "min", arg: 3, scope: !2764, file: !13, line: 798, type: !29)
!2769 = !DILocalVariable(name: "size", arg: 4, scope: !2764, file: !13, line: 798, type: !29)
!2770 = !DILocalVariable(name: "closure", arg: 5, scope: !2764, file: !13, line: 798, type: !44)
!2771 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2764, file: !13, line: 798, type: !43)
!2772 = !DILocation(line: 0, scope: !2764)
!2773 = !DILocation(line: 799, column: 12, scope: !2764)
!2774 = !DILocation(line: 799, column: 5, scope: !2764)
!2775 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2776)
!2776 = !{!2777, !2778, !2779, !2780}
!2777 = !DILocalVariable(name: "user_context", arg: 1, scope: !2775, file: !13, line: 787, type: !43)
!2778 = !DILocalVariable(name: "f", arg: 2, scope: !2775, file: !13, line: 787, type: !66)
!2779 = !DILocalVariable(name: "idx", arg: 3, scope: !2775, file: !13, line: 787, type: !29)
!2780 = !DILocalVariable(name: "closure", arg: 4, scope: !2775, file: !13, line: 788, type: !44)
!2781 = !DILocation(line: 0, scope: !2775)
!2782 = !DILocation(line: 789, column: 14, scope: !2775)
!2783 = !DILocation(line: 789, column: 12, scope: !2775)
!2784 = !DILocation(line: 789, column: 5, scope: !2775)
!2785 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2786)
!2786 = !{!2787}
!2787 = !DILocalVariable(name: "arg", arg: 1, scope: !2785, file: !13, line: 433, type: !43)
!2788 = !DILocation(line: 0, scope: !2785)
!2789 = !DILocation(line: 434, column: 5, scope: !2785)
!2790 = !DILocation(line: 435, column: 34, scope: !2785)
!2791 = !DILocation(line: 435, column: 5, scope: !2785)
!2792 = !DILocation(line: 436, column: 5, scope: !2785)
!2793 = !DILocation(line: 437, column: 1, scope: !2785)
!2794 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !3, file: !13, line: 439, type: !2795, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !29, !32, !32}
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2808, !2810}
!2798 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2794, file: !13, line: 439, type: !29)
!2799 = !DILocalVariable(name: "jobs", arg: 2, scope: !2794, file: !13, line: 439, type: !32)
!2800 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2794, file: !13, line: 439, type: !32)
!2801 = !DILocalVariable(name: "min_threads", scope: !2794, file: !13, line: 457, type: !29)
!2802 = !DILocalVariable(name: "workers_to_wake", scope: !2794, file: !13, line: 461, type: !29)
!2803 = !DILocalVariable(name: "stealable_jobs", scope: !2794, file: !13, line: 465, type: !64)
!2804 = !DILocalVariable(name: "job_has_acquires", scope: !2794, file: !13, line: 467, type: !64)
!2805 = !DILocalVariable(name: "job_may_block", scope: !2794, file: !13, line: 468, type: !64)
!2806 = !DILocalVariable(name: "i", scope: !2807, file: !13, line: 469, type: !29)
!2807 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 469, column: 5)
!2808 = !DILocalVariable(name: "i", scope: !2809, file: !13, line: 527, type: !29)
!2809 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 527, column: 5)
!2810 = !DILocalVariable(name: "nested_parallelism", scope: !2794, file: !13, line: 537, type: !64)
!2811 = !DILocation(line: 0, scope: !2794)
!2812 = !DILocation(line: 440, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 440, column: 9)
!2814 = !{!2426, !557, i64 2121}
!2815 = !DILocation(line: 440, column: 9, scope: !2794)
!2816 = !DILocalVariable(name: "bytes", scope: !2817, file: !13, line: 148, type: !49)
!2817 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2818)
!2818 = !{!2819, !2816, !2821}
!2819 = !DILocalVariable(name: "this", arg: 1, scope: !2817, type: !2820, flags: DIFlagArtificial | DIFlagObjectPointer)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2821 = !DILocalVariable(name: "limit", scope: !2817, file: !13, line: 149, type: !49)
!2822 = !DILocation(line: 0, scope: !2817, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 441, column: 20, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2813, file: !13, line: 440, column: 34)
!2825 = !DILocation(line: 150, column: 33, scope: !2817, inlinedAt: !2823)
!2826 = !{!404, !404, i64 0}
!2827 = !DILocation(line: 150, column: 40, scope: !2817, inlinedAt: !2823)
!2828 = !DILocation(line: 150, column: 9, scope: !2817, inlinedAt: !2823)
!2829 = !DILocation(line: 151, column: 18, scope: !2830, inlinedAt: !2823)
!2830 = distinct !DILexicalBlock(scope: !2817, file: !13, line: 150, column: 46)
!2831 = !DILocation(line: 150, column: 22, scope: !2817, inlinedAt: !2823)
!2832 = !DILocation(line: 150, column: 30, scope: !2817, inlinedAt: !2823)
!2833 = distinct !{!2833, !2828, !2834, !610}
!2834 = !DILocation(line: 152, column: 9, scope: !2817, inlinedAt: !2823)
!2835 = !DILocation(line: 153, column: 9, scope: !2836, inlinedAt: !2823)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !13, line: 153, column: 9)
!2837 = distinct !DILexicalBlock(scope: !2817, file: !13, line: 153, column: 9)
!2838 = !DILocation(line: 153, column: 9, scope: !2837, inlinedAt: !2823)
!2839 = !DILocation(line: 153, column: 9, scope: !2840, inlinedAt: !2823)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !13, line: 153, column: 9)
!2841 = !DILocation(line: 446, column: 25, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2824, file: !13, line: 446, column: 13)
!2843 = !{!2426, !2421, i64 8}
!2844 = !DILocation(line: 446, column: 14, scope: !2842)
!2845 = !DILocation(line: 446, column: 13, scope: !2824)
!2846 = !DILocation(line: 447, column: 50, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2842, file: !13, line: 446, column: 50)
!2848 = !DILocation(line: 447, column: 48, scope: !2847)
!2849 = !DILocation(line: 448, column: 9, scope: !2847)
!2850 = !DILocation(line: 449, column: 75, scope: !2824)
!2851 = !DILocation(line: 449, column: 46, scope: !2824)
!2852 = !DILocation(line: 449, column: 44, scope: !2824)
!2853 = !DILocation(line: 450, column: 32, scope: !2824)
!2854 = !DILocation(line: 451, column: 5, scope: !2824)
!2855 = !DILocation(line: 0, scope: !2807)
!2856 = !DILocation(line: 469, column: 23, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2807, file: !13, line: 469, column: 5)
!2858 = !DILocation(line: 469, column: 5, scope: !2807)
!2859 = !DILocation(line: 487, column: 21, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 487, column: 9)
!2861 = !DILocation(line: 468, column: 10, scope: !2794)
!2862 = !DILocation(line: 457, column: 9, scope: !2794)
!2863 = !DILocation(line: 487, column: 9, scope: !2794)
!2864 = !DILocation(line: 470, column: 26, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !13, line: 470, column: 13)
!2866 = distinct !DILexicalBlock(scope: !2857, file: !13, line: 469, column: 40)
!2867 = !DILocation(line: 470, column: 38, scope: !2865)
!2868 = !DILocation(line: 470, column: 13, scope: !2866)
!2869 = !DILocation(line: 476, column: 26, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !13, line: 476, column: 13)
!2871 = !DILocation(line: 476, column: 41, scope: !2870)
!2872 = !DILocation(line: 476, column: 13, scope: !2866)
!2873 = !DILocation(line: 480, column: 26, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2866, file: !13, line: 480, column: 13)
!2875 = !DILocation(line: 480, column: 13, scope: !2866)
!2876 = !DILocation(line: 481, column: 28, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !13, line: 480, column: 34)
!2878 = !DILocation(line: 482, column: 9, scope: !2877)
!2879 = !DILocation(line: 483, column: 45, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !13, line: 482, column: 16)
!2881 = !DILocation(line: 483, column: 29, scope: !2880)
!2882 = !DILocation(line: 0, scope: !2874)
!2883 = !DILocation(line: 469, column: 36, scope: !2857)
!2884 = distinct !{!2884, !2858, !2885, !610}
!2885 = !DILocation(line: 485, column: 5, scope: !2807)
!2886 = !DILocation(line: 497, column: 30, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !13, line: 497, column: 13)
!2888 = distinct !DILexicalBlock(scope: !2860, file: !13, line: 487, column: 33)
!2889 = !DILocation(line: 503, column: 27, scope: !2888)
!2890 = !DILocation(line: 503, column: 43, scope: !2888)
!2891 = !DILocation(line: 503, column: 57, scope: !2888)
!2892 = !DILocation(line: 504, column: 58, scope: !2888)
!2893 = !DILocation(line: 504, column: 82, scope: !2888)
!2894 = !DILocation(line: 504, column: 45, scope: !2888)
!2895 = !DILocation(line: 504, column: 87, scope: !2888)
!2896 = !DILocation(line: 505, column: 45, scope: !2888)
!2897 = !DILocation(line: 505, column: 63, scope: !2888)
!2898 = !DILocation(line: 505, column: 50, scope: !2888)
!2899 = !DILocation(line: 505, column: 80, scope: !2888)
!2900 = !DILocation(line: 503, column: 9, scope: !2888)
!2901 = !DILocation(line: 508, column: 35, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2888, file: !13, line: 505, column: 96)
!2903 = !DILocation(line: 510, column: 17, scope: !2902)
!2904 = !DILocation(line: 509, column: 58, scope: !2902)
!2905 = !DILocation(line: 509, column: 13, scope: !2902)
!2906 = !DILocation(line: 509, column: 62, scope: !2902)
!2907 = distinct !{!2907, !2900, !2908, !610}
!2908 = !DILocation(line: 511, column: 9, scope: !2888)
!2909 = !DILocation(line: 513, column: 30, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2888, file: !13, line: 513, column: 13)
!2911 = !DILocation(line: 514, column: 40, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2910, file: !13, line: 513, column: 48)
!2913 = !DILocation(line: 515, column: 9, scope: !2912)
!2914 = !DILocation(line: 518, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !13, line: 518, column: 9)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !13, line: 518, column: 9)
!2917 = distinct !DILexicalBlock(scope: !2860, file: !13, line: 516, column: 12)
!2918 = !DILocation(line: 518, column: 9, scope: !2916)
!2919 = !DILocation(line: 518, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !13, line: 518, column: 9)
!2921 = !DILocation(line: 521, column: 30, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !13, line: 521, column: 13)
!2923 = !DILocation(line: 522, column: 42, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2922, file: !13, line: 521, column: 48)
!2925 = !DILocation(line: 523, column: 9, scope: !2924)
!2926 = !DILocation(line: 0, scope: !2809)
!2927 = !DILocation(line: 527, column: 5, scope: !2809)
!2928 = !DILocation(line: 0, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !13, line: 527, column: 45)
!2930 = distinct !DILexicalBlock(scope: !2809, file: !13, line: 527, column: 5)
!2931 = !DILocation(line: 538, column: 20, scope: !2794)
!2932 = !DILocation(line: 538, column: 9, scope: !2794)
!2933 = !DILocation(line: 538, column: 36, scope: !2794)
!2934 = !DILocation(line: 542, column: 28, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 542, column: 9)
!2936 = !DILocation(line: 0, scope: !2935)
!2937 = !DILocation(line: 550, column: 5, scope: !2794)
!2938 = !DILocation(line: 551, column: 20, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 551, column: 9)
!2940 = !DILocation(line: 551, column: 52, scope: !2939)
!2941 = !DILocation(line: 551, column: 39, scope: !2939)
!2942 = !DILocation(line: 551, column: 9, scope: !2794)
!2943 = !DILocation(line: 530, column: 39, scope: !2929)
!2944 = !DILocation(line: 530, column: 9, scope: !2929)
!2945 = !DILocation(line: 530, column: 17, scope: !2929)
!2946 = !DILocation(line: 530, column: 26, scope: !2929)
!2947 = !DILocation(line: 531, column: 17, scope: !2929)
!2948 = !DILocation(line: 531, column: 26, scope: !2929)
!2949 = !DILocation(line: 532, column: 17, scope: !2929)
!2950 = !DILocation(line: 532, column: 31, scope: !2929)
!2951 = !DILocation(line: 533, column: 17, scope: !2929)
!2952 = !DILocation(line: 533, column: 34, scope: !2929)
!2953 = !DILocation(line: 527, column: 34, scope: !2930)
!2954 = distinct !{!2954, !2927, !2955, !610}
!2955 = !DILocation(line: 535, column: 5, scope: !2809)
!2956 = !DILocation(line: 552, column: 9, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2939, file: !13, line: 551, column: 65)
!2958 = !DILocation(line: 553, column: 13, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2957, file: !13, line: 553, column: 13)
!2960 = !DILocation(line: 553, column: 13, scope: !2957)
!2961 = !DILocation(line: 554, column: 13, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !13, line: 553, column: 29)
!2963 = !DILocation(line: 555, column: 9, scope: !2962)
!2964 = !DILocation(line: 558, column: 26, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2794, file: !13, line: 558, column: 9)
!2966 = !DILocation(line: 559, column: 13, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2965, file: !13, line: 558, column: 44)
!2968 = !DILocation(line: 560, column: 26, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !13, line: 559, column: 37)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !13, line: 559, column: 13)
!2971 = !DILocation(line: 560, column: 42, scope: !2969)
!2972 = !DILocation(line: 561, column: 9, scope: !2969)
!2973 = !DILocation(line: 562, column: 40, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !13, line: 561, column: 16)
!2975 = !DILocation(line: 565, column: 1, scope: !2794)
!2976 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "user_context", arg: 1, scope: !2976, file: !13, line: 589, type: !43)
!2979 = !DILocalVariable(name: "f", arg: 2, scope: !2976, file: !13, line: 589, type: !66)
!2980 = !DILocalVariable(name: "idx", arg: 3, scope: !2976, file: !13, line: 589, type: !29)
!2981 = !DILocalVariable(name: "closure", arg: 4, scope: !2976, file: !13, line: 590, type: !44)
!2982 = !DILocation(line: 0, scope: !2976)
!2983 = !DILocation(line: 591, column: 12, scope: !2976)
!2984 = !DILocation(line: 591, column: 5, scope: !2976)
!2985 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992}
!2987 = !DILocalVariable(name: "user_context", arg: 1, scope: !2985, file: !13, line: 594, type: !43)
!2988 = !DILocalVariable(name: "f", arg: 2, scope: !2985, file: !13, line: 594, type: !39)
!2989 = !DILocalVariable(name: "min", arg: 3, scope: !2985, file: !13, line: 595, type: !29)
!2990 = !DILocalVariable(name: "extent", arg: 4, scope: !2985, file: !13, line: 595, type: !29)
!2991 = !DILocalVariable(name: "closure", arg: 5, scope: !2985, file: !13, line: 595, type: !44)
!2992 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2985, file: !13, line: 596, type: !43)
!2993 = !DILocation(line: 0, scope: !2985)
!2994 = !DILocation(line: 597, column: 12, scope: !2985)
!2995 = !DILocation(line: 597, column: 5, scope: !2985)
!2996 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2997)
!2997 = !{!2998, !2999, !3000, !3001, !3002, !3003}
!2998 = !DILocalVariable(name: "user_context", arg: 1, scope: !2996, file: !13, line: 600, type: !43)
!2999 = !DILocalVariable(name: "f", arg: 2, scope: !2996, file: !13, line: 600, type: !66)
!3000 = !DILocalVariable(name: "min", arg: 3, scope: !2996, file: !13, line: 601, type: !29)
!3001 = !DILocalVariable(name: "size", arg: 4, scope: !2996, file: !13, line: 601, type: !29)
!3002 = !DILocalVariable(name: "closure", arg: 5, scope: !2996, file: !13, line: 601, type: !44)
!3003 = !DILocalVariable(name: "job", scope: !2996, file: !13, line: 606, type: !33)
!3004 = !DILocation(line: 0, scope: !2996)
!3005 = !DILocation(line: 602, column: 14, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2996, file: !13, line: 602, column: 9)
!3007 = !DILocation(line: 602, column: 9, scope: !2996)
!3008 = !DILocation(line: 606, column: 5, scope: !2996)
!3009 = !DILocation(line: 606, column: 10, scope: !2996)
!3010 = !DILocation(line: 607, column: 14, scope: !2996)
!3011 = !DILocation(line: 607, column: 17, scope: !2996)
!3012 = !DILocation(line: 608, column: 14, scope: !2996)
!3013 = !DILocation(line: 608, column: 18, scope: !2996)
!3014 = !DILocation(line: 609, column: 14, scope: !2996)
!3015 = !DILocation(line: 609, column: 21, scope: !2996)
!3016 = !DILocation(line: 610, column: 14, scope: !2996)
!3017 = !DILocation(line: 610, column: 21, scope: !2996)
!3018 = !DILocation(line: 611, column: 14, scope: !2996)
!3019 = !DILocation(line: 611, column: 25, scope: !2996)
!3020 = !DILocation(line: 612, column: 14, scope: !2996)
!3021 = !DILocation(line: 612, column: 29, scope: !2996)
!3022 = !DILocation(line: 613, column: 14, scope: !2996)
!3023 = !DILocation(line: 613, column: 22, scope: !2996)
!3024 = !DILocation(line: 614, column: 14, scope: !2996)
!3025 = !DILocation(line: 614, column: 26, scope: !2996)
!3026 = !DILocation(line: 615, column: 14, scope: !2996)
!3027 = !DILocation(line: 615, column: 19, scope: !2996)
!3028 = !{!2419, !403, i64 16}
!3029 = !DILocation(line: 616, column: 9, scope: !2996)
!3030 = !DILocation(line: 616, column: 17, scope: !2996)
!3031 = !{!2419, !403, i64 56}
!3032 = !DILocation(line: 617, column: 9, scope: !2996)
!3033 = !DILocation(line: 617, column: 22, scope: !2996)
!3034 = !DILocation(line: 618, column: 9, scope: !2996)
!3035 = !DILocation(line: 618, column: 21, scope: !2996)
!3036 = !DILocation(line: 619, column: 9, scope: !2996)
!3037 = !DILocation(line: 619, column: 24, scope: !2996)
!3038 = !DILocation(line: 620, column: 9, scope: !2996)
!3039 = !DILocation(line: 620, column: 24, scope: !2996)
!3040 = !DILocation(line: 621, column: 9, scope: !2996)
!3041 = !DILocation(line: 621, column: 27, scope: !2996)
!3042 = !DILocation(line: 622, column: 9, scope: !2996)
!3043 = !DILocation(line: 622, column: 18, scope: !2996)
!3044 = !DILocation(line: 623, column: 9, scope: !2996)
!3045 = !DILocation(line: 623, column: 23, scope: !2996)
!3046 = !DILocation(line: 624, column: 9, scope: !2996)
!3047 = !DILocation(line: 624, column: 20, scope: !2996)
!3048 = !DILocation(line: 625, column: 5, scope: !2996)
!3049 = !DILocation(line: 626, column: 5, scope: !2996)
!3050 = !DILocation(line: 627, column: 5, scope: !2996)
!3051 = !DILocation(line: 628, column: 5, scope: !2996)
!3052 = !DILocation(line: 629, column: 16, scope: !2996)
!3053 = !DILocation(line: 630, column: 1, scope: !2996)
!3054 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3063, !3064}
!3056 = !DILocalVariable(name: "user_context", arg: 1, scope: !3054, file: !13, line: 632, type: !43)
!3057 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3054, file: !13, line: 632, type: !29)
!3058 = !DILocalVariable(name: "tasks", arg: 3, scope: !3054, file: !13, line: 633, type: !145)
!3059 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3054, file: !13, line: 634, type: !43)
!3060 = !DILocalVariable(name: "jobs", scope: !3054, file: !13, line: 635, type: !32)
!3061 = !DILocalVariable(name: "i", scope: !3062, file: !13, line: 637, type: !29)
!3062 = distinct !DILexicalBlock(scope: !3054, file: !13, line: 637, column: 5)
!3063 = !DILocalVariable(name: "exit_status", scope: !3054, file: !13, line: 659, type: !29)
!3064 = !DILocalVariable(name: "i", scope: !3065, file: !13, line: 660, type: !29)
!3065 = distinct !DILexicalBlock(scope: !3054, file: !13, line: 660, column: 5)
!3066 = !DILocation(line: 0, scope: !3054)
!3067 = !DILocation(line: 635, column: 58, scope: !3054)
!3068 = !DILocation(line: 635, column: 26, scope: !3054)
!3069 = !DILocation(line: 0, scope: !3062)
!3070 = !DILocation(line: 637, column: 23, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3062, file: !13, line: 637, column: 5)
!3072 = !DILocation(line: 637, column: 5, scope: !3062)
!3073 = !DILocation(line: 653, column: 19, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3054, file: !13, line: 653, column: 9)
!3075 = !DILocation(line: 653, column: 9, scope: !3054)
!3076 = !DILocation(line: 638, column: 20, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !13, line: 638, column: 13)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !13, line: 637, column: 41)
!3079 = !{!2420, !2421, i64 40}
!3080 = !DILocation(line: 638, column: 27, scope: !3077)
!3081 = !DILocation(line: 638, column: 13, scope: !3078)
!3082 = !DILocation(line: 640, column: 22, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3077, file: !13, line: 638, column: 33)
!3084 = !DILocation(line: 641, column: 13, scope: !3083)
!3085 = !DILocation(line: 643, column: 30, scope: !3078)
!3086 = !DILocation(line: 643, column: 9, scope: !3078)
!3087 = !DILocation(line: 643, column: 22, scope: !3078)
!3088 = !{i64 0, i64 8, !452, i64 8, i64 8, !452, i64 16, i64 8, !452, i64 24, i64 8, !452, i64 32, i64 4, !2678, i64 36, i64 4, !2678, i64 40, i64 4, !2678, i64 44, i64 4, !2678, i64 48, i64 1, !2679}
!3089 = !DILocation(line: 644, column: 17, scope: !3078)
!3090 = !DILocation(line: 644, column: 25, scope: !3078)
!3091 = !DILocation(line: 645, column: 17, scope: !3078)
!3092 = !DILocation(line: 645, column: 30, scope: !3078)
!3093 = !DILocation(line: 646, column: 17, scope: !3078)
!3094 = !DILocation(line: 646, column: 29, scope: !3078)
!3095 = !DILocation(line: 647, column: 17, scope: !3078)
!3096 = !DILocation(line: 647, column: 32, scope: !3078)
!3097 = !DILocation(line: 648, column: 17, scope: !3078)
!3098 = !DILocation(line: 648, column: 32, scope: !3078)
!3099 = !DILocation(line: 649, column: 17, scope: !3078)
!3100 = !DILocation(line: 649, column: 35, scope: !3078)
!3101 = !DILocation(line: 650, column: 17, scope: !3078)
!3102 = !DILocation(line: 650, column: 28, scope: !3078)
!3103 = !DILocation(line: 651, column: 5, scope: !3078)
!3104 = !DILocation(line: 637, column: 37, scope: !3071)
!3105 = distinct !{!3105, !3072, !3106, !610}
!3106 = !DILocation(line: 651, column: 5, scope: !3062)
!3107 = !DILocation(line: 657, column: 5, scope: !3054)
!3108 = !DILocation(line: 658, column: 50, scope: !3054)
!3109 = !DILocation(line: 658, column: 5, scope: !3054)
!3110 = !DILocation(line: 0, scope: !3065)
!3111 = !DILocation(line: 660, column: 23, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3065, file: !13, line: 660, column: 5)
!3113 = !DILocation(line: 660, column: 5, scope: !3065)
!3114 = !DILocation(line: 668, column: 5, scope: !3054)
!3115 = !DILocation(line: 663, column: 43, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !13, line: 660, column: 41)
!3117 = !DILocation(line: 663, column: 9, scope: !3116)
!3118 = !DILocation(line: 664, column: 21, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !13, line: 664, column: 13)
!3120 = !DILocation(line: 664, column: 33, scope: !3119)
!3121 = !DILocation(line: 664, column: 13, scope: !3116)
!3122 = !DILocation(line: 660, column: 37, scope: !3112)
!3123 = distinct !{!3123, !3113, !3124, !610}
!3124 = !DILocation(line: 667, column: 5, scope: !3065)
!3125 = !DILocation(line: 670, column: 1, scope: !3054)
!3126 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "s", arg: 1, scope: !3126, file: !13, line: 715, type: !56)
!3129 = !DILocalVariable(name: "n", arg: 2, scope: !3126, file: !13, line: 715, type: !29)
!3130 = !DILocalVariable(name: "sem", scope: !3126, file: !13, line: 716, type: !368)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 717, column: 76, scope: !3126)
!3133 = !DILocalVariable(name: "addr", arg: 1, scope: !3134, file: !6, line: 218, type: !3137)
!3134 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !491, file: !6, line: 218, type: !3135, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3140, retainedNodes: !3138)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !3137, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!3138 = !{!3133, !3139}
!3139 = !DILocalVariable(name: "val", arg: 2, scope: !3134, file: !6, line: 218, type: !3137)
!3140 = !{!3141}
!3141 = !DITemplateTypeParameter(name: "T", type: !29)
!3142 = !DILocation(line: 0, scope: !3134, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 717, column: 5, scope: !3126)
!3144 = !DILocation(line: 219, column: 5, scope: !3134, inlinedAt: !3143)
!3145 = !DILocation(line: 718, column: 5, scope: !3126)
!3146 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152}
!3148 = !DILocalVariable(name: "s", arg: 1, scope: !3146, file: !13, line: 735, type: !56)
!3149 = !DILocalVariable(name: "n", arg: 2, scope: !3146, file: !13, line: 735, type: !29)
!3150 = !DILocalVariable(name: "sem", scope: !3146, file: !13, line: 739, type: !368)
!3151 = !DILocalVariable(name: "expected", scope: !3146, file: !13, line: 741, type: !29)
!3152 = !DILocalVariable(name: "desired", scope: !3146, file: !13, line: 742, type: !29)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocation(line: 736, column: 11, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3146, file: !13, line: 736, column: 9)
!3156 = !DILocation(line: 736, column: 9, scope: !3146)
!3157 = !DILocation(line: 743, column: 75, scope: !3146)
!3158 = !DILocalVariable(name: "addr", arg: 1, scope: !3159, file: !6, line: 205, type: !3137)
!3159 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !491, file: !6, line: 205, type: !3135, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3140, retainedNodes: !3160)
!3160 = !{!3158, !3161}
!3161 = !DILocalVariable(name: "val", arg: 2, scope: !3159, file: !6, line: 205, type: !3137)
!3162 = !DILocation(line: 0, scope: !3159, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 743, column: 5, scope: !3146)
!3164 = !DILocation(line: 206, column: 5, scope: !3159, inlinedAt: !3163)
!3165 = !DILocation(line: 745, column: 28, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3146, file: !13, line: 744, column: 8)
!3167 = !DILocation(line: 746, column: 22, scope: !3146)
!3168 = !DILocation(line: 746, column: 27, scope: !3146)
!3169 = !DILocalVariable(name: "addr", arg: 1, scope: !3170, file: !6, line: 179, type: !3137)
!3170 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !491, file: !6, line: 179, type: !3171, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3140, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!64, !3137, !3137, !3137}
!3173 = !{!3169, !3174, !3175}
!3174 = !DILocalVariable(name: "expected", arg: 2, scope: !3170, file: !6, line: 179, type: !3137)
!3175 = !DILocalVariable(name: "desired", arg: 3, scope: !3170, file: !6, line: 179, type: !3137)
!3176 = !DILocation(line: 0, scope: !3170, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 747, column: 15, scope: !3146)
!3178 = !DILocation(line: 180, column: 12, scope: !3170, inlinedAt: !3177)
!3179 = !DILocation(line: 749, column: 1, scope: !3146)
!3180 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !13, line: 721, type: !56)
!3183 = !DILocalVariable(name: "n", arg: 2, scope: !3180, file: !13, line: 721, type: !29)
!3184 = !DILocalVariable(name: "sem", scope: !3180, file: !13, line: 722, type: !368)
!3185 = !DILocalVariable(name: "old_val", scope: !3180, file: !13, line: 723, type: !29)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 723, column: 102, scope: !3180)
!3188 = !DILocalVariable(name: "addr", arg: 1, scope: !3189, file: !6, line: 170, type: !3137)
!3189 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !491, file: !6, line: 170, type: !3190, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !3140, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!29, !3137, !29}
!3192 = !{!3188, !3193}
!3193 = !DILocalVariable(name: "val", arg: 2, scope: !3189, file: !6, line: 170, type: !29)
!3194 = !DILocation(line: 0, scope: !3189, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 723, column: 19, scope: !3180)
!3196 = !DILocation(line: 171, column: 12, scope: !3189, inlinedAt: !3195)
!3197 = !DILocation(line: 725, column: 17, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3180, file: !13, line: 725, column: 9)
!3199 = !DILocation(line: 725, column: 22, scope: !3198)
!3200 = !DILocation(line: 727, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !13, line: 725, column: 33)
!3202 = !DILocation(line: 728, column: 9, scope: !3201)
!3203 = !DILocation(line: 729, column: 9, scope: !3201)
!3204 = !DILocation(line: 730, column: 9, scope: !3201)
!3205 = !DILocation(line: 731, column: 5, scope: !3201)
!3206 = !DILocation(line: 732, column: 20, scope: !3180)
!3207 = !DILocation(line: 732, column: 5, scope: !3180)
!3208 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !3209, file: !13, line: 584, type: !634, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!3209 = !DINamespace(scope: null)
!3210 = !DILocation(line: 585, column: 5, scope: !3208)
!3211 = !DILocation(line: 586, column: 1, scope: !3208)
!3212 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !634, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3213)
!3213 = !{!3214}
!3214 = !DILocalVariable(name: "i", scope: !3215, file: !13, line: 702, type: !29)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !13, line: 702, column: 9)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !13, line: 690, column: 33)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !13, line: 690, column: 9)
!3218 = !DILocation(line: 690, column: 20, scope: !3217)
!3219 = !DILocation(line: 690, column: 9, scope: !3212)
!3220 = !DILocation(line: 693, column: 9, scope: !3216)
!3221 = !DILocation(line: 695, column: 29, scope: !3216)
!3222 = !DILocation(line: 696, column: 9, scope: !3216)
!3223 = !DILocation(line: 697, column: 9, scope: !3216)
!3224 = !DILocation(line: 698, column: 9, scope: !3216)
!3225 = !DILocation(line: 699, column: 9, scope: !3216)
!3226 = !DILocation(line: 0, scope: !3215)
!3227 = !DILocation(line: 702, column: 40, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3215, file: !13, line: 702, column: 9)
!3229 = !DILocation(line: 702, column: 27, scope: !3228)
!3230 = !DILocation(line: 702, column: 9, scope: !3215)
!3231 = !DILocalVariable(name: "this", arg: 1, scope: !3232, type: !3236, flags: DIFlagArtificial | DIFlagObjectPointer)
!3232 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !3233)
!3233 = !{!3231, !3234, !3235}
!3234 = !DILocalVariable(name: "bytes", scope: !3232, file: !13, line: 160, type: !372)
!3235 = !DILocalVariable(name: "limit", scope: !3232, file: !13, line: 161, type: !372)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!3237 = !DILocation(line: 0, scope: !3232, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 707, column: 20, scope: !3216)
!3239 = !DILocation(line: 162, column: 9, scope: !3232, inlinedAt: !3238)
!3240 = !DILocation(line: 708, column: 5, scope: !3216)
!3241 = !DILocation(line: 703, column: 32, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3228, file: !13, line: 702, column: 62)
!3243 = !DILocation(line: 703, column: 13, scope: !3242)
!3244 = !DILocation(line: 702, column: 58, scope: !3228)
!3245 = distinct !{!3245, !3230, !3246, !610}
!3246 = !DILocation(line: 704, column: 9, scope: !3215)
!3247 = !DILocation(line: 709, column: 1, scope: !3212)
!3248 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2336, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3249)
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !13, line: 672, type: !29)
!3251 = !DILocalVariable(name: "old", scope: !3248, file: !13, line: 683, type: !29)
!3252 = !DILocation(line: 0, scope: !3248)
!3253 = !DILocation(line: 673, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !13, line: 673, column: 9)
!3255 = !DILocation(line: 673, column: 9, scope: !3248)
!3256 = !DILocation(line: 674, column: 9, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !13, line: 673, column: 16)
!3258 = !DILocation(line: 679, column: 5, scope: !3248)
!3259 = !DILocation(line: 680, column: 9, scope: !3248)
!3260 = !DILocation(line: 680, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3248, file: !13, line: 680, column: 9)
!3262 = !DILocation(line: 681, column: 13, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3261, file: !13, line: 680, column: 17)
!3264 = !DILocation(line: 682, column: 5, scope: !3263)
!3265 = !DILocation(line: 683, column: 26, scope: !3248)
!3266 = !DILocation(line: 684, column: 42, scope: !3248)
!3267 = !DILocation(line: 684, column: 40, scope: !3248)
!3268 = !DILocation(line: 685, column: 5, scope: !3248)
!3269 = !DILocation(line: 686, column: 5, scope: !3248)
!3270 = !DISubprogram(name: "halide_error", scope: !18, file: !18, line: 111, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3271 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !3272, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!123, !123}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "f", arg: 1, scope: !3271, file: !13, line: 751, type: !123)
!3276 = !DILocalVariable(name: "result", scope: !3271, file: !13, line: 752, type: !123)
!3277 = !DILocation(line: 0, scope: !3271)
!3278 = !DILocation(line: 752, column: 31, scope: !3271)
!3279 = !DILocation(line: 753, column: 20, scope: !3271)
!3280 = !DILocation(line: 754, column: 5, scope: !3271)
!3281 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !3282, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!129, !129}
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "f", arg: 1, scope: !3281, file: !13, line: 757, type: !129)
!3286 = !DILocalVariable(name: "result", scope: !3281, file: !13, line: 758, type: !129)
!3287 = !DILocation(line: 0, scope: !3281)
!3288 = !DILocation(line: 758, column: 36, scope: !3281)
!3289 = !DILocation(line: 759, column: 25, scope: !3281)
!3290 = !DILocation(line: 760, column: 5, scope: !3281)
!3291 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !3292, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!135, !135}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "f", arg: 1, scope: !3291, file: !13, line: 763, type: !135)
!3296 = !DILocalVariable(name: "result", scope: !3291, file: !13, line: 764, type: !135)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocation(line: 764, column: 34, scope: !3291)
!3299 = !DILocation(line: 765, column: 23, scope: !3291)
!3300 = !DILocation(line: 766, column: 5, scope: !3291)
!3301 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !3302, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !135, !123, !129, !141, !148, !154, !160}
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3305 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3301, file: !13, line: 770, type: !135)
!3306 = !DILocalVariable(name: "do_task", arg: 2, scope: !3301, file: !13, line: 771, type: !123)
!3307 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3301, file: !13, line: 772, type: !129)
!3308 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3301, file: !13, line: 773, type: !141)
!3309 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3301, file: !13, line: 774, type: !148)
!3310 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3301, file: !13, line: 775, type: !154)
!3311 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3301, file: !13, line: 776, type: !160)
!3312 = !DILocation(line: 0, scope: !3301)
!3313 = !DILocation(line: 778, column: 23, scope: !3301)
!3314 = !DILocation(line: 779, column: 20, scope: !3301)
!3315 = !DILocation(line: 780, column: 25, scope: !3301)
!3316 = !DILocation(line: 781, column: 30, scope: !3301)
!3317 = !DILocation(line: 782, column: 27, scope: !3301)
!3318 = !DILocation(line: 783, column: 34, scope: !3301)
!3319 = !DILocation(line: 784, column: 30, scope: !3301)
!3320 = !DILocation(line: 785, column: 1, scope: !3301)
!3321 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327}
!3323 = !DILocalVariable(name: "user_context", arg: 1, scope: !3321, file: !13, line: 792, type: !43)
!3324 = !DILocalVariable(name: "f", arg: 2, scope: !3321, file: !13, line: 792, type: !66)
!3325 = !DILocalVariable(name: "min", arg: 3, scope: !3321, file: !13, line: 793, type: !29)
!3326 = !DILocalVariable(name: "size", arg: 4, scope: !3321, file: !13, line: 793, type: !29)
!3327 = !DILocalVariable(name: "closure", arg: 5, scope: !3321, file: !13, line: 793, type: !44)
!3328 = !DILocation(line: 0, scope: !3321)
!3329 = !DILocation(line: 794, column: 14, scope: !3321)
!3330 = !DILocation(line: 794, column: 12, scope: !3321)
!3331 = !DILocation(line: 794, column: 5, scope: !3321)
!3332 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3333)
!3333 = !{!3334, !3335, !3336, !3337}
!3334 = !DILocalVariable(name: "user_context", arg: 1, scope: !3332, file: !13, line: 802, type: !43)
!3335 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3332, file: !13, line: 802, type: !29)
!3336 = !DILocalVariable(name: "tasks", arg: 3, scope: !3332, file: !13, line: 803, type: !145)
!3337 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3332, file: !13, line: 804, type: !43)
!3338 = !DILocation(line: 0, scope: !3332)
!3339 = !DILocation(line: 805, column: 12, scope: !3332)
!3340 = !DILocation(line: 805, column: 5, scope: !3332)
!3341 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3342)
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "sema", arg: 1, scope: !3341, file: !13, line: 808, type: !56)
!3344 = !DILocalVariable(name: "count", arg: 2, scope: !3341, file: !13, line: 808, type: !29)
!3345 = !DILocation(line: 0, scope: !3341)
!3346 = !DILocation(line: 809, column: 12, scope: !3341)
!3347 = !DILocation(line: 809, column: 5, scope: !3341)
!3348 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3349)
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "sema", arg: 1, scope: !3348, file: !13, line: 812, type: !56)
!3351 = !DILocalVariable(name: "count", arg: 2, scope: !3348, file: !13, line: 812, type: !29)
!3352 = !DILocation(line: 0, scope: !3348)
!3353 = !DILocation(line: 813, column: 12, scope: !3348)
!3354 = !DILocation(line: 813, column: 5, scope: !3348)
!3355 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !3356)
!3356 = !{!3357, !3358}
!3357 = !DILocalVariable(name: "sema", arg: 1, scope: !3355, file: !13, line: 816, type: !56)
!3358 = !DILocalVariable(name: "count", arg: 2, scope: !3355, file: !13, line: 816, type: !29)
!3359 = !DILocation(line: 0, scope: !3355)
!3360 = !DILocation(line: 817, column: 12, scope: !3355)
!3361 = !DILocation(line: 817, column: 5, scope: !3355)
!3362 = !DISubprogram(name: "pthread_mutex_init", scope: !167, file: !167, line: 28, type: !3363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!29, !3365, !438}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3366 = !DISubprogram(name: "pthread_cond_init", scope: !167, file: !167, line: 24, type: !3367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!29, !3369, !438}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3370 = !DISubprogram(name: "pthread_mutex_lock", scope: !167, file: !167, line: 29, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!29, !3365}
!3373 = !DISubprogram(name: "pthread_cond_wait", scope: !167, file: !167, line: 25, type: !3374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!29, !3369, !3365}
!3376 = !DISubprogram(name: "pthread_mutex_unlock", scope: !167, file: !167, line: 30, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3377 = !DISubprogram(name: "pthread_cond_destroy", scope: !167, file: !167, line: 27, type: !3378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!29, !3369}
!3380 = !DISubprogram(name: "pthread_mutex_destroy", scope: !167, file: !167, line: 31, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
!3381 = !DISubprogram(name: "pthread_cond_signal", scope: !167, file: !167, line: 26, type: !3378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !163)
